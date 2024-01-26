select name, duration  from track
where duration =(select max(duration)from track);

select name  from track
where duration >= 3.5;

select name from collection c 
where extract(year from release) >= 2018 and extract(year from release) <= 2020;

select name from author a where name not like '% %';

select name from track t where lower(name) like '%my%' or lower(name) like '%мой%'