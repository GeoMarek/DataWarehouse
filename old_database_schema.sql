CREATE TABLE drivers (
    ID_Driver INT primary key
    );
   
CREATE TABLE tramways (
    ID_Tram integer primary key,
    model VARCHAR(80),
    production_year INT,
    last_control DATE, 
    line_number INT NOT NULL,
    failure_count INT
    );
    
CREATE TABLE stations (
    ID_station INT primary key,
    name VARCHAR(80),
    has_shelter BIT
    );
    
CREATE TABLE courses (
    ID_course INT primary key,
    expected_start DATETIME,
    expected_end DATETIME,
    real_start DATETIME,
    real_end DATETIME,
    tramway INT REFERENCES tramways NOT NULL, 
    driver INT REFERENCES drivers NOT NULL
    );

CREATE TABLE journeys (
    ID_journey INT PRIMARY KEY,
    course INT REFERENCES courses NOT NULL, 
    station_start INT REFERENCES stations NOT NULL,
    station_end INT REFERENCES stations NOT NULL,
    expected_start DATETIME,
    expected_end DATETIME,
    real_start DATETIME,
    real_end DATETIME,
    has_failure BIT NOT NULL
    );
  
CREATE TABLE failures (
    ID_failure INT PRIMARY KEY,
	station INT REFERENCES stations NOT NULL,
    journey INT REFERENCES journeys NOT NULL,
    description VARCHAR(80),
    fixed_on_site BIT NOT NULL,
    type VARCHAR(80)
    );
    
