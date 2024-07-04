create  database practice;
use practice;
show tables;
select * from athlete_events;
select Name,Sport,Games from athlete_events where Year=2016 and Medal='Gold';
SELECT DISTINCT Sport 
FROM athlete_events
WHERE Year = 2018;


select Name,Age from athlete_events where Age= (select min(Age) from athlete_events ) or Age= (select max(Age) from athlete_events);

select count(Name) from athlete_events where Games='2012 Summer';

 select Name,Team from athlete_events where Games='2016 Summer' and sport='Boxing'and Sex='F';
 
select avg(Weight) from athlete_events where Games='2016 Summer' and Sex='M';

select Medal,count(*) as Medal_counts from athlete_events where Team='China' and Games='2016 Summer'   group by Medal ;

select Team ,NAME,Height from athlete_events where Height=(select max(Height) from athlete_events where Height <> 'NA');
select max(Height) from athlete_events;
 select min(Height),max(Height) from athlete_events;
 
 SELECT City, COUNT(*) AS Num_Summer_Olympics_Hosted FROM athlete_events WHERE Season = 'Summer' GROUP BY City ORDER BY Num_Summer_Olympics_Hosted desc;

 
select  Name,Sport,Medal from athlete_events where Age>40 and games='2016 Summer' and Medal is not null and Medal <> 'NA';

select Name,Sport,avg(Age) as avg_age from athlete_events where year =2016 group by Sport,Name order by avg_age asc;

select Team from athlete_events where Season='Winter' and Medal='NA';

