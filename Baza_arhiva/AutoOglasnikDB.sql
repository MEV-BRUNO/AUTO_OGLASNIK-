/*
SQLyog Community v12.4.3 (64 bit)
MySQL - 5.7.14 : Database - autooglasnikdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`autooglasnikdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `autooglasnikdb`;

/*Table structure for table `djelatnost` */

DROP TABLE IF EXISTS `djelatnost`;

CREATE TABLE `djelatnost` (
  `id_djelatnosti` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  KEY `id_djelatnosti` (`id_djelatnosti`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `djelatnost` */

/*Table structure for table `korisnik` */

DROP TABLE IF EXISTS `korisnik`;

CREATE TABLE `korisnik` (
  `id_korisnik` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ime+prezime` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `lozinka` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `licenca(datum trajanja pristupa)` date DEFAULT NULL,
  `vrsta(SA/Korisnik)` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `id_poduzece` int(11) DEFAULT NULL,
  `aktivan(da/ne)` tinyint(1) DEFAULT NULL,
  `aktiv_link` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  KEY `id_korisnik` (`id_korisnik`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `korisnik` */

/*Table structure for table `oglas` */

DROP TABLE IF EXISTS `oglas`;

CREATE TABLE `oglas` (
  `id_oglas` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `datum` date DEFAULT NULL,
  `id_poduzece` int(11) DEFAULT NULL,
  `naslov` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `podnaslov` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `opis` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `slika(path)` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `vip(da/ne)` tinyint(1) DEFAULT NULL,
  `URL` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `dokument(path)` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `vidljivost(da/ne)` tinyint(1) DEFAULT NULL,
  `datum_trajanja` date DEFAULT NULL,
  KEY `id_oglas` (`id_oglas`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `oglas` */

/*Table structure for table `poduzece` */

DROP TABLE IF EXISTS `poduzece`;

CREATE TABLE `poduzece` (
  `id_poduzece` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `adresa` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `grad` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `drzava` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `tel` int(10) DEFAULT NULL,
  `mob` int(10) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `URL` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `kontakt_osoba` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `geo_sirina` decimal(10,0) DEFAULT NULL,
  `geo_duzina` decimal(10,0) DEFAULT NULL,
  `opis` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `vip(da/ne)` tinyint(1) DEFAULT NULL,
  `vip_licenca` tinyint(1) DEFAULT NULL,
  KEY `id_poduzece` (`id_poduzece`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `poduzece` */

/*Table structure for table `poduzece_djelatnost` */

DROP TABLE IF EXISTS `poduzece_djelatnost`;

CREATE TABLE `poduzece_djelatnost` (
  `id_poduzece` int(11) DEFAULT NULL,
  `id_djelatnost` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `poduzece_djelatnost` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
