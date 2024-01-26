create table if not exists Genre (
	id serial primary key,
	name varchar(40) not null
);
create table if not exists Author (
	id serial primary key,
	name varchar(40) not null
);
create table if not exists Author_Genre (
	author_id integer references Author(id),
	genre_id integer references Genre(id)
);
create table if not exists Album (
	id serial primary key,
	name varchar(40) not null,
	release date not null
);
create table if not exists Author_Album (
	author_id integer references Author(id),
	album_id integer references Album(id)
);
create table if not exists Track (
	id serial primary key,
	album_id integer references Album(id),
	name varchar(40) not null,
	duration numeric(3,2) not null
);
create table if not exists Collection (
	id serial primary key,
	name varchar(40) not null,
	release date not null
);
create table if not exists Collection_Track (
	collection_id integer references Collection(id),
	track_id integer references Track(id)
);

insert into author ("name")
	values('Eminem');

insert into author ("name")
	values('Лепс');

insert into author ("name")
	values('50 cent');

insert into author ("name")
	values('AC/DC');
	
insert into genre ("name")
	values('Rap');

insert into genre ("name")
	values('Rock');
	
insert into genre ("name")
	values('Hip-Hop');
insert into album ("name", "release")
	values('RapGOD','25.12.1996');
insert into album ("name", "release")
	values('RockGOD','20.09.2002');
insert into album ("name", "release")
	values('GGG','12.10.2022');
insert into album ("name", "release")
	values('Burdor','12.10.2019');
insert into album ("name", "release")
	values('Crazy too','02.02.2019');
insert into track (album_id, "name", duration)
	values(1,'Princes', 2.22);
insert into track (album_id, "name", duration)
	values(1,'Princ', 1.2);
insert into track (album_id, "name", duration)
	values(4,'Coco', 3.2);
insert into track (album_id, "name", duration)
	values(5,'Grust', 2.2);
insert into track (album_id, "name", duration)
	values(5,'Bolche', 1.2);
insert into track (album_id, "name", duration)
	values(5,'Milc', 4.2);
insert into track (album_id, "name", duration)
	values(2,'GOgo', 3.22);
insert into track (album_id, "name", duration)
	values(2,'Hello', 1.14);
insert into track (album_id, "name", duration)
	values(3,'GGGodd', 2.22);
insert into track (album_id, "name", duration)
	values(3,'Kurva', 1.45);
insert into track (album_id, "name", duration)
	values(3,'My Kurva', 4.22);
insert into collection ("name", "release")
	values('godCollection', '25.12.2001');
insert into collection ("name", "release")
	values('KurCollection', '25.09.2019');
insert into collection ("name", "release")
	values('Collection1', '25.12.2001');
insert into collection ("name", "release")
	values('godCollectionGOOF', '25.12.2001');
insert into collection ("name", "release")
	values('Coll', '25.10.2015');
insert into  author_album 
 values (1,1);
 insert into  author_album 
 values (4,2);
 insert into  author_album 
 values (3,1);
 insert into  author_album 
 values (2,3);
insert into author_genre 
	values(1,1);
insert into author_genre 
	values(3,1);
insert into author_genre 
	values(2,2);
insert into author_genre 
	values(4,2);
insert into author_genre 
	values(4,3);
	
insert into collection_track 
	values(1,1);
	
insert into collection_track 
	values(1,3);
	
insert into collection_track 
	values(1,6);
	
insert into collection_track 
	values(2,2);
	
insert into collection_track 
	values(2,4);
	
insert into collection_track 
	values(3,1);
	
insert into collection_track 
	values(3,6);
insert into collection_track 
	values(4,1);
	
insert into collection_track 
	values(4,2);
	
insert into collection_track 
	values(4,3);
	
insert into collection_track 
	values(4,4);