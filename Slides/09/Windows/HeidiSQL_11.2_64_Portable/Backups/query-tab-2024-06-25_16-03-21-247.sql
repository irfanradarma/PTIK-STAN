SELECT * 
FROM master_invoice
WHERE MONTH(tgl_invoice) = 1
	AND YEAR(tgl_invoice) = 2004
ORDER BY jumlah DESC
LIMIT 10
