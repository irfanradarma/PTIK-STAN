SELECT * FROM
jurnal2019
WHERE debet > (SELECT AVG(debet)
					FROM jurnal2019)+(3*(SELECT  STDDEV(debet)
												FROM jurnal2019))
	OR debet < (SELECT AVG(debet)
					FROM jurnal2019)-(3*(SELECT  STDDEV(debet)
												FROM jurnal2019))