-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Gru 2021, 01:12
-- Wersja serwera: 10.1.21-MariaDB
-- Wersja PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `teta`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ustawienia`
--

CREATE TABLE `ustawienia` (
  `id` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL,
  `wartosc1` text COLLATE utf8_polish_ci NOT NULL,
  `wartosc2` text COLLATE utf8_polish_ci NOT NULL,
  `wartosc3` text COLLATE utf8_polish_ci NOT NULL,
  `wartosc4` text COLLATE utf8_polish_ci NOT NULL,
  `zalogowany` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `ustawienia`
--

INSERT INTO `ustawienia` (`id`, `nazwa`, `opis`, `wartosc1`, `wartosc2`, `wartosc3`, `wartosc4`, `zalogowany`) VALUES
(1, 'datastartudedala', '', '2043', '03', '11', '', ''),
(2, 'godzinastartudedala', '', '12', '00', '00', '', ''),
(3, 'datastartuakcji', '', '2045', '04', '18', '', ''),
(4, 'godzinastartuakcji', '', '21', '35', '26', '', ''),
(5, 'datarzeczywista', '', '2021', '04', '18', '', ''),
(6, 'godzinarzeczywista', '', '21', '35', '26', '', ''),
(7, 'datastartularpa', '', '2021', '04', '18', '', ''),
(8, 'godzinastartularpa', '', '21', '35', '26', '', '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `ustawienia`
--
ALTER TABLE `ustawienia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ustawienia_nazwa` (`nazwa`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `ustawienia`
--
ALTER TABLE `ustawienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
