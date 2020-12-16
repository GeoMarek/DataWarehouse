-- wypelnienie zawartoscia tabeli Stations
use HurtowniaDanych

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

-- wypelnienie danymi
bulk insert tramwaysTMP
from 'C:\Users\Marek Grudkowski\Desktop\HurtownieDanych\DataWarehouse\data_sources\tramways.csv'
with(
rowterminator='\n',
fieldterminator=',')

-- usuwanie widoku
If (object_id('viewETL_tramways') is not null) 
	Drop View viewETL_tramways;


-- stworzenie widoku
go
CREATE VIEW viewETL_tramways
AS
SELECT DISTINCT
	tramwaysTMP.Model as [Model],
	tramwaysTMP.production_year as [YearProduction],
	CASE
		WHEN tramwaysTMP.line_number is not null THEN CONCAT('Line ',tramwaysTMP.line_number)
		ELSE 'No line'
	END AS [Line]
FROM tramwaysTMP;


-- wypelnienie danymi hurtowni
go
MERGE INTO tramways	USING viewETL_tramways 
		ON tramways.Model = viewETL_tramways.Model
		AND tramways.YearProduction = viewETL_tramways.YearProduction
		AND tramways.Line = viewETL_tramways.Line
		
		WHEN Not Matched
			THEN
				INSERT
				Values (
				viewETL_tramways.Model,
				viewETL_tramways.YearProduction, 
				viewETL_tramways.Line
				)			
		WHEN Not Matched By Source
			THEN DELETE;


-- usuwanie widoku
go
Drop View viewETL_tramways;
go
Drop Table tramwaysTMP;
