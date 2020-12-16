-- tworzenie poczególnych tabeli
use HurtowniaDanych

-- dodanie tabeli Time 
CREATE TABLE Time (
	ID_Time INT PRIMARY KEY IDENTITY,
	Hour INT, 
	Minute INT,
	DayTime VARCHAR(10)
    );

-- dodanie tabeli Dates 
CREATE TABLE Dates (
	ID_Date INT PRIMARY KEY IDENTITY,
    Date DATETIME, 
    NumDayInMonth INT,
	DayInWeek VARCHAR(12),
	NumDayInWeek INT,
    Month VARCHAR(11),
    NumMonth INT,
	Year INT,
	Vacation VARCHAR(3),
    Holiday VARCHAR(3),
    );

-- dodanie tabeli Stations
CREATE TABLE Stations (
	ID_Station INT PRIMARY KEY IDENTITY,
	Name VARCHAR(40),
	Shelter VARCHAR(3)
    );

-- dodanie tabeli Failures
CREATE TABLE Failures (
	ID_Failure INT PRIMARY KEY IDENTITY,
	Type VARCHAR(25),
	WhoCaused VARCHAR(16)
    );

-- dodanie tabeli Tramways
CREATE TABLE Tramways (
	ID_Tramway INT PRIMARY KEY IDENTITY,
	Model VARCHAR(80),
	YearProduction INT,
	Line VARCHAR(8)
    );

-- dodanie tabeli Tramways
CREATE TABLE Drivers (
    ID_Driver INT PRIMARY KEY IDENTITY,
	Name VARCHAR(80),
	Sex VARCHAR(9),
	AgeCategory VARCHAR(20),
	StartYear INT,
	EndYear INT
    );

-- dodanie tabeli WorkIndexes
CREATE TABLE WorkIndexes (
	ID_WorkIndex INT PRIMARY KEY IDENTITY,
	ID_Driver INT REFERENCES Drivers(ID_Driver),
	ID_Month INT REFERENCES Dates(ID_Date),
	DayHours INT NOT NULL,
	NightHours INT NOT NULL
    );

-- dodanie tabeli Journeys
CREATE TABLE Journeys (
	ID_Journey INT PRIMARY KEY IDENTITY,
	ID_Date INT REFERENCES Dates(ID_Date),
	ID_Time INT REFERENCES Time(ID_time),
	ID_StationStart INT FOREIGN KEY REFERENCES Stations(ID_Station),
	ID_StationEnd INT FOREIGN KEY REFERENCES Stations(ID_Station),
	ID_Failure INT FOREIGN KEY REFERENCES Failures(ID_Failure),
	ID_Tramway INT FOREIGN KEY REFERENCES Tramways(ID_Tramway),
	ID_Driver INT FOREIGN KEY REFERENCES Drivers(ID_Driver),
	TimeDelay INT NOT NULL,
	Evalutaion INT NOT NULL
    );