SELECT MONTH(tgl) BULAN, kode_akun, kredit
FROM jurnal2019
WHERE MONTH(tgl) = 11
ORDER BY kredit DESC