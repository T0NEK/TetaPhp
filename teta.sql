-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Sty 2022, 00:01
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
-- Struktura tabeli dla tabeli `osoby`
--

CREATE TABLE `osoby` (
  `id` int(11) NOT NULL,
  `kolejnosc` decimal(10,0) NOT NULL,
  `imie` text COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` text COLLATE utf8_polish_ci NOT NULL,
  `funkcja` text COLLATE utf8_polish_ci NOT NULL,
  `rodzaj` tinytext COLLATE utf8_polish_ci NOT NULL,
  `user` tinytext COLLATE utf8_polish_ci NOT NULL,
  `hasloorg` text COLLATE utf8_polish_ci NOT NULL,
  `zalogowanyorg` tinyint(1) NOT NULL,
  `blokadaorg` tinyint(1) NOT NULL,
  `hannahorg` tinyint(1) NOT NULL,
  `uzytkownik` text COLLATE utf8_polish_ci NOT NULL,
  `czaslogowania` text COLLATE utf8_polish_ci NOT NULL,
  `czaswylogowania` text COLLATE utf8_polish_ci NOT NULL,
  `odpowiedz` text COLLATE utf8_polish_ci NOT NULL,
  `reakcja` int(11) NOT NULL,
  `haslonew` text COLLATE utf8_polish_ci NOT NULL,
  `zalogowanynew` tinyint(1) NOT NULL,
  `blokadanew` tinyint(1) NOT NULL,
  `hannahnew` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `osoby`
--

INSERT INTO `osoby` (`id`, `kolejnosc`, `imie`, `nazwisko`, `funkcja`, `rodzaj`, `user`, `hasloorg`, `zalogowanyorg`, `blokadaorg`, `hannahorg`, `uzytkownik`, `czaslogowania`, `czaswylogowania`, `odpowiedz`, `reakcja`, `haslonew`, `zalogowanynew`, `blokadanew`, `hannahnew`) VALUES
(0, '0', 'Dedal', '', '', '', 'u', '!@#', 0, 0, 1, '', '18.04.2045, 22:35:48', '18.04.2045, 22:35:46', 'Dedal jest tylko jeden', 0, '!@#', 1, 0, 0),
(1, '1', 'John', 'Spow', 'Kapitan', 'M', 'u', '123', 0, 0, 1, 'DESKTOP-2KPJSHU', '18.04.2045, 23:00:31', '18.04.2045, 23:00:18', 'Witaj John Spow', 200, '123', 1, 0, 1),
(2, '2', 'Louise', 'Banks', 'I oficer', 'K', 'u', '123', 0, 0, 1, 'DESKTOP-2KPJSHU', '18.04.2045, 22:21:26', '18.04.2045, 22:35:28', 'Witaj Louise Banks', 400, '123', 0, 0, 1),
(3, '3', 'Dave', 'Bowman', 'II oficer', 'M', 'u', '123', 0, 0, 1, 'DESKTOP-2KPJSHU', '18.04.2045, 22:21:28', '18.04.2045, 22:35:31', 'Witaj Dave Bowman', 400, '123', 1, 0, 1),
(4, '4', 'Dwayne', 'Hicks', 'Nawigator', 'M', 'u', '123', 0, 0, 1, '', '18.04.2045, 22:21:29', '18.04.2045, 22:38:32', 'Witaj Dwayne Hicks', 400, '123', 0, 1, 0),
(5, '5', 'Anna', 'Lee Dwell', 'Mechanik', 'K', 'u', '123', 0, 0, 1, 'DESKTOP-2KPJSHU', '18.04.2045, 22:35:59', '18.04.2045, 22:35:29', 'Witaj Anna Lee Dwell', 400, '123', 1, 0, 1),
(6, '6', 'William', 'Weir', 'Naukowiec', 'M', 'u', '123', 0, 0, 1, 'Komputer-Tomka', '18.04.2045, 22:21:32', '18.04.2045, 22:35:31', 'Witaj William Weir', 400, '123', 0, 0, 0),
(7, '7', 'Elizabeth', 'Halperin', 'Naukowiec', 'K', 'u', '123', 0, 0, 1, 'DESKTOP-2KPJSHU', '18.04.2045, 22:21:36', '18.04.2045, 22:35:32', 'Witaj Elizabeth Halperin', 400, '123', 0, 0, 0),
(8, '8', 'Hannah', 'Stevens', 'Informatyk', 'K', 'u', '!@#', 0, 0, 1, 'Komputer-Tomka', '18.04.2045, 22:40:31', '18.05.2045, 23:24:48', 'Witaj Hannah Stevens', 0, '!@#', 0, 0, 0),
(9, '9', 'Joshua', 'Kovalsky', '', 'M', 'ud', 'pomoc', 0, 0, 1, '', '18.04.2045, 22:40:16', '18.05.2045, 23:24:50', 'Witam Joshua', 0, 'pomoc', 0, 1, 0),
(10, '10', 'GRACE', ' ', 'SI', 'K', 'ud', '123', 0, 0, 1, '', '19.04.2045, 01:07:21', '19.04.2045, 01:07:32', 'Witam Grace', 0, '123', 0, 1, 0),
(11, '11', 'MG', ' ', 'MG', 'M', 'tmg', '123', 0, 0, 1, '', '19.04.2045, 01:07:10', '19.04.2045, 01:07:29', 'Witam MG', 0, '123', 0, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ustawienia`
--

CREATE TABLE `ustawienia` (
  `id` int(11) NOT NULL,
  `zmiana` text COLLATE utf8_polish_ci NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `wartosc` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `ustawienia`
--

INSERT INTO `ustawienia` (`id`, `zmiana`, `nazwa`, `wartosc`) VALUES
(1, '', 'Oryginalna data startu Dedala', '2043-03-11 12:01:02'),
(2, '2022-01-06 14:35:37', 'Obecna data startu Dedala', '2022-01-01 12:00:00'),
(3, '', 'Oryginalna data startu akcji na Dedalu', '2045-04-18 21:35:00'),
(4, '2022-01-06 14:35:30', 'Obecna data akcji na Dedalu', '2022-01-06 12:00:00'),
(5, '2022-01-06 14:35:07', 'Stan larpa', 'START'),
(6, '2022-01-06 14:35:07', 'Data startu larpa ', '2022-01-06 14:35:07');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `osoby`
--
ALTER TABLE `osoby`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ustawienia`
--
ALTER TABLE `ustawienia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT dla tabeli `ustawienia`
--
ALTER TABLE `ustawienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
