-- wypelnienie zawartoscia tabeli Failures
use HurtowniaDanych

------------------------------------------- stations TMP

-- usuwanie tymczasowej tabeli
If (object_id('stationsTMP') is not null) 
	DROP TABLE stationsTMP;

-- stworzenie tymczasowej tabeli
CREATE TABLE stationsTMP (
    ID_station INT primary key,
    name VARCHAR(80),
    has_shelter BIT
    );

-- wypelnienie tymczasowej tabeli
bulk insert stationsTMP
from 'C:\Users\Marek Grudkowski\Desktop\HurtownieDanych\DataWarehouse\data_sources\stations.csv'
with(
rowterminator='\n',
fieldterminator=',')

------------------------------------------- tramways TMP

-- usuwanie tymczasowej tabeli
If (object_id('tramwaysTMP') is not null) 
	DROP TABLE tramwaysTMP;

-- stworzenie tymczasowej tabeli
CREATE TABLE tramwaysTMP (
    ID_Tram integer primary key,
    model VARCHAR(80),
    production_year INT,
    last_control DATE, 
    line_number INT NOT NULL,
    failure_count INT
    );

-- wypelnienie tymczasowej tabeli
bulk insert tramwaysTMP
from 'C:\Users\Marek Grudkowski\Desktop\HurtownieDanych\DataWarehouse\data_sources\tramways.csv'
with(
rowterminator='\n',
fieldterminator=',')

------------------------------------------- drivers TMP

-- usuwanie tymczasowej tabeli
If (object_id('driversTMP') is not null) 
	DROP TABLE driversTMP;

-- stworzenie tymczasowej tabeli
CREATE TABLE driversTMP (
    ID_Driver INT primary key,
	first_name VARCHAR(80),
	last_name VARCHAR(80),
	sex VARCHAR(6),
	birth DATETIME,
	number VARCHAR(80),
	pesel VARCHAR(80)
    );

-- wypelnienie tymczasowej tabeli
bulk insert driversTMP
from 'C:\Users\Marek Grudkowski\Desktop\HurtownieDanych\DataWarehouse\data_sources\drivers1.csv'
with(
rowterminator='\n',
fieldterminator=',')

------------------------------------------- courses TMP

-- usuwanie tymczasowej tabeli
If (object_id('coursesTMP') is not null) 
	DROP TABLE coursesTMP;

-- stworzenie tymczasowej tabeli
CREATE TABLE coursesTMP (
    ID_course INT primary key,
    expected_start DATETIME,
    expected_end DATETIME,
    real_start DATETIME,
    real_end DATETIME,
    tramway INT REFERENCES tramwaysTMP NOT NULL, 
    driver INT REFERENCES driversTMP NOT NULL
    );

-- wypelnienie tymczasowej tabeli
bulk insert coursesTMP
from 'C:\Users\Marek Grudkowski\Desktop\HurtownieDanych\DataWarehouse\data_sources\courses1.csv'
with(
rowterminator='\n',
fieldterminator=',')

------------------------------------------- journeys TMP

-- usuwanie tymczasowej tabeli
If (object_id('journeysTMP') is not null) 
	DROP TABLE journeysTMP;

-- stworzenie tymczasowej tabeli
CREATE TABLE journeysTMP (
    ID_journey INT PRIMARY KEY,
    course INT REFERENCES coursesTMP NOT NULL, 
    station_start INT REFERENCES stationsTMP NOT NULL,
    station_end INT REFERENCES stationsTMP NOT NULL,
    expected_start DATETIME,
    expected_end DATETIME,
    real_start DATETIME,
    real_end DATETIME,
    has_failure BIT NOT NULL
    );

-- wypelnienie tymczasowej tabeli
bulk insert journeysTMP
from 'C:\Users\Marek Grudkowski\Desktop\HurtownieDanych\DataWarehouse\data_sources\journeys1.csv'
with(
rowterminator='\n',
fieldterminator=',')

------------------------------------------- failures TMP

-- usuwanie tymczasowej tabeli
If (object_id('failuresTMP') is not null) 
	DROP TABLE failuresTMP;
	
-- stworzenie tymczasowej tabeli
CREATE TABLE failuresTMP (
    ID_failure INT PRIMARY KEY,						-- ID_Failure
	station INT REFERENCES stationsTMP NOT NULL,	-- zbedne
    journey INT REFERENCES journeysTMP NOT NULL,	-- zbedne
    description VARCHAR(80),						-- zbedne
    fixed_on_site BIT NOT NULL,						-- zbedne
    type VARCHAR(80)								-- Type
    );

-- wypelnienie tymczasowej tabeli
bulk insert failuresTMP
from 'C:\Users\Marek Grudkowski\Desktop\HurtownieDanych\DataWarehouse\data_sources\failures1.csv'
with(
rowterminator='\n',
fieldterminator=',')

-- usuwanie widoku
If (object_id('viewETL_failures') is not null) 
	Drop View viewETL_failures;

-- tworzenie widoku
go
CREATE VIEW viewETL_failures
AS
SELECT DISTINCT
	failuresTMP.Type AS [Type],
	failuresTMP.description AS [description]
FROM failuresTMP;

-- wypelnienie danymi hurtowni
go
MERGE INTO failures	USING viewETL_failures 
		ON failures.Type = viewETL_failures.Type
		AND failures.WhoCaused = null
		
		WHEN Not Matched
			THEN
				INSERT
				Values (
				viewETL_failures.Type,
				'brak danych'
				)			
		WHEN Not Matched By Source
			THEN DELETE;


-- sprzatanie po 
go
Drop View viewETL_failures;

go

drop table failuresTMP;
drop table journeysTMP;
drop table coursesTMP;
drop table stationsTMP;
drop table tramwaysTMP;
drop table driversTMP;

