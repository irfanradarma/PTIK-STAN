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

-- top 10 pengiriman
SELECT kode_plg, COUNT(*) JML
FROM deliveryorder_master
WHERE YEAR(tgl_do) = 2003
GROUP BY kode_plg
ORDER BY JML DESC
LIMIT 20;

-- rata-rata profit
SELECT 
	A.kode_produk,
	AVG(A.total/A.quantity)-B.avg_cost profit
FROM sales_detail A
	JOIN produk_master B
		ON A.kode_produk = B.kode_produk
GROUP BY A.kode_produk
ORDER BY profit DESC;

-- tofu
SELECT 
	B.kode_plg,
	C.nama_plg, 
	SUM(A.total) total_tofu_sales
FROM sales_detail A
	JOIN deliveryorder_master B
		ON A.no_do = B.no_do
			JOIN customer_master C
				ON B.kode_plg=C.kode_plg
WHERE A.kode_produk = "Prd-014"
GROUP BY B.kode_plg
ORDER BY total_tofu_sales DESC