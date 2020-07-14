-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.30 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for rumahsakit
CREATE DATABASE IF NOT EXISTS `rumahsakit` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rumahsakit`;


-- Dumping structure for table rumahsakit.dokter
CREATE TABLE IF NOT EXISTS `dokter` (
  `kd_dokter` varchar(10) NOT NULL,
  `nama_dokter` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  PRIMARY KEY (`kd_dokter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rumahsakit.dokter: ~0 rows (approximately)
/*!40000 ALTER TABLE `dokter` DISABLE KEYS */;
/*!40000 ALTER TABLE `dokter` ENABLE KEYS */;


-- Dumping structure for table rumahsakit.pasien
CREATE TABLE IF NOT EXISTS `pasien` (
  `kd_pasien` varchar(10) NOT NULL,
  `nama_pasien` varchar(20) NOT NULL,
  `umur` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  PRIMARY KEY (`kd_pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rumahsakit.pasien: ~0 rows (approximately)
/*!40000 ALTER TABLE `pasien` DISABLE KEYS */;
/*!40000 ALTER TABLE `pasien` ENABLE KEYS */;


-- Dumping structure for table rumahsakit.pemeriksaan
CREATE TABLE IF NOT EXISTS `pemeriksaan` (
  `kd_pemeriksaan` varchar(10) NOT NULL,
  `kd_dokter` varchar(10) NOT NULL,
  `nama_dokter` varchar(20) NOT NULL,
  `kd_pasien` varchar(10) NOT NULL,
  `nama_pasien` varchar(20) NOT NULL,
  `diagnosa` varchar(100) NOT NULL,
  `tgl_pemeriksaan` varchar(10) NOT NULL,
  `hasil` varchar(20) NOT NULL,
  PRIMARY KEY (`kd_pemeriksaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rumahsakit.pemeriksaan: ~0 rows (approximately)
/*!40000 ALTER TABLE `pemeriksaan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pemeriksaan` ENABLE KEYS */;


-- Dumping structure for table rumahsakit.perawat
CREATE TABLE IF NOT EXISTS `perawat` (
  `kd_perawat` varchar(10) NOT NULL,
  `nama_perawat` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  PRIMARY KEY (`kd_perawat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rumahsakit.perawat: ~0 rows (approximately)
/*!40000 ALTER TABLE `perawat` DISABLE KEYS */;
/*!40000 ALTER TABLE `perawat` ENABLE KEYS */;


-- Dumping structure for table rumahsakit.rawat_inap
CREATE TABLE IF NOT EXISTS `rawat_inap` (
  `kd_inap` varchar(10) NOT NULL,
  `kd_ruangan` varchar(10) NOT NULL,
  `nama_ruangan` varchar(20) NOT NULL,
  `kd_dokter` varchar(10) NOT NULL,
  `nama_dokter` varchar(20) NOT NULL,
  `kd_pasien` varchar(10) NOT NULL,
  `nama_pasien` varchar(20) NOT NULL,
  `kd_perawat` varchar(10) NOT NULL,
  `nama_perawat` varchar(20) NOT NULL,
  `tgl_inap` varchar(10) NOT NULL,
  `tgl_keluar` varchar(10) NOT NULL,
  PRIMARY KEY (`kd_inap`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rumahsakit.rawat_inap: ~0 rows (approximately)
/*!40000 ALTER TABLE `rawat_inap` DISABLE KEYS */;
/*!40000 ALTER TABLE `rawat_inap` ENABLE KEYS */;


-- Dumping structure for table rumahsakit.rawat_jalan
CREATE TABLE IF NOT EXISTS `rawat_jalan` (
  `kd_jalan` varchar(10) NOT NULL,
  `kd_dokter` varchar(10) NOT NULL,
  `nama_dokter` varchar(20) NOT NULL,
  `kd_pasien` varchar(10) NOT NULL,
  `nama_pasien` varchar(20) NOT NULL,
  `kd_resep` varchar(10) NOT NULL,
  `resep_obat` varchar(100) NOT NULL,
  `tgl_periksa` varchar(10) NOT NULL,
  PRIMARY KEY (`kd_jalan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rumahsakit.rawat_jalan: ~0 rows (approximately)
/*!40000 ALTER TABLE `rawat_jalan` DISABLE KEYS */;
/*!40000 ALTER TABLE `rawat_jalan` ENABLE KEYS */;


-- Dumping structure for table rumahsakit.resep
CREATE TABLE IF NOT EXISTS `resep` (
  `kd_resep` varchar(10) NOT NULL,
  `resep_obat` varchar(100) NOT NULL,
  PRIMARY KEY (`kd_resep`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rumahsakit.resep: ~0 rows (approximately)
/*!40000 ALTER TABLE `resep` DISABLE KEYS */;
/*!40000 ALTER TABLE `resep` ENABLE KEYS */;


-- Dumping structure for table rumahsakit.ruangan
CREATE TABLE IF NOT EXISTS `ruangan` (
  `kd_ruangan` varchar(10) NOT NULL,
  `nama_ruangan` varchar(20) NOT NULL,
  PRIMARY KEY (`kd_ruangan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rumahsakit.ruangan: ~0 rows (approximately)
/*!40000 ALTER TABLE `ruangan` DISABLE KEYS */;
/*!40000 ALTER TABLE `ruangan` ENABLE KEYS */;


-- Dumping structure for table rumahsakit.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `namauser` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rumahsakit.user: ~2 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `nama`, `namauser`, `password`) VALUES
	('1', 'fery', 'fery', 'fery'),
	('2', 'petrick', 'petrick', 'petrick');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
