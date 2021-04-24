create table artist (
	id serial primary key,
	name varchar not null,
	genre varchar not null
);

create table album (
	id serial primary key,
	name varchar not null unique,
	year integer not null	
);

create table genre (
	id serial primary key,
	name varchar not null unique
);

create table collection (
	id serial primary key,
	name varchar not null unique,
	year integer not null
);

create table song (
	id serial primary key,
	name varchar not null unique,
	lengthseconds integer not null,
	album_id integer references album(id)
);

create table albumartist (
	id serial primary key,
	artist_id integer references artist(id),
	album_id integer references album(id)
);

create table artistgenre (
	id serial primary key,
	artist_id integer references artist(id),
	genre_id integer references genre(id)
	
);

create table songcollection (
	id serial primary key,
	collection_id integer references collection(id),
	song integer references song(id)
);


