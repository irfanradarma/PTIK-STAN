SELECT
	album_id,
	AVG(liveness) rata2
FROM track_stat
GROUP BY album_id
ORDER BY rata2 DESC;

SELECT * FROM album WHERE album_id = 20828;


	A.artist_id, 
	B.artists, 
	COUNT(*) jml
FROM track_stat A
	JOIN artists B
		ON A.artist_id=B.artist_id
WHERE track_genre_id = 86
GROUP BY artist_id
ORDER BY jml DESC
LIMIT 15;

SELECT * FROM artists
WHERE artist_id = 3965