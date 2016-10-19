# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 128.199.93.68 (MySQL 5.5.47-0ubuntu0.14.04.1)
# Database: perusahaan_db
# Generation Time: 2016-10-18 15:27:14 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table kelamin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `kelamin`;

CREATE TABLE `kelamin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `kelamin` WRITE;
/*!40000 ALTER TABLE `kelamin` DISABLE KEYS */;

INSERT INTO `kelamin` (`id`, `nama`)
VALUES
	(1,'Laki Laki'),
	(2,'Perempuan');

/*!40000 ALTER TABLE `kelamin` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table kota
# ------------------------------------------------------------

DROP TABLE IF EXISTS `kota`;

CREATE TABLE `kota` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `kota` WRITE;
/*!40000 ALTER TABLE `kota` DISABLE KEYS */;

INSERT INTO `kota` (`id`, `nama`)
VALUES
	(1,'Malang'),
	(2,'Nganjuk'),
	(3,'Blitar'),
	(4,'Tulungagung'),
	(5,'Surabaya');

/*!40000 ALTER TABLE `kota` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pegawai
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pegawai`;

CREATE TABLE `pegawai` (
  `id_pegawai` varchar(255) NOT NULL DEFAULT '',
  `nama` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `kelamin` int(1) DEFAULT NULL,
  `id_posisi` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `pegawai` WRITE;
/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `no_telp`, `kota`, `kelamin`, `id_posisi`, `status`)
VALUES
	('48c8dddcb8c6a25d635e8579388ed328','Yuri Pratama','081231549154','1',1,'4',1),
	('f80862cf912899cd564338bb0ec1ba02','Edi Santoso','081234567890','1',1,'1',1);

/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posisi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posisi`;

CREATE TABLE `posisi` (
  `id_posisi` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `posisi` WRITE;
/*!40000 ALTER TABLE `posisi` DISABLE KEYS */;

INSERT INTO `posisi` (`id_posisi`, `nama`)
VALUES
	('1','IT'),
	('2','HRD'),
	('3','Keuangan'),
	('4','Produk'),
	('5','Marketing');

/*!40000 ALTER TABLE `posisi` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
