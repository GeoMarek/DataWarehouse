use HurtowniaDanych;
GO

-- wykolejenie i wszyscy winowajcy
insert into Failures values('wykolejenie', 'motorniczy');
insert into Failures values('wykolejenie', 'kierowca osobowy');
insert into Failures values('wykolejenie', 'kierowca inny');
insert into Failures values('wykolejenie', 'pieszy');
insert into Failures values('wykolejenie', 'rowerzysta');
insert into Failures values('wykolejenie', 'none');

-- kolizja i wszyscy winowajcy
insert into Failures values('kolizja', 'motorniczy');
insert into Failures values('kolizja', 'kierowca osobowy');
insert into Failures values('kolizja', 'kierowca inny');
insert into Failures values('kolizja', 'pieszy');
insert into Failures values('kolizja', 'rowerzysta');
insert into Failures values('kolizja', 'none');

-- problem z silnikiem i wszyscy winowajcy
insert into Failures values('problem z silnikiem', 'motorniczy');
insert into Failures values('problem z silnikiem', 'kierowca osobowy');
insert into Failures values('problem z silnikiem', 'kierowca inny');
insert into Failures values('problem z silnikiem', 'pieszy');
insert into Failures values('problem z silnikiem', 'rowerzysta');
insert into Failures values('problem z silnikiem', 'none');

-- drobna usterka i wszyscy winowajcy
insert into Failures values('drobna usterka', 'motorniczy');
insert into Failures values('drobna usterka', 'kierowca osobowy');
insert into Failures values('drobna usterka', 'kierowca inny');
insert into Failures values('drobna usterka', 'pieszy');
insert into Failures values('drobna usterka', 'rowerzysta');
insert into Failures values('drobna usterka', 'none');
