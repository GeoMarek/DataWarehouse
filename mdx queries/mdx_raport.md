# Zdefiniowane KPI

### 1. Miesięczne zmniejszenie sumarycznej ilości awarii tramwajów o nie mniej niż 2.5% w porównaniu do poprzedniego miesiąca. 

###### Nazwa
```
FailureRate
```
###### Value Expression
```
([Measures].[Count_Journey], [Failures].[Type].&[drobna usterka])
```
###### Goal Expression
```
(
    KPIValue( "FailureRate" ), 
    ParallelPeriod 
    (
	    [Dates].[Hierarchy].[Month], 
	    1,
	    [Dates].[Hierarchy].CurrentMember 
    )
) * 0.975

```
###### Status Expression
```	
IIF (
    KPIVALUE("FailureRate") - KPIGoal("FailureRate") < 0, 
	1, 
	IIF ( 
	    KPIVALUE("FailureRate") - KPIGoal("FailureRate") > 0, 
		-1, 
		0
	)
)
```
###### Trend Expression
```	
IIf (
    KPIValue("FailureRate") > ( KPIValue( "FailureRate" ), 
                    ParallelPeriod (
                        [Dates].[Hierarchy].[Month], 
                        1, 
                        [Dates].[Hierarchy].CurrentMember 
                    )), 
    1, 
    IIf (
        KPIValue("FailureRate") < ( KPIValue( "FailureRate" ), 
                        ParallelPeriod (
                            [Dates].[Hierarchy].[Month], 
                            1, 
                            [Dates].[Hierarchy].CurrentMember 
                            )), 
	    -1, 
	    0
))
```

### 2. Miesięczne zmniejszenie sumarycznego czasu opóźnień tramwajów o nie mniej niż 1% w porównaniu do poprzedniego miesiąca. 

###### Nazwa
```
TimeDelay
```
###### Value Expression
```
([Measures].[Sum_TimeDelay]/[Measures].[Count_Journey])
```
###### Goal Expression
```
(KPIValue( "TimeDelay" ), 
ParallelPeriod 
(
    [Dates].[Hierarchy].[Month], 
    1,
    [Dates].[Hierarchy].CurrentMember 
)) * 0.99
```
###### Status Expression
```	
IIf (
    KPIVALUE( "TimeDelay" ) > KPIGoal("TimeDelay"), 
    1, -1)
```
###### Trend Expression
```	
	IIf ( 
	    KPIValue( "TimeDelay" ) > ( KPIValue( "TimeDelay" ), 
            ParallelPeriod (
                [Dates].[Hierarchy].[Month], 
                1,
               [Dates].[Hierarchy].CurrentMember) 
	   ), 
	   1, -1)
```

# Zapytania MDX 

### 1. Porównanie sumarycznych opóźnień dla przejazdów z tego i poprzedniego miesiąca
```
SELECT	{ [Measures].[Sum_TimeDelay] } ON COLUMNS,
		{   [Dates].[2011].[January], 
		    [Dates].[2011].[January].NEXTMEMBER 
		} ON ROWS
		FROM [Hurtownia Danych];
```
### 2. Jaka linia miała największe sumaryczne opóźnienie w tym miesiącu w porównaniu do miesiąca poprzedniego?
```
SELECT {    ([Dates].[2011].[January], 
                TOPCOUNT( 
                    [Tramways].[Line].Children, 
                    1, 
                    ([Dates].[2011].[January], [Measures].[Sum_TimeDelay])
            )),
		    ([Dates].[2011].[January].NEXTMEMBER, 
		        TOPCOUNT( 
		            [Tramways].[Line].Children, 
		            1, 
		            ([Dates].[2011].[January].NEXTMEMBER, [Measures].[Sum_TimeDelay])
            ))
		} ON ROWS,
		[Measures].[Sum_TimeDelay] ON COLUMNS
FROM [Hurtownia Danych];
```
### 3. Na jakich przystankach są największe sumaryczne opóźnienia w tym i poprzednim miesiącu?
```
SELECT  {   ([Dates].[2011].[January], 
            TOPCOUNT( 
                [ID Station Start].[Name].Children, 
                1, 
                ([Dates].[2011].[January], [Measures].[Sum_TimeDelay])
            )),
		    ([Dates].[2011].[January].NEXTMEMBER, 
		    TOPCOUNT( 
		        [ID Station Start].[Name].Children, 
		        1, 
		        ([Dates].[2011].[January].NEXTMEMBER, [Measures].[Sum_TimeDelay])
		        ))
		} ON ROWS,
		[Measures].[Sum_TimeDelay] ON COLUMNS
FROM [Hurtownia Danych];
```
### 4. Porównaj liczbę przepracowanych godzin dziennych i nocnych kierowców, którzy byli prowadzili sumarycznie najbardziej opóźnione tramwaje w tym i poprzednim miesiącu.

```
SELECT {    ([Dates].[2011].[January], 
                TOPCOUNT( 
                    [Drivers].[Name].Children, 
                    1, 
                    ([Dates].[2011].[January], [Measures].[Sum_TimeDelay]))  
            ),
		    ([Dates].[2011].[January].NEXTMEMBER, 
		        TOPCOUNT( 
		            [Drivers].[Name].Children, 
		            1, 
		            ([Dates].[2011].[January].NEXTMEMBER, [Measures].[Sum_TimeDelay]))
		    )
	    } ON ROWS,
		{   { [Measures].[Sum_DayHours] , [Measures].[Sum_NightHours] }, 
		    [Measures].[Sum_TimeDelay]
		} ON COLUMNS
FROM [Hurtownia Danych];
```
### 5. Za jaki procent opóźnień w tym i poprzednim miesiącu są odpowiedzialni kierowcy męscy?
```
WITH 
	 MEMBER [MaleTimeDelay] AS '
	    ([Drivers].[Sex].[Male],[Measures].[Sum_TimeDelay]) / 
	    ([Drivers].[Sex].[All],[Measures].[Sum_TimeDelay])', 
	    format_string = '#,###0.000'
	 MEMBER [FemaleTimeDelay] AS '
	    ([Drivers].[Sex].[Female],[Measures].[Sum_TimeDelay]) / 
	    ([Drivers].[Sex].[All],[Measures].[Sum_TimeDelay])', 
	    format_string = '#,###0.000'
SELECT	{
            ([Dates].[2011].[January]),
            ([Dates].[2011].[January].NEXTMEMBER)
        } ON ROWS,
		{
		    [Measures].[FemaleTimeDelay], 
		    [Measures].[MaleTimeDelay]
		} ON COLUMNS
FROM [Hurtownia Danych]
WHERE [Drivers].[Sex].[Male];
```
### 6. Ilość awarii w każdym dniu tygodnia z obecnego i poprzedniego miesiąca.
```
SELECT [Dates].[Day In Week].Children ON ROWS,
		(
		    {   
		        ([Dates].[2011].[January]),
		        ([Dates].[2011].[January].NEXTMEMBER)
		    }, 
		    [Measures].[Count_Journey]
		) ON COLUMNS
FROM [Hurtownia Danych]
WHERE [Failures].[Type].[All].Children - [Failures].[Type].&[brak awarii];
```
### 7. O której godzinie wystąpiło najwięcej awarii w analizowanym miesiącu?
```
SELECT	{(
	        TOPCOUNT(
		        [Time].[Hour].Children, 
		        1, 
		        ([Measures].[Count_Journey], [Dates].[2011].[January])
		    ), [Dates].[2011].[January]
        ), 
		( 
		    TOPCOUNT(
		        [Time].[Hour].Children, 
		        1, 
		        ([Measures].[Count_Journey], [Dates].[2011].[January].NEXTMEMBER)
		    ), [Dates].[2011].[January].NEXTMEMBER)
		} ON ROWS,
		[Measures].[Count_Journey] ON COLUMNS
FROM [Hurtownia Danych]
WHERE [Failures].[Type].[All].Children - [Failures].[Type].&[brak awarii];
```
### 8. Które modele tramwajów psuły się w tym miesiącu częściej od poprzedniego?
```
WITH 
	MEMBER [Dates].[Month].[Difference] AS '
	    ([Dates].[Year].[2011].[January].NEXTMEMBER - 
	    [Dates].[Year].[2011].[January])'
SELECT  { 
            [Dates].[Year].[2011].[January], 
            [Dates].[Year].[2011].[January].NEXTMEMBER, 
            [Dates].[Year].[Difference]
        } ON COLUMNS,	
		( 
		    ([Tramways].[Model].[All].Children - [Tramways].[Model].[Unknown]), 
		    [Measures].[Count_Journey]
		) ON ROWS
FROM [Hurtownia Danych]
WHERE [Failures].[Type].[All].Children - [Failures].[Type].&[brak awarii];
```
### 9. Czy dane modele tramwajów miały więcej awarii od innych biorąc pod uwagę aktualny i poprzedni miesiąc?
```
SELECT 
	(
	    { [Dates].[2011].[January], [Dates].[2011].[January].NEXTMEMBER }, 
	    [Measures].[Count_Journey]
	) ON COLUMNS,
	(
	    [Tramways].[Model].[All].Children - [Tramways].[Model].[Unknown]
	) ON ROWS
FROM [Hurtownia Danych]
WHERE [Failures].[Type].[All].Children - [Failures].[Type].&[brak awarii];
```
### 10. Ile awarii w tym i poprzednim miesiącu było spowodowanych przez kierowców aut osobowych?
```
--		[Dates].[2010] = [Dates].[2011].[January]
--		[Dates].[2011] = [Dates].[2011].[January].NEXTMEMBER

WITH
	MEMBER [CountFailure] AS '([Measures].[Count_Journey])'
SELECT 
	{ 
	    [Dates].[2011].[January], 
	    [Dates].[2011].[January].NEXTMEMBER 
	} ON ROWS,
	[CountFailure] ON COLUMNS
FROM [Hurtownia Danych]
WHERE   (
            [Failures].[Who Caused].[kierowca osobowy],
            ([Failures].[Type].[All].Children - [Failures].[Type].&[brak awarii])
        );

```
### 11. Przy jakim przystanku dokładnie było najmniej awarii w tym i poprzednim miesiącu?
```
WITH
	MEMBER [CurrentJourneys] AS '
	    ([Measures].[Count_Journey], [Dates].[2011].[January].NEXTMEMBER)'
	MEMBER [PrevJourneys] AS '
	    ([Measures].[Count_Journey], [Dates].[2011].[January])'
SELECT {
            [Measures].[CurrentJourneys], 
            [Measures].[PrevJourneys]
        } ON COLUMNS,
	    {   
	        (TOPCOUNT(
	            [ID Station Start].[Name].Children, 
	            1, 
	            [CurrentJourneys]), 
	        [Dates].[2011].[January].NEXTMEMBER ),
	        (TOPCOUNT(
	            [ID Station Start].[Name].Children, 
	            1, 
	            [PrevJourneys]), 
	       [Dates].[2011].[January] )
	    } ON ROWS
FROM [Hurtownia Danych]
WHERE [Failures].[Type].[All].Children - [Failures].[Type].&[brak awarii];
```
### 12. Ile było awarii tramwajów w dni wolne od pracy porównując ten miesiąc i poprzedni?
```
WITH 
	MEMBER [HolidayJourneys] AS '
	    ([Measures].[Count_Journey], 
	    [Dates].[Holiday].&[tak])'
SELECT 
	HolidayJourneys ON COLUMNS,
	{ 
	    [Dates].[2011].[January], 
	    [Dates].[2011].[January].NEXTMEMBER
	} ON ROWS
FROM [Hurtownia Danych]
WHERE [Failures].[Type].[All].Children - [Failures].[Type].&[brak awarii];
```

