-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Sty 2022, 22:35
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
-- Struktura tabeli dla tabeli `komputery`
--

CREATE TABLE `komputery` (
  `id` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `token` text COLLATE utf8_polish_ci NOT NULL,
  `czaslogowania` text COLLATE utf8_polish_ci NOT NULL,
  `czaszmiana` text COLLATE utf8_polish_ci NOT NULL,
  `czasserwera` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ustawienia_1` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `komputery`
--

INSERT INTO `komputery` (`id`, `nazwa`, `token`, `czaslogowania`, `czaszmiana`, `czasserwera`, `ustawienia_1`) VALUES
(1, '0', 'XE361642109487LB22141221415882MF', '2022-01-13 22:33', '2022-01-13 22:33', '2022-01-13 22:31:27', 0),
(2, 'DESKTOP-2KPJSHU', 'FJ721642109601PH3290316028055GS', '2022-01-13 22:33', '2022-01-13 22:33', '2022-01-13 22:33:21', 0);

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
  `user` tinyint(1) NOT NULL,
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
(0, '0', '', '', '', '', 0, '', 0, 1, 0, '', '', '', '', 0, '', 0, 0, 0),
(1, '0', 'Dedal', '', 'statek', '', 2, '!@#', 0, 1, 0, '', '18.04.2045, 22:35:48', '18.04.2045, 22:35:46', 'Dedal jest tylko jeden', 0, '!@#', 1, 1, 1),
(2, '1', 'John', 'Spow', 'Kapitan', 'M', 1, '123', 0, 1, 0, 'DESKTOP-2KPJSHU', '18.04.2045, 23:00:31', '18.04.2045, 23:00:18', 'Witaj John Spow', 200, '123', 1, 1, 0),
(3, '2', 'Louise', 'Banks', 'I oficer', 'K', 1, '123', 0, 1, 0, 'DESKTOP-2KPJSHU', '18.04.2045, 22:21:26', '18.04.2045, 22:35:28', 'Witaj Louise Banks', 400, '123', 1, 1, 0),
(4, '3', 'Dave', 'Bowman', 'II oficer', 'M', 1, '123', 0, 1, 0, 'DESKTOP-2KPJSHU', '18.04.2045, 22:21:28', '18.04.2045, 22:35:31', 'Witaj Dave Bowman', 400, '123', 0, 1, 1),
(5, '4', 'Dwayne', 'Hicks', 'Nawigator', 'M', 1, '123', 0, 1, 0, '', '18.04.2045, 22:21:29', '18.04.2045, 22:38:32', 'Witaj Dwayne Hicks', 400, '123', 0, 1, 0),
(6, '5', 'Anna', 'Lee Dwell', 'Mechanik', 'K', 1, '123', 0, 1, 0, 'DESKTOP-2KPJSHU', '18.04.2045, 22:35:59', '18.04.2045, 22:35:29', 'Witaj Anna Lee Dwell', 400, '123', 0, 1, 0),
(7, '6', 'William', 'Weir', 'Naukowiec', 'M', 1, '123', 0, 1, 0, 'Komputer-Tomka', '18.04.2045, 22:21:32', '18.04.2045, 22:35:31', 'Witaj William Weir', 400, '123', 0, 1, 1),
(8, '7', 'Elizabeth', 'Halperin', 'Naukowiec', 'K', 1, '123', 0, 1, 0, 'DESKTOP-2KPJSHU', '18.04.2045, 22:21:36', '18.04.2045, 22:35:32', 'Witaj Elizabeth Halperin', 400, '123', 1, 1, 0),
(9, '8', 'Hannah', 'Stevens', 'Informatyk', 'K', 1, '!@#', 0, 1, 0, 'Komputer-Tomka', '18.04.2045, 22:40:31', '18.05.2045, 23:24:48', 'Witaj Hannah Stevens', 0, '!@#', 1, 1, 0),
(10, '9', 'Joshua', 'Kovalsky', '', 'M', 2, 'pomoc', 0, 1, 0, '', '18.04.2045, 22:40:16', '18.05.2045, 23:24:50', 'Witam Joshua', 0, 'pomoc', 0, 1, 1),
(11, '10', 'GRACE', ' ', 'SI', 'K', 2, '123', 0, 1, 0, '', '19.04.2045, 01:07:21', '19.04.2045, 01:07:32', 'Witam Grace', 0, '123', 0, 1, 1),
(12, '11', 'MG', ' ', 'MG', 'M', 2, '123', 0, 1, 0, '', '19.04.2045, 01:07:10', '19.04.2045, 01:07:29', 'Witam MG', 0, '123', 0, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `polecenia`
--

CREATE TABLE `polecenia` (
  `id` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `zalogowany` tinyint(1) NOT NULL,
  `wylogowany` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `polecenia`
--

INSERT INTO `polecenia` (`id`, `nazwa`, `zalogowany`, `wylogowany`) VALUES
(1, 'pomoc', 1, 1),
(2, 'zaloguj', 0, 1);

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
(2, '2022-01-09 00:36:25', 'Obecna data startu Dedala', '2043-03-11 12:01:02'),
(3, '', 'Oryginalna data startu akcji na Dedalu', '2045-04-18 21:35:00'),
(4, '', 'Obecna data akcji na Dedalu', '2022-01-13 22:33'),
(5, '2022-01-09 10:20:07', 'Stan larpa', 'START'),
(6, '2022-01-09 10:20:07', 'Data startu larpa ', '2022-01-09 10:20:07');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `komputery`
--
ALTER TABLE `komputery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `osoby`
--
ALTER TABLE `osoby`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `polecenia`
--
ALTER TABLE `polecenia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ustawienia`
--
ALTER TABLE `ustawienia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `komputery`
--
ALTER TABLE `komputery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT dla tabeli `polecenia`
--
ALTER TABLE `polecenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `ustawienia`
--
ALTER TABLE `ustawienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
