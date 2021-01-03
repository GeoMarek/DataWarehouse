-- wypelnienie zawartoscia tabeli Time
use HurtowniaDanych
delete from Time;
DECLARE @hour INT = 0
DECLARE @min INT = 0
DECLARE @index INT = 1

WHILE @hour<24 BEGIN
	SET @min=0
	
	WHILE @min<60 BEGIN
		IF @hour < 5
			insert into Time("Hour", "Minute", "DayTime") values (@hour, @min,'noc');
		ELSE IF @hour < 12
			insert into Time("Hour", "Minute", "DayTime") values (@hour, @min,'poranek');
		ELSE IF @hour < 16
			insert into Time("Hour", "Minute", "DayTime") values (@hour, @min,'poludnie');
		ELSE IF @hour < 20
			insert into Time("Hour", "Minute", "DayTime") values (@hour, @min,'popoludnie');
		ELSE
			insert into Time("Hour", "Minute", "DayTime") values (@hour, @min,'wieczor');
		SET @index += 1
		SET @min += 1
	
	END
	SET @hour += 1
END
