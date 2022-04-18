-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Kwi 2022, 19:41
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
(198, 'zespoły', 'zespoly_3', '50', 'informacja', 'problem z dostępem do: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(199, 'zespoły', 'zespoly_4', '50', 'linie', '', 'zespoly', '', 'zespoly_5', 'zespoly_5', 'wyświetla listę zespołów'),
(200, 'zespoły', 'zespoly_5', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(201, 'zespoły wszystkie', 'zespolyW_0', '50', 'komunikat', '', 'wykonuję: [ zespoły wszystkie ]', '', 'zespolyW_1', 'zespolyW_1', 'alternatywa'),
(202, 'zespoły wszystkie', 'zespolyW_1', '50', 'komunikat', '', 'wczytuję wszystkie dostępne zespoły', '', 'zespolyW_2', 'zespolyW_2', ''),
(203, 'zespoły wszystkie', 'zespolyW_2', '50', 'getset', '', 'wczytaj', 'zespolyW', 'zespolyW_4', 'zespolyW_3', 'wczytuje wszystkie dostępne zespoły'),
(204, 'zespoły wszystkie', 'zespolyW_3', '50', 'informacja', 'problem z dostępem do: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
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
(217, 'zespół', 'zespol_7', '50', 'informacja', 'problem z dostępem do: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(218, 'zespół', 'zespol_6', '50', 'getset', '', 'wczytaj', 'zespol', 'zespol_8', 'zespol_7', 'wczytuje zespół'),
(219, 'test', 'test_3', '50', 'zapiszdane', '', 'nr modułu', '', 'test_4', 'test_4', ''),
(220, 'test', 'test_2', '50', 'dane', '', 'podaj symbol modułu ?', '', 'test_3', 'test_3', ''),
(221, 'test', 'test_1', '50', 'komunikat', '', 'wczytuję dane zespołu do testu', '', 'test_2', 'test_2', ''),
(223, 'test', 'test_5', '50', 'dodajdane', '', 'nr zespołu', '', 'test_6', 'test_6', ''),
(224, 'test', 'test_4', '50', 'dane', '', 'podaj symbol zespołu ?', '', 'test_5', 'test_5', ''),
(225, 'test', 'test_9', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(226, 'test', 'test_8', '50', 'testy', '', 'test', '', 'test_9', 'test_9', 'wyświetla listę zespołów'),
(227, 'test', 'test_7', '50', 'informacja', 'problem z dostępem do: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
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
(238, 'reset', 'reset_6', '50', 'informacja', 'problem z dostępem do: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
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
(257, 'naprawa', 'naprawa_6', '50', 'informacja', 'problem z dostępem do: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
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
(277, 'polecenie', 'polecenie_5', '50', 'komunikat', '', 'sprawdzam możliwość wykonania polecenia, czekaj', '', 'end', 'end', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `innelog`
--

CREATE TABLE `innelog` (
  `id` int(11) NOT NULL,
  `dedal` tinyint(4) NOT NULL,
  `moduly` int(11) NOT NULL,
  `zespoly` int(11) NOT NULL,
  `polecenieid` int(11) NOT NULL,
  `polecenieText` text COLLATE utf8_polish_ci NOT NULL,
  `czaswykonania` text COLLATE utf8_polish_ci NOT NULL,
  `osoba` int(11) NOT NULL,
  `osobaText` text COLLATE utf8_polish_ci NOT NULL,
  `terminal` text COLLATE utf8_polish_ci NOT NULL,
  `del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `innelog`
--

INSERT INTO `innelog` (`id`, `dedal`, `moduly`, `zespoly`, `polecenieid`, `polecenieText`, `czaswykonania`, `osoba`, `osobaText`, `terminal`, `del`) VALUES
(1, 0, 0, 0, 61, 'polecenie', '2045-07-02 19:38:27', 2, 'John Spow', 'Komputer-Tomka', 0),
(2, 0, 0, 0, 0, 'testy', '2045-07-02 19:38:33', 2, 'John Spow', 'Komputer-Tomka', 0),
(3, 1, 0, 0, 0, 'testy', '2045-07-02 19:38:33', 2, 'John Spow', 'Komputer-Tomka', 0),
(4, 0, 0, 0, 61, 'polecenie', '2045-07-02 19:40:00', 2, 'John Spow', 'Komputer-Tomka', 0),
(5, 0, 0, 0, 0, 'test', '2045-07-02 19:40:04', 2, 'John Spow', 'Komputer-Tomka', 0),
(6, 0, 0, 0, 0, 'lab', '2045-07-02 19:40:13', 2, 'John Spow', 'Komputer-Tomka', 0),
(7, 0, 0, 0, 0, 'ZU', '2045-07-02 19:40:16', 2, 'John Spow', 'Komputer-Tomka', 0),
(8, 0, 0, 0, 61, 'polecenie', '2045-07-02 19:41:39', 2, 'John Spow', 'Komputer-Tomka', 0),
(9, 0, 0, 0, 0, 'resety', '2045-07-02 19:41:45', 2, 'John Spow', 'Komputer-Tomka', 0),
(10, 1, 0, 0, 0, 'resety', '2045-07-02 19:41:45', 2, 'John Spow', 'Komputer-Tomka', 0),
(11, 0, 0, 0, 61, 'polecenie', '2045-07-02 19:43:04', 2, 'John Spow', 'Komputer-Tomka', 0),
(12, 0, 0, 0, 0, 'polecenie', '2045-07-02 19:43:10', 2, 'John Spow', 'Komputer-Tomka', 0),
(13, 0, 0, 0, 0, 'www', '2045-07-02 19:43:16', 2, 'John Spow', 'Komputer-Tomka', 0);

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
(0, 'DESKTOP-2KPJSHU', '127.0.0.1', 'OF511649430931HC52130305043549XS', '2022-04-08 17:15:31', '2022-04-08 17:15:31'),
(1, 'Dedal', '127.0.0.1', 'ND801648855709SH75159939003773OC', '2022-04-02 01:28:29', '2022-04-02 01:28:29'),
(2, 'DESKTOP-2KPJSHU', '192.168.0.16', 'EI441648855714JZ185740497128VT', '2022-04-02 01:28:34', '2022-04-02 01:28:34'),
(3, 'DESKTOP-2KPJSHU', '192.168.0.16', 'PQ481648855872CH68151694740224ZN', '2022-04-02 01:31:12', '2022-04-02 01:31:12'),
(4, 'DESKTOP-2KPJSHU', '192.168.0.16', 'JV551648856819UP5472549700036LU', '2022-04-02 01:46:59', '2022-04-02 01:46:59'),
(5, 'DESKTOP-2KPJSHU', '192.168.0.16', 'ZK911648856925RZ218137426175NR', '2022-04-02 01:48:45', '2022-04-02 01:48:45'),
(6, 'DESKTOP-2KPJSHU', '192.168.0.16', 'GW541648856989EM4242870281714FV', '2022-04-02 01:49:49', '2022-04-02 01:49:49'),
(7, 'DESKTOP-2KPJSHU', '192.168.0.16', 'UA651648857282UN9028030573794YG', '2022-04-02 01:54:42', '2022-04-02 01:54:42'),
(8, 'DESKTOP-2KPJSHU', '192.168.0.16', 'ZG431648857507SD3675847445322MK', '2022-04-02 01:58:27', '2022-04-02 01:58:27'),
(9, 'DESKTOP-2KPJSHU', '192.168.0.16', 'EH521648858442WY742870319492BI', '2022-04-02 02:14:02', '2022-04-02 02:14:02'),
(10, 'DESKTOP-2KPJSHU', '192.168.0.16', 'FO741648859023EG11108824695518BB', '2022-04-02 02:23:43', '2022-04-02 02:23:43'),
(11, 'DESKTOP-2KPJSHU', '192.168.0.16', 'OY861648886419RF648244432095RP', '2022-04-02 10:00:19', '2022-04-02 10:00:19'),
(12, 'DESKTOP-2KPJSHU', '192.168.0.16', 'GG161648887339EM6026382197424YW', '2022-04-02 10:15:39', '2022-04-02 10:15:39'),
(13, 'DESKTOP-2KPJSHU', '192.168.0.16', 'FA71648887819ZQ5165955512760NM', '2022-04-02 10:23:39', '2022-04-02 10:23:39'),
(14, 'DESKTOP-2KPJSHU', '192.168.0.16', 'JN411648887946KX96120368820058RA', '2022-04-02 10:25:46', '2022-04-02 10:25:46'),
(15, 'DESKTOP-2KPJSHU', '192.168.0.16', 'XS521648888038BY43105528834432KL', '2022-04-02 10:27:18', '2022-04-02 10:27:18'),
(16, 'DESKTOP-2KPJSHU', '192.168.0.16', 'EF381648888429QB37105528859456JI', '2022-04-02 10:33:49', '2022-04-02 10:33:49'),
(17, 'DESKTOP-2KPJSHU', '192.168.0.16', 'MC321648888657EB501648888657LF', '2022-04-02 10:37:37', '2022-04-02 10:37:37'),
(18, 'DESKTOP-2KPJSHU', '192.168.0.16', 'NI701648888913CO50141804446518GF', '2022-04-02 10:41:53', '2022-04-02 10:41:53'),
(19, 'DESKTOP-2KPJSHU', '192.168.0.16', 'DA891648889178KR6487391126434FA', '2022-04-02 10:46:18', '2022-04-02 10:46:18'),
(20, 'DESKTOP-2KPJSHU', '192.168.0.16', 'LC121648889347UF94103880028861BB', '2022-04-02 10:49:07', '2022-04-02 10:49:07'),
(21, 'DESKTOP-2KPJSHU', '192.168.0.16', 'WH241648889435KK53141804491410GK', '2022-04-02 10:50:35', '2022-04-02 10:50:35'),
(22, 'DESKTOP-2KPJSHU', '192.168.0.16', 'UD611648889451HV8959360020236QG', '2022-04-02 10:50:51', '2022-04-02 10:50:51'),
(23, 'DESKTOP-2KPJSHU', '192.168.0.16', 'KW831648889496ZX8579146695808VU', '2022-04-02 10:51:36', '2022-04-02 10:51:36'),
(24, 'DESKTOP-2KPJSHU', '192.168.0.16', 'MH191648889578MX50151697841176ZQ', '2022-04-02 10:52:57', '2022-04-02 10:52:57'),
(25, 'DESKTOP-2KPJSHU', '192.168.0.16', 'MG81648889809YS78128613405102DF', '2022-04-02 10:56:49', '2022-04-02 10:56:49'),
(26, 'DESKTOP-2KPJSHU', '192.168.0.16', 'SG821648889907VF9380795605443KG', '2022-04-02 10:58:27', '2022-04-02 10:58:27'),
(27, 'DESKTOP-2KPJSHU', '192.168.0.16', 'JW561648890018RL8467604490738FS', '2022-04-02 11:00:18', '2022-04-02 11:00:18'),
(28, 'DESKTOP-2KPJSHU', '192.168.0.16', 'YG581648890150ZH14110475640050SH', '2022-04-02 11:02:30', '2022-04-02 11:02:30'),
(29, 'DESKTOP-2KPJSHU', '192.168.0.16', 'MM501648895203UN2119786742436FP', '2022-04-02 12:26:43', '2022-04-02 12:26:43'),
(30, 'DESKTOP-2KPJSHU', '192.168.0.16', 'CH561648895559MT4347817971211GS', '2022-04-02 12:32:39', '2022-04-02 12:32:39'),
(31, 'DESKTOP-2KPJSHU', '192.168.0.16', 'WH521648896029WO3780795905421OA', '2022-04-02 12:40:29', '2022-04-02 12:40:29'),
(32, 'DESKTOP-2KPJSHU', '192.168.0.16', 'TP561648896379GI4849466891370CI', '2022-04-02 12:46:19', '2022-04-02 12:46:19'),
(33, 'Dedal', '127.0.0.1', 'MD731648897484TR2946169129552IE', '2022-04-02 13:04:43', '2022-04-02 13:04:43'),
(34, 'Dedal', '127.0.0.1', 'XH301648898244ST758244491220UL', '2022-04-02 13:17:23', '2022-04-02 13:17:23'),
(35, 'Dedal', '127.0.0.1', 'MI31648898549MZ77159943159253VF', '2022-04-02 13:22:28', '2022-04-02 13:22:28'),
(36, 'Dedal', '127.0.0.1', 'RY1001648898676QK16146751982164VR', '2022-04-02 13:24:35', '2022-04-02 13:24:35'),
(37, 'Dedal', '127.0.0.1', 'FC481648898746WU3821435683698ML', '2022-04-02 13:25:45', '2022-04-02 13:25:45'),
(38, 'Dedal', '127.0.0.1', 'XY141648898813FR80150049791983ET', '2022-04-02 13:26:52', '2022-04-02 13:26:52'),
(39, 'Dedal', '127.0.0.1', 'JD11648898943PR2118720723896LU', '2022-04-02 13:29:02', '2022-04-02 13:29:02'),
(40, 'Dedal', '127.0.0.1', 'LD941648899109RW46117071836739SY', '2022-04-02 13:31:48', '2022-04-02 13:31:48'),
(41, 'Dedal', '127.0.0.1', 'AH621648899260EY5447818078540OT', '2022-04-02 13:34:20', '2022-04-02 13:34:20'),
(42, 'DESKTOP-2KPJSHU', '192.168.0.16', 'NJ421648902989GS88120369918197QM', '2022-04-02 14:36:29', '2022-04-02 14:36:29'),
(43, 'DESKTOP-2KPJSHU', '192.168.0.16', 'SI561648903324DT68130263362596PL', '2022-04-02 14:42:04', '2022-04-02 14:42:04'),
(44, 'DESKTOP-2KPJSHU', '192.168.0.16', 'LE171648903435JT2211542324045RO', '2022-04-02 14:43:55', '2022-04-02 14:43:55'),
(45, 'DESKTOP-2KPJSHU', '192.168.0.16', 'KC551648903700NL5775849570200QP', '2022-04-02 14:48:20', '2022-04-02 14:48:20'),
(46, 'DESKTOP-2KPJSHU', '192.168.0.16', 'YQ541648903798US3962658344324IZ', '2022-04-02 14:49:57', '2022-04-02 14:49:57'),
(47, 'Dedal', '127.0.0.1', 'IS331648907205YV5428031422485CS', '2022-04-02 15:46:45', '2022-04-02 15:46:45'),
(48, 'Dedal', '127.0.0.1', 'HX161648907458AU7143454948846HV', '2022-04-02 15:50:57', '2022-04-02 15:50:57'),
(49, 'Dedal', '127.0.0.1', 'DL921648907995QO8334627067895NX', '2022-04-02 15:59:54', '2022-04-02 15:59:54'),
(50, 'Dedal', '127.0.0.1', 'GJ901648908070UO43151699542440GB', '2022-04-02 16:01:09', '2022-04-02 16:01:09'),
(51, 'Dedal', '127.0.0.1', 'FZ41648908170QR69158295184320HT', '2022-04-02 16:02:50', '2022-04-02 16:02:50'),
(52, 'Dedal', '127.0.0.1', 'NO111648908227LG40120370300571WV', '2022-04-02 16:03:45', '2022-04-02 16:03:45'),
(53, 'Dedal', '127.0.0.1', 'YX681648908273NE1323084715822RQ', '2022-04-02 16:04:32', '2022-04-02 16:04:32'),
(54, 'Dedal', '127.0.0.1', 'JU41648908537VE3975849792702OI', '2022-04-02 16:08:56', '2022-04-02 16:08:56'),
(55, 'Dedal', '127.0.0.1', 'MO241648908713KV1177498709511BR', '2022-04-02 16:11:53', '2022-04-02 16:11:53'),
(56, 'Dedal', '127.0.0.1', 'WR131648908936WN5564307448504HB', '2022-04-02 16:15:35', '2022-04-02 16:15:35'),
(57, 'Dedal', '127.0.0.1', 'SL411648909025BQ8644520543675XE', '2022-04-02 16:17:04', '2022-04-02 16:17:04'),
(58, 'Dedal', '127.0.0.1', 'SS561648909126QY90163242003474BS', '2022-04-02 16:18:46', '2022-04-02 16:18:46'),
(59, 'Dedal', '127.0.0.1', 'ZS761648909669ZG54113774767161GY', '2022-04-02 16:27:48', '2022-04-02 16:27:48'),
(60, 'Dedal', '127.0.0.1', 'EC521648909931MO7426382558896QU', '2022-04-02 16:32:09', '2022-04-02 16:32:09'),
(61, 'Dedal', '127.0.0.1', 'ZT681648910470MG48156646494650AI', '2022-04-02 16:41:08', '2022-04-02 16:41:08'),
(62, 'Dedal', '127.0.0.1', 'BV571648910552HI3623084747728KH', '2022-04-02 16:42:31', '2022-04-02 16:42:31'),
(63, 'Dedal', '127.0.0.1', 'XS421648910596SD8153348685428KY', '2022-04-02 16:43:14', '2022-04-02 16:43:14'),
(64, 'Dedal', '127.0.0.1', 'VO891648910885QP6416489108850EK', '2022-04-02 16:48:05', '2022-04-02 16:48:05'),
(65, 'DESKTOP-2KPJSHU', '192.168.0.16', 'MA761648910885TG78100583563985DI', '2022-04-02 16:48:05', '2022-04-02 16:48:05'),
(66, 'Dedal', '127.0.0.1', 'RA131648911049TW1187392285597JA', '2022-04-02 16:50:49', '2022-04-02 16:50:49'),
(67, 'Dedal', '127.0.0.1', 'CE911648911082XS8031329310558ID', '2022-04-02 16:51:22', '2022-04-02 16:51:22'),
(68, 'Dedal', '127.0.0.1', 'XI811648911291RE904946733873RX', '2022-04-02 16:54:51', '2022-04-02 16:54:51'),
(69, 'Dedal', '127.0.0.1', 'OD781648911375WJ774201011875MK', '2022-04-02 16:56:15', '2022-04-02 16:56:15'),
(70, 'Dedal', '127.0.0.1', 'OE591648911442ET364946734326LK', '2022-04-02 16:57:22', '2022-04-02 16:57:22'),
(71, 'Dedal', '127.0.0.1', 'SO461648911534YT2129680407612QR', '2022-04-02 16:58:54', '2022-04-02 16:58:54'),
(72, 'Dedal', '127.0.0.1', 'UN821648911720QA57158295525120GG', '2022-04-02 17:02:00', '2022-04-02 17:02:00'),
(73, 'Dedal', '127.0.0.1', 'RP31648912288GP3119786947456GI', '2022-04-02 17:11:28', '2022-04-02 17:11:28'),
(74, 'DESKTOP-2KPJSHU', '192.168.0.16', 'MT341648912444NS58126966258188UV', '2022-04-02 17:14:04', '2022-04-02 17:14:04'),
(75, 'Dedal', '127.0.0.1', 'DH641648912496SX9572552149824OQ', '2022-04-02 17:14:56', '2022-04-02 17:14:56'),
(76, 'Dedal', '127.0.0.1', 'GU11648912556DQ5249467376680ER', '2022-04-02 17:15:56', '2022-04-02 17:15:56'),
(77, 'Dedal', '127.0.0.1', 'UF661648913857TF46128615280846BR', '2022-04-02 17:37:37', '2022-04-02 17:37:37'),
(78, 'DESKTOP-2KPJSHU', '192.168.0.16', 'YP441648913920UR18117072888320XJ', '2022-04-02 17:38:40', '2022-04-02 17:38:40'),
(79, 'DESKTOP-2KPJSHU', '192.168.0.16', 'EU151648914366SO4689041375764AL', '2022-04-02 17:46:06', '2022-04-02 17:46:06'),
(80, 'DESKTOP-2KPJSHU', '192.168.0.16', 'RG451648914458OQ3332978289160BU', '2022-04-02 17:47:38', '2022-04-02 17:47:38'),
(81, 'DESKTOP-2KPJSHU', '192.168.0.16', 'GH761648914702EY95133562090862FY', '2022-04-02 17:51:42', '2022-04-02 17:51:42'),
(82, 'DESKTOP-2KPJSHU', '192.168.0.16', 'YI891648914720MP65113775115680RT', '2022-04-02 17:52:00', '2022-04-02 17:52:00'),
(83, 'DESKTOP-2KPJSHU', '192.168.0.16', 'NA431648915038ZC74164891503800HF', '2022-04-02 17:57:18', '2022-04-02 17:57:18'),
(84, 'DESKTOP-2KPJSHU', '192.168.0.16', 'YA441648915861XD6367605550301BN', '2022-04-02 18:11:01', '2022-04-02 18:11:01'),
(85, 'DESKTOP-2KPJSHU', '192.168.0.16', 'QS501648916078WZ28141806782708NJ', '2022-04-02 18:14:38', '2022-04-02 18:14:38'),
(86, 'DESKTOP-2KPJSHU', '192.168.0.16', 'LL711648972949AN5297289403991FH', '2022-04-03 10:02:29', '2022-04-03 10:02:29'),
(87, 'Dedal', '127.0.0.1', 'YD211648973092HC13113779143348LL', '2022-04-03 10:04:52', '2022-04-03 10:04:52'),
(88, 'DESKTOP-2KPJSHU', '127.0.0.1', 'LA691648990546LX5569257602932PH', '2022-04-03 14:55:46', '2022-04-03 14:55:46'),
(89, 'DESKTOP-2KPJSHU', '127.0.0.1', 'GM171648990580VK1118727321760LK', '2022-04-03 14:56:20', '2022-04-03 14:56:20'),
(90, 'Dedal', '127.0.0.1', 'VV131648990847HD9611542935929GM', '2022-04-03 15:00:47', '2022-04-03 15:00:47'),
(91, 'DESKTOP-2KPJSHU', '127.0.0.1', 'WX51648991593EQ6039575798232UD', '2022-04-03 15:13:13', '2022-04-03 15:13:13'),
(92, 'DESKTOP-2KPJSHU', '127.0.0.1', 'ET751648996989SF90128621765142WJ', '2022-04-03 16:43:09', '2022-04-03 16:43:09'),
(93, 'DESKTOP-2KPJSHU', '127.0.0.1', 'QU241648997058DM326383952928TO', '2022-04-03 16:44:17', '2022-04-03 16:44:17'),
(94, 'Dedal', '127.0.0.1', 'YA451648997774ML86151707795208TK', '2022-04-03 16:56:14', '2022-04-03 16:56:14'),
(95, 'DESKTOP-2KPJSHU', '127.0.0.1', 'IJ341648997858KL2465959914320DO', '2022-04-03 16:57:38', '2022-04-03 16:57:38'),
(96, 'DESKTOP-2KPJSHU', '127.0.0.1', 'MG591648998003NL1544522946081SO', '2022-04-03 17:00:03', '2022-04-03 17:00:03'),
(97, 'DESKTOP-2KPJSHU', '127.0.0.1', 'AE781648998086GB35135217843052GB', '2022-04-03 17:01:26', '2022-04-03 17:01:26'),
(98, 'DESKTOP-2KPJSHU', '127.0.0.1', 'ST671648998251XO55110482882817VD', '2022-04-03 17:04:11', '2022-04-03 17:04:11'),
(99, 'DESKTOP-2KPJSHU', '127.0.0.1', 'WI651648998495PI55105535903680VG', '2022-04-03 17:08:15', '2022-04-03 17:08:15'),
(100, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RE711648998860XJ43141813901960FS', '2022-04-03 17:14:20', '2022-04-03 17:14:20'),
(101, 'DESKTOP-2KPJSHU', '127.0.0.1', 'LV101648998976GL2416489989760UP', '2022-04-03 17:16:16', '2022-04-03 17:16:16'),
(102, 'DESKTOP-2KPJSHU', '127.0.0.1', 'MV671648999396YX39125323954096MF', '2022-04-03 17:23:16', '2022-04-03 17:23:16'),
(103, 'DESKTOP-2KPJSHU', '127.0.0.1', 'LE881649007638XQ3872556336072JY', '2022-04-03 19:40:37', '2022-04-03 19:40:37'),
(104, 'DESKTOP-2KPJSHU', '127.0.0.1', 'HV601649007653QZ3579152367344ZY', '2022-04-03 19:40:53', '2022-04-03 19:40:53'),
(105, 'DESKTOP-2KPJSHU', '127.0.0.1', 'UV61649008230IN5162662312740AN', '2022-04-03 19:50:30', '2022-04-03 19:50:30'),
(106, 'DESKTOP-2KPJSHU', '127.0.0.1', 'VH851649016801QS4116490168010LD', '2022-04-03 22:13:20', '2022-04-03 22:13:20'),
(107, 'DESKTOP-2KPJSHU', '127.0.0.1', 'JO11649016809KJ3162662638742ZC', '2022-04-03 22:13:29', '2022-04-03 22:13:29'),
(108, 'DESKTOP-2KPJSHU', '127.0.0.1', 'WE91649017086NH9846172478408DG', '2022-04-03 22:18:06', '2022-04-03 22:18:06'),
(109, 'DESKTOP-2KPJSHU', '127.0.0.1', 'KP501649017551NX78140166491835TW', '2022-04-03 22:25:51', '2022-04-03 22:25:51'),
(110, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PH701649017689BK7713192141512CC', '2022-04-03 22:28:09', '2022-04-03 22:28:09'),
(111, 'DESKTOP-2KPJSHU', '127.0.0.1', 'NF631649017759TI6379152852432CX', '2022-04-03 22:29:19', '2022-04-03 22:29:19'),
(112, 'DESKTOP-2KPJSHU', '127.0.0.1', 'IH501649018083DV91145113591304FZ', '2022-04-03 22:34:43', '2022-04-03 22:34:43'),
(113, 'DESKTOP-2KPJSHU', '127.0.0.1', 'DS371649018171OV185748944892TZ', '2022-04-03 22:36:11', '2022-04-03 22:36:11'),
(114, 'DESKTOP-2KPJSHU', '127.0.0.1', 'HZ381649018232MB3837927419336VQ', '2022-04-03 22:37:12', '2022-04-03 22:37:12'),
(115, 'DESKTOP-2KPJSHU', '127.0.0.1', 'CB251649018440WO66103888161720YS', '2022-04-03 22:40:40', '2022-04-03 22:40:40'),
(116, 'DESKTOP-2KPJSHU', '127.0.0.1', 'AS541649018517EF847821536993CF', '2022-04-03 22:41:57', '2022-04-03 22:41:57'),
(117, 'DESKTOP-2KPJSHU', '127.0.0.1', 'WM121649018538IO7644523500526MT', '2022-04-03 22:42:18', '2022-04-03 22:42:18'),
(118, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RX871649018555HI7539576445320WO', '2022-04-03 22:42:35', '2022-04-03 22:42:35'),
(119, 'DESKTOP-2KPJSHU', '127.0.0.1', 'HP491649019143QG5932980382860MX', '2022-04-03 22:52:23', '2022-04-03 22:52:23'),
(120, 'Komputer-Tomka', '127.0.0.1', 'VE251649055680HN47125328231680RG', '2022-04-04 09:01:19', '2022-04-04 09:01:19'),
(121, 'Komputer-Tomka', '127.0.0.1', 'AS501649058154FU3346173628312WP', '2022-04-04 09:42:34', '2022-04-04 09:42:34'),
(122, 'Komputer-Tomka', '127.0.0.1', 'XA901649058846OV58112136001528PQ', '2022-04-04 09:54:06', '2022-04-04 09:54:06'),
(123, 'Komputer-Tomka', '127.0.0.1', 'TC491649062832GL80159959094704TA', '2022-04-04 11:00:30', '2022-04-04 11:00:30'),
(124, 'Komputer-Tomka', '127.0.0.1', 'VW681649062836PT36141819403896YG', '2022-04-04 11:00:36', '2022-04-04 11:00:36'),
(125, 'Komputer-Tomka', '127.0.0.1', 'OB311649062939XS25155011916266NM', '2022-04-04 11:02:19', '2022-04-04 11:02:19'),
(126, 'Komputer-Tomka', '127.0.0.1', 'BK571649062945DP532981258900TY', '2022-04-04 11:02:25', '2022-04-04 11:02:25'),
(127, 'Komputer-Tomka', '127.0.0.1', 'TB381649064570DF3098943874200MK', '2022-04-04 11:29:30', '2022-04-04 11:29:30'),
(128, 'Komputer-Tomka', '127.0.0.1', 'HC911649064631OB76112136394908BE', '2022-04-04 11:30:31', '2022-04-04 11:30:31'),
(129, 'Dedal', '127.0.0.1', 'NA31649064644HU7164313521116BM', '2022-04-04 11:30:44', '2022-04-04 11:30:44'),
(130, 'Dedal', '127.0.0.1', 'PW281649064737ZU35151713955804WE', '2022-04-04 11:32:17', '2022-04-04 11:32:17'),
(131, 'Komputer-Tomka', '127.0.0.1', 'HJ661649064773WD416596259092WQ', '2022-04-04 11:32:53', '2022-04-04 11:32:53'),
(132, 'Komputer-Tomka', '127.0.0.1', 'SD281649065127CG63103891103001XM', '2022-04-04 11:38:47', '2022-04-04 11:38:47'),
(133, 'Komputer-Tomka', '127.0.0.1', 'MO361649065235JR1628034108995LF', '2022-04-04 11:40:35', '2022-04-04 11:40:35'),
(134, 'Komputer-Tomka', '127.0.0.1', 'MX901649065680FM7428034116560WR', '2022-04-04 11:48:00', '2022-04-04 11:48:00'),
(135, 'Komputer-Tomka', '127.0.0.1', 'FD121649064163SM71118732619736MD', '2022-04-04 11:22:43', '2022-04-04 11:22:43'),
(136, 'Komputer-Tomka', '127.0.0.1', 'EH81649064197TR5937928476531DL', '2022-04-04 11:23:17', '2022-04-04 11:23:17'),
(137, 'Komputer-Tomka', '127.0.0.1', 'GS541649064388XI88110487313996YJ', '2022-04-04 11:26:28', '2022-04-04 11:26:28'),
(138, 'Komputer-Tomka', '127.0.0.1', 'VH51649064415IE8224735966225SF', '2022-04-04 11:26:55', '2022-04-04 11:26:55'),
(139, 'Komputer-Tomka', '127.0.0.1', 'XE1001649136446CI87140176597910XM', '2022-04-05 07:27:26', '2022-04-05 07:27:26'),
(140, 'Komputer-Tomka', '127.0.0.1', 'GC171649136743SO25113790435267FE', '2022-04-05 07:32:23', '2022-04-05 07:32:23'),
(141, 'Komputer-Tomka', '127.0.0.1', 'YK691649136865NX75120386991145GN', '2022-04-05 07:34:25', '2022-04-05 07:34:25'),
(142, 'Komputer-Tomka', '127.0.0.1', 'IN621649137455FK74103895659665IB', '2022-04-05 07:44:15', '2022-04-05 07:44:15'),
(143, 'Komputer-Tomka', '127.0.0.1', 'MA121649138112EU1944526729024SC', '2022-04-05 07:55:12', '2022-04-05 07:55:12'),
(144, 'Komputer-Tomka', '127.0.0.1', 'AC11649138324HV6024737074860OM', '2022-04-05 07:58:44', '2022-04-05 07:58:44'),
(145, 'Dedal', '127.0.0.1', 'HT991649138327RC813193106616PQ', '2022-04-05 07:58:47', '2022-04-05 07:58:47'),
(146, 'Komputer-Tomka', '127.0.0.1', 'KM651649141181OG1009894847086AX', '2022-04-05 08:46:21', '2022-04-05 08:46:21'),
(147, 'Komputer-Tomka', '127.0.0.1', 'QZ941649141230FC7446175954440CG', '2022-04-05 08:47:10', '2022-04-05 08:47:10'),
(148, 'Komputer-Tomka', '127.0.0.1', 'VY581649141250KH10046175955000WL', '2022-04-05 08:47:30', '2022-04-05 08:47:30'),
(149, 'Komputer-Tomka', '127.0.0.1', 'HU91649141296TP13138527868864EU', '2022-04-05 08:48:16', '2022-04-05 08:48:16'),
(150, 'Komputer-Tomka', '127.0.0.1', 'VC941649141535OH68126983898195UY', '2022-04-05 08:52:15', '2022-04-05 08:52:15'),
(151, 'Komputer-Tomka', '127.0.0.1', 'UG121649141569MF5324737123535YH', '2022-04-05 08:52:49', '2022-04-05 08:52:49'),
(152, 'Komputer-Tomka', '127.0.0.1', 'CG251649141861XW4084106234911HM', '2022-04-05 08:57:41', '2022-04-05 08:57:41'),
(153, 'Komputer-Tomka', '127.0.0.1', 'TM131649141864WU5623087986096VK', '2022-04-05 08:57:44', '2022-04-05 08:57:44'),
(154, 'Komputer-Tomka', '127.0.0.1', 'EA381649141920YF11112141650560QQ', '2022-04-05 08:58:40', '2022-04-05 08:58:40'),
(155, 'Komputer-Tomka', '127.0.0.1', 'VM591649142209CF6624737133135GC', '2022-04-05 09:03:29', '2022-04-05 09:03:29'),
(156, 'Komputer-Tomka', '127.0.0.1', 'RI151649142229MX2161018262473HU', '2022-04-05 09:03:49', '2022-04-05 09:03:49'),
(157, 'Komputer-Tomka', '127.0.0.1', 'PD161649142258NJ5995650250964CF', '2022-04-05 09:04:18', '2022-04-05 09:04:18'),
(158, 'Komputer-Tomka', '127.0.0.1', 'JY821649142272MF35156668515840VB', '2022-04-05 09:04:32', '2022-04-05 09:04:32'),
(159, 'Komputer-Tomka', '127.0.0.1', 'QP151649142322TU1879158831456QS', '2022-04-05 09:05:22', '2022-04-05 09:05:22'),
(160, 'Komputer-Tomka', '127.0.0.1', 'QO91649142362FG764947427086KN', '2022-04-05 09:06:02', '2022-04-05 09:06:02'),
(161, 'Komputer-Tomka', '127.0.0.1', 'SG271649142459TW3726386279344CW', '2022-04-05 09:07:39', '2022-04-05 09:07:39'),
(162, 'Komputer-Tomka', '127.0.0.1', 'ZZ571649142479ZK1964316556681UN', '2022-04-05 09:07:59', '2022-04-05 09:07:59'),
(163, 'Komputer-Tomka', '127.0.0.1', 'LQ291649142524VU9616491425240DE', '2022-04-05 09:08:44', '2022-04-05 09:08:44'),
(164, 'Komputer-Tomka', '127.0.0.1', 'ID921649142538QZ9814842282842JX', '2022-04-05 09:08:58', '2022-04-05 09:08:58'),
(165, 'Komputer-Tomka', '127.0.0.1', 'RW891649142556ZZ10097299410804GR', '2022-04-05 09:09:16', '2022-04-05 09:09:16'),
(166, 'Komputer-Tomka', '127.0.0.1', 'CT541649142622WV36112141698296IL', '2022-04-05 09:10:22', '2022-04-05 09:10:22'),
(167, 'Komputer-Tomka', '127.0.0.1', 'IZ641649142640HG3344526851280OF', '2022-04-05 09:10:40', '2022-04-05 09:10:40'),
(168, 'Komputer-Tomka', '127.0.0.1', 'JV441649142683KE7152772565856ME', '2022-04-05 09:11:23', '2022-04-05 09:11:23'),
(169, 'Komputer-Tomka', '127.0.0.1', 'BK201649142764BF4270913138852JD', '2022-04-05 09:12:44', '2022-04-05 09:12:44'),
(170, 'Komputer-Tomka', '127.0.0.1', 'TE141649142784PX8936281141248HM', '2022-04-05 09:13:04', '2022-04-05 09:13:04'),
(171, 'Komputer-Tomka', '127.0.0.1', 'BA241649145850WZ244526937950XX', '2022-04-05 10:04:10', '2022-04-05 10:04:10'),
(172, 'Komputer-Tomka', '127.0.0.1', 'WG401649145926MU3311544021482BV', '2022-04-05 10:05:26', '2022-04-05 10:05:26'),
(173, 'Komputer-Tomka', '127.0.0.1', 'OS701649146361RO9143475733407RS', '2022-04-05 10:12:41', '2022-04-05 10:12:41'),
(174, 'Dedal', '127.0.0.1', 'GD721649146363FO1311544024541BX', '2022-04-05 10:12:43', '2022-04-05 10:12:43'),
(175, 'Komputer-Tomka', '127.0.0.1', 'NG891649146382EQ66122036832268MR', '2022-04-05 10:13:02', '2022-04-05 10:13:02'),
(176, 'Komputer-Tomka', '127.0.0.1', 'NU901649146761FP7123088054654AU', '2022-04-05 10:19:21', '2022-04-05 10:19:21'),
(177, 'Komputer-Tomka', '127.0.0.1', 'RA11649146776TK78136879182408TI', '2022-04-05 10:19:36', '2022-04-05 10:19:36'),
(178, 'Komputer-Tomka', '127.0.0.1', 'IB71649146862MU5265965874480WN', '2022-04-05 10:21:02', '2022-04-05 10:21:02'),
(179, 'Komputer-Tomka', '127.0.0.1', 'YX941649146864MR954421846512CM', '2022-04-05 10:21:04', '2022-04-05 10:21:04'),
(180, 'Komputer-Tomka', '127.0.0.1', 'ET851649147055ZM59126984323235JA', '2022-04-05 10:24:15', '2022-04-05 10:24:15'),
(181, 'Komputer-Tomka', '127.0.0.1', 'YY451649147087FW9118738590264YL', '2022-04-05 10:24:47', '2022-04-05 10:24:47'),
(182, 'Komputer-Tomka', '127.0.0.1', 'QT801649147218YE48143475807966GJ', '2022-04-05 10:26:57', '2022-04-05 10:26:57'),
(183, 'Komputer-Tomka', '127.0.0.1', 'DB371649147418OM9865965896720HM', '2022-04-05 10:30:18', '2022-04-05 10:30:18'),
(184, 'Komputer-Tomka', '127.0.0.1', 'KI541649147890FD5232982957800XQ', '2022-04-05 10:38:10', '2022-04-05 10:38:10'),
(185, 'Komputer-Tomka', '127.0.0.1', 'BI471649148620GL289894891720CF', '2022-04-05 10:50:20', '2022-04-05 10:50:20'),
(186, 'Komputer-Tomka', '127.0.0.1', 'CP511649149019NA5798948941140PT', '2022-04-05 10:56:59', '2022-04-05 10:56:59'),
(187, 'Komputer-Tomka', '127.0.0.1', 'NZ671649149225RI2449474476750HE', '2022-04-05 11:00:25', '2022-04-05 11:00:25'),
(188, 'Komputer-Tomka', '127.0.0.1', 'UN681649149397EB4146176183116ZL', '2022-04-05 11:03:17', '2022-04-05 11:03:17'),
(189, 'Komputer-Tomka', '127.0.0.1', 'EV741649149507JH9323088093098NH', '2022-04-05 11:05:07', '2022-04-05 11:05:07'),
(190, 'Komputer-Tomka', '127.0.0.1', 'OS861649149538FO38112142168584GG', '2022-04-05 11:05:38', '2022-04-05 11:05:38'),
(191, 'Komputer-Tomka', '127.0.0.1', 'PG461649150919BC1118738866168JI', '2022-04-05 11:28:39', '2022-04-05 11:28:39'),
(192, 'Komputer-Tomka', '127.0.0.1', 'ZB431649151269PW86161616824362KB', '2022-04-05 11:34:29', '2022-04-05 11:34:29'),
(193, 'Komputer-Tomka', '127.0.0.1', 'IF151649151361AD6213193210888LH', '2022-04-05 11:36:01', '2022-04-05 11:36:01'),
(194, 'Komputer-Tomka', '127.0.0.1', 'LH401649151489QD8419789817868ZB', '2022-04-05 11:38:09', '2022-04-05 11:38:09'),
(195, 'Komputer-Tomka', '127.0.0.1', 'RB161649151492NG64105545695488QD', '2022-04-05 11:38:12', '2022-04-05 11:38:12'),
(196, 'Komputer-Tomka', '127.0.0.1', 'RF481649151612BG1252772851584SK', '2022-04-05 11:40:12', '2022-04-05 11:40:12'),
(197, 'Komputer-Tomka', '127.0.0.1', 'YQ231649152736YB6964316956704UE', '2022-04-05 11:58:56', '2022-04-05 11:58:56'),
(198, 'Komputer-Tomka', '127.0.0.1', 'IT371649155042RT5103896767646XO', '2022-04-05 12:37:22', '2022-04-05 12:37:22'),
(199, 'Komputer-Tomka', '127.0.0.1', 'AN611649155051TO60102247613162NL', '2022-04-05 12:37:31', '2022-04-05 12:37:31'),
(200, 'Komputer-Tomka', '127.0.0.1', 'JG311649155554LX59138529066536JS', '2022-04-05 12:45:54', '2022-04-05 12:45:54'),
(201, 'Komputer-Tomka', '127.0.0.1', 'BR941649156064KR2482457803200AH', '2022-04-05 12:54:24', '2022-04-05 12:54:24'),
(202, 'Komputer-Tomka', '127.0.0.1', 'TS221649156361PR52113791788909TE', '2022-04-05 12:59:21', '2022-04-05 12:59:21'),
(203, 'Komputer-Tomka', '127.0.0.1', 'WQ681649156371TC93122037571454TM', '2022-04-05 12:59:31', '2022-04-05 12:59:31'),
(204, 'Komputer-Tomka', '127.0.0.1', 'ND721649156441ES916596625764XY', '2022-04-05 13:00:41', '2022-04-05 13:00:41'),
(205, 'Komputer-Tomka', '127.0.0.1', 'LT971649156514ZU7621439034682DA', '2022-04-05 13:01:54', '2022-04-05 13:01:54'),
(206, 'Komputer-Tomka', '127.0.0.1', 'FS551649157212MZ2798949432720HN', '2022-04-05 13:13:32', '2022-04-05 13:13:32'),
(207, 'Komputer-Tomka', '127.0.0.1', 'SV41649157280TH49148424155200GE', '2022-04-05 13:14:40', '2022-04-05 13:14:40'),
(208, 'Komputer-Tomka', '127.0.0.1', 'XR81649157373TW2356071350682IP', '2022-04-05 13:16:13', '2022-04-05 13:16:13'),
(209, 'Komputer-Tomka', '127.0.0.1', 'BX611649157531TA5736281465682GB', '2022-04-05 13:18:51', '2022-04-05 13:18:51'),
(210, 'Komputer-Tomka', '127.0.0.1', 'SQ221649157582JQ1297300297338RW', '2022-04-05 13:19:42', '2022-04-05 13:19:42'),
(211, 'Komputer-Tomka', '127.0.0.1', 'HB931649157634YD8849474729020JL', '2022-04-05 13:20:34', '2022-04-05 13:20:34'),
(212, 'Komputer-Tomka', '127.0.0.1', 'YH331649157733LN2587405359849ON', '2022-04-05 13:22:13', '2022-04-05 13:22:13'),
(213, 'Komputer-Tomka', '127.0.0.1', 'OO761649157774MY75128634306372CE', '2022-04-05 13:22:54', '2022-04-05 13:22:54'),
(214, 'Komputer-Tomka', '127.0.0.1', 'FC351649158065ZB7297300325835ET', '2022-04-05 13:27:45', '2022-04-05 13:27:45'),
(215, 'Komputer-Tomka', '127.0.0.1', 'GX691649158095WL653298316190NB', '2022-04-05 13:28:15', '2022-04-05 13:28:15'),
(216, 'Komputer-Tomka', '127.0.0.1', 'UZ851649158117ES55133581807477NT', '2022-04-05 13:28:37', '2022-04-05 13:28:37'),
(217, 'Komputer-Tomka', '127.0.0.1', 'AT571649158206BT2580808752094MP', '2022-04-05 13:30:06', '2022-04-05 13:30:06'),
(218, 'Komputer-Tomka', '127.0.0.1', 'JO531649158343UF1834632325203JL', '2022-04-05 13:32:23', '2022-04-05 13:32:23'),
(219, 'Komputer-Tomka', '127.0.0.1', 'XP581649158420OV2116491584200RI', '2022-04-05 13:33:40', '2022-04-05 13:33:40'),
(220, 'Komputer-Tomka', '127.0.0.1', 'UJ341649158433HF90117090248743QN', '2022-04-05 13:33:53', '2022-04-05 13:33:53'),
(221, 'Komputer-Tomka', '127.0.0.1', 'BP461649158482HM3729684852676OG', '2022-04-05 13:34:42', '2022-04-05 13:34:42'),
(222, 'Komputer-Tomka', '127.0.0.1', 'NZ71649158591PN3667615502231HI', '2022-04-05 13:36:31', '2022-04-05 13:36:31'),
(223, 'Komputer-Tomka', '127.0.0.1', 'GQ801649159005LU9356071406170LD', '2022-04-05 13:43:25', '2022-04-05 13:43:25'),
(224, 'Komputer-Tomka', '127.0.0.1', 'AS621649159629AO9165966385160UI', '2022-04-05 13:53:49', '2022-04-05 13:53:49'),
(225, 'Komputer-Tomka', '127.0.0.1', 'CH651649159899TA634947479697SX', '2022-04-05 13:58:19', '2022-04-05 13:58:19'),
(226, 'Komputer-Tomka', '127.0.0.1', 'XC131649160274QY1885756334248BV', '2022-04-05 14:04:34', '2022-04-05 14:04:34'),
(227, 'Komputer-Tomka', '127.0.0.1', 'JK431649160384AG9577510538048FE', '2022-04-05 14:06:24', '2022-04-05 14:06:24'),
(228, 'Komputer-Tomka', '127.0.0.1', 'PG271649160468GK9792352986208UE', '2022-04-05 14:07:48', '2022-04-05 14:07:48'),
(229, 'Komputer-Tomka', '127.0.0.1', 'WJ841649160558UL6747825656182RB', '2022-04-05 14:09:17', '2022-04-05 14:09:17'),
(230, 'Komputer-Tomka', '127.0.0.1', 'AF71649160662SN5318140767282VV', '2022-04-05 14:11:02', '2022-04-05 14:11:02'),
(231, 'Komputer-Tomka', '127.0.0.1', 'FO711649160804KF90130283703516TX', '2022-04-05 14:13:24', '2022-04-05 14:13:24'),
(232, 'Komputer-Tomka', '127.0.0.1', 'KV951649161025QD10018140771275XO', '2022-04-05 14:17:05', '2022-04-05 14:17:05'),
(233, 'Komputer-Tomka', '127.0.0.1', 'EX291649161056YX79156670300320FF', '2022-04-05 14:17:36', '2022-04-05 14:17:36'),
(234, 'Komputer-Tomka', '127.0.0.1', 'VM191649161340IF953298322680RD', '2022-04-05 14:22:20', '2022-04-05 14:22:20'),
(235, 'Komputer-Tomka', '127.0.0.1', 'XZ241649161441LH6337930713143KA', '2022-04-05 14:24:01', '2022-04-05 14:24:01'),
(236, 'Komputer-Tomka', '127.0.0.1', 'MX381649161508VN29131932920640DO', '2022-04-05 14:25:08', '2022-04-05 14:25:08'),
(237, 'Komputer-Tomka', '127.0.0.1', 'MH371649161537OI96164916153700XA', '2022-04-05 14:25:37', '2022-04-05 14:25:37'),
(238, 'Komputer-Tomka', '127.0.0.1', 'IH181649161588ZR86145126219744BB', '2022-04-05 14:26:28', '2022-04-05 14:26:28'),
(239, 'Komputer-Tomka', '127.0.0.1', 'GN621649169815HH3341229245375ZJ', '2022-04-05 16:43:35', '2022-04-05 16:43:35'),
(240, 'Dedal', '127.0.0.1', 'ZI171649169974AR11126986087998SP', '2022-04-05 16:46:14', '2022-04-05 16:46:14'),
(241, 'DESKTOP-2KPJSHU', '127.0.0.1', 'FS891649169987IY73115441899090FF', '2022-04-05 16:46:27', '2022-04-05 16:46:27'),
(242, 'DESKTOP-2KPJSHU', '127.0.0.1', 'MN211649170176SC14163267847424EC', '2022-04-05 16:49:36', '2022-04-05 16:49:36'),
(243, 'DESKTOP-2KPJSHU', '127.0.0.1', 'SM831649170227WW1190704362485EX', '2022-04-05 16:50:27', '2022-04-05 16:50:27'),
(244, 'DESKTOP-2KPJSHU', '127.0.0.1', 'NX191649170292TD83117091090732EO', '2022-04-05 16:51:32', '2022-04-05 16:51:32'),
(245, 'DESKTOP-2KPJSHU', '127.0.0.1', 'KO291649170349GF9282458517450PV', '2022-04-05 16:52:29', '2022-04-05 16:52:29'),
(246, 'DESKTOP-2KPJSHU', '127.0.0.1', 'WN641649170417TC43120389440441WA', '2022-04-05 16:53:37', '2022-04-05 16:53:37'),
(247, 'DESKTOP-2KPJSHU', '127.0.0.1', 'MZ841649170509XL6851124285779TB', '2022-04-05 16:55:09', '2022-04-05 16:55:09'),
(248, 'DESKTOP-2KPJSHU', '127.0.0.1', 'LU381649170549NZ63118740279528SL', '2022-04-05 16:55:49', '2022-04-05 16:55:49'),
(249, 'DESKTOP-2KPJSHU', '127.0.0.1', 'SO491649170653QM18108845263098MH', '2022-04-05 16:57:33', '2022-04-05 16:57:33'),
(250, 'DESKTOP-2KPJSHU', '127.0.0.1', 'FF551649170664FA2584107703864RU', '2022-04-05 16:57:44', '2022-04-05 16:57:44'),
(251, 'DESKTOP-2KPJSHU', '127.0.0.1', 'KH241649170741IH31156671220395OU', '2022-04-05 16:59:01', '2022-04-05 16:59:01'),
(252, 'DESKTOP-2KPJSHU', '127.0.0.1', 'UD701649170842IW94947512526BX', '2022-04-05 17:00:42', '2022-04-05 17:00:42'),
(253, 'DESKTOP-2KPJSHU', '127.0.0.1', 'LR331649171185PY6659370162660HS', '2022-04-05 17:06:25', '2022-04-05 17:06:25'),
(254, 'DESKTOP-2KPJSHU', '127.0.0.1', 'QL271649171287KA41146776244543WC', '2022-04-05 17:08:07', '2022-04-05 17:08:07'),
(255, 'DESKTOP-2KPJSHU', '127.0.0.1', 'ZY81649171412ES54141828741432GV', '2022-04-05 17:10:12', '2022-04-05 17:10:12'),
(256, 'DESKTOP-2KPJSHU', '127.0.0.1', 'EN241649172716DX3437930972468MJ', '2022-04-05 17:31:56', '2022-04-05 17:31:56'),
(257, 'Dedal', '127.0.0.1', 'CA131649172726AQ7872563599944MK', '2022-04-05 17:32:06', '2022-04-05 17:32:06'),
(258, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PT131649172744GQ5387406155432PA', '2022-04-05 17:32:24', '2022-04-05 17:32:24'),
(259, 'DESKTOP-2KPJSHU', '127.0.0.1', 'WS241649172832DE209895036992CM', '2022-04-05 17:33:52', '2022-04-05 17:33:52'),
(260, 'DESKTOP-2KPJSHU', '127.0.0.1', 'TD631649173131SA8062668578978LV', '2022-04-05 17:38:51', '2022-04-05 17:38:51'),
(261, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PS541649173205DZ48138530549220BV', '2022-04-05 17:40:05', '2022-04-05 17:40:05'),
(262, 'DESKTOP-2KPJSHU', '127.0.0.1', 'TR91649173756YK2236281822632OP', '2022-04-05 17:49:16', '2022-04-05 17:49:16'),
(263, 'DESKTOP-2KPJSHU', '127.0.0.1', 'CE211649173768GR94130284727672KQ', '2022-04-05 17:49:28', '2022-04-05 17:49:28'),
(264, 'DESKTOP-2KPJSHU', '127.0.0.1', 'VT1001649173854YB5669265301868HJ', '2022-04-05 17:50:54', '2022-04-05 17:50:54'),
(265, 'DESKTOP-2KPJSHU', '127.0.0.1', 'SY671649174717QQ6644527717359OU', '2022-04-05 18:05:17', '2022-04-05 18:05:17'),
(266, 'DESKTOP-2KPJSHU', '127.0.0.1', 'EQ81649174951RB7534632673971MZ', '2022-04-05 18:09:11', '2022-04-05 18:09:11'),
(267, 'DESKTOP-2KPJSHU', '127.0.0.1', 'CK221649175013XP3557721125455XF', '2022-04-05 18:10:13', '2022-04-05 18:10:13'),
(268, 'DESKTOP-2KPJSHU', '127.0.0.1', 'NX71649175035PL8080809576715BK', '2022-04-05 18:10:35', '2022-04-05 18:10:35'),
(269, 'DESKTOP-2KPJSHU', '127.0.0.1', 'SO871649183410NI10074213253450NQ', '2022-04-05 20:30:10', '2022-04-05 20:30:10'),
(270, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RE901649195812KJ6944528286924VY', '2022-04-05 23:56:52', '2022-04-05 23:56:52'),
(271, 'DESKTOP-2KPJSHU', '127.0.0.1', 'VE501649195822AY1516491958220IZ', '2022-04-05 23:57:02', '2022-04-05 23:57:02'),
(272, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PX211649195888WJ4859371051968VJ', '2022-04-05 23:58:08', '2022-04-05 23:58:08'),
(273, 'DESKTOP-2KPJSHU', '127.0.0.1', 'OM751649196014AP4634633116294RZ', '2022-04-06 00:00:14', '2022-04-06 00:00:14'),
(274, 'DESKTOP-2KPJSHU', '127.0.0.1', 'KF11649196035YE71105548546240FB', '2022-04-06 00:00:35', '2022-04-06 00:00:35'),
(275, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RL561649196097OJ1079161412656OV', '2022-04-06 00:01:37', '2022-04-06 00:01:37'),
(276, 'Komputer-Tomka', '127.0.0.1', 'ED281649219002WX6528036723034SY', '2022-04-06 06:23:22', '2022-04-06 06:23:22'),
(277, 'Komputer-Tomka', '127.0.0.1', 'SX51649219189HC7692356274584EI', '2022-04-06 06:26:29', '2022-04-06 06:26:29'),
(278, 'Komputer-Tomka', '127.0.0.1', 'FS931649219279TS59135235980878WT', '2022-04-06 06:27:59', '2022-04-06 06:27:59'),
(279, 'Komputer-Tomka', '127.0.0.1', 'JE741649219369MK970916432867BW', '2022-04-06 06:29:29', '2022-04-06 06:29:29'),
(280, 'Komputer-Tomka', '127.0.0.1', 'YS501649221123KC3018141432353ZW', '2022-04-06 06:58:43', '2022-04-06 06:58:43'),
(281, 'Komputer-Tomka', '127.0.0.1', 'LF751649221216LP475864175936NZ', '2022-04-06 07:00:16', '2022-04-06 07:00:16'),
(282, 'Komputer-Tomka', '127.0.0.1', 'AK211649221316MA9332984426320HN', '2022-04-06 07:01:56', '2022-04-06 07:01:56'),
(283, 'Komputer-Tomka', '127.0.0.1', 'CN311649221464MA236596885856KA', '2022-04-06 07:04:24', '2022-04-06 07:04:24'),
(284, 'Komputer-Tomka', '127.0.0.1', 'ON661649221518NR99141833050548FA', '2022-04-06 07:05:18', '2022-04-06 07:05:18'),
(285, 'Komputer-Tomka', '127.0.0.1', 'PA151649221967UC65130288535393GA', '2022-04-06 07:12:47', '2022-04-06 07:12:47'),
(286, 'Komputer-Tomka', '127.0.0.1', 'LB761649221998MY63143482313826PK', '2022-04-06 07:13:18', '2022-04-06 07:13:18'),
(287, 'Komputer-Tomka', '127.0.0.1', 'WO231649222028XR16156676092660LO', '2022-04-06 07:13:48', '2022-04-06 07:13:48'),
(288, 'Komputer-Tomka', '127.0.0.1', 'GY731649222737DZ9529686009266KU', '2022-04-06 07:25:37', '2022-04-06 07:25:37'),
(289, 'Komputer-Tomka', '127.0.0.1', 'HI171649225475HG398953528500NK', '2022-04-06 08:11:15', '2022-04-06 08:11:15'),
(290, 'Komputer-Tomka', '127.0.0.1', 'ET591649225731XH9094005866667VM', '2022-04-06 08:15:31', '2022-04-06 08:15:31'),
(291, 'Komputer-Tomka', '127.0.0.1', 'BE311649235847NL1546178603716SX', '2022-04-06 11:04:07', '2022-04-06 11:04:07'),
(292, 'Komputer-Tomka', '127.0.0.1', 'YV281649235856LV9389058736224VC', '2022-04-06 11:04:16', '2022-04-06 11:04:16'),
(293, 'Komputer-Tomka', '127.0.0.1', 'FM51649236217YN5651126322727YC', '2022-04-06 11:10:17', '2022-04-06 11:10:17'),
(294, 'Komputer-Tomka', '127.0.0.1', 'UM91649236224QN5490707992320QZ', '2022-04-06 11:10:24', '2022-04-06 11:10:24'),
(295, 'Komputer-Tomka', '127.0.0.1', 'XN221649236459PZ4718141601049XT', '2022-04-06 11:14:19', '2022-04-06 11:14:19'),
(296, 'Komputer-Tomka', '127.0.0.1', 'FZ21649236539RG4995655719262PL', '2022-04-06 11:15:39', '2022-04-06 11:15:39'),
(297, 'Komputer-Tomka', '127.0.0.1', 'MT241649236660OY87145132826080CJ', '2022-04-06 11:17:40', '2022-04-06 11:17:40'),
(298, 'Komputer-Tomka', '127.0.0.1', 'GH961649236879BR65163274451021CD', '2022-04-06 11:21:19', '2022-04-06 11:21:19'),
(299, 'Dedal', '127.0.0.1', 'WV891649244083ZQ5232984881660UU', '2022-04-06 13:21:23', '2022-04-06 13:21:23'),
(300, 'Komputer-Tomka', '127.0.0.1', 'TA961649244117UY6536283370574KE', '2022-04-06 13:21:57', '2022-04-06 13:21:57'),
(301, 'Komputer-Tomka', '127.0.0.1', 'FI481649244338TQ7397305415942UJ', '2022-04-06 13:25:38', '2022-04-06 13:25:38'),
(302, 'Komputer-Tomka', '127.0.0.1', 'XQ931649244549MB1152775825568YZ', '2022-04-06 13:29:09', '2022-04-06 13:29:09'),
(303, 'Komputer-Tomka', '127.0.0.1', 'AM881649245245MP19117096412395NR', '2022-04-06 13:40:45', '2022-04-06 13:40:45'),
(304, 'Komputer-Tomka', '127.0.0.1', 'EJ251649245395VX9170917551985DT', '2022-04-06 13:43:15', '2022-04-06 13:43:15'),
(305, 'Komputer-Tomka', '127.0.0.1', 'YG901649245900YW54112148721200PM', '2022-04-06 13:51:40', '2022-04-06 13:51:40'),
(306, 'Komputer-Tomka', '127.0.0.1', 'PD171649245954FB989895475724VH', '2022-04-06 13:52:34', '2022-04-06 13:52:34'),
(307, 'Komputer-Tomka', '127.0.0.1', 'VM811649245958OS71128641184724PP', '2022-04-06 13:52:38', '2022-04-06 13:52:38'),
(308, 'Komputer-Tomka', '127.0.0.1', 'PD331649246120NA4372566829280VE', '2022-04-06 13:55:20', '2022-04-06 13:55:20'),
(309, 'Komputer-Tomka', '127.0.0.1', 'FR31649246242CH22163275377958XK', '2022-04-06 13:57:22', '2022-04-06 13:57:22'),
(310, 'Komputer-Tomka', '127.0.0.1', 'LE711649246542GJ7141231163550PO', '2022-04-06 14:02:22', '2022-04-06 14:02:22'),
(311, 'Komputer-Tomka', '127.0.0.1', 'GW841649246685OH2129686440330ZC', '2022-04-06 14:04:45', '2022-04-06 14:04:45'),
(312, 'Komputer-Tomka', '127.0.0.1', 'RL441649246737VY5218141714107PF', '2022-04-06 14:05:37', '2022-04-06 14:05:37'),
(313, 'Komputer-Tomka', '127.0.0.1', 'IM461649248253SQ37143484598011VA', '2022-04-06 14:30:53', '2022-04-06 14:30:53'),
(314, 'Komputer-Tomka', '127.0.0.1', 'CT951649313160KV99107205355400PJ', '2022-04-07 08:32:40', '2022-04-07 08:32:40'),
(315, 'Komputer-Tomka', '127.0.0.1', 'AH911649313170KD899895879020DF', '2022-04-07 08:32:50', '2022-04-07 08:32:50'),
(316, 'Komputer-Tomka', '127.0.0.1', 'LK511649313959JC1079167070032XE', '2022-04-07 08:45:59', '2022-04-07 08:45:59'),
(317, 'Komputer-Tomka', '127.0.0.1', 'MZ61649316537SE99128646689886TV', '2022-04-07 09:28:57', '2022-04-07 09:28:57'),
(318, 'Komputer-Tomka', '127.0.0.1', 'PU621649316590CR51143490543330CL', '2022-04-07 09:29:50', '2022-04-07 09:29:50'),
(319, 'Komputer-Tomka', '127.0.0.1', 'XK331649334034SQ100143492060958BR', '2022-04-07 14:20:34', '2022-04-07 14:20:34'),
(320, 'Komputer-Tomka', '127.0.0.1', 'HY591649334040SV88136894725320MI', '2022-04-07 14:20:40', '2022-04-07 14:20:40'),
(321, 'Dedal', '127.0.0.1', 'LG511649334065RP2177518701055QI', '2022-04-07 14:21:05', '2022-04-07 14:21:05'),
(322, 'Dedal', '127.0.0.1', 'LA801649334122AK1256077360148SC', '2022-04-07 14:22:02', '2022-04-07 14:22:02'),
(323, 'Komputer-Tomka', '127.0.0.1', 'EY31649334140TI76112154721520KT', '2022-04-07 14:22:20', '2022-04-07 14:22:20'),
(324, 'DESKTOP-2KPJSHU', '127.0.0.1', 'VV541649342736WT7656077653024DK', '2022-04-07 16:45:36', '2022-04-07 16:45:36'),
(325, 'DESKTOP-2KPJSHU', '127.0.0.1', 'BG471649343035BZ4521441459455NZ', '2022-04-07 16:50:35', '2022-04-07 16:50:35'),
(326, 'DESKTOP-2KPJSHU', '127.0.0.1', 'XZ631649344119IF2762675076522ZN', '2022-04-07 17:08:39', '2022-04-07 17:08:39'),
(327, 'Dedal', '127.0.0.1', 'XL991649344120GA4313194752960QQ', '2022-04-07 17:08:40', '2022-04-07 17:08:40'),
(328, 'DESKTOP-2KPJSHU', '127.0.0.1', 'IX811649344351OX5128648859378OD', '2022-04-07 17:12:31', '2022-04-07 17:12:31'),
(329, 'DESKTOP-2KPJSHU', '127.0.0.1', 'HW211649347896FT93103908917448YY', '2022-04-07 18:11:36', '2022-04-07 18:11:36'),
(330, 'DESKTOP-2KPJSHU', '127.0.0.1', 'DN861649347904GA5272571307776LA', '2022-04-07 18:11:44', '2022-04-07 18:11:44'),
(331, 'DESKTOP-2KPJSHU', '127.0.0.1', 'OP291649347987QM5114844131883WE', '2022-04-07 18:13:07', '2022-04-07 18:13:07'),
(332, 'DESKTOP-2KPJSHU', '127.0.0.1', 'JM661649348067EI82145142629896DB', '2022-04-07 18:14:27', '2022-04-07 18:14:27'),
(333, 'DESKTOP-2KPJSHU', '127.0.0.1', 'OF621649348233OS1877519366951SC', '2022-04-07 18:17:13', '2022-04-07 18:17:13'),
(334, 'DESKTOP-2KPJSHU', '127.0.0.1', 'DN161649348522FH8989064820188GL', '2022-04-07 18:22:02', '2022-04-07 18:22:02'),
(335, 'DESKTOP-2KPJSHU', '127.0.0.1', 'CE691649348531DR34131947882480DK', '2022-04-07 18:22:11', '2022-04-07 18:22:11'),
(336, 'DESKTOP-2KPJSHU', '127.0.0.1', 'UC71649348583RR77148441372470XF', '2022-04-07 18:23:03', '2022-04-07 18:23:03'),
(337, 'DESKTOP-2KPJSHU', '127.0.0.1', 'OU491649348693JT4095662224194SV', '2022-04-07 18:24:53', '2022-04-07 18:24:53'),
(338, 'Dedal', '127.0.0.1', 'AZ971649348859ZA50103908978117DQ', '2022-04-07 18:27:39', '2022-04-07 18:27:39'),
(339, 'DESKTOP-2KPJSHU', '127.0.0.1', 'LB401649348998QA56123701174850RU', '2022-04-07 18:29:58', '2022-04-07 18:29:58'),
(340, 'DESKTOP-2KPJSHU', '127.0.0.1', 'AN631649350798VW94141844168628BI', '2022-04-07 18:59:58', '2022-04-07 18:59:58'),
(341, 'Dedal', '127.0.0.1', 'VG921649351114WC2138545493576HY', '2022-04-07 19:05:14', '2022-04-07 19:05:14'),
(342, 'Dedal', '127.0.0.1', 'DH651649351421HE18156688384995GO', '2022-04-07 19:10:21', '2022-04-07 19:10:21'),
(343, 'DESKTOP-2KPJSHU', '127.0.0.1', 'QU441649352777MK9714844174993LL', '2022-04-07 19:32:57', '2022-04-07 19:32:57'),
(344, 'DESKTOP-2KPJSHU', '127.0.0.1', 'DK291649352787GX5889065050498LG', '2022-04-07 19:33:07', '2022-04-07 19:33:07'),
(345, 'DESKTOP-2KPJSHU', '127.0.0.1', 'OC851649352890DT6731337704910IF', '2022-04-07 19:34:50', '2022-04-07 19:34:50'),
(346, 'DESKTOP-2KPJSHU', '127.0.0.1', 'OY551649353009CR474220885405EG', '2022-04-07 19:36:49', '2022-04-07 19:36:49'),
(347, 'DESKTOP-2KPJSHU', '127.0.0.1', 'FI901649353484VU5182467674200UY', '2022-04-07 19:44:44', '2022-04-07 19:44:44'),
(348, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RF811649354070YK6387415765710PI', '2022-04-07 19:54:30', '2022-04-07 19:54:30'),
(349, 'Dedal', '127.0.0.1', 'OC161649354436CA447831278644CQ', '2022-04-07 20:00:36', '2022-04-07 20:00:36'),
(350, 'DESKTOP-2KPJSHU', '127.0.0.1', 'EY941649355759FY72131948460720PA', '2022-04-07 20:22:39', '2022-04-07 20:22:39'),
(351, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RP921649357537AZ6572571731628LX', '2022-04-07 20:52:17', '2022-04-07 20:52:17'),
(352, 'DESKTOP-2KPJSHU', '127.0.0.1', 'NG741649357549KR6107208240685EK', '2022-04-07 20:52:29', '2022-04-07 20:52:29'),
(353, 'DESKTOP-2KPJSHU', '127.0.0.1', 'JG741649357815HX5485766606380ZC', '2022-04-07 20:56:55', '2022-04-07 20:56:55'),
(354, 'DESKTOP-2KPJSHU', '127.0.0.1', 'LL811649358173KI8851130103363FU', '2022-04-07 21:02:53', '2022-04-07 21:02:53'),
(355, 'DESKTOP-2KPJSHU', '127.0.0.1', 'YV151649358269MI2329688448842QM', '2022-04-07 21:04:29', '2022-04-07 21:04:29'),
(356, 'DESKTOP-2KPJSHU', '127.0.0.1', 'AG101649358454JS957727545890XK', '2022-04-07 21:07:34', '2022-04-07 21:07:34'),
(357, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PE851649358507MG3616493585070CL', '2022-04-07 21:08:27', '2022-04-07 21:08:27'),
(358, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PW201649358696ZO1865974347840BL', '2022-04-07 21:11:36', '2022-04-07 21:11:36'),
(359, 'DESKTOP-2KPJSHU', '127.0.0.1', 'LG121649362090GT98125351518840RS', '2022-04-07 22:08:10', '2022-04-07 22:08:10'),
(360, 'DESKTOP-2KPJSHU', '127.0.0.1', 'II631649363059LW3187416242127DC', '2022-04-07 22:24:19', '2022-04-07 22:24:19'),
(361, 'DESKTOP-2KPJSHU', '127.0.0.1', 'OU291649363838ZW8432987276760HS', '2022-04-07 22:37:18', '2022-04-07 22:37:18'),
(362, 'DESKTOP-2KPJSHU', '127.0.0.1', 'BF771649364121SS75127001037317GJ', '2022-04-07 22:42:01', '2022-04-07 22:42:01'),
(363, 'DESKTOP-2KPJSHU', '127.0.0.1', 'MZ651649364134DX3572572021896BV', '2022-04-07 22:42:14', '2022-04-07 22:42:14'),
(364, 'DESKTOP-2KPJSHU', '127.0.0.1', 'XJ851649364223QK95159988329631PN', '2022-04-07 22:43:43', '2022-04-07 22:43:43'),
(365, 'DESKTOP-2KPJSHU', '127.0.0.1', 'IF981649364905QI61159988395785DM', '2022-04-07 22:55:05', '2022-04-07 22:55:05'),
(366, 'DESKTOP-2KPJSHU', '127.0.0.1', 'SC951649364966FQ7789065708164FY', '2022-04-07 22:56:06', '2022-04-07 22:56:06'),
(367, 'DESKTOP-2KPJSHU', '127.0.0.1', 'LD141649365599RA2497312570341VZ', '2022-04-07 23:06:39', '2022-04-07 23:06:39'),
(368, 'DESKTOP-2KPJSHU', '127.0.0.1', 'DS731649365663OW5357727798205ZL', '2022-04-07 23:07:43', '2022-04-07 23:07:43'),
(369, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PH621649365685XF8762675896030MJ', '2022-04-07 23:08:05', '2022-04-07 23:08:05'),
(370, 'DESKTOP-2KPJSHU', '127.0.0.1', 'EG881649365759GS3695663214022QX', '2022-04-07 23:09:19', '2022-04-07 23:09:19'),
(371, 'DESKTOP-2KPJSHU', '127.0.0.1', 'YC791649365842MX8967623999522ER', '2022-04-07 23:10:42', '2022-04-07 23:10:42'),
(372, 'DESKTOP-2KPJSHU', '127.0.0.1', 'ND91649365885VQ4390715123675GV', '2022-04-07 23:11:25', '2022-04-07 23:11:25'),
(373, 'Komputer-Tomka', '127.0.0.1', 'AQ821649394528XZ83146796112992UW', '2022-04-08 07:08:48', '2022-04-08 07:08:48'),
(374, 'Komputer-Tomka', '127.0.0.1', 'WT491649395035WR17138549182940SV', '2022-04-08 07:17:15', '2022-04-08 07:17:15'),
(375, 'Komputer-Tomka', '127.0.0.1', 'AB571649395254RP27128652829812OB', '2022-04-08 07:20:54', '2022-04-08 07:20:54'),
(376, 'Komputer-Tomka', '127.0.0.1', 'FO11649395329RU12156692556255OD', '2022-04-08 07:22:09', '2022-04-08 07:22:09'),
(377, 'Komputer-Tomka', '127.0.0.1', 'MD431649395493VG1828039723381OJ', '2022-04-08 07:24:53', '2022-04-08 07:24:53'),
(378, 'Komputer-Tomka', '127.0.0.1', 'TB121649395758EZ2739585498192IC', '2022-04-08 07:29:18', '2022-04-08 07:29:18'),
(379, 'Komputer-Tomka', '127.0.0.1', 'QX131649396044NX22113808327036JB', '2022-04-08 07:34:04', '2022-04-08 07:34:04'),
(380, 'Komputer-Tomka', '127.0.0.1', 'CC901649396364QI79143497483668TB', '2022-04-08 07:39:24', '2022-04-08 07:39:24'),
(381, 'Komputer-Tomka', '127.0.0.1', 'EH31649396982SI8514844572838US', '2022-04-08 07:49:42', '2022-04-08 07:49:42'),
(382, 'Dedal', '127.0.0.1', 'NW401649404230TO5121442254990RY', '2022-04-08 09:50:30', '2022-04-08 09:50:30'),
(383, 'Komputer-Tomka', '127.0.0.1', 'HU481649405110EI9619792861320WB', '2022-04-08 10:05:10', '2022-04-08 10:05:10'),
(384, 'Komputer-Tomka', '127.0.0.1', 'FZ361649407251KU4539585774024YC', '2022-04-08 10:40:51', '2022-04-08 10:40:51'),
(385, 'Komputer-Tomka', '127.0.0.1', 'GP411649407603YT92138550238652SW', '2022-04-08 10:46:43', '2022-04-08 10:46:43'),
(386, 'Komputer-Tomka', '127.0.0.1', 'TK531649415313BK6150096793483FB', '2022-04-08 12:55:13', '2022-04-08 12:55:13'),
(387, 'Komputer-Tomka', '127.0.0.1', 'MD101649415714HD7462677797132PT', '2022-04-08 13:01:54', '2022-04-08 13:01:54'),
(388, 'Komputer-Tomka', '127.0.0.1', 'PV621649415729PC5621442404477DY', '2022-04-08 13:02:09', '2022-04-08 13:02:09'),
(389, 'Komputer-Tomka', '127.0.0.1', 'RC741649420635CD166597682540SD', '2022-04-08 14:23:55', '2022-04-08 14:23:55'),
(390, 'Komputer-Tomka', '127.0.0.1', 'FQ991649420997DK831649420997NP', '2022-04-08 14:29:57', '2022-04-08 14:29:57'),
(391, 'DESKTOP-2KPJSHU', '127.0.0.1', 'OJ381649430941AQ3032988618820UG', '2022-04-08 17:15:41', '2022-04-08 17:15:41'),
(392, 'DESKTOP-2KPJSHU', '127.0.0.1', 'CQ651649431358RM1639586352592HJ', '2022-04-08 17:22:38', '2022-04-08 17:22:38'),
(393, 'Dedal', '127.0.0.1', 'FZ541649432023ZU6272575009012MI', '2022-04-08 17:33:43', '2022-04-08 17:33:43'),
(394, 'DESKTOP-2KPJSHU', '127.0.0.1', 'XN511649432727RO1089069367258ZX', '2022-04-08 17:45:27', '2022-04-08 17:45:27'),
(395, 'DESKTOP-2KPJSHU', '127.0.0.1', 'TS331649432987QH9895667113246MF', '2022-04-08 17:49:47', '2022-04-08 17:49:47'),
(396, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PH231649433137US6095667121946BF', '2022-04-08 17:52:17', '2022-04-08 17:52:17'),
(397, 'DESKTOP-2KPJSHU', '127.0.0.1', 'WY971649433164XG9982471658200YI', '2022-04-08 17:52:44', '2022-04-08 17:52:44'),
(398, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PI331649433313VU8041235832825LV', '2022-04-08 17:55:13', '2022-04-08 17:55:13'),
(399, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RH371649433575BR2875873944450VE', '2022-04-08 17:59:35', '2022-04-08 17:59:35'),
(400, 'DESKTOP-2KPJSHU', '127.0.0.1', 'GO291649433772YW9659379615792ZT', '2022-04-08 18:02:52', '2022-04-08 18:02:52'),
(401, 'DESKTOP-2KPJSHU', '127.0.0.1', 'DZ1001649434094ZC4441235852350PI', '2022-04-08 18:08:14', '2022-04-08 18:08:14'),
(402, 'DESKTOP-2KPJSHU', '127.0.0.1', 'IV781649434105UG46140201898925ZH', '2022-04-08 18:08:25', '2022-04-08 18:08:25'),
(403, 'DESKTOP-2KPJSHU', '127.0.0.1', 'XX701649434212IB80107213223780TI', '2022-04-08 18:10:12', '2022-04-08 18:10:12'),
(404, 'DESKTOP-2KPJSHU', '127.0.0.1', 'KW641649434331XP3692368322536NR', '2022-04-08 18:12:11', '2022-04-08 18:12:11'),
(405, 'DESKTOP-2KPJSHU', '127.0.0.1', 'OP411649434478ML3946184165384JM', '2022-04-08 18:14:38', '2022-04-08 18:14:38'),
(406, 'DESKTOP-2KPJSHU', '127.0.0.1', 'EX831649434537YH619793214444UP', '2022-04-08 18:15:37', '2022-04-08 18:15:37'),
(407, 'DESKTOP-2KPJSHU', '127.0.0.1', 'XY651649435046DC95146799719094BF', '2022-04-08 18:24:06', '2022-04-08 18:24:06'),
(408, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RH261649435386NG47122058218564LX', '2022-04-08 18:29:46', '2022-04-08 18:29:46'),
(409, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RI781649435633YV1431339277027UD', '2022-04-08 18:33:53', '2022-04-08 18:33:53'),
(410, 'DESKTOP-2KPJSHU', '127.0.0.1', 'QJ331649436238EG4926390979808FC', '2022-04-08 18:43:58', '2022-04-08 18:43:58'),
(411, 'DESKTOP-2KPJSHU', '127.0.0.1', 'WW721649436326BA86117109979146DT', '2022-04-08 18:45:26', '2022-04-08 18:45:26'),
(412, 'DESKTOP-2KPJSHU', '127.0.0.1', 'WQ991649437202YE9237937055646RB', '2022-04-08 19:00:02', '2022-04-08 19:00:02'),
(413, 'DESKTOP-2KPJSHU', '127.0.0.1', 'YR361649437922HS13159995478434RT', '2022-04-08 19:12:02', '2022-04-08 19:12:02'),
(414, 'DESKTOP-2KPJSHU', '127.0.0.1', 'IX921649438284UO7175874161064IN', '2022-04-08 19:18:04', '2022-04-08 19:18:04'),
(415, 'DESKTOP-2KPJSHU', '127.0.0.1', 'OJ781649438379IS21649438379PE', '2022-04-08 19:19:39', '2022-04-08 19:19:39'),
(416, 'DESKTOP-2KPJSHU', '127.0.0.1', 'OC751649438459ER9159995530523PV', '2022-04-08 19:20:59', '2022-04-08 19:20:59'),
(417, 'DESKTOP-2KPJSHU', '127.0.0.1', 'ZL531649438603VB82127006772431FO', '2022-04-08 19:23:23', '2022-04-08 19:23:23'),
(418, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RD181649438857HF3064328115423MQ', '2022-04-08 19:27:37', '2022-04-08 19:27:37'),
(419, 'DESKTOP-2KPJSHU', '127.0.0.1', 'KY501649439083JV1514844951747VB', '2022-04-08 19:31:23', '2022-04-08 19:31:23'),
(420, 'DESKTOP-2KPJSHU', '127.0.0.1', 'QK861649439365NW5526391029840XD', '2022-04-08 19:36:05', '2022-04-08 19:36:05'),
(421, 'DESKTOP-2KPJSHU', '127.0.0.1', 'QZ731649439870JW7744534876490XV', '2022-04-08 19:44:30', '2022-04-08 19:44:30'),
(422, 'DESKTOP-2KPJSHU', '127.0.0.1', 'NV451649440202DV9259379847272IM', '2022-04-08 19:50:02', '2022-04-08 19:50:02'),
(423, 'DESKTOP-2KPJSHU', '127.0.0.1', 'QU251649440846TU26108863095836LL', '2022-04-08 20:00:46', '2022-04-08 20:00:46'),
(424, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RH461649441241VE41110512563147DU', '2022-04-08 20:07:21', '2022-04-08 20:07:21'),
(425, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RB251649441293MQ29112162007924QF', '2022-04-08 20:08:13', '2022-04-08 20:08:13'),
(426, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PQ11649441299LX74153398040807QO', '2022-04-08 20:08:19', '2022-04-08 20:08:19'),
(427, 'DESKTOP-2KPJSHU', '127.0.0.1', 'YI201649441311LW2130305863569ME', '2022-04-08 20:08:31', '2022-04-08 20:08:31');
INSERT INTO `komputery` (`id`, `nazwa`, `nrip`, `hostid`, `czasrejestracja`, `czaszmiana`) VALUES
(428, 'DESKTOP-2KPJSHU', '127.0.0.1', 'YO511649451883TN72163295736417RD', '2022-04-08 23:04:43', '2022-04-08 23:04:43'),
(429, 'DESKTOP-2KPJSHU', '127.0.0.1', 'CC971649451889HG11158347381344KA', '2022-04-08 23:04:49', '2022-04-08 23:04:49'),
(430, 'DESKTOP-2KPJSHU', '127.0.0.1', 'DG11649452258QZ85135255085156CW', '2022-04-08 23:10:58', '2022-04-08 23:10:58'),
(431, 'DESKTOP-2KPJSHU', '127.0.0.1', 'NG961649452335ES528247261675JD', '2022-04-08 23:12:15', '2022-04-08 23:12:15'),
(432, 'DESKTOP-2KPJSHU', '127.0.0.1', 'HD871649481482IT34138556444488RV', '2022-04-09 07:18:01', '2022-04-09 07:18:01'),
(433, 'DESKTOP-2KPJSHU', '127.0.0.1', 'QQ571649481494VV8121443259422HD', '2022-04-09 07:18:14', '2022-04-09 07:18:14'),
(434, 'Dedal', '127.0.0.1', 'SQ911649482049CX27146803902361DD', '2022-04-09 07:27:29', '2022-04-09 07:27:29'),
(435, 'DESKTOP-2KPJSHU', '127.0.0.1', 'MZ731649486712RV3105567149568ZQ', '2022-04-09 08:45:12', '2022-04-09 08:45:12'),
(436, 'DESKTOP-2KPJSHU', '127.0.0.1', 'OR441649505496VK21117114890216PE', '2022-04-09 13:58:16', '2022-04-09 13:58:16'),
(437, 'DESKTOP-2KPJSHU', '127.0.0.1', 'BZ831649506385AK79146806068265ZT', '2022-04-09 14:13:05', '2022-04-09 14:13:05'),
(438, 'DESKTOP-2KPJSHU', '127.0.0.1', 'ZC341649506489HM7418144571379DJ', '2022-04-09 14:14:49', '2022-04-09 14:14:49'),
(439, 'DESKTOP-2KPJSHU', '127.0.0.1', 'OQ711649512227CY6054433903491NA', '2022-04-09 15:50:27', '2022-04-09 15:50:27'),
(440, 'DESKTOP-2KPJSHU', '127.0.0.1', 'OE81649512239XP51649512239YB', '2022-04-09 15:50:39', '2022-04-09 15:50:39'),
(441, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RH281649512571IE1541237814275NO', '2022-04-09 15:56:11', '2022-04-09 15:56:11'),
(442, 'DESKTOP-2KPJSHU', '127.0.0.1', 'QH901649513032LH3375877599472MF', '2022-04-09 16:03:52', '2022-04-09 16:03:52'),
(443, 'DESKTOP-2KPJSHU', '127.0.0.1', 'XV181649513587CC5834639785327UV', '2022-04-09 16:13:07', '2022-04-09 16:13:07'),
(444, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RO101649513741DH1459382494676UA', '2022-04-09 16:15:41', '2022-04-09 16:15:41'),
(445, 'DESKTOP-2KPJSHU', '127.0.0.1', 'YE31649513883BP95122064027342XF', '2022-04-09 16:18:03', '2022-04-09 16:18:03'),
(446, 'DESKTOP-2KPJSHU', '127.0.0.1', 'JI891649514009NV2523093196126RD', '2022-04-09 16:20:09', '2022-04-09 16:20:09'),
(447, 'DESKTOP-2KPJSHU', '127.0.0.1', 'GF231649514252BD4365980570080MO', '2022-04-09 16:24:12', '2022-04-09 16:24:12'),
(448, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PE371649514529QG9716495145290JS', '2022-04-09 16:28:49', '2022-04-09 16:28:49'),
(449, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PR931649514706ZY6829691264708KZ', '2022-04-09 16:31:46', '2022-04-09 16:31:46'),
(450, 'Dedal', '127.0.0.1', 'VA721649515191DW1359382546876MH', '2022-04-09 16:39:51', '2022-04-09 16:39:51'),
(451, 'DESKTOP-2KPJSHU', '127.0.0.1', 'WQ711649516715MA798971002900IL', '2022-04-09 17:05:15', '2022-04-09 17:05:15'),
(452, 'DESKTOP-2KPJSHU', '127.0.0.1', 'NE31649516723UW28136909888009UV', '2022-04-09 17:05:23', '2022-04-09 17:05:23'),
(453, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RC581649518669XB1841237966725XL', '2022-04-09 17:37:49', '2022-04-09 17:37:49'),
(454, 'DESKTOP-2KPJSHU', '127.0.0.1', 'NN391649518790QV17146807172310CK', '2022-04-09 17:39:50', '2022-04-09 17:39:50'),
(455, 'DESKTOP-2KPJSHU', '127.0.0.1', 'IB781649519616VW64150106285056UY', '2022-04-09 17:53:36', '2022-04-09 17:53:36'),
(456, 'Dedal', '127.0.0.1', 'IU771649519807XK16145157743016FJ', '2022-04-09 17:56:47', '2022-04-09 17:56:47'),
(457, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PX931649519841IH146186555548VN', '2022-04-09 17:57:21', '2022-04-09 17:57:21'),
(458, 'DESKTOP-2KPJSHU', '127.0.0.1', 'CJ511649520349ZA4280826497101YS', '2022-04-09 18:05:49', '2022-04-09 18:05:49'),
(459, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RP321649520534IA3841238013350GV', '2022-04-09 18:08:54', '2022-04-09 18:08:54'),
(460, 'DESKTOP-2KPJSHU', '127.0.0.1', 'AR421649521330IG2018144734630PX', '2022-04-09 18:22:10', '2022-04-09 18:22:10'),
(461, 'DESKTOP-2KPJSHU', '127.0.0.1', 'TG401649522871CZ30108868509486VT', '2022-04-09 18:47:51', '2022-04-09 18:47:51'),
(462, 'DESKTOP-2KPJSHU', '127.0.0.1', 'EZ251649524773VL93140209605705TO', '2022-04-09 19:19:33', '2022-04-09 19:19:33'),
(463, 'DESKTOP-2KPJSHU', '127.0.0.1', 'NJ421649532093QK6637939238139YP', '2022-04-09 21:21:33', '2022-04-09 21:21:33'),
(464, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PB731649581926CF34164958192600LD', '2022-04-10 11:12:06', '2022-04-10 11:12:06'),
(465, 'Dedal', '127.0.0.1', 'SP691649582003QQ9789077428162PH', '2022-04-10 11:13:23', '2022-04-10 11:13:23'),
(466, 'Dedal', '127.0.0.1', 'ZR931649582272PL5023094151808CG', '2022-04-10 11:17:52', '2022-04-10 11:17:52'),
(467, 'Dedal', '127.0.0.1', 'SY561649584059KA197325459481UJ', '2022-04-10 11:47:39', '2022-04-10 11:47:39'),
(468, 'Dedal', '127.0.0.1', 'AU571649584504FK74113821330776SB', '2022-04-10 11:55:04', '2022-04-10 11:55:04'),
(469, 'Dedal', '127.0.0.1', 'BJ141649585079KX76122069295846NG', '2022-04-10 12:04:39', '2022-04-10 12:04:39'),
(470, 'Dedal', '127.0.0.1', 'SX851649585263ML8118770138936UW', '2022-04-10 12:07:43', '2022-04-10 12:07:43'),
(471, 'Dedal', '127.0.0.1', 'JW861649585346AK98164958534600HG', '2022-04-10 12:09:06', '2022-04-10 12:09:06'),
(472, 'Dedal', '127.0.0.1', 'QI911649585354SV40151761852568OF', '2022-04-10 12:09:14', '2022-04-10 12:09:14'),
(473, 'Dedal', '127.0.0.1', 'WH131649586385DU8729692554930MZ', '2022-04-10 12:26:25', '2022-04-10 12:26:25'),
(474, 'Dedal', '127.0.0.1', 'VR841649586489DW6349487594670XL', '2022-04-10 12:28:09', '2022-04-10 12:28:09'),
(475, 'Dedal', '127.0.0.1', 'BI421649586600WA6061034704200WW', '2022-04-10 12:30:00', '2022-04-10 12:30:00'),
(476, 'Dedal', '127.0.0.1', 'XW591649586706RS3879180161888RU', '2022-04-10 12:31:46', '2022-04-10 12:31:46'),
(477, 'Dedal', '127.0.0.1', 'MW481649586745VO90138565286580EC', '2022-04-10 12:32:25', '2022-04-10 12:32:25'),
(478, 'Dedal', '127.0.0.1', 'NZ331649586826JT31135266119732ES', '2022-04-10 12:33:46', '2022-04-10 12:33:46'),
(479, 'Dedal', '127.0.0.1', 'OC61649586999TF6895676045942CD', '2022-04-10 12:36:39', '2022-04-10 12:36:39'),
(480, 'Dedal', '127.0.0.1', 'QW291649587143TB31100624815723JB', '2022-04-10 12:39:03', '2022-04-10 12:39:03'),
(481, 'Dedal', '127.0.0.1', 'RY391649587204DP2031342156876OY', '2022-04-10 12:40:04', '2022-04-10 12:40:04'),
(482, 'Dedal', '127.0.0.1', 'BY611649587287ND4889077713498KX', '2022-04-10 12:41:27', '2022-04-10 12:41:27'),
(483, 'Dedal', '127.0.0.1', 'PQ691649587400RT6951137209400TL', '2022-04-10 12:43:20', '2022-04-10 12:43:20'),
(484, 'Dedal', '127.0.0.1', 'DQ411649587420BN254436384860BZ', '2022-04-10 12:43:40', '2022-04-10 12:43:40'),
(485, 'Dedal', '127.0.0.1', 'TL571649587506TU4428042987602MS', '2022-04-10 12:45:06', '2022-04-10 12:45:06'),
(486, 'Dedal', '127.0.0.1', 'EQ601649588013GU12115471160910BI', '2022-04-10 12:53:33', '2022-04-10 12:53:33'),
(487, 'Dedal', '127.0.0.1', 'WL701649588106DR7482479405300XX', '2022-04-10 12:55:06', '2022-04-10 12:55:06'),
(488, 'Dedal', '127.0.0.1', 'RW461649588779SS96158360522784ZP', '2022-04-10 13:06:19', '2022-04-10 13:06:19'),
(489, 'Dedal', '127.0.0.1', 'QM301649588829ML16143514228123AU', '2022-04-10 13:07:09', '2022-04-10 13:07:09'),
(490, 'Dedal', '127.0.0.1', 'RN201649589072FO42100624933392SN', '2022-04-10 13:11:12', '2022-04-10 13:11:12'),
(491, 'Dedal', '127.0.0.1', 'ML861649589664XT43161659787072RD', '2022-04-10 13:21:04', '2022-04-10 13:21:04'),
(492, 'Dedal', '127.0.0.1', 'EY541649589881HO7779180314288CF', '2022-04-10 13:24:41', '2022-04-10 13:24:41'),
(493, 'Dedal', '127.0.0.1', 'US391649589909JI9844538927543IJ', '2022-04-10 13:25:09', '2022-04-10 13:25:09'),
(494, 'DESKTOP-2KPJSHU', '127.0.0.1', 'TN631649590160VM2413196721280OA', '2022-04-10 13:29:20', '2022-04-10 13:29:20'),
(495, 'Dedal', '127.0.0.1', 'FD511649593251YF1318145525761QD', '2022-04-10 14:20:51', '2022-04-10 14:20:51'),
(496, 'Dedal', '127.0.0.1', 'DG721649595461OO78112172491348CJ', '2022-04-10 14:57:41', '2022-04-10 14:57:41'),
(497, 'Dedal', '127.0.0.1', 'OR841649595466DM9385778964232KD', '2022-04-10 14:57:46', '2022-04-10 14:57:46'),
(498, 'Dedal', '127.0.0.1', 'VE291649595880VF9234641513480WE', '2022-04-10 15:04:40', '2022-04-10 15:04:40'),
(499, 'Dedal', '127.0.0.1', 'VC471649596381BR1126393542096KJ', '2022-04-10 15:13:01', '2022-04-10 15:13:01'),
(500, 'Dedal', '127.0.0.1', 'NO391649596393HB2140215693405NO', '2022-04-10 15:13:13', '2022-04-10 15:13:13'),
(501, 'Dedal', '127.0.0.1', 'DJ391649596855YM947838308795BQ', '2022-04-10 15:20:55', '2022-04-10 15:20:55'),
(502, 'Dedal', '127.0.0.1', 'MK961649596924WW131342341556JO', '2022-04-10 15:22:04', '2022-04-10 15:22:04'),
(503, 'DESKTOP-2KPJSHU', '127.0.0.1', 'JS911649604610VW14140216391850FC', '2022-04-10 17:30:10', '2022-04-10 17:30:10'),
(504, 'Dedal', '127.0.0.1', 'MW491649605499AE35140216467415OW', '2022-04-10 17:44:59', '2022-04-10 17:44:59'),
(505, 'Dedal', '127.0.0.1', 'UR681649605526BA28148464497340BU', '2022-04-10 17:45:26', '2022-04-10 17:45:26'),
(506, 'Dedal', '127.0.0.1', 'SU201649605698YK45103925158974XH', '2022-04-10 17:48:18', '2022-04-10 17:48:18'),
(507, 'Dedal', '127.0.0.1', 'IE651649605811EY7265984232440WG', '2022-04-10 17:50:11', '2022-04-10 17:50:11'),
(508, 'Dedal', '127.0.0.1', 'PH711649606061QS10097326757599UZ', '2022-04-10 17:54:21', '2022-04-10 17:54:21'),
(509, 'Dedal', '127.0.0.1', 'AY61649606088JV8657736213080ED', '2022-04-10 17:54:48', '2022-04-10 17:54:48'),
(510, 'Dedal', '127.0.0.1', 'YR261649606128YW7742889759328RG', '2022-04-10 17:55:28', '2022-04-10 17:55:28'),
(511, 'Dedal', '127.0.0.1', 'TW401649606181RT70151763768652BR', '2022-04-10 17:56:21', '2022-04-10 17:56:21'),
(512, 'Dedal', '127.0.0.1', 'CC871649606672RX68130318927088HM', '2022-04-10 18:04:32', '2022-04-10 18:04:32'),
(513, 'Dedal', '127.0.0.1', 'FM891649606733XP7724744100995DL', '2022-04-10 18:05:33', '2022-04-10 18:05:33'),
(514, 'Dedal', '127.0.0.1', 'KZ81649606899WE9844539386273QI', '2022-04-10 18:08:19', '2022-04-10 18:08:19'),
(515, 'Dedal', '127.0.0.1', 'JF761649606914CV224948820742BU', '2022-04-10 18:08:34', '2022-04-10 18:08:34'),
(516, 'Dedal', '127.0.0.1', 'GP811649606993UC4151137816783RC', '2022-04-10 18:09:53', '2022-04-10 18:09:53'),
(517, 'Dedal', '127.0.0.1', 'DU301649607039ZR25123720527925HI', '2022-04-10 18:10:39', '2022-04-10 18:10:39'),
(518, 'Dedal', '127.0.0.1', 'OT881649607055UZ8269283496310SW', '2022-04-10 18:10:55', '2022-04-10 18:10:55'),
(519, 'Dedal', '127.0.0.1', 'EX321649607126KO69103925248938FG', '2022-04-10 18:12:06', '2022-04-10 18:12:06'),
(520, 'Dedal', '127.0.0.1', 'IV481649607289LH3241240182225XT', '2022-04-10 18:14:49', '2022-04-10 18:14:49'),
(521, 'Dedal', '127.0.0.1', 'UQ651649607449BU23158362315104CE', '2022-04-10 18:17:29', '2022-04-10 18:17:29'),
(522, 'Dedal', '127.0.0.1', 'VD581649607470HI76138567027480EU', '2022-04-10 18:17:50', '2022-04-10 18:17:50'),
(523, 'Dedal', '127.0.0.1', 'CR171649607534MS6031342543146YT', '2022-04-10 18:18:54', '2022-04-10 18:18:54'),
(524, 'Dedal', '127.0.0.1', 'MI821649607567WO7697326846453BH', '2022-04-10 18:19:27', '2022-04-10 18:19:27'),
(525, 'Dedal', '127.0.0.1', 'AT161649607598IG88156712721810TC', '2022-04-10 18:19:58', '2022-04-10 18:19:58'),
(526, 'Dedal', '127.0.0.1', 'KN971649607629KD2672582735676AM', '2022-04-10 18:20:29', '2022-04-10 18:20:29'),
(527, 'Dedal', '127.0.0.1', 'DZ881649607650DD5611547253550DA', '2022-04-10 18:20:50', '2022-04-10 18:20:50'),
(528, 'Dedal', '127.0.0.1', 'KH761649607664WZ6972582737216DD', '2022-04-10 18:21:04', '2022-04-10 18:21:04'),
(529, 'Dedal', '127.0.0.1', 'WO771649607680EJ5469283522560AF', '2022-04-10 18:21:20', '2022-04-10 18:21:20'),
(530, 'Dedal', '127.0.0.1', 'ZY281649608139WI2546189027892GV', '2022-04-10 18:28:59', '2022-04-10 18:28:59'),
(531, 'Dedal', '127.0.0.1', 'TN231649608192NK5244539421184TC', '2022-04-10 18:29:52', '2022-04-10 18:29:52'),
(532, 'Dedal', '127.0.0.1', 'HV311649609417OO2857736329595ZL', '2022-04-10 18:50:17', '2022-04-10 18:50:17'),
(533, 'Dedal', '127.0.0.1', 'JS1001649609421PK279897656526NS', '2022-04-10 18:50:21', '2022-04-10 18:50:21'),
(534, 'Dedal', '127.0.0.1', 'GN871649610257ER7113196882056SZ', '2022-04-10 19:04:17', '2022-04-10 19:04:17'),
(535, 'Dedal', '127.0.0.1', 'MI811649610363RY3195677401054RN', '2022-04-10 19:06:03', '2022-04-10 19:06:03'),
(536, 'Dedal', '127.0.0.1', 'VQ141649610481UP93155063385214PV', '2022-04-10 19:08:01', '2022-04-10 19:08:01'),
(537, 'Dedal', '127.0.0.1', 'XI801649610536BW6885779747872ZA', '2022-04-10 19:08:56', '2022-04-10 19:08:56'),
(538, 'Dedal', '127.0.0.1', 'UV571649610556HY6659385980016XZ', '2022-04-10 19:09:16', '2022-04-10 19:09:16'),
(539, 'Dedal', '127.0.0.1', 'ZT171649610621OW33158362619616DX', '2022-04-10 19:10:21', '2022-04-10 19:10:21'),
(540, 'Dedal', '127.0.0.1', 'KM161649610661XD52140216906185QS', '2022-04-10 19:11:01', '2022-04-10 19:11:01'),
(541, 'Dedal', '127.0.0.1', 'XF551649610957FP55120421599861EM', '2022-04-10 19:15:57', '2022-04-10 19:15:57'),
(542, 'Dedal', '127.0.0.1', 'BD101649611032JU4426393776512GC', '2022-04-10 19:17:12', '2022-04-10 19:17:12'),
(543, 'Dedal', '127.0.0.1', 'WM131649611118NE2146189111304WN', '2022-04-10 19:18:38', '2022-04-10 19:18:38'),
(544, 'Dedal', '127.0.0.1', 'NN801649611122FL9628043389074ZJ', '2022-04-10 19:18:42', '2022-04-10 19:18:42'),
(545, 'Dedal', '127.0.0.1', 'PH311649611519IQ28128669698482ZB', '2022-04-10 19:25:19', '2022-04-10 19:25:19'),
(546, 'Dedal', '127.0.0.1', 'FA661649611687CH5713196893496AQ', '2022-04-10 19:28:07', '2022-04-10 19:28:07'),
(547, 'Dedal', '127.0.0.1', 'GB951649611715NE3321444952295VK', '2022-04-10 19:28:35', '2022-04-10 19:28:35'),
(548, 'Dedal', '127.0.0.1', 'RX171649612024GP1256086808816RZ', '2022-04-10 19:33:44', '2022-04-10 19:33:44'),
(549, 'Dedal', '127.0.0.1', 'DT781649612039TS349488361170IV', '2022-04-10 19:33:59', '2022-04-10 19:33:59'),
(550, 'Dedal', '127.0.0.1', 'RS581649612124MV5882480606200DK', '2022-04-10 19:35:24', '2022-04-10 19:35:24'),
(551, 'Dedal', '127.0.0.1', 'XA571649612237RD8923094571318VP', '2022-04-10 19:37:17', '2022-04-10 19:37:17'),
(552, 'Dedal', '127.0.0.1', 'NP731649612263FP43146815491407GP', '2022-04-10 19:37:43', '2022-04-10 19:37:43'),
(553, 'Dedal', '127.0.0.1', 'HE771649612304JQ76103925575152ZL', '2022-04-10 19:38:24', '2022-04-10 19:38:24'),
(554, 'Dedal', '127.0.0.1', 'RQ851649612322JW2734641858762HZ', '2022-04-10 19:38:42', '2022-04-10 19:38:42'),
(555, 'Dedal', '127.0.0.1', 'NB361649612689KY9836291479158VO', '2022-04-10 19:44:49', '2022-04-10 19:44:49'),
(556, 'Dedal', '127.0.0.1', 'QX701649612737PF1756086833058IA', '2022-04-10 19:45:37', '2022-04-10 19:45:37'),
(557, 'Dedal', '127.0.0.1', 'SU771649612796NX98138567474864XR', '2022-04-10 19:46:36', '2022-04-10 19:46:36'),
(558, 'Dedal', '127.0.0.1', 'XN821649613180QV46105575243520UI', '2022-04-10 19:53:00', '2022-04-10 19:53:00'),
(559, 'Dedal', '127.0.0.1', 'PV391649613378RE89135268296996BL', '2022-04-10 19:56:18', '2022-04-10 19:56:18'),
(560, 'Dedal', '127.0.0.1', 'XN421649613467IT74136917917761ZK', '2022-04-10 19:57:47', '2022-04-10 19:57:47'),
(561, 'Dedal', '127.0.0.1', 'SY61649613554TD9311547294878ZY', '2022-04-10 19:59:14', '2022-04-10 19:59:14'),
(562, 'Dedal', '127.0.0.1', 'JD191649613644MK5103925659572JD', '2022-04-10 20:00:44', '2022-04-10 20:00:44'),
(563, 'Dedal', '127.0.0.1', 'EO961649613737ZH579897682422FT', '2022-04-10 20:02:17', '2022-04-10 20:02:17'),
(564, 'Dedal', '127.0.0.1', 'UZ131649613781JZ23117122578451PZ', '2022-04-10 20:03:01', '2022-04-10 20:03:01'),
(565, 'Dedal', '127.0.0.1', 'BK741649613812JJ1164334938668VI', '2022-04-10 20:03:32', '2022-04-10 20:03:32'),
(566, 'Dedal', '127.0.0.1', 'IN621649613850ID1226393821600CV', '2022-04-10 20:04:10', '2022-04-10 20:04:10'),
(567, 'Dedal', '127.0.0.1', 'GC771649613948AE7117122590308FE', '2022-04-10 20:05:48', '2022-04-10 20:05:48'),
(568, 'Dedal', '127.0.0.1', 'LH231649613982MJ6472583015208MC', '2022-04-10 20:06:22', '2022-04-10 20:06:22'),
(569, 'Dedal', '127.0.0.1', 'BI221649614115YV43155063726810LB', '2022-04-10 20:08:35', '2022-04-10 20:08:35'),
(570, 'Dedal', '127.0.0.1', 'GN781649614216KD58145166051008KK', '2022-04-10 20:10:16', '2022-04-10 20:10:16'),
(571, 'Dedal', '127.0.0.1', 'BK661649614286GD20113823385734EP', '2022-04-10 20:11:26', '2022-04-10 20:11:26'),
(572, 'Dedal', '127.0.0.1', 'IC811649614292YH39145166057696YQ', '2022-04-10 20:11:32', '2022-04-10 20:11:32'),
(573, 'Dedal', '127.0.0.1', 'LH221649614402XC41155063753788UF', '2022-04-10 20:13:22', '2022-04-10 20:13:22'),
(574, 'Dedal', '127.0.0.1', 'QD111649614457YX834641903597YP', '2022-04-10 20:14:17', '2022-04-10 20:14:17'),
(575, 'Dedal', '127.0.0.1', 'FS691649614514IU94135268390148DE', '2022-04-10 20:15:14', '2022-04-10 20:15:14'),
(576, 'Dedal', '127.0.0.1', 'OT471649614541FJ324744218115VX', '2022-04-10 20:15:41', '2022-04-10 20:15:41'),
(577, 'Dedal', '127.0.0.1', 'WN341649614563UW7103925717469BP', '2022-04-10 20:16:02', '2022-04-10 20:16:02'),
(578, 'Dedal', '127.0.0.1', 'IP951649614725RJ31115473030750DZ', '2022-04-10 20:18:45', '2022-04-10 20:18:45'),
(579, 'Dedal', '127.0.0.1', 'ZA621649614759MC5146189213252JZ', '2022-04-10 20:19:19', '2022-04-10 20:19:19'),
(580, 'Dedal', '127.0.0.1', 'SC241649614803YH68103925732589QO', '2022-04-10 20:20:02', '2022-04-10 20:20:02'),
(581, 'Dedal', '127.0.0.1', 'PG521649614828GW4434641911388JV', '2022-04-10 20:20:28', '2022-04-10 20:20:28'),
(582, 'Dedal', '127.0.0.1', 'GL41649614903SX613196919224XC', '2022-04-10 20:21:43', '2022-04-10 20:21:43'),
(583, 'Dedal', '127.0.0.1', 'MB991649614954LD54160012650538CY', '2022-04-10 20:22:34', '2022-04-10 20:22:34'),
(584, 'Dedal', '127.0.0.1', 'UL471649614971KZ975882288666LF', '2022-04-10 20:22:51', '2022-04-10 20:22:51'),
(585, 'Dedal', '127.0.0.1', 'RG561649615088UH99145166127744VF', '2022-04-10 20:24:48', '2022-04-10 20:24:48'),
(586, 'Dedal', '127.0.0.1', 'TF471649615248ZQ13148465372320JL', '2022-04-10 20:27:28', '2022-04-10 20:27:28'),
(587, 'Dedal', '127.0.0.1', 'KC671649615275IK45105575377600CX', '2022-04-10 20:27:55', '2022-04-10 20:27:55'),
(588, 'Dedal', '127.0.0.1', 'GS981649615321CL86150114994211OV', '2022-04-10 20:28:41', '2022-04-10 20:28:41'),
(589, 'Dedal', '127.0.0.1', 'EZ371649626022RJ816598504088GX', '2022-04-10 23:27:02', '2022-04-10 23:27:02'),
(590, 'Dedal', '127.0.0.1', 'XF471649626226BK644948878678OT', '2022-04-10 23:30:26', '2022-04-10 23:30:26'),
(591, 'Dedal', '127.0.0.1', 'JW571649688707YZ91143522917509HS', '2022-04-11 16:51:47', '2022-04-11 16:51:47'),
(592, 'Dedal', '127.0.0.1', 'ES711649688730DR6254439728090FW', '2022-04-11 16:52:10', '2022-04-11 16:52:10'),
(593, 'Dedal', '127.0.0.1', 'CI681649688737PF38153421052541UA', '2022-04-11 16:52:17', '2022-04-11 16:52:17'),
(594, 'Dedal', '127.0.0.1', 'ET951649688789BD83115478215230OH', '2022-04-11 16:53:09', '2022-04-11 16:53:09'),
(595, 'Dedal', '127.0.0.1', 'QR991649688913HG9061038489781YA', '2022-04-11 16:55:13', '2022-04-11 16:55:13'),
(596, 'Dedal', '127.0.0.1', 'SO191649689137HM49898134822KT', '2022-04-11 16:58:57', '2022-04-11 16:58:57'),
(597, 'Dedal', '127.0.0.1', 'LP271649689315CO9156720484925XH', '2022-04-11 17:01:55', '2022-04-11 17:01:55'),
(598, 'DESKTOP-2KPJSHU', '127.0.0.1', 'XB91649689353MJ3414847204177MZ', '2022-04-11 17:02:33', '2022-04-11 17:02:33'),
(599, 'Dedal', '127.0.0.1', 'AA701649689463AA1979185094224HU', '2022-04-11 17:04:23', '2022-04-11 17:04:23'),
(600, 'Dedal', '127.0.0.1', 'ZH661649689511FL67135274539902AG', '2022-04-11 17:05:11', '2022-04-11 17:05:11'),
(601, 'Dedal', '127.0.0.1', 'RC561649689535CD50122077025590UU', '2022-04-11 17:05:35', '2022-04-11 17:05:35'),
(602, 'Dedal', '127.0.0.1', 'GI791649689682WR9347841000778CN', '2022-04-11 17:08:02', '2022-04-11 17:08:02'),
(603, 'Dedal', '127.0.0.1', 'OQ941649689774MH2937942864802KQ', '2022-04-11 17:09:34', '2022-04-11 17:09:34'),
(604, 'Dedal', '127.0.0.1', 'ER11649690027VK92160019932619YH', '2022-04-11 17:13:47', '2022-04-11 17:13:47'),
(605, 'Dedal', '127.0.0.1', 'AU781649690382DP9119796284584CW', '2022-04-11 17:19:42', '2022-04-11 17:19:42'),
(606, 'Dedal', '127.0.0.1', 'AO871649690737DB93120427423801SV', '2022-04-11 17:25:37', '2022-04-11 17:25:37'),
(607, 'Dedal', '127.0.0.1', 'UR491649690807RE7287433612771QQ', '2022-04-11 17:26:47', '2022-04-11 17:26:47'),
(608, 'Dedal', '127.0.0.1', 'LS41649691234NN5936293207148HE', '2022-04-11 17:33:54', '2022-04-11 17:33:54'),
(609, 'Dedal', '127.0.0.1', 'SN751649691238AE2751140428378QF', '2022-04-11 17:33:58', '2022-04-11 17:33:58'),
(610, 'Dedal', '127.0.0.1', 'ZC51649691347OV833299382694ST', '2022-04-11 17:35:47', '2022-04-11 17:35:47'),
(611, 'Dedal', '127.0.0.1', 'LW11649691393EE95140223768405VD', '2022-04-11 17:36:33', '2022-04-11 17:36:33'),
(612, 'Dedal', '127.0.0.1', 'DD51649691436NK6419796297232SY', '2022-04-11 17:37:16', '2022-04-11 17:37:16'),
(613, 'Dedal', '127.0.0.1', 'MM211649691504BW294949074512UZ', '2022-04-11 17:38:24', '2022-04-11 17:38:24'),
(614, 'Dedal', '127.0.0.1', 'BI111649691564IM1125376558864JO', '2022-04-11 17:39:24', '2022-04-11 17:39:24'),
(615, 'Dedal', '127.0.0.1', 'PK181649691672SS3644541675144BI', '2022-04-11 17:41:12', '2022-04-11 17:41:12'),
(616, 'Dedal', '127.0.0.1', 'SY381649691710NH97112179036280WA', '2022-04-11 17:41:50', '2022-04-11 17:41:50'),
(617, 'Dedal', '127.0.0.1', 'HY861649691749JB7839592601976OK', '2022-04-11 17:42:29', '2022-04-11 17:42:29'),
(618, 'Dedal', '127.0.0.1', 'AG21649691791FM18105580274624HR', '2022-04-11 17:43:11', '2022-04-11 17:43:11'),
(619, 'Dedal', '127.0.0.1', 'GN91649691815OA40163319489685PP', '2022-04-11 17:43:35', '2022-04-11 17:43:35'),
(620, 'Dedal', '127.0.0.1', 'CV741649691827OT1789083358658QT', '2022-04-11 17:43:47', '2022-04-11 17:43:47'),
(621, 'Dedal', '127.0.0.1', 'RI391649691911GA65146822580079RC', '2022-04-11 17:45:11', '2022-04-11 17:45:11'),
(622, 'Dedal', '127.0.0.1', 'IU351649691950KT999898151700AR', '2022-04-11 17:45:50', '2022-04-11 17:45:50'),
(623, 'Dedal', '127.0.0.1', 'II821649692317OF8074236154265LF', '2022-04-11 17:51:57', '2022-04-11 17:51:57'),
(624, 'Dedal', '127.0.0.1', 'SU591649692346AX7270936770878HL', '2022-04-11 17:52:26', '2022-04-11 17:52:26'),
(625, 'Dedal', '127.0.0.1', 'BP741649692539TT4480834934411FW', '2022-04-11 17:55:39', '2022-04-11 17:55:39'),
(626, 'Dedal', '127.0.0.1', 'PQ491649692576HX14153421409568JI', '2022-04-11 17:56:16', '2022-04-11 17:56:16'),
(627, 'Dedal', '127.0.0.1', 'OB821649692582LB70117128173322LQ', '2022-04-11 17:56:22', '2022-04-11 17:56:22'),
(628, 'Dedal', '127.0.0.1', 'VZ1001649692613ZR7479185245424CA', '2022-04-11 17:56:53', '2022-04-11 17:56:53'),
(629, 'Dedal', '127.0.0.1', 'OZ401649693939SB531649693939ST', '2022-04-11 18:18:59', '2022-04-11 18:18:59'),
(630, 'Dedal', '127.0.0.1', 'MO21649694206AM4392382875536EC', '2022-04-11 18:23:26', '2022-04-11 18:23:26'),
(631, 'Dedal', '127.0.0.1', 'UG271649694320TR8170936855760IT', '2022-04-11 18:25:20', '2022-04-11 18:25:20'),
(632, 'Dedal', '127.0.0.1', 'LL221649694404ZY6795682275432CT', '2022-04-11 18:26:44', '2022-04-11 18:26:44'),
(633, 'Dedal', '127.0.0.1', 'CP531649694453FF590733194915DE', '2022-04-11 18:27:33', '2022-04-11 18:27:33'),
(634, 'Dedal', '127.0.0.1', 'JF451649694493HS56160020365821ML', '2022-04-11 18:28:13', '2022-04-11 18:28:13'),
(635, 'Dedal', '127.0.0.1', 'FZ741649694959YY4052790238688OJ', '2022-04-11 18:35:59', '2022-04-11 18:35:59'),
(636, 'Dedal', '127.0.0.1', 'YD101649695032BL483299390064RA', '2022-04-11 18:37:11', '2022-04-11 18:37:11'),
(637, 'Dedal', '127.0.0.1', 'LD661649695070VA8495682314060CF', '2022-04-11 18:37:50', '2022-04-11 18:37:50'),
(638, 'Dedal', '127.0.0.1', 'ZL31649695093NX9049490852790AZ', '2022-04-11 18:38:13', '2022-04-11 18:38:13'),
(639, 'Dedal', '127.0.0.1', 'PL911649695113SS518146646243FN', '2022-04-11 18:38:33', '2022-04-11 18:38:33'),
(640, 'Dedal', '127.0.0.1', 'DB521649695134VI8932993902680GR', '2022-04-11 18:38:54', '2022-04-11 18:38:54'),
(641, 'Dedal', '127.0.0.1', 'ID521649696346ME5541242408650QA', '2022-04-11 18:59:06', '2022-04-11 18:59:06'),
(642, 'Dedal', '127.0.0.1', 'WF191649696421DQ4175886035366FU', '2022-04-11 19:00:21', '2022-04-11 19:00:21'),
(643, 'Dedal', '127.0.0.1', 'GE211649696508ZS6869287253336IW', '2022-04-11 19:01:48', '2022-04-11 19:01:48'),
(644, 'Dedal', '127.0.0.1', 'DU611649696597DN7140224210745MN', '2022-04-11 19:03:17', '2022-04-11 19:03:17'),
(645, 'Dedal', '127.0.0.1', 'OC941649696658HZ58146823002562YY', '2022-04-11 19:04:18', '2022-04-11 19:04:18'),
(646, 'Dedal', '127.0.0.1', 'BV861649696692QH50120427858516NV', '2022-04-11 19:04:52', '2022-04-11 19:04:52'),
(647, 'Dedal', '127.0.0.1', 'YH181649696786HN6559389084296PG', '2022-04-11 19:06:26', '2022-04-11 19:06:26'),
(648, 'Dedal', '127.0.0.1', 'QL461649696812NI90133625441772EF', '2022-04-11 19:06:52', '2022-04-11 19:06:52'),
(649, 'Dedal', '127.0.0.1', 'BV161649696912SS57143523631344NI', '2022-04-11 19:08:32', '2022-04-11 19:08:32'),
(650, 'Dedal', '127.0.0.1', 'PW601649696971HP9034643636391WJ', '2022-04-11 19:09:31', '2022-04-11 19:09:31'),
(651, 'Dedal', '127.0.0.1', 'XA881649697105NF5534643639205KY', '2022-04-11 19:11:45', '2022-04-11 19:11:45'),
(652, 'Dedal', '127.0.0.1', 'QW371649697195HZ99131975775600HW', '2022-04-11 19:13:15', '2022-04-11 19:13:15'),
(653, 'Dedal', '127.0.0.1', 'UB281649697262PX9354440009646HA', '2022-04-11 19:14:22', '2022-04-11 19:14:22'),
(654, 'Dedal', '127.0.0.1', 'LQ601649699029VM5161670504842GN', '2022-04-11 19:43:49', '2022-04-11 19:43:49'),
(655, 'Dedal', '127.0.0.1', 'RF141649699048SO6723095786672ML', '2022-04-11 19:44:08', '2022-04-11 19:44:08'),
(656, 'Dedal', '127.0.0.1', 'MZ751649699102MS7124745486530BI', '2022-04-11 19:45:02', '2022-04-11 19:45:02'),
(657, 'Dedal', '127.0.0.1', 'WP981649699162BI6242892178212XD', '2022-04-11 19:46:02', '2022-04-11 19:46:02'),
(658, 'Dedal', '127.0.0.1', 'DF301649701377CD6974236561965LM', '2022-04-11 20:22:57', '2022-04-11 20:22:57'),
(659, 'Dedal', '127.0.0.1', 'HY561649701442KU4123095820188TZ', '2022-04-11 20:24:02', '2022-04-11 20:24:02'),
(660, 'Dedal', '127.0.0.1', 'HL11649701641RL9390733590255KP', '2022-04-11 20:27:21', '2022-04-11 20:27:21'),
(661, 'Dedal', '127.0.0.1', 'HV291649701720BK76145173751360MQ', '2022-04-11 20:28:40', '2022-04-11 20:28:40'),
(662, 'Dedal', '127.0.0.1', 'GK131649706010LL1947841474290FR', '2022-04-11 21:40:10', '2022-04-11 21:40:10'),
(663, 'Dedal', '127.0.0.1', 'OC641649706935YA4449491208050VK', '2022-04-11 21:55:35', '2022-04-11 21:55:35'),
(664, 'Dedal', '127.0.0.1', 'GN171649707287NQ85112180095516VN', '2022-04-11 22:01:27', '2022-04-11 22:01:27'),
(665, 'Dedal', '127.0.0.1', 'VY661649707674RM55155072521356BW', '2022-04-11 22:07:54', '2022-04-11 22:07:54'),
(666, 'Dedal', '127.0.0.1', 'NL251649707763RM54122078374462MK', '2022-04-11 22:09:23', '2022-04-11 22:09:23'),
(667, 'Dedal', '127.0.0.1', 'YN891649707835ZE69135276042470IJ', '2022-04-11 22:10:35', '2022-04-11 22:10:35'),
(668, 'Dedal', '127.0.0.1', 'WM211649708017BB8979185984816VJ', '2022-04-11 22:13:37', '2022-04-11 22:13:37'),
(669, 'Dedal', '127.0.0.1', 'JB251649708027MG58150123430457DX', '2022-04-11 22:13:47', '2022-04-11 22:13:47'),
(670, 'Dedal', '127.0.0.1', 'PO341649708109MR21133626356829YK', '2022-04-11 22:15:09', '2022-04-11 22:15:09'),
(671, 'Dedal', '127.0.0.1', 'DF101649708289JN983299416578KM', '2022-04-11 22:18:09', '2022-04-11 22:18:09'),
(672, 'Dedal', '127.0.0.1', 'VB731649708303AR4252790665696GE', '2022-04-11 22:18:23', '2022-04-11 22:18:23'),
(673, 'Dedal', '127.0.0.1', 'RK831649708447NJ42105581340608KQ', '2022-04-11 22:20:47', '2022-04-11 22:20:47'),
(674, 'Dedal', '127.0.0.1', 'AG401649708503CJ10072587174132HB', '2022-04-11 22:21:43', '2022-04-11 22:21:43'),
(675, 'Dedal', '127.0.0.1', 'OW751649708612DB91151773192304VE', '2022-04-11 22:23:32', '2022-04-11 22:23:32'),
(676, 'Dedal', '127.0.0.1', 'XI131649708650VA7223095921100WD', '2022-04-11 22:24:10', '2022-04-11 22:24:10'),
(677, 'Dedal', '127.0.0.1', 'UC201649708705SF1014847378345TI', '2022-04-11 22:25:05', '2022-04-11 22:25:05'),
(678, 'Dedal', '127.0.0.1', 'BS721649708748IL18108880777368CO', '2022-04-11 22:25:48', '2022-04-11 22:25:48'),
(679, 'Dedal', '127.0.0.1', 'AR131649708769ZH685784855988NJ', '2022-04-11 22:26:09', '2022-04-11 22:26:09'),
(680, 'Dedal', '127.0.0.1', 'GZ301649708920YE704949126760XV', '2022-04-11 22:28:40', '2022-04-11 22:28:40'),
(681, 'Dedal', '127.0.0.1', 'FI321649709005FH9847841561145TO', '2022-04-11 22:30:05', '2022-04-11 22:30:05'),
(682, 'Dedal', '127.0.0.1', 'EK471649709146LE68150123532286MP', '2022-04-11 22:32:25', '2022-04-11 22:32:25'),
(683, 'Dedal', '127.0.0.1', 'DR931649709192HM24127027607784AL', '2022-04-11 22:33:12', '2022-04-11 22:33:12'),
(684, 'Dedal', '127.0.0.1', 'OM341649709271DF52148473834390ED', '2022-04-11 22:34:31', '2022-04-11 22:34:31'),
(685, 'Dedal', '127.0.0.1', 'NQ951649709338AQ8947841570802KH', '2022-04-11 22:35:38', '2022-04-11 22:35:38'),
(686, 'Dedal', '127.0.0.1', 'IN121649709611HO2723095934554ZH', '2022-04-11 22:40:11', '2022-04-11 22:40:11'),
(687, 'Dedal', '127.0.0.1', 'BR901649709656OY37100632289016QU', '2022-04-11 22:40:56', '2022-04-11 22:40:56'),
(688, 'Dedal', '127.0.0.1', 'VC441649709898YG3631344488062GR', '2022-04-11 22:44:58', '2022-04-11 22:44:58'),
(689, 'Dedal', '127.0.0.1', 'ZV411649710524NG16130327131396EN', '2022-04-11 22:55:24', '2022-04-11 22:55:24'),
(690, 'Dedal', '127.0.0.1', 'LS651649710553KB3369287843226WA', '2022-04-11 22:55:53', '2022-04-11 22:55:53'),
(691, 'Dedal', '127.0.0.1', 'DG431649710560VX8797332923040RS', '2022-04-11 22:56:00', '2022-04-11 22:56:00'),
(692, 'Dedal', '127.0.0.1', 'NT91649710699IM2159389585164VO', '2022-04-11 22:58:19', '2022-04-11 22:58:19'),
(693, 'Dedal', '127.0.0.1', 'HG31649710907VE11151773403444MW', '2022-04-11 23:01:47', '2022-04-11 23:01:47'),
(694, 'Dedal', '127.0.0.1', 'HX841649710966WY25127027744382CP', '2022-04-11 23:02:46', '2022-04-11 23:02:46'),
(695, 'Dedal', '127.0.0.1', 'HP381649710995BW7879186127760CP', '2022-04-11 23:03:15', '2022-04-11 23:03:15'),
(696, 'Dedal', '127.0.0.1', 'MN421649711059XW37145174573192RX', '2022-04-11 23:04:19', '2022-04-11 23:04:19'),
(697, 'Dedal', '127.0.0.1', 'LH621649711241FE13123728343075OD', '2022-04-11 23:07:21', '2022-04-11 23:07:21'),
(698, 'Dedal', '127.0.0.1', 'CH81649711297QT346191916316NY', '2022-04-11 23:08:16', '2022-04-11 23:08:16'),
(699, 'Dedal', '127.0.0.1', 'DV221649711477CZ4282485573850TP', '2022-04-11 23:11:17', '2022-04-11 23:11:17'),
(700, 'Dedal', '127.0.0.1', 'FW81649711813DK70125378097788PT', '2022-04-11 23:16:53', '2022-04-11 23:16:53'),
(701, 'TABLETHP', '192.168.0.11', 'UL281649791964SJ374949375892LE', '2022-04-12 21:32:42', '2022-04-12 21:32:42'),
(702, 'TABLETHP', '192.168.0.11', 'FW281649792012CO49107236480780RU', '2022-04-12 21:33:32', '2022-04-12 21:33:32'),
(703, 'TAB2_KARDIO', '192.168.0.15', 'WW311649793438DQ9165991737520QY', '2022-04-12 21:57:18', '2022-04-12 21:57:18'),
(704, 'TAB2_KARDIO', '192.168.0.15', 'DF21649793462GH852793390784UT', '2022-04-12 21:57:42', '2022-04-12 21:57:42'),
(705, 'TAB2_KARDIO', '192.168.0.15', 'UG551649793480PN4390738641400ZM', '2022-04-12 21:58:00', '2022-04-12 21:58:00'),
(706, 'MOBKA_L', '192.168.0.18', 'OI171649795602TY45140232626170PF', '2007-04-26 00:03:51', '2007-04-26 00:03:51'),
(707, 'MOBKA_L', '192.168.0.18', 'WJ81649795622RB8662692233636EA', '2007-04-26 00:04:11', '2007-04-26 00:04:11'),
(708, 'DESKTOP-2KPJSHU', '127.0.0.1', 'XZ541649795851OS1428046529467RX', '2022-04-12 22:37:31', '2022-04-12 22:37:31'),
(709, 'DESKTOP-2KPJSHU', '192.168.0.16', 'XG301649795872BN9114848162848KI', '2022-04-12 22:37:52', '2022-04-12 22:37:52'),
(710, 'DESKTOP-2KPJSHU', '192.168.0.16', 'KJ911649796145RE6294038380265OB', '2022-04-12 22:42:25', '2022-04-12 22:42:25'),
(711, 'SSM_TAB_LUDWIK', '192.168.0.19', 'XT841649796507MI3234645726647RR', '2022-04-12 20:03:04', '2022-04-12 20:03:04'),
(712, 'DESKTOP-2KPJSHU', '127.0.0.1', 'SF101649859901RB54102291313862AZ', '2022-04-13 16:25:00', '2022-04-13 16:25:00'),
(713, 'DESKTOP-2KPJSHU', '127.0.0.1', 'ED431649859914KH45150137252174SI', '2022-04-13 16:25:14', '2022-04-13 16:25:14'),
(714, 'Dedal', '127.0.0.1', 'UF741649859931HD14160036413307ZM', '2022-04-13 16:25:31', '2022-04-13 16:25:31'),
(715, 'Dedal', '127.0.0.1', 'XB791649863878DK2082493193900KL', '2022-04-13 17:31:18', '2022-04-13 17:31:18'),
(716, 'Dedal', '127.0.0.1', 'IM411649864370TR11127039556490HX', '2022-04-13 17:39:30', '2022-04-13 17:39:30'),
(717, 'Dedal', '127.0.0.1', 'HP891649864521PO15160036858537RY', '2022-04-13 17:42:01', '2022-04-13 17:42:01'),
(718, 'Dedal', '127.0.0.1', 'IG801649867193KV433299734386PH', '2022-04-13 18:26:33', '2022-04-13 18:26:33'),
(719, 'Dedal', '127.0.0.1', 'SI971649868016LV4098992080960KJ', '2022-04-13 18:40:16', '2022-04-13 18:40:16'),
(720, 'Dedal', '127.0.0.1', 'EH301649868027BX61141888650322XQ', '2022-04-13 18:40:27', '2022-04-13 18:40:27'),
(721, 'Dedal', '127.0.0.1', 'RQ341649868191CS9729697627438UR', '2022-04-13 18:43:11', '2022-04-13 18:43:11'),
(722, 'Dedal', '127.0.0.1', 'CM461649869347HS96110541246249GY', '2022-04-13 19:02:27', '2022-04-13 19:02:27'),
(723, 'Dedal', '127.0.0.1', 'MR491649869586RU2123740218950DI', '2022-04-13 19:06:26', '2022-04-13 19:06:26'),
(724, 'Dedal', '127.0.0.1', 'WZ991649870261KK52160037415317KD', '2022-04-13 19:17:41', '2022-04-13 19:17:41'),
(725, 'Dedal', '127.0.0.1', 'EW601649870351HK30125390146676WZ', '2022-04-13 19:19:11', '2022-04-13 19:19:11'),
(726, 'Dedal', '127.0.0.1', 'RK121649870474GA33120440544602VH', '2022-04-13 19:21:14', '2022-04-13 19:21:14'),
(727, 'Dedal', '127.0.0.1', 'UQ571649870874NW55127040057298EJ', '2022-04-13 19:27:54', '2022-04-13 19:27:54'),
(728, 'Dedal', '127.0.0.1', 'LC441649870968IT5437947032264NK', '2022-04-13 19:29:28', '2022-04-13 19:29:28'),
(729, 'Dedal', '127.0.0.1', 'NV231649871207IU46160037507079DU', '2022-04-13 19:33:27', '2022-04-13 19:33:27'),
(730, 'Dedal', '127.0.0.1', 'MM811649871439TU5736297171658ZA', '2022-04-13 19:37:19', '2022-04-13 19:37:19'),
(731, 'Dedal', '127.0.0.1', 'HA191649871563BZ7444546532201XR', '2022-04-13 19:39:23', '2022-04-13 19:39:23'),
(732, 'DESKTOP-2KPJSHU', '127.0.0.1', 'JJ911649873828KQ5416498738280LB', '2022-04-13 20:17:08', '2022-04-13 20:17:08'),
(733, 'Dedal', '127.0.0.1', 'JF951649875031PV4874244376395RA', '2022-04-13 20:37:11', '2022-04-13 20:37:11'),
(734, 'Dedal', '127.0.0.1', 'MF751649875406NI8934647383526WZ', '2022-04-13 20:43:26', '2022-04-13 20:43:26'),
(735, 'DESKTOP-2KPJSHU', '127.0.0.1', 'HJ671649879801TX5184143869851RO', '2022-04-13 21:56:41', '2022-04-13 21:56:41'),
(736, 'Dedal', '127.0.0.1', 'ZS81649883868DC36131990709440LD', '2022-04-13 23:04:28', '2022-04-13 23:04:28'),
(737, 'Dedal', '127.0.0.1', 'ZC441649884225GP3254446179425VU', '2022-04-13 23:10:25', '2022-04-13 23:10:25'),
(738, 'Dedal', '127.0.0.1', 'HJ71649885320BZ2352796330240MN', '2022-04-13 23:28:40', '2022-04-13 23:28:40'),
(739, 'Dedal', '127.0.0.1', 'EF561649886004KP7085794072208BO', '2022-04-13 23:40:04', '2022-04-13 23:40:04'),
(740, 'Dedal', '127.0.0.1', 'QQ81649886190UF9618148748090EP', '2022-04-13 23:43:10', '2022-04-13 23:43:10'),
(741, 'Dedal', '127.0.0.1', 'AG201649886365SN449899318190XX', '2022-04-13 23:46:05', '2022-04-13 23:46:05'),
(742, 'Dedal', '127.0.0.1', 'EA91649886633VN19150139683603PE', '2022-04-13 23:50:33', '2022-04-13 23:50:33'),
(743, 'Dedal', '127.0.0.1', 'RE191649886791TI82143540150817YL', '2022-04-13 23:53:11', '2022-04-13 23:53:11'),
(744, 'Dedal', '127.0.0.1', 'LG1001649886795KU1095693434110FK', '2022-04-13 23:53:15', '2022-04-13 23:53:15'),
(745, 'Dedal', '127.0.0.1', 'OW541649886921OP9087444006813AG', '2022-04-13 23:55:21', '2022-04-13 23:55:21'),
(746, 'Dedal', '127.0.0.1', 'UX891649886971KO40146839940419OI', '2022-04-13 23:56:10', '2022-04-13 23:56:10'),
(747, 'Dedal', '127.0.0.1', 'KS361649887530RJ4154446288490MK', '2022-04-14 00:05:30', '2022-04-14 00:05:30'),
(748, 'Dedal', '127.0.0.1', 'IH811649887724RJ5079194610752RH', '2022-04-14 00:08:44', '2022-04-14 00:08:44'),
(749, 'Dedal', '127.0.0.1', 'DO291649887801IT8429697980418UT', '2022-04-14 00:10:01', '2022-04-14 00:10:01'),
(750, 'Dedal', '127.0.0.1', 'XF781649947422QY23105596635008BB', '2022-04-14 16:43:41', '2022-04-14 16:43:41'),
(751, 'DESKTOP-2KPJSHU', '127.0.0.1', 'HD51649947537FM37123746065275PE', '2022-04-14 16:45:37', '2022-04-14 16:45:37'),
(752, 'DESKTOP-2KPJSHU', '127.0.0.1', 'MX911649950158FB37103946859954DS', '2022-04-14 17:29:18', '2022-04-14 17:29:18'),
(753, 'Dedal', '127.0.0.1', 'VW641649950335NC1885797417420FY', '2022-04-14 17:32:15', '2022-04-14 17:32:15'),
(754, 'Dedal', '127.0.0.1', 'FL451649950476PH10064348068564JX', '2022-04-14 17:34:36', '2022-04-14 17:34:36'),
(755, 'Dedal', '127.0.0.1', 'MY621649950816LE38158395278336FF', '2022-04-14 17:40:16', '2022-04-14 17:40:16'),
(756, 'Dedal', '127.0.0.1', 'YL461649950867NS6097347101153RN', '2022-04-14 17:41:07', '2022-04-14 17:41:07'),
(757, 'Dedal', '127.0.0.1', 'NW371649951203GE919799414436UU', '2022-04-14 17:46:43', '2022-04-14 17:46:43'),
(758, 'Dedal', '127.0.0.1', 'GV921649951229UV1797347122511EE', '2022-04-14 17:47:09', '2022-04-14 17:47:09'),
(759, 'Dedal', '127.0.0.1', 'MB981649951254GN9158395320384SE', '2022-04-14 17:47:34', '2022-04-14 17:47:34'),
(760, 'Dedal', '127.0.0.1', 'OR141649951314ML719799415768MR', '2022-04-14 17:48:34', '2022-04-14 17:48:34'),
(761, 'Dedal', '127.0.0.1', 'TI341649951367SK99146845671663TV', '2022-04-14 17:49:27', '2022-04-14 17:49:27'),
(762, 'DESKTOP-2KPJSHU', '127.0.0.1', 'ZB441649951897ZB25143545815039TT', '2022-04-14 17:58:17', '2022-04-14 17:58:17'),
(763, 'Dedal', '127.0.0.1', 'CD591649952298MI91102297042476BW', '2022-04-14 18:04:58', '2022-04-14 18:04:58'),
(764, 'DESKTOP-2KPJSHU', '127.0.0.1', 'IO251649952299SU38136946040817DM', '2022-04-14 18:04:59', '2022-04-14 18:04:59'),
(765, 'Dedal', '127.0.0.1', 'DT261649967333ZK20131997386640JS', '2022-04-14 22:15:33', '2022-04-14 22:15:33'),
(766, 'Dedal', '127.0.0.1', 'QO521649967356QY3129699412408YT', '2022-04-14 22:15:56', '2022-04-14 22:15:56'),
(767, 'DESKTOP-2KPJSHU', '127.0.0.1', 'VC761649969438UJ241249235950UA', '2022-04-14 22:50:38', '2022-04-14 22:50:38'),
(768, 'DESKTOP-2KPJSHU', '127.0.0.1', 'KV341649969763WK381649969763AZ', '2022-04-14 22:56:03', '2022-04-14 22:56:03'),
(769, 'DESKTOP-2KPJSHU', '127.0.0.1', 'MA471649969910HC94161697051180VS', '2022-04-14 22:58:30', '2022-04-14 22:58:30'),
(770, 'DESKTOP-2KPJSHU', '127.0.0.1', 'KF821649969916OH1542899217816VX', '2022-04-14 22:58:36', '2022-04-14 22:58:36'),
(771, 'DESKTOP-2KPJSHU', '127.0.0.1', 'QE821649973966MT2395698490028PZ', '2022-04-15 00:06:06', '2022-04-15 00:06:06'),
(772, 'Dedal', '127.0.0.1', 'TA531650000549JY5877550025803WI', '2022-04-15 07:29:09', '2022-04-15 07:29:09'),
(773, 'Dedal', '127.0.0.1', 'YM701650000577PS6687450030581EJ', '2022-04-15 07:29:37', '2022-04-15 07:29:37'),
(774, 'Komputer-Tomka', '127.0.0.1', 'ZW141650000596KP5292400033376JD', '2022-04-15 07:29:56', '2022-04-15 07:29:56'),
(775, 'Komputer-Tomka', '127.0.0.1', 'HL641650001498GK7028050025466DZ', '2022-04-15 07:44:58', '2022-04-15 07:44:58'),
(776, 'Komputer-Tomka', '127.0.0.1', 'IE371650001523RH8718150016753XJ', '2022-04-15 07:45:23', '2022-04-15 07:45:23'),
(777, 'Komputer-Tomka', '127.0.0.1', 'AE581650001877ER3156100063818SZ', '2022-04-15 07:51:17', '2022-04-15 07:51:17'),
(778, 'Komputer-Tomka', '127.0.0.1', 'OR981650002473CL1166000098920BG', '2022-04-15 08:01:13', '2022-04-15 08:01:13'),
(779, 'Komputer-Tomka', '127.0.0.1', 'OL621650002479WJ6856100084286RU', '2022-04-15 08:01:19', '2022-04-15 08:01:19'),
(780, 'Komputer-Tomka', '127.0.0.1', 'BA381650002485XQ3110550166495QP', '2022-04-15 08:01:25', '2022-04-15 08:01:25'),
(781, 'Komputer-Tomka', '127.0.0.1', 'YM871650002547YS6480850124803AY', '2022-04-15 08:02:27', '2022-04-15 08:02:27'),
(782, 'Komputer-Tomka', '127.0.0.1', 'DB801650003762PW5187450199386DQ', '2022-04-15 08:22:42', '2022-04-15 08:22:42'),
(783, 'Komputer-Tomka', '127.0.0.1', 'PA181650004929AT50115500345030WE', '2022-04-15 08:42:09', '2022-04-15 08:42:09'),
(784, 'Komputer-Tomka', '127.0.0.1', 'CC61650009304HY3772600409376EX', '2022-04-15 09:55:04', '2022-04-15 09:55:04'),
(785, 'Komputer-Tomka', '127.0.0.1', 'WS641650009311KP6195700540038LB', '2022-04-15 09:55:11', '2022-04-15 09:55:11'),
(786, 'Komputer-Tomka', '127.0.0.1', 'NP501650009314FC7077550437758BO', '2022-04-15 09:55:14', '2022-04-15 09:55:14'),
(787, 'Komputer-Tomka', '127.0.0.1', 'KX151650010326UY9759400371736EC', '2022-04-15 10:12:06', '2022-04-15 10:12:06'),
(788, 'Komputer-Tomka', '127.0.0.1', 'TP81650010539BC6037950242397UU', '2022-04-15 10:15:38', '2022-04-15 10:15:38'),
(789, 'Komputer-Tomka', '127.0.0.1', 'JX41650010570BZ4964350412230TX', '2022-04-15 10:16:10', '2022-04-15 10:16:10'),
(790, 'Komputer-Tomka', '127.0.0.1', 'PK641650010607IJ73112200721276CU', '2022-04-15 10:16:47', '2022-04-15 10:16:47'),
(791, 'Komputer-Tomka', '127.0.0.1', 'XI571650010814XL7546200302792CM', '2022-04-15 10:20:14', '2022-04-15 10:20:14'),
(792, 'Komputer-Tomka', '127.0.0.1', 'VZ381650010912NX6339600261888HG', '2022-04-15 10:21:52', '2022-04-15 10:21:52'),
(793, 'Komputer-Tomka', '127.0.0.1', 'OV171650010956KS6569300460152CY', '2022-04-15 10:22:36', '2022-04-15 10:22:36'),
(794, 'Komputer-Tomka', '127.0.0.1', 'QW601650011038LL24103950695394VQ', '2022-04-15 10:23:58', '2022-04-15 10:23:58'),
(795, 'Komputer-Tomka', '127.0.0.1', 'DQ141650011069TT45133650896589LJ', '2022-04-15 10:24:29', '2022-04-15 10:24:29'),
(796, 'Komputer-Tomka', '127.0.0.1', 'LU761650011113CK2223100155582PA', '2022-04-15 10:25:13', '2022-04-15 10:25:13'),
(797, 'Komputer-Tomka', '127.0.0.1', 'YX411650011864CF2690750652520SH', '2022-04-15 10:37:44', '2022-04-15 10:37:44'),
(798, 'Komputer-Tomka', '127.0.0.1', 'VE941650011990PS4428050203830ZZ', '2022-04-15 10:39:50', '2022-04-15 10:39:50'),
(799, 'Komputer-Tomka', '127.0.0.1', 'RE1001650012238RW6497350722042IQ', '2022-04-15 10:43:58', '2022-04-15 10:43:58'),
(800, 'Komputer-Tomka', '127.0.0.1', 'VO401650012340TB38165001234000QP', '2022-04-15 10:45:40', '2022-04-15 10:45:40'),
(801, 'Dedal', '127.0.0.1', 'EM271650012467QK30115500872690QP', '2022-04-15 10:47:47', '2022-04-15 10:47:47'),
(802, 'Komputer-Tomka', '127.0.0.1', 'PV691650012490TJ64102300774380EL', '2022-04-15 10:48:10', '2022-04-15 10:48:10'),
(803, 'Komputer-Tomka', '127.0.0.1', 'MG311650012964RR662700492632HM', '2022-04-15 10:56:04', '2022-04-15 10:56:04'),
(804, 'Komputer-Tomka', '127.0.0.1', 'HC551650013529FJ10016500135290ID', '2022-04-15 11:05:29', '2022-04-15 11:05:29'),
(805, 'Komputer-Tomka', '127.0.0.1', 'OY91650013539YY55133651096659XM', '2022-04-15 11:05:39', '2022-04-15 11:05:39'),
(806, 'Komputer-Tomka', '127.0.0.1', 'BU711650013551MU7161701327998VV', '2022-04-15 11:05:51', '2022-04-15 11:05:51'),
(807, 'Komputer-Tomka', '127.0.0.1', 'XE731650013702FI4089100739908VW', '2022-04-15 11:08:22', '2022-04-15 11:08:22'),
(808, 'Komputer-Tomka', '127.0.0.1', 'FA601650016355WI9575900752330BC', '2022-04-15 11:52:35', '2022-04-15 11:52:35'),
(809, 'Komputer-Tomka', '127.0.0.1', 'UX181650016470TW242900428220OJ', '2022-04-15 11:54:30', '2022-04-15 11:54:30'),
(810, 'Komputer-Tomka', '127.0.0.1', 'TC451650016499WA8111550115493FG', '2022-04-15 11:54:59', '2022-04-15 11:54:59'),
(811, 'Komputer-Tomka', '127.0.0.1', 'FS471650016524ZZ6654450545292ES', '2022-04-15 11:55:24', '2022-04-15 11:55:24'),
(812, 'Komputer-Tomka', '127.0.0.1', 'RO531650016581KP4585800862212HZ', '2022-04-15 11:56:21', '2022-04-15 11:56:21'),
(813, 'Komputer-Tomka', '127.0.0.1', 'ZE621650016690ZT4054450550770QX', '2022-04-15 11:58:10', '2022-04-15 11:58:10'),
(814, 'Komputer-Tomka', '127.0.0.1', 'FK881650016807IF90153451563051SA', '2022-04-15 12:00:07', '2022-04-15 12:00:07'),
(815, 'Komputer-Tomka', '127.0.0.1', 'XM301650016993YB3395700985594NK', '2022-04-15 12:03:13', '2022-04-15 12:03:13'),
(816, 'Komputer-Tomka', '127.0.0.1', 'DG141650017046RB4723100238644QM', '2022-04-15 12:04:06', '2022-04-15 12:04:06'),
(817, 'Komputer-Tomka', '127.0.0.1', 'MX251650019438IG31143551691106DB', '2022-04-15 12:43:58', '2022-04-15 12:43:58'),
(818, 'Komputer-Tomka', '127.0.0.1', 'PZ231650019478LU9140251655630NC', '2022-04-15 12:44:38', '2022-04-15 12:44:38'),
(819, 'Komputer-Tomka', '127.0.0.1', 'IZ971650019769TY17158401897824QI', '2022-04-15 12:49:29', '2022-04-15 12:49:29'),
(820, 'Komputer-Tomka', '127.0.0.1', 'IQ941650019907BN63141901712002RX', '2022-04-15 12:51:47', '2022-04-15 12:51:47'),
(821, 'Komputer-Tomka', '127.0.0.1', 'FL391650020313JI5216500203130YC', '2022-04-15 12:58:33', '2022-04-15 12:58:33'),
(822, 'Komputer-Tomka', '127.0.0.1', 'OB831650020759RI9333000415180XZ', '2022-04-15 13:05:58', '2022-04-15 13:05:58'),
(823, 'Komputer-Tomka', '127.0.0.1', 'XJ981650020885IZ8082501044250YU', '2022-04-15 13:08:05', '2022-04-15 13:08:05'),
(824, 'Komputer-Tomka', '127.0.0.1', 'AC11650021091EJ1213200168728ER', '2022-04-15 13:11:31', '2022-04-15 13:11:31'),
(825, 'Komputer-Tomka', '127.0.0.1', 'VJ181650021178XO74153451969554JE', '2022-04-15 13:12:58', '2022-04-15 13:12:58'),
(826, 'Dedal', '127.0.0.1', 'CJ891650021210ER5280851039290VR', '2022-04-15 13:13:30', '2022-04-15 13:13:30'),
(827, 'Dedal', '127.0.0.1', 'FH601650044466UL3341251111650IF', '2022-04-15 19:41:06', '2022-04-15 19:41:06');

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
(1, 2, '2045-06-19 07:58:54', '2045-06-19 07:59:20', '2045-06-19 07:59:20', 2, 1, 0),
(2, 2, '2045-06-19 07:59:42', '2045-06-19 08:00:05', '2045-06-19 08:00:05', 2, 1, 0),
(3, 1, '2045-06-19 07:59:57', '', '2045-06-19 07:59:57', 1, 1, 0),
(4, 2, '2045-06-19 08:01:00', '', '2045-06-19 08:01:00', 2, 1, 0),
(5, 2, '2045-06-19 08:01:00', '', '2045-06-19 08:01:00', 2, 1, 0),
(6, 3, '2045-06-19 08:08:16', '2045-06-19 08:10:04', '2045-06-19 08:10:04', 8, 1, 0),
(7, 3, '2045-06-19 08:10:22', '2045-06-19 08:16:53', '2045-06-19 08:16:53', 2, 1, 0),
(8, 4, '2045-06-19 08:17:13', '2045-06-19 08:18:41', '2045-06-19 08:18:41', 2, 1, 0),
(9, 5, '2045-06-19 08:19:18', '', '2045-06-19 08:19:18', 2, 1, 0),
(10, 6, '2045-06-19 08:20:19', '', '2045-06-19 08:20:19', 2, 1, 0),
(11, 7, '2045-06-19 08:25:07', '', '2045-06-19 08:25:07', 2, 1, 0),
(12, 8, '2045-06-19 08:28:58', '', '2045-06-19 08:28:58', 2, 1, 0),
(13, 9, '2045-06-19 08:44:25', '', '2045-06-19 08:44:25', 2, 1, 0),
(14, 10, '2045-06-19 08:54:05', '', '2045-06-19 08:54:05', 2, 1, 0),
(15, 11, '2045-06-19 16:38:11', '2045-06-19 16:44:36', '2045-06-19 16:44:36', 2, 1, 0),
(16, 12, '2045-06-19 16:46:05', '', '2045-06-19 16:46:05', 2, 1, 0),
(17, 13, '2045-06-19 16:53:56', '2045-06-19 16:55:34', '2045-06-19 16:55:34', 2, 1, 0),
(18, 14, '2045-06-19 16:56:21', '', '2045-06-19 16:56:21', 2, 1, 0),
(19, 15, '2045-06-19 16:57:32', '', '2045-06-19 16:57:32', 2, 1, 0),
(20, 16, '2045-06-19 17:04:32', '', '2045-06-19 17:04:32', 2, 1, 0),
(21, 17, '2045-06-19 17:08:00', '2045-06-19 17:10:10', '2045-06-19 17:10:10', 2, 1, 0),
(22, 1, '2045-06-19 17:10:36', '', '2045-06-19 17:10:36', 1, 1, 0),
(23, 18, '2045-06-19 17:12:18', '2045-06-19 17:12:51', '2045-06-19 17:12:51', 2, 1, 0),
(24, 19, '2045-06-19 17:16:32', '2045-06-19 17:16:53', '2045-06-19 17:16:53', 2, 1, 0),
(25, 20, '2045-06-19 17:19:21', '2045-06-19 17:19:42', '2045-06-19 17:19:42', 2, 1, 0),
(26, 22, '2045-06-19 17:21:07', '2045-06-19 17:21:21', '2045-06-19 17:21:21', 2, 1, 0),
(27, 23, '2045-06-19 17:21:52', '2045-06-19 17:22:07', '2045-06-19 17:22:07', 2, 1, 0),
(28, 24, '2045-06-19 17:23:12', '2045-06-19 17:23:27', '2045-06-19 17:23:27', 2, 1, 0),
(29, 25, '2045-06-19 17:27:09', '2045-06-19 17:27:30', '2045-06-19 17:27:30', 2, 1, 0),
(30, 26, '2045-06-19 17:28:40', '2045-06-19 17:28:55', '2045-06-19 17:28:55', 2, 1, 0),
(31, 27, '2045-06-19 17:30:33', '2045-06-19 17:30:48', '2045-06-19 17:30:48', 2, 1, 0),
(32, 28, '2045-06-19 17:32:45', '2045-06-19 17:33:00', '2045-06-19 17:33:00', 2, 1, 0),
(33, 28, '2045-06-19 17:33:21', '2045-06-19 17:34:26', '2045-06-19 17:34:26', 2, 1, 0),
(34, 29, '2045-06-19 18:57:27', '2045-06-19 19:02:34', '2045-06-19 19:02:34', 2, 1, 0),
(35, 30, '2045-06-19 19:02:54', '2045-06-19 19:09:33', '2045-06-19 19:09:33', 2, 1, 0),
(36, 31, '2045-06-19 19:10:42', '2045-06-19 19:16:07', '2045-06-19 19:16:07', 2, 1, 0),
(37, 32, '2045-06-19 19:19:55', '2045-06-19 19:34:23', '2045-06-19 19:34:23', 2, 1, 0),
(38, 32, '2045-06-19 19:34:56', '', '2045-06-19 19:34:56', 2, 1, 0),
(39, 42, '2045-06-19 21:07:14', '2045-06-19 21:10:06', '2045-06-19 21:10:06', 2, 1, 0),
(40, 43, '2045-06-19 21:12:19', '', '2045-06-19 21:12:19', 2, 1, 0),
(41, 44, '2045-06-19 21:14:20', '2045-07-02 05:28:44', '2045-07-02 05:28:44', 2, 1, 1),
(42, 45, '2045-06-19 21:18:34', '', '2045-06-19 21:18:34', 2, 1, 0),
(43, 46, '2045-06-19 21:20:18', '', '2045-06-19 21:20:18', 2, 1, 0),
(44, 46, '2045-06-19 22:18:35', '', '2045-06-19 22:18:35', 2, 1, 0),
(45, 74, '2045-06-19 23:46:08', '', '2045-06-19 23:46:08', 2, 1, 0),
(46, 78, '2045-06-20 00:09:54', '', '2045-06-20 00:09:54', 2, 1, 0),
(47, 77, '2045-06-20 00:10:00', '', '2045-06-20 00:10:00', 1, 0, 0),
(48, 78, '2045-06-20 00:14:16', '', '2045-06-20 00:14:16', 2, 1, 0),
(49, 80, '2045-06-20 00:18:59', '', '2045-06-20 00:18:59', 2, 1, 0),
(50, 82, '2045-06-20 00:22:34', '', '2045-06-20 00:22:34', 2, 1, 0),
(51, 83, '2045-06-20 00:27:44', '', '2045-06-20 00:27:44', 2, 1, 0),
(52, 83, '2045-06-20 00:32:20', '', '2045-06-20 00:32:20', 2, 1, 0),
(53, 84, '2045-06-20 00:41:34', '', '2045-06-20 00:41:34', 2, 1, 0),
(54, 85, '2045-06-20 00:44:53', '', '2045-06-20 00:44:53', 10, 0, 0),
(55, 86, '2045-06-20 16:35:27', '', '2045-06-20 16:35:27', 8, 0, 0),
(56, 735, '2045-07-01 04:28:12', '', '2045-07-01 04:28:12', 2, 1, 0),
(57, 770, '2045-07-02 05:29:58', '', '2045-07-02 05:29:58', 2, 0, 0);

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
(1, 'SERWEROWNIA GRACE', 'SerGra', 0, '', 'Serwerownia zespołu AI'),
(2, 'MOSTEK DOWODZENIA', 'MosDow', 0, '', 'Mostek kapitański - dowodzenia'),
(3, 'LABORATORIUM', 'Lab', 0, '', 'Moduł badawczy laboratorium i oranżeria'),
(4, 'NAPĘD GŁÓWNY', 'NapGlo', 0, '', 'Moduł napędu głównego'),
(5, 'NAPĘD JONOWY', 'NapJon', 0, '', 'Moduł napędu jonowego'),
(6, 'NAPĘD MANEWRUJĄCY', 'NapMan', 0, '', 'Moduł napędów manewrujących'),
(7, 'ZASILANIE GŁÓWNE', 'ZasGlo', 0, '', 'Moduł zasilania głównego'),
(8, 'REAKTOR ATOMOWY NR 1', 'ReaAto1', 0, '', 'Zespół reaktora atomowego nr 1'),
(9, 'REAKTOR ATOMOWY NR 2', 'ReaAto2', 0, '', 'Zespół reaktora atomowego nr 2'),
(10, 'MAGAZYN SERWISOWY', 'MagSer', 0, '', 'Zespół naprawczy'),
(11, 'ZASILANIE AWARYJNE', 'ZasAwa', 0, '', 'Moduł zasilania rezerwowego'),
(12, 'BATERIE ATOMOWE', 'BatAto', 0, '', 'Moduł rezerw energetycznych'),
(13, 'SYSTEM PODTRZYMYWANIA ŻYCIA', 'SysZyc', 0, '', 'systemy utrzymujące życie na statku'),
(14, 'GRACE', 'Grace', 0, '', 'moduły logiczne Grace'),
(15, 'POMIESZCZENIE SOCIALNE', 'PomSoc', 0, '', 'pomieszczenie załogi'),
(16, 'ZESPÓŁ OBSERWACYJNY', 'ZesObs', 0, '', 'pomieszczenie przyrządów obserwacyjnych i nawigacyjnych '),
(17, 'ZESPÓŁ SNU', 'ZesSnu', 0, '', ''),
(18, 'ZESPÓŁ RADIOWY', 'ZesRad', 0, '', 'pomieszczenie przyrządów nadawczych i odbiorczych'),
(19, 'SKAFANDRY KOSMICZNE', 'SkaKos', 0, '', 'Skafandry do wyjścia w kosmos');

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
(1, '1644743771H5V129934757909', 'testowa', 2, '2022-03-04 21:28:48', 0, 1, 0),
(2, '1644743786H6Q27960644362', 'testowa 3', 3, '2022-04-10 15:27:21', 0, 1, 0),
(3, '1644743790H7N121711040460', 'testowa 4', 4, '2022-03-04 18:36:52', 0, 0, 0),
(4, '1644743790H8C52631801280', 'testowa 5', 2, '2022-04-10 12:53:31', 2, 0, 1),
(33, '1645281249H4D60875406213', 'test ostateczny nowej notatki', 5, '2022-03-04 21:19:05', 0, 1, 0),
(34, '1645281533H33P60875416721', 'dowykonania.sufix', 2, '2022-04-10 12:53:50', 0, 0, 1),
(35, '1645288563H34C21388751319', '//doskasowaniathis.zalogujOsoba({zalogowany:2,imie', 2, '2022-04-10 13:06:28', 0, 0, 1),
(36, '1645288932H35O31260489708', '//doskasowaniathis.zalogujOsoba({zalogowany:2,imie', 2, '2022-03-04 21:25:29', 2, 0, 0),
(37, '1645391490H36D14808523410', 'WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW', 2, '2022-04-10 15:13:28', 1, 0, 1),
(53, '1646490363H52I21404374719', 'nowy czas', 2, '2022-04-10 12:46:20', 0, 0, 1),
(54, '1646500108H53E69153004536', 'test', 2, '2022-04-10 17:38:26', 0, 1, 1),
(55, '1646500348H54Q49395010440', 'test1', 2, '2022-03-05 19:09:59', 1, 0, 0),
(56, '1646555315P55N151483088980', 'Dave pisze', 10, '2022-04-10 12:55:16', 0, 0, 1);

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
(1, 1, 0, 1, '2022-03-05 08:59:43', 'treść notatki 1 w wersji 0'),
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
(40, 37, 0, 0, '2022-03-04 21:30:19', ''),
(41, 1, 9, 0, '2022-03-05 08:28:39', 'treść notatki 1 w wersji 8 z 7\n1\n2\n3\n4\n5\n6\n7\n8\n9\n0\n1\n2\n34\n5\n67\n8\n9\n0\n-\nq\nwe\nr\nt\ny\nuii\n\nopp\na\ns\nd\nfg\nh\njk\nl\n;;\nZ\nasd\ns\nfsg\nh\n\nqa\na\n\na\n'),
(42, 1, 10, 0, '2022-02-24 17:13:52', 'treść notatki 1 w wersji 8 z 7\n1\n2\n3\n4\n5\n6\n7\n8\n9\n0\n'),
(43, 1, 11, 0, '2022-02-24 17:18:07', 'treść notatki 1 w wersji 8 z 7\n1\n2\n3\n4\n5\n6\n7\n8\n9\n'),
(44, 1, 12, 0, '2022-03-04 22:17:39', 'treść notatki 1 w wersji 8 z 7\n1\n2\n3\n4\n5\n6'),
(45, 38, 0, 0, '2022-03-02 17:29:19', ''),
(46, 39, 0, 0, '2022-03-02 17:29:20', ''),
(47, 40, 0, 0, '2022-03-02 17:29:21', ''),
(48, 41, 0, 0, '2022-03-02 17:29:22', ''),
(49, 42, 0, 0, '2022-03-02 17:29:23', ''),
(50, 43, 0, 0, '2045-05-22 23:06:21', ''),
(51, 44, 0, 0, '2045-05-22 23:06:21', ''),
(52, 45, 0, 0, '2045-05-22 23:06:21', ''),
(53, 46, 0, 0, '2045-05-22 23:06:21', ''),
(54, 47, 0, 0, '2045-05-22 23:06:21', ''),
(55, 48, 0, 0, '2045-05-22 23:09:45', ''),
(56, 49, 0, 0, '2045-05-22 23:09:45', ''),
(57, 50, 0, 0, '2045-05-22 23:09:45', ''),
(58, 51, 0, 0, '2045-05-22 23:09:45', ''),
(59, 52, 0, 0, '2045-05-22 23:09:45', ''),
(60, 53, 0, 0, '2045-05-22 23:12:01', 'w0 mcz'),
(61, 54, 0, 0, '2045-05-23 01:54:25', 'wersja 0\nhehe\nfffff'),
(62, 55, 0, 0, '2045-05-23 01:58:25', ''),
(63, 55, 1, 0, '2045-05-23 02:52:01', ''),
(64, 55, 2, 1, '2045-05-23 02:52:13', ''),
(65, 54, 1, 1, '2045-06-19 21:19:58', 'cześć\neeqqq'),
(66, 3, 2, 0, '2045-06-19 21:23:09', ''),
(67, 55, 3, 0, '2045-06-20 01:27:26', ''),
(68, 54, 2, 0, '2045-05-23 17:05:55', 'qqqqqwww\nsssss'),
(69, 56, 0, 0, '2045-05-23 17:14:33', 'pisze'),
(70, 35, 1, 0, '', 'qqqqqqqqq\nasedf\newertwe\n'),
(71, 35, 1, 0, '', 'qqqqqqqqq\nasedf\newertwe\n'),
(72, 35, 1, 0, '', 'qqqqqqqqq\nasedf\newertwe\n'),
(73, 35, 1, 0, '', 'qqqqqqqqq\nasedf\newertwe\n'),
(74, 35, 1, 0, '', 'qqqqqqqqq\nasedf\newertwe\n'),
(75, 1, 13, 0, '2045-06-08 03:33:15', 'treść notatki 1 w wersji 8 z 7\n1\n2\n3\n4\n5\n6\n7\n8\ntom'),
(76, 1, 14, 0, '2045-06-08 04:30:11', 'treść notatki 1 w wersji 1\ncześć\n12'),
(77, 53, 1, 0, '2045-07-01 04:34:54', 'w0 mcz\ncześć');

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
(1, 33, 2, '2022-02-23 19:00', 1),
(2, 3, 2, '2022-03-04 19:28:39', 0),
(3, 37, 6, '2022-02-24 21:33:10', 0),
(4, 37, 8, '2022-02-24 21:33:32', 0),
(5, 37, 5, '2022-03-04 19:28:48', 0),
(6, 37, 4, '2022-03-04 19:03:03', 0),
(18, 3, 3, '2022-03-04 19:28:39', 0),
(19, 3, 5, '2022-03-04 22:11:42', 0),
(20, 1, 3, '2022-03-04 21:29:52', 0),
(21, 1, 4, '2022-03-04 21:29:53', 0),
(22, 1, 5, '2022-03-04 21:29:54', 0),
(23, 1, 12, '2022-03-05 08:25:43', 0),
(24, 33, 12, '2022-03-05 10:48:38', 0),
(25, 53, 3, '2022-03-23 18:12:34', 0),
(26, 53, 4, '2022-03-23 18:16:29', 0),
(27, 53, 5, '2022-03-05 15:28:19', 0),
(28, 53, 6, '2022-03-05 15:28:20', 0),
(29, 53, 8, '2022-03-23 18:30:17', 0),
(30, 53, 10, '2022-03-05 15:28:21', 0),
(31, 53, 7, '2022-03-05 15:28:23', 0),
(32, 53, 9, '2022-03-05 15:28:23', 0),
(33, 53, 11, '2022-03-05 15:28:24', 0),
(34, 53, 1, '2022-03-05 15:28:24', 0),
(35, 53, 12, '2022-03-05 15:28:25', 0),
(36, 54, 3, '2022-03-23 18:21:04', 0),
(37, 54, 4, '2022-03-05 19:11:46', 0),
(38, 55, 3, '2022-03-05 19:12:53', 0),
(39, 55, 4, '2022-03-05 23:16:51', 0),
(40, 54, 5, '2022-03-06 09:28:05', 1),
(41, 56, 2, '2022-03-23 18:29:50', 0),
(42, 56, 12, '2022-03-06 09:28:41', 0),
(43, 56, 1, '2022-03-06 09:28:42', 0),
(44, 54, 8, '2022-03-23 18:21:39', 1),
(45, 56, 3, '2022-03-23 18:30:01', 1),
(46, 54, 10, '2022-03-23 18:26:19', 1),
(47, 34, 5, '', 0),
(48, 37, 10, '', 0),
(49, 37, 11, '', 0),
(50, 37, 7, '', 0),
(51, 37, 9, '', 0),
(52, 2, 2, '', 1),
(53, 54, 7, '', 0),
(54, 54, 9, '', 0);

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
(0, '', '0', '', '', '', '', '', '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 9, 7, 11, 13),
(1, '', '110', 'Dedal', '', 'statek', '', '', '', 'S', 2, '!@#', '!@#', 0, 1, 0, 1, 1, 1, 0, '', '2022-03-31 17:24:08', '', 'Dedal jest tylko jeden', 0, 0, 0, 1, 1, 1, 0, 9, 7, 11, 13),
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
(12, '', '120', 'GRACE', ' ', 'SI', '', '', '', 'S', 2, '123', '123', 0, 0, 0, 1, 1, 1, 1, '', '', '', 'Witam Grace', 0, 1, 0, 1, 1, 1, 0, 9, 7, 11, 13),
(13, '', '130', '?????', '???', 'Narośl Weira', '', '', '', 'S', 3, '123', '123', 0, 0, 0, 1, 1, 1, 1, '', '', '', 'Witam', 0, 0, 0, 1, 1, 1, 0, 9, 7, 11, 13),
(15, '', '140', 'NASA', ' ', 'Ziemia', '', '', '', 'S', 2, '123', '123', 0, 0, 0, 1, 1, 1, 1, '', '', '', 'Witam Grace', 0, 0, 0, 1, 1, 1, 0, 9, 7, 11, 13);

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
(58, 'naprawa', 1, 0, 0, 58, '1000', 'naprawa_1', 'wykonanie naprawa na zespole'),
(59, 'hasło', 1, 0, 0, 59, '1000', 'haslo_1', 'zmiana hasła'),
(60, 'hasło', 1, 0, 0, 59, '1000', 'haslo_0', 'zmiana hasła'),
(61, 'polecenie', 1, 1, 0, 61, '1000', 'polecenie_1', 'polecenia dla dedala'),
(62, 'wykonaj', 0, 0, 0, 61, '1000', 'polecenie_0', 'polecenia dla dedala'),
(63, 'dedal', 0, 0, 0, 61, '1000', 'polecenie_0', 'polecenia dla dedala');

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
(266, 47, 4, '2022-04-03 16:57:23', 1),
(267, 47, 5, '2022-04-03 16:57:23', 1),
(268, 47, 6, '2022-04-03 16:57:23', 1),
(269, 47, 7, '2022-04-03 16:57:23', 1),
(270, 47, 8, '2022-04-03 16:57:23', 1),
(271, 47, 9, '2022-04-03 16:57:23', 1),
(272, 47, 10, '2022-04-03 16:57:23', 1),
(273, 47, 11, '2022-04-03 16:57:23', 1),
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
(327, 19, 15, '2022-04-10 13:08:08', 0),
(328, 61, 2, '2022-04-15 07:29:43', 1),
(329, 61, 3, '2022-04-15 07:29:43', 1),
(330, 61, 4, '2022-04-15 07:29:43', 1),
(331, 61, 5, '2022-04-15 07:29:43', 1),
(332, 61, 6, '2022-04-15 07:29:43', 1),
(333, 61, 7, '2022-04-15 07:29:43', 1),
(334, 61, 8, '2022-04-15 07:29:43', 1),
(335, 61, 9, '2022-04-15 07:29:43', 1),
(336, 61, 10, '2022-04-15 07:29:43', 1),
(337, 61, 11, '2022-04-15 07:29:43', 1);

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
(6, 'wykryto usterkę', 0, 'uszkodzony');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `testylog`
--

CREATE TABLE `testylog` (
  `id` int(11) NOT NULL,
  `moduly` int(11) NOT NULL,
  `zespoly` int(11) NOT NULL,
  `uszkodzenia` int(11) NOT NULL,
  `czasstart` text COLLATE utf8_polish_ci NOT NULL,
  `czasend` text COLLATE utf8_polish_ci NOT NULL,
  `osoba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `testylog`
--

INSERT INTO `testylog` (`id`, `moduly`, `zespoly`, `uszkodzenia`, `czasstart`, `czasend`, `osoba`) VALUES
(0, 0, 0, 0, '2043-03-10 00:00:00', '2043-03-11 00:00:00', 1),
(1, 3, 1, 1, '2045-06-24 15:16:26', '2045-06-24 15:16:40', 2),
(2, 3, 6, 3, '2045-06-24 16:11:17', '2045-06-24 16:11:43', 2),
(3, 3, 3, 1, '2045-06-24 16:53:16', '2045-06-24 16:53:36', 2),
(4, 3, 6, 1, '2045-06-22 23:11:17', '2045-06-22 23:11:43', 2),
(5, 3, 3, 1, '2045-06-24 19:33:24', '2045-06-24 19:33:45', 2),
(6, 3, 6, 3, '2045-06-24 19:42:37', '2045-06-24 19:43:05', 2),
(12, 3, 2, 1, '2045-06-24 23:16:33', '2045-06-24 23:17:09', 2),
(13, 3, 2, 1, '2045-06-24 23:17:43', '2045-06-24 23:19:02', 2),
(14, 3, 2, 1, '2045-06-24 23:20:58', '2045-06-24 23:21:43', 2),
(15, 3, 6, 3, '2045-06-24 23:38:54', '2045-06-24 23:39:12', 2),
(16, 3, 6, 1, '2045-06-24 23:44:12', '2045-06-24 23:44:41', 2),
(17, 3, 6, 1, '2045-06-25 00:41:57', '2045-06-25 00:42:57', 2),
(18, 3, 6, 1, '2045-06-25 00:43:23', '2045-06-25 00:44:17', 2),
(19, 3, 6, 1, '2045-06-25 00:44:40', '2045-06-25 00:45:18', 2),
(20, 3, 6, 1, '2045-06-25 00:47:35', '2045-06-25 00:48:29', 2),
(21, 3, 6, 1, '2045-06-25 00:53:18', '2045-06-25 00:54:22', 2),
(22, 3, 6, 1, '2045-06-25 00:55:11', '2045-06-25 00:56:10', 2),
(23, 3, 6, 1, '2045-06-25 00:57:44', '2045-06-25 00:58:12', 2),
(24, 3, 6, 1, '2045-06-25 01:00:15', '2045-06-25 01:00:50', 2),
(25, 3, 6, 1, '2045-06-25 01:30:47', '2045-06-25 01:31:06', 2),
(26, 3, 6, 1, '2045-06-25 01:30:40', '2045-06-25 01:31:08', 2),
(27, 3, 2, 1, '2045-06-25 01:30:31', '2045-06-25 01:31:25', 2),
(28, 3, 3, 1, '2045-06-25 02:07:52', '2045-06-25 02:08:27', 2),
(29, 3, 6, 1, '2045-06-25 02:14:58', '2045-06-25 02:15:24', 2),
(30, 3, 6, 1, '2045-06-25 02:24:49', '2045-06-25 02:25:23', 2),
(31, 3, 3, 3, '2045-06-25 02:26:25', '2045-06-25 02:27:04', 2),
(32, 3, 2, 1, '2045-06-25 02:58:04', '2045-06-25 02:58:57', 2),
(33, 3, 3, 3, '2045-06-25 02:59:25', '2045-06-25 02:59:45', 2),
(34, 3, 5, 0, '2045-06-25 03:03:52', '2045-06-25 03:04:40', 2),
(35, 3, 5, 0, '2045-06-25 03:23:20', '2045-06-25 03:24:11', 2),
(36, 3, 5, 0, '2045-06-25 03:27:25', '2045-06-25 03:28:25', 2),
(37, 3, 5, 0, '2045-06-25 03:33:20', '2045-06-25 03:34:03', 2),
(38, 3, 5, 0, '2045-06-25 03:34:40', '2045-06-25 03:35:40', 2),
(39, 3, 5, 0, '2045-06-25 03:36:09', '2045-06-25 03:36:46', 2),
(40, 3, 5, 0, '2045-06-25 03:38:47', '2045-06-24 03:39:19', 2),
(41, 3, 6, 2, '2045-06-25 03:39:57', '2045-06-25 03:40:18', 2),
(42, 3, 6, 2, '2045-06-25 03:41:49', '2045-06-25 03:42:02', 2),
(43, 3, 6, 2, '2045-06-25 04:39:50', '2045-06-25 04:40:07', 2),
(44, 3, 6, 5, '2045-06-25 04:40:34', '2045-06-25 04:40:53', 2),
(45, 3, 6, 5, '2045-06-25 04:41:26', '2045-06-25 04:41:54', 2),
(46, 3, 6, 5, '2045-06-25 04:54:51', '2045-06-25 04:55:13', 2),
(47, 3, 6, 5, '2045-06-25 04:55:53', '2045-06-25 04:56:19', 2),
(48, 3, 6, 5, '2045-06-25 05:07:33', '2045-06-25 05:07:45', 2),
(49, 3, 6, 5, '2045-06-25 05:12:29', '2045-06-25 05:12:41', 2),
(50, 3, 6, 5, '2045-06-25 05:13:55', '2045-06-25 05:14:03', 2),
(51, 3, 6, 5, '2045-06-25 13:39:02', '2045-06-25 13:39:28', 2),
(52, 3, 6, 5, '2045-06-25 14:04:30', '2045-06-25 14:04:49', 2),
(53, 3, 6, 5, '2045-06-25 14:09:46', '2045-06-25 14:10:07', 2),
(54, 3, 6, 5, '2045-06-25 14:20:25', '2045-06-25 14:20:52', 2),
(55, 3, 6, 5, '2045-06-25 14:28:38', '2045-06-25 14:28:54', 2),
(63, 3, 3, 1, '2045-06-08 15:22:50', '2045-06-08 15:22:55', 2),
(64, 3, 6, 2, '2045-06-25 16:20:07', '2045-06-25 16:20:49', 2),
(65, 3, 6, 2, '2045-06-25 16:20:39', '2045-06-25 16:20:51', 2),
(66, 3, 6, 2, '2045-06-25 16:25:45', '2045-06-25 16:25:56', 2),
(67, 3, 6, 2, '2045-06-25 16:35:23', '2045-06-25 16:35:32', 2),
(68, 3, 6, 2, '2045-06-25 17:11:10', '2045-06-25 17:11:20', 2),
(69, 3, 6, 2, '2045-06-25 17:41:35', '2045-06-25 17:41:47', 2),
(70, 3, 3, 1, '2045-06-08 15:22:50', '2045-06-08 15:22:55', 2),
(71, 3, 3, 1, '2045-06-08 15:22:50', '2045-06-08 15:22:55', 2),
(72, 3, 6, 2, '2045-06-25 19:35:38', '2045-06-25 19:35:49', 2),
(73, 3, 6, 2, '2045-06-25 20:55:33', '2045-06-25 20:55:44', 2),
(74, 3, 6, 2, '2045-06-25 23:53:29', '2045-06-25 23:53:39', 2),
(75, 3, 6, 2, '2045-06-26 00:05:41', '2045-06-26 00:05:53', 2),
(76, 3, 6, 2, '2045-06-26 00:05:41', '2045-06-26 00:05:53', 2),
(77, 3, 6, 2, '2045-06-26 00:05:41', '2045-06-26 00:05:53', 2),
(78, 3, 6, 2, '2045-06-26 00:05:41', '2045-06-26 00:05:53', 2),
(79, 3, 6, 2, '2045-06-26 00:05:41', '2045-06-26 00:05:53', 2),
(80, 3, 6, 2, '2045-06-26 00:15:37', '2045-06-26 00:15:49', 2),
(81, 3, 6, 2, '2045-06-26 00:15:37', '2045-06-26 00:15:49', 2),
(82, 3, 6, 2, '2045-06-26 00:15:37', '2045-06-26 00:15:49', 2),
(83, 3, 6, 2, '2045-06-26 00:15:37', '2045-06-26 00:15:49', 2),
(84, 3, 6, 2, '2045-06-26 00:15:37', '2045-06-26 00:15:49', 2),
(85, 3, 6, 2, '2045-06-26 00:17:28', '2045-06-26 00:17:40', 2),
(86, 3, 6, 2, '2045-06-26 00:19:59', '2045-06-26 00:20:13', 2),
(87, 3, 6, 2, '2045-06-26 00:22:57', '2045-06-26 00:23:09', 2),
(88, 3, 6, 2, '2045-06-26 00:25:54', '2045-06-26 00:26:05', 2),
(89, 3, 6, 2, '2045-06-26 00:29:53', '2045-06-26 00:30:05', 2),
(90, 3, 6, 2, '2045-06-26 00:33:03', '2045-06-26 00:33:15', 2),
(91, 3, 6, 2, '2045-06-26 00:38:44', '2045-06-26 00:38:52', 2),
(92, 3, 6, 2, '2045-06-26 00:40:29', '2045-06-26 00:40:39', 2),
(93, 3, 6, 2, '2045-06-26 00:42:24', '2045-06-26 00:42:36', 2),
(94, 3, 6, 2, '2045-06-26 00:44:49', '2045-06-26 00:44:59', 2),
(95, 3, 6, 2, '2045-06-26 00:49:36', '2045-06-26 00:49:47', 2),
(96, 3, 6, 2, '2045-06-26 00:54:20', '2045-06-26 00:54:29', 2),
(97, 3, 6, 2, '2045-06-26 01:00:08', '2045-06-26 01:00:19', 2),
(98, 3, 3, 1, '2045-06-26 01:00:38', '2045-06-26 01:01:28', 2),
(99, 3, 6, 2, '2045-06-26 01:03:11', '2045-06-26 01:03:22', 2),
(100, 3, 6, 2, '2045-06-26 01:04:03', '2045-06-26 01:04:14', 2),
(101, 3, 6, 2, '2045-06-26 01:04:16', '2045-06-26 01:04:29', 2),
(102, 3, 6, 2, '2045-06-26 01:04:22', '2045-06-26 01:04:34', 2),
(103, 3, 6, 2, '2045-06-26 01:14:23', '2045-06-26 01:14:34', 2),
(104, 3, 6, 2, '2045-06-26 01:16:06', '2045-06-26 01:16:16', 2),
(105, 3, 6, 2, '2045-06-26 01:16:13', '2045-06-26 01:16:24', 2),
(106, 3, 6, 2, '2045-06-26 01:32:31', '2045-06-26 01:32:40', 2),
(107, 3, 6, 2, '2045-06-26 01:32:37', '2045-06-26 01:32:49', 2),
(108, 3, 6, 2, '2045-06-26 01:43:06', '2045-06-26 01:43:17', 2),
(109, 3, 6, 2, '2045-06-26 01:48:19', '2045-06-26 01:48:31', 2),
(110, 3, 6, 2, '2045-06-26 01:49:50', '2045-06-26 01:50:09', 2),
(111, 3, 6, 2, '2045-06-26 01:51:12', '2045-06-26 01:51:25', 2),
(112, 3, 6, 2, '2045-06-26 01:53:45', '2045-06-26 01:53:57', 2),
(113, 3, 6, 2, '2045-06-26 01:53:57', '2045-06-26 01:54:16', 2),
(114, 3, 6, 2, '2045-06-26 01:54:36', '2045-06-26 01:54:50', 2),
(115, 3, 6, 2, '2045-06-26 01:58:11', '2045-06-26 01:58:25', 2),
(116, 3, 6, 2, '2045-06-26 02:02:07', '2045-06-26 02:02:18', 2),
(117, 3, 6, 2, '2045-06-26 02:02:15', '2045-06-26 02:02:27', 2),
(118, 3, 6, 2, '2045-06-26 02:02:28', '2045-06-26 02:02:40', 2),
(119, 3, 6, 2, '2045-06-26 02:02:40', '2045-06-26 02:02:54', 2),
(120, 3, 6, 2, '2045-06-26 02:07:00', '2045-06-26 02:07:11', 2),
(121, 3, 4, 1, '2045-06-26 02:08:48', '2045-06-26 02:09:09', 2),
(122, 3, 6, 2, '2045-06-26 02:14:51', '2045-06-26 02:15:02', 2),
(123, 3, 6, 2, '2045-06-26 02:20:32', '2045-06-26 02:20:44', 2),
(124, 3, 6, 2, '2045-06-26 02:22:46', '2045-06-26 02:22:57', 2),
(125, 3, 3, 2, '2045-06-26 02:26:01', '2045-06-26 02:26:58', 2),
(126, 3, 3, 3, '2045-06-26 02:28:46', '2045-06-26 02:29:32', 2),
(127, 3, 4, 0, '2045-06-26 05:35:54', '2045-06-26 05:36:11', 2),
(128, 3, 4, 0, '2045-06-26 05:47:10', '2045-06-26 05:47:34', 2),
(129, 3, 3, 4, '2045-06-26 05:48:02', '2045-06-26 05:48:41', 2),
(130, 3, 3, 3, '2045-06-26 05:53:11', '2045-06-26 05:54:02', 2),
(131, 3, 3, 3, '2045-06-26 06:19:42', '2045-06-26 06:20:16', 2),
(132, 3, 3, 3, '2045-06-26 06:19:42', '2045-06-26 06:20:16', 2),
(133, 3, 3, 3, '2045-06-26 06:19:42', '2045-06-26 06:20:16', 2),
(134, 3, 3, 3, '2045-06-26 06:19:42', '2045-06-26 06:20:16', 2),
(135, 3, 3, 3, '2045-06-26 06:19:42', '2045-06-26 06:20:16', 2),
(136, 3, 4, 0, '2045-06-26 06:20:03', '2045-06-26 06:20:24', 2),
(137, 3, 6, 2, '2045-06-26 06:20:20', '2045-06-26 06:20:31', 2),
(138, 3, 6, 2, '2045-06-26 06:20:20', '2045-06-26 06:20:31', 2),
(139, 3, 6, 2, '2045-06-26 06:20:20', '2045-06-26 06:20:31', 2),
(140, 3, 6, 2, '2045-06-26 06:20:20', '2045-06-26 06:20:31', 2),
(141, 3, 6, 2, '2045-06-26 06:20:20', '2045-06-26 06:20:31', 2),
(142, 3, 3, 3, '2045-06-26 06:19:52', '2045-06-26 06:20:47', 2),
(143, 3, 3, 3, '2045-06-26 06:19:52', '2045-06-26 06:20:47', 2),
(144, 3, 3, 3, '2045-06-26 06:19:52', '2045-06-26 06:20:47', 2),
(145, 3, 3, 3, '2045-06-26 06:19:52', '2045-06-26 06:20:47', 2),
(146, 3, 3, 3, '2045-06-26 06:19:52', '2045-06-26 06:20:47', 2),
(147, 3, 6, 2, '2045-06-26 06:21:49', '2045-06-26 06:22:00', 2),
(148, 3, 3, 3, '2045-06-26 06:22:07', '2045-06-26 06:22:39', 2),
(149, 3, 1, 1, '2045-06-26 13:48:52', '2045-06-26 13:49:18', 2),
(150, 3, 1, 1, '2045-06-26 13:52:05', '2045-06-26 13:52:30', 2),
(151, 3, 1, 1, '2045-06-26 15:07:18', '2045-06-26 15:07:46', 2),
(152, 3, 1, 1, '2045-06-26 15:10:40', '2045-06-26 15:11:18', 2),
(153, 3, 6, 2, '2045-06-26 15:15:47', '2045-06-26 15:16:02', 2),
(154, 3, 6, 2, '2045-06-26 15:21:43', '2045-06-26 15:21:52', 2),
(155, 3, 2, 0, '2045-06-26 16:05:51', '2045-06-26 16:06:39', 2),
(156, 3, 2, 1, '2045-06-26 16:09:57', '2045-06-26 16:10:23', 2),
(157, 3, 3, 3, '2045-06-26 17:59:04', '2045-06-26 17:59:44', 2),
(158, 3, 3, 3, '2045-06-26 18:01:09', '2045-06-26 18:01:22', 2),
(159, 3, 3, 3, '2045-06-26 18:43:31', '2045-06-26 18:43:41', 2),
(160, 3, 3, 3, '2045-06-26 18:44:29', '2045-06-26 18:44:43', 2),
(161, 3, 3, 3, '2045-06-26 18:45:35', '2045-06-26 18:45:46', 2),
(162, 3, 3, 2, '2045-06-26 18:46:53', '2045-06-26 18:47:04', 2),
(163, 3, 3, 2, '2045-06-26 18:49:05', '2045-06-26 18:49:16', 2),
(164, 3, 3, 2, '2045-06-26 18:50:49', '2045-06-26 18:51:02', 2),
(165, 3, 6, 2, '2045-06-26 22:21:48', '2045-06-26 22:21:59', 2),
(166, 3, 6, 2, '2045-06-26 22:23:57', '2045-06-26 22:24:10', 2),
(172, 3, 6, 2, '2045-06-26 22:26:36', '2045-06-26 22:26:48', 2),
(173, 3, 6, 2, '2045-06-26 22:34:41', '2045-06-26 22:34:56', 2),
(174, 3, 6, 2, '2045-06-26 23:03:10', '2045-06-26 23:03:21', 2),
(175, 3, 6, 2, '2045-06-26 23:05:49', '2045-06-26 23:06:00', 2),
(176, 3, 6, 1, '2045-06-26 23:06:27', '2045-06-26 23:06:41', 2),
(177, 3, 6, 1, '2045-06-26 23:11:19', '2045-06-26 23:11:35', 2),
(178, 3, 6, 2, '2045-06-26 23:13:31', '2045-06-26 23:13:45', 2),
(179, 3, 6, 2, '2045-06-27 00:08:32', '2045-06-27 00:08:41', 2),
(180, 3, 6, 2, '2045-06-27 00:45:22', '2045-06-27 00:45:35', 2),
(181, 3, 6, 2, '2045-06-27 01:14:01', '2045-06-27 01:14:12', 2),
(182, 3, 6, 2, '2045-06-27 01:42:05', '2045-06-27 01:42:17', 2),
(183, 3, 6, 2, '2045-06-27 01:44:30', '2045-06-27 01:44:44', 2),
(184, 3, 6, 2, '2045-06-27 01:47:47', '2045-06-27 01:48:00', 2),
(185, 3, 6, 2, '2045-06-28 05:59:00', '2045-06-28 05:59:14', 2),
(186, 3, 3, 3, '2045-06-28 23:32:53', '2045-06-28 23:33:02', 2),
(187, 3, 1, 0, '2045-06-28 23:58:40', '2045-06-28 23:58:58', 2),
(188, 3, 3, 2, '2045-06-29 05:38:48', '2045-06-29 05:44:46', 2),
(189, 3, 3, 2, '2045-06-29 05:45:34', '2045-06-29 05:47:10', 2),
(190, 3, 3, 2, '2045-06-29 05:47:30', '2045-06-29 05:48:46', 2),
(191, 3, 3, 2, '2045-06-29 05:47:54', '2045-06-29 05:50:24', 2),
(192, 3, 6, 2, '2045-06-30 04:04:20', '2045-06-30 04:08:13', 2),
(193, 3, 6, 2, '2045-06-30 04:28:43', '2045-06-30 04:30:58', 2),
(194, 3, 6, 2, '2030-07-13 06:35:13', '2030-07-13 06:38:22', 2),
(195, 3, 6, 2, '2045-06-30 05:08:12', '2045-06-30 05:10:06', 2),
(196, 18, 35, 0, '2045-07-01 00:52:03', '2045-07-01 00:52:22', 2),
(197, 18, 29, 1, '2045-07-01 02:50:10', '2045-07-01 02:50:28', 2),
(198, 18, 29, 1, '2045-07-01 02:51:41', '2045-07-01 02:52:01', 2),
(199, 18, 29, 1, '2045-07-01 02:52:59', '2045-07-01 02:53:19', 2),
(200, 18, 29, 0, '2045-07-01 02:54:19', '2045-07-01 02:54:41', 2),
(201, 18, 29, 1, '2045-07-01 02:55:57', '2045-07-01 02:56:18', 2),
(202, 2, 14, 1, '2045-06-08 15:22:50', '2045-06-08 15:22:55', 2),
(203, 2, 14, 1, '2045-06-08 15:22:50', '2045-06-08 15:22:55', 2),
(204, 2, 14, 10, '2045-06-08 15:22:50', '2045-06-08 15:22:55', 2),
(205, 2, 14, 10, '2045-06-08 15:22:50', '2045-06-08 15:22:55', 2),
(206, 2, 14, 10, '2045-06-08 15:22:50', '2045-06-08 15:22:55', 2),
(207, 2, 14, 10, '2045-06-08 15:22:50', '2045-06-08 15:22:55', 2),
(208, 2, 14, 0, '2045-06-08 15:22:50', '2045-06-08 15:22:55', 2),
(209, 2, 14, 0, '2045-06-08 15:22:50', '2045-06-08 15:22:55', 2),
(210, 2, 14, 0, '2045-06-08 15:22:50', '2045-06-08 15:22:55', 2),
(211, 2, 14, 0, '2045-06-08 15:22:50', '2045-06-08 15:22:55', 2);

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
(4, '2022-03-31 17:24:11', 'Obecna data akcji na Dedalu', '2045-06-17 23:54:13'),
(5, '2022-03-31 17:24:11', 'Stan larpa', 'START'),
(6, '2022-03-31 17:24:11', 'Data startu larpa ', '2022-03-31 17:24:11');

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
(0, 3, 1, 5, 0, '0', 0, 5, 1, '0', 0, 2, 5),
(1, 3, 2, 0, 0, '0', 0, 1, 0, '0', 0, 5, 0),
(2, 3, 3, 1, 1, '0', 1, 1, 1, '0', 0, 0, 0),
(3, 3, 6, 0, 0, '0', 0, 0, 5, '0', 1, 0, 0),
(4, 3, 6, 4, 6, '0', 0, 0, 0, '0', 0, 0, 0),
(5, 3, 3, 0, 5, '0', 0, 0, 1, '0', 1, 0, 1),
(6, 3, 3, 3, 1, '0', 0, 0, 1, '0', 0, 0, 0),
(7, 3, 3, 4, 1, '0', 0, 5, 3, '0', 0, 1, 4),
(8, 3, 5, 2, 3, '0', 0, 0, 0, '0', 1, 1, 2),
(9, 18, 35, 5, 5, '0', 1, 1, 1, '0', 0, 1, 1),
(10, 18, 34, 1, 1, '0', 1, 1, 1, '0', 1, 1, 1),
(11, 18, 29, 5, 0, '0', 0, 1, 1, '0', 1, 2, 6),
(12, 18, 30, 1, 1, '0', 0, 1, 1, '0', 1, 1, 1),
(13, 19, 36, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1),
(14, 2, 14, 1, 1, '0', 1, 1, 2, '0', 1, 1, 1);

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
(5, 'test elementu', 'przy resecie ustawiany');

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
(94, 2, 'John Spow', 7, 'Akito Yamazaki', 'cześć', '2045-07-01 04:28:46', 0, 0, 0),
(95, 15, 'NASA  ', 2, 'John Spow', 'masz notatkę', '2045-07-01 04:36:10', 1, 1, 0);

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
(1, 'Pomieszczenie laboratorium', 'PL', 3, 187, 7, '', 180, 2, 2, 20),
(2, 'Pomieszczenie oranżerii', 'PO', 3, 156, 7, '', 6, 2, 2, 10),
(3, 'Pomieszczenie medyczne', 'PM', 3, 191, 7, '', 7200, 2, 2, 7),
(4, 'Urządzenia medyczne', 'UM', 3, 128, 7, '', 2, 2, 2, 15),
(5, 'Magazyn leków', 'ML', 3, 40, 30, '', 77, 60, 686, 8),
(6, 'Zespół upraw', 'ZU', 3, 195, 7, '', 286, 5, 2, 10),
(7, 'Śluza Główna', 'SD', 2, 0, 7, 'Główna śluza.', 11, 5, 2, 10),
(8, 'Śluza Dziobowa', 'ST', 2, 0, 7, 'Główna techniczna', 11, 5, 2, 10),
(9, 'Pomieszczenie Dowodzenia', 'PD', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(10, 'Urządzenia Nawigacyjne', 'UN', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(11, 'Przyrządy Nawigacyjne', 'PN', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(12, 'Urządzenia Wykonawcze Sterowania', 'UWS', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(13, 'Przyrządy Sterowania', 'PS', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(14, 'Autopilot', 'AP', 2, 211, 7, 'Główny mostek', 5, 437, 77, 10),
(15, 'Przyrządy Nawigacyjne - awaryjne', 'PNa', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(16, 'Urządzenia Wykonawcze Sterowania - awaryjne', 'UWSa', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(17, 'Przyrządy Sterowania - awaryjne', 'PSa', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(18, 'Kapsuły Ewakuacyjne', 'KP', 2, 0, 7, 'Główny mostek', 11, 5, 2, 10),
(19, 'Anteny Nadawcze', 'AN', 18, 201, 7, '', 11, 16, 32, 10),
(20, 'Anteny Odbiorcze', 'AO', 18, 0, 7, '', 11, 5, 2, 10),
(21, 'Moduły Niskich Częstotliwości', 'MNCZ', 18, 0, 7, '', 11, 5, 2, 10),
(22, 'Moduły Średnich Częstotliwości', 'MSCZ', 18, 0, 7, '', 11, 5, 2, 10),
(23, 'Moduły Wysokich Częstotliwości', 'MWCZ', 18, 0, 7, '', 11, 5, 2, 10),
(24, 'Satelita 1', 'SA1', 18, 0, 7, '', 10, 5, 30, 10),
(25, 'Satelita 2', 'SA2', 18, 196, 7, '', 10, 5, 40, 10),
(26, 'Skafander John Spow', 'SJS', 19, 0, 7, '', 10, 5, 40, 10),
(27, 'Skafander Peng Yaping', 'SPY', 19, 0, 7, '', 10, 5, 40, 10),
(28, 'Skafander William Weir', 'SWW', 19, 0, 7, '', 10, 5, 40, 10),
(29, 'Skafander Manu Punjabi', 'SMP', 19, 0, 7, '', 10, 5, 40, 10),
(30, 'Skafander Zeki Demir', 'SZD', 19, 0, 7, '', 10, 5, 40, 10),
(31, 'Skafander Akito Yamazaki', 'SAY', 19, 0, 7, '', 10, 5, 40, 10),
(32, 'Skafander Da Yang', 'SDY', 19, 0, 7, '', 10, 5, 40, 10),
(33, 'Skafander Han Stevens', 'SHS', 19, 0, 7, '', 10, 5, 40, 10),
(34, 'Skafander Rajeh Amit', 'SRA', 19, 0, 7, '', 10, 5, 40, 10);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT dla tabeli `innelog`
--
ALTER TABLE `innelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `komputery`
--
ALTER TABLE `komputery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=828;

--
-- AUTO_INCREMENT dla tabeli `logowania`
--
ALTER TABLE `logowania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT dla tabeli `moduly`
--
ALTER TABLE `moduly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `notatki_ng`
--
ALTER TABLE `notatki_ng`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT dla tabeli `notatki_tr`
--
ALTER TABLE `notatki_tr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT dla tabeli `notatki_udo`
--
ALTER TABLE `notatki_udo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT dla tabeli `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `polecenia`
--
ALTER TABLE `polecenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT dla tabeli `polecenia_osoby`
--
ALTER TABLE `polecenia_osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT dla tabeli `stan`
--
ALTER TABLE `stan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `testylog`
--
ALTER TABLE `testylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT dla tabeli `ustawienia`
--
ALTER TABLE `ustawienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `uszkodzenia`
--
ALTER TABLE `uszkodzenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `uszkodzenianazwa`
--
ALTER TABLE `uszkodzenianazwa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `wiadomosci`
--
ALTER TABLE `wiadomosci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT dla tabeli `zespoly`
--
ALTER TABLE `zespoly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
