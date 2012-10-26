-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 23 Oct 2012 om 08:35
-- Serverversie: 5.5.27
-- PHP-Versie: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tijdsregistratie`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Project`
--

CREATE TABLE IF NOT EXISTS `Project` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WerkgeverID` int(11) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `Uren_Gepresteerd` double NOT NULL,
  `Uurloon` time NOT NULL,
  `ProjectLoon` double NOT NULL,
  `ProjectNaam` varchar(255) NOT NULL,
  `ProjectBeschrijving` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Gegevens worden uitgevoerd voor tabel `bijeenkomst`
--


-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `clientadres`
--

CREATE TABLE IF NOT EXISTS `Client` (
  `ClientID` int(11) NOT NULL AUTO_INCREMENT,
  `Straat` varchar(100) NOT NULL,
  `huisnr` int(11) NOT NULL,
  `postcode` int(11) NOT NULL,
  `gemeente` varchar(30) NOT NULL,
  `land` varchar(30) NOT NULL,
  `E_Mail` varchar(100) NOT NULL,
  `GSM_Nummer` varchar(50) NOT NULL,
  `fax` text NOT NULL,
  `telefoon` varchar(50) NOT NULL,
  `Naam` varchar(30) NOT NULL,
  `Voornaam` varchar(50) NOT NULL,
  PRIMARY KEY (`ClientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


--
-- Gegevens worden uitgevoerd voor tabel `clientnaam`
--


-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `clienturen`
--

CREATE TABLE IF NOT EXISTS `Uren` (
  `ClientUrenID` int(11) NOT NULL AUTO_INCREMENT,
  `ClientID` int(11) NOT NULL,
  `BeginDatum` datetime NOT NULL,
  `EindDatum` datetime NOT NULL,
  PRIMARY KEY (`ClientUrenID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

