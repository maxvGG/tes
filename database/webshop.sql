-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 21 feb 2020 om 12:11
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
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(1) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(2, 'admin', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `costumer`
--

CREATE TABLE `costumer` (
  `id` int(10) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `middleName` varchar(10) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `street` varchar(30) NOT NULL,
  `houseNumber` int(5) NOT NULL,
  `houseNumber_addon` varchar(2) NOT NULL,
  `zipCode` varchar(7) NOT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `emailadress` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `newsletter_subscription` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `costumer`
--

INSERT INTO `costumer` (`id`, `gender`, `firstName`, `middleName`, `lastName`, `street`, `houseNumber`, `houseNumber_addon`, `zipCode`, `city`, `country`, `phone`, `emailadress`, `password`, `newsletter_subscription`) VALUES
(1, 'm', 'Max', 'robert hub', 'van Gorp', 'ingenhouszstraat', 53, '', '3514 HV', 'Utrecht', 'Netherlands', '0648055428', 'u534253@student.glu.nl', 'fa157bbd31936c748b6ba0a9b09062a0', 1),
(2, 'm', 'Robin', 'Nelson nin', 'van Gorp', 'ingenhouszstraat', 53, '', '3514 HV', 'Utrecht', 'Netherlands', '0612545234', 'robinvangorp1001@gmail.nl', '2a76aa241c14fcc207d4207471f6118b', 0),
(3, 'f', 'Annemiek', 'wilhelmina', 'van Gorp', 'ingenhouszstraat', 53, '', '3514 HV', 'Utrecht', 'Netherlands', '0666632145', 'annemiek@gmail.nl', 'cd613d8de083e55d5d95e607074d6d52', 1),
(4, 'm', 'Jonatas', '', 'de Lemos', 'willembarentszstraat', 80, '', '3572PN', 'Utrecht', 'Netherlands', '0666632145', 'jonatas@gmail.nl', '3f83164cab55dccb72d71c7d8fcbef60', 1),
(5, 'm', 'Hubert', '', 'Roza', 'willembarendsztraat', 80, '', '3572 PN', 'Utrecht', 'Netherlands', '064801234', 'hubertroza@ziggo.nl', 'c79c6f489015e0bc97f892e357db7156', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `firstName` varchar(12) NOT NULL,
  `middleName` varchar(10) NOT NULL,
  `lastName` varchar(15) NOT NULL,
  `birthDate` date NOT NULL,
  `emailadres` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `firstName`, `middleName`, `lastName`, `birthDate`, `emailadres`, `password`) VALUES
(3, 'max', 'van', 'gorp', '2003-07-10', 'u534253@student.glu.', 'f336a9c660d027e1ef9ab4085480be11'),
(4, 'jan', 'van', 'os', '2020-01-01', 'jos@glu.nl', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexen voor tabel `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emailadress` (`emailadress`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emailadres` (`emailadres`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `costumer`
--
ALTER TABLE `costumer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
