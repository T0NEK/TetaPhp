-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Kwi 2022, 00:03
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
(125, 'wszystko kasuj', 'kasuja_1', '50', 'komunikat', '', 'kasuję historię komunikatów i poleceń', '', 'kasuja_2', 'kasuja_2', ''),
(126, 'wszystko kasuj', 'kasuja_2', '50', 'komunikat', '', 'kasuję historię poleceń', '', 'kasuja_3', 'kasuja_3', ''),
(127, 'wszystko kasuj', 'kasuja_3', '50', 'wykonaj', '', 'kasuj', 'polecenia', 'kasuja_4', 'kasuja_4', ''),
(129, 'wszystko kasuj', 'kasuja_4', '50', 'komunikat', '', 'kasuję historię komunikatów', '', 'kasuja_5', 'kasuja_5', ''),
(130, 'wszystko kasuj', 'kasuja_5', '50', 'wykonaj', '', 'kasuj', 'historia', 'kasuja_6', 'kasuja_6', ''),
(131, 'wszystko kasuj', 'kasuja_6', '50', 'komunikat', '', 'skasowano historię komunikatów i poleceń', '', 'kasuja_15', 'kasuja_15', ''),
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
(222, 'test', 'test_0', '50', 'komunikat', '', 'wykonuję: [ test ]', '', 'test_1', 'test_1', 'alternatywa'),
(223, 'test', 'test_5', '50', 'dodajdane', '', 'nr zespołu', '', 'test_6', 'test_6', ''),
(224, 'test', 'test_4', '50', 'dane', '', 'podaj symbol zespołu ?', '', 'test_5', 'test_5', ''),
(225, 'test', 'test_9', '50', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(226, 'test', 'test_8', '50', 'testy', '', 'test', '', 'test_9', 'test_9', 'wyświetla listę zespołów'),
(227, 'test', 'test_7', '50', 'informacja', 'problem z dostępem do: ', 'tekstAlert', '', 'end', 'end', 'informacja z error'),
(228, 'test', 'test_6', '50', 'getset', '', 'wczytaj', 'zespol', 'test_8', 'test_7', 'wczytuje test');

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
(275, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RL561649196097OJ1079161412656OV', '2022-04-06 00:01:37', '2022-04-06 00:01:37');

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
(41, 44, '2045-06-19 21:14:20', '2045-06-20 00:30:43', '2045-06-20 00:30:43', 2, 1, 1),
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
(53, 84, '2045-06-20 00:41:34', '', '2045-06-20 00:41:34', 2, 0, 0),
(54, 85, '2045-06-20 00:44:53', '', '2045-06-20 00:44:53', 10, 0, 0),
(55, 86, '2045-06-20 16:35:27', '', '2045-06-20 16:35:27', 8, 0, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `moduly`
--

INSERT INTO `moduly` (`id`, `nazwa`, `symbol`, `stan`, `czasbadania`, `opis`) VALUES
(1, 'SERWEROWNIA GRACE', 'GRACE', 0, '', 'Serwerownia zespołu AI'),
(2, 'MOSTEK DOWODZENIA', 'MD', 0, '', 'Mostek kapitański - dowodzenia'),
(3, 'LABORATORIUM', 'LAB', 0, '', 'Moduł badawczy laboratorium i oranżeria');

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
(2, '1644743786H6Q27960644362', 'testowa 3', 3, '2022-03-05 10:57:57', 1, 1, 0),
(3, '1644743790H7N121711040460', 'testowa 4', 4, '2022-03-04 18:36:52', 0, 0, 0),
(4, '1644743790H8C52631801280', 'testowa 5', 2, '2022-02-06 09:00', 2, 0, 0),
(33, '1645281249H4D60875406213', 'test ostateczny nowej notatki', 5, '2022-03-04 21:19:05', 0, 1, 0),
(34, '1645281533H33P60875416721', 'dowykonania.sufix', 2, '2022-02-19 15:38:53', 0, 0, 0),
(35, '1645288563H34C21388751319', '//doskasowaniathis.zalogujOsoba({zalogowany:2,imie', 2, '2022-02-19 17:36:03', 0, 0, 0),
(36, '1645288932H35O31260489708', '//doskasowaniathis.zalogujOsoba({zalogowany:2,imie', 2, '2022-03-04 21:25:29', 2, 0, 0),
(37, '1645391490H36D14808523410', 'WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW', 2, '2022-03-04 18:13:31', 0, 0, 1),
(53, '1646490363H52I21404374719', 'nowy czas', 2, '2045-05-22 23:12:01', 0, 0, 0),
(54, '1646500108H53E69153004536', 'test', 2, '2045-05-23 01:54:25', 0, 0, 0),
(55, '1646500348H54Q49395010440', 'test1', 2, '2022-03-05 19:09:59', 1, 0, 0),
(56, '1646555315P55N151483088980', 'Dave pisze', 10, '2045-05-23 17:14:33', 0, 0, 0);

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
(61, 54, 0, 0, '2045-05-23 01:54:25', 'wersja 0\nhehe'),
(62, 55, 0, 0, '2045-05-23 01:58:25', ''),
(63, 55, 1, 0, '2045-05-23 02:52:01', ''),
(64, 55, 2, 1, '2045-05-23 02:52:13', ''),
(65, 54, 1, 1, '2045-06-19 21:19:58', 'cześć\neeqqq'),
(66, 3, 2, 0, '2045-06-19 21:23:09', ''),
(67, 55, 3, 0, '2045-06-20 01:27:26', ''),
(68, 54, 2, 2, '2045-05-23 17:05:55', 'qqqqqwww'),
(69, 56, 0, 0, '2045-05-23 17:14:33', 'pisze'),
(70, 35, 1, 0, '', 'qqqqqqqqq\nasedf\newertwe\n'),
(71, 35, 1, 0, '', 'qqqqqqqqq\nasedf\newertwe\n'),
(72, 35, 1, 0, '', 'qqqqqqqqq\nasedf\newertwe\n'),
(73, 35, 1, 0, '', 'qqqqqqqqq\nasedf\newertwe\n'),
(74, 35, 1, 0, '', 'qqqqqqqqq\nasedf\newertwe\n'),
(75, 1, 13, 0, '2045-06-08 03:33:15', 'treść notatki 1 w wersji 8 z 7\n1\n2\n3\n4\n5\n6\n7\n8\ntom'),
(76, 1, 14, 0, '2045-06-08 04:30:11', 'treść notatki 1 w wersji 1\ncześć\n12');

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
(46, 54, 10, '2022-03-23 18:26:19', 0);

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
(2, '2045-06-17 23:54:56', '10', 'John', 'Spow', 'Kapitan', 'nawigator, pilot', 'USA', 'john', 'M', 1, '123', '123', 1, 1, 1, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '2045-06-17 23:54:30', '2045-06-17 23:54:56', 'Witaj John Spow', 200, 1, 1, 1, 1, 0, 0, 9, 7, 11, 13),
(3, '2022-03-16 21:59:32', '20', 'Peng', 'Yaping', 'I oficer', 'astrofizyk, dyplomata', 'Chiny', 'peng', 'M', 1, '123', '123', 0, 1, 1, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '', '', 'Witaj Louise Banks', 400, 1, 1, 1, 1, 0, 0, 9, 7, 11, 13),
(4, '2045-06-17 05:48:06', '30', 'William', 'Weir', 'II oficer', 'matematyk, inżynier jądrowy', 'Unia Europejska', 'william', 'M', 1, '123', '123', 0, 1, 1, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '', '', 'Witaj Dave Bowman', 400, 1, 1, 1, 1, 0, 0, 9, 7, 11, 13),
(5, '2022-03-13 21:38:03', '40', 'Manu', 'Punjabi', 'III oficer', 'elektronik, nawigator', 'Indie', 'manu', 'M', 1, '123', '123', 0, 1, 1, 0, 0, 0, 0, '', '', '', 'Witaj Dwayne Hicks', 400, 1, 1, 1, 1, 0, 0, 9, 7, 11, 13),
(6, '2022-03-20 13:40:13', '50', 'Zeki', 'Demir', 'IV oficer', 'pilot, nawigator', 'Turcja', 'zeki', 'M', 1, '123', '123', 1, 1, 1, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '', '', 'Witaj Anna Lee Dwell', 400, 1, 1, 1, 1, 0, 0, 9, 7, 11, 13),
(7, '2022-03-23 18:44:54', '60', 'Akito', 'Yamazaki', 'Psychiatra', 'psychiatra, programista', 'Japonia', 'akito', 'M', 2, '123', '123', 0, 0, 1, 1, 1, 1, 1, 'Komputer-Tomka', '', '', 'Witaj William Weir', 400, 1, 1, 1, 1, 1, 0, 9, 7, 11, 13),
(8, '2045-06-17 05:47:01', '70', 'Da', 'Yang', 'Lekarz', 'lekarz, biolog', 'Chiny', 'da', 'M', 1, '123', '123', 0, 1, 1, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '', '', 'Witaj Elizabeth Halperin', 400, 1, 1, 1, 1, 0, 0, 9, 7, 11, 13),
(9, '2022-03-27 20:10:49', '80', 'Han', 'Stevens', 'Informatyk', 'programista, łącznościowiec', 'Turcja', 'han', 'M', 2, '123', '123', 0, 0, 1, 1, 1, 1, 1, 'Komputer-Tomka', '', '', 'Witaj Hannah Stevens', 0, 1, 1, 1, 1, 1, 0, 9, 7, 11, 13),
(10, '', '90', 'Dave', 'Bowman', 'Łączność', 'łącznościowiec, psycholog', 'USA', 'dave', 'M', 1, '123', '123', 0, 1, 1, 0, 0, 0, 0, '', '', '', 'Witam Joshua', 0, 1, 1, 1, 1, 1, 0, 9, 7, 11, 13),
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
(54, 'test', 1, 0, 0, 53, '1000', 'test_0', 'Wykonanie testu na zespole');

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
(143, 19, 2, '2022-03-05 09:34:46', 1),
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
(163, 33, 2, '2022-03-05 09:35:01', 1),
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
(293, 53, 11, '2022-04-05 17:32:14', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stan`
--

CREATE TABLE `stan` (
  `id` int(11) NOT NULL,
  `nazwa` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `stan` tinyint(4) NOT NULL,
  `opis` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `stan`
--

INSERT INTO `stan` (`id`, `nazwa`, `stan`, `opis`) VALUES
(1, 'sprawny', 1, 'wszystko ok'),
(2, 'niesprawny', 0, 'uszkodzony'),
(3, 'nieokreślony', 2, 'coś nie tak'),
(4, 'niewykonany', 2, 'coś nie tak'),
(5, 'przedawniony', 2, 'coś nie tak');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `testylog`
--

CREATE TABLE `testylog` (
  `id` int(11) NOT NULL,
  `test` int(11) NOT NULL,
  `moduly` int(11) NOT NULL,
  `zespoly` int(11) NOT NULL,
  `stan` int(11) NOT NULL,
  `czasbadania` text COLLATE utf8_polish_ci NOT NULL,
  `osoba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `testylog`
--

INSERT INTO `testylog` (`id`, `test`, `moduly`, `zespoly`, `stan`, `czasbadania`, `osoba`) VALUES
(1, 1, 3, 0, 1, '2022-04-03 16:57:38', 1),
(2, 1, 3, 0, 1, '2045-01-03 16:57:38', 1),
(3, 1, 3, 0, 1, '2045-06-03 16:27:38', 8),
(4, 1, 3, 0, 2, '2042-04-03 16:57:38', 8),
(5, 1, 3, 0, 0, '2045-06-06 16:27:38', 9),
(6, 1, 3, 0, 3, '2045-05-30 16:27:38', 15);

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
(92, 2, 'John Spow', 10, 'Dave Bowman', 'moduły', '2045-06-20 00:47:05', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zespoly`
--

CREATE TABLE `zespoly` (
  `id` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `symbol` varchar(25) COLLATE utf8_polish_ci NOT NULL,
  `moduly` int(11) NOT NULL,
  `stan` int(11) NOT NULL,
  `czasbadania` text COLLATE utf8_polish_ci NOT NULL,
  `osobabadania` int(11) NOT NULL,
  `przedawnienie` int(11) NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL,
  `czaswykonania` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `zespoly`
--

INSERT INTO `zespoly` (`id`, `nazwa`, `symbol`, `moduly`, `stan`, `czasbadania`, `osobabadania`, `przedawnienie`, `opis`, `czaswykonania`) VALUES
(1, 'Pomieszczenie laboratorium', 'PL', 3, 1, '2022-04-03 16:57:38', 1, 7, '', 3000),
(2, 'Pomieszczenie oranżerii', 'PO', 3, 1, '2045-01-03 16:57:38', 1, 7, '', 6000),
(3, 'Pomieszczenie medyczne', 'PM', 3, 1, '2045-06-03 16:27:38', 8, 7, '', 1000),
(4, 'Urządzenia medyczne', 'UM', 3, 2, '2042-04-03 16:57:38', 8, 7, '', 2000),
(5, 'Magazyn leków', 'ML', 3, 0, '2045-06-06 16:27:38', 9, 7, '', 6000),
(6, 'Zespół upraw', 'ZU', 3, 3, '2045-05-30 16:27:38', 15, 7, '', 2500);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT dla tabeli `komputery`
--
ALTER TABLE `komputery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;
--
-- AUTO_INCREMENT dla tabeli `logowania`
--
ALTER TABLE `logowania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT dla tabeli `moduly`
--
ALTER TABLE `moduly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `notatki_ng`
--
ALTER TABLE `notatki_ng`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT dla tabeli `notatki_tr`
--
ALTER TABLE `notatki_tr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT dla tabeli `notatki_udo`
--
ALTER TABLE `notatki_udo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT dla tabeli `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT dla tabeli `polecenia`
--
ALTER TABLE `polecenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT dla tabeli `polecenia_osoby`
--
ALTER TABLE `polecenia_osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;
--
-- AUTO_INCREMENT dla tabeli `stan`
--
ALTER TABLE `stan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `testylog`
--
ALTER TABLE `testylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `ustawienia`
--
ALTER TABLE `ustawienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `wiadomosci`
--
ALTER TABLE `wiadomosci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT dla tabeli `zespoly`
--
ALTER TABLE `zespoly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
