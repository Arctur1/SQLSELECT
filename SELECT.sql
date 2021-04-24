
SELECT * FROM album
WHERE year = 2018;


SELECT name, lengthseconds
FROM song
WHERE lengthseconds =(SELECT MAX(lengthseconds) FROM song);


SELECT name
FROM song
WHERE lengthseconds > 209;


SELECT name FROM collection
WHERE year > 2017 and year < 2021;


SELECT name FROM artist
WHERE name ~* '(^[A-Za-z]+$)';


SELECT name FROM song 
WHERE name ~* '(?:^|\W)My(?:$|\W)';
