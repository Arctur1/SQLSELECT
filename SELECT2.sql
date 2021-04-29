1.

SELECT genre.name, COUNT(artistgenre.genre_id) as artistnumber
FROM genre
JOIN artistgenre
ON genre.id = artistgenre.genre_id
group by genre.id;

2.

SELECT COUNT(*) FROM song s
JOIN album a
ON a.id = s.album_id  WHERE year > 2018;

3.

SELECT a.name, AVG(s.lengthseconds) as avg FROM album a
JOIN song s 
ON a.id = s.album_id  
group by a.name;

4.

SELECT a.name FROM artist a
JOIN albumartist as aa ON a.id = artist_id
JOIN album ON album.id = aa.album_id WHERE album.year <> 2020

5.

SELECT c.name FROM collection as c 
JOIN songcollection as sc ON sc.collection_id = c.id
JOIN song as s ON s.id = sc.song
JOIN album as a ON a.id = s.album_id
JOIN albumartist as ar ON a.id = ar.album_id
JOIN artist ON artist.id = ar.artist_id WHERE artist.name = 'Drake'
group by c.name;

6.

SELECT a.name, COUNT(ag.artist_id) FROM album as a
JOIN albumartist as aa ON a.id = aa.album_id
JOIN artist as ar ON ar.id = aa.artist_id
JOIN artistgenre as ag ON ar.id = ag.artist_id
group by a.name, ag.artist_id
HAVING COUNT(ag.artist_id) > 1;

7.

SELECT s.name FROM song as s
FULL OUTER JOIN songcollection as sc ON sc.song = s.id
WHERE sc.song IS NULL
OR s.id IS NULL;

8. 

SELECT a.name FROM song s
JOIN albumartist as ar ON s.album_id = ar.album_id
JOIN artist as a ON ar.artist_id = a.id
WHERE lengthseconds = (SELECT min(lengthseconds) FROM song);

9.

SELECT a.name, COUNT(song.album_id) as songcount 
FROM album a
JOIN song ON song.album_id = a.id
group by a.name
HAVING COUNT(song.album_id) =
(SELECT DISTINCT COUNT(song.album_id) as songcount 
FROM album a
JOIN song ON song.album_id = a.id
group by a.name
order by songcount asc
LIMIT 1)

