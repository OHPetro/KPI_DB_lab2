/*Кількість аніме кожного жанру*/
SELECT genres.name_genre,COUNT(genre_anime.anime_id) as amount_genre FROM genre_anime
Join genres ON genres.genre_id = genre_anime.genre_id
GROUP BY genres.name_genre
order by amount_genre;


/*Кількість аніме відносно кількості сезонів*/
SELECT ROUND(rating) as rating, COUNT(*) as amount_rating FROM anime
GROUP BY ROUND(rating)
ORDER BY amount_rating;


/*Рейтинг до мемберів */
Select Round(members,-4) as members,Round(AVG(rating),2) from anime
group by Round(members,-4)
order by members
