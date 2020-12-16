GO
-- usuwanie widoku
If (object_id('view_dates') is not null) 
	DROP VIEW view_dates;


GO 
-- usuwanie pomocniczych tabel
USE auxiliary;
If (object_id('swieta') is not null) 
	DROP TABLE swieta;

If (object_id('wakacje') is not null) 
	DROP TABLE wakacje;


GO
-- usuwanie pomocniczej bazy
USE master;
DROP DATABASE auxiliary;
