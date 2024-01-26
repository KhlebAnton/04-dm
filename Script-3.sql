select g.name, count(author_id) from  author_genre ag 
join genre g on ag.genre_id = g.id 
group by g.name


select al.name, count(t.id)  from album al
join track t on al.id = t.album_id 
where extract(year from al.release) = 2019
group by al.name

select a.name, AVG(t.duration)  from album a 
join track t on a.id =t.album_id 
group by a.name 

select a.name  from author_album aa 
join author a ON a.id = aa.author_id 
join album a2 on a2.id = aa.album_id 
where extract (year from a2.release) != 2020

select c.name from collection c 
join collection_track ct on ct.collection_id = c.id 
join track t on t.id = ct.track_id 
join author_album aa on aa.album_id = t.album_id 
join author a on a.id = aa.author_id 
where a."name" = 'AC/DC'
group by c.name;
 
