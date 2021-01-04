use HurtowniaDanych

go

If (object_id('dbo.WorkTmp') is not null) 
	DROP TABLE dbo.WorkTmp;
CREATE TABLE dbo.WorkTmp(
	DriverNum varchar(4),
	theDate date, 
	DayHours int, 
	NightHours int);
go

BULK INSERT dbo.WorkTmp
    FROM 'C:\Users\Marek Grudkowski\Desktop\HurtownieDanych\DataWarehouse\data_sources\working_hours_1.csv'--zmieniamy na working_hours_2.csv
    WITH
    (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
    )

If (object_id('pomView') is not null) 
	Drop View pomView;
go
CREATE VIEW pomView
AS
SELECT
	DR.ID_Driver as ID_Driver,
	DR.IsCurrent as Pracujacy,
	DR.DriverNum as DriverNum,
	DA.ID_Date as ID_Month,
	WT.DayHours as DayHours,
	WT.NightHours as NightHours
FROM dbo.WorkTmp as WT join dbo.Dates as DA on (WT.theDate = DA.Date)
join dbo.Drivers as DR on (WT.DriverNum = DR.DriverNum and DR.IsCurrent like 'yes')


go
If (object_id('pomView2') is not null) Drop View pomView2;
go
CREATE VIEW pomView2
AS
SELECT
	WI.ID_Driver as ID_Driver,
	DR.DriverNum as DriverNum,
	WI.ID_Month as ID_Month,
	WI.DayHours as DayHours,
	WI.NightHours as NightHours
FROM dbo.WorkIndexes as WI join dbo.Drivers as DR on (WI.ID_Driver = DR.ID_Driver)

go
If (object_id('dbo.pomTable') is not null) DROP TABLE dbo.pomTable;
CREATE TABLE dbo.pomTable
	(
	ID_WorkIndex INT PRIMARY KEY IDENTITY,
	DriverNum varchar(4),
	ID_Driver INT REFERENCES Drivers(ID_Driver),
	ID_Month INT REFERENCES Dates(ID_Date),
	DayHours INT NOT NULL,
	NightHours INT NOT NULL
    );

go
MERGE INTO dbo.pomTable as WI
	USING pomView2 as PV
		ON WI.DriverNum = PV.DriverNum and WI.ID_Month = PV.ID_Month 
			WHEN Not Matched
				THEN
					INSERT Values (
					PV.DriverNum,
					PV.ID_Driver,
					PV.ID_Month,
					PV.DayHours,
					PV.NightHours
					)
			;

go
MERGE INTO dbo.pomTable as WI
	USING pomView as PV
		ON  WI.ID_Month = PV.ID_Month and WI.DriverNum = PV.DriverNum
			when not matched
				THEN
					INSERT Values (
					PV.DriverNum,
					PV.ID_Driver,
					PV.ID_Month,
					PV.DayHours,
					PV.NightHours
					)
			;
go
If (object_id('pomView3') is not null) Drop View pomView3;
go
CREATE VIEW pomView3
AS
SELECT
	WI.ID_Driver as ID_Driver,
	WI.ID_Month as ID_Month,
	WI.DayHours as DayHours,
	WI.NightHours as NightHours
FROM dbo.pomTable as WI 

go
MERGE INTO dbo.WorkIndexes as WI
	USING pomView3 as PV 
		ON WI.ID_Driver = PV.ID_Driver and WI.ID_Month = PV.ID_Month 
			WHEN Not Matched
				THEN
					INSERT Values (
					PV.ID_Driver,
					PV.ID_Month,
					PV.DayHours,
					PV.NightHours
					)
			;
					
DROP TABLE dbo.WorkTmp;
DROP TABLE dbo.pomTable;
Drop View pomView; 
Drop View pomView2; 
Drop View pomView3; 

