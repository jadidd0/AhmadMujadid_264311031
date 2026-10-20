-- 1. [CREATE] Insert 3 baris data dummy ke masing-masing tabel (Total 9 baris data)
INSERT INTO `ruas_jalan` (`Kode_Ruas`, `Nama_Ruas_Jalan`, `Kondisi_Fisik`, `Faktor_Pemicu`, `Potensi_Bahaya`) VALUES
('RJ001', 'Jl. Ahmad Yani', 'Berlubang', 'Hujan Deras', 'Kecelakaan ringan'),
('RJ002', 'Jl. Sudirman', 'Baik', 'Penerangan Kurang', 'Macet total'),
('RJ003', 'Jl. Pahlawan', 'Rusak Berat', 'Drainase Buruk', 'Genangan Air');

INSERT INTO `instansi` (`Kode_Instansi`, `Nama_Instansi`) VALUES
('INS01', 'Satlantas Polres Madiun'),
('INS02', 'Dinas Perhubungan'),
('INS03', 'Dinas Pekerjaan Umum');

INSERT INTO `insiden` (`Kode_Insiden`, `Jenis_Insiden`, `Waktu_Lapor`, `Kode_Ruas`, `Kode_Instansi`) VALUES
('INS-001', 'Kecelakaan Tunggal', '2026-10-15 08:30:00', 'RJ001', 'INS01'),
('INS-002', 'Pohon Tumbang', '2026-10-16 14:15:00', 'RJ002', 'INS02'),
('INS-003', 'Jalan Ambles', '2026-10-17 19:00:00', 'RJ001', 'INS03');

-- 2. [READ] Tampilkan seluruh isi salah satu Tabel Induk
SELECT * FROM `ruas_jalan`;

-- 3. [UPDATE] Ubah satu nilai data pada Tabel Transaksi berdasarkan Primary Key
UPDATE `insiden` 
SET `Jenis_Insiden` = 'Kecelakaan Beruntun' 
WHERE `Kode_Insiden` = 'INS-001';

-- 4. [DELETE] Hapus salah satu baris data dummy pada Tabel Transaksi
DELETE FROM `insiden` 
WHERE `Kode_Insiden` = 'INS-003';
