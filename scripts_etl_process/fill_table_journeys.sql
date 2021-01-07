use HurtowniaDanych

If (object_id('coursesTMP') is not null) 
	DROP TABLE coursesTMP;

-- stworzenie tymczasowej tabeli
CREATE TABLE coursesTMP (
    ID_course INT,
    expected_start DATETIME,
    expected_end DATETIME,
    real_start DATETIME,
    real_end DATETIME,
    tramway INT , 
    driver INT
    );

bulk insert coursesTMP
from 'C:\Users\Marek Grudkowski\Desktop\HurtownieDanych\DataWarehouse\data_sources\courses2.csv'
with(
rowterminator='\n',
fieldterminator=',')

If (object_id('journeysTMP') is not null) 
	DROP TABLE journeysTMP;

-- stworzenie tymczasowej tabeli
CREATE TABLE journeysTMP (
    ID_journey INT ,
    course INT , 
    station_start INT ,
    station_end INT ,
    expected_start DATETIME,
    expected_end DATETIME,
    real_start DATETIME,
    real_end DATETIME,
    has_failure BIT 
    );

-- wypelnienie tymczasowej tabeli
bulk insert journeysTMP
from 'C:\Users\Marek Grudkowski\Desktop\HurtownieDanych\DataWarehouse\data_sources\journeys2.csv'
with(
rowterminator='\n',
fieldterminator=',')

If (object_id('failuresTMP') is not null) 
	DROP TABLE failuresTMP;
	
-- stworzenie tymczasowej tabeli
CREATE TABLE failuresTMP (
    ID_failure INT ,						--
	station INT ,	
    journey INT ,	
    description VARCHAR(80),						
    fixed_on_site BIT NOT NULL,						
    type VARCHAR(80)								
    );

-- wypelnienie tymczasowej tabeli
bulk insert failuresTMP
from 'C:\Users\Marek Grudkowski\Desktop\HurtownieDanych\DataWarehouse\data_sources\failures2.csv'
with(
rowterminator='\n',
fieldterminator=',')

If (object_id('stationsTMP') is not null) 
	DROP TABLE stationsTMP;
	
-- stworzenie tymczasowej tabeli
CREATE TABLE stationsTMP (
    ID_station INT ,						
	stationName varchar(100) ,	
    has_shelter bit 							
    );

-- wypelnienie tymczasowej tabeli
bulk insert stationsTMP
from 'C:\Users\Marek Grudkowski\Desktop\HurtownieDanych\DataWarehouse\data_sources\stations.csv'
with(
rowterminator='\n',
fieldterminator=',')

-- koniec pobierania danych -----------------------------------------------------

If (object_id('pomViewStart') is not null) 	Drop View pomViewStart;
go
CREATE VIEW pomViewStart
AS
SELECT 
	JT.ID_journey as journeyID,
	ST.ID_Station as ID_startStation
from journeysTMP as JT join stationsTMP as ST1 on (JT.station_start = ST1.ID_station)
	join Stations as ST on (ST1.stationName = ST.Name)
go
If (object_id('pomViewEnd') is not null) 	Drop View pomViewEnd;
go
CREATE VIEW pomViewEnd
AS
SELECT 
	JT.ID_journey as journeyID,
	ST.ID_Station as ID_endStation
from journeysTMP as JT join stationsTMP as ST1 on (JT.station_end = ST1.ID_station)
	join Stations as ST on (ST1.stationName = ST.Name)

go
If (object_id('pomView') is not null) 	Drop View pomView;
go
CREATE VIEW pomView
AS
SELECT 
	DA.ID_Date as ID_Date, 
	TI.ID_Time as ID_Time,  
	PVS.ID_startStation as ID_StationStart, 
	PVE.ID_endStation as ID_StationEnd,     
	--8129 as ID_Failure, --do usuniecia
	FA.ID_Failure as ID_Failure, 
	TR.ID_Tramway as ID_Tramway, 
	DR.ID_Driver as ID_Driver, 
	DATEDIFF ( mi , JT.expected_end , JT.real_end ) as TimeDelay, -- roznica czasu na koncowej stacji [MIN]
	0  as Evalutaion -- informacji o ocenie nie mamy to dajemy 0
FROM journeysTMP as JT join coursesTMP as CT on (JT.course = CT.ID_course)
	join Drivers as DR on (DR.DriverNum = CT.driver and DR.IsCurrent = 'yes')
	join Tramways as TR on (TR.TramNum = CT.tramway)
	join failuresTMP as FT on (FT.journey = JT.ID_journey)
	join Failures as FA on (FA.Type = FT.type and FA.WhoCaused='none')
	join Time as TI on (DATEPART(mi, JT.expected_start) = TI.Minute and DATEPART(hh, JT.expected_start) = TI.Hour)
	join Dates as DA on (DATEPART(year, JT.expected_start) = DA.Year and DATEPART(month, JT.expected_start) = DA.NumMonth and DATEPART(day, JT.expected_start) = DA.NumDayInMonth)
	join pomViewStart as PVS on (JT.ID_journey = PVS.journeyID)
	join pomViewEnd as PVE on (JT.ID_journey = PVE.journeyID)

go


MERGE INTO dbo.Journeys as JO
	USING pomView as PV 
		ON JO.ID_Date = PV.ID_Date and JO.ID_Time = PV.ID_Time and JO.ID_StationStart = PV.ID_StationStart and JO.ID_StationEnd = PV.ID_StationEnd and JO.ID_Failure = PV.ID_Failure and JO.ID_Tramway = PV.ID_Tramway and JO.ID_Driver = PV.ID_Driver and JO.TimeDelay = PV.TimeDelay and JO.Evalutaion = PV.Evalutaion 
			WHEN Not Matched
				THEN
					INSERT Values (
					PV.ID_Date,
					PV.ID_Time,
					PV.ID_StationStart,
					PV.ID_StationEnd,
					PV.ID_Failure,
					PV.ID_Tramway,
					PV.ID_Driver,
					PV.TimeDelay,
					PV.Evalutaion 
					)
			;

drop table failuresTMP;
drop table stationsTMP;
drop table journeysTMP;
drop table coursesTMP;
drop view pomView;
drop view pomViewStart;
drop view pomViewEnd;