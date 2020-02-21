-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 21 feb 2020 om 13:08
-- Serverversie: 10.4.6-MariaDB
-- PHP-versie: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `relatie`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `adres`
--

CREATE TABLE `adres` (
  `id_adres` int(11) NOT NULL,
  `id_persoon` int(11) NOT NULL,
  `adresregel` varchar(50) NOT NULL,
  `nummer` int(11) NOT NULL,
  `nr_toevoeging` varchar(10) NOT NULL,
  `postcode` varchar(6) NOT NULL,
  `plaats` varchar(50) NOT NULL,
  `land` varchar(50) NOT NULL,
  `type_adres` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `adres`
--

INSERT INTO `adres` (`id_adres`, `id_persoon`, `adresregel`, `nummer`, `nr_toevoeging`, `postcode`, `plaats`, `land`, `type_adres`) VALUES
(1, 3, 'Stationsstraat', 1, 'C', '1000AA', 'Amsterdam', 'Nederland', 'f'),
(2, 23, 'Bakkerstraat', 47, 'B', '1000AB', 'Amstelveen-Oost', 'Nederland', ''),
(3, 3, 'Berkenstraat', 57, 'bis', '3500TR', 'Utrecht', 'Nederland', 'p'),
(4, 3, 'Duinzicht', 78, '', '2300RT', 'Noordwijk', 'Nederland', 'r'),
(5, 1, 'Vondellaan', 178, 'bis', '3524AD', 'Utrecht', 'Nederland', ''),
(6, 7, 'Albertina van Nassaustraat', 7, '', '5616BC', 'Eindhoven', 'Nederland', ''),
(8, 7, 'Mimosastraat', 177, '', '8023ZH', 'Zwolle', 'Nederland', ''),
(9, 22, 'Stationslaan', 12, '', '6789AA', 'Deventer', 'Nederland', ''),
(10, 0, 'Vondellaan', 178, '', '3524GH', 'Utrecht', 'Nederland', ''),
(11, 3, 'Vondellaan', 180, 'a', '3524GH', 'Utrecht', 'Nederland', 'p');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `factuur`
--

CREATE TABLE `factuur` (
  `id` int(11) NOT NULL,
  `factuurdatum` date NOT NULL,
  `factuurbedrag` decimal(10,2) NOT NULL,
  `id_persoon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `factuur`
--

INSERT INTO `factuur` (`id`, `factuurdatum`, `factuurbedrag`, `id_persoon`) VALUES
(1, '2014-03-16', '1000.00', 1),
(2, '2014-03-15', '1650.99', 5),
(3, '2015-10-08', '10000.00', 5),
(4, '2015-10-07', '10.00', 1),
(5, '2015-10-07', '100.00', 1),
(6, '2015-10-07', '100.00', 1),
(7, '2015-10-07', '12.00', 1),
(8, '2015-10-07', '12.00', 1),
(9, '2015-10-07', '12.00', 1),
(10, '2015-10-02', '16.00', 2),
(11, '2015-10-07', '12.00', 1),
(12, '2015-10-02', '16.00', 2),
(13, '2016-10-10', '876.00', 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `factuurregel`
--

CREATE TABLE `factuurregel` (
  `id_factuur` int(11) NOT NULL,
  `id_factuurregel` int(11) NOT NULL,
  `productomschrijving` varchar(45) NOT NULL,
  `aantal` varchar(45) NOT NULL,
  `prijs_per_stuk` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `persoon`
--

CREATE TABLE `persoon` (
  `id` int(11) NOT NULL,
  `voornaam` varchar(40) NOT NULL,
  `tussenvoegsel` varchar(20) DEFAULT NULL,
  `achternaam` varchar(50) NOT NULL,
  `geslacht` varchar(5) NOT NULL,
  `geboortedatum` date NOT NULL,
  `geboorteplaats` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `persoon`
--

INSERT INTO `persoon` (`id`, `voornaam`, `tussenvoegsel`, `achternaam`, `geslacht`, `geboortedatum`, `geboorteplaats`) VALUES
(3, 'Ireen', '', 'WÃ¼st', 'vrouw', '2014-03-03', 'Dalfsen'),
(4, 'Lotte', 'van', 'Beek', 'vrouw', '2014-03-02', 'Zwolle'),
(7, 'Peter', '', 'Bijker', 'man', '2010-02-02', 'Utrecht-Stad'),
(8, 'Harm', 'van der', 'Bent', 'man', '1996-02-17', 'Deventer'),
(22, 'Michiel', 'van', 'Stuijvenberg', 'man', '1970-01-01', 'Wilp'),
(24, 'Henk', 'de', 'Vries', 'man', '2003-12-30', 'Utrecht');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `adres`
--
ALTER TABLE `adres`
  ADD PRIMARY KEY (`id_adres`);

--
-- Indexen voor tabel `factuur`
--
ALTER TABLE `factuur`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `factuurregel`
--
ALTER TABLE `factuurregel`
  ADD PRIMARY KEY (`id_factuur`,`id_factuurregel`);

--
-- Indexen voor tabel `persoon`
--
ALTER TABLE `persoon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `adres`
--
ALTER TABLE `adres`
  MODIFY `id_adres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT voor een tabel `factuur`
--
ALTER TABLE `factuur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT voor een tabel `persoon`
--
ALTER TABLE `persoon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
