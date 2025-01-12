SELECT kode_plg, COUNT(*) JML
FROM deliveryorder_master
WHERE YEAR(tgl_do) = 2003
GROUP BY kode_plg
ORDER BY JML DESC
LIMIT 20;

