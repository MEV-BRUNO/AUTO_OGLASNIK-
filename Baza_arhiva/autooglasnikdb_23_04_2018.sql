-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2018 at 06:44 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `autooglasnikdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `djelatnost`
--

CREATE TABLE IF NOT EXISTS `djelatnost` (
  `id_djelatnosti` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id_djelatnosti`),
  KEY `id_djelatnosti` (`id_djelatnosti`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE IF NOT EXISTS `korisnik` (
  `id_korisnik` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ime_prezime` text CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf32 COLLATE utf32_croatian_ci NOT NULL,
  `lozinka` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `licenca` date NOT NULL,
  `vrsta` int(11) NOT NULL,
  `id_poduzece` int(11) NOT NULL,
  `aktivan` tinyint(4) NOT NULL,
  `aktiv_link` tinyint(4) NOT NULL,
  KEY `id_korisnik` (`id_korisnik`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oglas`
--

CREATE TABLE IF NOT EXISTS `oglas` (
  `id_oglas` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `datum` date NOT NULL,
  `id_poduzece` int(11) NOT NULL,
  `naslov` text CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `podnaslov` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `opis` text CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `slika` text CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `vip` tinyint(1) NOT NULL,
  `URL` text CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `dokument` varchar(60) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `vidljivost` tinyint(1) NOT NULL,
  `datum_trajanja` date NOT NULL,
  KEY `id_oglas` (`id_oglas`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `poduzece`
--

CREATE TABLE IF NOT EXISTS `poduzece` (
  `id_poduzece` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `adresa` text CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `grad` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `drzava` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `tel` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `mob` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `URL` text CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `kontakt_osoba` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `geo_sirina` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `geo_duzina` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `opis` text CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `vip` tinyint(1) NOT NULL,
  `vip_licenca` date NOT NULL,
  KEY `id_poduzece` (`id_poduzece`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `poduzece_djelatnost`
--

CREATE TABLE IF NOT EXISTS `poduzece_djelatnost` (
  `id_poduzece` int(11) NOT NULL,
  `id_djelatnost` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
