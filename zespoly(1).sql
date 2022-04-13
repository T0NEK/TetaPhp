-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Kwi 2022, 20:40
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
-- Struktura tabeli dla tabeli `zespoly`
--

CREATE TABLE `zespoly` (
  `id` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `symbol` varchar(25) COLLATE utf8_polish_ci NOT NULL,
  `moduly` int(11) NOT NULL,
  `ostatni` int(11) NOT NULL,
  `przedawnienie` int(11) NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL,
  `czaswykonania` int(11) NOT NULL,
  `czasreset` int(11) NOT NULL,
  `czasnaprawa` int(11) NOT NULL,
  `elementy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `zespoly`
--

INSERT INTO `zespoly` (`id`, `nazwa`, `symbol`, `moduly`, `ostatni`, `przedawnienie`, `opis`, `czaswykonania`, `czasreset`, `czasnaprawa`, `elementy`) VALUES
(1, 'Pomieszczenie laboratorium', 'PL', 3, 187, 7, '', 6, 2, 2, 20),
(2, 'Pomieszczenie oranżerii', 'PO', 3, 156, 7, '', 6, 2, 2, 10),
(3, 'Pomieszczenie medyczne', 'PM', 3, 191, 7, '', 10, 2, 2, 7),
(4, 'Urządzenia medyczne', 'UM', 3, 128, 7, '', 2, 2, 2, 15),
(5, 'Magazyn leków', 'ML', 3, 40, 7, '', 7, 2, 2, 8),
(6, 'Zespół upraw', 'ZU', 3, 195, 7, '', 22, 5, 2, 10),
(7, 'Śluza Główna', 'SD', 2, 0, 7, 'Główna śluza.', 11, 5, 2, 10),
(9, 'Śluza Dziobowa', 'ST', 2, 0, 7, 'Główna techniczna', 11, 5, 2, 10),
(10, 'Pomieszczenie Dowodzenia', 'PD', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(11, 'Urządzenia Nawigacyjne', 'UN', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(13, 'Przyrządy Nawigacyjne', 'PN', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(14, 'Urządzenia Wykonawcze Sterowania', 'UWS', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(15, 'Przyrządy Sterowania', 'PS', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(16, 'Autopilot', 'AP', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(23, 'Przyrządy Nawigacyjne - awaryjne', 'PNa', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(24, 'Urządzenia Wykonawcze Sterowania - awaryjne', 'UWSa', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(25, 'Przyrządy Sterowania - awaryjne', 'PSa', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(27, 'Kapsuły Ewakuacyjne', 'KP', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(29, 'Anteny Nadawcze', 'AN', 18, 201, 7, '', 11, 16, 32, 10),
(30, 'Anteny Odbiorcze', 'AO', 18, 0, 7, '', 11, 5, 2, 10),
(31, 'Moduły Niskich Częstotliwości', 'MNCZ', 18, 0, 7, '', 11, 5, 2, 10),
(32, 'Moduły Średnich Częstotliwości', 'MSCZ', 18, 0, 7, '', 11, 5, 2, 10),
(33, 'Moduły Wysokich Częstotliwości', 'MWCZ', 18, 0, 7, '', 11, 5, 2, 10),
(34, 'Satelita 1', 'SA1', 18, 0, 7, '', 10, 5, 30, 10),
(35, 'Satelita 2', 'SA2', 18, 196, 7, '', 10, 5, 40, 10),
(36, 'Skafander John Spow', 'SJS', 19, 0, 7, '', 10, 5, 40, 10),
(37, 'Skafander Peng Yaping', 'SPY', 19, 0, 7, '', 10, 5, 40, 10),
(38, 'Skafander William Weir', 'SWW', 19, 0, 7, '', 10, 5, 40, 10),
(39, 'Skafander Manu Punjabi', 'SMP', 19, 0, 7, '', 10, 5, 40, 10),
(44, 'Skafander Zeki Demir', 'SZD', 19, 0, 7, '', 10, 5, 40, 10),
(45, 'Skafander Akito Yamazaki', 'SAY', 19, 0, 7, '', 10, 5, 40, 10),
(46, 'Skafander Da Yang', 'SDY', 19, 0, 7, '', 10, 5, 40, 10),
(47, 'Skafander Han Stevens', 'SHS', 19, 0, 7, '', 10, 5, 40, 10),
(48, 'Skafander Rajeh Amit', 'SRA', 19, 0, 7, '', 10, 5, 40, 10);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `zespoly`
--
ALTER TABLE `zespoly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `symbol` (`symbol`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `zespoly`
--
ALTER TABLE `zespoly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
