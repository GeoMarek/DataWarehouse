use HurtowniaDanych
go

-- pomocnicze zmienne
Declare @StartDate date; 
Declare @EndDate date;
SELECT @StartDate = '1980-01-01', @EndDate = '2015-12-31';
Declare @DateInProcess datetime = @StartDate;

-- wypelnienie tabeli
While @DateInProcess <= @EndDate
	Begin
		INSERT INTO Dates VALUES( 
			@DateInProcess,
			Cast(Day(@DateInProcess) as int),
			Cast(DATENAME(dw,@DateInProcess) as varchar(15)),
			Cast(DATEPART(dw, @DateInProcess) as int),
			Cast(DATENAME(month, @DateInProcess) as varchar(10)),
			Cast(Month(@DateInProcess) as int),
			Cast(Year(@DateInProcess) as int),
			'nie', 
			'nie'  
		);  
		Set @DateInProcess = DateAdd(d, 1, @DateInProcess);
	End
GO

-- usuwanie widoku
If (object_id('view_dates') is not null) 
	Drop View view_dates;
GO

-- tworzenie widoku 
CREATE VIEW view_dates AS
	SELECT 
		dw_dates.Date,
		CASE
			WHEN aux_wakacje.rodzaj is not null THEN 'tak'
			ELSE 'nie'
			END AS [Vacation],
		CASE	
			WHEN aux_swieta.swieto is not null THEN 'tak'
			ELSE 'nie'
			END AS [Holiday]
	FROM auxiliary.dbo.swieta as aux_swieta
		right JOIN Dates as dw_dates 
			ON dw_dates.Date = aux_swieta.data
		left JOIN auxiliary.dbo.wakacje as aux_wakacje
			ON dw_dates.Date BETWEEN 
				aux_wakacje.start AND aux_wakacje.koniec;

-- merge widoku z tabela
GO
MERGE INTO Dates
	USING view_dates as dview
		ON Dates.date = dview.date
			WHEN Matched 
			THEN 
				UPDATE
				SET Dates.Vacation = dview.Vacation,
					Dates.Holiday = dview.Holiday;


					