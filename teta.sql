-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Lut 2022, 22:23
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
-- Struktura tabeli dla tabeli `dzialania`
--

CREATE TABLE `dzialania` (
  `id` int(11) NOT NULL,
  `polecenia` text COLLATE utf8_polish_ci NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `czas` text COLLATE utf8_polish_ci NOT NULL,
  `dzialanie` text COLLATE utf8_polish_ci NOT NULL,
  `prefix` text COLLATE utf8_polish_ci NOT NULL,
  `komunikat` text COLLATE utf8_polish_ci NOT NULL,
  `sufix` text COLLATE utf8_polish_ci NOT NULL,
  `nastepnyTrue` text COLLATE utf8_polish_ci NOT NULL,
  `nastepnyFalse` text COLLATE utf8_polish_ci NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `dzialania`
--

INSERT INTO `dzialania` (`id`, `polecenia`, `nazwa`, `czas`, `dzialanie`, `prefix`, `komunikat`, `sufix`, `nastepnyTrue`, `nastepnyFalse`, `opis`) VALUES
(1, 'pomoc', 'pomoc_1', '500', 'komunikat', '', 'dostępne polecenia:', '', 'pomoc_2', 'pomoc_2', ''),
(2, 'pomoc', 'pomoc_2', '250', 'linie', '', 'polecenia', '', 'pomoc_3', 'pomoc_3', 'wyświetlenie listy poleceń'),
(3, 'pomoc', 'pomoc_3', '500', 'komunikat', '', 'koniec dostępnych poleceń', '', 'end', 'end', ''),
(4, 'zaloguj', 'zaloguj_1', '500', 'komunikat', '', 'procedura: logowanie do terminala', '', 'zaloguj_2', 'zaloguj_2', ''),
(5, 'zaloguj', 'zaloguj_2', '500', 'dane', '', 'podaj login ?', '', 'zaloguj_3', 'zaloguj_3', ''),
(6, 'zaloguj', 'zaloguj_3', '500', 'zapiszdane', '', 'login', '', 'zaloguj_4', 'zaloguj_4', ''),
(7, 'zaloguj', 'zaloguj_4', '500', 'password', '', 'on', '', 'zaloguj_5', 'zaloguj_5', 'załączenie ***'),
(8, 'zaloguj', 'zaloguj_5', '500', 'dane', '', 'podaj hasło ?', '', 'zaloguj_6', 'zaloguj_6', ''),
(9, 'zaloguj', 'zaloguj_6', '500', 'dodajdane', '', 'hasło', '', 'zaloguj_7', 'zaloguj_7', ''),
(10, 'zaloguj', 'zaloguj_7', '500', 'password', '', 'off', '', 'zaloguj_8', 'zaloguj_8', 'wyłączenie ***'),
(11, 'zaloguj', 'zaloguj_8', '500', 'komunikat', '', 'loguję', '', 'zaloguj_9', 'zaloguj_9', ''),
(12, 'zaloguj', 'zaloguj_9', '500', 'logowanie', '', '', '', 'end', 'end', ''),
(13, 'wyloguj', 'wyloguj_1', '500', 'komunikat', '', 'procedura: wylogowanie z terminala', '', 'wyloguj_2', 'wyloguj_2', ''),
(14, 'wyloguj', 'wyloguj_8', '500', 'wylogowanie', '', '', '', 'end', 'end', ''),
(15, 'moduły', 'moduly_1', '500', 'komunikat', '', 'wczytuję dostępne moduły', '', 'moduly_2', 'moduly_2', ''),
(16, 'moduły', 'moduly_2', '250', 'getset', '', 'wczytaj', 'moduly', 'moduly_4', 'moduly_3', 'wczytuje moduły'),
(17, 'moduły', 'moduly_4', '500', 'linie', '', 'moduly', '', 'moduly_5', 'moduly_5', 'wyswietla listę modułów'),
(28, 'pomoc cała', 'pomoc_cala_1', '500', 'komunikat', '', 'wszystkie dostępne polecenia:', '', 'pomoc_cala_2', 'pomoc_cala_2', ''),
(29, 'pomoc cała', 'pomoc_cala_2', '250', 'linie', '', 'polecenia_all', '', 'pomoc_cala_3', 'pomoc_cala_3', 'wyświetlenie listy poleceń'),
(30, 'pomoc cała', 'pomoc_cala_3', '500', 'komunikat', '', 'koniec dostępnych poleceń', '', 'end', 'end', ''),
(31, 'pomoc', 'pomoc_0', '1000', 'komunikat', '', 'wykonuję: [ pomoc ]', '', 'pomoc_1', 'pomoc_1', 'alternatywa'),
(32, 'moduły', 'moduly_0', '500', 'komunikat', '', 'wykonuję: [ moduły ]', '', 'moduly_1', 'moduly_1', 'alternatywa'),
(34, 'pomoc cała', 'pomoc_cala_0', '1000', 'komunikat', '', 'wykonuję: [ pomoc cała ]', '', 'pomoc_cala_1', 'pomoc_cala_1', 'alternatywa'),
(35, 'zaloguj', 'zaloguj_0', '1000', 'komunikat', '', 'wykonuję: [ zaloguj ]', '', 'zaloguj_1', 'zaloguj_1', 'alternatywa'),
(36, 'wyloguj', 'wyloguj_0', '1000', 'komunikat', '', 'wykonuję: [ wyloguj ]', '', 'wyloguj_1', 'wyloguj_1', 'alternatywa'),
(37, 'notatki', 'notatki_1', '500', 'komunikat', '', 'wczytuję dostępne notatki', '', 'notatki_2', 'notatki_2', ''),
(38, 'notatki', 'notatki_2', '500', 'getset', '', 'wczytaj', 'notatki', 'notatki_4', 'notatki_3', 'wczytuje notatki'),
(40, 'notatki', 'notatki_4', '500', 'linie', '', 'notatki', '', 'notatki_5', 'notatki_5', 'wyświetla listę tytułów notatek'),
(42, 'notatki', 'notatki_0', '500', 'komunikat', '', 'wykonuję: [ notatki ]', '', 'notatki_1', 'notatki_1', 'alternatywa'),
(43, 'notatka wczytaj', 'notatka_0', '500', 'komunikat', '', 'wykonuję: [ notatka wczytaj ]', '', 'notatka_1', 'notatka_1', 'alternatywa'),
(44, 'notatka wczytaj', 'notatka_1', '500', 'komunikat', '', 'wczytuję notatkę', '', 'notatka_8', 'notatka_8', ''),
(45, 'notatki', 'notatki_3', '500', 'informacja', 'problem z dostępem do notatek: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(46, 'moduly', 'moduly_3', '500', 'informacja', 'problem z dostępem do modułów: ', 'tekstAlerttekst', '', 'end', 'end', 'informacja z error'),
(47, 'notatka wczytaj', 'notatka_2', '500', 'dane', '', 'podaj id notatki ?', '', 'notatka_3', 'notatka_3', ''),
(48, 'notatka wczytaj', 'notatka_3', '500', 'zapiszdane', '', 'nr notatki', '', 'notatka_4', 'notatka_4', ''),
(49, 'notatka wczytaj', 'notatka_4', '500', 'informacja', 'wczytuję motatkę nr: ', 'bufor1', '', 'notatka_5', 'notatka_5', ''),
(50, 'notatka wczytaj', 'notatka_5', '500', 'getset', '', 'wczytaj', 'notatka', 'notatka_7', 'notatka_6', ''),
(52, 'notatka wczytaj', 'notatka_7', '500', 'informacja', 'wczytano notatkę: ', 'tekst', '', 'end', 'end', ''),
(53, 'notatka wczytaj', 'notatka_6', '500', 'informacja', 'problem z wczytaniem notatki: ', 'tekstAlert', '', 'end', 'end', ''),
(54, 'moduły', 'moduly_5', '500', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(55, 'notatki', 'notatki_5', '500', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(56, 'notatka edytuj', 'edytuj_0', '500', 'komunikat', '', 'wykonuję: [ notatka edytuj ]', '', 'edytuj_1', 'edytuj_1', 'alternatywa'),
(57, 'notatka edytuj', 'edytuj_1', '500', 'warunek', '', 'notatka', 'wczytana', 'edytuj_3', 'edytuj_2', 'czy wczytana?'),
(58, 'notatka edytuj', 'edytuj_2', '500', 'komunikat', '', 'brak notatki do edycji, wczytaj notatkę', '', 'end', 'end', ''),
(59, 'notatka edytuj', 'edytuj_3', '500', 'warunek', '', 'notatka', 'edycja', 'edytuj_4', 'edytuj_5', 'Czy w stanie edycji?'),
(60, 'notatka edytuj', 'edytuj_4', '500', 'komunikat', '', 'notatka w stanie edycji', '', 'end', 'end', ''),
(61, 'notatka edytuj', 'edytuj_5', '500', 'warunek', '', 'notatka', 'edytuj', 'edytuj_6', 'edytuj_7', 'Czy możliwa edycja?'),
(62, 'notatka edytuj', 'edytuj_6', '500', 'wykonaj', '', 'edytuj', 'on', 'edytuj_4', 'edytuj_4', 'notatka do edycji'),
(63, 'notatka edytuj', 'edytuj_7', '500', 'informacja', 'edycja niemożliwa, autor: ', 'notatka', 'wlasciciel', 'end', 'end', ''),
(64, 'notatka zapisz', 'zapisz_0', '500', 'komunikat', '', 'wykonuję: [ notatka zapisz ]', '', 'zapisz_1', 'zapisz_1', 'alternatywa'),
(65, 'notatka zapisz', 'zapisz_1', '500', 'warunek', '', 'notatka', 'wczytana', 'zapisz_3', 'zapisz_2', 'czy wczytana?'),
(66, 'notatka zapisz', 'zapisz_2', '500', 'komunikat', '', 'brak notatki, zapis niemożliwy', '', 'end', 'end', ''),
(67, 'notatka zapisz', 'zapisz_3', '500', 'warunek', '', 'notatka', 'zmiany', 'zapisz_5', 'zapisz_4', 'Czy są zmiany ?'),
(68, 'notatka zapisz', 'zapisz_4', '500', 'komunikat', '', 'brak zmian - zaniechano zapisu', '', 'end', 'end', ''),
(69, 'notatka zapisz', 'zapisz_5', '500', 'komunikat', '', 'zapisuję notatkę', '', 'zapisz_6', 'zapisz_6', ''),
(70, 'notatka zapisz', 'zapisz_6', '500', 'getset', '', 'zapisz', 'notatka', 'zapisz_7', 'zapisz_8', ''),
(71, 'notatka zapisz', 'zapisz_7', '500', 'komunikat', '', 'zapisano', '', 'end', 'end', ''),
(72, 'notatka zapisz', 'zapisz_8', '500', 'komunikat', '', 'nie zapisano', '', 'end', 'end', ''),
(73, 'notatka nowa', 'nowa_0', '500', 'komunikat', '', 'wykonuję: [ notatka nowa ]', '', 'nowa_1', 'nowa_1', 'alternatywa'),
(74, 'notatka nowa', 'nowa_1', '500', 'komunikat', '', 'zakładam nową notatkę', '', 'nowa_2', 'nowa_2', ''),
(75, 'notatka nowa', 'nowa_4', '500', 'dane', '', 'podaj tytuł notatki ?', '', 'nowa_5', 'nowa_5', ''),
(76, 'notatka nowa', 'nowa_2', '500', 'warunek', '', 'notatka', 'edycja', 'nowa_3', 'nowa_4', 'Czy w stanie edycji?'),
(77, 'notatka nowa', 'nowa_3', '500', 'komunikat', '', 'masz notatkę w edycji', '', 'end', 'end', ''),
(78, 'notatka nowa', 'nowa_5', '500', 'zapiszdane', '', 'tytuł notatki', '', 'nowa_6', 'nowa_6', ''),
(79, 'notatka nowa', 'nowa_6', '500', 'getset', '', 'zapisz', 'notatki', 'nowa_8', 'nowa_7', ''),
(80, 'notatka nowa', 'nowa_7', '500', 'informacja', 'problem z założeniem notatki:', 'tekstAlert', '', 'end', 'end', ''),
(81, 'notatka wczytaj', 'notatka_8', '500', 'warunek', '', 'notatka', 'edycja', 'notatka_9', 'notatka_2', 'Czy w stanie edycji?'),
(82, 'notatka wczytaj', 'notatka_9', '500', 'komunikat', '', 'masz notatkę w edycji', '', 'end', 'end', ''),
(83, 'notatka zamknij', 'zamknij_0', '500', 'komunikat', '', 'wykonuję: [ notatka zamknij ]', '', 'zamknij_1', 'zamknij_1', 'alternatywa'),
(84, 'notatka zamknij', 'zamknij_1', '500', 'warunek', '', 'notatka', 'wczytana', 'zamknij_3', 'zamknij_2', 'czy wczytana?'),
(85, 'notatka zamknij', 'zamknij_2', '500', 'komunikat', '', 'brak wczytanej notatki', '', 'end', 'end', ''),
(86, 'notatka zamknij', 'zamknij_3', '500', 'warunek', '', 'notatka', 'edycja', 'zamknij_5', 'zamknij_4', 'Czy w stanie edycji?'),
(87, 'notatka zamknij', 'zamknij_4', '500', 'komunikat', '', 'notatka nie jest edytowana', '', 'end', 'end', ''),
(88, 'notatka zamknij', 'zamknij_5', '500', 'warunek', '', 'notatka', 'zmiany', 'zamknij_8', 'zamknij_6', 'Czy są zmiany ?'),
(89, 'notatka zamknij', 'zamknij_6', '500', 'komunikat', '', 'notatka zamknięta', '', 'zamknij_7', 'zamknij_7', ''),
(90, 'notatka zamknij', 'zamknij_7', '500', 'wykonaj', '', 'edytuj', 'off', 'end', 'end', ''),
(91, 'notatka zamknij', 'zamknij_8', '500', 'komunikat', '', 'notatka była edytowana', '', 'zamknij_9', 'zamknij_9', ''),
(92, 'notatka zamknij', 'zamknij_9', '500', 'dane', '', 'zapisać ? (t/n)', '', 'zamknij_10', 'zamknij_10', ''),
(93, 'notatka zamknij', 'zamknij_10', '500', 'zapiszdane', '', '(t/n)', '', 'zamknij_11', 'zamknij_11', ''),
(94, 'notatka zamknij', 'zamknij_11', '500', 'warunek', '', 'sprawdz', 'taknie', 'zamknij_12', 'zamknij_9', ''),
(95, 'notatka zamknij', 'zamknij_12', '500', 'warunek', '', 'zdecyduj', 'taknie', 'zamknij_13', 'zamknij_6', ''),
(96, 'notatka nowa', 'nowa_8', '500', 'informacja', 'założono notatkę - id: [', 'tekstPolecenie', ']', 'end', 'end', ''),
(97, 'notatka zapisz', 'zamknij_13', '500', 'komunikat', '', 'zapisuję notatkę', '', 'zamknij_14', '	zamknij_14', ''),
(98, 'notatka zapisz', 'zamknij_14', '500', 'getset', '', 'zapisz', 'notatka', 'zamknij_15', 'zamknij_16', ''),
(99, 'notatka zapisz', 'zamknij_15', '500', 'informacja', 'zapisano notatkę: ', 'tekst', '', 'zamknij_6', 'zamknij_6', ''),
(100, 'notatka zapisz', 'zamknij_16', '500', 'informacja', 'problem z zapisem: ', 'tekstAlert', '', 'zamknij_17', 'zamknij_17', ''),
(101, 'notatka zapisz', 'zamknij_17', '500', 'komuinikat', '', 'notatki nie zapisano, spróbuj jeszcze raz', '', 'end', 'end', ''),
(102, 'notatka wersja', 'wersja_0', '500', 'komunikat', '', 'wykonuję: [ notatka wersja ]', '', 'wersja_1', 'wersja_1', 'alternatywa'),
(103, 'notatka wersja', 'wersja_1', '500', 'warunek', '', 'notatka', 'wczytana', 'wersja_2A', 'wersja_2', 'czy wczytana?'),
(104, 'notatka wersja', 'wersja_2', '500', 'komunikat', '', 'brak wczytanej notatki', '', 'end', 'end', ''),
(105, 'notatka wersja', 'wersja_3', '500', 'dane', '', 'podaj numer wersji ?', '', 'wersja_4', 'wersja_4', ''),
(106, 'notatka wersja', 'wersja_4', '500', 'zapiszdane', '', 'numer wersji do wyświetlenia', '', 'wersja_5', 'wersja_5', ''),
(107, 'wyloguj', 'wyloguj_2', '500', 'warunek', '', 'notatka', 'edycja', 'wyloguj_3', 'wyloguj_8', 'Czy w stanie edycji?'),
(108, 'wyloguj', 'wyloguj_3', '500', 'komunikat', '', 'notatka w stanie edycji', '', 'wyloguj_4', 'wyloguj_4', ''),
(110, 'wyloguj', 'wyloguj_4', '500', 'dane', '', 'wylogować bez zapisu (t/n)', '', 'wyloguj_5', 'wyloguj_5', ''),
(111, 'wyloguj', 'wyloguj_6', '500', 'warunek', '', 'sprawdz', 'taknie', 'wyloguj_7', 'wyloguj_4', ''),
(112, 'wyloguj', 'wyloguj_7', '500', 'warunek', '', 'zdecyduj', 'taknie', 'wyloguj_8', 'end', ''),
(113, 'wyloguj', 'wyloguj_5', '500', 'zapiszdane', '', '(t/n)', '', 'wyloguj_6', 'wyloguj_6', ''),
(114, 'historia kasuj', 'kasujh_0', '500', 'komunikat', '', 'wykonuję: [ historia kasuj ]', '', 'kasujh_1', 'kasujh_1', 'alternatywa'),
(115, 'historia kasuj', 'kasujh_1', '500', 'komunikat', '', 'kasuję historię komunikatów', '', 'kasujh_2', 'kasujh_2', ''),
(116, 'historia kasuj', 'kasujh_2', '1000', 'wykonaj', '', 'kasuj', 'historia', 'kasujh_3', 'kasujh_3', ''),
(117, 'historia kasuj', 'kasujh_3', '500', 'komunikat', '', 'skasowano historię komunikatów', '', 'kasujh_4', 'kasujh_4', ''),
(118, 'historia kasuj', 'kasujh_4', '500', 'komunikat', '', 'Gotowy', '', 'end', 'end', ''),
(119, 'polecenia kasuj', 'kasujp_0', '500', 'komunikat', '', 'wykonuję: [ polecenia kasuj ]', '', 'kasujp_1', 'kasujp_1', 'alternatywa'),
(120, 'polecenia kasuj', 'kasujp_1', '500', 'komunikat', '', 'kasuję historię poleceń', '', 'kasujp_2', 'kasujp_2', ''),
(121, 'polecenia kasuj', 'kasujp_2', '1000', 'wykonaj', '', 'kasuj', 'polecenia', 'kasujp_3', 'kasujp_3', ''),
(122, 'polecenia kasuj', 'kasujp_3', '500', 'komunikat', '', 'skasowano historię poleceń 	', '', 'end', 'end', ''),
(124, 'wszystko kasuj', 'kasuja_0', '500', 'komunikat', '', 'wykonuję: [ wszystko kasuj ]', '', 'kasuja_7', 'kasuja_7', 'alternatywa'),
(125, 'wszystko kasuj', 'kasuja_1', '500', 'komunikat', '', 'kasuję historię komunikatów i poleceń', '', 'kasuja_2', 'kasuja_2', ''),
(126, 'wszystko kasuj', 'kasuja_2', '500', 'komunikat', '', 'kasuję historię poleceń', '', 'kasuja_3', 'kasuja_3', ''),
(127, 'wszystko kasuj', 'kasuja_3', '1000', 'wykonaj', '', 'kasuj', 'polecenia', 'kasuja_4', 'kasuja_4', ''),
(128, 'polecenia kasuj', 'kasujp_3', '500', 'komunikat', '', 'skasowano historię poleceń 	', '', 'end', 'end', ''),
(129, 'wszystko kasuj', 'kasuja_4', '500', 'komunikat', '', 'kasuję historię komunikatów', '', 'kasuja_5', 'kasuja_5', ''),
(130, 'wszystko kasuj', 'kasuja_5', '1000', 'wykonaj', '', 'kasuj', 'historia', 'kasuja_6', 'kasuja_6', ''),
(131, 'wszystko kasuj', 'kasuja_6', '500', 'komunikat', '', 'skasowano historię komunikatów i poleceń', '', 'kasuja_15', 'kasuja_15', ''),
(132, 'wszystko kasuj', 'kasuja_15', '500', 'komunikat', '', 'Gotowy', '', 'end', 'end', ''),
(133, 'notatka wersja', 'wersja_6', '500', 'informacja', 'nieprawidłowa liczba: ', 'bufor1', '', 'wersja_3', 'wersja_3', ''),
(134, 'notatka wersja', 'wersja_5', '500', 'warunek', '', 'sprawdz', 'number', 'wersja_7', 'wersja_6', ''),
(135, 'notatka wersja', 'wersja_7', '500', 'komunikat', '', 'zmieniam wyświetlaną wersję notatki', '', 'wersja_8', 'wersja_8', ''),
(136, 'notatka wersja', 'wersja_8', '500', 'warunek', '', 'notatka', 'edytuj', 'wersja_10', 'wersja_9', 'brak edycji = brak poprzednich wersji'),
(137, 'notatka wersja', 'wersja_10', '500', 'warunek', '', 'notatka', 'zakres', 'wersja_12', 'wersja_11', ''),
(138, 'notatka wersja', 'wersja_9', '500', 'informacja', 'wersje niedostępne, autor: ', 'notatka', 'wlasciciel', 'end', 'end', ''),
(139, 'notatka wersja', 'wersja_14', '500', 'wykonaj', '', 'notatka', 'wersja', 'wersja_15', 'wersja_15', ''),
(140, 'notatka wersja', 'wersja_12', '500', 'warunek', '', 'notatka', 'dostepna', 'wersja_14', 'wersja_13', ''),
(141, 'notatka wersja', 'wersja_11', '500', 'informacja', 'brak notatki w wersji: ', 'bufor1', '', 'end', 'end', ''),
(142, 'notatka wersja', 'wersja_13', '500', 'informacja', 'notatka w wersji: ', 'bufor12', ' jest: ', 'end', 'end', ''),
(143, 'notatka wersja', 'wersja_15', '500', 'komunikat', '', 'zmieniono wersję notatki', '', 'end', 'end', ''),
(144, 'notatka wersja', 'wersja_2A', '500', 'warunek', '', 'notatka', 'edycja', 'wersja_2B', 'wersja_3', 'Czy w stanie edycji?'),
(145, 'notatka wersja', 'wersja_2B', '500', 'komunikat', '', 'notatka w stanie edycji, zmiana wersji niemożliwa', '', 'end', 'end', ''),
(146, 'notatka kasuj', 'kasujn_0', '500', 'komunikat', '', 'wykonuję: [ notatka kasuj ]', '', 'kasujn_1', 'kasujn_1', 'alternatywa'),
(147, 'notatka kasuj', 'kasujn_1', '500', 'warunek', '', 'notatka', 'wczytana', 'kasujn_3', 'kasujn_2', 'czy wczytana?'),
(148, 'notatka kasuj', 'kasujn_2', '500', 'komunikat', '', 'brak wyświetlonej notatki', '', 'end', 'end', ''),
(149, 'notatka kasuj', 'kasujn_3', '500', 'warunek', '', 'notatka', 'edycja', 'kasujn_4', 'kasujn_5', 'Czy w stanie edycji?'),
(150, 'notatka kasuj', 'kasujn_4', '500', 'komunikat', '', 'notatka w stanie edycji', '', 'end', 'end', ''),
(151, 'notatka kasuj', 'kasujn_5', '500', 'komunikat', '', 'kasuję wyświetloną notatkę', '', 'kasujn_6', 'kasujn_6', ''),
(152, 'notatka kasuj', 'kasujn_6', '1000', 'wykonaj', '', 'kasuj', 'notatka', 'kasujn_7', 'kasujn_7', ''),
(153, 'notatka kasuj', 'kasujn_7', '500', 'komunikat', '', 'skasowano wyświetloną notatkę', '', 'end', 'end', ''),
(155, 'wszystko kasuj', 'kasuja_7', '500', 'komunikat', '', 'kasuję wyświetloną notatkę', '', 'kasuja_8', 'kasuja_8', ''),
(156, 'wszystko kasuj', 'kasuja_8', '500', 'warunek', '', 'notatka', 'wczytana', 'kasuja_10', 'kasuja_9', 'czy wczytana?'),
(157, 'wszystko kasuj', 'kasuja_9', '500', 'komunikat', '', 'brak wyświetlonej notatki', '', 'kasuja_1', 'kasuja_1', ''),
(158, 'wszystko kasuj', 'kasuja_10', '500', 'warunek', '', 'notatka', 'edycja', 'kasuja_11', 'kasuja_13', 'Czy w stanie edycji?'),
(159, 'wszystko kasuj', 'kasuja_11', '500', 'komunikat', '', 'notatka w stanie edycji', '', 'end', 'end', ''),
(160, 'wszystko kasuj', 'kasuja_13', '1000', 'wykonaj', '', 'kasuj', 'notatka', 'kasuja_14', 'kasuja_14', ''),
(161, 'wszystko kasuj', 'kasuja_14', '500', 'komunikat', '', 'skasowano wyświetloną notatkę', '', 'kasuja_1', 'kasuja_1', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `komputery`
--

CREATE TABLE `komputery` (
  `id` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `hostid` text COLLATE utf8_polish_ci NOT NULL,
  `czaslogowania` text COLLATE utf8_polish_ci NOT NULL,
  `czaszmiana` text COLLATE utf8_polish_ci NOT NULL,
  `ustawienia_1` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `komputery`
--

INSERT INTO `komputery` (`id`, `nazwa`, `hostid`, `czaslogowania`, `czaszmiana`, `ustawienia_1`) VALUES
(1, 'Komputer-Tomka.10wsk.mil.pl', 'HI371644820478FU164934461434XW', '2022-02-14 07:34:38', '2022-02-14 07:34:38', 0),
(2, 'Komputer-Tomka.10wsk.mil.pl', 'GW151644831563ZN8226317305008YF', '2022-02-14 10:39:23', '2022-02-14 10:39:23', 0),
(3, 'Komputer-Tomka.10wsk.mil.pl', 'BO891644832166SL57149679727106IY', '2022-02-14 10:49:26', '2022-02-14 10:49:26', 0),
(4, 'Komputer-Tomka.10wsk.mil.pl', 'XG251644832179LT75133231406499DM', '2022-02-14 10:49:39', '2022-02-14 10:49:39', 0),
(5, 'Komputer-Tomka.10wsk.mil.pl', 'NO681644834841FG77156259309895NQ', '2022-02-14 11:34:01', '2022-02-14 11:34:01', 0),
(6, 'Komputer-Tomka.10wsk.mil.pl', 'TH471644837163GH53131586973040GH', '2022-02-14 12:12:43', '2022-02-14 12:12:43', 0),
(7, 'Komputer-Tomka.10wsk.mil.pl', 'CL711644839792BN5470728111056SP', '2022-02-14 12:56:32', '2022-02-14 12:56:32', 0),
(8, 'Komputer-Tomka.10wsk.mil.pl', 'ZK211644841683NJ43139811543055RT', '2022-02-14 13:28:02', '2022-02-14 13:28:02', 0),
(9, 'Komputer-Tomka.10wsk.mil.pl', 'IK331644843223KY87128297771394JA', '2022-02-14 13:53:43', '2022-02-14 13:53:43', 0),
(10, 'Komputer-Tomka.10wsk.mil.pl', 'CY621644843560BB3982242178000FT', '2022-02-14 13:59:20', '2022-02-14 13:59:20', 0),
(11, 'Komputer-Tomka', 'AJ381644843649OA5965793745960PO', '2022-02-14 14:00:49', '2022-02-14 14:00:49', 0),
(12, 'Komputer-Tomka.10wsk.mil.pl', 'PZ351644844216GA890466431880EP', '2022-02-14 14:10:16', '2022-02-14 14:10:16', 0),
(13, 'Komputer-Tomka', 'JD881644844352QY5292111283712IG', '2022-02-14 14:12:32', '2022-02-14 14:12:32', 0),
(14, 'Komputer-Tomka', 'QW221644844438RX4249345333140ZJ', '2022-02-14 14:13:58', '2022-02-14 14:13:58', 0),
(15, 'DESKTOP-2KPJSHU', 'RH261644939830NG47121725547420LX', '2022-02-15 16:43:50', '2022-02-15 16:43:50', 0),
(16, 'DESKTOP-2KPJSHU', 'KK411644940265AI546579761060TQ', '2022-02-15 16:51:05', '2022-02-15 16:51:05', 0),
(17, 'DESKTOP-2KPJSHU', 'WW721644940571BA86116790780541DT', '2022-02-15 16:56:11', '2022-02-15 16:56:11', 0),
(18, 'DESKTOP-2KPJSHU', 'XZ761644940889JT6093761630673WQ', '2022-02-15 17:01:29', '2022-02-15 17:01:29', 0),
(19, 'DESKTOP-2KPJSHU', 'AX341644942852YD401644942852SV', '2022-02-15 17:34:12', '2022-02-15 17:34:12', 0),
(20, 'DESKTOP-2KPJSHU', 'VM961644943009FS40144754984792QC', '2022-02-15 17:36:49', '2022-02-15 17:36:49', 0),
(21, 'DESKTOP-2KPJSHU', 'CT201644943110GJ2019739317320NO', '2022-02-15 17:38:30', '2022-02-15 17:38:30', 0),
(22, 'DESKTOP-2KPJSHU', 'NJ611644944341IA37106921382165YP', '2022-02-15 17:59:01', '2022-02-15 17:59:01', 0),
(23, 'DESKTOP-2KPJSHU', 'OL901644944808LE97106921412520DN', '2022-02-15 18:06:48', '2022-02-15 18:06:48', 0),
(24, 'DESKTOP-2KPJSHU', 'WN961644944848XZ25138175367232AF', '2022-02-15 18:07:28', '2022-02-15 18:07:28', 0),
(25, 'DESKTOP-2KPJSHU', 'XN201644945135DA51152979897555MP', '2022-02-15 18:12:15', '2022-02-15 18:12:15', 0),
(26, 'DESKTOP-2KPJSHU', 'DX951644961365DZ1057573647775XU', '2022-02-15 22:42:45', '2022-02-15 22:42:45', 0),
(27, 'DESKTOP-2KPJSHU', 'DB611644961379OV267443416539PH', '2022-02-15 22:42:59', '2022-02-15 22:42:59', 0),
(28, 'DESKTOP-2KPJSHU', 'KQ531644961439FQ7554283727487QM', '2022-02-15 22:43:59', '2022-02-15 22:43:59', 0),
(29, 'DESKTOP-2KPJSHU', 'HK601644962331MN91128307061818VT', '2022-02-15 22:58:51', '2022-02-15 22:58:51', 0),
(30, 'DESKTOP-2KPJSHU', 'TK351644962644HM13133241974164XW', '2022-02-15 23:04:04', '2022-02-15 23:04:04', 0),
(31, 'DESKTOP-2KPJSHU', 'UE131644963796SJ56134887031272AN', '2022-02-15 23:23:16', '2022-02-15 23:23:16', 0),
(32, 'DESKTOP-2KPJSHU', 'AB921645024041MH49136536995403WQ', '2022-02-16 16:07:21', '2022-02-16 16:07:21', 0),
(33, 'DESKTOP-2KPJSHU', 'LW321645025118TT5574026130310IL', '2022-02-16 16:25:18', '2022-02-16 16:25:18', 0),
(34, 'DESKTOP-2KPJSHU', 'CO231645025212PS8482251260600YQ', '2022-02-16 16:26:52', '2022-02-16 16:26:52', 0),
(35, 'DESKTOP-2KPJSHU', 'MU731645025438XT926580101752GZ', '2022-02-16 16:30:38', '2022-02-16 16:30:38', 0),
(36, 'DESKTOP-2KPJSHU', 'JA861645025505CG24105281632320QT', '2022-02-16 16:31:45', '2022-02-16 16:31:45', 0),
(37, 'DESKTOP-2KPJSHU', 'UL761645025602OI776580102408EY', '2022-02-16 16:33:22', '2022-02-16 16:33:22', 0),
(38, 'DESKTOP-2KPJSHU', 'TZ571645025895ZC1583896320645YK', '2022-02-16 16:38:15', '2022-02-16 16:38:15', 0),
(39, 'DESKTOP-2KPJSHU', 'FR371645025984NR28123376948800OW', '2022-02-16 16:39:44', '2022-02-16 16:39:44', 0),
(40, 'DESKTOP-2KPJSHU', 'BP261645026265HL82161212573970UF', '2022-02-16 16:44:25', '2022-02-16 16:44:25', 0),
(41, 'DESKTOP-2KPJSHU', 'AC241645026274YR3865801050960DW', '2022-02-16 16:44:34', '2022-02-16 16:44:34', 0),
(42, 'DESKTOP-2KPJSHU', 'DR451645027358AU744415738666ZP', '2022-02-16 17:02:38', '2022-02-16 17:02:38', 0),
(43, 'DESKTOP-2KPJSHU', 'SH841645027546ZP29151342534232GE', '2022-02-16 17:05:46', '2022-02-16 17:05:46', 0),
(44, 'DESKTOP-2KPJSHU', 'KJ191645027993YS129610503874MX', '2022-02-16 17:13:13', '2022-02-16 17:13:13', 0),
(45, 'DESKTOP-2KPJSHU', 'SE261645028042CR58225140210MM', '2022-02-16 17:14:02', '2022-02-16 17:14:02', 0),
(46, 'DESKTOP-2KPJSHU', 'NO611645028107SK71123377108025JD', '2022-02-16 17:15:07', '2022-02-16 17:15:07', 0),
(47, 'DESKTOP-2KPJSHU', 'SV621645028219DI4765801128760LD', '2022-02-16 17:16:59', '2022-02-16 17:16:59', 0),
(48, 'DESKTOP-2KPJSHU', 'LZ481645028463FE3287186508539DM', '2022-02-16 17:21:03', '2022-02-16 17:21:03', 0),
(49, 'DESKTOP-2KPJSHU', 'XK171645028573CV8488831542942WT', '2022-02-16 17:22:53', '2022-02-16 17:22:53', 0),
(50, 'DESKTOP-2KPJSHU', 'TI141645028618KN5157922747328AY', '2022-02-16 17:23:38', '2022-02-16 17:23:38', 0),
(51, 'DESKTOP-2KPJSHU', 'DW241645028702FK1778961377696XI', '2022-02-16 17:25:02', '2022-02-16 17:25:02', 0),
(52, 'DESKTOP-2KPJSHU', 'WV501645028786GZ4052640921152ZB', '2022-02-16 17:26:26', '2022-02-16 17:26:26', 0),
(53, 'DESKTOP-2KPJSHU', 'VQ31645028843OY2742770749918VL', '2022-02-16 17:27:23', '2022-02-16 17:27:23', 0),
(54, 'DESKTOP-2KPJSHU', 'HH231645033379UI90133247703699OX', '2022-02-16 18:42:59', '2022-02-16 18:42:59', 0),
(55, 'DESKTOP-2KPJSHU', 'XW501645033570YF2544415906390JE', '2022-02-16 18:46:10', '2022-02-16 18:46:10', 0),
(56, 'DESKTOP-2KPJSHU', 'FR781645033611CH73290067222LU', '2022-02-16 18:46:51', '2022-02-16 18:46:51', 0),
(57, 'DESKTOP-2KPJSHU', 'YJ431645033632NL55105282152448SX', '2022-02-16 18:47:12', '2022-02-16 18:47:12', 0),
(58, 'DESKTOP-2KPJSHU', 'VH851645033779QS4116450337790LD', '2022-02-16 18:49:39', '2022-02-16 18:49:39', 0),
(59, 'DESKTOP-2KPJSHU', 'SG931645033847MO35108572233902MT', '2022-02-16 18:50:47', '2022-02-16 18:50:47', 0),
(60, 'DESKTOP-2KPJSHU', 'JO11645035805KJ3162511360590ZC', '2022-02-16 19:23:25', '2022-02-16 19:23:25', 0),
(61, 'DESKTOP-2KPJSHU', 'HZ381645041898MB3837835963654VQ', '2022-02-16 21:04:58', '2022-02-16 21:04:58', 0),
(62, 'DESKTOP-2KPJSHU', 'HP681645041938KV9213160335504ED', '2022-02-16 21:05:38', '2022-02-16 21:05:38', 0),
(63, 'DESKTOP-2KPJSHU', 'UN301645042452MA97159569117844ZA', '2022-02-16 21:14:12', '2022-02-16 21:14:12', 0),
(64, 'DESKTOP-2KPJSHU', 'WR821645042514IZ95128313316092VT', '2022-02-16 21:15:14', '2022-02-16 21:15:14', 0),
(65, 'DESKTOP-2KPJSHU', 'RS481645043384LU38138183644256TU', '2022-02-16 21:29:44', '2022-02-16 21:29:44', 0),
(66, 'DESKTOP-2KPJSHU', 'OQ111645043510KA3223030609140IY', '2022-02-16 21:31:50', '2022-02-16 21:31:50', 0),
(67, 'DESKTOP-2KPJSHU', 'PU671645043982HL4378962111136QE', '2022-02-16 21:39:42', '2022-02-16 21:39:42', 0),
(68, 'DESKTOP-2KPJSHU', 'WY451645043990DY161645043990ZE', '2022-02-16 21:39:50', '2022-02-16 21:39:50', 0),
(69, 'DESKTOP-2KPJSHU', 'UX291645044145CI8932900882900RK', '2022-02-16 21:42:25', '2022-02-16 21:42:25', 0),
(70, 'DESKTOP-2KPJSHU', 'QC401645044290KA92138183720360GG', '2022-02-16 21:44:50', '2022-02-16 21:44:50', 0),
(71, 'DESKTOP-2KPJSHU', 'CB251645044535WO66103637805705YS', '2022-02-16 21:48:55', '2022-02-16 21:48:55', 0),
(72, 'DESKTOP-2KPJSHU', 'VR351645045030RP1129958557370MU', '2022-02-16 21:57:10', '2022-02-16 21:57:10', 0),
(73, 'DESKTOP-2KPJSHU', 'IS831645045368XG6926320725888ZE', '2022-02-16 22:02:48', '2022-02-16 22:02:48', 0),
(74, 'DESKTOP-2KPJSHU', 'GX971645050187QY5182252509350WR', '2022-02-16 23:23:07', '2022-02-16 23:23:07', 0),
(75, 'DESKTOP-2KPJSHU', 'GS471645051014FZ3362511938532JP', '2022-02-16 23:36:54', '2022-02-16 23:36:54', 0),
(76, 'DESKTOP-2KPJSHU', 'LQ11645051180DO77129959043220BL', '2022-02-16 23:39:40', '2022-02-16 23:39:40', 0),
(77, 'DESKTOP-2KPJSHU', 'IL681645051196SR43152989761228DS', '2022-02-16 23:39:56', '2022-02-16 23:39:56', 0),
(78, 'DESKTOP-2KPJSHU', 'WY341645051225XH5154286690425FT', '2022-02-16 23:40:25', '2022-02-16 23:40:25', 0),
(79, 'DESKTOP-2KPJSHU', 'ST181645051255LH9326320820080KM', '2022-02-16 23:40:55', '2022-02-16 23:40:55', 0),
(80, 'DESKTOP-2KPJSHU', 'LF81645051681XU1654286705473LZ', '2022-02-16 23:48:01', '2022-02-16 23:48:01', 0),
(81, 'DESKTOP-2KPJSHU', 'VJ591645051702XG1765802068080RI', '2022-02-16 23:48:22', '2022-02-16 23:48:22', 0),
(82, 'DESKTOP-2KPJSHU', 'XA71645051764AG81101993209368AE', '2022-02-16 23:49:24', '2022-02-16 23:49:24', 0),
(83, 'DESKTOP-2KPJSHU', 'LY651645051817LR5178962487216RR', '2022-02-16 23:50:17', '2022-02-16 23:50:17', 0),
(84, 'DESKTOP-2KPJSHU', 'UV731645051988PJ47126669003076DL', '2022-02-16 23:53:08', '2022-02-16 23:53:08', 0),
(85, 'DESKTOP-2KPJSHU', 'ZH551645052155OC24106928390075YS', '2022-02-16 23:55:55', '2022-02-16 23:55:55', 0),
(86, 'DESKTOP-2KPJSHU', 'LD441645131626AZ3831257500894XN', '2022-02-17 22:00:25', '2022-02-17 22:00:25', 0),
(87, 'DESKTOP-2KPJSHU', 'QX891645204340CF43123390325500YG', '2022-02-18 18:12:20', '2022-02-18 18:12:20', 0),
(88, 'DESKTOP-2KPJSHU', 'OX361645214876IC7195422462808MA', '2022-02-18 21:07:56', '2022-02-18 21:07:56', 0),
(89, 'DESKTOP-2KPJSHU', 'PY231645215101YU2355937313434AB', '2022-02-18 21:11:41', '2022-02-18 21:11:41', 0),
(90, 'DESKTOP-2KPJSHU', 'YQ241645215252LT25129972004908FL', '2022-02-18 21:14:12', '2022-02-18 21:14:12', 0),
(91, 'DESKTOP-2KPJSHU', 'CK841645215263AS5392132054728XV', '2022-02-18 21:14:23', '2022-02-18 21:14:23', 0),
(92, 'DESKTOP-2KPJSHU', 'IU761645215798IC9362518200324NM', '2022-02-18 21:23:18', '2022-02-18 21:23:18', 0),
(93, 'DESKTOP-2KPJSHU', 'HG731645216042BN20136552931486BG', '2022-02-18 21:27:22', '2022-02-18 21:27:22', 0),
(94, 'DESKTOP-2KPJSHU', 'BK861645216304VP2113161730432ZN', '2022-02-18 21:31:44', '2022-02-18 21:31:44', 0),
(95, 'DESKTOP-2KPJSHU', 'KR751645216391SX6111874714588EH', '2022-02-18 21:33:11', '2022-02-18 21:33:11', 0),
(96, 'DESKTOP-2KPJSHU', 'XU841645216619EP1727968682523BU', '2022-02-18 21:36:59', '2022-02-18 21:36:59', 0),
(97, 'DESKTOP-2KPJSHU', 'VJ421645216625QV36164521662500LX', '2022-02-18 21:37:05', '2022-02-18 21:37:05', 0),
(98, 'DESKTOP-2KPJSHU', 'RL651645216789HW23113519958441WL', '2022-02-18 21:39:49', '2022-02-18 21:39:49', 0),
(99, 'DESKTOP-2KPJSHU', 'YL941645216935TK7714806952415SJ', '2022-02-18 21:42:14', '2022-02-18 21:42:14', 0),
(100, 'DESKTOP-2KPJSHU', 'NG51645216942YF6541130423550RT', '2022-02-18 21:42:22', '2022-02-18 21:42:22', 0),
(101, 'DESKTOP-2KPJSHU', 'WR921645216993RU3180615632657VG', '2022-02-18 21:43:13', '2022-02-18 21:43:13', 0),
(102, 'DESKTOP-2KPJSHU', 'XY351645217031EV58129972145449HU', '2022-02-18 21:43:51', '2022-02-18 21:43:51', 0),
(103, 'DESKTOP-2KPJSHU', 'SR621645217279QU4344420866533VN', '2022-02-18 21:47:59', '2022-02-18 21:47:59', 0),
(104, 'DESKTOP-2KPJSHU', 'CL731645217548LH73138198274032NO', '2022-02-18 21:52:28', '2022-02-18 21:52:28', 0),
(105, 'DESKTOP-2KPJSHU', 'EZ661645217645IC10110229582215YH', '2022-02-18 21:54:05', '2022-02-18 21:54:05', 0),
(106, 'DESKTOP-2KPJSHU', 'VH261645217901VP43144779175288AZ', '2022-02-18 21:58:21', '2022-02-18 21:58:21', 0),
(107, 'DESKTOP-2KPJSHU', 'JX511645217907XE7623033050698VS', '2022-02-18 21:58:27', '2022-02-18 21:58:27', 0),
(108, 'DESKTOP-2KPJSHU', 'EA171645217986YT10100358297146FW', '2022-02-18 21:59:46', '2022-02-18 21:59:46', 0),
(109, 'DESKTOP-2KPJSHU', 'LR811645218070VQ84141488754020IO', '2022-02-18 22:01:10', '2022-02-18 22:01:10', 0),
(110, 'DESKTOP-2KPJSHU', 'AT751645221661LW93105294186304GH', '2022-02-18 23:01:01', '2022-02-18 23:01:01', 0),
(111, 'DESKTOP-2KPJSHU', 'HM431645221756OO7947711430924JP', '2022-02-18 23:02:36', '2022-02-18 23:02:36', 0),
(112, 'DESKTOP-2KPJSHU', 'ND291645221898TW60162876967902RQ', '2022-02-18 23:04:58', '2022-02-18 23:04:58', 0),
(113, 'DESKTOP-2KPJSHU', 'OK101645252482TC9195424643956VK', '2022-02-19 07:34:42', '2022-02-19 07:34:42', 0),
(114, 'DESKTOP-2KPJSHU', 'BO341645252919ED6536195564218IX', '2022-02-19 07:41:59', '2022-02-19 07:41:59', 0),
(115, 'DESKTOP-2KPJSHU', 'SZ881645253197NQ7418097785167LS', '2022-02-19 07:46:37', '2022-02-19 07:46:37', 0),
(116, 'DESKTOP-2KPJSHU', 'ZQ111645253398KF9198715203880IJ', '2022-02-19 07:49:58', '2022-02-19 07:49:58', 0),
(117, 'DESKTOP-2KPJSHU', 'OG831645253871KS2652648123872OB', '2022-02-19 07:57:51', '2022-02-19 07:57:51', 0),
(118, 'DESKTOP-2KPJSHU', 'GK211645254014AI8678972192672DN', '2022-02-19 08:00:14', '2022-02-19 08:00:14', 0),
(119, 'DESKTOP-2KPJSHU', 'XB81645254135XC1197069993965UC', '2022-02-19 08:02:15', '2022-02-19 08:02:15', 0),
(120, 'DESKTOP-2KPJSHU', 'KB141645254153IO55111877282404BT', '2022-02-19 08:02:33', '2022-02-19 08:02:33', 0),
(121, 'DESKTOP-2KPJSHU', 'ZX261645262161JF73133266235041UA', '2022-02-19 10:16:01', '2022-02-19 10:16:01', 0),
(122, 'DESKTOP-2KPJSHU', 'ME51645262283EB18139847294055PK', '2022-02-19 10:18:03', '2022-02-19 10:18:03', 0),
(123, 'DESKTOP-2KPJSHU', 'RO201645262762MC5011516839334UN', '2022-02-19 10:26:02', '2022-02-19 10:26:02', 0),
(124, 'DESKTOP-2KPJSHU', 'HB911645263724FE1223033692136HY', '2022-02-19 10:42:04', '2022-02-19 10:42:04', 0),
(125, 'DESKTOP-2KPJSHU', 'JP41645265189CC28141492806254VS', '2022-02-19 11:06:29', '2022-02-19 11:06:29', 0),
(126, 'DESKTOP-2KPJSHU', 'KE911645265496XC51159590753112VK', '2022-02-19 11:11:36', '2022-02-19 11:11:36', 0),
(127, 'DESKTOP-2KPJSHU', 'LB31645266513TD74157945585248QL', '2022-02-19 11:28:33', '2022-02-19 11:28:33', 0),
(128, 'DESKTOP-2KPJSHU', 'RX671645266738PS4133266605778WO', '2022-02-19 11:32:18', '2022-02-19 11:32:18', 0),
(129, 'DESKTOP-2KPJSHU', 'IC111645266919HG5378972812112BE', '2022-02-19 11:35:19', '2022-02-19 11:35:19', 0),
(130, 'DESKTOP-2KPJSHU', 'OD761645267008BM39154655098752KS', '2022-02-19 11:36:48', '2022-02-19 11:36:48', 0),
(131, 'DESKTOP-2KPJSHU', 'MM481645267094HK68106942361110TU', '2022-02-19 11:38:14', '2022-02-19 11:38:14', 0),
(132, 'DESKTOP-2KPJSHU', 'QX411645268351WN2641131708775YJ', '2022-02-19 11:59:11', '2022-02-19 11:59:11', 0),
(133, 'DESKTOP-2KPJSHU', 'VW941645268409WB3218097952499IM', '2022-02-19 12:00:08', '2022-02-19 12:00:08', 0),
(134, 'DESKTOP-2KPJSHU', 'SL821645268599PI314807417391CW', '2022-02-19 12:03:19', '2022-02-19 12:03:19', 0),
(135, 'DESKTOP-2KPJSHU', 'LD761645269177UD42131621534160UQ', '2022-02-19 12:12:56', '2022-02-19 12:12:56', 0),
(136, 'DESKTOP-2KPJSHU', 'KB341645269229XA5611516884603VR', '2022-02-19 12:13:49', '2022-02-19 12:13:49', 0),
(137, 'DESKTOP-2KPJSHU', 'MB391645269357LL11121749932418HA', '2022-02-19 12:15:57', '2022-02-19 12:15:57', 0),
(138, 'DESKTOP-2KPJSHU', 'UF571645269364KK119871616184BE', '2022-02-19 12:16:04', '2022-02-19 12:16:04', 0),
(139, 'DESKTOP-2KPJSHU', 'SK301645269704LH4316452697040VQ', '2022-02-19 12:21:44', '2022-02-19 12:21:44', 0),
(140, 'DESKTOP-2KPJSHU', 'TG181645269713XF6126685767901IX', '2022-02-19 12:21:53', '2022-02-19 12:21:53', 0),
(141, 'DESKTOP-2KPJSHU', 'CI991645270069OM754935810207PL', '2022-02-19 12:27:48', '2022-02-19 12:27:48', 0),
(142, 'DESKTOP-2KPJSHU', 'VG41645270185II1285554049620ME', '2022-02-19 12:29:45', '2022-02-19 12:29:45', 0),
(143, 'DESKTOP-2KPJSHU', 'FE121645270293NZ7142777027618QD', '2022-02-19 12:31:33', '2022-02-19 12:31:33', 0),
(144, 'DESKTOP-2KPJSHU', 'TM111645270467KX57103652039421FT', '2022-02-19 12:34:27', '2022-02-19 12:34:27', 0),
(145, 'DESKTOP-2KPJSHU', 'YH61645270652DU6121388518476NB', '2022-02-19 12:37:32', '2022-02-19 12:37:32', 0),
(146, 'DESKTOP-2KPJSHU', 'VL221645270839PL4987199354467VA', '2022-02-19 12:40:39', '2022-02-19 12:40:39', 0),
(147, 'DESKTOP-2KPJSHU', 'AC431645271791LS64133267015071TC', '2022-02-19 12:56:31', '2022-02-19 12:56:31', 0),
(148, 'DESKTOP-2KPJSHU', 'VF931645272135CR47139848131475RT', '2022-02-19 13:02:15', '2022-02-19 13:02:15', 0),
(149, 'DESKTOP-2KPJSHU', 'XF951645272213XK46581088852HN', '2022-02-19 13:03:33', '2022-02-19 13:03:33', 0),
(150, 'DESKTOP-2KPJSHU', 'MV671645272215GQ54133267049415CC', '2022-02-19 13:03:35', '2022-02-19 13:03:35', 0),
(151, 'DESKTOP-2KPJSHU', 'UB281645272358PX9354293987814HA', '2022-02-19 13:05:58', '2022-02-19 13:05:58', 0),
(152, 'DESKTOP-2KPJSHU', 'HY361645272492AY86125040709392JV', '2022-02-19 13:08:12', '2022-02-19 13:08:12', 0),
(153, 'DESKTOP-2KPJSHU', 'XW581645272681MD9277327816007HA', '2022-02-19 13:11:21', '2022-02-19 13:11:21', 0),
(154, 'DESKTOP-2KPJSHU', 'SI171645273275AH41162882054225FH', '2022-02-19 13:21:15', '2022-02-19 13:21:15', 0),
(155, 'DESKTOP-2KPJSHU', 'OX951645279485VL54123395961375HH', '2022-02-19 15:04:45', '2022-02-19 15:04:45', 0),
(156, 'DESKTOP-2KPJSHU', 'YE911645279806QJ848226399030SA', '2022-02-19 15:10:06', '2022-02-19 15:10:06', 0),
(157, 'DESKTOP-2KPJSHU', 'XP141645280752TM2026324492032LR', '2022-02-19 15:25:52', '2022-02-19 15:25:52', 0),
(158, 'DESKTOP-2KPJSHU', 'QW81645281135VV1427969779295ZG', '2022-02-19 15:32:15', '2022-02-19 15:32:15', 0),
(159, 'DESKTOP-2KPJSHU', 'YJ211645281221IS31123396091575GC', '2022-02-19 15:33:41', '2022-02-19 15:33:41', 0),
(160, 'DESKTOP-2KPJSHU', 'LS651645281475KB3369101821950WA', '2022-02-19 15:37:55', '2022-02-19 15:37:55', 0),
(161, 'DESKTOP-2KPJSHU', 'JC601645281494KU100156301741930WY', '2022-02-19 15:38:14', '2022-02-19 15:38:14', 0),
(162, 'DESKTOP-2KPJSHU', 'KV911645281596WP68118460274912JM', '2022-02-19 15:39:56', '2022-02-19 15:39:56', 0),
(163, 'DESKTOP-2KPJSHU', 'XL91645288112PV78129977760848QE', '2022-02-19 17:28:32', '2022-02-19 17:28:32', 0),
(164, 'DESKTOP-2KPJSHU', 'TS831645288130XM29100362575930ZO', '2022-02-19 17:28:50', '2022-02-19 17:28:50', 0),
(165, 'DESKTOP-2KPJSHU', 'XG991645288207XQ9161238244286FC', '2022-02-19 17:30:07', '2022-02-19 17:30:07', 0),
(166, 'DESKTOP-2KPJSHU', 'CF621645288270WH749871729620HP', '2022-02-19 17:31:10', '2022-02-19 17:31:10', 0),
(167, 'DESKTOP-2KPJSHU', 'GM151645288371QU56116815474341BQ', '2022-02-19 17:32:51', '2022-02-19 17:32:51', 0),
(168, 'DESKTOP-2KPJSHU', 'ON561645288508FU5125041926608LW', '2022-02-19 17:35:08', '2022-02-19 17:35:08', 0),
(169, 'DESKTOP-2KPJSHU', 'IM291645288907XT2397072045513VP', '2022-02-19 17:41:47', '2022-02-19 17:41:47', 0),
(170, 'DESKTOP-2KPJSHU', 'TO851645292141SL32153012169113LY', '2022-02-19 18:35:41', '2022-02-19 18:35:41', 0),
(171, 'DESKTOP-2KPJSHU', 'UT211645292987MP9559230547532KB', '2022-02-19 18:49:47', '2022-02-19 18:49:47', 0),
(172, 'DESKTOP-2KPJSHU', 'GS771645292996EG6977328770812DA', '2022-02-19 18:49:56', '2022-02-19 18:49:56', 0),
(173, 'DESKTOP-2KPJSHU', 'LE71645293142AY8659230553112RB', '2022-02-19 18:52:22', '2022-02-19 18:52:22', 0),
(174, 'DESKTOP-2KPJSHU', 'PO351645293248RH66134914046336IE', '2022-02-19 18:54:08', '2022-02-19 18:54:08', 0),
(175, 'DESKTOP-2KPJSHU', 'TQ81645293562BO9341132339050TS', '2022-02-19 18:59:22', '2022-02-19 18:59:22', 0),
(176, 'DESKTOP-2KPJSHU', 'XW91645293691TH2382264684550UI', '2022-02-19 19:01:31', '2022-02-19 19:01:31', 0),
(177, 'DESKTOP-2KPJSHU', 'DE391645293969EK98115170577830JZ', '2022-02-19 19:06:09', '2022-02-19 19:06:09', 0),
(178, 'DESKTOP-2KPJSHU', 'LJ971645294083UX39121751762142RI', '2022-02-19 19:08:03', '2022-02-19 19:08:03', 0),
(179, 'DESKTOP-2KPJSHU', 'VF311645294099PW5123034117386KZ', '2022-02-19 19:08:19', '2022-02-19 19:08:19', 0),
(180, 'DESKTOP-2KPJSHU', 'UB171645294180QU3519743530160PP', '2022-02-19 19:09:40', '2022-02-19 19:09:40', 0),
(181, 'DESKTOP-2KPJSHU', 'WJ881645294374RX880619424326CZ', '2022-02-19 19:12:54', '2022-02-19 19:12:54', 0),
(182, 'DESKTOP-2KPJSHU', 'TA281645306325NY31144786956600PU', '2022-02-19 22:32:05', '2022-02-19 22:32:05', 0),
(183, 'DESKTOP-2KPJSHU', 'RJ711645306358RL5475684092468YI', '2022-02-19 22:32:38', '2022-02-19 22:32:38', 0),
(184, 'DESKTOP-2KPJSHU', 'OB711645306672FK44935920016RF', '2022-02-19 22:37:52', '2022-02-19 22:37:52', 0),
(185, 'DESKTOP-2KPJSHU', 'EQ991645307923YO62164530792300EJ', '2022-02-19 22:58:43', '2022-02-19 22:58:43', 0),
(186, 'DESKTOP-2KPJSHU', 'UA861645307965UR688226539825AH', '2022-02-19 22:59:25', '2022-02-19 22:59:25', 0),
(187, 'DESKTOP-2KPJSHU', 'KD381645308890WG611645308890TG', '2022-02-19 23:14:50', '2022-02-19 23:14:50', 0),
(188, 'DESKTOP-2KPJSHU', 'QX811645308934OH7590491991370AK', '2022-02-19 23:15:34', '2022-02-19 23:15:34', 0),
(189, 'DESKTOP-2KPJSHU', 'OJ581645309437IO2421389022681MD', '2022-02-19 23:23:57', '2022-02-19 23:23:57', 0),
(190, 'DESKTOP-2KPJSHU', 'IL591645309548OL5337842119604NZ', '2022-02-19 23:25:48', '2022-02-19 23:25:48', 0),
(191, 'DESKTOP-2KPJSHU', 'VM271645309704UH9980620175496DK', '2022-02-19 23:28:24', '2022-02-19 23:28:24', 0),
(192, 'DESKTOP-2KPJSHU', 'XH621645309830XP5724679647450ZR', '2022-02-19 23:30:30', '2022-02-19 23:30:30', 0),
(193, 'DESKTOP-2KPJSHU', 'SR931645310769PA8059231187684PY', '2022-02-19 23:46:09', '2022-02-19 23:46:09', 0),
(194, 'DESKTOP-2KPJSHU', 'WG401645311194KI26131624895520KV', '2022-02-19 23:53:13', '2022-02-19 23:53:13', 0),
(195, 'DESKTOP-2KPJSHU', 'QL291645321559PP86148078940310GW', '2022-02-20 02:45:59', '2022-02-20 02:45:59', 0),
(196, 'DESKTOP-2KPJSHU', 'PK381645339591HE37108592413006WG', '2022-02-20 07:46:30', '2022-02-20 07:46:30', 0),
(197, 'DESKTOP-2KPJSHU', 'MH301645340376BH31105301784064KY', '2022-02-20 07:59:36', '2022-02-20 07:59:36', 0),
(198, 'DESKTOP-2KPJSHU', 'JX291645343625SL5241133590625JX', '2022-02-20 08:53:45', '2022-02-20 08:53:45', 0),
(199, 'DESKTOP-2KPJSHU', 'OX361645354343SU4911517480401UD', '2022-02-20 11:52:23', '2022-02-20 11:52:23', 0),
(200, 'DESKTOP-2KPJSHU', 'VY591645358204SV1041133955100VY', '2022-02-20 12:56:44', '2022-02-20 12:56:44', 0),
(201, 'DESKTOP-2KPJSHU', 'FR361645359771XK541133994275WY', '2022-02-20 13:22:51', '2022-02-20 13:22:51', 0),
(202, 'DESKTOP-2KPJSHU', 'TV771645360337FD83131628826960IU', '2022-02-20 13:32:17', '2022-02-20 13:32:17', 0),
(203, 'DESKTOP-2KPJSHU', 'RX781645360344DC8587204098232GW', '2022-02-20 13:32:24', '2022-02-20 13:32:24', 0),
(204, 'DESKTOP-2KPJSHU', 'KS581645360387ML87120111308251QC', '2022-02-20 13:33:07', '2022-02-20 13:33:07', 0),
(205, 'DESKTOP-2KPJSHU', 'JP951645360402IP15106948426130NC', '2022-02-20 13:33:22', '2022-02-20 13:33:22', 0),
(206, 'DESKTOP-2KPJSHU', 'DU911645364560MM2074041405200OB', '2022-02-20 14:42:40', '2022-02-20 14:42:40', 0),
(207, 'DESKTOP-2KPJSHU', 'NC81645364602OC3614808281418EV', '2022-02-20 14:43:22', '2022-02-20 14:43:22', 0),
(208, 'DESKTOP-2KPJSHU', 'QM701645364961FF6629616569298DV', '2022-02-20 14:49:21', '2022-02-20 14:49:21', 0),
(209, 'DESKTOP-2KPJSHU', 'PP571645365514EO9727971213738XA', '2022-02-20 14:58:34', '2022-02-20 14:58:34', 0),
(210, 'DESKTOP-2KPJSHU', 'VG551645365815WB501645365815BN', '2022-02-20 15:03:35', '2022-02-20 15:03:35', 0),
(211, 'DESKTOP-2KPJSHU', 'HN661645365869GL55106948781485IF', '2022-02-20 15:04:29', '2022-02-20 15:04:29', 0),
(212, 'DESKTOP-2KPJSHU', 'PV281645366038LN2423035124532HA', '2022-02-20 15:07:18', '2022-02-20 15:07:18', 0),
(213, 'DESKTOP-2KPJSHU', 'WY651645366197MW10153019056321RC', '2022-02-20 15:09:57', '2022-02-20 15:09:57', 0),
(214, 'DESKTOP-2KPJSHU', 'BU541645366295NR7734552692195WM', '2022-02-20 15:11:35', '2022-02-20 15:11:35', 0),
(215, 'DESKTOP-2KPJSHU', 'XG491645366593EV391645366593SL', '2022-02-20 15:16:33', '2022-02-20 15:16:33', 0),
(216, 'DESKTOP-2KPJSHU', 'IR911645366737TY5265814669480NW', '2022-02-20 15:18:57', '2022-02-20 15:18:57', 0),
(217, 'DESKTOP-2KPJSHU', 'ZN571645366850MO72110239578950NH', '2022-02-20 15:20:50', '2022-02-20 15:20:50', 0),
(218, 'DESKTOP-2KPJSHU', 'IK361645366995MW9960878578815HH', '2022-02-20 15:23:15', '2022-02-20 15:23:15', 0),
(219, 'DESKTOP-2KPJSHU', 'CS691645367032IZ523035138448QC', '2022-02-20 15:23:52', '2022-02-20 15:23:52', 0),
(220, 'DESKTOP-2KPJSHU', 'ZT791645367436RZ5127971246412CN', '2022-02-20 15:30:36', '2022-02-20 15:30:36', 0),
(221, 'DESKTOP-2KPJSHU', 'KU301645367522XD3311517572654CK', '2022-02-20 15:32:02', '2022-02-20 15:32:02', 0),
(222, 'DESKTOP-2KPJSHU', 'PJ851645367605QA2532907352100CF', '2022-02-20 15:33:25', '2022-02-20 15:33:25', 0),
(223, 'DESKTOP-2KPJSHU', 'ZB551645369151VA138226845755FB', '2022-02-20 15:59:11', '2022-02-20 15:59:11', 0),
(224, 'DESKTOP-2KPJSHU', 'NE21645369295EO552651817440CX', '2022-02-20 16:01:35', '2022-02-20 16:01:35', 0),
(225, 'DESKTOP-2KPJSHU', 'GB51645369346MH9155942557764NV', '2022-02-20 16:02:26', '2022-02-20 16:02:26', 0),
(226, 'DESKTOP-2KPJSHU', 'VC771645369351ZY4742779603126EU', '2022-02-20 16:02:31', '2022-02-20 16:02:31', 0),
(227, 'DESKTOP-2KPJSHU', 'RR961645369386PN93146437875354CK', '2022-02-20 16:03:06', '2022-02-20 16:03:06', 0),
(228, 'DESKTOP-2KPJSHU', 'NM981645369462AF38102012906644GM', '2022-02-20 16:04:22', '2022-02-20 16:04:22', 0),
(229, 'DESKTOP-2KPJSHU', 'JN581645369501IQ99105303648064PJ', '2022-02-20 16:05:01', '2022-02-20 16:05:01', 0),
(230, 'DESKTOP-2KPJSHU', 'ZY81645369532ES54141501779752GV', '2022-02-20 16:05:32', '2022-02-20 16:05:32', 0),
(231, 'DESKTOP-2KPJSHU', 'EN241645369699DX3437843503077MJ', '2022-02-20 16:08:19', '2022-02-20 16:08:19', 0),
(232, 'DESKTOP-2KPJSHU', 'CF151645369753PP5692140706168HT', '2022-02-20 16:09:13', '2022-02-20 16:09:13', 0),
(233, 'DESKTOP-2KPJSHU', 'KJ891645377628PT8797077280052JJ', '2022-02-20 18:20:28', '2022-02-20 18:20:28', 0),
(234, 'DESKTOP-2KPJSHU', 'HX41645378350OO9731262188650CP', '2022-02-20 18:32:30', '2022-02-20 18:32:30', 0),
(235, 'DESKTOP-2KPJSHU', 'CT401645378603GN981645378603PP', '2022-02-20 18:36:43', '2022-02-20 18:36:43', 0),
(236, 'DESKTOP-2KPJSHU', 'NQ941645378646VB4446070602088AN', '2022-02-20 18:37:26', '2022-02-20 18:37:26', 0),
(237, 'DESKTOP-2KPJSHU', 'HE371645379103RW2652652131296WK', '2022-02-20 18:45:03', '2022-02-20 18:45:03', 0),
(238, 'DESKTOP-2KPJSHU', 'PS541645379183DZ48138211851372BV', '2022-02-20 18:46:23', '2022-02-20 18:46:23', 0),
(239, 'DESKTOP-2KPJSHU', 'EA481645379298XA46116821930158AH', '2022-02-20 18:48:18', '2022-02-20 18:48:18', 0),
(240, 'DESKTOP-2KPJSHU', 'LE871645379327RA9270751311061YE', '2022-02-20 18:48:47', '2022-02-20 18:48:47', 0),
(241, 'DESKTOP-2KPJSHU', 'TR91645379376YK2236198346272OP', '2022-02-20 18:49:36', '2022-02-20 18:49:36', 0),
(242, 'DESKTOP-2KPJSHU', 'PR111645379421MY9497077385839AE', '2022-02-20 18:50:21', '2022-02-20 18:50:21', 0),
(243, 'DESKTOP-2KPJSHU', 'BM691645379448XQ1095432007984NI', '2022-02-20 18:50:48', '2022-02-20 18:50:48', 0),
(244, 'DESKTOP-2KPJSHU', 'KT591645379539JG17115176567730KA', '2022-02-20 18:52:19', '2022-02-20 18:52:19', 0),
(245, 'DESKTOP-2KPJSHU', 'LL111645379688TH2148084171920II', '2022-02-20 18:54:48', '2022-02-20 18:54:48', 0),
(246, 'DESKTOP-2KPJSHU', 'RO601645379760FW9962524430880WO', '2022-02-20 18:56:00', '2022-02-20 18:56:00', 0),
(247, 'DESKTOP-2KPJSHU', 'OM751645379770AP4634552975170RZ', '2022-02-20 18:56:10', '2022-02-20 18:56:10', 0),
(248, 'DESKTOP-2KPJSHU', 'EQ991645379887YO62164537988700EJ', '2022-02-20 18:58:07', '2022-02-20 18:58:07', 0),
(249, 'DESKTOP-2KPJSHU', 'RL561645379933OJ1078978236784OV', '2022-02-20 18:58:53', '2022-02-20 18:58:53', 0),
(250, 'DESKTOP-2KPJSHU', 'CT391645380014QG7682269000700XS', '2022-02-20 19:00:14', '2022-02-20 19:00:14', 0),
(251, 'DESKTOP-2KPJSHU', 'WN841645380066BA37108595084356OX', '2022-02-20 19:01:06', '2022-02-20 19:01:06', 0),
(252, 'DESKTOP-2KPJSHU', 'BK61645380148OF9282269007400ZN', '2022-02-20 19:02:28', '2022-02-20 19:02:28', 0),
(253, 'DESKTOP-2KPJSHU', 'PY131645380193ZS6419744562316HQ', '2022-02-20 19:03:13', '2022-02-20 19:03:13', 0),
(254, 'DESKTOP-2KPJSHU', 'OV11645380208DB2311517661456RZ', '2022-02-20 19:03:28', '2022-02-20 19:03:28', 0),
(255, 'DESKTOP-2KPJSHU', 'RU711645380216EP75106949714040KQ', '2022-02-20 19:03:36', '2022-02-20 19:03:36', 0),
(256, 'DESKTOP-2KPJSHU', 'NU631645380273YQ34134921182386OP', '2022-02-20 19:04:32', '2022-02-20 19:04:32', 0),
(257, 'DESKTOP-2KPJSHU', 'NL51645380290HP9859233690440CH', '2022-02-20 19:04:50', '2022-02-20 19:04:50', 0),
(258, 'DESKTOP-2KPJSHU', 'EZ561645380423JZ5275687499458GX', '2022-02-20 19:07:03', '2022-02-20 19:07:03', 0),
(259, 'DESKTOP-2KPJSHU', 'BZ751645380435WF8931262228265JA', '2022-02-20 19:07:15', '2022-02-20 19:07:15', 0),
(260, 'DESKTOP-2KPJSHU', 'AE571645380573BI12153020393289TF', '2022-02-20 19:09:33', '2022-02-20 19:09:33', 0),
(261, 'DESKTOP-2KPJSHU', 'YJ221645380602YA5442779895652YZ', '2022-02-20 19:10:02', '2022-02-20 19:10:02', 0),
(262, 'DESKTOP-2KPJSHU', 'JL361645380666ED8454297561978RK', '2022-02-20 19:11:06', '2022-02-20 19:11:06', 0),
(263, 'DESKTOP-2KPJSHU', 'FX1001645380684GS8785559795568BB', '2022-02-20 19:11:24', '2022-02-20 19:11:24', 0),
(264, 'DESKTOP-2KPJSHU', 'SF711645380705PP27133275837105PV', '2022-02-20 19:11:45', '2022-02-20 19:11:45', 0),
(265, 'DESKTOP-2KPJSHU', 'BM291645381122XI53134921252004IH', '2022-02-20 19:18:42', '2022-02-20 19:18:42', 0),
(266, 'DESKTOP-2KPJSHU', 'HR811645381157DP1037843766611LJ', '2022-02-20 19:19:17', '2022-02-20 19:19:17', 0),
(267, 'DESKTOP-2KPJSHU', 'ZA231645381203JQ2478978297744YV', '2022-02-20 19:20:03', '2022-02-20 19:20:03', 0),
(268, 'DESKTOP-2KPJSHU', 'ZT791645381235BR29110240542745KQ', '2022-02-20 19:20:35', '2022-02-20 19:20:35', 0),
(269, 'DESKTOP-2KPJSHU', 'KB931645381353SC5447716059237GV', '2022-02-20 19:22:33', '2022-02-20 19:22:33', 0),
(270, 'DESKTOP-2KPJSHU', 'FS101645381377NR9697077501243SA', '2022-02-20 19:22:57', '2022-02-20 19:22:57', 0),
(271, 'DESKTOP-2KPJSHU', 'JC871645381385RI3993786738945UU', '2022-02-20 19:23:05', '2022-02-20 19:23:05', 0),
(272, 'DESKTOP-2KPJSHU', 'HO261645381401YJ83138212037684NG', '2022-02-20 19:23:20', '2022-02-20 19:23:20', 0),
(273, 'DESKTOP-2KPJSHU', 'KB241645381416HR13148084327440TD', '2022-02-20 19:23:36', '2022-02-20 19:23:36', 0),
(274, 'DESKTOP-2KPJSHU', 'TW511645381457FD51105304413248LZ', '2022-02-20 19:24:16', '2022-02-20 19:24:16', 0),
(275, 'DESKTOP-2KPJSHU', 'LN841645381506LN55115176705420WQ', '2022-02-20 19:25:06', '2022-02-20 19:25:06', 0),
(276, 'DESKTOP-2KPJSHU', 'WG801645381869SK98100368294009FT', '2022-02-20 19:31:09', '2022-02-20 19:31:09', 0),
(277, 'DESKTOP-2KPJSHU', 'GF841645381909JJ9414808437181JN', '2022-02-20 19:31:49', '2022-02-20 19:31:49', 0),
(278, 'DESKTOP-2KPJSHU', 'CE121645381988NE8195432155304CA', '2022-02-20 19:33:08', '2022-02-20 19:33:08', 0),
(279, 'DESKTOP-2KPJSHU', 'OG811645382003IH5155942988102KJ', '2022-02-20 19:33:23', '2022-02-20 19:33:23', 0),
(280, 'DESKTOP-2KPJSHU', 'BR91645382015JN7080623718735IA', '2022-02-20 19:33:35', '2022-02-20 19:33:35', 0),
(281, 'DESKTOP-2KPJSHU', 'ON751645382036SV3127971494612BC', '2022-02-20 19:33:56', '2022-02-20 19:33:56', 0),
(282, 'DESKTOP-2KPJSHU', 'MX21645382052LS351006843612YD', '2022-02-20 19:34:12', '2022-02-20 19:34:12', 0),
(283, 'DESKTOP-2KPJSHU', 'AR31645382067FU9351006844077FU', '2022-02-20 19:34:27', '2022-02-20 19:34:27', 0),
(284, 'DESKTOP-2KPJSHU', 'FX391645382074JF1454297608442LE', '2022-02-20 19:34:34', '2022-02-20 19:34:34', 0),
(285, 'DESKTOP-2KPJSHU', 'NL541645382084JE8460879137108EV', '2022-02-20 19:34:44', '2022-02-20 19:34:44', 0),
(286, 'DESKTOP-2KPJSHU', 'TI451645382092ZB6593786779244NG', '2022-02-20 19:34:52', '2022-02-20 19:34:52', 0),
(287, 'DESKTOP-2KPJSHU', 'CM951645382124YP331262260356BK', '2022-02-20 19:35:24', '2022-02-20 19:35:24', 0),
(288, 'DESKTOP-2KPJSHU', 'GN691645382132QQ45110240602844CU', '2022-02-20 19:35:32', '2022-02-20 19:35:32', 0),
(289, 'DESKTOP-2KPJSHU', 'TX601645382196GF7151006848076VP', '2022-02-20 19:36:36', '2022-02-20 19:36:36', 0),
(290, 'DESKTOP-2KPJSHU', 'JZ921645382205EA4060879141585CU', '2022-02-20 19:36:45', '2022-02-20 19:36:45', 0),
(291, 'DESKTOP-2KPJSHU', 'YO831645382252FX6192141406112YJ', '2022-02-20 19:37:32', '2022-02-20 19:37:32', 0),
(292, 'DESKTOP-2KPJSHU', 'VI771645382265JI8160879143805PI', '2022-02-20 19:37:44', '2022-02-20 19:37:44', 0),
(293, 'DESKTOP-2KPJSHU', 'BA271645382273HT56106949847745SH', '2022-02-20 19:37:53', '2022-02-20 19:37:53', 0),
(294, 'DESKTOP-2KPJSHU', 'IA781645382283EQ79156311316885KV', '2022-02-20 19:38:03', '2022-02-20 19:38:03', 0),
(295, 'DESKTOP-2KPJSHU', 'NC71645382321YV1397077556939MY', '2022-02-20 19:38:41', '2022-02-20 19:38:41', 0),
(296, 'DESKTOP-2KPJSHU', 'DG321645382446WU2962524532948ZI', '2022-02-20 19:40:46', '2022-02-20 19:40:46', 0),
(297, 'DESKTOP-2KPJSHU', 'ZF901645386515SH4683914712265KG', '2022-02-20 20:48:35', '2022-02-20 20:48:35', 0),
(298, 'DESKTOP-2KPJSHU', 'AY351645386531ME55153020947383WW', '2022-02-20 20:48:51', '2022-02-20 20:48:51', 0),
(299, 'DESKTOP-2KPJSHU', 'XF961645386906DZ498226934530RH', '2022-02-20 20:55:06', '2022-02-20 20:55:06', 0),
(300, 'DESKTOP-2KPJSHU', 'NS301645386928GS38129985567312FJ', '2022-02-20 20:55:27', '2022-02-20 20:55:27', 0),
(301, 'DESKTOP-2KPJSHU', 'BZ541645386956WB1051006995636HA', '2022-02-20 20:55:56', '2022-02-20 20:55:56', 0),
(302, 'DESKTOP-2KPJSHU', 'YI301645387193KZ60164538719300EO', '2022-02-20 20:59:53', '2022-02-20 20:59:53', 0),
(303, 'DESKTOP-2KPJSHU', 'QN921645387212HU194936161636JO', '2022-02-20 21:00:12', '2022-02-20 21:00:12', 0),
(304, 'DESKTOP-2KPJSHU', 'ZF901645387225CA23164538722500SJ', '2022-02-20 21:00:25', '2022-02-20 21:00:25', 0),
(305, 'DESKTOP-2KPJSHU', 'PS331645387287ON4774042427915HX', '2022-02-20 21:01:26', '2022-02-20 21:01:26', 0),
(306, 'DESKTOP-2KPJSHU', 'OD271645387324IR69159602570428XB', '2022-02-20 21:02:04', '2022-02-20 21:02:04', 0),
(307, 'DESKTOP-2KPJSHU', 'PP661645387334XC1062524718692FQ', '2022-02-20 21:02:14', '2022-02-20 21:02:14', 0),
(308, 'DESKTOP-2KPJSHU', 'WK791645387400FY2123404055000WK', '2022-02-20 21:03:20', '2022-02-20 21:03:20', 0),
(309, 'DESKTOP-2KPJSHU', 'VW551645387486DH83133276386366FL', '2022-02-20 21:04:45', '2022-02-20 21:04:45', 0),
(310, 'DESKTOP-2KPJSHU', 'LA591645387595MV9734553139495XX', '2022-02-20 21:06:35', '2022-02-20 21:06:35', 0),
(311, 'DESKTOP-2KPJSHU', 'JW771645387606WE849361628180RN', '2022-02-20 21:06:46', '2022-02-20 21:06:46', 0),
(312, 'DESKTOP-2KPJSHU', 'WU791645387633AW40162893375667XO', '2022-02-20 21:07:13', '2022-02-20 21:07:13', 0),
(313, 'DESKTOP-2KPJSHU', 'WW321645387646TY14148084888140IV', '2022-02-20 21:07:26', '2022-02-20 21:07:26', 0),
(314, 'DESKTOP-2KPJSHU', 'WX941645387667NH1711517713669SP', '2022-02-20 21:07:47', '2022-02-20 21:07:47', 0),
(315, 'DESKTOP-2KPJSHU', 'TP651645387869ZV6183914781319KY', '2022-02-20 21:11:09', '2022-02-20 21:11:09', 0),
(316, 'DESKTOP-2KPJSHU', 'LO961645387891HL43144794134408IY', '2022-02-20 21:11:31', '2022-02-20 21:11:31', 0),
(317, 'DESKTOP-2KPJSHU', 'RI71645388044KY98134921819608CU', '2022-02-20 21:14:04', '2022-02-20 21:14:04', 0),
(318, 'DESKTOP-2KPJSHU', 'XP171645388065LE18105304836160HH', '2022-02-20 21:14:25', '2022-02-20 21:14:25', 0),
(319, 'DESKTOP-2KPJSHU', 'UZ731645388099BX51148084928910UB', '2022-02-20 21:14:59', '2022-02-20 21:14:59', 0),
(320, 'DESKTOP-2KPJSHU', 'AW111645388183VN8724680822745LC', '2022-02-20 21:16:23', '2022-02-20 21:16:23', 0),
(321, 'DESKTOP-2KPJSHU', 'VR541645388207EP2732907764140CA', '2022-02-20 21:16:47', '2022-02-20 21:16:47', 0),
(322, 'DESKTOP-2KPJSHU', 'MI411645388271YE8144425483317OM', '2022-02-20 21:17:50', '2022-02-20 21:17:50', 0),
(323, 'DESKTOP-2KPJSHU', 'HW11645388278MD2234553153838YX', '2022-02-20 21:17:58', '2022-02-20 21:17:58', 0),
(324, 'DESKTOP-2KPJSHU', 'FR291645388324YT6090496357820QA', '2022-02-20 21:18:44', '2022-02-20 21:18:44', 0),
(325, 'DESKTOP-2KPJSHU', 'UT811645388373UV458226941865HA', '2022-02-20 21:19:33', '2022-02-20 21:19:33', 0),
(326, 'DESKTOP-2KPJSHU', 'QS611645388442CP9387205587426HT', '2022-02-20 21:20:41', '2022-02-20 21:20:41', 0),
(327, 'DESKTOP-2KPJSHU', 'DV811645388827NJ6237843943021WR', '2022-02-20 21:27:07', '2022-02-20 21:27:07', 0),
(328, 'DESKTOP-2KPJSHU', 'WC451645388854VC6524680832810AP', '2022-02-20 21:27:34', '2022-02-20 21:27:34', 0),
(329, 'DESKTOP-2KPJSHU', 'PB101645388865ZC16129985720335MM', '2022-02-20 21:27:45', '2022-02-20 21:27:45', 0),
(330, 'DESKTOP-2KPJSHU', 'IT51645389042JO10083914841142OA', '2022-02-20 21:30:42', '2022-02-20 21:30:42', 0),
(331, 'DESKTOP-2KPJSHU', 'RD581645389101PH234553171121HP', '2022-02-20 21:31:41', '2022-02-20 21:31:41', 0),
(332, 'DESKTOP-2KPJSHU', 'EH321645389163YT91136567300529RO', '2022-02-20 21:32:43', '2022-02-20 21:32:43', 0),
(333, 'DESKTOP-2KPJSHU', 'CI781645389206YA74105304909184UN', '2022-02-20 21:33:26', '2022-02-20 21:33:26', 0),
(334, 'DESKTOP-2KPJSHU', 'ML171645389322TV96581557288GM', '2022-02-20 21:35:22', '2022-02-20 21:35:22', 0),
(335, 'DESKTOP-2KPJSHU', 'EH301645389701LP3859234029236FT', '2022-02-20 21:41:41', '2022-02-20 21:41:41', 0),
(336, 'DESKTOP-2KPJSHU', 'WW131645389882QQ66162893598318AS', '2022-02-20 21:44:41', '2022-02-20 21:44:41', 0),
(337, 'DESKTOP-2KPJSHU', 'MU641645389903OY5654297866799GM', '2022-02-20 21:45:03', '2022-02-20 21:45:03', 0),
(338, 'DESKTOP-2KPJSHU', 'OI571645389915LS9426326238640SG', '2022-02-20 21:45:15', '2022-02-20 21:45:15', 0),
(339, 'DESKTOP-2KPJSHU', 'PS531645389994YK3136567369502RB', '2022-02-20 21:46:34', '2022-02-20 21:46:34', 0),
(340, 'DESKTOP-2KPJSHU', 'JG461645390032VU70146439712848QM', '2022-02-20 21:47:12', '2022-02-20 21:47:12', 0),
(341, 'DESKTOP-2KPJSHU', 'DV721645390096TW494936170288OB', '2022-02-20 21:48:16', '2022-02-20 21:48:16', 0),
(342, 'DESKTOP-2KPJSHU', 'MO631645390268XA16125049660368TY', '2022-02-20 21:51:08', '2022-02-20 21:51:08', 0),
(343, 'DESKTOP-2KPJSHU', 'JG61645390321WM1419744683852LL', '2022-02-20 21:52:01', '2022-02-20 21:52:01', 0),
(344, 'DESKTOP-2KPJSHU', 'VG941645390394ZN77133276621914LQ', '2022-02-20 21:53:14', '2022-02-20 21:53:14', 0),
(345, 'DESKTOP-2KPJSHU', 'SV401645390470IH1164539047000HL', '2022-02-20 21:54:30', '2022-02-20 21:54:30', 0),
(346, 'DESKTOP-2KPJSHU', 'PF191645390508VM55105304992512DP', '2022-02-20 21:55:08', '2022-02-20 21:55:08', 0),
(347, 'DESKTOP-2KPJSHU', 'FG771645390572RH56141503589192FP', '2022-02-20 21:56:12', '2022-02-20 21:56:12', 0),
(348, 'DESKTOP-2KPJSHU', 'PT151645390774ST6164539077400BV', '2022-02-20 21:59:34', '2022-02-20 21:59:34', 0),
(349, 'DESKTOP-2KPJSHU', 'WT241645390803UK43290781606MP', '2022-02-20 22:00:02', '2022-02-20 22:00:02', 0),
(350, 'DESKTOP-2KPJSHU', 'ND311645390846GZ1275687978916DL', '2022-02-20 22:00:46', '2022-02-20 22:00:46', 0),
(351, 'DESKTOP-2KPJSHU', 'GG341645390886RM8693787280502OC', '2022-02-20 22:01:26', '2022-02-20 22:01:26', 0),
(352, 'DESKTOP-2KPJSHU', 'XQ471645390967MK1631262428373UY', '2022-02-20 22:02:47', '2022-02-20 22:02:47', 0),
(353, 'DESKTOP-2KPJSHU', 'WX531645391006QY22123404325450FT', '2022-02-20 22:03:26', '2022-02-20 22:03:26', 0),
(354, 'DESKTOP-2KPJSHU', 'IP271645391053ML97125049720028RH', '2022-02-20 22:04:13', '2022-02-20 22:04:13', 0),
(355, 'DESKTOP-2KPJSHU', 'AO951645391072RY61151375978624QR', '2022-02-20 22:04:32', '2022-02-20 22:04:32', 0),
(356, 'DESKTOP-2KPJSHU', 'ES631645391095PT9421390084235HB', '2022-02-20 22:04:55', '2022-02-20 22:04:55', 0),
(357, 'DESKTOP-2KPJSHU', 'PG901645391518TA4883914967418CC', '2022-02-20 22:11:58', '2022-02-20 22:11:58', 0),
(358, 'DESKTOP-2KPJSHU', 'DI461645391868UE9288851160872PI', '2022-02-20 22:17:48', '2022-02-20 22:17:48', 0),
(359, 'DESKTOP-2KPJSHU', 'QO731645392055WS5511517744385LO', '2022-02-20 22:20:55', '2022-02-20 22:20:55', 0),
(360, 'DESKTOP-2KPJSHU', 'UR871645392191EJ76134922159662JX', '2022-02-20 22:23:11', '2022-02-20 22:23:11', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `moduly`
--

CREATE TABLE `moduly` (
  `id` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `symbol` varchar(25) COLLATE utf8_polish_ci NOT NULL,
  `producent` text COLLATE utf8_polish_ci NOT NULL,
  `uprawnienia` text COLLATE utf8_polish_ci NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `moduly`
--

INSERT INTO `moduly` (`id`, `nazwa`, `symbol`, `producent`, `uprawnienia`, `opis`) VALUES
(1, 'Serwerownia GRACE', 'M-GRACE', 'USA', '10000000000', 'Serwerownia zespołu AI'),
(2, 'Mostek Dowodzenia', 'M-MD', 'USA', '11000000000', 'Mostek kapitański - dowodzenia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `notatki_ng`
--

CREATE TABLE `notatki_ng` (
  `id` int(11) NOT NULL,
  `identyfikator` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `tytul` text COLLATE utf8_polish_ci NOT NULL,
  `wlasciciel` int(11) NOT NULL,
  `czas` text COLLATE utf8_polish_ci NOT NULL,
  `stan` tinyint(1) NOT NULL,
  `udostepnienie` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `notatki_ng`
--

INSERT INTO `notatki_ng` (`id`, `identyfikator`, `tytul`, `wlasciciel`, `czas`, `stan`, `udostepnienie`) VALUES
(1, '1644743771H5V129934757909', 'testowa', 2, '2022-02-06 09:00', 0, '10000000000'),
(2, '1644743786H6Q27960644362', 'testowa 3', 3, '2022-02-06 09:00', 0, '10000000000'),
(3, '1644743790H7N121711040460', 'testowa 4', 4, '2022-02-06 09:00', 0, '11000000000'),
(4, '1644743790H8C52631801280', 'testowa 5', 2, '2022-02-06 09:00', 2, '10000000000'),
(33, '1645281249H4D60875406213', 'test ostateczny nowej notatki', 2, '2022-02-19 15:34:09', 0, '10000000000'),
(34, '1645281533H33P60875416721', 'dowykonania.sufix', 2, '2022-02-19 15:38:53', 0, '10000000000'),
(35, '1645288563H34C21388751319', '//doskasowaniathis.zalogujOsoba({zalogowany:2,imie', 2, '2022-02-19 17:36:03', 0, '10000000000'),
(36, '1645288932H35O31260489708', '//doskasowaniathis.zalogujOsoba({zalogowany:2,imie', 2, '2022-02-19 17:42:12', 0, '10000000000'),
(37, '1645391490H36D14808523410', 'WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW', 2, '2022-02-20 22:11:30', 0, '10000000000');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `notatki_tr`
--

CREATE TABLE `notatki_tr` (
  `id` int(11) NOT NULL,
  `notatki_ng` int(11) NOT NULL,
  `wersja` int(11) NOT NULL,
  `stan` int(11) NOT NULL,
  `czas` text COLLATE utf8_polish_ci NOT NULL,
  `tresc` text CHARACTER SET utf32 COLLATE utf32_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `notatki_tr`
--

INSERT INTO `notatki_tr` (`id`, `notatki_ng`, `wersja`, `stan`, `czas`, `tresc`) VALUES
(1, 1, 0, 0, '2022-02-06 09:00', 'treść notatki 1 w wersji 0'),
(2, 3, 0, 0, '2022-02-07 19:00', 'treść notatki 3 w wersji 0'),
(3, 1, 1, 0, '2022-03-07 10:00', 'treść notatki 1 w wersji 1'),
(4, 1, 2, 0, '2022-03-07 10:00', 'treść notatki 1 w wersji 2'),
(20, 1, 3, 1, '2022-02-19 07:58:55', 'treść notatki 1 w wersji 3\n'),
(25, 1, 4, 2, '2022-02-19 10:43:31', 'treść notatki 1 w wersji 4\n'),
(26, 1, 5, 1, '2022-02-19 10:44:10', 'treść notatki 1 w wersji 5'),
(27, 1, 6, 0, '2022-02-19 11:39:44', 'treść notatki 1 w wersji 5a'),
(30, 33, 0, 0, '2022-02-19 15:34:09', ''),
(31, 34, 0, 0, '2022-02-19 15:38:53', ''),
(32, 35, 0, 0, '2022-02-19 17:36:03', ''),
(33, 36, 0, 0, '2022-02-19 17:42:12', ''),
(34, 36, 1, 0, '2022-02-19 17:43:00', 'versja 2'),
(35, 36, 2, 0, '2022-02-19 18:37:28', 'versja 2\nwersja 2'),
(36, 3, 1, 0, '2022-02-07 19:50', 'treść notatki 3 w wersji 1'),
(38, 1, 7, 0, '2022-02-19 23:48:42', 'treść notatki 1 w wersji 7 z 2'),
(39, 1, 8, 0, '2022-02-19 23:54:24', 'treść notatki 1 w wersji 8 z 7\n'),
(40, 37, 0, 0, '2022-02-20 22:11:30', ''),
(41, 1, 9, 0, '2022-02-20 22:22:35', 'treść notatki 1 w wersji 8 z 7\n1\n2\n3\n4\n5\n6\n7\n8\n9\n0\n1\n2\n34\n5\n67\n8\n9\n0\n-\nq\nwe\nr\nt\ny\nuii\n\nopp\na\ns\nd\nfg\nh\njk\nl\n;;\nZ\nasd\ns\nfsg\nh\n\nqa\na\n\na\n');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoby`
--

CREATE TABLE `osoby` (
  `id` int(11) NOT NULL,
  `czaszmiana` text COLLATE utf8_polish_ci NOT NULL,
  `kolejnosc` decimal(10,0) NOT NULL,
  `imie` text COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` text COLLATE utf8_polish_ci NOT NULL,
  `funkcja` text COLLATE utf8_polish_ci NOT NULL,
  `specjalnosc` text COLLATE utf8_polish_ci NOT NULL,
  `narodowosc` text COLLATE utf8_polish_ci NOT NULL,
  `userlogin` text COLLATE utf8_polish_ci NOT NULL,
  `rodzaj` tinytext COLLATE utf8_polish_ci NOT NULL,
  `user` tinyint(1) NOT NULL,
  `hasloorg` text COLLATE utf8_polish_ci NOT NULL,
  `autoryzacja` tinyint(1) NOT NULL,
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

INSERT INTO `osoby` (`id`, `czaszmiana`, `kolejnosc`, `imie`, `nazwisko`, `funkcja`, `specjalnosc`, `narodowosc`, `userlogin`, `rodzaj`, `user`, `hasloorg`, `autoryzacja`, `zalogowanyorg`, `blokadaorg`, `hannahorg`, `uzytkownik`, `czaslogowania`, `czaswylogowania`, `odpowiedz`, `reakcja`, `haslonew`, `zalogowanynew`, `blokadanew`, `hannahnew`) VALUES
(0, '', '0', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, '', 0, 0, 0),
(1, '', '0', 'Dedal', '', 'statek', '', '', '', 'M', 2, '!@#', 0, 1, 0, 1, '', '2022-01-30 13:39:18', '', 'Dedal jest tylko jeden', 0, '!@#', 1, 0, 1),
(2, '2022-02-19 12:39:22', '1', 'John', 'Spow', 'Kapitan', 'nawigator, pilot', 'USA', 'john', 'M', 1, '123', 1, 0, 0, 0, 'DESKTOP-2KPJSHU', '2022-02-19 12:39:22', '', 'Witaj John Spow', 200, '123', 1, 0, 0),
(3, '', '2', 'Wang', 'Yaping', 'I oficer', 'astrofizyk, dyplomata', 'Chiny', 'wang', 'K', 1, '123', 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '', '', 'Witaj Louise Banks', 400, '123', 0, 0, 0),
(4, '2022-01-30 23:07:50', '3', 'William', 'Weir', 'II oficer', 'matematyk, inżynier napędu', 'Unia Europejska', 'william', 'M', 1, '123', 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '2022-01-30 23:07:50', '', 'Witaj Dave Bowman', 400, '123', 0, 0, 0),
(5, '', '4', 'Fatima', 'Punjabi', 'III oficer', 'elektronik, nawigator', 'Indie', 'fatima', 'K', 1, '123', 0, 0, 0, 0, '', '', '', 'Witaj Dwayne Hicks', 400, '123', 0, 0, 0),
(6, '2022-02-05 11:34:18', '5', 'Borys', 'Gulkov', 'IV oficer', 'pilot, nawigator', 'Rosja', 'borys', 'M', 1, '123', 1, 0, 0, 0, 'DESKTOP-2KPJSHU', '2022-02-05 11:26:00', '2022-02-05 11:34:18', 'Witaj Anna Lee Dwell', 400, '123', 0, 0, 0),
(7, '2022-01-30 23:03:13', '6', 'Fiona', 'Zaharova', 'Lekarz', 'psychiatra, programista', 'Chiny', 'fiona', 'K', 1, '123', 0, 0, 0, 0, 'Komputer-Tomka', '2022-01-30 23:03:13', '', 'Witaj William Weir', 400, '123', 0, 0, 0),
(8, '', '7', 'Liu', 'Yang', 'Naukowiec', 'lekarz, biolog', 'Chiny', 'liu', 'K', 1, '123', 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '', '', 'Witaj Elizabeth Halperin', 400, '123', 0, 0, 0),
(9, '', '8', 'Hannah', 'Stevens', 'Informatyk', 'programista, łącznościowiec', 'Unia Europejska', 'hannah', 'K', 1, '123', 0, 0, 0, 0, 'Komputer-Tomka', '', '', 'Witaj Hannah Stevens', 0, '!@#', 0, 0, 0),
(10, '', '9', 'Dave', 'Bowman', 'Łącznościowiec', 'łącznościowiec, psycholog', 'USA', 'dave', 'M', 1, '123', 0, 0, 0, 0, '', '', '', 'Witam Joshua', 0, 'pomoc', 0, 0, 0),
(11, '', '10', 'Rajeh', ' Amit', 'Pilot', 'pilot / nawigator', 'Indie', 'rajeh', 'M', 1, '123', 0, 0, 0, 0, '', '', '', 'Witam MG', 0, '123', 0, 0, 0),
(12, '', '11', 'GRACE', ' ', 'SI', '', '', '', 'K', 2, '123', 0, 0, 0, 0, '', '', '', 'Witam Grace', 0, '123', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `polecenia`
--

CREATE TABLE `polecenia` (
  `id` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `zalogowany` tinyint(1) NOT NULL,
  `wylogowany` tinyint(1) NOT NULL,
  `autoryzacja` tinyint(1) NOT NULL,
  `polecenie` tinyint(1) NOT NULL,
  `uprawnienia` text COLLATE utf8_polish_ci NOT NULL,
  `czas` text COLLATE utf8_polish_ci NOT NULL,
  `dzialania` text COLLATE utf8_polish_ci NOT NULL,
  `komunikat` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `polecenia`
--

INSERT INTO `polecenia` (`id`, `nazwa`, `zalogowany`, `wylogowany`, `autoryzacja`, `polecenie`, `uprawnienia`, `czas`, `dzialania`, `komunikat`) VALUES
(1, 'pomoc', 1, 1, 0, 1, '11111111111', '500', 'pomoc_1', 'Dostepne polecenia w zależności od logowania i autoryzacji'),
(2, 'zaloguj', 0, 1, 0, 2, '11111111111', '500', 'zaloguj_1', 'Logowanie do terminala'),
(3, 'wyloguj', 1, 0, 0, 3, '11111111111', '500', 'wyloguj_1', 'Wylogowanie z terminala'),
(4, 'moduły', 1, 0, 0, 4, '11111111111', '1000', 'moduly_1', 'Lista modułów Dedala'),
(5, 'login', 0, 1, 0, 2, '', '250', 'zaloguj_0', 'Logowanie do terminala'),
(6, 'pomoc cała', 1, 1, 1, 6, '11111111111', '500', 'pomoc_cala_1', 'Wszystkie polecenia w zależności od logowania'),
(7, 'pomoc cala', 1, 1, 1, 6, '', '500', 'pomoc_cala_0', 'Wszystkie polecenia w zależności od logowania'),
(8, 'pomoc all', 1, 1, 1, 6, '', '500', 'pomoc_cala_0', 'Wszystkie polecenia w zależności od logowania'),
(9, 'help', 1, 1, 0, 1, '', '500', 'pomoc_0', 'Dostepne polecenia w zależności od logowania i autoryzacji'),
(10, 'moduly', 1, 0, 0, 4, '', '1000', 'moduly_0', 'Lista modułów Dedala'),
(11, 'notatki', 1, 0, 0, 11, '11111111111', '500', 'notatki_1', 'Lista tytułów notatek'),
(12, '?', 1, 1, 0, 1, '', '500', 'pomoc_0', 'Dostepne polecenia w zależności od logowania i autoryzacji'),
(13, 'notatka wczytaj', 1, 0, 0, 13, '11111111111', '500', 'notatka_1', 'Wczytanie notatki'),
(14, 'notatka', 1, 0, 0, 13, '', '500', 'notatka_0', 'Wczytanie notatki'),
(15, 'notatka edytuj', 1, 0, 0, 15, '11111111111', '500', 'edytuj_1', 'Edycja notatki'),
(16, 'edytuj', 1, 0, 0, 15, '', '500', 'edytuj_0', 'Edycja notatki'),
(17, 'notatka zapisz', 1, 0, 0, 17, '11111111111', '500', 'zapisz_1', 'Zapis notatki'),
(18, 'zapisz', 1, 0, 0, 17, '', '500', 'zapisz_0', 'Zapis notatki'),
(19, 'notatka nowa', 1, 0, 0, 19, '11111111111', '500', 'nowa_1', 'Nowa notatka nagłówek'),
(20, 'nowa', 1, 0, 0, 19, '', '500', 'nowa_0', 'Nowa notatka nagłówek'),
(21, 'notatka zamknij', 1, 0, 0, 21, '11111111111', '500', 'zamknij_1', 'Zamyka edycję notatki bez edycji'),
(22, 'zamknij', 1, 0, 0, 21, '', '500', 'zamknij_0', 'Zamyka edycję notatki bez edycji'),
(23, 'notatka wersja', 1, 0, 0, 23, '11111111111', '500', 'wersja_1', 'Zmienia wersję notatki'),
(24, 'wersja', 1, 0, 0, 23, '', '500', 'wersja_0', 'Zmienia wersję notatki'),
(25, 'historia kasuj', 1, 1, 0, 25, '11111111111', '500', 'kasujh_1', 'Kasuje historię komunikatów'),
(26, 'kasujh', 1, 1, 0, 25, '', '500', 'kasujh_0', 'Kasuje historię komunikatów'),
(27, 'polecenia kasuj', 1, 1, 0, 27, '11111111111', '500', 'kasujp_1', 'Kasuje historię poleceń'),
(28, 'kasujp', 1, 1, 0, 27, '', '500', 'kasujp_0', 'Kasuje historię poleceń'),
(29, 'wszystko kasuj', 1, 1, 0, 29, '11111111111', '500', 'kasuja_7', 'Kasuje historię komunikatów i poleceń'),
(30, 'kasuja', 1, 1, 0, 29, '', '500', 'kasuja_0', 'Kasuje historię komunikatów i poleceń'),
(31, 'notatka kasuj', 1, 1, 0, 31, '11111111111', '500', 'kasujn_1', 'kasuje wyświetlenie notatki'),
(32, 'kasujn', 1, 1, 0, 31, '', '500', 'kasujn_0', 'kasuje wyświetlenie notatki');

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
(2, '2022-01-16 18:50:01', 'Obecna data startu Dedala', '2043-03-11 12:01:02'),
(3, '', 'Oryginalna data startu akcji na Dedalu', '2045-04-18 21:35:00'),
(4, '2022-01-30 13:49:01', 'Obecna data akcji na Dedalu', '2045-04-18 21:35:00'),
(5, '2022-01-30 13:49:01', 'Stan larpa', 'START'),
(6, '2022-01-30 13:49:01', 'Data startu larpa ', '2022-01-30 13:49:01');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `dzialania`
--
ALTER TABLE `dzialania`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komputery`
--
ALTER TABLE `komputery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moduly`
--
ALTER TABLE `moduly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `symbol` (`symbol`);

--
-- Indexes for table `notatki_ng`
--
ALTER TABLE `notatki_ng`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notatki_tr`
--
ALTER TABLE `notatki_tr`
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
-- AUTO_INCREMENT dla tabeli `dzialania`
--
ALTER TABLE `dzialania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT dla tabeli `komputery`
--
ALTER TABLE `komputery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;
--
-- AUTO_INCREMENT dla tabeli `moduly`
--
ALTER TABLE `moduly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `notatki_ng`
--
ALTER TABLE `notatki_ng`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT dla tabeli `notatki_tr`
--
ALTER TABLE `notatki_tr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT dla tabeli `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT dla tabeli `polecenia`
--
ALTER TABLE `polecenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT dla tabeli `ustawienia`
--
ALTER TABLE `ustawienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
