-- usuwanie poczególnych tabeli z hurtowni
use HurtowniaDanych

-- usuwanie Journeys
If (object_id('Journeys') is not null) 
	DROP TABLE Journeys;

-- usuwanie WorkIndexes
If (object_id('WorkIndexes') is not null) 
	DROP TABLE WorkIndexes;

-- usuwanie Time
If (object_id('Time') is not null) 
	DROP TABLE Time;

-- usuwannie Dates
If (object_id('Dates') is not null) 
	DROP TABLE Dates;

-- usuwannie Stations
If (object_id('Stations') is not null) 
	DROP TABLE Stations;

-- usuwannie Failures
If (object_id('Failures') is not null) 
	DROP TABLE Failures;

-- usuwannie Tramways
If (object_id('Tramways') is not null) 
	DROP TABLE Tramways;

-- usuwannie Drivers
If (object_id('Drivers') is not null) 
	DROP TABLE Drivers;