/*Populate anime table*/

INSERT INTO anime(anime_id, anime_name, episodes, members, type_id,rating)
VALUES
      (1,'Cowboy Bebop', 26, 486824, 2, 8.82),
	  (5,'Cowboy Bebop: Tengoku', 1, 137636, 1, 8.40),
	  (8,'Beet the Vandel Buster', 52, 9848, 2, 7.06),
	  (16,'Hachimitsu to Clover', 24, 130646, 2, 8.18),
	  (51,'Tenshi Kinryouku', 3, 36352, 3, 6.46),
	  (376,'Elfen Lied Special', 1, 116129, 4, 7.34),
	  (1047,'Elfen Lied Special', 1, 13661, 5, 7.60),
	  (2953,'Egao', 1, 8814, 5, 6.77),
	  (20,'Naruto', 220, 683297, 2, 7.81),
	  (21,'One Piece', 1038, 50486, 2, 8.58);

	  
	  



	  

/*Populate genre table*/

INSERT INTO genres(genre_id, name_genre)
VALUES
      (1, 'Drama'),
      (2, 'Romance'),
      (3, 'School'),
      (4, 'Supernatural'),
      (5, 'Adventure'),
      (6, 'Fantasy'),
      (7, 'Magic'),
      (8, 'Military'),
      (9, 'Shounen'),
      (10, 'Comedy');

/*Populate type_ table*/

INSERT INTO type_(type_id, type_name)
VALUES
      (1, 'Movie'),
      (2, 'TV'),
      (3, 'OVA'),
      (4, 'Special'),
      (5, 'Music'),
      (6, 'ONA'),
      (7, 'NaN');


/*Populate genre_anime table*/

INSERT INTO genre_anime( anime_id, genre_id)
VALUES
      (1, 10),
      (1, 5),
      (5, 1),
      (8, 3),
      (16, 2),
      (51, 7),
      (376, 8),
      (376, 9),
      (1047, 2),
      (20, 4),
      (21, 3),
      (20, 1),
      (16, 8),
      (16, 5),
      (5, 5),
      (20, 10),
      (20, 2);


/*Populate user_rating table*/

INSERT INTO user_rating(id, anime_id, user_id, rating)
VALUES
      (1, 20, 1,8),
      (2, 21, 1,5),
      (3, 21, 1,6),
      (4, 1, 2, 10),
      (5, 5, 3,4),
	  (6, 16, 3,3),
      (7, 2953, 7,2),
      (8, 51, 9,10),
	  (9, 376, 4, 4),
      (10, 51, 2,9),
      (11, 51, 3,9);
      

/*Populate user_ table*/

INSERT INTO user_(user_id, user_nickname)
VALUES
      (1, 'Chubaka'),
      (2, 'Chen'),
      (3, 'AdskiyD'),
      (4, 'MilfHunter'),
      (6, 'SemenGhoul'),
	  (7, 'GutenTag228'),
	  (8, 'Yalublusobak1023'),
	  (9, 'Nedzeday');
