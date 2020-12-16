-- wypelnienie zawartoscia tabeli Stations
use HurtowniaDanych


-- usuwanie tymczasowej stations TMP
If (object_id('stationsTMP') is not null) 
	DROP TABLE stationsTMP;

-- stworzenie tymczasowej stations TMP
CREATE TABLE stationsTMP (
    ID_station INT primary key,
    name VARCHAR(80),
    has_shelter BIT
    );

-- wypelnienie danymi stations TMP
bulk insert stationsTMP
from 'C:\Users\Marek Grudkowski\Desktop\HurtownieDanych\DataWarehouse\data_sources\stations.csv'
with(
rowterminator='\n',
fieldterminator=',')

-- usuwanie widoku
If (object_id('viewETL_stations') is not null) 
	Drop View viewETL_stations;

-- stworzenie widoku
go
CREATE VIEW viewETL_stations
AS
SELECT DISTINCT
	stationsTMP.name as [name],
	CASE
		WHEN stationsTMP.has_shelter = 1 THEN 'yes'
		ELSE 'no'
	END AS [shelter]
FROM stationsTMP;


-- wypelnienie danymi hurtowni
go
MERGE INTO stations	USING viewETL_stations 
		ON stations.name = viewETL_stations.name
		AND stations.shelter = viewETL_stations.shelter
		
		WHEN Not Matched
			THEN
				INSERT
				Values (
				viewETL_stations.name,
				viewETL_stations.shelter
				)			
		WHEN Not Matched By Source
			THEN DELETE;


-- usuwanie widoku
go
Drop View viewETL_stations;
go 
Drop Table stationsTMP;

