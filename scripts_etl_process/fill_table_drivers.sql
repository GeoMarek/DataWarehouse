USE HurtowniaDanych
GO

If (object_id('dbo.DriversTemp') is not null) DROP TABLE dbo.DriversTemp;
CREATE TABLE dbo.DriversTemp(DriverNum varchar(4), NAME varchar(100), SURNAME varchar(100), SEX varchar(6), BIRTH_DATE varchar(10), PHONE_NUMBER varchar(30), PESEL varchar(11));
go

If (object_id('dbo.ObecnaData') is not null) DROP TABLE dbo.ObecnaData;
CREATE TABLE dbo.ObecnaData(dzis date);
insert into ObecnaData (dzis) values ('01-01-2014'); 
go


BULK INSERT dbo.DriversTemp
    FROM 'C:\Users\Marek Grudkowski\Desktop\HurtownieDanych\DataWarehouse\data_sources\drivers2.csv'--zmieniamy na drivers2.csv
    WITH
    (
    FIRSTROW = 1,
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
    )

If (object_id('pomView') is not null) Drop View pomView;
go
CREATE VIEW pomView
AS
SELECT
	t1.[DriverNum] as [DriverNum],
	[Name] = Cast([NAME] + ' ' + [SURNAME] as nvarchar(128)),
	t1.[SEX] as [Sex],
	CASE
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 0 AND 17 THEN '17-'
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 18 AND 21 THEN '18-21'
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 22 AND 29 THEN '22-29'
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 30 AND 39 THEN '30-39'
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 40 AND 49 THEN '40-49'
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 50 AND 110 THEN '50+'
	END AS [AgeCategory],
	CASE
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 0 AND 17 THEN YEAR(od1.dzis)-(DATEDIFF(year, BIRTH_DATE, od1.dzis)-0)
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 18 AND 21 THEN YEAR(od1.dzis)-(DATEDIFF(year, BIRTH_DATE, od1.dzis)-18)
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 22 AND 29 THEN YEAR(od1.dzis)-(DATEDIFF(year, BIRTH_DATE, od1.dzis)-22)
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 30 AND 39 THEN YEAR(od1.dzis)-(DATEDIFF(year, BIRTH_DATE, od1.dzis)-30)
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 40 AND 49 THEN YEAR(od1.dzis)-(DATEDIFF(year, BIRTH_DATE, od1.dzis)-40)
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 50 AND 110 THEN YEAR(od1.dzis)-(DATEDIFF(year, BIRTH_DATE, od1.dzis)-50)
	END AS [StartYear],
	CASE
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 0 AND 17 THEN YEAR(od1.dzis)+(-DATEDIFF(year, BIRTH_DATE, od1.dzis)+0)
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 18 AND 21 THEN YEAR(od1.dzis)+(-DATEDIFF(year, BIRTH_DATE, od1.dzis)+21)
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 22 AND 29 THEN YEAR(od1.dzis)+(-DATEDIFF(year, BIRTH_DATE, od1.dzis)+29)
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 30 AND 39 THEN YEAR(od1.dzis)+(-DATEDIFF(year, BIRTH_DATE, od1.dzis)+39)
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 40 AND 49 THEN YEAR(od1.dzis)+(-DATEDIFF(year, BIRTH_DATE, od1.dzis)+49)
		WHEN DATEDIFF(year, BIRTH_DATE, od1.dzis) BETWEEN 50 AND 110 THEN 2200
	END AS [EndYear]
FROM dbo.DriversTemp as t1, dbo.ObecnaData as od1

go
MERGE INTO Drivers as DR
	USING pomView as PV
		ON DR.DriverNum = PV.DriverNum
			WHEN Not Matched
				THEN
					INSERT Values (
					PV.[DriverNum],
					PV.[Name],
					PV.[SEX],
					PV.[AgeCategory],
					PV.[StartYear],
					PV.[EndYear],
					'yes'
					)
			WHEN Matched -- when DriverNum number match, 
				-- but AgeRange doesn't...
					AND (DR.AgeCategory <> PV.AgeCategory)
				THEN
					UPDATE
					SET DR.IsCurrent = 'no'
			WHEN Not Matched BY Source
				THEN
					UPDATE
					SET DR.IsCurrent = 'no'
			;
INSERT INTO Drivers(
	DriverNum,
	Name,
	SEX,
	AgeCategory,
	StartYear,
	EndYear,
	IsCurrent
	)
	SELECT
	DriverNum, Name, SEX, AgeCategory, StartYear, EndYear, 'yes'
	FROM pomView
	EXCEPT
	SELECT 
	DriverNum, Name, SEX, AgeCategory, StartYear, EndYear, 'yes'
	FROM Drivers
					
DROP TABLE dbo.DriversTemp;
DROP TABLE dbo.ObecnaData;
Drop View pomView; 












