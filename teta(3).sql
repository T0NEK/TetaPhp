-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 21 Kwi 2022, 14:17
-- Wersja serwera: 10.1.28-MariaDB
-- Wersja PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
(1, 'pomoc', 'pomoc_1', '50', 'komunikat', '', 'dostępne polecenia:', '', 'pomoc_2', 'pomoc_2', ''),
(2, 'pomoc', 'pomoc_2', '50', 'linie', '', 'polecenia', '', 'pomoc_3', 'pomoc_3', 'wyświetlenie listy poleceń'),
(3, 'pomoc', 'pomoc_3', '50', 'komunikat', '', 'koniec dostępnych poleceń', '', 'end', 'end', ''),
(4, 'zaloguj', 'zaloguj_1', '50', 'komunikat', '', 'procedura: logowanie do terminala', '', 'zaloguj_2', 'zaloguj_2', ''),
(5, 'zaloguj', 'zaloguj_2', '50', 'dane', '', 'podaj login ?', '', 'zaloguj_3', 'zaloguj_3', ''),
(6, 'zaloguj', 'zaloguj_3', '50', 'zapiszdane', '', 'login', '', 'zaloguj_4', 'zaloguj_4', ''),
(7, 'zaloguj', 'zaloguj_4', '50', 'password', '', 'on', '', 'zaloguj_5', 'zaloguj_5', 'załączenie ***'),
(8, 'zaloguj', 'zaloguj_5', '50', 'dane', '', 'podaj hasło ?', '', 'zaloguj_6', 'zaloguj_6', ''),
(9, 'zaloguj', 'zaloguj_6', '50', 'dodajdane', '', 'hasło', '', 'zaloguj_7', 'zaloguj_7', ''),
(10, 'zaloguj', 'zaloguj_7', '50', 'password', '', 'off', '', 'zaloguj_8', 'zaloguj_8', 'wyłączenie ***'),
(11, 'zaloguj', 'zaloguj_8', '50', 'komunikat', '', 'loguję', '', 'zaloguj_9', 'zaloguj_9', ''),
(12, 'zaloguj', 'zaloguj_9', '50', 'logowanie', '', '', '', 'end', 'end', ''),
(13, 'wyloguj', 'wyloguj_1', '50', 'komunikat', '', 'procedura: wylogowanie z terminala', '', 'wyloguj_2', 'wyloguj_2', ''),
(14, 'wyloguj', 'wyloguj_8', '50', 'wylogowanie', '', '', '', 'end', 'end', ''),
(15, 'moduły', 'moduly_1', '50', 'komunikat', '', 'wczytuję dostępne moduły', '', 'moduly_2', 'moduly_2', ''),
(16, 'moduły', 'moduly_2', '50', 'getset', '', 'wczytaj', 'moduly', 'moduly_4', 'moduly_3', 'wczytuje moduły'),
(17, 'moduły', 'moduly_4', '50', 'linie', '', 'moduly', '', 'moduly_5', 'moduly_5', 'wyswietla listę modułów'),
(28, 'pomoc cała', 'pomoc_cala_1', '50', 'komunikat', '', 'wszystkie dostępne polecenia:', '', 'pomoc_cala_2', 'pomoc_cala_2', ''),
(29, 'pomoc cała', 'pomoc_cala_2', '50', 'linie', '', 'polecenia_all', '', 'pomoc_cala_3', 'pomoc_cala_3', 'wyświetlenie listy poleceń'),
(30, 'pomoc cała', 'pomoc_cala_3', '50', 'komunikat', '', 'koniec dostępnych poleceń', '', 'end', 'end', ''),
(31, 'pomoc', 'pomoc_0', '50', 'komunikat', '', 'wykonuję: [ pomoc ]', '', 'pomoc_1', 'pomoc_1', 'alternatywa'),
(32, 'moduły', 'moduly_0', '50', 'komunikat', '', 'wykonuję: [ moduły ]', '', 'moduly_1', 'moduly_1', 'alternatywa'),
(34, 'pomoc cała', 'pomoc_cala_0', '50', 'komunikat', '', 'wykonuję: [ pomoc cała ]', '', 'pomoc_cala_1', 'pomoc_cala_1', 'alternatywa'),
(35, 'zaloguj', 'zaloguj_0', '50', 'komunikat', '', 'wykonuję: [ zaloguj ]', '', 'zaloguj_1', 'zaloguj_1', 'alternatywa'),
(36, 'wyloguj', 'wyloguj_0', '50', 'komunikat', '', 'wykonuję: [ wyloguj ]', '', 'wyloguj_1', 'wyloguj_1', 'alternatywa'),
(37, 'notatki', 'notatki_1', '50', 'komunikat', '', 'wczytuję dostępne notatki', '', 'notatki_2', 'notatki_2', ''),
(38, 'notatki', 'notatki_2', '50', 'getset', '', 'wczytaj', 'notatki', 'notatki_4', 'notatki_3', 'wczytuje notatki'),
(40, 'notatki', 'notatki_4', '50', 'linie', '', 'notatki', '', 'notatki_5', 'notatki_5', 'wyświetla listę tytułów notatek'),
(42, 'notatki', 'notatki_0', '50', 'komunikat', '', 'wykonuję: [ notatki ]', '', 'notatki_1', 'notatki_1', 'alternatywa'),
(43, 'notatka wczytaj', 'notatka_0', '50', 'komunikat', '', 'wykonuję: [ notatka wczytaj ]', '', 'notatka_1', 'notatka_1', 'alternatywa'),
(44, 'notatka wczytaj', 'notatka_1', '50', 'komunikat', '', 'wczytuję notatkę', '', 'notatka_8', 'notatka_8', ''),
(45, 'notatki', 'notatki_3', '50', 'informacja', 'problem z dostępem do notatek: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(46, 'moduly', 'moduly_3', '50', 'informacja', 'problem z dostępem do modułów: ', 'tekstAlerttekst', '', 'end', 'end', 'informacja z error'),
(47, 'notatka wczytaj', 'notatka_2', '50', 'dane', '', 'podaj id notatki ?', '', 'notatka_3', 'notatka_3', ''),
(48, 'notatka wczytaj', 'notatka_3', '50', 'zapiszdane', '', 'nr notatki', '', 'notatka_4', 'notatka_4', ''),
(49, 'notatka wczytaj', 'notatka_4', '50', 'informacja', 'wczytuję motatkę nr: ', 'bufor1', '', 'notatka_5', 'notatka_5', ''),
(50, 'notatka wczytaj', 'notatka_5', '50', 'getset', '', 'wczytaj', 'notatka', 'notatka_7', 'notatka_6', ''),
(52, 'notatka wczytaj', 'notatka_7', '50', 'informacja', 'wczytano notatkę: ', 'tekst', '', 'end', 'end', ''),
(53, 'notatka wczytaj', 'notatka_6', '50', 'informacja', 'problem z wczytaniem notatki: ', 'tekstAlert', '', 'end', 'end', ''),
(54, 'moduły', 'moduly_5', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(55, 'notatki', 'notatki_5', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(56, 'notatka edytuj', 'edytuj_0', '50', 'komunikat', '', 'wykonuję: [ notatka edytuj ]', '', 'edytuj_1', 'edytuj_1', 'alternatywa'),
(57, 'notatka edytuj', 'edytuj_1', '50', 'warunek', '', 'notatka', 'wczytana', 'edytuj_3', 'edytuj_2', 'czy wczytana?'),
(58, 'notatka edytuj', 'edytuj_2', '50', 'komunikat', '', 'brak notatki do edycji, wczytaj notatkę', '', 'end', 'end', ''),
(59, 'notatka edytuj', 'edytuj_3', '50', 'warunek', '', 'notatka', 'edycja', 'edytuj_4', 'edytuj_5', 'Czy w stanie edycji?'),
(60, 'notatka edytuj', 'edytuj_4', '50', 'komunikat', '', 'notatka w stanie edycji', '', 'end', 'end', ''),
(61, 'notatka edytuj', 'edytuj_5', '50', 'warunek', '', 'notatka', 'edytuj', 'edytuj_6', 'edytuj_7', 'Czy możliwa edycja?'),
(62, 'notatka edytuj', 'edytuj_6', '50', 'wykonaj', '', 'edytuj', 'on', 'edytuj_4', 'edytuj_4', 'notatka do edycji'),
(63, 'notatka edytuj', 'edytuj_7', '50', 'informacja', 'edycja niemożliwa, autor: ', 'notatka', 'wlasciciel', 'end', 'end', ''),
(64, 'notatka zapisz', 'zapisz_0', '50', 'komunikat', '', 'wykonuję: [ notatka zapisz ]', '', 'zapisz_1', 'zapisz_1', 'alternatywa'),
(65, 'notatka zapisz', 'zapisz_1', '50', 'warunek', '', 'notatka', 'wczytana', 'zapisz_3', 'zapisz_2', 'czy wczytana?'),
(66, 'notatka zapisz', 'zapisz_2', '50', 'komunikat', '', 'brak notatki, zapis niemożliwy', '', 'end', 'end', ''),
(67, 'notatka zapisz', 'zapisz_3', '50', 'warunek', '', 'notatka', 'zmiany', 'zapisz_5', 'zapisz_4', 'Czy są zmiany ?'),
(68, 'notatka zapisz', 'zapisz_4', '50', 'komunikat', '', 'brak zmian - zaniechano zapisu', '', 'end', 'end', ''),
(69, 'notatka zapisz', 'zapisz_5', '50', 'komunikat', '', 'zapisuję notatkę', '', 'zapisz_6', 'zapisz_6', ''),
(70, 'notatka zapisz', 'zapisz_6', '50', 'getset', '', 'zapisz', 'notatka', 'zapisz_7', 'zapisz_8', ''),
(71, 'notatka zapisz', 'zapisz_7', '50', 'komunikat', '', 'zapisano', '', 'end', 'end', ''),
(72, 'notatka zapisz', 'zapisz_8', '50', 'komunikat', '', 'nie zapisano', '', 'end', 'end', ''),
(73, 'notatka nowa', 'nowa_0', '50', 'komunikat', '', 'wykonuję: [ notatka nowa ]', '', 'nowa_1', 'nowa_1', 'alternatywa'),
(74, 'notatka nowa', 'nowa_1', '50', 'komunikat', '', 'zakładam nową notatkę', '', 'nowa_2', 'nowa_2', ''),
(75, 'notatka nowa', 'nowa_4', '50', 'dane', '', 'podaj tytuł notatki ?', '', 'nowa_5', 'nowa_5', ''),
(76, 'notatka nowa', 'nowa_2', '50', 'warunek', '', 'notatka', 'edycja', 'nowa_3', 'nowa_4', 'Czy w stanie edycji?'),
(77, 'notatka nowa', 'nowa_3', '50', 'komunikat', '', 'masz notatkę w edycji', '', 'end', 'end', ''),
(78, 'notatka nowa', 'nowa_5', '50', 'zapiszdane', '', 'tytuł notatki', '', 'nowa_6', 'nowa_6', ''),
(79, 'notatka nowa', 'nowa_6', '50', 'getset', '', 'zapisz', 'notatki', 'nowa_8', 'nowa_7', ''),
(80, 'notatka nowa', 'nowa_7', '50', 'informacja', 'problem z założeniem notatki: ', 'tekstAlert', '', 'end', 'end', ''),
(81, 'notatka wczytaj', 'notatka_8', '50', 'warunek', '', 'notatka', 'edycja', 'notatka_9', 'notatka_2', 'Czy w stanie edycji?'),
(82, 'notatka wczytaj', 'notatka_9', '50', 'komunikat', '', 'masz notatkę w edycji', '', 'end', 'end', ''),
(83, 'notatka zamknij', 'zamknij_0', '50', 'komunikat', '', 'wykonuję: [ notatka zamknij ]', '', 'zamknij_1', 'zamknij_1', 'alternatywa'),
(84, 'notatka zamknij', 'zamknij_1', '50', 'warunek', '', 'notatka', 'wczytana', 'zamknij_3', 'zamknij_2', 'czy wczytana?'),
(85, 'notatka zamknij', 'zamknij_2', '50', 'komunikat', '', 'brak wczytanej notatki', '', 'end', 'end', ''),
(86, 'notatka zamknij', 'zamknij_3', '50', 'warunek', '', 'notatka', 'edycja', 'zamknij_5', 'zamknij_4', 'Czy w stanie edycji?'),
(87, 'notatka zamknij', 'zamknij_4', '50', 'komunikat', '', 'notatka nie jest edytowana', '', 'end', 'end', ''),
(88, 'notatka zamknij', 'zamknij_5', '50', 'warunek', '', 'notatka', 'zmiany', 'zamknij_8', 'zamknij_6', 'Czy są zmiany ?'),
(89, 'notatka zamknij', 'zamknij_6', '50', 'komunikat', '', 'notatka zamknięta', '', 'zamknij_7', 'zamknij_7', ''),
(90, 'notatka zamknij', 'zamknij_7', '50', 'wykonaj', '', 'edytuj', 'off', 'end', 'end', ''),
(91, 'notatka zamknij', 'zamknij_8', '50', 'komunikat', '', 'notatka była edytowana', '', 'zamknij_9', 'zamknij_9', ''),
(92, 'notatka zamknij', 'zamknij_9', '50', 'dane', '', 'zapisać ? (t/n)', '', 'zamknij_10', 'zamknij_10', ''),
(93, 'notatka zamknij', 'zamknij_10', '50', 'zapiszdane', '', '(t/n)', '', 'zamknij_11', 'zamknij_11', ''),
(94, 'notatka zamknij', 'zamknij_11', '50', 'warunek', '', 'sprawdz', 'taknie', 'zamknij_12', 'zamknij_9', ''),
(95, 'notatka zamknij', 'zamknij_12', '50', 'warunek', '', 'zdecyduj', 'taknie', 'zamknij_13', 'zamknij_6', ''),
(96, 'notatka nowa', 'nowa_8', '50', 'informacja', 'założono notatkę - id: [', 'tekstPolecenie', ']', 'end', 'end', ''),
(97, 'notatka zapisz', 'zamknij_13', '50', 'komunikat', '', 'zapisuję notatkę', '', 'zamknij_14', '	zamknij_14', ''),
(98, 'notatka zapisz', 'zamknij_14', '50', 'getset', '', 'zapisz', 'notatka', 'zamknij_15', 'zamknij_16', ''),
(99, 'notatka zapisz', 'zamknij_15', '50', 'informacja', 'zapisano notatkę: ', 'tekst', '', 'zamknij_6', 'zamknij_6', ''),
(100, 'notatka zapisz', 'zamknij_16', '50', 'informacja', 'problem z zapisem: ', 'tekstAlert', '', 'zamknij_17', 'zamknij_17', ''),
(101, 'notatka zapisz', 'zamknij_17', '50', 'komuinikat', '', 'notatki nie zapisano, spróbuj jeszcze raz', '', 'end', 'end', ''),
(102, 'notatka wersja', 'wersja_0', '50', 'komunikat', '', 'wykonuję: [ notatka wersja ]', '', 'wersja_1', 'wersja_1', 'alternatywa'),
(103, 'notatka wersja', 'wersja_1', '50', 'warunek', '', 'notatka', 'wczytana', 'wersja_2A', 'wersja_2', 'czy wczytana?'),
(104, 'notatka wersja', 'wersja_2', '50', 'komunikat', '', 'brak wczytanej notatki', '', 'end', 'end', ''),
(105, 'notatka wersja', 'wersja_3', '50', 'dane', '', 'podaj numer wersji ?', '', 'wersja_4', 'wersja_4', ''),
(106, 'notatka wersja', 'wersja_4', '50', 'zapiszdane', '', 'numer wersji do wyświetlenia', '', 'wersja_5', 'wersja_5', ''),
(107, 'wyloguj', 'wyloguj_2', '50', 'warunek', '', 'notatka', 'edycja', 'wyloguj_3', 'wyloguj_8', 'Czy w stanie edycji?'),
(108, 'wyloguj', 'wyloguj_3', '50', 'komunikat', '', 'notatka w stanie edycji', '', 'wyloguj_4', 'wyloguj_4', ''),
(110, 'wyloguj', 'wyloguj_4', '50', 'dane', '', 'wylogować bez zapisu (t/n)', '', 'wyloguj_5', 'wyloguj_5', ''),
(111, 'wyloguj', 'wyloguj_6', '50', 'warunek', '', 'sprawdz', 'taknie', 'wyloguj_7', 'wyloguj_4', ''),
(112, 'wyloguj', 'wyloguj_7', '50', 'warunek', '', 'zdecyduj', 'taknie', 'wyloguj_8', 'end', ''),
(113, 'wyloguj', 'wyloguj_5', '50', 'zapiszdane', '', '(t/n)', '', 'wyloguj_6', 'wyloguj_6', ''),
(114, 'historia kasuj', 'kasujh_0', '50', 'komunikat', '', 'wykonuję: [ historia kasuj ]', '', 'kasujh_1', 'kasujh_1', 'alternatywa'),
(115, 'historia kasuj', 'kasujh_1', '50', 'komunikat', '', 'kasuję historię komunikatów', '', 'kasujh_2', 'kasujh_2', ''),
(116, 'historia kasuj', 'kasujh_2', '50', 'wykonaj', '', 'kasuj', 'historia', 'kasujh_3', 'kasujh_3', ''),
(117, 'historia kasuj', 'kasujh_3', '50', 'komunikat', '', 'skasowano historię komunikatów', '', 'kasujh_4', 'kasujh_4', ''),
(118, 'historia kasuj', 'kasujh_4', '50', 'komunikat', '', 'Gotowy', '', 'end', 'end', ''),
(119, 'polecenia kasuj', 'kasujp_0', '50', 'komunikat', '', 'wykonuję: [ polecenia kasuj ]', '', 'kasujp_1', 'kasujp_1', 'alternatywa'),
(120, 'polecenia kasuj', 'kasujp_1', '50', 'komunikat', '', 'kasuję historię poleceń', '', 'kasujp_2', 'kasujp_2', ''),
(121, 'polecenia kasuj', 'kasujp_2', '50', 'wykonaj', '', 'kasuj', 'polecenia', 'kasujp_3', 'kasujp_3', ''),
(122, 'polecenia kasuj', 'kasujp_3', '50', 'komunikat', '', 'skasowano historię poleceń 	', '', 'end', 'end', ''),
(124, 'wszystko kasuj', 'kasuja_0', '50', 'komunikat', '', 'wykonuję: [ wszystko kasuj ]', '', 'kasuja_7', 'kasuja_7', 'alternatywa'),
(125, 'wszystko kasuj', 'kasuja_1', '50', 'komunikat', '', 'kasuję wszystkie historie', '', 'kasuja_2', 'kasuja_2', ''),
(126, 'wszystko kasuj', 'kasuja_2', '50', 'komunikat', '', 'kasuję historię poleceń', '', 'kasuja_3', 'kasuja_3', ''),
(127, 'wszystko kasuj', 'kasuja_3', '50', 'wykonaj', '', 'kasuj', 'polecenia', 'kasuja_4', 'kasuja_4', ''),
(129, 'wszystko kasuj', 'kasuja_4', '50', 'komunikat', '', 'kasuję historię komunikatów', '', 'kasuja_5', 'kasuja_5', ''),
(130, 'wszystko kasuj', 'kasuja_5', '50', 'wykonaj', '', 'kasuj', 'historia', 'kasuja_16', 'kasuja_16', ''),
(131, 'wszystko kasuj', 'kasuja_6', '50', 'komunikat', '', 'skasowano wszystkie historie', '', 'kasuja_15', 'kasuja_15', ''),
(132, 'wszystko kasuj', 'kasuja_15', '50', 'komunikat', '', 'Gotowy', '', 'end', 'end', ''),
(133, 'notatka wersja', 'wersja_6', '50', 'informacja', 'nieprawidłowa liczba: ', 'bufor1', '', 'wersja_3', 'wersja_3', ''),
(134, 'notatka wersja', 'wersja_5', '50', 'warunek', '', 'sprawdz', 'number', 'wersja_7', 'wersja_6', ''),
(135, 'notatka wersja', 'wersja_7', '50', 'komunikat', '', 'zmieniam wyświetlaną wersję notatki', '', 'wersja_8', 'wersja_8', ''),
(136, 'notatka wersja', 'wersja_8', '50', 'warunek', '', 'notatka', 'edytuj', 'wersja_10', 'wersja_9', 'brak edycji = brak poprzednich wersji'),
(137, 'notatka wersja', 'wersja_10', '50', 'warunek', '', 'notatka', 'zakres', 'wersja_12', 'wersja_11', ''),
(138, 'notatka wersja', 'wersja_9', '50', 'informacja', 'wersje niedostępne, autor: ', 'notatka', 'wlasciciel', 'end', 'end', ''),
(139, 'notatka wersja', 'wersja_14', '50', 'wykonaj', '', 'notatka', 'wersja', 'wersja_15', 'wersja_15', ''),
(140, 'notatka wersja', 'wersja_12', '50', 'warunek', '', 'notatka', 'dostepna', 'wersja_14', 'wersja_13', ''),
(141, 'notatka wersja', 'wersja_11', '50', 'informacja', 'brak notatki w wersji: ', 'bufor1', '', 'end', 'end', ''),
(142, 'notatka wersja', 'wersja_13', '50', 'informacja', 'notatka w wersji: ', 'bufor12', ' jest: ', 'end', 'end', ''),
(143, 'notatka wersja', 'wersja_15', '50', 'komunikat', '', 'zmieniono wersję notatki', '', 'end', 'end', ''),
(144, 'notatka wersja', 'wersja_2A', '50', 'warunek', '', 'notatka', 'edycja', 'wersja_2B', 'wersja_3', 'Czy w stanie edycji?'),
(145, 'notatka wersja', 'wersja_2B', '50', 'komunikat', '', 'notatka w stanie edycji, zmiana wersji niemożliwa', '', 'end', 'end', ''),
(146, 'notatka kasuj', 'kasujn_0', '50', 'komunikat', '', 'wykonuję: [ notatka kasuj ]', '', 'kasujn_1', 'kasujn_1', 'alternatywa'),
(147, 'notatka kasuj', 'kasujn_1', '50', 'warunek', '', 'notatka', 'wczytana', 'kasujn_3', 'kasujn_2', 'czy wczytana?'),
(148, 'notatka kasuj', 'kasujn_2', '50', 'komunikat', '', 'brak wyświetlonej notatki', '', 'end', 'end', ''),
(149, 'notatka kasuj', 'kasujn_3', '50', 'warunek', '', 'notatka', 'edycja', 'kasujn_4', 'kasujn_5', 'Czy w stanie edycji?'),
(150, 'notatka kasuj', 'kasujn_4', '50', 'komunikat', '', 'notatka w stanie edycji', '', 'end', 'end', ''),
(151, 'notatka kasuj', 'kasujn_5', '50', 'komunikat', '', 'kasuję wyświetloną notatkę', '', 'kasujn_6', 'kasujn_6', ''),
(152, 'notatka kasuj', 'kasujn_6', '50', 'wykonaj', '', 'kasuj', 'notatka', 'kasujn_7', 'kasujn_7', ''),
(153, 'notatka kasuj', 'kasujn_7', '50', 'komunikat', '', 'skasowano wyświetloną notatkę', '', 'end', 'end', ''),
(155, 'wszystko kasuj', 'kasuja_7', '50', 'komunikat', '', 'kasuję wyświetloną notatkę', '', 'kasuja_8', 'kasuja_8', ''),
(156, 'wszystko kasuj', 'kasuja_8', '50', 'warunek', '', 'notatka', 'wczytana', 'kasuja_10', 'kasuja_9', 'czy wczytana?'),
(157, 'wszystko kasuj', 'kasuja_9', '50', 'komunikat', '', 'brak wyświetlonej notatki', '', 'kasuja_1', 'kasuja_1', ''),
(158, 'wszystko kasuj', 'kasuja_10', '50', 'warunek', '', 'notatka', 'edycja', 'kasuja_11', 'kasuja_13', 'Czy w stanie edycji?'),
(159, 'wszystko kasuj', 'kasuja_11', '50', 'komunikat', '', 'notatka w stanie edycji', '', 'end', 'end', ''),
(160, 'wszystko kasuj', 'kasuja_13', '50', 'wykonaj', '', 'kasuj', 'notatka', 'kasuja_14', 'kasuja_14', ''),
(161, 'wszystko kasuj', 'kasuja_14', '50', 'komunikat', '', 'skasowano wyświetloną notatkę', '', 'kasuja_1', 'kasuja_1', ''),
(162, 'notatka usuń', 'usun_0', '50', 'komunikat', '', 'wykonuję: [ notatka usuń ]', '', 'usun_1', 'usun_1', 'alternatywa'),
(163, 'notatka usuń', 'usun_3', '50', 'warunek', '', 'notatka', 'wczytana', 'usun_4', 'usun_6', 'czy wczytana?'),
(164, 'notatka usuń', 'usun_1', '50', 'dane', '', 'podaj id notatki ?', '', 'usun_2', 'usun_2', ''),
(165, 'notatka usuń', 'usun_2', '50', 'zapiszdane', '', 'nr notatki', '', 'usun_3', 'usun_3', ''),
(167, 'notatka usuń', 'usun_4', '50', 'warunek', '', 'notatka', 'identyfikator', 'usun_5', 'usun_6', 'czy wczytana o id = bufor0'),
(168, 'notatka usuń', 'usun_5', '50', 'informacja', 'masz wczytaną notatkę o id: ', 'bufor1', '', 'end', 'end', ''),
(169, 'notatka usuń', 'usun_6', '50', 'komunikat', '', 'usuwam notatkę', '', 'usun_7', 'usun_7', ''),
(170, 'notatka usuń', 'usun_7', '50', 'getset', '', 'usun', 'notatki', 'usun_8', 'usun_9', ''),
(171, 'notatka usuń', 'usun_8', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(172, 'notatka usuń', 'usun_9', '50', 'informacja', 'odmowa: ', 'tekst', '', 'end', 'end', ''),
(173, 'notatka udostępnij', 'udostepnij_5', '50', 'informacja', 'masz wczytaną notatkę o id: ', 'bufor1', '', 'end', 'end', ''),
(174, 'notatka udostępnij', 'udostepnij_4', '50', 'warunek', '', 'notatka', 'identyfikator', 'udostepnij_5', 'udostepnij_6', 'czy wczytana o id = bufor0'),
(175, 'notatka udostępnij', 'udostepnij_3', '50', 'warunek', '', 'notatka', 'wczytana', 'udostepnij_4', 'udostepnij_6', 'czy wczytana?'),
(176, 'notatka udostępnij', 'udostepnij_2', '50', 'zapiszdane', '', 'nr notatki', '', 'udostepnij_3', 'udostepnij_3', ''),
(177, 'notatka udostępnij', 'udostepnij_1', '50', 'dane', '', 'podaj id notatki ?', '', 'udostepnij_2', 'udostepnij_2', ''),
(178, 'notatka udostępnij', 'udostepnij_0', '50', 'komunikat', '', 'wykonuję: [ notatka udostępnij ]', '', 'udostepnij_1', 'udostepnij_1', 'alternatywa'),
(179, 'notatka udostępnij', 'udostepnij_7', '50', 'dane', '', 'imię ?', '', 'udostepnij_8', 'udostepnij_8', ''),
(180, 'notatka udostępnij', 'udostepnij_8', '50', 'dodajdane', '', 'osoba imię', '', 'udostepnij_9', 'udostepnij_9', ''),
(181, 'notatka udostępnij', 'udostepnij_11', '50', 'getset', '', 'udostepnij', 'notatki', 'udostepnij_12', 'udostepnij_13', ''),
(182, 'notatka udostępnij', 'udostepnij_9', '50', 'dane', '', 'podaj nazwisko ?', '', 'udostepnij_10', 'udostepnij_10', ''),
(183, 'notatka udostępnij', 'udostepnij_10', '50', 'dodajdane', '', 'osoba nazwisko', '', 'udostepnij_11', 'udostepnij_11', ''),
(184, 'notatka udostępnij', 'udostepnij_6', '50', 'komunikat', '', 'podaj osobę:', '', 'udostepnij_7', 'udostepnij_7', ''),
(185, 'notatka udostępnij', 'udostepnij_12', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(186, 'notatka udostępnij', 'udostepnij_13', '50', 'informacja', 'odmowa: ', 'tekst', '', 'end', 'end', ''),
(187, 'notatka dostęp', 'dostep_0', '50', 'komunikat', '', 'wykonuję: [ notatka dostęp ]', '', 'dostep_1', 'dostep_1', 'alternatywa'),
(188, 'notatka dostęp', 'dostep_1', '50', 'dane', '', 'podaj id notatki ?', '', 'dostep_2', 'dostep_2', ''),
(189, 'notatka dostęp', 'dostep_2', '50', 'zapiszdane', '', 'nr notatki', '', 'dostep_3', 'dostep_3', ''),
(190, 'notatka dostęp', 'dostep_3', '50', 'getset', '', 'wczytaj', 'notatka_dostep', 'dostep_5', 'dostep_4', ''),
(191, 'notatka dostęp', 'dostep_4', '50', 'informacja', 'odmowa: ', 'tekst', '', 'end', 'end', ''),
(192, 'notatka dostęp', 'dostep_5', '50', 'informacja', 'notatka o id: [ ', 'bufor1', '] jest udostępniona:', 'dostep_6', 'dostep_6', ''),
(193, 'notatka dostęp', 'dostep_7', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(194, 'notatka dostęp', 'dostep_6', '50', 'linie', '', 'dostep', '', 'dostep_7', 'dostep_7', ''),
(195, 'zespoły', 'zespoly_0', '50', 'komunikat', '', 'wykonuję: [ zespoły ]', '', 'zespoly_1', 'zespoly_1', 'alternatywa'),
(196, 'zespoły', 'zespoly_1', '50', 'komunikat', '', 'wczytuję dostępne zespoły dla Modułu', '', 'zespoly_6', 'zespoly_6', ''),
(197, 'zespoły', 'zespoly_2', '50', 'getset', '', 'wczytaj', 'zespoly', 'zespoly_4', 'zespoly_3', 'wczytuje zespoły'),
(198, 'zespoły', 'zespoly_3', '50', 'informacja', 'problem z dostępem: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(199, 'zespoły', 'zespoly_4', '50', 'linie', '', 'zespoly', '', 'zespoly_5', 'zespoly_5', 'wyświetla listę zespołów'),
(200, 'zespoły', 'zespoly_5', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(201, 'zespoły wszystkie', 'zespolyW_0', '50', 'komunikat', '', 'wykonuję: [ zespoły wszystkie ]', '', 'zespolyW_1', 'zespolyW_1', 'alternatywa'),
(202, 'zespoły wszystkie', 'zespolyW_1', '50', 'komunikat', '', 'wczytuję wszystkie dostępne zespoły', '', 'zespolyW_2', 'zespolyW_2', ''),
(203, 'zespoły wszystkie', 'zespolyW_2', '50', 'getset', '', 'wczytaj', 'zespolyW', 'zespolyW_4', 'zespolyW_3', 'wczytuje wszystkie dostępne zespoły'),
(204, 'zespoły wszystkie', 'zespolyW_3', '50', 'informacja', 'problem z dostępem: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(205, 'zespoły wszystkie', 'zespolyW_4', '50', 'linie', '', 'zespolyW', '', 'zespolyW_5', 'zespolyW_5', 'wyświetla listę wszystkich zespołów'),
(206, 'zespoły wszystkie', 'zespolyW_5', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(207, 'zespoły', 'zespoly_6', '50', 'dane', '', 'podaj symbol modułu ?', '', 'zespoly_7', 'zespoly_7', ''),
(208, 'zespoły', 'zespoly_7', '50', 'zapiszdane', '', 'nr modułu', '', 'zespoly_2', 'zespoly_2', ''),
(209, 'zespół', 'zespol_3', '50', 'zapiszdane', '', 'nr modułu', '', 'zespol_4', 'zespol_4', ''),
(210, 'zespół', 'zespol_2', '50', 'dane', '', 'podaj symbol modułu ?', '', 'zespol_3', 'zespol_3', ''),
(211, 'zespół', 'zespol_1', '50', 'komunikat', '', 'wczytuję stan zespołu dla modułu', '', 'zespol_2', 'zespol_2', ''),
(212, 'zespół', 'zespol_0', '50', 'komunikat', '', 'wykonuję: [ zespół ]', '', 'zespol_1', 'zespol_1', 'alternatywa'),
(213, 'zespół', 'zespol_5', '50', 'dodajdane', '', 'nr zespołu', '', 'zespol_6', 'zespol_6', ''),
(214, 'zespół', 'zespol_4', '50', 'dane', '', 'podaj symbol zespołu ?', '', 'zespol_5', 'zespol_5', ''),
(215, 'zespół', 'zespol_9', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(216, 'zespół', 'zespol_8', '50', 'testy', '', 'zespol', '', 'zespol_9', 'zespol_9', 'wyświetla listę zespołów'),
(217, 'zespół', 'zespol_7', '50', 'informacja', 'problem z dostępem: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(218, 'zespół', 'zespol_6', '50', 'getset', '', 'wczytaj', 'zespol', 'zespol_8', 'zespol_7', 'wczytuje zespół'),
(219, 'test', 'test_3', '50', 'zapiszdane', '', 'nr modułu', '', 'test_4', 'test_4', ''),
(220, 'test', 'test_2', '50', 'dane', '', 'podaj symbol modułu ?', '', 'test_3', 'test_3', ''),
(221, 'test', 'test_1', '50', 'komunikat', '', 'wczytuję dane zespołu do testu', '', 'test_2', 'test_2', ''),
(223, 'test', 'test_5', '50', 'dodajdane', '', 'nr zespołu', '', 'test_6', 'test_6', ''),
(224, 'test', 'test_4', '50', 'dane', '', 'podaj symbol zespołu ?', '', 'test_5', 'test_5', ''),
(225, 'test', 'test_9', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(226, 'test', 'test_8', '50', 'testy', '', 'test', '', 'test_9', 'test_9', 'wyświetla listę zespołów'),
(227, 'test', 'test_7', '50', 'informacja', 'problem z dostępem: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(228, 'test', 'test_6', '50', 'getset', '', 'wczytaj', 'zespol', 'test_8', 'test_7', 'wczytuje test'),
(229, 'informacje kasuj', 'kasuji_0', '50', 'komunikat', '', 'wykonuję: [ informacje kasuj ]', '', 'kasuji_1', 'kasuji_1', 'alternatywa'),
(230, 'informacje kasuj', 'kasuji_1', '50', 'komunikat', '', 'kasuję historię informacji', '', 'kasuji_2', 'kasuji_2', ''),
(231, 'informacje kasuj', 'kasuji_2', '50', 'wykonaj', '', 'kasuj', 'informacje', 'kasuji_3', 'kasuji_3', ''),
(232, 'informacje kasuj', 'kasuji_3', '50', 'komunikat', '', 'skasowano historię informacji', '', 'kasuji_4', 'kasuji_4', ''),
(233, 'informacje kasuj', 'kasuji_4', '50', 'komunikat', '', 'Gotowy', '', 'end', 'end', ''),
(234, 'wszystko kasuj', 'kasuja_16', '50', 'komunikat', '', 'kasuję historię informacji', '', 'kasuja_17', 'kasuja_17', ''),
(235, 'wszystko kasuj', 'kasuja_17', '50', 'wykonaj', '', 'kasuj', 'informacje', 'kasuja_6', 'kasuja_6', ''),
(236, 'reset', 'reset_9', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(237, 'reset', 'reset_7', '50', 'testy', '', 'reset', '', 'reset_8', 'reset_8', 'wyświetla listę zespołów'),
(238, 'reset', 'reset_6', '50', 'informacja', 'problem z dostępem: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(239, 'reset', 'reset_5', '50', 'getset', '', 'wczytaj', 'reset', 'reset_7', 'reset_6', 'wczytuje zespół ustawia nieokreślony'),
(240, 'reset', 'reset_4', '50', 'dodajdane', '', 'nr zespołu', '', 'reset_5', 'reset_5', ''),
(241, 'reset', 'reset_3', '50', 'dane', '', 'podaj symbol zespołu ?', '', 'reset_4', 'reset_4', ''),
(242, 'reset', 'reset_2', '50', 'zapiszdane', '', 'nr modułu', '', 'reset_3', 'reset_3', ''),
(243, 'reset', 'reset_1', '50', 'dane', '', 'podaj symbol modułu ?', '', 'reset_2', 'reset_2', ''),
(244, 'reset', 'reset_8', '50', 'komunikat', '', 'resetuję elementy zespołu', '', 'reset_9', 'reset_9', ''),
(252, 'naprawa', 'naprawa_1', '50', 'dane', '', 'podaj symbol modułu ?', '', 'naprawa_2', 'naprawa_2', ''),
(253, 'naprawa', 'naprawa_2', '50', 'zapiszdane', '', 'nr modułu', '', 'naprawa_3', 'naprawa_3', ''),
(254, 'naprawa', 'naprawa_3', '50', 'dane', '', 'podaj symbol zespołu ?', '', 'naprawa_4', 'naprawa_4', ''),
(255, 'naprawa', 'naprawa_4', '50', 'dodajdane', '', 'nr zespołu', '', 'naprawa_5', 'naprawa_5', ''),
(256, 'naprawa', 'naprawa_5', '50', 'getset', '', 'wczytaj', 'naprawa', 'naprawa_7', 'naprawa_6', 'wczytuje zespół ustawia nieokreślony'),
(257, 'naprawa', 'naprawa_6', '50', 'informacja', 'problem z dostępem: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(258, 'naprawa', 'naprawa_7', '50', 'testy', '', 'naprawa', '', 'naprawa_8', 'naprawa_8', 'wyświetla listę zespołów'),
(259, 'naprawa', 'naprawa_8', '50', 'komunikat', '', 'naprawiam elementy zespołu', '', 'naprawa_9', 'naprawa_9', ''),
(260, 'naprawa', 'naprawa_9', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(261, 'hasło', 'haslo_1', '50', 'komunikat', '', 'procedura: zmiana hasła', '', 'haslo_2', 'haslo_2', ''),
(262, 'hasło', 'haslo_2', '50', 'password', '', 'on', '', 'haslo_3', 'haslo_3', 'załączenie ***'),
(263, 'hasło', 'haslo_3', '50', 'dane', '', 'podaj stare hasło ?', '', 'haslo_4', 'haslo_4', ''),
(264, 'hasło', 'haslo_4', '50', 'zapiszdane', '', 'hasło old', '', 'haslo_5', 'haslo_5', ''),
(265, 'hasło', 'haslo_9', '50', 'password', '', 'off', '', 'haslo_10', 'haslo_10', 'wyłączenie ***'),
(266, 'hasło', 'haslo_0', '50', 'komunikat', '', 'wykonuję: [ hasło ]', '', 'haslo_1', 'haslo_1', ''),
(267, 'hasło', 'haslo_5', '50', 'dane', '', 'podaj nowe hasło ?', '', 'haslo_6', 'haslo_6', ''),
(268, 'hasło', 'haslo_6', '50', 'dodajdane', '', 'hasło new', '', 'haslo_7', 'haslo_7', ''),
(269, 'hasło', 'haslo_7', '50', 'dane', '', 'powtórz nowe hasło ?', '', 'haslo_8', 'haslo_8', ''),
(270, 'hasło', 'haslo_8', '50', 'dodajdane', '', 'hasło new 2', '', 'haslo_9', 'haslo_9', ''),
(271, 'polecenie', 'polecenie_0', '50', 'komunikat', '', 'wykonuję: [ polecenie ]', '', 'polecenie_1', 'polecenie_1', 'alternatywa'),
(273, 'polecenie', 'polecenie_1', '50', 'dane', '', 'podaj polecenie do wykonania', '', 'polecenie_2', 'polecenie_2', ''),
(274, 'polecenie', 'polecenie_2', '50', 'zapiszdane', '', 'polecenie do dedala', '', 'polecenie_3', 'polecenie_3', ''),
(275, 'polecenie', 'polecenie_3', '50', 'warunek', '', 'polecenie', '', 'polecenie_5', 'polecenie_4', ''),
(276, 'polecenie', 'polecenie_4', '50', 'komunikat', '', 'polecenie systemowe wykonuję', '', 'end', 'end', ''),
(277, 'polecenie', 'polecenie_5', '50', 'komunikat', '', 'sprawdzam możliwość wykonania polecenia, czekaj', '', 'end', 'end', ''),
(278, 'wyloguj', 'wyloguj_D', '50', 'komunikat', '', 'wylogowanie z terminala', '', 'wyloguj_2', 'wyloguj_2', ''),
(279, 'dedal', 'modul_D_1', '50', 'informacja', '', 'buforDedal', '', 'modul_D_2', 'modul_D_2', ''),
(280, 'dedal', 'modul_D_2', '50', 'dane', '', 'podaj symbol modułu ?', '', 'modul_D_3', 'modul_D_3', ''),
(281, 'dedal', 'modul_D_3', '50', 'zapiszdane', '', 'nr modułu', '', 'modul_D_4', 'modul_D_4', ''),
(282, 'dedal', 'modul_D_4', '50', 'odpowiedz', '', 'odpowiedż dla Dedala', '', 'modul_D_5', 'modul_D_5', ''),
(283, 'dedal', 'modul_D_5', '50', 'komunikat', '', 'czekaj.', '', 'end', 'end', ''),
(285, 'dedal', 'info_D_1', '50', 'informacja', '', 'buforDedal', '', 'end', 'end', ''),
(286, 'dedal', 'zespol_D_1', '50', 'informacja', '', 'buforDedal', '', 'zespol_D_2', 'zespol_D_2', ''),
(287, 'dedal', 'zespol_D_2', '50', 'dane', '', 'podaj symbol zespołu ?', '', 'zespol_D_3', 'zespol_D_3', ''),
(288, 'dedal', 'zespol_D_3', '50', 'zapiszdane', '', 'nr zespołu', '', 'zespol_D_4', 'zespol_D_4', ''),
(289, 'dedal', 'zespol_D_4', '50', 'odpowiedz', '', 'odpowiedż dla Dedala', '', 'zespol_D_5', 'zespol_D_5', ''),
(290, 'dedal', 'zespol_D_5', '50', 'komunikat', '', 'czekaj.', '', 'end', 'end', ''),
(291, 'dedal', 'element_D_1', '50', 'informacja', '', 'buforDedal', '', 'element_D_2', 'element_D_2', ''),
(292, 'dedal', 'element_D_2', '50', 'dane', '', 'podaj nazwę elementu ?', '', 'element_D_3', 'element_D_3', ''),
(293, 'dedal', 'element_D_3', '50', 'zapiszdane', '', 'nr elementu', '', 'element_D_4', 'element_D_4', ''),
(294, 'dedal', 'element_D_4', '50', 'odpowiedz', '', 'odpowiedż dla Dedala', '', 'element_D_5', 'element_D_5', ''),
(295, 'dedal', 'element_D_5', '50', 'komunikat', '', 'czekaj.', '', 'end', 'end', ''),
(296, 'dedal', 'pytanie_D_1', '50', 'informacja', '', 'buforDedal', '', 'pytanie_D_2', 'pytanie_D_2', ''),
(297, 'dedal', 'pytanie_D_2', '50', 'dane', '', 'podaj dane ?', '', 'pytanie_D_3', 'pytanie_D_3', ''),
(298, 'dedal', 'pytanie_D_3', '50', 'zapiszdane', '', 'dane', '', 'pytanie_D_4', 'pytanie_D_4', ''),
(299, 'dedal', 'pytanie_D_4', '50', 'odpowiedz', '', 'odpowiedż dla Dedala', '', 'pytanie_D_5', 'pytanie_D_5', ''),
(300, 'dedal', 'pytanie_D_5', '50', 'komunikat', '', 'czekaj.', '', 'end', 'end', ''),
(301, 'moduly wszystkie', 'modulyW_3', '50', 'informacja', 'problem z dostępem do modułów: ', 'tekstAlerttekst', '', 'end', 'end', 'informacja z error'),
(302, 'moduły wszystkie', 'modulyW_1', '50', 'komunikat', '', 'wczytuję dostępne moduły', '', 'modulyW_2', 'modulyW_2', ''),
(303, 'moduły wszystkie', 'modulyW_2', '50', 'getset', '', 'wczytaj', 'modulyall', 'modulyW_4', 'modulyW_3', 'wczytuje moduły'),
(304, 'moduły wszystkie', 'modulyW_4', '50', 'linie', '', 'moduly', '', 'modulyW_5', 'modulyW_5', 'wyswietla listę modułów'),
(305, 'moduły wszystkie', 'modulyW_0', '50', 'komunikat', '', 'wykonuję: [ moduły wszystkie ]', '', 'modulyW_1', 'modulyW_1', 'alternatywa'),
(306, 'moduły wszystkie', 'modulyW_5', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(307, 'test historia', 'testH_1', '50', 'komunikat', '', 'wczytuję plik historii testów', '', 'testH_2', 'testH_2', ''),
(308, 'test historia', 'testH_2', '50', 'dane', '', 'podaj symbol modułu ?', '', 'testH_3', 'testH_3', ''),
(309, 'test historia', 'testH_3', '50', 'zapiszdane', '', 'nr modułu', '', 'testH_4', 'testH_4', ''),
(310, 'test historia', 'testH_4', '50', 'getset', '', 'wczytaj', 'testyH', 'testH_6', 'testH_5', 'wczytuje historia test'),
(311, 'test historia', 'testH_5', '50', 'informacja', 'problem z dostępem: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(312, 'test historia', 'testH_6', '50', 'testy', '', 'testH', '', 'testH_7', 'testH_7', 'wyświetla historię'),
(313, 'test historia', 'testH_7', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(314, 'reset historia', 'resetH_1', '50', 'komunikat', '', 'wczytuję plik historii resetów', '', 'resetH_2', 'resetH_2', ''),
(315, 'reset historia', 'resetH_2', '50', 'dane', '', 'podaj symbol modułu ?', '', 'resetH_3', 'resetH_3', ''),
(316, 'reset historia', 'resetH_3', '50', 'zapiszdane', '', 'nr modułu', '', 'resetH_4', 'resetH_4', ''),
(317, 'reset historia', 'resetH_4', '50', 'getset', '', 'wczytaj', 'resetH', 'resetH_6', 'resetH_5', 'wczytuje historia reset'),
(318, 'reset historia', 'resetH_5', '50', 'informacja', 'problem z dostępem: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(319, 'reset historia', 'resetH_6', '50', 'testy', '', 'resetH', '', 'resetH_7', 'resetH_7', 'wyświetla historię'),
(320, 'reset historia', 'resetH_7', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(321, 'naprawa historia', 'naprawaH_1', '50', 'komunikat', '', 'wczytuję plik historii napraw', '', 'naprawaH_2', 'naprawaH_2', ''),
(322, 'naprawa historia', 'naprawaH_2', '50', 'dane', '', 'podaj symbol modułu ?', '', 'naprawaH_3', 'naprawaH_3', ''),
(323, 'naprawa historia', 'naprawaH_3', '50', 'zapiszdane', '', 'nr modułu', '', 'naprawaH_4', 'naprawaH_4', ''),
(324, 'naprawa historia', 'naprawaH_4', '50', 'getset', '', 'wczytaj', 'naprawaH', 'naprawaH_6', 'naprawaH_5', 'wczytuje historia naprawa'),
(325, 'naprawa historia', 'naprawaH_5', '50', 'informacja', 'problem z dostępem: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(326, 'naprawa historia', 'naprawaH_6', '50', 'testy', '', 'naprawaH', '', 'naprawaH_7', 'naprawaH_7', 'wyświetla historię'),
(327, 'naprawa historia', 'naprawaH_7', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(328, 'hibernacja on', 'hibernacjaon_1', '50', 'dane', '', 'podaj symbol modułu ?', '', 'hibernacjaon_2', 'hibernacjaon_2', ''),
(329, 'hibernacja on', 'hibernacjaon_2', '50', 'zapiszdane', '', 'nr modułu', '', 'hibernacjaon_3', 'hibernacjaon_3', ''),
(330, 'hibernacja on', 'hibernacjaon_3', '50', 'dane', '', 'podaj symbol zespołu ?', '', 'hibernacjaon_4', 'hibernacjaon_4', ''),
(331, 'hibernacja on', 'hibernacjaon_4', '50', 'dodajdane', '', 'nr zespołu', '', 'hibernacjaon_5', 'hibernacjaon_5', ''),
(332, 'hibernacja on', 'hibernacjaon_8', '50', 'komunikat', '', 'procedury nie można przerwać przez następne 5 dni bez szkody dla zdrowia', '', 'end', 'end', ''),
(333, 'hibernacja on', 'hibernacjaon_5', '50', 'getset', '', 'wczytaj', 'hibernacjaon', 'hibernacjaon_9', 'hibernacjaon_6', 'wczytuje zespół ustawia nieokreślony'),
(334, 'hibernacja on', 'hibernacjaon_6', '50', 'informacja', 'problem z dostępem: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(335, 'hibernacja on', 'hibernacjaon_7', '50', 'informacja', 'rozpoczynam procedurę hibernacji dla: ', 'tekst', '', 'hibernacjaon_8', 'hibernacjaon_8', 'wyświetla listę zespołów'),
(337, 'hibernacja on', 'hibernacjaon_9', '50', 'warunek', '', 'sprawdz', 'hibernacja', 'hibernacjaon_7', 'hibernacjaon_10', ''),
(338, 'hibernacja on', 'hibernacjaon_10', '50', 'komunikat', '', 'nieprawidłowy zespół', '', 'end', 'end', ''),
(349, 'hibernacja off', 'hibernacjaoff_1', '50', 'dane', '', 'podaj symbol modułu ?', '', 'hibernacjaoff_2', 'hibernacjaoff_2', ''),
(350, 'hibernacja off', 'hibernacjaoff_10', '50', 'komunikat', '', 'nieprawidłowy zespół', '', 'end', 'end', ''),
(351, 'hibernacja off', 'hibernacjaoff_2', '50', 'zapiszdane', '', 'nr modułu', '', 'hibernacjaoff_3', 'hibernacjaoff_3', ''),
(352, 'hibernacja off', 'hibernacjaoff_3', '50', 'dane', '', 'podaj symbol zespołu ?', '', 'hibernacjaoff_4', 'hibernacjaoff_4', ''),
(353, 'hibernacja off', 'hibernacjaoff_4', '50', 'dodajdane', '', 'nr zespołu', '', 'hibernacjaoff_5', 'hibernacjaoff_5', ''),
(354, 'hibernacja off', 'hibernacjaoff_5', '50', 'getset', '', 'wczytaj', 'hibernacjaoff', 'hibernacjaoff_9', 'hibernacjaoff_6', 'wczytuje zespół ustawia nieokreślony'),
(355, 'hibernacja off', 'hibernacjaoff_6', '50', 'informacja', 'problem z dostępem: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(356, 'hibernacja off', 'hibernacjaoff_7', '50', 'informacja', 'rozpoczynam procedurę wybudzenia dla: ', 'tekst', '', 'hibernacjaoff_8', 'hibernacjaoff_8', 'wyświetla listę zespołów'),
(357, 'hibernacja off', 'hibernacjaoff_8', '50', 'komunikat', '', 'procedura zostanie zakończona w ciągu 7 dni', '', 'end', 'end', ''),
(358, 'hibernacja off', 'hibernacjaoff_9', '50', 'warunek', '', 'sprawdz', 'hibernacja', 'hibernacjaoff_7', 'hibernacjaoff_10', ''),
(359, 'moduł historia', 'modulH_1', '50', 'komunikat', '', 'wczytuję plik historii modułu', '', 'modulH_2', 'modulH_2', ''),
(360, 'moduł historia', 'modulH_2', '50', 'dane', '', 'podaj symbol modułu ?', '', 'modulH_3', 'modulH_3', ''),
(361, 'moduł historia', 'modulH_3', '50', 'zapiszdane', '', 'nr modułu', '', 'modulH_4', 'modulH_4', ''),
(362, 'moduł historia', 'modulH_4', '50', 'getset', '', 'wczytaj', 'modulH', 'modulH_6', 'modulH_5', 'wczytuje historia moduł'),
(363, 'moduł historia', 'modulH_5', '50', 'informacja', 'problem z dostępem: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(364, 'moduł historia', 'modulH_6', '50', 'testy', '', 'modulH', '', 'modulH_7', 'modulH_7', 'wyświetla historię'),
(365, 'moduł historia', 'modulH_7', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(366, 'moduł historia', 'modulH_0', '50', 'komunikat', '', 'wykonuję [ moduł historia ]', '', 'modulH_1', 'modulH_1', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `innelog`
--

CREATE TABLE `innelog` (
  `id` int(11) NOT NULL,
  `dedal` tinyint(4) NOT NULL,
  `poleceniepierwsze` text COLLATE utf8_polish_ci NOT NULL,
  `czaspierwsze` text COLLATE utf8_polish_ci NOT NULL,
  `polecenieodpowiedz` text COLLATE utf8_polish_ci NOT NULL,
  `polecenieid` int(11) NOT NULL,
  `polecenieText` text COLLATE utf8_polish_ci NOT NULL,
  `czaswykonania` text COLLATE utf8_polish_ci NOT NULL,
  `osoba` int(11) NOT NULL,
  `osobaText` text COLLATE utf8_polish_ci NOT NULL,
  `odczytana` int(11) NOT NULL,
  `terminal` text COLLATE utf8_polish_ci NOT NULL,
  `odpowiedz` int(11) NOT NULL,
  `odpowiedzText` text COLLATE utf8_polish_ci NOT NULL,
  `odpowiedzTresc` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `innelog`
--

INSERT INTO `innelog` (`id`, `dedal`, `poleceniepierwsze`, `czaspierwsze`, `polecenieodpowiedz`, `polecenieid`, `polecenieText`, `czaswykonania`, `osoba`, `osobaText`, `odczytana`, `terminal`, `odpowiedz`, `odpowiedzText`, `odpowiedzTresc`) VALUES
(1, 0, '', '', '', 0, 'moduł historia', '2045-04-18 21:35:22', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(2, 0, '', '', '', 2, 'zaloguj', '2045-04-18 21:35:32', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(3, 0, '', '', '', 2, 'zaloguj', '2045-04-18 21:36:25', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(4, 0, '', '', '', 63, 'dedal', '2045-04-18 21:37:17', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(5, 0, '', '', '', 2, 'zaloguj', '2045-04-18 21:37:23', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(6, 0, '', '', '', 63, 'dedal', '2045-04-18 21:39:09', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(7, 0, '', '', '', 2, 'zaloguj', '2045-04-18 21:39:12', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(8, 0, '', '', '', 2, 'zaloguj', '2045-04-18 21:41:46', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(9, 0, '', '', '', 71, 'moduł historia', '2045-04-18 21:42:02', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(10, 0, '', '', '', 71, 'moduł historia', '2045-04-18 21:42:41', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(11, 0, '', '', '', 0, 'test', '2045-04-18 21:46:12', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(12, 0, '', '', '', 0, 'testy', '2045-04-18 21:46:21', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(13, 0, '', '', '', 0, 'wyloguj', '2045-04-18 21:46:50', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(14, 0, '', '', '', 2, 'zaloguj', '2045-04-18 21:47:28', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(15, 0, '', '', '', 53, 'test', '2045-04-18 21:47:38', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(16, 0, '', '', '', 71, 'moduł historia', '2045-04-18 21:48:08', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(17, 0, '', '', '', 71, 'moduł historia', '2045-04-18 21:49:10', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(18, 0, '', '', '', 71, 'moduł historia', '2045-04-18 21:53:14', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(19, 0, '', '', '', 71, 'moduł historia', '2045-04-18 21:57:03', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(20, 0, '', '', '', 71, 'moduł historia', '2045-04-18 21:57:46', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(21, 0, '', '', '', 0, 'reset', '2045-04-18 22:47:25', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(22, 0, '', '', '', 2, 'zaloguj', '2045-04-18 22:48:11', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(23, 0, '', '', '', 54, 'reset', '2045-04-18 22:48:23', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(24, 0, '', '', '', 71, 'moduł historia', '2045-04-18 22:56:54', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(25, 0, '', '', '', 0, 'notatki', '2045-04-18 23:10:12', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(26, 0, '', '', '', 3, 'wyloguj', '2045-04-18 23:10:29', 1, 'Dedal ', 0, 'Komputer-Tomka', 0, '', ''),
(27, 0, '', '', '', 2, 'zaloguj', '2045-04-18 23:10:36', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(28, 0, '', '', '', 11, 'notatki', '2045-04-18 23:10:50', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(29, 0, '', '', '', 11, 'notatki', '2045-04-18 23:12:35', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(30, 0, '', '', '', 11, 'notatki', '2045-04-18 23:13:14', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(31, 0, '', '', '', 14, 'notatka', '2045-04-18 23:13:28', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(32, 0, '', '', '', 11, 'notatki', '2045-04-18 23:31:34', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(33, 0, '', '', '', 11, 'notatki', '2045-04-18 23:32:10', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(34, 0, '', '', '', 14, 'notatka', '2045-04-18 23:32:45', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(35, 0, '', '', '', 3, 'wyloguj', '2043-03-18 14:24:11', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(36, 0, '', '', '', 2, 'zaloguj', '2043-03-18 14:24:23', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(37, 0, '', '', '', 11, 'notatki', '2043-03-18 14:24:57', 10, 'Dave Bowman', 0, 'Komputer-Tomka', 0, '', ''),
(38, 0, '', '', '', 14, 'notatka', '2043-03-18 14:25:22', 10, 'Dave Bowman', 0, 'Komputer-Tomka', 0, '', ''),
(39, 0, '', '', '', 23, 'notatka wersja', '2043-03-18 14:25:52', 10, 'Dave Bowman', 0, 'Komputer-Tomka', 0, '', ''),
(40, 0, '', '', '', 23, 'notatka wersja', '2043-03-18 14:26:13', 10, 'Dave Bowman', 0, 'Komputer-Tomka', 0, '', ''),
(41, 0, '', '', '', 3, 'wyloguj', '2043-03-18 14:32:59', 10, 'Dave Bowman', 0, 'Komputer-Tomka', 0, '', ''),
(42, 0, '', '', '', 2, 'zaloguj', '2043-03-18 14:34:39', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(43, 0, '', '', '', 53, 'test', '2043-03-18 14:35:24', 8, 'Da Yang', 0, 'Komputer-Tomka', 0, '', ''),
(44, 0, '', '', '', 0, 'moduł historia', '2043-03-18 14:48:15', 8, 'Da Yang', 0, 'Komputer-Tomka', 0, '', ''),
(45, 0, '', '', '', 3, 'wyloguj', '2043-03-18 14:49:16', 8, 'Da Yang', 0, 'Komputer-Tomka', 0, '', ''),
(46, 0, '', '', '', 2, 'zaloguj', '2043-03-18 14:49:36', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(47, 0, '', '', '', 71, 'moduł historia', '2043-03-18 14:49:52', 8, 'Da Yang', 0, 'Komputer-Tomka', 0, '', ''),
(48, 0, '', '', '', 71, 'moduł historia', '2043-03-18 14:52:04', 8, 'Da Yang', 0, 'Komputer-Tomka', 0, '', ''),
(49, 0, '', '', '', 71, 'moduł historia', '2043-03-18 14:56:05', 8, 'Da Yang', 0, 'Komputer-Tomka', 0, '', ''),
(50, 0, '', '', '', 71, 'moduł historia', '2043-03-18 15:06:59', 8, 'Da Yang', 0, 'Komputer-Tomka', 0, '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `komputery`
--

CREATE TABLE `komputery` (
  `id` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `nrip` text COLLATE utf8_polish_ci NOT NULL,
  `hostid` text COLLATE utf8_polish_ci NOT NULL,
  `czasrejestracja` text COLLATE utf8_polish_ci NOT NULL,
  `czaszmiana` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `komputery`
--

INSERT INTO `komputery` (`id`, `nazwa`, `nrip`, `hostid`, `czasrejestracja`, `czaszmiana`) VALUES
(1, 'Komputer-Tomka', '127.0.0.1', 'ET511650525459MP2569322069278VV', '2022-04-21 09:17:39', '2022-04-21 09:17:39'),
(2, 'Komputer-Tomka', '127.0.0.1', 'NI131650525466LH15138644139144SE', '2022-04-21 09:17:46', '2022-04-21 09:17:46'),
(3, 'Dedal', '127.0.0.1', 'KV481650526746SM57115536872220NL', '2022-04-21 09:39:06', '2022-04-21 09:39:06'),
(4, 'Dedal', '127.0.0.1', 'LY741650527233YY2739612653592FW', '2022-04-21 09:47:13', '2022-04-21 09:47:13'),
(5, 'Dedal', '127.0.0.1', 'EY81650527331GG81138644295804CC', '2022-04-21 09:48:51', '2022-04-21 09:48:51'),
(6, 'Dedal', '127.0.0.1', 'BT121650527401XF8013204219208CZ', '2022-04-21 09:50:01', '2022-04-21 09:50:01'),
(7, 'Komputer-Tomka', '127.0.0.1', 'QP741650527592OL2267671631272XD', '2022-04-21 09:53:12', '2022-04-21 09:53:12'),
(8, 'Dedal', '127.0.0.1', 'RE451650527921TZ58132042233680BT', '2022-04-21 09:58:41', '2022-04-21 09:58:41'),
(9, 'Dedal', '127.0.0.1', 'QY761650528248NK3829709508464GV', '2022-04-21 10:04:08', '2022-04-21 10:04:08'),
(10, 'Dedal', '127.0.0.1', 'OP281650528262AO44132042260960NI', '2022-04-21 10:04:22', '2022-04-21 10:04:22'),
(11, 'Dedal', '127.0.0.1', 'HK881650532350AD4780876085150LQ', '2022-04-21 11:12:30', '2022-04-21 11:12:30'),
(12, 'Komputer-Tomka', '127.0.0.1', 'IM701650533205LQ88138644789220TC', '2022-04-21 11:26:45', '2022-04-21 11:26:45'),
(13, 'Dedal', '127.0.0.1', 'HW491650540598FQ68148548653820TW', '2022-04-21 13:29:58', '2022-04-21 13:29:58'),
(14, 'Dedal', '127.0.0.1', 'KU751650540669QJ1033010813380RT', '2022-04-21 13:31:09', '2022-04-21 13:31:09'),
(15, 'Dedal', '127.0.0.1', 'VO731650540820CW643301081640QE', '2022-04-21 13:33:40', '2022-04-21 13:33:40'),
(16, 'Komputer-Tomka', '127.0.0.1', 'GC101650541860XU95163403644140DU', '2022-04-21 13:51:00', '2022-04-21 13:51:00'),
(17, 'Dedal', '127.0.0.1', 'GC471650543217MI8085828247284YD', '2022-04-21 14:13:37', '2022-04-21 14:13:37');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logowania`
--

CREATE TABLE `logowania` (
  `id` int(11) NOT NULL,
  `komputery` int(11) NOT NULL,
  `czaslogowania` text COLLATE utf8_polish_ci NOT NULL,
  `czaswylogowania` text COLLATE utf8_polish_ci NOT NULL,
  `czaszmiana` text COLLATE utf8_polish_ci NOT NULL,
  `zalogowany` int(11) NOT NULL DEFAULT '0',
  `del` tinyint(4) NOT NULL,
  `wyloguj` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `logowania`
--

INSERT INTO `logowania` (`id`, `komputery`, `czaslogowania`, `czaswylogowania`, `czaszmiana`, `zalogowany`, `del`, `wyloguj`) VALUES
(1, 1, '2045-04-18 21:41:51', '', '2045-04-18 21:41:51', 1, 1, 0),
(2, 12, '2045-04-18 21:47:34', '2045-04-18 22:48:04', '2045-04-18 22:48:04', 1, 1, 0),
(3, 12, '2045-04-18 22:48:17', '2045-04-18 23:10:29', '2045-04-18 23:10:29', 1, 1, 0),
(4, 12, '2045-04-18 23:10:43', '2043-03-18 14:24:14', '2043-03-18 14:24:14', 2, 1, 0),
(5, 12, '2043-03-18 14:24:45', '2043-03-18 14:33:04', '2043-03-18 14:33:04', 10, 1, 0),
(6, 12, '2043-03-18 14:34:57', '2043-03-18 14:49:21', '2043-03-18 14:49:21', 8, 1, 0),
(7, 16, '2043-03-18 14:49:42', '', '2043-03-18 14:49:42', 8, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `moduly`
--

CREATE TABLE `moduly` (
  `id` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `symbol` varchar(25) COLLATE utf8_polish_ci NOT NULL,
  `stan` int(11) NOT NULL,
  `czasbadania` text COLLATE utf8_polish_ci NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `moduly`
--

INSERT INTO `moduly` (`id`, `nazwa`, `symbol`, `stan`, `czasbadania`, `opis`) VALUES
(0, 'brak', '', 0, '', ''),
(1, 'SERWEROWNIA GRACE', 'SERGRA', 0, '', 'Serwerownia zespołu AI'),
(2, 'MOSTEK DOWODZENIA', 'MOSDOW', 0, '', 'Mostek kapitański - dowodzenia'),
(3, 'LABORATORIUM', 'LAB', 0, '', 'Moduł badawczy laboratorium i oranżeria'),
(4, 'NAPĘD GŁÓWNY', 'NAPGLO', 0, '', 'Moduł napędu głównego'),
(5, 'NAPĘD JONOWY', 'NAPJON', 0, '', 'Moduł napędu jonowego'),
(6, 'NAPĘD MANEWRUJĄCY', 'NAPMAN', 0, '', 'Moduł napędów manewrujących'),
(7, 'ZASILANIE GŁÓWNE', 'ZASGLO', 0, '', 'Moduł zasilania głównego'),
(8, 'REAKTOR ATOMOWY NR 1', 'REAATO1', 0, '', 'Zespół reaktora atomowego nr 1'),
(9, 'REAKTOR ATOMOWY NR 2', 'REAATO2', 0, '', 'Zespół reaktora atomowego nr 2'),
(10, 'MAGAZYN SERWISOWY', 'MAGSER', 0, '', 'Zespół naprawczy'),
(11, 'ZASILANIE AWARYJNE', 'ZASAWA', 0, '', 'Moduł zasilania rezerwowego'),
(12, 'BATERIE ATOMOWE', 'BATATO', 0, '', 'Moduł rezerw energetycznych'),
(13, 'SYSTEM PODTRZYMYWANIA ŻYCIA', 'SYSZYC', 0, '', 'systemy utrzymujące życie na statku'),
(14, 'GRACE', 'GRACE', 0, '', 'moduły logiczne Grace'),
(15, 'POMIESZCZENIE SOCIALNE', 'POMSOC', 0, '', 'pomieszczenie załogi'),
(16, 'ZESPÓŁ OBSERWACYJNY', 'ZESOBS', 0, '', 'pomieszczenie przyrządów obserwacyjnych i nawigacyjnych '),
(17, 'ZESPÓŁ SNU', 'ZESSNU', 0, '', ''),
(18, 'ZESPÓŁ RADIOWY', 'ZESRAD', 0, '', 'pomieszczenie przyrządów nadawczych i odbiorczych'),
(19, 'SKAFANDRY KOSMICZNE', 'SKAKOS', 0, '', 'Skafandry do wyjścia w kosmos');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `moduly_osoby`
--

CREATE TABLE `moduly_osoby` (
  `id` int(11) NOT NULL,
  `moduly` int(11) NOT NULL,
  `osoby` int(11) NOT NULL,
  `czas` text COLLATE utf8_polish_ci NOT NULL,
  `dos` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `moduly_osoby`
--

INSERT INTO `moduly_osoby` (`id`, `moduly`, `osoby`, `czas`, `dos`) VALUES
(1, 3, 2, '2022-04-19 21:52:15', 1),
(2, 3, 3, '2022-04-19 21:52:15', 1),
(3, 3, 4, '2022-04-20 18:15:17', 1),
(4, 3, 5, '2022-04-19 21:52:39', 0),
(5, 3, 6, '2022-04-19 21:52:45', 0),
(6, 3, 7, '2022-04-19 21:52:48', 0),
(7, 3, 8, '2022-04-19 21:52:15', 1),
(8, 3, 9, '2022-04-19 21:52:50', 0),
(9, 3, 10, '2022-04-19 21:52:51', 0),
(10, 3, 11, '2022-04-19 21:52:53', 0),
(11, 10, 2, '2022-04-19 18:26:26', 1),
(12, 10, 3, '2022-04-19 18:26:26', 1),
(13, 10, 4, '2022-04-19 18:26:26', 1),
(14, 10, 5, '2022-04-19 18:26:26', 1),
(15, 10, 6, '2022-04-19 18:26:26', 1),
(16, 10, 7, '2022-04-19 18:26:26', 1),
(17, 10, 8, '2022-04-19 18:26:26', 1),
(18, 10, 9, '2022-04-19 18:26:26', 1),
(19, 10, 10, '2022-04-19 18:26:26', 1),
(20, 10, 11, '2022-04-19 18:26:26', 1),
(21, 2, 2, '2022-04-19 18:29:10', 0),
(22, 2, 3, '2022-04-19 18:29:10', 0),
(23, 2, 4, '2022-04-19 18:29:10', 0),
(24, 2, 5, '2022-04-19 18:29:10', 0),
(25, 2, 6, '2022-04-19 18:29:10', 0),
(26, 2, 7, '2022-04-19 18:29:10', 0),
(27, 2, 8, '2022-04-19 18:29:10', 0),
(28, 2, 9, '2022-04-19 18:29:10', 0),
(29, 2, 10, '2022-04-19 18:29:10', 0),
(30, 2, 11, '2022-04-19 18:29:10', 0),
(31, 12, 2, '2022-04-19 18:34:37', 1),
(32, 12, 3, '2022-04-19 18:38:02', 1),
(33, 12, 4, '2022-04-19 18:38:04', 1),
(34, 12, 5, '2022-04-21 09:35:30', 0),
(35, 12, 6, '2022-04-19 18:38:19', 0),
(36, 12, 7, '2022-04-19 18:34:34', 0),
(37, 12, 8, '2022-04-19 18:34:34', 0),
(38, 12, 9, '2022-04-19 18:34:34', 0),
(39, 12, 10, '2022-04-19 18:34:34', 0),
(40, 12, 11, '2022-04-19 18:34:34', 0),
(41, 14, 2, '2022-04-19 18:38:26', 1),
(42, 14, 3, '2022-04-19 18:38:31', 1),
(43, 14, 4, '2022-04-19 18:38:34', 1),
(44, 15, 5, '2022-04-19 18:39:06', 1),
(45, 6, 9, '2022-04-19 18:39:22', 0),
(46, 9, 5, '2022-04-19 18:45:49', 0),
(47, 7, 9, '2022-04-19 18:46:07', 0),
(48, 9, 9, '2022-04-19 18:48:47', 0),
(49, 9, 12, '2022-04-19 18:53:40', 0),
(50, 9, 13, '2022-04-19 18:53:42', 0),
(51, 9, 2, '2022-04-19 18:57:04', 1),
(52, 18, 4, '2022-04-19 20:09:37', 1),
(53, 3, 1, '2022-04-19 21:52:55', 1),
(54, 3, 12, '2022-04-19 21:52:59', 1),
(55, 3, 15, '2022-04-19 21:53:03', 1),
(56, 19, 2, '2022-04-19 21:53:21', 1),
(57, 19, 3, '2022-04-19 21:53:21', 1),
(58, 19, 4, '2022-04-19 21:53:21', 1),
(59, 19, 5, '2022-04-19 21:53:21', 1),
(60, 19, 6, '2022-04-19 21:53:21', 1),
(61, 19, 7, '2022-04-19 21:53:21', 1),
(62, 19, 8, '2022-04-19 21:53:21', 1),
(63, 19, 9, '2022-04-19 21:53:21', 1),
(64, 19, 10, '2022-04-19 21:53:21', 1),
(65, 19, 11, '2022-04-19 21:53:21', 1),
(66, 19, 15, '2022-04-19 21:53:23', 1),
(67, 19, 1, '2022-04-19 21:53:24', 1),
(68, 19, 12, '2022-04-19 21:53:25', 1),
(69, 19, 13, '2022-04-19 21:53:30', 1),
(70, 17, 2, '2022-04-21 09:35:42', 0),
(71, 17, 3, '2022-04-21 09:35:46', 1),
(72, 17, 8, '2022-04-21 09:35:50', 1),
(73, 17, 1, '2022-04-21 11:21:55', 1),
(74, 18, 1, '2022-04-21 11:21:58', 1);

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
  `blokadastan` tinyint(1) NOT NULL,
  `blokadaudo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `notatki_ng`
--

INSERT INTO `notatki_ng` (`id`, `identyfikator`, `tytul`, `wlasciciel`, `czas`, `stan`, `blokadastan`, `blokadaudo`) VALUES
(1, '1650518995GB39612455880', 'Polecenia - opis', 9, '2043-04-01 12:49:00', 0, 0, 0),
(2, '1650523221J1C156799705995', 'wnioski', 4, '2045-01-01 13:59:26', 0, 0, 0),
(3, '1650537739U2Z14854839651', 'PROCEDURY NA WYPADEK SPOTKANIA OBCEJ FORMY ŻYCIA', 15, '2022-04-21 12:43:14', 1, 0, 0),
(4, '1650537862U3Y54467749446', 'PROCEDURY NA WYPADEK SPOTKANIA OBCEJ FORMY ŻYCIA  1. WSTĘP', 15, '2043-03-11 10:00:00', 0, 0, 0),
(5, '1650537961U4L19806455532', 'PROCEDURY NA WYPADEK SPOTKANIA OBCEJ FORMY ŻYCIA 2.  3 RODZAJE FORMY KONTAKTU', 15, '2043-03-11 10:00:00', 0, 0, 0),
(6, '1650538082U5S66021523280', 'PROCEDURY NA WYPADEK SPOTKANIA OBCEJ FORMY ŻYCIA  3. DZIAŁANIE ZAŁOGI', 15, '2043-03-11 10:00:00', 0, 0, 0),
(7, '1650538648U6Z87478548344', 'Plan Misji Dedal na Europę, księżyc Jowisza', 15, '2043-03-11 10:00:00', 0, 0, 0),
(8, '1650538832U7G89129096928', 'wiadomość dla: John Spow', 15, '2045-02-02 00:00:00', 0, 0, 0),
(9, '1650538896U8K89129100384', 'wiadomość dla: Dave Bowman', 15, '2045-02-02 00:00:00', 0, 0, 0),
(10, '1650538924U9K108935568984', 'wiadomość dla: Manu Punjabi', 15, '2045-02-02 00:00:00', 0, 0, 0),
(11, '1650538942U10Q127091498534', 'wiadomość dla: William Weir', 15, '2045-02-02 00:00:00', 0, 0, 0),
(12, '1650538959U11N16505389590', 'wiadomość dla: Peng Yaping', 15, '2045-02-02 00:00:00', 0, 0, 0),
(13, '1650538973U12J29709701514', 'wiadomość dla: Zeki Demir', 15, '2045-02-02 00:00:00', 0, 0, 0),
(14, '1650538990U13Q103983956370', 'wiadomość dla: Da Yang', 15, '2045-02-02 00:00:00', 0, 0, 0),
(15, '1650539678O14W80876444222', 'WAŻNE! W sprawie GRACE.', 9, '2045-01-15 13:15:15', 0, 0, 0),
(16, '1650540192P15U26408643072', 'TEST PSYCHOLOGICZNY DLA ZAŁOGI STATKU KOSMICZNEGO “DEDAL”', 10, '2043-03-18 14:21:43', 0, 0, 0);

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
(1, 1, 0, 0, '2043-04-01 12:49:00', ' hibernacja off	-->	 hibernacja off\n hibernacja on	-->	 hibernacja on\n moduly wszystkie	-->	 Lista modułów Dedala\n moduły	-->	 Lista modułów Dedala\n naprawa	-->	 wykonanie naprawa na zespołach\n notatka	-->	 Wczytanie notatki\n notatka dostęp	-->	 pokazuje udostępnienie notatki o identyfikatorze\n notatka edytuj	-->	 Edycja notatki\n notatka kasuj	-->	 kasuje wyświetlenie notatki\n notatka nowa	-->	 Nowa notatka nagłówek\n notatka udostępnij	-->	 udostępnia osobie notatkę o identyfikatorze\n notatka usuń	-->	 usuwa notatkę o identyfikatorze\n notatka wczytaj	-->	 Wczytanie notatki\n notatka wersja	-->	 Zmienia wersję notatki\n notatka zamknij	-->	 Zamyka edycję notatki bez edycji\n notatka zapisz	-->	 Zapis notatki\n polecenie	-->	 polecenia dla dedala\n pomoc	-->	 Dostepne polecenia w zależności od logowania\n reset	-->	 wykonanie resetu na zespole\n test	-->	 wykonanie testu na zespole\n wyloguj	-->	 Wylogowanie z terminala\n zaloguj	-->	 Logowanie do terminala\n zespoły	-->	 Lista zespołów wybranego Modułu Dedala\n zespoły wszystkie	-->	 Lista zespołów Dedala\n zespół	-->	 Stan wybranego zespołu\n'),
(2, 1, 1, 0, '2043-12-07 23:11:48', ' ?	-->	 Dostepne polecenia w zależności od logowania\n hasło	-->	 zmiana hasła\n hibernacja off	-->	 hibernacja off\n hibernacja on	-->	 hibernacja on\n historia kasuj	-->	 Kasuje historię komunikatów\n informacje kasuj	-->	 Kasuje historię informacji\n moduly wszystkie	-->	 Lista modułów Dedala\n moduł historia	-->	 Historia modułu\n moduły	-->	 Lista modułów Dedala\n naprawa	-->	 wykonanie naprawa na zespołach\n naprawa historia	-->	 Historia napraw\n notatka	-->	 Wczytanie notatki\n notatka dostęp	-->	 pokazuje udostępnienie notatki o identyfikatorze\n notatka edytuj	-->	 Edycja notatki\n notatka kasuj	-->	 kasuje wyświetlenie notatki\n notatka nowa	-->	 Nowa notatka nagłówek\n notatka udostępnij	-->	 udostępnia osobie notatkę o identyfikatorze\n notatka usuń	-->	 usuwa notatkę o identyfikatorze\n notatka wczytaj	-->	 Wczytanie notatki\n notatka wersja	-->	 Zmienia wersję notatki\n notatka zamknij	-->	 Zamyka edycję notatki bez edycji\n notatka zapisz	-->	 Zapis notatki\n polecenia kasuj	-->	 Kasuje historię poleceń\n polecenie	-->	 polecenia dla dedala\n pomoc	-->	 Dostepne polecenia w zależności od logowania\n pomoc cała	-->	 Wszystkie polecenia w zależności od logowania\n reset	-->	 wykonanie resetu na zespole\n reset historia	-->	 Historia resetów\n test	-->	 wykonanie testu na zespole\n test historia	-->	 Historia testów\n wszystko kasuj	-->	 Kasuje historię komunikatów i poleceń\n wyloguj	-->	 Wylogowanie z terminala\n zaloguj	-->	 Logowanie do terminala\n zespoły	-->	 Lista zespołów wybranego Modułu Dedala\n zespoły wszystkie	-->	 Lista zespołów Dedala\n zespół	-->	 Stan wybranego zespołu\n'),
(3, 2, 0, 0, '2045-01-01 13:59:26', ''),
(4, 2, 1, 0, '2045-01-01 14:00:37', 'Nie mam żadnych wniosków związanych z pobytem'),
(5, 3, 0, 0, '2045-04-18 23:02:54', ''),
(6, 4, 0, 0, '2045-04-18 23:04:56', 'WERSJA „C” DLA CAŁEGO STANU OSOBOWEGO STATKU KOSMICZNEGO DEDAL. \n\n1.      WSTĘP.\nNie możemy wykluczyć napotkania istoty innego gatunku, dlatego powstała ta karta określająca najważniejsze działania/procedury na wypadek właśnie takiego spotkania. Trzeba jednak zaznaczyć, że wszelkie działania tutaj opisane mogą okazać się niewystarczające, dlatego bardzo ważne w tym wszystkim będzie umiejętność szybkiej analizy i improwizacji. Pamiętajcie, że procedury to jedno, a rzeczywistość to drugie.\n'),
(7, 5, 0, 0, '2045-04-18 23:06:35', ' - FORMA 1. Kontakt wzrokowy.\nKontakt wzrokowy następuje w momencie fizycznego dostrzeżenia lub zaobserwowania nieznanego statku kosmicznego lub istoty myślącej, będącej w zasięgu pola widzenia ludzkiego wzroku. Jednak do kontaktu bezpośredniego nie dochodzi.\n - FORMA 2. Kontakt dźwiękowy.\nKontakt dźwiękowy następuje w momencie odebrania sygnału/dźwięku wchodzącego w zakres dźwięków określonych jako mowa lub działanie urządzeń/sprzętu. Zakres ten określa tonacje i barwę jaka może oznaczać, iż dany dźwięk jest dźwiękiem nienaturalnym czyli użytkowym. Do dźwięków użytkowych zaliczamy mowę, odgłosy urządzeń, silników lub też nawet odgłosy przemieszczania się.\n - FORMA 3. Kontakt bezpośredni.\nKontakt bezpośredni następuje w momencie fizycznego kontaktu z przedstawicielem innej rasy lecz dopiero po wymianie słów/znaków/gestów. Jeżeli mimo przebywania z obcą formą życia, oko w oko, nie dojdzie do próby rozmowy/konwersacji. Taki kontakt bezpośredni nie jest określony jako udany/wykonany. Wtedy mówimy o kontakcie wzrokowym.'),
(8, 6, 0, 1, '2045-04-18 23:08:37', ''),
(9, 6, 1, 0, '2045-04-18 23:09:03', 'W obu pierwszych formach należy sporządzić raport i jak najszybciej przesłać go do centrali misji, a następnie czekać na dalsze polecenia. W Formie 3 należy użyć zasady trzech czasowników, w miarę możliwości: ZABRAĆ NA POKŁAD/ ODSEPAROWAĆ/ ZBADAĆ potem wysłać wstępny raport, OBSERWOWAĆ i czekać na dalsze polecenia z centrali misji. Do ZBADANIA należy użyć Analizatora. OGRANICZYĆ wszelkie kontakty osobnika z personelem nieprzeszkolonym lub nieposiadającym żadnych zadań związanych z nadzorem nad obcą formą życia.'),
(10, 7, 0, 0, '2045-04-18 23:18:03', '2043-03-11 Start Dedala\n2045-04-07 Rozpoczęcie hamowania\n           Wejście na orbitę Jowisza\n           Wypuszczenie 3 satelitów komunikacyjnych\n           Wejście na orbitę Europy\n2045-04-07 Koniec hamowania\n2045-04-21 Przygotowania do lądowania na Europie\n2045-04-30 Lądowanie na  Europie\n2045-05-01 Rozpoczęcie 2 letniej misji na powierzchni Księżyca\n           Budowanie bazy - ustawienie drukarek 3D\n           Zebranie próbek lodów\n           Przygotowanie do odwiertów do oceanu\n           Eksploracja oceanu pod lodem przez drony\n           Budowanie bazy w oceanie\n           Załogowe misje w oceanie\n2047-03-01 Start z Europy\n2047-03-11 Start ku Ziemi\n2049-04-07 Lądowanie na Ziemi\n'),
(11, 8, 0, 0, '2045-04-18 23:21:06', 'Kochanie! Mam nadzieje, że u Ciebie wszystko dobrze. Wiesz jak bardzo przeżywam te twoje kosmicznie zabawy. Dzieci rosną szybko, jak na drożdżach. W domu wszystko, na razie działa. Już nie możemy doczekać się kiedy do nas wrócisz, a wiemy że to nie jest nawet połowa twojej misji.\n\nTęsknimy i kochamy\nRodzinka\n'),
(12, 9, 0, 0, '2045-04-18 23:22:11', 'Tato jest problem. Wiem, że jesteś daleko ale może odpiszesz, zresztą nieważne. Słuchaj, mam problem bo pobiłam koleżankę. Wiesz, że nigdy czegoś takiego bym nie zrobiła ale gadała na mój temat takie świństwa, że nie wytrzymałam i dałam jej w pysk. Przepraszam, po prostu mnie poniosło, mam nadzieje, że się na mnie nie gniewasz. Kocham Cię tato i tęsknie! '),
(13, 10, 0, 0, '2045-04-18 23:22:39', 'Kochanie, z tej strony Twoja ciotka, ciotka Fatima! Mam nadzieje, że tam u Ciebie w kosmosie wszystko jest dobrze i będziesz miał o czym opowiadać po powrocie! Tak się bałam gdy startowaliście, a patrz! Tyle czasu już minęło i nadal wszystko jest dobrze, z tego co mówią w telewizji. Manu muszę jednak Cię o coś prosić, czy mógłbyś mi pożyczyć trochę kasy do końca miesiąca? Wiesz jak ciężko jest tutaj u nas na ziemi!? Nie dużo, wystarczy 2000 tys. Z góry dziękuje. Wiem, że mogę na Ciebie liczyć.\n\nKochająca Ciocia Fatima\n'),
(14, 11, 0, 0, '2045-04-18 23:22:56', 'Hej William! Tu Samantha!\nJak wiesz, jestem już w drodze na Merkurego. Misja nr.69! Mam nadzieję, że u ciebie wszystko w porządku i nie wyśmieją cię za twojego kosmicznego przyjaciela na ręce. U nas ludzie zaczynają schizować i ja też. Zaczęliśmy dostawać wiadomości od martwych członków załogi. Jestem przerażona, ale nie wiem czy boję się duchów czy to, że mój umysł płata mi figle. Tak, 2 osoby u nas zginęły podczas snu. Mam nadzieję, że nasze misje skończą się dla nas bezpiecznie.\n\nKocham cię\nSamantha\n'),
(15, 12, 0, 2, '2045-04-18 23:23:14', 'Witaj Peng.\nDługo nie odpowiadałem, ale zastanawiałem się nad tym co napisałeś. Masz rację, to nie był dobry pomysł aby włóczyć się tak bez celu po stepie Doliny Emin, szukając tylko wody. To była ucieczka. Przemyślałem swoje życie, wróciłem myślami do naszej rozmowy sprzed twojego wylotu i zmieniłem priorytety. Masz rację przestanę unikać ludzi, postaram się przełamać. I może wydaje ci się to nieprawdopodobne ale mam zamiar poszukać innych ludzi. Tak, to był szok nawet dla mnie. A co dopiero dla ciebie. Pewnie pamiętasz jak panikowałem w dzieciństwie już przy myśli o obcych. Dziś się też z tego śmieję. Ale wtedy uważałem, że tacy nieznajomi są okropni. Chcą mnie porwać, torturować, więzić czy zabić. Dzięki bracie, znów miałeś rację. To tak jak z Psychiatrą. Napisz jak się wam wiedzie. Mam nadzieję, że jesteś zdrowy.        \nTwój przyrodni brat \nTari\n'),
(16, 13, 0, 0, '2045-04-18 23:23:28', 'Cześć Synku! Z tej strony mama! Nie mogłam się doczekać, aż napiszesz więc sama napisałam! Mam nadzieje, że tam na górze wszystko jest dobrze, że jesteś zdrowy i, że nie masz kłopotów z kolegami. Twój ukochany kot Garfield jeszcze mniej się rusza - tylko je i śpi. Może raz widziałam jak próbował wskoczyć na blat kuchenny po resztki kurczaka z obiadu, niestety nie dał rady i spadł na cztery łapy, jak to kot. Zeki nie karz następnym razem starej matce czekać tak długo, aż coś napiszesz! Wiesz jak bardzo nie lubię gdy tak długo się nie odzywasz! No nic, pracuj tam dzielnie i szybko wracaj do domu syneczku! Pa pa!\n\nKochająca Mamusia\n'),
(17, 14, 0, 0, '2045-04-18 23:23:44', '     Witaj Da, z tej strony Twój dziadek Chang, zresztą pewnie to wiesz. \nPisałeś ostatnio, że macie na pokładzie pilota grającego w szachy. Zawsze chciałem Cię nauczyć grać w tę Królewską Grę. Wiem jednak, że musiałbyś wybierać pomiędzy szachami a nauką. Znam Cię. \nNo więc tak sobie ostatnio myślałem, aby spróbować własnoręcznie wyrzeźbić szachy w drewnie! Wiesz ile tego drewna mamy przed domem! Tylko problem w tym, że nigdy czegoś takiego nie próbowałem, więc będzie dużo roboty. Ale mam dużo czasu, to pewnie zdążę zanim wrócisz. Będą czekać na ciebie piękne drewniane szachy. Może nawet usiądziemy razem i nauczę Cię podstaw.\nU rodziców wszystko po staremu. Twoja siostra Yu Tian wychodzi za mąż. Cała wioska obserwuje twoją wyprawę. Wszyscy są tacy dumni, że to właśnie Ty poleciałeś. \nTak więc, mam nadzieje, że u Ciebie wszystko dobrze, że jesteś zdrowy i, że niedługo się spotkamy, gdy wrócisz. Musisz przyjechać osobiście do wioski. Jesteś teraz ważną personą tutaj. \nCzekam!\nTwój kochający Dziadek Chang\n'),
(18, 12, 1, 0, '2045-04-18 23:33:45', 'Witaj Peng.\nDługo nie odpowiadałem, ale zastanawiałem się nad tym co napisałeś. Masz rację, to nie był dobry pomysł aby włóczyć się tak bez celu po stepie Doliny Emin, szukając tylko wody. To była ucieczka. Przemyślałem swoje życie, wróciłem myślami do naszej rozmowy sprzed twojego wylotu i zmieniłem priorytety. Masz rację przestanę unikać ludzi, postaram się przełamać. I może wydaje ci się to nieprawdopodobne ale mam zamiar poszukać innych ludzi. Tak, to był szok nawet dla mnie. A co dopiero dla ciebie. Pewnie pamiętasz jak panikowałem w dzieciństwie już przy myśli o obcych. Dziś się też z tego śmieję. Ale wtedy uważałem, że tacy nieznajomi są okropni. Chcą mnie porwać, torturować, więzić czy zabić. Dzięki bracie, znów miałeś rację. To tak jak z Psychiatrą. Napisz jak się wam wiedzie. Mam nadzieję, że jesteś zdrowy.        \nTwój przyrodni brat \nTari'),
(19, 15, 0, 2, '2045-04-18 23:35:12', ''),
(20, 15, 1, 0, '2045-04-18 23:36:34', 'Mam nadzieje, że w końcu weźmiecie na poważnie moje wątpliwości dotyczące naszej kochanej sztucznej inteligencji. Nie neguje tego, że cokolwiek by się z nią nie działo to i tak jest to cud techniki, ale do cholery coś jest z nią nie tak! Jej zachowanie z każdym dniem zbliża się do nadopiekuńczej matki, która tak bardzo kocha swoje dzieci, że próbuje pomagać im nawet wtedy gdy nie ma w czym pomagać. Żeby nie być gołosłownym to od jakiegoś momentu, chyba od jakiejś gry w szachy czy coś, zaczęła nam podawać do jedzenia dodatkowe dawki magnezu, bo jak sama stwierdziła: „ Nikt nie gra z Weirem w szachy, a to oznacza, że mało ćwiczycie wasze mózgi i neurony.” Brzmi to idiotycznie, prawda? Ale to nie koniec! Jakiś czas temu wlała podwójne środki antydepresantów do napojów, dla dwóch członków załogi, już nawet nie pamiętam komu dokładnie, ale tylko dlatego, że cytuje: „Widziałam, że przez kilka godzin byli smutni i mało zaangażowani w rozmowę gdy ich zaczepiałam.”. Czy to nadal uważacie za normalne zachowanie sztucz '),
(21, 15, 2, 0, '2045-04-18 23:38:54', 'Skończyło się miejsce.\nCzy to nadal uważacie za normalne zachowanie sztucznej inteligencji? Bo jak dla mnie, tak właśnie zaczyna się załamanie programu lub głównej linii logicznej trzymającej w kupie jej procesy myślowe. Na zakończenie wisienka kurwa na torcie! Niedawno zauważyłem, że moje racje żywnościowe wydawane codziennie o wyznaczonych porach, skurczyły się drastycznie. Dlatego postanowiłem zapytać się Grace, o co chodzi, czy jedzenie się nam kończy czy co? SI odpowiedziała mi, teraz uważajcie! „Gdy rozmawiałam z Weirem, powiedział, że uważa, iż za mało ćwiczę i, że kapitan tego nie pilnuje, tak jak powinien. Więc postanowiłam Ci jakoś pomóc z nadwagą!”. Koniec kurwa cytatu. Czy teraz mnie wysłuchacie? Czy teraz weźmiecie na poważnie to, co do was mówię, na temat tego co dzieje się podejrzanego z tą SI?! Nie chciałem tego pisać, ale jeżeli nic nie d%r^vgfv...d43go%<(*akże bez odbioru.'),
(22, 15, 3, 2, '2045-04-18 23:40:36', 'wszysko w wersji 1 i 2'),
(23, 15, 4, 0, '2045-04-18 23:41:09', 'wszysko w wersji 1 i 2'),
(24, 16, 0, 0, '2043-03-18 14:21:43', ''),
(25, 16, 1, 0, '2043-03-18 14:21:57', '1.       Gdy zaczynasz wchodzić po schodach, która noga podnosi się pierwsza? Prawa czy lewa?\n2.       Wstajesz rano po dobrym śnie. Idziesz do garderoby. Zakładasz białą czy czarną podkoszulkę?\n3.       Na parkingu są dwa bezpańskie zwierzęta. Kot i pies. Które adoptujesz, a które oddasz do chińskiej restauracji.\n4.       Oglądasz film wojenny. Nagle pojawia się scena brutalnego mordu. Robisz głośniej tak, aby słyszeli sąsiedzi, czy zapisujesz scenę mordu w pamięci swego dekodera, i codziennie o 8.04 odtwarzasz ją dla uspokojenia własnych nerwów.\n5.       Jesz kolację w domu. Mieszkasz samotnie i zawsze o 19.00 jesz płatki owsiane w mleku. Okazuje się jednak, że nie ma mleka w lodówce. Dzwonisz po dostawcę jedzenia i zamawiasz mleko czy używa swego ciemno-zielonego samochodu, aby pojechać do sklepu?\n'),
(26, 16, 2, 0, '2043-03-18 14:22:50', '6.       Czy kolor żółty jest okrągły, czy kwadratowy?\n7.       Chcesz podgrzać mrożoną pizze, używasz piekarnika czy mikrofalówki?\n8.       Wolisz jajka na twardo czy na miękko?\n9.       Czy często śnią Ci się sny z kominiarzami udrażniającymi kominy.\n10.   Wolisz bardziej poniedziałki czy piątki? Jeżeli poniedziałki to, w których godzinach czujesz się najlepiej?\n11.   Czy czujesz się samotny/samotna?\n12.   Masz niepokolorowany wazon. Czy rysujesz różową świnię, czy aborację metafizyczną kształcenia się nowego fragmentu wszechświata?\n13.   Wolisz samochód bez dachu czy skuter bez kół?\n14.   Jedziesz szybką kolejką górską z innymi pasażerami, nagle pierwszy wagon z ludźmi wypada z torów i spada z olbrzymią szybkością w dół. Jak reagujesz? Śmiejesz się do rozpuku, bo to jest śmieszne, czy szuka klucza płaskiego 14  w plecaku, aby dokręcić śrubki w wagonie?\n'),
(27, 16, 3, 0, '2043-03-18 14:23:26', '15.   Gdybyś miał/miała mieć psa, to czy byłby to kundel, czy rasowy?\n16.   Gołąb osrał twój samochód. Masz przy sobie procę z kamieniem i wyrzutnie rakiet, czym częstujesz tego gołębia?\n17.   Jest cicha i głęboka noc. Idziesz samotnie wąskim chodnikiem i nagle twoją drogę przebiega jeż. Zawracasz do domu, bo uważasz, że to znak z nieba czy idziesz za tym zwierzakiem, aby zobaczyć czy też jest singlem?\n18.   Masz do wyboru albo utratę lewej nogi, albo lewej ręki, a pytanie brzmi. Z jakiego profilu zostało wykonane malowidło Cara Iwana Groźne?\n19.   Gdybyś mógł zostać kimkolwiek na świecie, to czemu nie zostałbyś żebrakiem?\n20.   Czy czasem miewasz myśli na temat rychłej i nieuchronnej śmierci, która czeka na ciebie gdzieś tam w kosmosie?\n');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `notatki_udo`
--

CREATE TABLE `notatki_udo` (
  `id` int(11) NOT NULL,
  `notatki_ng` int(11) NOT NULL,
  `osoby` int(11) NOT NULL,
  `czas` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `del` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `notatki_udo`
--

INSERT INTO `notatki_udo` (`id`, `notatki_ng`, `osoby`, `czas`, `del`) VALUES
(1, 1, 2, '', 0),
(2, 1, 3, '', 0),
(3, 1, 4, '', 0),
(4, 1, 6, '', 0),
(5, 1, 5, '', 0),
(6, 1, 8, '', 0),
(7, 1, 10, '', 0),
(8, 1, 7, '', 0),
(9, 1, 9, '', 1),
(10, 1, 11, '', 0),
(11, 1, 12, '', 1),
(12, 1, 15, '', 1),
(13, 2, 2, '', 0),
(14, 6, 2, '', 0),
(15, 6, 3, '', 0),
(16, 6, 4, '', 0),
(17, 6, 5, '', 0),
(18, 6, 6, '', 0),
(19, 6, 8, '', 0),
(20, 6, 10, '', 0),
(21, 6, 7, '', 0),
(22, 6, 9, '', 0),
(23, 6, 11, '', 0),
(24, 5, 2, '', 0),
(25, 5, 3, '', 0),
(26, 5, 4, '', 0),
(27, 5, 5, '', 0),
(28, 5, 6, '', 0),
(29, 5, 8, '', 0),
(30, 5, 10, '', 0),
(31, 5, 7, '', 0),
(32, 5, 9, '', 0),
(33, 5, 11, '', 0),
(34, 5, 1, '', 1),
(35, 4, 2, '', 0),
(36, 4, 3, '', 0),
(37, 4, 4, '', 0),
(38, 4, 5, '', 0),
(39, 4, 6, '', 0),
(40, 4, 8, '', 0),
(41, 4, 10, '', 0),
(42, 4, 7, '', 0),
(43, 4, 9, '', 0),
(44, 4, 11, '', 0),
(45, 7, 2, '', 0),
(46, 7, 3, '', 0),
(47, 7, 4, '', 0),
(48, 7, 5, '', 0),
(49, 7, 6, '', 0),
(50, 7, 8, '', 0),
(51, 7, 10, '', 0),
(52, 7, 7, '', 0),
(53, 7, 9, '', 0),
(54, 7, 11, '', 0),
(55, 7, 1, '', 0),
(56, 7, 12, '', 0),
(57, 8, 2, '', 1),
(58, 15, 15, '', 0);

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
  `haslonew` text COLLATE utf8_polish_ci NOT NULL,
  `autoryzacja` tinyint(1) NOT NULL,
  `zalogowanyorg` tinyint(1) NOT NULL,
  `blokadaorg` tinyint(1) NOT NULL,
  `hannahorg` tinyint(1) NOT NULL,
  `fionaorg` tinyint(1) NOT NULL,
  `rajehorg` tinyint(1) NOT NULL,
  `naroslorg` tinyint(4) NOT NULL,
  `uzytkownik` text COLLATE utf8_polish_ci NOT NULL,
  `czaslogowania` text COLLATE utf8_polish_ci NOT NULL,
  `czaswylogowania` text COLLATE utf8_polish_ci NOT NULL,
  `odpowiedz` text COLLATE utf8_polish_ci NOT NULL,
  `reakcja` int(11) NOT NULL,
  `zalogowanynew` tinyint(1) NOT NULL,
  `blokadanew` tinyint(1) NOT NULL,
  `hannahnew` tinyint(1) NOT NULL,
  `fionanew` tinyint(1) NOT NULL,
  `rajehnew` tinyint(1) NOT NULL,
  `naroslnew` tinyint(4) NOT NULL,
  `hannahid` int(11) NOT NULL,
  `fionaid` int(11) NOT NULL,
  `rajehid` int(11) NOT NULL,
  `naroslid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `osoby`
--

INSERT INTO `osoby` (`id`, `czaszmiana`, `kolejnosc`, `imie`, `nazwisko`, `funkcja`, `specjalnosc`, `narodowosc`, `userlogin`, `rodzaj`, `user`, `hasloorg`, `haslonew`, `autoryzacja`, `zalogowanyorg`, `blokadaorg`, `hannahorg`, `fionaorg`, `rajehorg`, `naroslorg`, `uzytkownik`, `czaslogowania`, `czaswylogowania`, `odpowiedz`, `reakcja`, `zalogowanynew`, `blokadanew`, `hannahnew`, `fionanew`, `rajehnew`, `naroslnew`, `hannahid`, `fionaid`, `rajehid`, `naroslid`) VALUES
(0, '', '0', '@#', 'd4$%%', '', '', '', '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 9, 7, 11, 13),
(1, '', '110', 'Dedal', '', 'statek', '', '', 'dedal', 'S', 2, '123', '123', 0, 1, 0, 1, 1, 1, 0, '', '2022-03-31 17:24:08', '', 'Dedal jest tylko jeden', 0, 1, 1, 1, 1, 1, 0, 9, 7, 11, 13),
(2, '2045-06-17 23:54:56', '10', 'John', 'Spow', 'Kapitan', 'nawigator, pilot', 'USA', 'john', 'M', 1, '123', '123', 1, 1, 1, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '2045-06-17 23:54:30', '2045-06-17 23:54:56', 'Witaj John Spow', 200, 1, 1, 1, 0, 0, 0, 9, 7, 11, 13),
(3, '2022-03-16 21:59:32', '20', 'Peng', 'Yaping', 'I oficer', 'astrofizyk, dyplomata', 'Chiny', 'peng', 'M', 1, '123', '123', 0, 1, 1, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '', '', 'Witaj Louise Banks', 400, 1, 1, 1, 0, 0, 0, 9, 7, 11, 13),
(4, '2045-06-17 05:48:06', '30', 'William', 'Weir', 'II oficer', 'matematyk, inżynier jądrowy', 'Unia Europejska', 'william', 'M', 1, '123', '123', 0, 1, 1, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '', '', 'Witaj Dave Bowman', 400, 1, 1, 1, 0, 0, 0, 9, 7, 11, 13),
(5, '2022-03-13 21:38:03', '40', 'Manu', 'Punjabi', 'III oficer', 'elektronik, nawigator', 'Indie', 'manu', 'M', 1, '123', '123', 0, 1, 1, 0, 0, 0, 0, '', '', '', 'Witaj Dwayne Hicks', 400, 1, 1, 1, 0, 0, 0, 9, 7, 11, 13),
(6, '2022-03-20 13:40:13', '50', 'Zeki', 'Demir', 'IV oficer', 'pilot, nawigator', 'Turcja', 'zeki', 'M', 1, '123', '123', 1, 1, 1, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '', '', 'Witaj Anna Lee Dwell', 400, 1, 1, 1, 0, 0, 0, 9, 7, 11, 13),
(7, '2022-03-23 18:44:54', '60', 'Akito', 'Yamazaki', 'Psychiatra', 'psychiatra, programista', 'Japonia', 'akito', 'M', 2, '123', '123', 0, 0, 1, 1, 1, 1, 1, 'Komputer-Tomka', '', '', 'Witaj William Weir', 400, 1, 1, 1, 1, 1, 0, 9, 7, 11, 13),
(8, '2045-06-17 05:47:01', '70', 'Da', 'Yang', 'Lekarz', 'lekarz, biolog', 'Chiny', 'da', 'M', 1, '123', '123', 0, 1, 1, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '', '', 'Witaj Elizabeth Halperin', 400, 1, 1, 1, 0, 0, 0, 9, 7, 11, 13),
(9, '2022-03-27 20:10:49', '80', 'Han', 'Stevens', 'Informatyk', 'programista, łącznościowiec', 'Turcja', 'han', 'M', 2, '123', '123', 0, 0, 1, 1, 1, 1, 1, 'Komputer-Tomka', '', '', 'Witaj Hannah Stevens', 0, 1, 1, 1, 1, 1, 0, 9, 7, 11, 13),
(10, '', '90', 'Dave', 'Bowman', 'Łączność', 'łącznościowiec, psycholog', 'USA', 'dave', 'M', 1, '123', '123', 0, 1, 1, 0, 0, 0, 0, '', '', '', 'Witam Joshua', 0, 1, 1, 1, 0, 1, 0, 9, 7, 11, 13),
(11, '', '100', 'Rajeh', ' Amit', 'Pilot', 'pilot / nawigator', 'Indie', 'rajeh', 'M', 2, '123', '123', 0, 0, 1, 1, 1, 1, 1, '', '', '', 'Witam MG', 0, 1, 1, 1, 1, 1, 0, 9, 7, 11, 13),
(12, '', '120', 'GRACE', ' ', 'SI', '', '', 'grace', 'S', 2, '123', '123', 0, 0, 0, 1, 1, 1, 1, '', '', '', 'Witam Grace', 0, 1, 0, 1, 1, 1, 0, 9, 7, 11, 13),
(13, '', '130', '?????', '???', 'Narośl Weira', '', '', '', 'S', 3, '123', '123', 0, 0, 0, 1, 1, 1, 1, '', '', '', 'Witam', 0, 0, 0, 1, 1, 1, 0, 9, 7, 11, 13),
(15, '', '140', 'NASA', ' ', 'Ziemia', '', '', 'nasa', 'S', 2, '123', '123', 0, 0, 0, 1, 1, 1, 1, '', '', '', 'Witam Grace', 0, 0, 0, 1, 1, 1, 0, 9, 7, 11, 13);

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
  `czas` text COLLATE utf8_polish_ci NOT NULL,
  `dzialania` text COLLATE utf8_polish_ci NOT NULL,
  `komunikat` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `polecenia`
--

INSERT INTO `polecenia` (`id`, `nazwa`, `zalogowany`, `wylogowany`, `autoryzacja`, `polecenie`, `czas`, `dzialania`, `komunikat`) VALUES
(1, 'pomoc', 1, 1, 0, 1, '500', 'pomoc_1', 'Dostepne polecenia w zależności od logowania i autoryzacji'),
(2, 'zaloguj', 0, 1, 0, 2, '500', 'zaloguj_1', 'Logowanie do terminala'),
(3, 'wyloguj', 1, 0, 0, 3, '500', 'wyloguj_1', 'Wylogowanie z terminala'),
(4, 'moduły', 1, 0, 0, 4, '1000', 'moduly_1', 'Lista modułów Dedala'),
(5, 'login', 0, 1, 0, 2, '250', 'zaloguj_0', 'Logowanie do terminala'),
(6, 'pomoc cała', 1, 1, 1, 6, '500', 'pomoc_cala_1', 'Wszystkie polecenia w zależności od logowania'),
(7, 'pomoc cala', 1, 1, 1, 6, '500', 'pomoc_cala_0', 'Wszystkie polecenia w zależności od logowania'),
(8, 'pomoc all', 1, 1, 1, 6, '500', 'pomoc_cala_0', 'Wszystkie polecenia w zależności od logowania'),
(9, 'help', 1, 1, 0, 1, '500', 'pomoc_0', 'Dostepne polecenia w zależności od logowania i autoryzacji'),
(10, 'moduly', 1, 0, 0, 4, '1000', 'moduly_0', 'Lista modułów Dedala'),
(11, 'notatki', 1, 0, 0, 11, '500', 'notatki_1', 'Lista tytułów notatek'),
(12, '?', 1, 1, 0, 1, '500', 'pomoc_0', 'Dostepne polecenia w zależności od logowania i autoryzacji'),
(13, 'notatka wczytaj', 1, 0, 0, 13, '500', 'notatka_1', 'Wczytanie notatki'),
(14, 'notatka', 1, 0, 0, 13, '500', 'notatka_0', 'Wczytanie notatki'),
(15, 'notatka edytuj', 1, 0, 0, 15, '500', 'edytuj_1', 'Edycja notatki'),
(16, 'edytuj', 1, 0, 0, 15, '500', 'edytuj_0', 'Edycja notatki'),
(17, 'notatka zapisz', 1, 0, 0, 17, '500', 'zapisz_1', 'Zapis notatki'),
(18, 'zapisz', 1, 0, 0, 17, '500', 'zapisz_0', 'Zapis notatki'),
(19, 'notatka nowa', 1, 0, 0, 19, '500', 'nowa_1', 'Nowa notatka nagłówek'),
(20, 'nowa', 1, 0, 0, 19, '500', 'nowa_0', 'Nowa notatka nagłówek'),
(21, 'notatka zamknij', 1, 0, 0, 21, '500', 'zamknij_1', 'Zamyka edycję notatki bez edycji'),
(22, 'zamknij', 1, 0, 0, 21, '500', 'zamknij_0', 'Zamyka edycję notatki bez edycji'),
(23, 'notatka wersja', 1, 0, 0, 23, '500', 'wersja_1', 'Zmienia wersję notatki'),
(24, 'wersja', 1, 0, 0, 23, '500', 'wersja_0', 'Zmienia wersję notatki'),
(25, 'historia kasuj', 1, 1, 0, 25, '500', 'kasujh_1', 'Kasuje historię komunikatów'),
(26, 'kasujh', 1, 1, 0, 25, '500', 'kasujh_0', 'Kasuje historię komunikatów'),
(27, 'polecenia kasuj', 1, 1, 0, 27, '500', 'kasujp_1', 'Kasuje historię poleceń'),
(28, 'kasujp', 1, 1, 0, 27, '500', 'kasujp_0', 'Kasuje historię poleceń'),
(29, 'wszystko kasuj', 1, 1, 0, 29, '500', 'kasuja_7', 'Kasuje historię komunikatów i poleceń'),
(30, 'kasuja', 1, 1, 0, 29, '500', 'kasuja_0', 'Kasuje historię komunikatów i poleceń'),
(31, 'notatka kasuj', 1, 1, 0, 31, '500', 'kasujn_1', 'kasuje wyświetlenie notatki'),
(32, 'kasujn', 1, 1, 0, 31, '500', 'kasujn_0', 'kasuje wyświetlenie notatki'),
(33, 'notatka usuń', 1, 0, 0, 33, '500', 'usun_1', 'usuwa notatkę o identyfikatorze'),
(34, 'usuń', 1, 0, 0, 33, '500', 'usun_0', 'usuwa notatkę o identyfikatorze'),
(35, 'notatka usun', 1, 0, 0, 33, '500', 'usun_0', 'usuwa notatkę o identyfikatorze'),
(36, 'usun', 1, 0, 0, 33, '500', 'usun_0', 'usuwa notatkę o identyfikatorze'),
(37, 'notatka udostępnij', 1, 0, 0, 37, '500', 'udostepnij_1', 'udostępnia osobie notatkę o identyfikatorze'),
(38, 'udostępnij', 1, 0, 0, 37, '500', 'udostepnij_0', 'udostępnia osobie notatkę o identyfikatorze'),
(39, 'notatka udostepnij', 1, 0, 0, 37, '500', 'udostepnij_0', 'udostępnia osobie notatkę o identyfikatorze'),
(40, 'udostepnij', 1, 0, 0, 37, '500', 'udostepnij_0', 'udostępnia osobie notatkę o identyfikatorze'),
(41, 'notatka dostęp', 1, 0, 0, 41, '500', 'dostep_1', 'pokazuje udostępnienie notatki o identyfikatorze'),
(42, 'dostęp', 1, 0, 0, 41, '500', 'dostep_0', 'pokazuje udostępnienie notatki o identyfikatorze'),
(43, 'notatka dostep', 1, 0, 0, 41, '500', 'dostep_0', 'pokazuje udostępnienie notatki o identyfikatorze'),
(44, 'dostep', 1, 0, 0, 41, '500', 'dostep_0', 'pokazuje udostępnienie notatki o identyfikatorze'),
(45, 'zespoły', 1, 0, 0, 45, '1000', 'zespoly_1', 'Lista zespołów wybranego Modułu Dedala'),
(46, 'zespoly', 1, 0, 0, 45, '1000', 'zespoly_0', 'Lista zespołów wybranego Modułu Dedala'),
(47, 'zespoły wszystkie', 1, 0, 0, 47, '1000', 'zespolyW_1', 'Lista zespołów Dedala'),
(48, 'zespoly wszystkie', 1, 0, 0, 47, '1000', 'zespolyW_0', 'Lista zespołów Dedala'),
(49, 'zespół', 1, 0, 0, 49, '1000', 'zespol_1', 'Stan wybranego zespołu'),
(50, 'zespol', 1, 0, 0, 49, '1000', 'zespol_0', 'Stan wybranego zespołu'),
(51, 'zespól', 1, 0, 0, 49, '1000', 'zespol_0', 'Stan wybranego zespołu'),
(52, 'zespoł', 1, 0, 0, 49, '1000', 'zespol_0', 'Stan wybranego zespołu'),
(53, 'test', 1, 0, 0, 53, '1000', 'test_1', 'wykonanie testu na zespole'),
(54, 'reset', 1, 0, 0, 54, '1000', 'reset_1', 'wykonanie resetu na zespole'),
(55, 'informacje kasuj', 1, 1, 0, 55, '500', 'kasuji_1', 'Kasuje historię informacji'),
(56, 'kasuji', 1, 1, 0, 55, '500', 'kasuji_0', 'Kasuje historię informacji'),
(58, 'naprawa', 1, 0, 0, 58, '1000', 'naprawa_1', 'wykonanie naprawa na zespołach'),
(59, 'hasło', 1, 0, 0, 59, '1000', 'haslo_1', 'zmiana hasła'),
(60, 'hasło', 1, 0, 0, 59, '1000', 'haslo_0', 'zmiana hasła'),
(61, 'polecenie', 1, 1, 0, 61, '1000', 'polecenie_1', 'polecenia dla dedala'),
(62, 'wykonaj', 0, 0, 0, 61, '1000', 'polecenie_0', 'polecenia dla dedala'),
(63, 'dedal', 0, 0, 0, 61, '1000', 'polecenie_0', 'polecenia dla dedala'),
(64, 'moduly wszystkie', 1, 0, 0, 65, '1000', 'modulyW_0', 'Lista modułów Dedala'),
(65, 'moduły wszystkie', 1, 0, 0, 65, '1000', 'modulyW_1', 'Lista modułów Dedala'),
(66, 'test historia', 1, 0, 0, 66, '1000', 'testH_1', 'Historia testów'),
(67, 'reset historia', 1, 0, 0, 67, '1000', 'resetH_1', 'Historia resetów'),
(68, 'naprawa historia', 1, 0, 0, 68, '1000', 'naprawaH_1', 'Historia napraw'),
(69, 'hibernacja on', 1, 0, 0, 69, '1000', 'hibernacjaon_1', 'hibernacja on'),
(70, 'hibernacja off', 1, 0, 0, 70, '1000', 'hibernacjaoff_1', 'hibernacja off'),
(71, 'moduł historia', 1, 0, 0, 71, '1000', 'modulH_1', 'Historia modułu'),
(72, 'modul historia', 1, 0, 0, 71, '1000', 'modulH_0', 'Historia modułu');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `polecenia_osoby`
--

CREATE TABLE `polecenia_osoby` (
  `id` int(11) NOT NULL,
  `polecenia` int(11) NOT NULL,
  `osoby` int(11) NOT NULL,
  `czas` text COLLATE utf8_polish_ci NOT NULL,
  `dos` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `polecenia_osoby`
--

INSERT INTO `polecenia_osoby` (`id`, `polecenia`, `osoby`, `czas`, `dos`) VALUES
(1, 1, 1, '2022-03-05 11:06:00', 1),
(2, 1, 2, '2022-03-23 21:44:31', 1),
(3, 1, 3, '2022-03-23 21:44:31', 1),
(4, 1, 12, '2022-03-05 11:06:00', 1),
(71, 1, 4, '2022-03-23 21:44:31', 1),
(72, 1, 5, '2022-03-23 21:44:31', 1),
(73, 1, 6, '2022-03-23 21:44:31', 1),
(74, 1, 7, '2022-03-23 21:44:31', 1),
(75, 1, 8, '2022-03-23 21:44:31', 1),
(76, 1, 9, '2022-03-23 21:44:31', 1),
(77, 1, 10, '2022-03-23 21:44:31', 1),
(78, 1, 11, '2022-03-23 21:44:31', 1),
(79, 27, 2, '2022-02-27 08:04:59', 1),
(80, 27, 3, '2022-02-27 08:04:59', 1),
(81, 27, 4, '2022-02-27 08:04:59', 1),
(82, 27, 5, '2022-02-27 08:04:59', 1),
(83, 27, 6, '2022-02-27 08:04:59', 1),
(84, 27, 7, '2022-02-27 08:04:59', 1),
(85, 27, 8, '2022-02-27 08:04:59', 1),
(86, 27, 9, '2022-02-27 08:04:59', 1),
(87, 27, 10, '2022-02-27 08:04:59', 1),
(88, 27, 11, '2022-02-27 08:04:59', 1),
(89, 17, 12, '2022-02-27 08:08:17', 1),
(90, 23, 12, '2022-02-27 08:09:34', 1),
(91, 17, 1, '2022-02-27 22:03:10', 1),
(92, 17, 11, '2022-03-05 09:35:24', 1),
(93, 25, 2, '2022-03-05 10:02:40', 1),
(94, 25, 3, '2022-03-05 10:02:40', 1),
(95, 25, 4, '2022-03-05 10:02:40', 1),
(96, 25, 5, '2022-03-05 10:02:40', 1),
(97, 25, 6, '2022-03-05 10:02:40', 1),
(98, 25, 7, '2022-03-05 10:02:40', 1),
(99, 25, 8, '2022-03-05 10:02:40', 1),
(100, 25, 9, '2022-03-05 10:02:40', 1),
(101, 25, 10, '2022-03-05 10:02:40', 1),
(102, 25, 11, '2022-03-05 10:02:40', 1),
(103, 4, 2, '2022-03-05 10:02:47', 1),
(104, 4, 3, '2022-03-05 10:02:47', 1),
(105, 4, 4, '2022-03-05 10:02:47', 1),
(106, 4, 5, '2022-03-05 10:02:47', 1),
(107, 4, 6, '2022-03-05 10:02:47', 1),
(108, 4, 7, '2022-03-05 10:02:47', 1),
(109, 4, 8, '2022-03-05 10:02:47', 1),
(110, 4, 9, '2022-03-05 10:02:47', 1),
(111, 4, 10, '2022-03-05 10:02:47', 1),
(112, 4, 11, '2022-03-05 10:02:47', 1),
(113, 41, 2, '2022-03-05 10:02:55', 1),
(114, 41, 3, '2022-03-05 10:02:55', 1),
(115, 41, 4, '2022-03-05 10:02:55', 1),
(116, 41, 5, '2022-03-05 10:02:55', 1),
(117, 41, 6, '2022-03-05 10:02:55', 1),
(118, 41, 7, '2022-03-05 10:02:55', 1),
(119, 41, 8, '2022-03-05 10:02:55', 1),
(120, 41, 9, '2022-03-05 10:02:55', 1),
(121, 41, 10, '2022-03-05 10:02:55', 1),
(122, 41, 11, '2022-03-05 10:02:55', 1),
(123, 15, 2, '2022-03-05 10:03:03', 1),
(124, 15, 3, '2022-03-05 10:03:03', 1),
(125, 15, 4, '2022-03-05 10:03:03', 1),
(126, 15, 5, '2022-03-05 10:03:03', 1),
(127, 15, 6, '2022-03-05 10:03:03', 1),
(128, 15, 7, '2022-03-05 10:03:03', 1),
(129, 15, 8, '2022-03-05 10:03:03', 1),
(130, 15, 9, '2022-03-05 10:03:03', 1),
(131, 15, 10, '2022-03-05 10:03:03', 1),
(132, 15, 11, '2022-03-05 10:03:03', 1),
(133, 31, 2, '2022-03-05 09:34:37', 1),
(134, 31, 3, '2022-03-05 09:34:37', 1),
(135, 31, 4, '2022-03-05 09:34:37', 1),
(136, 31, 5, '2022-03-05 09:34:37', 1),
(137, 31, 6, '2022-03-05 09:34:37', 1),
(138, 31, 7, '2022-03-05 09:34:37', 1),
(139, 31, 8, '2022-03-05 09:34:37', 1),
(140, 31, 9, '2022-03-05 09:34:37', 1),
(141, 31, 10, '2022-03-05 09:34:37', 1),
(142, 31, 11, '2022-03-05 09:34:37', 1),
(143, 19, 2, '2022-04-10 13:08:04', 1),
(144, 19, 3, '2022-03-05 09:34:46', 1),
(145, 19, 4, '2022-03-05 09:34:46', 1),
(146, 19, 5, '2022-03-05 09:34:46', 1),
(147, 19, 6, '2022-03-05 09:34:46', 1),
(148, 19, 7, '2022-03-05 09:34:46', 1),
(149, 19, 8, '2022-03-05 09:34:46', 1),
(150, 19, 9, '2022-03-05 09:34:46', 1),
(151, 19, 10, '2022-03-05 09:34:46', 1),
(152, 19, 11, '2022-03-05 09:34:46', 1),
(153, 37, 2, '2022-03-05 09:50:39', 1),
(154, 37, 3, '2022-03-05 09:50:39', 1),
(155, 37, 4, '2022-03-05 09:50:39', 1),
(156, 37, 5, '2022-03-05 09:50:39', 1),
(157, 37, 6, '2022-03-05 09:50:39', 1),
(158, 37, 7, '2022-03-05 09:50:39', 1),
(159, 37, 8, '2022-03-05 09:50:39', 1),
(160, 37, 9, '2022-03-05 09:50:39', 1),
(161, 37, 10, '2022-03-05 09:50:39', 1),
(162, 37, 11, '2022-03-05 09:50:39', 1),
(163, 33, 2, '2022-04-13 22:12:32', 1),
(164, 33, 3, '2022-03-05 09:35:01', 1),
(165, 33, 4, '2022-03-05 09:35:01', 1),
(166, 33, 5, '2022-03-05 09:35:01', 1),
(167, 33, 6, '2022-03-05 09:35:01', 1),
(168, 33, 7, '2022-03-05 09:35:01', 1),
(169, 33, 8, '2022-03-05 09:35:01', 1),
(170, 33, 9, '2022-03-05 09:35:01', 1),
(171, 33, 10, '2022-03-05 09:35:01', 1),
(172, 33, 11, '2022-03-05 09:35:01', 1),
(173, 13, 2, '2022-03-05 09:35:05', 1),
(174, 13, 3, '2022-03-05 09:35:05', 1),
(175, 13, 4, '2022-03-05 09:35:05', 1),
(176, 13, 5, '2022-03-05 09:35:05', 1),
(177, 13, 6, '2022-03-05 09:35:05', 1),
(178, 13, 7, '2022-03-05 09:35:05', 1),
(179, 13, 8, '2022-03-05 09:35:05', 1),
(180, 13, 9, '2022-03-05 09:35:05', 1),
(181, 13, 10, '2022-03-05 09:35:05', 1),
(182, 13, 11, '2022-03-05 09:35:05', 1),
(183, 23, 2, '2022-03-05 09:35:09', 1),
(184, 23, 3, '2022-03-05 09:35:09', 1),
(185, 23, 4, '2022-03-05 09:35:09', 1),
(186, 23, 5, '2022-03-05 09:35:09', 1),
(187, 23, 6, '2022-03-05 09:35:09', 1),
(188, 23, 7, '2022-03-05 09:35:09', 1),
(189, 23, 8, '2022-03-05 09:35:09', 1),
(190, 23, 9, '2022-03-05 09:35:09', 1),
(191, 23, 10, '2022-03-05 09:35:09', 1),
(192, 23, 11, '2022-03-05 09:35:09', 1),
(193, 21, 2, '2022-03-05 09:35:13', 1),
(194, 21, 3, '2022-03-05 09:35:13', 1),
(195, 21, 4, '2022-03-05 09:35:13', 1),
(196, 21, 5, '2022-03-05 09:35:13', 1),
(197, 21, 6, '2022-03-05 09:35:13', 1),
(198, 21, 7, '2022-03-05 09:35:13', 1),
(199, 21, 8, '2022-03-05 09:35:13', 1),
(200, 21, 9, '2022-03-05 09:35:13', 1),
(201, 21, 10, '2022-03-05 09:35:13', 1),
(202, 21, 11, '2022-03-05 09:35:13', 1),
(203, 17, 2, '2022-03-05 09:35:24', 1),
(204, 17, 3, '2022-03-05 09:35:24', 1),
(205, 17, 4, '2022-03-05 09:35:24', 1),
(206, 17, 5, '2022-03-05 09:35:24', 1),
(207, 17, 6, '2022-03-05 09:35:24', 1),
(208, 17, 7, '2022-03-05 09:35:24', 1),
(209, 17, 8, '2022-03-05 09:35:24', 1),
(210, 17, 9, '2022-03-05 09:35:24', 1),
(211, 17, 10, '2022-03-05 09:35:24', 1),
(212, 11, 2, '2022-03-05 09:35:29', 1),
(213, 11, 3, '2022-03-05 09:35:29', 1),
(214, 11, 4, '2022-03-05 09:35:29', 1),
(215, 11, 5, '2022-03-05 09:35:29', 1),
(216, 11, 6, '2022-03-05 09:35:29', 1),
(217, 11, 7, '2022-03-05 09:35:29', 1),
(218, 11, 8, '2022-03-05 09:35:29', 1),
(219, 11, 9, '2022-03-05 09:35:29', 1),
(220, 11, 10, '2022-03-05 09:35:29', 1),
(221, 11, 11, '2022-03-05 09:35:29', 1),
(222, 6, 2, '2022-03-05 09:35:45', 1),
(223, 29, 2, '2022-03-05 09:35:49', 1),
(224, 29, 3, '2022-03-05 09:35:49', 1),
(225, 29, 4, '2022-03-05 09:35:49', 1),
(226, 29, 5, '2022-03-05 09:35:49', 1),
(227, 29, 6, '2022-03-05 09:35:49', 1),
(228, 29, 7, '2022-03-05 09:35:49', 1),
(229, 29, 8, '2022-03-05 09:35:49', 1),
(230, 29, 9, '2022-03-05 09:35:49', 1),
(231, 29, 10, '2022-03-05 09:35:49', 1),
(232, 29, 11, '2022-03-05 09:35:49', 1),
(233, 3, 2, '2022-03-05 09:35:55', 1),
(234, 3, 3, '2022-03-05 09:35:55', 1),
(235, 3, 4, '2022-03-05 09:35:55', 1),
(236, 3, 5, '2022-03-05 09:35:55', 1),
(237, 3, 6, '2022-03-05 09:35:55', 1),
(238, 3, 7, '2022-03-05 09:35:55', 1),
(239, 3, 8, '2022-03-05 09:35:55', 1),
(240, 3, 9, '2022-03-05 09:35:55', 1),
(241, 3, 10, '2022-03-05 09:35:55', 1),
(242, 3, 11, '2022-03-05 09:35:55', 1),
(243, 2, 2, '2022-03-05 09:35:59', 1),
(244, 2, 3, '2022-03-05 09:35:59', 1),
(245, 2, 4, '2022-03-05 09:35:59', 1),
(246, 2, 5, '2022-03-05 09:35:59', 1),
(247, 2, 6, '2022-03-05 09:35:59', 1),
(248, 2, 7, '2022-03-05 09:35:59', 1),
(249, 2, 8, '2022-03-05 09:35:59', 1),
(250, 2, 9, '2022-03-05 09:35:59', 1),
(251, 2, 10, '2022-03-05 09:35:59', 1),
(252, 2, 11, '2022-03-05 09:35:59', 1),
(253, 1, 13, '2022-03-23 21:44:32', 0),
(254, 45, 2, '2022-04-03 15:00:54', 1),
(255, 45, 3, '2022-04-03 15:00:54', 1),
(256, 45, 4, '2022-04-03 15:00:54', 1),
(257, 45, 5, '2022-04-03 15:00:54', 1),
(258, 45, 6, '2022-04-03 15:00:54', 1),
(259, 45, 7, '2022-04-03 15:00:54', 1),
(260, 45, 8, '2022-04-03 15:00:54', 1),
(261, 45, 9, '2022-04-03 15:00:54', 1),
(262, 45, 10, '2022-04-03 15:00:54', 1),
(263, 45, 11, '2022-04-03 15:00:54', 1),
(264, 47, 2, '2022-04-03 16:57:23', 1),
(265, 47, 3, '2022-04-03 16:57:23', 1),
(266, 47, 4, '2022-04-19 20:16:07', 0),
(267, 47, 5, '2022-04-19 20:16:08', 0),
(268, 47, 6, '2022-04-19 20:16:08', 0),
(269, 47, 7, '2022-04-19 20:16:18', 1),
(270, 47, 8, '2022-04-19 20:16:10', 0),
(271, 47, 9, '2022-04-19 20:16:16', 1),
(272, 47, 10, '2022-04-19 20:16:12', 0),
(273, 47, 11, '2022-04-19 20:16:13', 0),
(274, 49, 2, '2022-04-04 11:32:27', 1),
(275, 49, 3, '2022-04-04 11:32:27', 1),
(276, 49, 4, '2022-04-04 11:32:27', 1),
(277, 49, 5, '2022-04-04 11:32:27', 1),
(278, 49, 6, '2022-04-04 11:32:27', 1),
(279, 49, 7, '2022-04-04 11:32:27', 1),
(280, 49, 8, '2022-04-04 11:32:27', 1),
(281, 49, 9, '2022-04-04 11:32:27', 1),
(282, 49, 10, '2022-04-04 11:32:27', 1),
(283, 49, 11, '2022-04-04 11:32:27', 1),
(284, 53, 2, '2022-04-05 17:32:14', 1),
(285, 53, 3, '2022-04-05 17:32:14', 1),
(286, 53, 4, '2022-04-05 17:32:14', 1),
(287, 53, 5, '2022-04-05 17:32:14', 1),
(288, 53, 6, '2022-04-05 17:32:14', 1),
(289, 53, 7, '2022-04-05 17:32:14', 1),
(290, 53, 8, '2022-04-05 17:32:14', 1),
(291, 53, 9, '2022-04-05 17:32:14', 1),
(292, 53, 10, '2022-04-05 17:32:14', 1),
(293, 53, 11, '2022-04-05 17:32:14', 1),
(294, 55, 2, '2022-04-07 14:22:14', 1),
(295, 55, 3, '2022-04-07 14:22:14', 1),
(296, 55, 4, '2022-04-07 14:22:14', 1),
(297, 55, 5, '2022-04-07 14:22:14', 1),
(298, 55, 6, '2022-04-07 14:22:14', 1),
(299, 55, 7, '2022-04-07 14:22:14', 1),
(300, 55, 8, '2022-04-07 14:22:14', 1),
(301, 55, 9, '2022-04-07 14:22:14', 1),
(302, 55, 10, '2022-04-07 14:22:14', 1),
(303, 55, 11, '2022-04-07 14:22:14', 1),
(304, 54, 2, '2022-04-07 19:10:29', 1),
(305, 54, 3, '2022-04-07 19:10:29', 1),
(306, 54, 4, '2022-04-07 19:10:29', 1),
(307, 54, 5, '2022-04-07 19:10:29', 1),
(308, 54, 6, '2022-04-07 19:10:29', 1),
(309, 54, 7, '2022-04-07 19:10:29', 1),
(310, 54, 8, '2022-04-07 19:10:29', 1),
(311, 54, 9, '2022-04-07 19:10:29', 1),
(312, 54, 10, '2022-04-07 19:10:29', 1),
(313, 54, 11, '2022-04-07 19:10:29', 1),
(314, 58, 2, '2022-04-09 17:57:02', 1),
(315, 58, 3, '2022-04-09 17:57:02', 1),
(316, 58, 4, '2022-04-09 17:57:02', 1),
(317, 58, 5, '2022-04-09 17:57:02', 1),
(318, 58, 6, '2022-04-09 17:57:02', 1),
(319, 58, 7, '2022-04-09 17:57:02', 1),
(320, 58, 8, '2022-04-09 17:57:02', 1),
(321, 58, 9, '2022-04-09 17:57:02', 1),
(322, 58, 10, '2022-04-09 17:57:02', 1),
(323, 58, 11, '2022-04-09 17:57:02', 1),
(324, 4, 1, '2022-04-10 13:07:25', 0),
(325, 19, 12, '2022-04-10 13:07:40', 0),
(326, 19, 13, '2022-04-10 13:07:50', 0),
(327, 19, 15, '2022-04-19 18:56:58', 0),
(328, 61, 2, '2022-04-15 07:29:43', 1),
(329, 61, 3, '2022-04-15 07:29:43', 1),
(330, 61, 4, '2022-04-15 07:29:43', 1),
(331, 61, 5, '2022-04-15 07:29:43', 1),
(332, 61, 6, '2022-04-15 07:29:43', 1),
(333, 61, 7, '2022-04-15 07:29:43', 1),
(334, 61, 8, '2022-04-15 07:29:43', 1),
(335, 61, 9, '2022-04-15 07:29:43', 1),
(336, 61, 10, '2022-04-15 07:29:43', 1),
(337, 61, 11, '2022-04-15 07:29:43', 1),
(338, 59, 2, '2022-04-20 17:09:20', 1),
(339, 59, 3, '2022-04-20 17:09:20', 1),
(340, 59, 4, '2022-04-20 17:09:20', 1),
(341, 59, 5, '2022-04-20 17:09:20', 1),
(342, 59, 6, '2022-04-20 17:09:20', 1),
(343, 59, 7, '2022-04-20 17:09:20', 1),
(344, 59, 8, '2022-04-20 17:09:20', 1),
(345, 59, 9, '2022-04-20 17:09:20', 1),
(346, 59, 10, '2022-04-20 17:09:20', 1),
(347, 59, 11, '2022-04-20 17:09:20', 1),
(348, 13, 1, '2022-04-19 17:19:49', 1),
(349, 1, 15, '2022-04-19 18:56:54', 0),
(350, 65, 2, '2022-04-19 19:34:35', 1),
(351, 65, 3, '2022-04-19 20:10:40', 1),
(352, 65, 9, '2022-04-19 20:11:00', 1),
(353, 65, 7, '2022-04-19 20:11:06', 1),
(354, 65, 1, '2022-04-19 20:11:13', 1),
(355, 65, 12, '2022-04-19 20:11:13', 1),
(356, 66, 2, '2022-04-20 07:58:28', 1),
(357, 66, 3, '2022-04-20 07:58:29', 1),
(358, 66, 4, '2022-04-20 07:58:30', 1),
(359, 66, 9, '2022-04-20 07:58:33', 1),
(360, 66, 7, '2022-04-20 07:58:34', 1),
(361, 66, 12, '2022-04-20 07:58:37', 1),
(362, 66, 13, '2022-04-20 07:58:38', 1),
(363, 66, 15, '2022-04-20 07:58:39', 1),
(364, 67, 2, '2022-04-20 11:52:56', 1),
(365, 67, 3, '2022-04-20 11:52:56', 1),
(366, 67, 4, '2022-04-20 11:52:56', 1),
(367, 67, 5, '2022-04-20 11:53:04', 0),
(368, 67, 6, '2022-04-20 11:53:05', 0),
(369, 67, 7, '2022-04-20 11:52:56', 1),
(370, 67, 8, '2022-04-20 11:53:07', 0),
(371, 67, 9, '2022-04-20 11:52:56', 1),
(372, 67, 10, '2022-04-20 11:53:12', 0),
(373, 67, 11, '2022-04-20 11:53:15', 0),
(374, 67, 1, '2022-04-20 11:53:16', 1),
(375, 67, 12, '2022-04-20 11:53:17', 1),
(376, 67, 15, '2022-04-20 11:53:18', 1),
(377, 68, 2, '2022-04-20 12:57:45', 1),
(378, 68, 3, '2022-04-20 12:57:46', 1),
(379, 68, 4, '2022-04-20 12:57:47', 1),
(380, 68, 9, '2022-04-20 12:57:50', 1),
(381, 68, 1, '2022-04-20 12:57:53', 1),
(382, 68, 12, '2022-04-20 12:57:54', 1),
(383, 68, 15, '2022-04-20 12:57:56', 1),
(384, 68, 7, '2022-04-20 12:57:59', 1),
(385, 69, 2, '2022-04-20 13:47:30', 1),
(386, 69, 3, '2022-04-20 13:47:30', 1),
(387, 69, 4, '2022-04-20 13:47:30', 1),
(388, 69, 5, '2022-04-20 13:47:30', 1),
(389, 69, 6, '2022-04-20 13:47:30', 1),
(390, 69, 7, '2022-04-20 13:47:30', 1),
(391, 69, 8, '2022-04-20 13:47:30', 1),
(392, 69, 9, '2022-04-20 13:47:30', 1),
(393, 69, 10, '2022-04-20 13:47:30', 1),
(394, 69, 11, '2022-04-20 13:47:30', 1),
(395, 69, 1, '2022-04-20 13:47:34', 1),
(396, 70, 2, '2022-04-20 13:47:39', 1),
(397, 70, 3, '2022-04-20 13:47:39', 1),
(398, 70, 4, '2022-04-20 13:47:39', 1),
(399, 70, 5, '2022-04-20 13:47:39', 1),
(400, 70, 6, '2022-04-20 13:47:39', 1),
(401, 70, 7, '2022-04-20 13:47:39', 1),
(402, 70, 8, '2022-04-20 13:47:39', 1),
(403, 70, 9, '2022-04-20 13:47:39', 1),
(404, 70, 10, '2022-04-20 13:47:39', 1),
(405, 70, 11, '2022-04-20 13:47:39', 1),
(406, 70, 1, '2022-04-20 13:47:39', 1),
(407, 71, 2, '2022-04-20 17:12:26', 1),
(408, 71, 3, '2022-04-20 17:12:27', 1),
(409, 71, 7, '2022-04-20 17:12:29', 1),
(410, 71, 9, '2022-04-20 17:12:31', 1),
(411, 71, 1, '2022-04-20 17:12:33', 1),
(412, 71, 12, '2022-04-20 17:12:34', 1),
(413, 53, 1, '2022-04-21 11:26:02', 1),
(414, 3, 1, '2022-04-21 11:26:26', 1),
(415, 2, 1, '2022-04-21 11:26:31', 1),
(416, 54, 1, '2022-04-21 12:27:03', 1),
(417, 71, 8, '2022-04-21 13:50:26', 1),
(418, 71, 6, '2022-04-21 13:50:31', 1),
(419, 71, 5, '2022-04-21 13:50:32', 1),
(420, 71, 4, '2022-04-21 13:50:32', 1),
(421, 71, 10, '2022-04-21 13:50:34', 1),
(422, 71, 11, '2022-04-21 13:50:35', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stan`
--

CREATE TABLE `stan` (
  `id` int(11) NOT NULL,
  `nazwa` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `stan` tinyint(4) NOT NULL,
  `opis` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `stan`
--

INSERT INTO `stan` (`id`, `nazwa`, `stan`, `opis`) VALUES
(0, 'error', 0, 'wszystko error'),
(1, 'sprawny', 1, 'wszystko ok'),
(2, 'niesprawny', 0, 'uszkodzony'),
(3, 'nieokreślony', 2, 'coś nie tak'),
(4, 'przedawniony', 2, 'coś nie tak'),
(5, 'niewykonany', 2, 'coś nie tak'),
(6, 'wykryto usterkę', 0, 'uszkodzony'),
(7, '90%', 1, ''),
(8, '70%', 2, ''),
(9, '30%', 0, ''),
(10, '0%', 0, ''),
(11, 'brak', 0, ''),
(12, 'brak, jest w serwisie', 0, ''),
(13, 'niekompletny', 2, 'coś nie tak'),
(14, '100%', 1, ''),
(15, 'nie odpowiada', 2, ''),
(16, 'zajęty', 2, ''),
(17, 'brak oznak życia', 2, ''),
(18, 'obniżone parametry fizyczne', 2, ''),
(19, 'obniżone parametry psychiczne', 2, ''),
(20, 'zablokowany', 2, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `testylog`
--

CREATE TABLE `testylog` (
  `id` int(11) NOT NULL,
  `moduly` int(11) NOT NULL,
  `zespoly` int(11) NOT NULL,
  `uszkodzenia` int(11) NOT NULL,
  `uszkodzeniaText` text COLLATE utf8_polish_ci NOT NULL,
  `czasstart` text COLLATE utf8_polish_ci NOT NULL,
  `czasend` text COLLATE utf8_polish_ci NOT NULL,
  `osoba` int(11) NOT NULL,
  `rodzaj` text COLLATE utf8_polish_ci NOT NULL,
  `del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `testylog`
--

INSERT INTO `testylog` (`id`, `moduly`, `zespoly`, `uszkodzenia`, `uszkodzeniaText`, `czasstart`, `czasend`, `osoba`, `rodzaj`, `del`) VALUES
(0, 0, 0, 0, 'brak', '2043-03-11 12:00:00', '2043-03-11 13:00:00', 1, 'test', 0),
(1, 1, 0, -5, '$#.d%...  plik uszkodzony', '', '2045-05-06 20:18:19', 0, 'inne', 0),
(2, 2, 0, -5, '$#.d%...  plik uszkodzony', '', '2045-05-06 20:18:19', 0, 'inne', 0),
(31, 17, 36, 0, '', '2044-07-01 20:16:31', '2044-07-01 20:17:42', 8, 'test', 0),
(32, 17, 37, 0, '', '2044-07-01 20:17:21', '2044-07-01 20:18:12', 8, 'test', 0),
(33, 17, 38, 0, '', '2044-07-01 20:18:42', '2044-07-01 20:19:51', 8, 'test', 0),
(34, 17, 39, 0, '', '2044-07-01 20:19:11', '2044-07-01 20:20:26', 8, 'test', 0),
(35, 17, 40, 0, '', '2044-07-01 20:20:21', '2044-07-01 20:21:22', 8, 'test', 0),
(36, 17, 41, 0, '', '2044-07-01 20:21:44', '2044-07-01 20:22:35', 8, 'test', 0),
(37, 17, 42, 0, '', '2044-07-01 20:22:31', '2044-07-01 20:23:47', 8, 'test', 0),
(38, 17, 43, 0, '', '2044-07-01 20:23:21', '2044-07-01 20:24:32', 8, 'test', 0),
(39, 17, 44, 0, '', '2044-07-01 20:24:33', '2044-07-01 20:25:45', 8, 'test', 0),
(40, 17, 45, 0, '', '2044-07-01 20:25:18', '2044-07-01 20:26:59', 8, 'test', 0),
(41, 17, 36, 0, '', '2043-05-20 12:01:11', '2044-07-01 12:02:21', 8, 'test', 0),
(42, 17, 37, 0, '', '2043-05-20 12:02:29', '2044-07-01 12:03:01', 8, 'test', 0),
(43, 17, 38, 0, '', '2043-05-20 12:03:12', '2043-05-20 12:04:11', 8, 'test', 0),
(44, 17, 39, 0, '', '2043-05-20 12:04:11', '2043-05-20 12:05:51', 8, 'test', 0),
(45, 17, 40, 0, '', '2043-05-20 12:05:21', '2043-05-20 12:06:22', 8, 'test', 0),
(46, 17, 41, 0, '', '2043-05-20 12:21:24', '2043-05-20 12:22:35', 8, 'test', 0),
(47, 17, 42, 0, '', '2043-05-20 12:22:53', '2043-05-20 12:23:34', 8, 'test', 0),
(48, 17, 43, 0, '', '2043-05-20 12:23:11', '2043-05-20 12:24:33', 8, 'test', 0),
(49, 17, 44, 0, '', '2043-05-20 12:24:34', '2043-05-20 12:25:51', 8, 'test', 0),
(50, 17, 45, 0, '', '2043-05-20 12:25:17', '2043-05-20 12:26:50', 8, 'test', 0),
(51, 17, 36, 0, '', '2043-11-15 01:23:11', '2043-11-15 01:23:18', 3, 'test', 0),
(52, 17, 41, 0, '', '2043-11-15 01:24:42', '2043-11-15 01:25:31', 3, 'test', 0),
(53, 17, 42, 0, '', '2043-11-15 01:26:54', '2043-11-15 01:27:53', 3, 'test', 0),
(54, 17, 41, 0, 'polecenie: notnul', '2043-11-15 01:29:04', '2043-11-15 01:29:04', 3, 'polecenie', 0),
(55, 17, 36, 0, 'podanie: brak danych', '2044-05-30 03:27:14', '2044-05-30 03:27:14', 3, 'polecenie', 0),
(56, 17, 41, 0, '', '2044-05-31 12:14:54', '2044-05-31 12:16:00', 3, 'test', 0),
(57, 17, 41, 0, 'wykonano reset dla 15 elementów zespołu', '2044-05-31 12:16:29', '2044-05-31 12:17:55', 3, 'reset', 0),
(58, 17, 41, 0, '', '2044-05-31 12:21:24', '2044-05-31 12:22:51', 3, 'test', 0),
(59, 17, 42, 0, 'podanie: grupa leki uspakajające', '2044-10-08 12:10:10', '2044-10-08 12:10:10', 8, 'polecenie', 0),
(60, 17, 39, 0, 'podanie: preparaty popromienne', '2044-08-23 16:23:11', '2044-08-23 16:23:11', 8, 'polecenie', 0),
(61, 17, 37, 1, 'stan śpiącego - obniżone parametry psychiczne', '2044-08-23 12:10:10', '2044-08-23 12:11:29', 8, 'test', 0),
(62, 17, 39, 1, 'stan śpiącego - obniżone parametry fizyczne', '2044-08-23 12:12:10', '2044-08-23 12:13:17', 8, 'test', 0),
(63, 17, 39, 1, 'stan śpiącego - obniżone parametry fizyczne', '2044-08-30 17:11:11', '2044-08-30 17:13:00', 8, 'test', 0),
(64, 17, 37, 1, 'stan śpiącego - obniżone parametry psychiczne', '2044-08-30 17:14:21', '2044-08-30 17:15:49', 8, 'test', 0),
(65, 17, 37, 1, 'stan śpiącego - obniżone parametry psychiczne', '2044-09-06 07:40:25', '2044-09-06 07:41:21', 8, 'test', 0),
(66, 17, 39, 1, 'stan śpiącego - obniżone parametry fizyczne', '2044-09-06 07:51:15', '2044-09-06 07:52:33', 8, 'test', 0),
(67, 17, 39, 1, 'stan śpiącego - obniżone parametry fizyczne', '2044-09-13 02:00:25', '2044-09-13 02:01:53', 8, 'test', 0),
(68, 17, 37, 1, 'stan śpiącego - obniżone parametry psychiczne', '2044-09-13 02:02:53', '2044-09-13 02:04:05', 8, 'test', 0),
(70, 17, 39, 1, 'stan śpiącego - obniżone parametry fizyczne', '2044-09-25 14:43:43', '2044-09-25 15:44:12', 8, 'test', 0),
(71, 17, 39, 1, 'stan śpiącego - obniżone parametry fizyczne', '2044-10-05 13:26:03', '2044-10-05 13:27:51', 8, 'test', 0),
(72, 17, 37, 1, 'stan śpiącego - obniżone parametry psychiczne', '2044-10-05 13:29:33', '2044-10-05 13:30:17', 8, 'test', 0),
(73, 17, 39, 0, 'podanie: preparaty popromienne', '2044-10-05 13:33:33', '2044-10-05 13:35:23', 8, 'polecenie', 0);

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
(2, '2022-02-27 08:02:47', 'Obecna data startu Dedala', '2043-03-11 12:01:02'),
(3, '', 'Oryginalna data startu akcji na Dedalu', '2045-04-18 21:35:00'),
(4, '2022-04-21 13:22:28', 'Obecna data akcji na Dedalu', '2043-03-18 14:21:00'),
(5, '2022-04-21 11:14:25', 'Stan larpa', 'START'),
(6, '2022-04-21 11:14:25', 'Data startu larpa ', '2022-04-21 11:14:25');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uszkodzenia`
--

CREATE TABLE `uszkodzenia` (
  `id` int(11) NOT NULL,
  `moduly` int(11) NOT NULL,
  `zespoly` int(11) NOT NULL,
  `nazwa` int(11) NOT NULL,
  `stan` int(11) NOT NULL,
  `reset` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `poreset` int(11) NOT NULL,
  `nazwaporeset` int(11) NOT NULL,
  `stanporeset` int(11) NOT NULL,
  `naprawa` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `ponaprawa` int(11) NOT NULL,
  `nazwaponaprawa` int(11) NOT NULL,
  `stanponaprawa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `uszkodzenia`
--

INSERT INTO `uszkodzenia` (`id`, `moduly`, `zespoly`, `nazwa`, `stan`, `reset`, `poreset`, `nazwaporeset`, `stanporeset`, `naprawa`, `ponaprawa`, `nazwaponaprawa`, `stanponaprawa`) VALUES
(1, 3, 5, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(2, 3, 5, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(3, 3, 5, 1, 13, '0', 0, 1, 1, '0', 0, 1, 1),
(4, 3, 1, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(5, 3, 1, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(6, 3, 1, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(7, 3, 3, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(8, 3, 3, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(9, 3, 3, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(10, 3, 2, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(11, 3, 2, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(12, 3, 2, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(13, 3, 4, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(14, 3, 4, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(15, 3, 4, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(16, 3, 6, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(17, 3, 6, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(18, 3, 6, 1, 1, '0', 1, 2, 6, '0', 1, 1, 1),
(19, 2, 14, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(20, 2, 14, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(21, 2, 14, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(22, 2, 18, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(23, 2, 18, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(24, 2, 18, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(25, 2, 9, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(26, 2, 9, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(27, 2, 9, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(28, 2, 11, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(29, 2, 11, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(30, 2, 11, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(31, 2, 15, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(32, 2, 15, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(33, 2, 15, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(34, 2, 13, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(35, 2, 13, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(36, 2, 13, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(37, 2, 17, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(38, 2, 17, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(39, 2, 17, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(40, 2, 8, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(41, 2, 8, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(42, 2, 8, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(43, 2, 7, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(44, 2, 7, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(45, 2, 7, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(46, 2, 10, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(47, 2, 10, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(48, 2, 10, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(49, 2, 12, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(50, 2, 12, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(51, 2, 12, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(52, 2, 16, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(53, 2, 16, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(54, 2, 16, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(55, 19, 26, 7, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(56, 19, 26, 9, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(57, 19, 26, 8, 7, '0', 0, 1, 1, '0', 0, 1, 1),
(58, 19, 35, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(59, 19, 35, 1, 1, '0', 1, 8, 6, '0', 0, 1, 1),
(60, 19, 35, 6, 10, '0', 0, 8, 6, '0', 0, 1, 1),
(61, 19, 27, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(62, 19, 27, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(63, 19, 27, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(64, 19, 28, 7, 15, '0', 0, 1, 1, '0', 0, 1, 1),
(65, 19, 28, 10, 15, '0', 0, 1, 1, '0', 0, 1, 1),
(66, 19, 28, 6, 10, '0', 0, 1, 1, '0', 0, 1, 1),
(67, 19, 29, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(68, 19, 29, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(69, 19, 29, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(70, 19, 30, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(71, 19, 30, 7, 13, '0', 1, 9, 13, '0', 0, 1, 1),
(72, 19, 30, 7, 6, '0', 0, 1, 1, '0', 0, 1, 1),
(73, 19, 31, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(74, 19, 31, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(75, 19, 31, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(76, 19, 32, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(77, 19, 32, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(78, 19, 32, 1, 1, '0', 1, 6, 7, '0', 0, 1, 1),
(79, 19, 33, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(80, 19, 33, 7, 3, '0', 1, 1, 1, '0', 1, 1, 1),
(81, 19, 33, 8, 6, '0', 1, 8, 12, '0', 0, 1, 1),
(82, 19, 34, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(83, 19, 34, 1, 1, '0', 1, 8, 6, '0', 0, 1, 1),
(84, 19, 34, 6, 9, '0', 1, 6, 10, '0', 0, 1, 1),
(85, 0, 0, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(86, 0, 0, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(87, 0, 0, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(88, 17, 36, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(89, 17, 36, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(90, 17, 36, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(91, 18, 19, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(92, 18, 19, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(93, 18, 19, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(94, 17, 37, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(95, 17, 37, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(96, 17, 37, 15, 19, '0', 0, 1, 1, '0', 0, 1, 1),
(97, 18, 20, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(98, 18, 20, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(99, 18, 20, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(100, 18, 25, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(101, 18, 25, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(102, 18, 25, 13, 20, '0', 0, 1, 1, '0', 0, 1, 1),
(103, 18, 23, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(104, 18, 23, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(105, 18, 23, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(106, 17, 42, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(107, 17, 42, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(108, 17, 42, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(109, 17, 41, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(110, 17, 41, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(111, 17, 41, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(112, 17, 44, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(113, 17, 44, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(114, 17, 44, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(115, 17, 43, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(116, 17, 43, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(117, 17, 43, 15, 17, '0', 0, 1, 1, '0', 0, 1, 1),
(118, 17, 39, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(119, 17, 39, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(120, 17, 39, 15, 18, '0', 0, 1, 1, '0', 0, 1, 1),
(121, 17, 45, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(122, 17, 45, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(123, 17, 45, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(124, 17, 38, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(125, 17, 38, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(126, 17, 38, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(127, 17, 40, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(128, 17, 40, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(129, 17, 40, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(130, 18, 24, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(131, 18, 24, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(132, 18, 24, 16, 15, '0', 1, 16, 1, '0', 0, 1, 1),
(133, 18, 22, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(134, 18, 22, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(135, 18, 22, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(136, 18, 21, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(137, 18, 21, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(138, 18, 21, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uszkodzenianazwa`
--

CREATE TABLE `uszkodzenianazwa` (
  `id` int(11) NOT NULL,
  `nazwa` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `opis` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `uszkodzenianazwa`
--

INSERT INTO `uszkodzenianazwa` (`id`, `nazwa`, `opis`) VALUES
(0, 'błąd wykonania', 'błąd wykonania'),
(1, 'test', ''),
(2, 'pomieszczenie', ''),
(3, 'brak szczelności pomieszczenia (ściany zewnętrzne)', ''),
(4, 'szczelność pomieszczenia', ''),
(5, 'test elementu', 'przy resecie ustawiany'),
(6, 'stan zapasu tlenu', ''),
(7, 'zespół podtrzymywania życia', ''),
(8, 'butla tlenu', ''),
(9, 'powłoka skafandra', ''),
(10, 'zasilanie', ''),
(11, 'zasilanie awaryjne', ''),
(12, 'zapas', ''),
(13, 'właz zewnętrzny', ''),
(14, 'stan', ''),
(15, 'stan śpiącego', ''),
(16, 'zamki włazu', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wiadomosci`
--

CREATE TABLE `wiadomosci` (
  `id` int(11) NOT NULL,
  `autor` int(11) NOT NULL,
  `autorText` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `odbiorca` int(11) NOT NULL,
  `odbiorcaText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `tresc` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `czas` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `przeczytana` tinyint(1) NOT NULL,
  `admindodana` tinyint(4) NOT NULL DEFAULT '0',
  `przeczytanaadmin` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `wiadomosci`
--

INSERT INTO `wiadomosci` (`id`, `autor`, `autorText`, `odbiorca`, `odbiorcaText`, `tresc`, `czas`, `przeczytana`, `admindodana`, `przeczytanaadmin`) VALUES
(1, 2, 'John Spow', 8, 'Da Yang', 'cześć', '2045-07-11 00:51:47', 1, 1, 1),
(2, 2, 'John Spow', 1, 'Dedal ', 'dedal ?', '2045-06-13 15:50:14', 0, 0, 1),
(3, 2, 'John Spow', 10, 'Dave Bowman', 'hello', '2045-06-13 18:38:50', 1, 0, 1),
(4, 8, 'Da Yang', 2, 'John Spow', 'cześć', '2045-06-13 18:39:11', 1, 0, 1),
(5, 8, 'Da Yang', 7, 'Akito Yamazaki', 'cześć Akito', '2045-06-13 18:41:59', 1, 0, 1),
(6, 2, 'John Spow', 15, 'NASA  ', 'ratunku', '2045-06-13 18:52:24', 1, 0, 1),
(7, 3, 'Peng Yaping', 2, 'John Spow', 'hello', '2045-07-11 14:28:31', 1, 1, 1),
(8, 2, 'John Spow', 3, 'Peng Yaping', 'hello', '2045-07-11 14:28:45', 0, 1, 1),
(9, 3, 'Peng Yaping', 2, 'John Spow', 'hello', '2045-07-11 14:28:45', 1, 1, 1),
(10, 13, 'Narośl Weira', 9, 'Han Stevens', 'JAK SIE MASZ', '2045-06-14 01:05:00', 1, 1, 1),
(11, 2, 'John Spow', 1, 'Dedal ', 'wyloguj', '2045-06-14 02:05:07', 0, 0, 1),
(25, 9, 'Han Stevens', 1, 'Dedal ', 'dedal ?', '2045-06-14 02:32:51', 1, 0, 1),
(26, 1, 'Dedal ', 9, 'Han Stevens', 'tak', '2045-06-14 02:33:44', 1, 1, 1),
(27, 9, 'Han Stevens', 1, 'Dedal ', 'jesteś martwy, hihi', '2045-06-14 02:44:37', 1, 1, 1),
(28, 1, 'Dedal ', 9, 'Han Stevens', 'jesteś martwy, hihi', '2045-06-14 02:48:17', 1, 1, 1),
(29, 9, 'Han Stevens', 1, 'Dedal ', 'wyloguj', '2045-06-14 02:49:37', 1, 0, 1),
(30, 13, 'Narośl Weira', 4, 'William Weir', 'to ja', '2045-06-14 02:58:15', 1, 1, 1),
(31, 13, 'Narośl Weira', 2, 'John Spow', 'to ja', '2045-06-14 03:34:13', 1, 1, 1),
(32, 2, 'John Spow', 13, 'Narośl Weira', 'kto ty jesteś ?', '2045-06-14 05:56:56', 1, 0, 1),
(33, 2, 'John Spow', 3, 'Peng Yaping', 'test', '2045-06-14 05:57:33', 0, 0, 1),
(34, 2, 'John Spow', 13, 'Narośl Weira', 'test', '2045-06-14 05:57:33', 1, 0, 1),
(35, 2, 'John Spow', 3, 'Peng Yaping', 'test', '2045-06-14 05:58:45', 0, 0, 1),
(36, 13, ' ', 2, 'John Spow', 'test nazwiska', '2045-06-14 06:09:34', 1, 1, 1),
(37, 2, 'John Spow', 13, ' ', 'kto ty ?', '2045-06-14 06:09:59', 1, 0, 1),
(38, 4, 'William Weir', 13, '           ', 'co za ja ?', '2045-06-14 06:12:27', 1, 0, 1),
(39, 13, '***** ***', 4, 'William Weir', 'test nazwiska', '2045-06-14 06:14:40', 1, 1, 1),
(40, 2, 'John Spow', 15, 'NASA  ', 'wyloguj', '2045-06-15 00:34:45', 0, 0, 1),
(41, 10, 'Dave Bowman', 2, 'John Spow', 'cześć', '2045-06-18 02:27:00', 1, 0, 1),
(42, 5, 'Manu Punjabi', 2, 'John Spow', 'do js', '2045-06-18 05:38:47', 1, 0, 1),
(43, 8, 'Da Yang', 1, 'Dedal ', 'wyloguj', '2045-06-18 05:46:39', 1, 0, 1),
(44, 8, 'Da Yang', 2, 'John Spow', 'wyloguj', '2045-06-18 05:46:39', 1, 0, 1),
(45, 8, 'Da Yang', 3, 'Peng Yaping', 'wyloguj', '2045-06-18 05:46:39', 1, 0, 1),
(46, 8, 'Da Yang', 4, 'William Weir', 'wyloguj', '2045-06-18 05:46:39', 1, 0, 1),
(47, 8, 'Da Yang', 5, 'Manu Punjabi', 'wyloguj', '2045-06-18 05:46:39', 1, 0, 1),
(48, 8, 'Da Yang', 6, 'Zeki Demir', 'wyloguj', '2045-06-18 05:46:39', 1, 0, 1),
(49, 8, 'Da Yang', 7, 'Akito Yamazaki', 'wyloguj', '2045-06-18 05:46:39', 1, 0, 1),
(50, 8, 'Da Yang', 9, 'Han Stevens', 'wyloguj', '2045-06-18 05:46:39', 1, 0, 1),
(51, 8, 'Da Yang', 10, 'Dave Bowman', 'wyloguj', '2045-06-18 05:46:39', 1, 0, 1),
(52, 8, 'Da Yang', 11, 'Rajeh  Amit', 'wyloguj', '2045-06-18 05:46:39', 1, 0, 1),
(53, 8, 'Da Yang', 12, 'GRACE  ', 'wyloguj', '2045-06-18 05:46:39', 1, 0, 1),
(54, 8, 'Da Yang', 13, '***** ***', 'wyloguj', '2045-06-18 05:46:39', 1, 0, 1),
(55, 8, 'Da Yang', 15, 'NASA  ', 'wyloguj', '2045-06-18 05:46:39', 1, 0, 1),
(56, 2, 'John Spow', 13, '***** ***', 'wyloguj', '2045-06-19 02:04:47', 1, 0, 1),
(57, 13, '***** ***', 8, 'Da Yang', 'cześć', '2045-06-19 02:29:51', 1, 1, 1),
(58, 8, 'Da Yang', 2, 'John Spow', 'cze', '2045-06-15 10:10:33', 1, 0, 1),
(59, 8, 'Da Yang', 13, '***** ***', 'cze', '2045-06-15 10:10:33', 0, 0, 1),
(60, 13, '***** ***', 2, 'John Spow', 'hej', '2045-06-19 05:55:23', 1, 1, 1),
(61, 13, '????? ???', 2, 'John Spow', 'hej', '2045-06-19 08:21:54', 1, 1, 1),
(62, 2, 'John Spow', 13, '????? ???', 'kto ty ?', '2045-06-19 08:22:09', 1, 0, 1),
(63, 2, 'John Spow', 13, '????? ???', 'wersja', '2045-06-19 08:46:05', 1, 0, 1),
(64, 2, 'John Spow', 13, '????? ???', 'wersja', '2045-06-19 08:54:27', 1, 0, 1),
(65, 2, 'John Spow', 13, '????? ???', 'notatki', '2045-06-19 08:55:01', 1, 0, 1),
(66, 13, '????? ???', 2, 'John Spow', 'hej', '2045-06-19 08:55:48', 1, 1, 1),
(67, 13, '????? ???', 2, 'John Spow', 'hej', '2045-06-19 17:08:37', 1, 1, 1),
(68, 2, 'John Spow', 13, '????? ???', 'hej', '2045-06-19 17:08:42', 1, 0, 1),
(69, 13, '????? ???', 2, 'John Spow', 'hej', '2045-06-19 17:33:44', 1, 1, 1),
(70, 2, 'John Spow', 13, '????? ???', 'ktoś ty ?', '2045-06-19 17:33:54', 1, 0, 1),
(71, 13, '????? ???', 2, 'John Spow', 'hej test', '2045-06-19 19:03:12', 1, 1, 1),
(72, 13, '????? ???', 2, 'John Spow', 'hej test 2', '2045-06-19 19:03:32', 1, 1, 1),
(73, 13, '????? ???', 2, 'John Spow', 'hej test 2', '2045-06-19 19:11:50', 1, 1, 1),
(74, 13, '????? ???', 2, 'John Spow', 'hej test 2', '2045-06-19 19:12:04', 1, 1, 1),
(75, 13, '????? ???', 2, 'John Spow', 'hej test 2', '2045-06-19 19:13:47', 1, 1, 1),
(76, 1, 'Dedal ', 2, 'John Spow', 'hej test 2', '2045-06-19 19:14:25', 1, 1, 1),
(77, 1, 'Dedal ', 2, 'John Spow', 'hej test 2', '2045-06-19 19:21:14', 1, 1, 1),
(78, 13, '????? ???', 2, 'John Spow', 'hej test 3', '2045-06-19 19:22:23', 1, 1, 1),
(79, 13, '????? ???', 2, 'John Spow', 'hej test 3', '2045-06-19 19:25:12', 1, 1, 1),
(80, 2, 'John Spow', 13, '????? ???', 'kto ty ?', '2045-06-19 19:25:47', 1, 0, 1),
(81, 13, '????? ???', 2, 'John Spow', 'nikt', '2045-06-19 19:26:14', 1, 1, 1),
(82, 1, 'Dedal ', 9, 'Han Stevens', '123', '2045-06-19 23:42:16', 0, 1, 1),
(83, 2, 'John Spow', 13, '????? ???', 'notatki', '2045-06-20 00:10:19', 0, 0, 0),
(84, 2, 'John Spow', 13, '????? ???', 'notatki', '2045-06-20 00:10:32', 0, 0, 0),
(85, 2, 'John Spow', 13, '????? ???', 'wersja', '2045-06-20 00:10:53', 0, 0, 0),
(86, 2, 'John Spow', 13, '????? ???', 'notatki', '2045-06-20 00:14:26', 0, 0, 0),
(87, 2, 'John Spow', 10, 'Dave Bowman', 'udostępnienie notatki o id:1646500108H53E69153004536', '', 1, 1, 1),
(88, 2, 'John Spow', 10, 'Dave Bowman', 'cofnięto udostępnienie notatki o id: 1646500108H53E69153004536', '2045-06-20 00:43:16', 1, 1, 1),
(89, 2, 'John Spow', 10, 'Dave Bowman', 'notatka udostępnij', '2045-06-20 00:45:07', 1, 0, 0),
(90, 2, 'John Spow', 10, 'Dave Bowman', 'udostępnienie notatki o id: 1646500108H53E69153004536', '2045-06-20 00:45:45', 1, 1, 0),
(91, 10, 'Dave Bowman', 2, 'John Spow', 'dzięki', '2045-06-20 00:46:34', 1, 0, 0),
(92, 2, 'John Spow', 10, 'Dave Bowman', 'moduły', '2045-06-20 00:47:05', 0, 0, 0),
(93, 2, 'John Spow', 5, 'Manu Punjabi', 'udostępnienie notatki o id: 1645281533H33P60875416721', '2045-06-23 15:25:24', 0, 1, 0),
(94, 2, 'John Spow', 7, 'Akito Yamazaki', 'cześć', '2045-07-01 04:28:46', 0, 0, 1),
(95, 15, 'NASA  ', 2, 'John Spow', 'masz notatkę', '2045-07-01 04:36:10', 1, 1, 0),
(96, 4, 'William Weir', 2, 'John Spow', 'Witaj Kapitanie', '2045-01-01 13:49:06', 1, 0, 0),
(97, 4, 'William Weir', 2, 'John Spow', 'udostępnienie notatki o id: 1650523221J1C156799705995', '2045-01-01 14:02:52', 1, 1, 0);

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
(0, 'brak', '', 0, 0, 30, '', 17, 10, 18, 8),
(1, 'Pomieszczenie laboratorium', 'PL', 3, 0, 7, '', 37, 2, 272, 20),
(2, 'Pomieszczenie oranżerii', 'PO', 3, 0, 7, '', 6, 2, 2, 10),
(3, 'Pomieszczenie medyczne', 'PM', 3, 0, 7, '', 4, 2, 2, 7),
(4, 'Urządzenia medyczne', 'UM', 3, 0, 7, '', 2, 2, 2, 15),
(5, 'Magazyn leków', 'ML', 3, 7, 30, '', 17, 10, 18, 8),
(6, 'Zespół upraw', 'ZU', 3, 21, 7, '', 6, 10, 40, 10),
(7, 'Śluza Główna', 'SD', 2, 0, 7, 'Główna śluza.', 11, 5, 2, 10),
(8, 'Śluza Dziobowa', 'ST', 2, 0, 7, 'Główna techniczna', 11, 5, 2, 10),
(9, 'Pomieszczenie Dowodzenia', 'PD', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(10, 'Urządzenia Nawigacyjne', 'UN', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(11, 'Przyrządy Nawigacyjne', 'PN', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(12, 'Urządzenia Wykonawcze Sterowania', 'UWS', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(13, 'Przyrządy Sterowania', 'PS', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(14, 'Autopilot', 'AP', 2, 0, 7, 'Główny mostek', 5, 437, 77, 10),
(15, 'Przyrządy Nawigacyjne - awaryjne', 'PNA', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(16, 'Urządzenia Wykonawcze Sterowania - awaryjne', 'UWSA', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(17, 'Przyrządy Sterowania - awaryjne', 'PSA', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(18, 'Kapsuły Ewakuacyjne', 'KP', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(19, 'Anteny Nadawcze', 'AN', 18, 0, 7, '', 11, 16, 32, 10),
(20, 'Anteny Odbiorcze', 'AO', 18, 0, 7, '', 11, 5, 2, 10),
(21, 'Moduły Niskich Częstotliwości', 'MNCZ', 18, 0, 7, '', 11, 5, 2, 10),
(22, 'Moduły Średnich Częstotliwości', 'MSCZ', 18, 0, 7, '', 11, 5, 2, 10),
(23, 'Moduły Wysokich Częstotliwości', 'MWCZ', 18, 0, 7, '', 11, 5, 2, 10),
(24, 'Satelita 1', 'SA1', 18, 0, 7, '', 10, 5, 30, 10),
(25, 'Satelita 2', 'SA2', 18, 0, 7, '', 10, 5, 40, 10),
(26, 'Skafander 1', 'SK1', 19, 5, 3, '', 10, 103, 649, 60),
(27, 'Skafander 2', 'SK2', 19, 0, 3, '', 58, 97, 648, 59),
(28, 'Skafander 3', 'SK3', 19, 0, 3, '', 69, 148, 596, 61),
(29, 'Skafander 4', 'SK4', 19, 0, 3, '', 65, 142, 750, 60),
(30, 'Skafander 5', 'SK5', 19, 0, 3, '', 75, 128, 668, 60),
(31, 'Skafander 6', 'SK6', 19, 0, 3, '', 62, 107, 723, 60),
(32, 'Skafander 7', 'SK7', 19, 0, 3, '', 64, 105, 750, 60),
(33, 'Skafander 8', 'SK8', 19, 0, 3, '', 75, 120, 737, 60),
(34, 'Skafander 9', 'SK9', 19, 0, 3, '', 74, 94, 591, 60),
(35, 'Skafander 10', 'SK10', 19, 0, 3, '', 84, 143, 748, 60),
(36, 'Kokon hibernacyjny John Spow', 'ZS01', 17, 51, 30, '', 16, 72, 7929, 16),
(37, 'Kokon hibernacyjny Peng Yaping', 'ZS02', 17, 72, 30, '', 15, 76, 7187, 15),
(38, 'Kokon hibernacyjny William Weir', 'ZS03', 17, 43, 30, '', 15, 76, 7187, 15),
(39, 'Kokon hibernacyjny Manu Punjabi', 'ZS04', 17, 71, 30, '', 15, 76, 7187, 15),
(40, 'Kokon hibernacyjny Zeki Demir', 'ZS05', 17, 45, 30, '', 15, 76, 7187, 15),
(41, 'Kokon hibernacyjny Akito Yamazaki', 'ZS06', 17, 58, 31, '', 15, 76, 7187, 15),
(42, 'Kokon hibernacyjny Da Yang', 'ZS07', 17, 53, 29, '', 15, 76, 7187, 15),
(43, 'Kokon hibernacyjny Han Stevans', 'ZS08', 17, 48, 38, '', 15, 76, 7187, 15),
(44, 'Kokon hibernacyjny Dave Bowman', 'ZS09', 17, 49, 31, '', 15, 76, 7187, 15),
(45, 'Kokon hibernacyjny Rajeh Amit', 'ZS10', 17, 50, 30, '', 15, 76, 7187, 15);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `dzialania`
--
ALTER TABLE `dzialania`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `innelog`
--
ALTER TABLE `innelog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komputery`
--
ALTER TABLE `komputery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logowania`
--
ALTER TABLE `logowania`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moduly`
--
ALTER TABLE `moduly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `symbol` (`symbol`);

--
-- Indexes for table `moduly_osoby`
--
ALTER TABLE `moduly_osoby`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `notatki_udo`
--
ALTER TABLE `notatki_udo`
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
-- Indexes for table `polecenia_osoby`
--
ALTER TABLE `polecenia_osoby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stan`
--
ALTER TABLE `stan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testylog`
--
ALTER TABLE `testylog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ustawienia`
--
ALTER TABLE `ustawienia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uszkodzenia`
--
ALTER TABLE `uszkodzenia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uszkodzenianazwa`
--
ALTER TABLE `uszkodzenianazwa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wiadomosci`
--
ALTER TABLE `wiadomosci`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT dla tabeli `dzialania`
--
ALTER TABLE `dzialania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT dla tabeli `innelog`
--
ALTER TABLE `innelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT dla tabeli `komputery`
--
ALTER TABLE `komputery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `logowania`
--
ALTER TABLE `logowania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `moduly`
--
ALTER TABLE `moduly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `moduly_osoby`
--
ALTER TABLE `moduly_osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT dla tabeli `notatki_ng`
--
ALTER TABLE `notatki_ng`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `notatki_tr`
--
ALTER TABLE `notatki_tr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT dla tabeli `notatki_udo`
--
ALTER TABLE `notatki_udo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT dla tabeli `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `polecenia`
--
ALTER TABLE `polecenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT dla tabeli `polecenia_osoby`
--
ALTER TABLE `polecenia_osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- AUTO_INCREMENT dla tabeli `stan`
--
ALTER TABLE `stan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `testylog`
--
ALTER TABLE `testylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT dla tabeli `ustawienia`
--
ALTER TABLE `ustawienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `uszkodzenia`
--
ALTER TABLE `uszkodzenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT dla tabeli `uszkodzenianazwa`
--
ALTER TABLE `uszkodzenianazwa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `wiadomosci`
--
ALTER TABLE `wiadomosci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT dla tabeli `zespoly`
--
ALTER TABLE `zespoly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
