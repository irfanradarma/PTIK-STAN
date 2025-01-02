SELECT C.nama_plg, A.kode_produk, SUM(A.total) total_sales
FROM sales_detail AS A 
	INNER JOIN deliveryorder_master AS B
		ON A.no_do = B.no_do
	INNER JOIN customer_master AS C
		ON B.kode_plg = C.kode_plg
WHERE kode_produk = "Prd-014"
GROUP BY C.nama_plg
ORDER BY total_sales DESC