-- JAWABAN ROUND III
-- nomor 1
SELECT COUNT(*)
FROM album
WHERE ALBUM_NAME LIKE "%INDONESIA%";

-- nomor 2
SELECT 
	COUNT(DISTINCT artist_id) 
FROM track_stat
WHERE track_name LIKE "%love%";

-- nomor 3
SELECT
	track_genre_id,
	COUNT(*)
FROM track_stat
WHERE track_name LIKE "%love%"
GROUP BY track_genre_id
ORDER BY COUNT(*) DESC;
SELECT * FROM track_genre WHERE genre_id = 21;

-- nomor 4
SELECT *
FROM track_stat
WHERE track_name LIKE "%love%"
ORDER BY popularity DESC;
SELECT * FROM artists WHERE artist_id = 28819;

-- nomor 5
SELECT * FROM artists WHERE artists = "adele";
SELECT *
FROM track_stat
WHERE artist_id = 623
ORDER BY popularity DESC