USE master;
CREATE DATABASE auxiliary;
GO
use auxiliary;

-- usuwanie tymczasowych tabel
If (object_id('swieta') is not null) 
	DROP TABLE swieta;

If (object_id('wakacje') is not null) 
	DROP TABLE wakacje;

-- utworzenie tymczasowych tabel
CREATE TABLE swieta(
	data DATETIME PRIMARY KEY, 
	swieto VARCHAR(500), 
	wolne BIT);

CREATE TABLE wakacje(
	start DATETIME, 
	koniec DATETIME, 
	rodzaj VARCHAR(500), 
	PRIMARY KEY(start,koniec));

USE auxiliary
-- inserty do tabeli swieta
-- #############################################################################################

insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-04-03', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-04-04', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-04-05', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-04-06', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-04-07', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-05-25', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1980-06-05', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-04-16', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-04-17', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-04-18', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-04-19', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-04-20', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-06-07', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1981-06-18', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-04-08', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-04-09', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-04-10', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-04-11', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-04-12', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-05-30', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1982-06-10', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-03-31', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-04-01', 'Wielki Pi¹tek/Prima Aprilis', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-04-02', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-04-03', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-04-04', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-05-22', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1983-06-02', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-04-19', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-04-20', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-04-21', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-04-22', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-04-23', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-06-10', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1984-06-21', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-04-04', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-04-05', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-04-06', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-04-07', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-04-08', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-05-26', 'Zielone Œwi¹tki/Dzieñ Matki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1985-06-06', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-03-27', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-03-28', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-03-29', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-03-30', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-03-31', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-05-18', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1986-05-29', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-04-16', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-04-17', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-04-18', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-04-19', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-04-20', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-06-07', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1987-06-18', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-03-31', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-04-01', 'Wielki Pi¹tek/Prima Aprilis', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-04-02', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-04-03', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-04-04', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-05-22', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1988-06-02', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-03-23', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-03-24', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-03-25', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-03-26', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-03-27', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-05-14', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1989-05-25', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-04-12', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-04-13', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-04-14', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-04-15', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-04-16', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-06-03', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1990-06-14', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-03-28', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-03-29', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-03-30', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-03-31', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-04-01', 'Poniedzia³ek Wielkanocny/Prima Aprilis', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-05-19', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1991-05-30', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-04-16', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-04-17', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-04-18', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-04-19', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-04-20', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-06-07', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1992-06-18', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-04-08', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-04-09', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-04-10', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-04-11', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-04-12', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-05-30', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1993-06-10', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-03-31', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-04-01', 'Wielki Pi¹tek/Prima Aprilis', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-04-02', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-04-03', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-04-04', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-05-22', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1994-06-02', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-04-13', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-04-14', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-04-15', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-04-16', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-04-17', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-06-04', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1995-06-15', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-04-04', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-04-05', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-04-06', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-04-07', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-04-08', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-05-26', 'Zielone Œwi¹tki/Dzieñ Matki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1996-06-06', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-03-27', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-03-28', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-03-29', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-03-30', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-03-31', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-05-18', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1997-05-29', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-04-09', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-04-10', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-04-11', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-04-12', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-04-13', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-05-31', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1998-06-11', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-04-01', 'Wielki Czwartek/Prima Aprilis', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-04-02', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-04-03', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-04-04', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-04-05', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-05-23', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('1999-06-03', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-04-20', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-04-21', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-04-22', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-04-23', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-04-24', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-06-11', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2000-06-22', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-04-12', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-04-13', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-04-14', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-04-15', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-04-16', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-06-03', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2001-06-14', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-03-28', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-03-29', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-03-30', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-03-31', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-04-01', 'Poniedzia³ek Wielkanocny/Prima Aprilis', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-05-19', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2002-05-30', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-04-17', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-04-18', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-04-19', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-04-20', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-04-21', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-06-08', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2003-06-19', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-05-02', 'Dzieñ Flagi Rzeczypospolitej Polskiej', 0);	--obowi¹zuje od 2004 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-04-08', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-04-09', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-04-10', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-04-11', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-04-12', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-05-30', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2004-06-10', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-05-02', 'Dzieñ Flagi Rzeczypospolitej Polskiej', 0);	--obowi¹zuje od 2004 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-03-24', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-03-25', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-03-26', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-03-27', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-03-28', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-05-15', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2005-05-26', 'Bo¿e Cia³o/Dzieñ Matki', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-05-02', 'Dzieñ Flagi Rzeczypospolitej Polskiej', 0);	--obowi¹zuje od 2004 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-04-13', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-04-14', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-04-15', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-04-16', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-04-17', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-06-04', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2006-06-15', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-05-02', 'Dzieñ Flagi Rzeczypospolitej Polskiej', 0);	--obowi¹zuje od 2004 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-04-05', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-04-06', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-04-07', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-04-08', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-04-09', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-05-27', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2007-06-07', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-05-02', 'Dzieñ Flagi Rzeczypospolitej Polskiej', 0);	--obowi¹zuje od 2004 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-03-20', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-03-21', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-03-22', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-03-23', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-03-24', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-05-11', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2008-05-22', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-01-06', 'Œwiêto Trzech Króli', 1); --obowi¹zuje od 1 stycznia 2011 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-05-02', 'Dzieñ Flagi Rzeczypospolitej Polskiej', 0);	--obowi¹zuje od 2004 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-04-09', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-04-10', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-04-11', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-04-12', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-04-13', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-05-31', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2009-06-11', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-01-06', 'Œwiêto Trzech Króli', 1); --obowi¹zuje od 1 stycznia 2011 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-05-02', 'Dzieñ Flagi Rzeczypospolitej Polskiej', 0);	--obowi¹zuje od 2004 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-04-01', 'Wielki Czwartek/Prima Aprilis', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-04-02', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-04-03', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-04-04', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-04-05', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-05-23', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2010-06-06', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-01-06', 'Œwiêto Trzech Króli', 1); --obowi¹zuje od 1 stycznia 2011 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-05-02', 'Dzieñ Flagi Rzeczypospolitej Polskiej', 0);	--obowi¹zuje od 2004 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-04-21', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-04-22', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-04-23', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-04-24', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-04-25', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-06-12', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2011-06-23', 'Bo¿e Cia³o/Dzieñ Ojca', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-01-06', 'Œwiêto Trzech Króli', 1); --obowi¹zuje od 1 stycznia 2011 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-05-02', 'Dzieñ Flagi Rzeczypospolitej Polskiej', 0);	--obowi¹zuje od 2004 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-04-05', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-04-06', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-04-07', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-04-08', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-04-09', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-05-27', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2012-06-07', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-01-06', 'Œwiêto Trzech Króli', 1); --obowi¹zuje od 1 stycznia 2011 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-05-02', 'Dzieñ Flagi Rzeczypospolitej Polskiej', 0);	--obowi¹zuje od 2004 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-03-28', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-03-29', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-03-30', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-03-31', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-04-01', 'Poniedzia³ek Wielkanocny/Prima Aprilis', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-05-19', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2013-05-30', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-01-06', 'Œwiêto Trzech Króli', 1); --obowi¹zuje od 1 stycznia 2011 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-05-02', 'Dzieñ Flagi Rzeczypospolitej Polskiej', 0);	--obowi¹zuje od 2004 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-04-17', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-04-18', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-04-19', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-04-20', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-04-21', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-06-08', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2014-06-19', 'Bo¿e Cia³o', 1);				--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-01-01', 'Nowy Rok', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-01-06', 'Œwiêto Trzech Króli', 1); --obowi¹zuje od 1 stycznia 2011 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-01-21', 'Dzieñ Babci', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-01-22', 'Dzieñ Dziadka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-02-14', 'Walentynki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-04-01', 'Prima Aprilis', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-05-01', 'Œwiêto Pracy', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-05-02', 'Dzieñ Flagi Rzeczypospolitej Polskiej', 0);	--obowi¹zuje od 2004 roku
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-05-03', 'Œwiêto Konstytucji 3 Maja', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-05-26', 'Dzieñ Matki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-06-01', 'Dzieñ Dziecka', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-06-23', 'Dzieñ Ojca', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-08-15', 'Œwiêto Wniebowziêcia Najœwiêtszej Marii Panny', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-11-01', 'Uroczystoœæ Wszystkich Œwiêtych', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-11-02', 'Zaduszki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-11-11', 'Narodowe Œwiêto Niepodleg³oœci', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-11-30', 'Andrzejki', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-12-24', 'Wigilia Bo¿ego Narodzenia', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-12-25', 'Bo¿e Narodzenie', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-12-26', 'Drugi dzieñ œwi¹t Bo¿ego Narodzenia', 1);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-12-31', 'Sylwester', 0);
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-04-02', 'Wielki Czwartek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-04-03', 'Wielki Pi¹tek', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-04-04', 'Wielka Sobota', 0);		--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-04-05', 'Wielkanoc', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-04-06', 'Poniedzia³ek Wielkanocny', 1);	--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-05-24', 'Zielone Œwi¹tki', 1);			--œwiêto ruchome
insert into dbo.swieta ("data", "swieto", "wolne") values ('2015-06-04', 'Bo¿e Cia³o', 1);				--œwiêto ruchome

-- inserty do tabeli wakacje
-- #############################################################################################

INSERT INTO dbo.wakacje VALUES('1980-01-21','1980-02-24','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1980-06-28','1980-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1981-01-19','1981-02-22','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1981-06-27','1981-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1982-01-18','1982-02-21','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1982-06-26','1982-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1983-01-17','1983-02-20','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1983-06-25','1983-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1984-01-16','1984-02-19','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1984-06-30','1984-09-02','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1985-01-21','1985-02-24','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1985-06-29','1985-09-01','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1986-01-20','1986-02-23','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1986-06-28','1986-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1987-01-19','1987-02-22','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1987-06-27','1987-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1988-01-18','1988-02-21','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1988-06-25','1988-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1989-01-16','1989-02-19','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1989-06-24','1989-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1990-01-15','1990-02-18','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1990-06-30','1990-09-02','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1991-01-21','1991-02-24','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1991-06-29','1991-09-01','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1992-01-20','1992-02-23','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1992-06-27','1992-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1993-01-18','1993-02-21','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1993-06-26','1993-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1994-01-17','1994-02-20','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1994-06-25','1994-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1995-01-16','1995-02-19','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1995-07-01','1995-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1996-01-15','1996-02-18','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1996-06-29','1996-09-01','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1997-01-20','1997-02-23','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1997-06-28','1997-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1998-01-19','1998-02-22','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1998-06-27','1998-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('1999-01-18','1999-02-21','Winter vacations');
INSERT INTO dbo.wakacje VALUES('1999-06-26','1999-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2000-01-17','2000-02-20','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2000-07-01','2000-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2001-01-15','2001-02-18','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2001-06-30','2001-09-02','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2002-01-21','2002-02-24','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2002-06-29','2002-09-01','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2003-01-20','2003-02-23','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2003-06-28','2003-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2004-01-19','2004-02-22','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2004-06-26','2004-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2005-01-17','2005-02-20','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2005-06-25','2005-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2006-01-16','2006-02-19','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2006-07-01','2006-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2007-01-15','2007-02-18','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2007-06-30','2007-09-02','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2008-01-21','2008-02-24','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2008-06-28','2008-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2009-01-19','2009-02-22','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2009-06-27','2009-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2010-01-18','2010-02-21','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2010-06-26','2010-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2011-01-17','2011-02-20','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2011-06-25','2011-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2012-01-16','2012-02-19','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2012-06-30','2012-09-02','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2013-01-21','2013-02-24','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2013-06-29','2013-09-01','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2014-01-20','2014-02-23','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2014-06-28','2014-08-31','Summer vacations');
INSERT INTO dbo.wakacje VALUES('2015-01-19','2015-02-22','Winter vacations');
INSERT INTO dbo.wakacje VALUES('2015-06-27','2015-08-31','Summer vacations');
