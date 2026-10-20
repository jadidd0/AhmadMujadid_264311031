-- 1. Tabel Induk 1: ruas_jalan
CREATE TABLE `ruas_jalan` (
  `Kode_Ruas` varchar(50) NOT NULL,
  `Nama_Ruas_Jalan` varchar(100) NOT NULL,
  `Kondisi_Fisik` varchar(50) DEFAULT NULL,
  `Faktor_Pemicu` varchar(100) DEFAULT NULL,
  `Potensi_Bahaya` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Kode_Ruas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. Tabel Induk 2: instansi
CREATE TABLE `instansi` (
  `Kode_Instansi` varchar(50) NOT NULL,
  `Nama_Instansi` varchar(100) NOT NULL,
  PRIMARY KEY (`Kode_Instansi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. Tabel Transaksi : insiden
CREATE TABLE `insiden` (
  `Kode_Insiden` varchar(50) NOT NULL,
  `Jenis_Insiden` varchar(100) NOT NULL,
  `Waktu_Lapor` datetime NOT NULL,
  `Kode_Ruas` varchar(50) NOT NULL,
  `Kode_Instansi` varchar(50) NOT NULL,
  PRIMARY KEY (`Kode_Insiden`),
  CONSTRAINT `fk_insiden_ruas` FOREIGN KEY (`Kode_Ruas`) REFERENCES `ruas_jalan` (`Kode_Ruas`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_insiden_instansi` FOREIGN KEY (`Kode_Instansi`) REFERENCES `instansi` (`Kode_Instansi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
