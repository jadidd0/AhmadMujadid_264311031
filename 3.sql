SELECT 
    r.Nama_Ruas_Jalan, 
    COUNT(i.Kode_Insiden) AS Total_Insiden
FROM `insiden` i
JOIN `ruas_jalan` r ON i.Kode_Ruas = r.Kode_Ruas
WHERE i.Waktu_Lapor >= '2026-10-01'
GROUP BY r.Nama_Ruas_Jalan;
