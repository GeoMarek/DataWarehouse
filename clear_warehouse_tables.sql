delete from WorkIndexes;
delete from Journeys;
delete from Dates;
delete from Drivers;
delete from Time;
delete from Failures;
delete from Stations;
delete from Tramways;




select count(*) as work_indexes from WorkIndexes;
select count(*) as dates from Dates;
select count(*) as drivers from Drivers;
select count(*) as time from Time;
select count(*) as failures from Failures;
select count(*) as stations from Stations;
select count(*) as tramways from Tramways;
select count(*) as journeys from Journeys;

select * from Journeys;