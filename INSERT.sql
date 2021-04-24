INSERT INTO artist				
	VALUES
	(1, 'BTS', 'K-pop'),
	(2, 'Хрен', 'Metal'),
	(3, 'Eminem', 'Rap'),
	(4, 'Billie Eilish', 'Pop'),
	(5, 'The Beatles', 'Rock'),
	(6, 'Dua Lipa', 'Pop'),
	(7, 'Drake', 'Rap'),
	(8, 'Nirvana', 'Rock');

INSERT INTO album				
	VALUES
	(1, 'Love Yourself: Answer', '2018'),
	(2, 'Велес', '2018'),
	(3, 'Slim Shady', '1999'),
	(4, 'When We All Fall Asleep, Where Do We Go?', '2019'),
	(5, 'Future Nostalgia, Where Do We Go?', '2020'),
	(6, 'Abbey Road', '1969'),
	(7, 'Views', '2016'),
	(8, 'Nevermind', '1991');


INSERT INTO genre				
	VALUES
	(1, 'K-pop'),
	(2, 'Metal'),
	(3, 'Rap'),
	(4, 'Pop'),
	(5, 'Rock');

INSERT INTO collection
	VALUES
	(1, 'Chill', 2020),
	(2, 'Hip-hop', 2019),
	(3, 'Trending', 2018),
	(4, 'Hard', 2017),
	(5, 'Light', 2016),
	(6, 'Best of rock', 2015),
	(7, 'Evening', 2014),
	(8, 'New releases', 2013);

INSERT INTO song
	VALUES
	(1, 'Idol', 314, 1),
	(2, 'I''m Fine', 387, 1),
	(3, 'Иван-дурак', 160, 2),
	(4, 'Поле чудес в стране дураков', 456, 2),
	(5, 'If I Had', 340, 3),
	(6, 'I''m Shady', 249, 3),
	(7, 'Bad Guy', 190, 4),
	(8, 'You Should See Me in a Crown', 187, 4),
	(9, 'Physical', 245, 5),
	(10, 'Break My Heart', 280, 5),
	(11, 'Come Together', 321, 6),
	(12, 'Octopus’s Garden', 210, 6),
	(13, 'Hotline Bling', 296, 7),
	(14, 'Views', 246, 7),
	(15, 'Smells Like Teen Spirit', 288, 8);


INSERT INTO artistgenre
	VALUES
	(1,1,1),
	(2,2,2),
	(3,3,3),
	(4,4,4),
	(5,5,5),
	(6,6,4),
	(7,7,3),
	(8,8,5),
	(9,2,5);

INSERT INTO albumartist
	VALUES
	(1,1,1),
	(2,2,2),
	(3,3,3),
	(4,4,4),
	(5,5,5),
	(6,6,6),
	(7,7,7),
	(8,8,8);

INSERT INTO songcollection
	VALUES
	(1,1,8),
	(2,1,13),
	(3,2,5),
	(4,2,6),
	(5,3,7),
	(6,3,1),
	(7,4,3),
	(8,4,4),
	(9,5,2),
	(10,6,15),
	(11,6,12);
