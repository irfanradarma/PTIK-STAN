SELECT *
FROM master_invoice
WHERE jumlah > (SELECT AVG(jumlah)
						FROM master_invoice)+(3*(SELECT STDDEV(jumlah)
														FROM master_invoice))
		OR
		jumlah < (SELECT AVG(jumlah)
						FROM master_invoice)-(3*(SELECT STDDEV(jumlah)
														FROM master_invoice))