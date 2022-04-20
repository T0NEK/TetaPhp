-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Kwi 2022, 18:42
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
(1, 1, 'qwerty', '2045-07-06 02:27:59', 'modul', 0, 'polecenie', '2045-07-06 02:30:59', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'modul', 'potrzebuję dodatkowe dane:'),
(2, 0, '', '', '', 0, 'qwerty', '2045-07-06 02:31:01', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(3, 2, 'qwerty', '2045-07-06 02:27:59', '', 1, 'modul', '2045-07-06 02:31:21', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane:', ''),
(4, 1, 'qwerty', '2045-07-06 02:27:59', 'modul', 0, '123', '2045-07-06 02:32:32', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'nie znaleziono modułu'),
(5, 2, 'qwerty', '2045-07-06 02:27:59', '', 4, 'info', '2045-07-06 02:33:50', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'nie znaleziono modułu', ''),
(6, 0, '', '', '', 61, 'polecenie', '2045-07-06 03:46:04', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(7, 1, 'as', '2045-07-06 03:46:08', '', 0, 'as', '2045-07-06 03:46:08', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'nieznane polecenie'),
(8, 2, 'as', '2045-07-06 03:46:08', '', 7, 'info', '2045-07-06 03:46:21', 4, 'William Weir', 1, 'DESKTOP-2KPJSHU', 0, 'nieznane polecenie', ''),
(9, 0, '', '', '', 61, 'polecenie', '2045-07-06 03:46:34', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(10, 1, 'qwerty', '2045-07-06 03:46:38', '', 0, 'qwerty', '2045-07-06 03:46:38', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'odmowa wykonania'),
(11, 2, 'qwerty', '2045-07-06 03:46:38', '', 10, 'info', '2045-07-06 03:46:42', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'odmowa wykonania', ''),
(12, 0, '', '', '', 61, 'polecenie', '2045-07-06 03:47:03', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(13, 1, 'as', '2045-07-06 03:47:07', '', 0, 'as', '2045-07-06 03:47:07', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'nie masz uprawnień'),
(14, 2, 'as', '2045-07-06 03:47:07', '', 13, 'info', '2045-07-06 03:47:12', 4, 'William Weir', 1, 'DESKTOP-2KPJSHU', 0, 'nie masz uprawnień', ''),
(15, 0, '', '', '', 61, 'polecenie', '2045-07-06 03:47:26', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(16, 1, 'qwerty', '2045-07-06 03:47:29', '', 0, 'qwerty', '2045-07-06 03:47:29', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'modul', 'potrzebuję dodatkowe dane:'),
(17, 2, 'qwerty', '2045-07-06 03:47:29', '', 16, 'modul', '2045-07-06 03:47:35', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane:', ''),
(18, 1, 'qwerty', '2045-07-06 03:47:29', 'modul', 0, '12', '2045-07-06 03:47:46', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'nie znaleziono modułu'),
(19, 2, 'qwerty', '2045-07-06 03:47:29', '', 18, 'info', '2045-07-06 03:47:59', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'nie znaleziono modułu', ''),
(20, 0, '', '', '', 61, 'polecenie', '2045-07-06 03:48:18', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(21, 1, 'as', '2045-07-06 03:48:23', '', 0, 'as', '2045-07-06 03:48:23', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 1, 'modul', 'potrzebuję dodatkowe dane:'),
(22, 2, 'as', '2045-07-06 03:48:23', '', 21, 'modul', '2045-07-06 03:49:24', 4, 'William Weir', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane:', ''),
(23, 1, 'as', '2045-07-06 03:48:23', 'modul', 0, 'ab', '2045-07-06 03:49:36', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 1, 'modul', 'potrzebuję dodatkowe dane:'),
(24, 2, 'as', '2045-07-06 03:48:23', '', 23, 'modul', '2045-07-06 03:49:41', 4, 'William Weir', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane:', ''),
(25, 1, 'as', '2045-07-06 03:48:23', 'modul', 0, 'zu', '2045-07-06 03:49:50', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 1, 'modul', 'potrzebuję dodatkowe dane:'),
(26, 2, 'as', '2045-07-06 03:48:23', '', 25, 'modul', '2045-07-06 03:49:53', 4, 'William Weir', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane:', ''),
(27, 1, 'as', '2045-07-06 03:48:23', 'modul', 0, 'lab', '2045-07-06 03:50:00', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'odmowa wykonania'),
(28, 2, 'as', '2045-07-06 03:48:23', '', 27, 'info', '2045-07-06 03:50:16', 4, 'William Weir', 1, 'DESKTOP-2KPJSHU', 0, 'odmowa wykonania', ''),
(29, 0, '', '', '', 61, 'polecenie', '2045-07-06 03:51:23', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(30, 1, 'polecenie1', '2045-07-06 03:51:33', '', 0, 'polecenie1', '2045-07-06 03:51:33', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'modul', 'potrzebuję dodatkowe dane:'),
(31, 0, '', '', '', 61, 'polecenie', '2045-07-06 03:51:35', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(32, 1, 'polecenie2', '2045-07-06 03:51:40', '', 0, 'polecenie2', '2045-07-06 03:51:40', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'modul', 'potrzebuję dodatkowe dane:'),
(33, 2, 'polecenie1', '2045-07-06 03:51:33', '', 30, 'modul', '2045-07-06 03:51:50', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane:', ''),
(34, 1, 'polecenie1', '2045-07-06 03:51:33', 'modul', 0, 'a', '2045-07-06 03:51:56', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'nie znaleziono modułu'),
(35, 2, 'polecenie2', '2045-07-06 03:51:40', '', 32, 'modul', '2045-07-06 03:52:10', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane:', ''),
(36, 1, 'polecenie2', '2045-07-06 03:51:40', 'modul', 0, 'lab', '2045-07-06 03:52:19', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'wykonuję'),
(37, 2, 'polecenie2', '2045-07-06 03:51:40', '', 36, 'info', '2045-07-06 03:52:26', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'wykonuję', ''),
(38, 2, 'polecenie1', '2045-07-06 03:51:33', '', 34, 'info', '2045-07-06 03:53:12', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'nie znaleziono modułu', ''),
(39, 0, '', '', '', 61, 'polecenie', '2045-07-06 04:09:34', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(40, 1, 'polecenie1', '2045-07-06 04:09:40', '', 0, 'polecenie1', '2045-07-06 04:09:40', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 1, 'element', 'potrzebuję dodatkowe dane:'),
(41, 0, '', '', '', 53, 'test', '2045-07-06 04:57:00', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(42, 0, '', '', '', 53, 'test', '2045-07-06 04:57:57', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(43, 0, '', '', '', 53, 'test', '2045-07-06 04:59:12', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(44, 0, '', '', '', 53, 'test', '2045-07-06 04:59:54', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(45, 2, 'polecenie1', '2045-07-06 04:09:40', '', 40, 'element', '2045-07-06 05:03:00', 4, 'William Weir', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane:', ''),
(46, 0, '', '', '', 61, 'polecenie', '2045-07-06 05:03:15', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(47, 1, 'qwerty', '2045-07-06 05:03:20', '', 0, 'qwerty', '2045-07-06 05:03:20', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'element', 'potrzebuję dodatkowe dane:'),
(48, 2, 'qwerty', '2045-07-06 05:03:20', '', 47, 'element', '2045-07-06 05:03:25', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane:', ''),
(49, 1, 'qwerty', '2045-07-06 05:03:20', 'element', 0, 'pomieszczenie', '2045-07-06 05:03:41', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'element', 'potrzebuję dodatkowe dane:'),
(50, 2, 'qwerty', '2045-07-06 05:03:20', '', 49, 'element', '2045-07-06 05:04:48', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane:', ''),
(51, 1, 'qwerty', '2045-07-06 05:03:20', 'element', 0, 'a', '2045-07-06 05:04:59', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'nie znaleziono elementu'),
(52, 2, 'qwerty', '2045-07-06 05:03:20', '', 51, 'info', '2045-07-06 05:05:18', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'nie znaleziono elementu', ''),
(53, 0, '', '', '', 61, 'polecenie', '2045-07-06 05:09:50', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(54, 1, 'pomieszczenie', '2045-07-06 05:09:54', '', 0, 'pomieszczenie', '2045-07-06 05:09:54', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'element', 'potrzebuję dodatkowe dane:'),
(55, 2, 'pomieszczenie', '2045-07-06 05:09:54', '', 54, 'element', '2045-07-06 05:09:56', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane:', ''),
(56, 1, 'pomieszczenie', '2045-07-06 05:09:54', 'element', 0, 'pomieszczenie', '2045-07-06 05:10:01', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'nieznane polecenie'),
(57, 2, 'pomieszczenie', '2045-07-06 05:09:54', '', 56, 'info', '2045-07-06 05:10:20', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'nieznane polecenie', ''),
(58, 0, '', '', '', 61, 'polecenie', '2045-07-06 05:11:40', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(59, 1, 'qwerty', '2045-07-06 05:11:44', '', 0, 'qwerty', '2045-07-06 05:11:44', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'element', 'potrzebuję dodatkowe dane:'),
(60, 2, 'qwerty', '2045-07-06 05:11:44', '', 59, 'element', '2045-07-06 05:11:47', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane:', ''),
(61, 1, 'qwerty', '2045-07-06 05:11:44', 'element', 0, 'nie znam', '2045-07-06 05:12:01', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'element', 'potrzebuję dodatkowe dane:'),
(62, 2, 'qwerty', '2045-07-06 05:11:44', '', 61, 'element', '2045-07-06 05:12:17', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane:', ''),
(63, 1, 'qwerty', '2045-07-06 05:11:44', 'element', 0, 'pomieszczenie', '2045-07-06 05:12:27', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'wykonuję42s'),
(64, 2, 'qwerty', '2045-07-06 05:11:44', '', 63, 'info', '2045-07-06 05:14:20', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'wykonuję42s', ''),
(65, 0, '', '', '', 61, 'polecenie', '2045-07-06 05:15:55', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(66, 1, 'qwerty', '2045-07-06 05:15:58', '', 0, 'qwerty', '2045-07-06 05:15:58', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'element', 'potrzebuję dodatkowe dane:'),
(67, 2, 'qwerty', '2045-07-06 05:15:58', '', 66, 'element', '2045-07-06 05:16:01', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane:', ''),
(68, 1, 'qwerty', '2045-07-06 05:15:58', 'element', 0, 'pomieszczenie', '2045-07-06 05:16:10', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'wykonuję(czas ~ 1m17s)'),
(69, 2, 'qwerty', '2045-07-06 05:15:58', '', 68, 'info', '2045-07-06 05:16:21', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'wykonuję(czas ~ 1m17s)', ''),
(70, 0, '', '', '', 61, 'polecenie', '2045-07-06 05:17:37', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(71, 1, 'qwerty', '2045-07-06 05:17:40', '', 0, 'qwerty', '2045-07-06 05:17:40', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'zespol', 'potrzebuję dodatkowe dane:'),
(72, 2, 'qwerty', '2045-07-06 05:17:40', '', 71, 'zespol', '2045-07-06 05:17:53', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane:', ''),
(73, 1, 'qwerty', '2045-07-06 05:17:40', 'zespol', 0, 'zu', '2045-07-06 05:18:02', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'wykonuję , czas ~ 1m23s'),
(74, 2, 'qwerty', '2045-07-06 05:17:40', '', 73, 'info', '2045-07-06 05:22:40', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'wykonuję , czas ~ 1m23s', ''),
(75, 0, '', '', '', 61, 'polecenie', '2045-07-06 14:04:15', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(76, 1, 'qwert', '2045-07-06 14:04:19', '', 0, 'qwert', '2045-07-06 14:04:19', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'info', 'polecenie zakończono prawidłowo'),
(77, 2, 'qwert', '2045-07-06 14:04:19', '', 76, 'info', '2045-07-06 14:04:54', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'wykonuję , czas ~ 42s', ''),
(78, 2, 'qwert', '2045-07-06 14:04:19', '', 76, 'info', '2045-07-06 14:04:54', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'polecenie zakończono prawidłowo', ''),
(79, 0, '', '', '', 61, 'polecenie', '2045-07-06 14:06:13', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(80, 1, 'qwert', '2045-07-06 14:06:16', '', 0, 'qwert', '2045-07-06 14:06:16', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'info', 'wykonuję'),
(81, 0, '', '', '', 61, 'polecenie', '2045-07-06 14:10:33', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(82, 1, 'polecenie1', '2045-07-06 14:10:37', '', 0, 'polecenie1', '2045-07-06 14:10:37', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'info', 'polecenie zakończono prawidłowo'),
(83, 0, '', '', '', 61, 'polecenie', '2045-07-06 14:10:39', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(84, 1, 'polecenie2', '2045-07-06 14:10:41', '', 0, 'polecenie2', '2045-07-06 14:10:41', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'info', 'problem z wykonaniem polecenia'),
(85, 0, '', '', '', 61, 'polecenie', '2045-07-06 14:10:43', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(86, 1, 'polecenie3', '2045-07-06 14:10:45', '', 0, 'polecenie3', '2045-07-06 14:10:45', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'info', 'wykonaniem polecenia zakończone niepowodzeniem'),
(87, 2, 'qwert', '2045-07-06 14:06:16', '', 80, 'info', '2045-07-06 14:11:14', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'wykonuję', ''),
(88, 2, 'polecenie1', '2045-07-06 14:10:37', '', 82, 'info', '2045-07-06 14:11:34', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'wykonuję , czas ~ 17s', ''),
(89, 2, 'polecenie2', '2045-07-06 14:10:41', '', 84, 'info', '2045-07-06 14:11:44', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'wykonuję , czas ~ 30s', ''),
(90, 2, 'polecenie3', '2045-07-06 14:10:45', '', 86, 'info', '2045-07-06 14:11:50', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'wykonuję , czas ~ 9s', ''),
(91, 2, 'polecenie1', '2045-07-06 14:10:37', '', 82, 'info', '2045-07-06 14:11:52', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'polecenie zakończono prawidłowo', ''),
(92, 2, 'polecenie3', '2045-07-06 14:10:45', '', 86, 'info', '2045-07-06 14:11:59', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'wykonaniem polecenia zakończone niepowodzeniem', ''),
(93, 2, 'polecenie2', '2045-07-06 14:10:41', '', 84, 'info', '2045-07-06 14:12:14', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'problem z wykonaniem polecenia', ''),
(94, 0, '', '', '', 3, 'wyloguj', '2045-07-06 14:23:25', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(95, 0, '', '', '', 61, 'polecenie', '2045-07-06 14:23:30', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(96, 1, 'polecenie3', '2045-07-06 14:23:33', '', 0, 'polecenie3', '2045-07-06 14:23:33', 0, ' ', 0, 'Komputer-Tomka', 1, 'info', 'nie masz uprawnień'),
(97, 2, 'polecenie3', '2045-07-06 14:23:33', '', 96, 'info', '2045-07-06 14:23:59', 0, ' ', 1, 'Komputer-Tomka', 0, 'nie masz uprawnień', ''),
(98, 0, '', '', '', 0, '`wyloguj', '2045-07-06 14:24:52', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(99, 0, '', '', '', 61, 'polecenie', '2045-07-06 14:25:03', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(100, 1, 'polecenie4', '2045-07-06 14:25:06', '', 0, 'polecenie4', '2045-07-06 14:25:06', 0, ' ', 0, 'Komputer-Tomka', 1, 'modul', 'potrzebuję dodatkowe dane:'),
(101, 2, 'polecenie4', '2045-07-06 14:25:06', '', 100, 'modul', '2045-07-06 14:25:13', 0, ' ', 1, 'Komputer-Tomka', 0, 'potrzebuję dodatkowe dane:', ''),
(102, 0, '', '', '', 61, 'polecenie', '2045-07-06 14:25:50', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(103, 1, 'polecenie5', '2045-07-06 14:25:54', '', 0, 'polecenie5', '2045-07-06 14:25:54', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'zespol', 'potrzebuję dodatkowe dane:'),
(104, 1, 'polecenie4', '2045-07-06 14:25:06', 'modul', 0, 'a', '2045-07-06 14:26:05', 0, ' ', 0, 'Komputer-Tomka', 1, 'info', 'nieznane polecenie'),
(105, 2, 'polecenie5', '2045-07-06 14:25:54', '', 103, 'zespol', '2045-07-06 14:26:19', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'potrzebuję dodatkowe dane:', ''),
(106, 1, 'polecenie5', '2045-07-06 14:25:54', 'zespol', 0, 'f', '2045-07-06 14:26:26', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'info', 'nie masz uprawnień'),
(107, 2, 'polecenie5', '2045-07-06 14:25:54', '', 106, 'info', '2045-07-06 14:27:01', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'nie masz uprawnień', ''),
(108, 2, 'polecenie4', '2045-07-06 14:25:06', '', 104, 'info', '2045-07-06 14:27:18', 0, ' ', 1, 'Komputer-Tomka', 0, 'nieznane polecenie', ''),
(109, 0, '', '', '', 3, 'wyloguj', '2045-07-06 14:28:17', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(110, 0, '', '', '', 61, 'polecenie', '2045-07-06 14:28:23', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(111, 1, 'polecenie6', '2045-07-06 14:28:26', '', 0, 'polecenie6', '2045-07-06 14:28:26', 0, ' ', 0, 'Komputer-Tomka', 1, 'info', 'nie masz uprawnień'),
(112, 2, 'polecenie6', '2045-07-06 14:28:26', '', 111, 'info', '2045-07-06 14:28:32', 0, ' ', 1, 'Komputer-Tomka', 0, 'nie masz uprawnień', ''),
(113, 0, '', '', '', 3, 'wyloguj', '2045-07-06 14:36:38', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(114, 0, '', '', '', 61, 'polecenie', '2045-07-06 14:36:52', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(115, 1, 'polecenie1', '2045-07-06 14:36:55', '', 0, 'polecenie1', '2045-07-06 14:36:55', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'info', 'wykonuję'),
(116, 0, '', '', '', 61, 'polecenie', '2045-07-06 14:37:02', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(117, 1, 'polecenie2', '2045-07-06 14:37:07', '', 0, 'polecenie2', '2045-07-06 14:37:07', 0, ' ', 0, 'Komputer-Tomka', 1, 'modul', 'potrzebuję dodatkowe dane:'),
(118, 2, 'polecenie1', '2045-07-06 14:36:55', '', 115, 'info', '2045-07-06 14:37:29', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'wykonuję', ''),
(119, 2, 'polecenie2', '2045-07-06 14:37:07', '', 117, 'modul', '2045-07-06 14:37:39', 0, ' ', 1, 'Komputer-Tomka', 0, 'potrzebuję dodatkowe dane:', ''),
(120, 1, 'polecenie2', '2045-07-06 14:37:07', 'modul', 0, 'de', '2045-07-06 14:41:12', 0, ' ', 0, 'Komputer-Tomka', 1, 'info', 'nie znaleziono modułu'),
(121, 2, 'polecenie2', '2045-07-06 14:37:07', '', 120, 'info', '2045-07-06 18:04:47', 0, ' ', 1, 'Komputer-Tomka', 0, 'nie znaleziono modułu', ''),
(122, 0, '', '', '', 61, 'polecenie', '2045-07-06 18:04:55', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(123, 1, 'polecenie4', '2045-07-06 18:04:59', '', 0, 'polecenie4', '2045-07-06 18:04:59', 0, ' ', 0, 'Komputer-Tomka', 1, 'info', 'słucham ?'),
(124, 2, 'polecenie4', '2045-07-06 18:04:59', '', 123, 'info', '2045-07-06 18:05:12', 0, ' ', 1, 'Komputer-Tomka', 0, 'słucham ?', ''),
(125, 0, '', '', '', 0, '??', '2045-07-06 18:05:40', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(126, 0, '', '', '', 61, 'polecenie', '2045-07-06 18:06:07', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(127, 1, 'polecenie5', '2045-07-06 18:06:11', '', 0, 'polecenie5', '2045-07-06 18:06:11', 0, ' ', 0, 'Komputer-Tomka', 1, 'modul', 'potrzebuję dodatkowe dane:'),
(128, 2, 'polecenie5', '2045-07-06 18:06:11', '', 127, 'modul', '2045-07-06 18:06:16', 0, ' ', 1, 'Komputer-Tomka', 0, 'potrzebuję dodatkowe dane:', ''),
(129, 1, 'polecenie5', '2045-07-06 18:06:11', 'modul', 0, 'lab', '2045-07-06 18:06:31', 0, ' ', 0, 'Komputer-Tomka', 1, 'zespol', 'potrzebuję dodatkowe dane:'),
(130, 2, 'polecenie5', '2045-07-06 18:06:11', '', 129, 'zespol', '2045-07-06 18:06:35', 0, ' ', 1, 'Komputer-Tomka', 0, 'potrzebuję dodatkowe dane:', ''),
(131, 1, 'polecenie5', '2045-07-06 18:06:11', 'zespol', 0, 'zu', '2045-07-06 18:06:45', 0, ' ', 0, 'Komputer-Tomka', 1, 'element', 'potrzebuję dodatkowe dane:'),
(132, 2, 'polecenie5', '2045-07-06 18:06:11', '', 131, 'element', '2045-07-06 18:06:49', 0, ' ', 1, 'Komputer-Tomka', 0, 'potrzebuję dodatkowe dane:', ''),
(133, 1, 'polecenie5', '2045-07-06 18:06:11', 'element', 0, 'pomieszczenie', '2045-07-06 18:06:59', 0, ' ', 0, 'Komputer-Tomka', 1, 'info', 'test'),
(134, 2, 'polecenie5', '2045-07-06 18:06:11', '', 133, 'info', '2045-07-06 18:07:13', 0, ' ', 1, 'Komputer-Tomka', 0, 'odmowa wykonania', ''),
(135, 2, 'polecenie5', '2045-07-06 18:06:11', '', 133, 'info', '2045-07-06 18:12:31', 0, ' ', 1, 'Komputer-Tomka', 0, 'test', ''),
(136, 0, '', '', '', 61, 'polecenie', '2045-07-06 18:15:14', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(137, 1, 'pomieszczenie', '2045-07-06 18:15:17', '', 0, 'pomieszczenie', '2045-07-06 18:15:17', 0, ' ', 0, 'Komputer-Tomka', 1, 'info', 'test 1'),
(138, 2, 'pomieszczenie', '2045-07-06 18:15:17', '', 137, 'info', '2045-07-06 18:15:33', 0, ' ', 1, 'Komputer-Tomka', 0, 'test 1', ''),
(139, 0, '', '', '', 61, 'polecenie', '2045-07-06 18:18:59', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(140, 1, 'pomieszczenie', '2045-07-06 18:19:02', '', 0, 'pomieszczenie', '2045-07-06 18:19:02', 0, ' ', 0, 'Komputer-Tomka', 1, 'info', 'test 12'),
(141, 2, 'pomieszczenie', '2045-07-06 18:19:02', '', 140, 'info', '2045-07-06 18:21:17', 0, ' ', 1, 'Komputer-Tomka', 0, 'test', ''),
(142, 2, 'pomieszczenie', '2045-07-06 18:19:02', '', 140, 'info', '2045-07-06 18:21:33', 0, ' ', 1, 'Komputer-Tomka', 0, 'test', ''),
(143, 2, 'pomieszczenie', '2045-07-06 18:19:02', '', 140, 'info', '2045-07-06 18:21:37', 0, ' ', 1, 'Komputer-Tomka', 0, 'test 1', ''),
(144, 2, 'pomieszczenie', '2045-07-06 18:19:02', '', 140, 'info', '2045-07-06 18:21:46', 0, ' ', 1, 'Komputer-Tomka', 0, 'test 1', ''),
(145, 2, 'pomieszczenie', '2045-07-06 18:19:02', '', 140, 'info', '2045-07-06 18:21:50', 0, ' ', 1, 'Komputer-Tomka', 0, 'test 12', ''),
(146, 0, '', '', '', 61, 'polecenie', '2045-07-06 18:25:40', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(147, 1, 'pomieszczenie', '2045-07-06 18:25:42', '', 0, 'pomieszczenie', '2045-07-06 18:25:42', 0, ' ', 0, 'Komputer-Tomka', 1, 'info', 'nie masz uprawnień'),
(148, 2, 'pomieszczenie', '2045-07-06 18:25:42', '', 147, 'info', '2045-07-06 18:25:45', 0, ' ', 1, 'Komputer-Tomka', 0, 'nie masz uprawnień', ''),
(149, 0, '', '', '', 61, 'polecenie', '2045-07-06 18:25:58', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(150, 1, 'pomieszczenie', '2045-07-06 18:26:01', '', 0, 'pomieszczenie', '2045-07-06 18:26:01', 0, ' ', 0, 'Komputer-Tomka', 1, 'info', 'test'),
(151, 2, 'pomieszczenie', '2045-07-06 18:26:01', '', 150, 'info', '2045-07-06 18:26:07', 0, ' ', 1, 'Komputer-Tomka', 0, 'odmowa wykonania', ''),
(152, 2, 'pomieszczenie', '2045-07-06 18:26:01', '', 150, 'info', '2045-07-06 18:26:12', 0, ' ', 1, 'Komputer-Tomka', 0, 'test', ''),
(153, 0, '', '', '', 61, 'polecenie', '2045-07-06 18:31:01', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(154, 1, 'polecenie1', '2045-07-06 18:31:05', '', 0, 'polecenie1', '2045-07-06 18:31:05', 0, ' ', 0, 'Komputer-Tomka', 1, 'info', 'odmowa wykonania'),
(155, 2, 'polecenie1', '2045-07-06 18:31:05', '', 154, 'info', '2045-07-06 18:31:11', 0, ' ', 1, 'Komputer-Tomka', 0, 'odmowa wykonania', ''),
(156, 0, '', '', '', 61, 'polecenie', '2045-07-06 18:31:34', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(157, 1, 'polecenie1', '2045-07-06 18:31:37', '', 0, 'polecenie1', '2045-07-06 18:31:37', 0, ' ', 0, 'Komputer-Tomka', 1, 'info', 'test'),
(158, 2, 'polecenie1', '2045-07-06 18:31:37', '', 157, 'info', '2045-07-06 18:31:43', 0, ' ', 1, 'Komputer-Tomka', 0, 'test', ''),
(159, 0, '', '', '', 61, 'polecenie', '2045-07-06 18:33:30', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(160, 1, 'polecenie2', '2045-07-06 18:33:33', '', 0, 'polecenie2', '2045-07-06 18:33:33', 0, ' ', 0, 'Komputer-Tomka', 1, 'info', 'odmowa wykonania'),
(161, 2, 'polecenie2', '2045-07-06 18:33:33', '', 160, 'info', '2045-07-06 18:53:11', 0, ' ', 1, 'Komputer-Tomka', 0, 'odmowa wykonania', ''),
(162, 1, 'polecenie2', '2045-07-06 18:33:33', '', 0, 'polecenie2', '2045-07-06 18:33:33', 0, ' ', 0, 'Komputer-Tomka', 1, 'info', 'test 1'),
(163, 2, 'polecenie2', '2045-07-06 18:33:33', '', 160, 'info', '2045-07-06 19:00:10', 0, ' ', 1, 'Komputer-Tomka', 0, 'test 1', ''),
(164, 1, 'pomieszczenie', '2045-07-06 05:09:54', '', 0, 'pomieszczenie', '2045-07-06 05:10:01', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'test 1'),
(165, 2, 'pomieszczenie', '2045-07-06 05:09:54', '', 56, 'info', '2045-07-06 19:01:02', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'test 1', ''),
(166, 1, 'polecenie1', '2045-07-06 03:51:33', '', 0, 'polecenie1', '2045-07-06 03:51:33', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'test 1'),
(167, 2, 'polecenie1', '2045-07-06 03:51:33', '', 30, 'info', '2045-07-06 19:01:20', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'test 1', ''),
(168, 1, 'polecenie1', '2045-07-06 03:51:33', '', 0, 'polecenie1', '2045-07-06 03:51:33', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'pytanie', 'test 1'),
(169, 2, 'polecenie1', '2045-07-06 03:51:33', '', 166, 'pytanie', '2045-07-06 19:03:40', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'test 1', ''),
(170, 1, 'polecenie3', '2045-07-06 14:10:45', '', 0, 'polecenie3', '2045-07-06 14:10:45', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'pytanie', 'test '),
(171, 2, 'polecenie3', '2045-07-06 14:10:45', '', 86, 'pytanie', '2045-07-06 19:08:25', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'test ', ''),
(172, 1, 'polecenie3', '2045-07-06 14:10:45', '', 0, 'polecenie3', '2045-07-06 14:10:45', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'pytanie', 'potrzebuję dodatkowe dane: test'),
(173, 2, 'polecenie3', '2045-07-06 14:10:45', '', 170, 'pytanie', '2045-07-06 19:11:58', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'potrzebuję dodatkowe dane: test', ''),
(174, 1, 'polecenie3', '2045-07-06 14:10:45', 'pytanie', 0, 'a', '2045-07-06 19:12:17', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'info', 'nieznane polecenie'),
(175, 0, '', '', '', 0, 'a', '2045-07-06 19:12:31', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(176, 2, 'polecenie3', '2045-07-06 14:10:45', '', 174, 'info', '2045-07-06 19:20:37', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'nieznane polecenie', ''),
(177, 0, '', '', '', 61, 'polecenie', '2045-07-06 19:21:25', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(178, 1, 'reset1', '2045-07-06 19:21:30', '', 0, 'reset1', '2045-07-06 19:21:30', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'modul', 'potrzebuję dodatkowe dane:'),
(179, 2, 'reset1', '2045-07-06 19:21:30', '', 178, 'modul', '2045-07-06 19:34:01', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'potrzebuję dodatkowe dane:', ''),
(180, 1, 'reset1', '2045-07-06 19:21:30', 'modul', 0, 'lab', '2045-07-06 19:34:12', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'zespol', 'potrzebuję dodatkowe dane:'),
(181, 2, 'reset1', '2045-07-06 19:21:30', '', 180, 'zespol', '2045-07-06 19:34:18', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'potrzebuję dodatkowe dane:', ''),
(182, 1, 'reset1', '2045-07-06 19:21:30', 'zespol', 0, 'pl', '2045-07-06 19:34:26', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'element', 'potrzebuję dodatkowe dane:'),
(183, 2, 'reset1', '2045-07-06 19:21:30', '', 182, 'element', '2045-07-06 19:34:30', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'potrzebuję dodatkowe dane:', ''),
(184, 1, 'reset1', '2045-07-06 19:21:30', 'element', 0, 'pomieszczenie', '2045-07-06 19:34:39', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'info', 'wykonuję , czas ~ 22s'),
(185, 0, '', '', '', 53, 'test', '2045-07-06 19:35:01', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(186, 2, 'reset1', '2045-07-06 19:21:30', '', 184, 'info', '2045-07-06 19:35:34', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'wykonuję , czas ~ 22s', ''),
(187, 1, 'reset1', '2045-07-06 19:21:30', '', 0, 'pomieszczenie', '2045-07-06 19:34:39', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'info', 'wykonanie polecenia zakończone niepowodzeniem'),
(188, 2, 'reset1', '2045-07-06 19:21:30', '', 184, 'info', '2045-07-06 19:35:55', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'wykonanie polecenia zakończone niepowodzeniem', ''),
(189, 1, 'reset1', '2045-07-06 19:21:30', '', 0, 'pomieszczenie', '2045-07-06 19:34:39', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'pytanie', 'potrzebuję dodatkowe dane: podaj inny element'),
(190, 2, 'reset1', '2045-07-06 19:21:30', '', 187, 'pytanie', '2045-07-06 19:37:57', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'potrzebuję dodatkowe dane: podaj inny element', ''),
(191, 1, 'reset1', '2045-07-06 19:21:30', 'pytanie', 0, 'nic', '2045-07-06 19:38:05', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'info', 'odmowa wykonania'),
(192, 2, 'reset1', '2045-07-06 19:21:30', '', 191, 'info', '2045-07-06 19:38:50', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'odmowa wykonania', ''),
(193, 1, 'reset1', '2045-07-06 19:21:30', '', 0, 'nic', '2045-07-06 19:38:05', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'pytanie', 'potrzebuję dodatkowe dane: podaj inny element'),
(194, 2, 'reset1', '2045-07-06 19:21:30', '', 191, 'pytanie', '2045-07-06 19:39:23', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'potrzebuję dodatkowe dane: podaj inny element', ''),
(195, 1, 'reset1', '2045-07-06 19:21:30', 'pytanie', 0, 'aa', '2045-07-06 19:40:34', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'info', 'nie rozumiem'),
(196, 2, 'reset1', '2045-07-06 19:21:30', '', 195, 'info', '2045-07-06 19:40:55', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'nie rozumiem', ''),
(197, 1, 'reset1', '2045-07-06 19:21:30', '', 0, 'aa', '2045-07-06 19:40:34', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'info', 'podaj inny element'),
(198, 2, 'reset1', '2045-07-06 19:21:30', '', 195, 'info', '2045-07-06 19:41:10', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'podaj inny element', ''),
(199, 1, 'pomieszczenie', '2045-07-06 05:09:54', '', 0, 'pomieszczenie', '2045-07-06 05:10:01', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 1, 'pytanie', 'potrzebuję dodatkowe dane: podaj inny element'),
(200, 2, 'pomieszczenie', '2045-07-06 05:09:54', '', 164, 'pytanie', '2045-07-06 19:41:31', 2, 'John Spow', 1, 'DESKTOP-2KPJSHU', 0, 'potrzebuję dodatkowe dane: podaj inny element', ''),
(201, 1, 'pomieszczenie', '2045-07-06 05:09:54', 'pytanie', 0, 'zz', '2045-07-06 19:41:49', 2, 'John Spow', 0, 'Komputer-Tomka', 1, 'info', 'wykonuję'),
(202, 2, 'pomieszczenie', '2045-07-06 05:09:54', '', 201, 'info', '2045-07-06 19:41:58', 2, 'John Spow', 1, 'Komputer-Tomka', 0, 'wykonuję', ''),
(203, 0, '', '', '', 3, 'wyloguj', '2045-07-06 19:42:38', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(204, 0, '', '', '', 0, 'zasloguj', '2045-07-06 19:43:02', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(205, 0, '', '', '', 2, 'zaloguj', '2045-07-06 19:43:11', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(206, 0, '', '', '', 2, 'zaloguj', '2045-07-06 19:47:30', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(207, 0, '', '', '', 2, 'zaloguj', '2045-07-06 19:48:06', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(208, 0, '', '', '', 2, 'zaloguj', '2045-07-06 19:50:03', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(209, 0, '', '', '', 53, 'test', '2045-07-06 19:50:24', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(210, 0, '', '', '', 53, 'test', '2045-07-06 19:50:41', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(211, 0, '', '', '', 4, 'moduły', '2045-07-06 19:50:55', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(212, 0, '', '', '', 45, 'zespoły', '2045-07-06 19:51:05', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(213, 0, '', '', '', 45, 'zespoły', '2045-07-06 19:53:22', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(214, 0, '', '', '', 45, 'zespoły', '2045-07-06 19:53:38', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(215, 0, '', '', '', 45, 'zespoły', '2045-07-06 19:56:17', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(216, 0, '', '', '', 2, 'zaloguj', '2045-07-06 19:59:12', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(217, 0, '', '', '', 2, 'zaloguj', '2045-07-06 19:59:51', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(218, 0, '', '', '', 4, 'moduły', '2045-07-06 20:00:05', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(219, 0, '', '', '', 45, 'zespoły', '2045-07-06 20:00:15', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(220, 0, '', '', '', 47, 'zespoły wszystkie', '2045-07-06 20:01:33', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(221, 0, '', '', '', 47, 'zespoły wszystkie', '2045-07-06 20:05:23', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(222, 0, '', '', '', 47, 'zespoły wszystkie', '2045-07-06 20:16:09', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(223, 0, '', '', '', 52, 'zespoł', '2045-07-06 20:16:26', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(224, 0, '', '', '', 53, 'test', '2045-07-06 20:16:46', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(225, 0, '', '', '', 53, 'test', '2045-07-06 20:17:38', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(226, 0, '', '', '', 54, 'reset', '2045-07-06 20:18:58', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(227, 0, '', '', '', 54, 'reset', '2045-07-06 20:20:00', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(228, 0, '', '', '', 2, 'zaloguj', '2045-07-06 20:25:18', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(229, 0, '', '', '', 49, 'zespół', '2045-07-06 20:25:44', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(230, 0, '', '', '', 53, 'test', '2045-07-06 20:26:11', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(231, 0, '', '', '', 54, 'reset', '2045-07-06 20:26:37', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(232, 0, '', '', '', 58, 'naprawa', '2045-07-06 20:27:23', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(233, 0, '', '', '', 53, 'test', '2045-07-06 20:28:09', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(234, 0, '', '', '', 0, 'zu', '2045-07-06 20:33:32', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(235, 0, '', '', '', 58, 'naprawa', '2045-07-06 20:33:41', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(236, 0, '', '', '', 0, 'hasło', '2045-07-06 20:34:54', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(237, 0, '', '', '', 12, '?', '2045-07-06 20:35:15', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(238, 0, '', '', '', 0, 'hasło', '2045-07-06 20:36:17', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(239, 0, '', '', '', 2, 'zaloguj', '2045-07-06 20:36:31', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(240, 0, '', '', '', 59, 'hasło', '2045-07-06 20:36:41', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(241, 0, '', '', '', 2, 'zaloguj', '2045-07-07 01:37:24', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(242, 0, '', '', '', 4, 'moduły', '2045-07-07 01:37:49', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(243, 0, '', '', '', 0, 'moduły wszystkie', '2045-07-07 02:05:03', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(244, 0, '', '', '', 2, 'zaloguj', '2045-07-07 02:05:12', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(245, 0, '', '', '', 65, 'moduły wszystkie', '2045-07-07 02:05:23', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(246, 0, '', '', '', 4, 'moduły', '2045-07-07 02:05:32', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(247, 0, '', '', '', 4, 'moduły', '2045-07-07 02:32:18', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(248, 0, '', '', '', 3, 'wyloguj', '2045-07-07 02:38:33', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(249, 0, '', '', '', 2, 'zaloguj', '2045-07-07 02:38:43', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(250, 0, '', '', '', 4, 'moduły', '2045-07-07 02:39:12', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(251, 0, '', '', '', 0, 'william', '2045-07-07 02:39:45', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(252, 0, '', '', '', 4, 'moduły', '2045-07-07 02:39:52', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(253, 0, '', '', '', 0, 'moduły wszystkie', '2045-07-07 02:40:19', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(254, 0, '', '', '', 3, 'wyloguj', '2045-07-07 02:41:51', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(255, 0, '', '', '', 2, 'zaloguj', '2045-07-07 02:42:03', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(256, 0, '', '', '', 65, 'moduły wszystkie', '2045-07-07 02:42:33', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(257, 0, '', '', '', 4, 'moduły', '2045-07-07 02:43:12', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(258, 0, '', '', '', 45, 'zespoły', '2045-07-07 02:43:32', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(259, 0, '', '', '', 47, 'zespoły wszystkie', '2045-07-07 02:45:15', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(260, 0, '', '', '', 2, 'zaloguj', '2045-07-07 02:49:16', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(261, 0, '', '', '', 0, 'zespoły wszystkie', '2045-07-07 02:49:35', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(262, 0, '', '', '', 45, 'zespoły', '2045-07-07 02:49:47', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(263, 0, '', '', '', 45, 'zespoły', '2045-07-07 02:59:40', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(264, 0, '', '', '', 45, 'zespoły', '2045-07-07 03:00:07', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(265, 0, '', '', '', 45, 'zespoły', '2045-07-07 03:03:38', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(266, 0, '', '', '', 52, 'zespoł', '2045-07-07 03:06:28', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(267, 0, '', '', '', 52, 'zespoł', '2045-07-07 03:07:01', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(268, 0, '', '', '', 45, 'zespoły', '2045-07-07 03:07:46', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(269, 0, '', '', '', 45, 'zespoły', '2045-07-07 03:08:32', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(270, 0, '', '', '', 4, 'moduły', '2045-07-07 03:10:14', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(271, 0, '', '', '', 45, 'zespoły', '2045-07-07 03:10:26', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(272, 0, '', '', '', 45, 'zespoły', '2045-07-07 03:15:42', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(273, 0, '', '', '', 45, 'zespoły', '2045-07-07 03:16:00', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(274, 0, '', '', '', 45, 'zespoły', '2045-07-07 03:37:29', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(275, 0, '', '', '', 45, 'zespoły', '2045-07-07 03:37:53', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(276, 0, '', '', '', 52, 'zespoł', '2045-07-07 03:39:09', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(277, 0, '', '', '', 49, 'zespół', '2045-07-07 03:44:15', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(278, 0, '', '', '', 49, 'zespół', '2045-07-07 03:46:08', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(279, 0, '', '', '', 52, 'zespoł', '2045-07-07 03:46:29', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(280, 0, '', '', '', 3, 'wyloguj', '2045-07-07 03:47:11', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(281, 0, '', '', '', 2, 'zaloguj', '2045-07-07 03:47:44', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(282, 0, '', '', '', 54, 'reset', '2045-07-07 03:48:23', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(283, 0, '', '', '', 53, 'test', '2045-07-07 05:00:11', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(284, 0, '', '', '', 53, 'test', '2045-07-07 05:06:26', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(285, 0, '', '', '', 0, 'testy historia', '2045-07-07 15:12:57', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(286, 0, '', '', '', 2, 'zaloguj', '2045-07-07 15:13:33', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(287, 0, '', '', '', 66, 'testy historia', '2045-07-07 15:13:43', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(288, 0, '', '', '', 3, 'wyloguj', '2045-07-07 15:15:03', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(289, 0, '', '', '', 2, 'zaloguj', '2045-07-07 15:15:06', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(290, 0, '', '', '', 66, 'testy historia', '2045-07-07 15:15:15', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(291, 0, '', '', '', 66, 'testy historia', '2045-07-07 15:15:55', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(292, 0, '', '', '', 3, 'wyloguj', '2045-07-07 15:16:04', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(293, 0, '', '', '', 2, 'zaloguj', '2045-07-07 15:16:08', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(294, 0, '', '', '', 66, 'testy historia', '2045-07-07 15:16:19', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(295, 0, '', '', '', 2, 'zaloguj', '2045-07-07 15:27:03', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(296, 0, '', '', '', 66, 'testy historia', '2045-07-07 15:27:16', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(297, 0, '', '', '', 66, 'testy historia', '2045-07-07 15:47:11', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(298, 0, '', '', '', 2, 'zaloguj', '2045-07-07 15:52:10', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(299, 0, '', '', '', 66, 'testy historia', '2045-07-07 15:54:45', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(300, 0, '', '', '', 2, 'zaloguj', '2045-07-07 16:14:42', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(301, 0, '', '', '', 0, 'testy historia', '2045-07-07 16:15:07', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(302, 0, '', '', '', 2, 'zaloguj', '2045-07-07 16:15:15', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(303, 0, '', '', '', 66, 'testy historia', '2045-07-07 16:15:23', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(304, 0, '', '', '', 2, 'zaloguj', '2045-07-07 16:17:16', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(305, 0, '', '', '', 66, 'testy historia', '2045-07-07 16:17:31', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(306, 0, '', '', '', 2, 'zaloguj', '2045-07-07 16:18:54', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(307, 0, '', '', '', 66, 'testy historia', '2045-07-07 16:19:11', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(308, 0, '', '', '', 2, 'zaloguj', '2045-07-07 16:19:53', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(309, 0, '', '', '', 0, 'testy wszystkie', '2045-07-07 16:20:06', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(310, 0, '', '', '', 66, 'testy historia', '2045-07-07 16:20:19', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(311, 0, '', '', '', 66, 'testy historia', '2045-07-07 16:21:30', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(312, 0, '', '', '', 3, 'wyloguj', '2045-07-07 16:24:19', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(313, 0, '', '', '', 2, 'zaloguj', '2045-07-07 16:24:31', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(314, 0, '', '', '', 66, 'testy historia', '2045-07-07 16:24:48', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(315, 0, '', '', '', 53, 'test', '2045-07-07 16:25:05', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(316, 0, '', '', '', 66, 'testy historia', '2045-07-07 16:25:47', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(317, 0, '', '', '', 53, 'test', '2045-07-07 16:29:40', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(318, 0, '', '', '', 66, 'testy historia', '2045-07-07 16:30:42', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(319, 0, '', '', '', 2, 'zaloguj', '2045-07-07 17:26:57', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(320, 0, '', '', '', 49, 'zespół', '2045-07-07 17:27:12', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(321, 0, '', '', '', 66, 'testy historia', '2045-07-07 17:27:52', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(322, 0, '', '', '', 66, 'testy historia', '2045-07-07 17:28:57', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(323, 0, '', '', '', 53, 'test', '2045-07-07 17:29:46', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(324, 0, '', '', '', 66, 'testy historia', '2045-07-07 17:30:06', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(325, 0, '', '', '', 54, 'reset', '2045-07-07 17:30:30', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(326, 0, '', '', '', 53, 'test', '2045-07-07 17:30:54', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(327, 0, '', '', '', 66, 'testy historia', '2045-07-07 17:31:12', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(328, 0, '', '', '', 66, 'testy historia', '2045-07-07 17:36:43', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(329, 0, '', '', '', 66, 'testy historia', '2045-07-07 17:37:23', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(330, 0, '', '', '', 66, 'testy historia', '2045-07-07 17:39:31', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(331, 0, '', '', '', 66, 'testy historia', '2045-07-07 17:41:55', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(332, 0, '', '', '', 66, 'testy historia', '2045-07-07 17:45:56', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(333, 0, '', '', '', 66, 'testy historia', '2045-07-07 17:48:57', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(334, 0, '', '', '', 66, 'testy historia', '2045-07-07 17:50:26', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(335, 0, '', '', '', 2, 'zaloguj', '2045-07-07 17:53:03', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(336, 0, '', '', '', 66, 'testy historia', '2045-07-07 17:53:19', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(337, 0, '', '', '', 66, 'testy historia', '2045-07-07 17:57:49', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(338, 0, '', '', '', 2, 'zaloguj', '2045-07-07 18:02:12', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(339, 0, '', '', '', 66, 'testy historia', '2045-07-07 18:02:26', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(340, 0, '', '', '', 2, 'zaloguj', '2045-07-07 18:06:10', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(341, 0, '', '', '', 66, 'testy historia', '2045-07-07 18:06:23', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(342, 0, '', '', '', 3, 'wyloguj', '2045-07-07 18:07:20', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(343, 0, '', '', '', 0, 'zmarzi', '2045-07-07 18:07:34', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(344, 0, '', '', '', 2, 'zaloguj', '2045-07-07 18:07:51', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(345, 0, '', '', '', 66, 'testy historia', '2045-07-07 18:09:39', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(346, 0, '', '', '', 0, 'john', '2045-07-07 18:11:43', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(347, 0, '', '', '', 2, 'zaloguj', '2045-07-07 18:11:49', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(348, 0, '', '', '', 66, 'testy historia', '2045-07-07 18:12:09', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(349, 0, '', '', '', 3, 'wyloguj', '2045-07-07 18:12:37', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(350, 0, '', '', '', 56, 'kasuji', '2045-07-07 18:13:36', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(351, 0, '', '', '', 2, 'zaloguj', '2045-07-07 18:13:42', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(352, 0, '', '', '', 2, 'zaloguj', '2045-07-07 18:14:05', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(353, 0, '', '', '', 66, 'testy historia', '2045-07-07 18:14:13', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(354, 0, '', '', '', 2, 'zaloguj', '2045-07-07 18:16:45', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(355, 0, '', '', '', 66, 'testy historia', '2045-07-07 18:17:25', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(356, 0, '', '', '', 2, 'zaloguj', '2045-07-07 18:22:22', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(357, 0, '', '', '', 0, 'reset historia', '2045-07-07 18:22:34', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(358, 0, '', '', '', 3, 'wyloguj', '2045-07-07 18:23:31', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(359, 0, '', '', '', 2, 'zaloguj', '2045-07-07 18:23:35', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(360, 0, '', '', '', 67, 'reset historia', '2045-07-07 18:23:44', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(361, 0, '', '', '', 2, 'zaloguj', '2045-07-07 18:32:14', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(362, 0, '', '', '', 0, 'naprawa historia', '2045-07-07 18:32:33', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(363, 0, '', '', '', 3, 'wyloguj', '2045-07-07 19:28:23', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(364, 0, '', '', '', 0, 'naprawa historia', '2045-07-07 19:28:27', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(365, 0, '', '', '', 0, 'naprawa historia', '2045-07-07 19:28:43', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(366, 0, '', '', '', 2, 'zaloguj', '2045-07-07 19:28:55', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(367, 0, '', '', '', 68, 'naprawa historia', '2045-07-07 19:29:10', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(368, 0, '', '', '', 0, 'test historia', '2045-07-07 19:30:41', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(369, 0, '', '', '', 66, 'testy historia', '2045-07-07 19:30:49', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(370, 0, '', '', '', 66, 'testy historia', '2045-07-07 19:31:09', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(371, 0, '', '', '', 68, 'naprawa historia', '2045-07-07 19:31:20', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(372, 0, '', '', '', 66, 'testy historia', '2045-07-07 19:31:32', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(373, 0, '', '', '', 68, 'naprawa historia', '2045-07-07 19:31:37', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(374, 0, '', '', '', 67, 'reset historia', '2045-07-07 19:33:07', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(375, 0, '', '', '', 58, 'naprawa', '2045-07-07 19:59:43', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(376, 0, '', '', '', 68, 'naprawa historia', '2045-07-07 20:00:07', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(377, 0, '', '', '', 3, 'wyloguj', '2045-07-07 20:03:22', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(378, 0, '', '', '', 2, 'zaloguj', '2045-07-07 20:05:53', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(379, 0, '', '', '', 68, 'naprawa historia', '2045-07-07 20:06:09', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(380, 0, '', '', '', 67, 'reset historia', '2045-07-07 20:06:31', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(381, 0, '', '', '', 66, 'testy historia', '2045-07-07 20:06:53', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(382, 0, '', '', '', 54, 'reset', '2045-07-07 20:08:05', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(383, 0, '', '', '', 67, 'reset historia', '2045-07-07 20:08:27', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(384, 0, '', '', '', 3, 'wyloguj', '2045-07-07 20:11:00', 2, 'John Spow', 0, 'Komputer-Tomka', 0, '', ''),
(385, 0, '', '', '', 2, 'zaloguj', '2045-07-07 20:11:06', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(386, 0, '', '', '', 67, 'reset historia', '2045-07-07 20:11:20', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(387, 0, '', '', '', 54, 'reset', '2045-07-07 20:11:30', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(388, 0, '', '', '', 53, 'test', '2045-07-07 20:11:51', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(389, 0, '', '', '', 58, 'naprawa', '2045-07-07 20:12:03', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(390, 0, '', '', '', 58, 'naprawa', '2045-07-07 20:34:18', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(391, 0, '', '', '', 3, 'wyloguj', '2045-07-07 20:37:36', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(392, 0, '', '', '', 2, 'zaloguj', '2045-07-07 20:37:43', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(393, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 20:38:01', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(394, 0, '', '', '', 2, 'zaloguj', '2045-07-07 20:44:01', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(395, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 20:44:14', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(396, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 20:44:47', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(397, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 20:45:28', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(398, 0, '', '', '', 2, 'zaloguj', '2045-07-07 20:54:31', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(399, 0, '', '', '', 0, 'hibernacja on', '2045-07-07 20:54:54', 0, ' ', 0, 'Komputer-Tomka', 0, '', '');
INSERT INTO `innelog` (`id`, `dedal`, `poleceniepierwsze`, `czaspierwsze`, `polecenieodpowiedz`, `polecenieid`, `polecenieText`, `czaswykonania`, `osoba`, `osobaText`, `odczytana`, `terminal`, `odpowiedz`, `odpowiedzText`, `odpowiedzTresc`) VALUES
(400, 0, '', '', '', 2, 'zaloguj', '2045-07-07 20:55:00', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(401, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 20:55:06', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(402, 0, '', '', '', 0, 'hibernacja on', '2045-07-07 20:55:17', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(403, 0, '', '', '', 2, 'zaloguj', '2045-07-07 20:55:32', 0, ' ', 0, 'Komputer-Tomka', 0, '', ''),
(404, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 20:55:42', 4, 'William Weir', 0, 'Komputer-Tomka', 0, '', ''),
(405, 0, '', '', '', 2, 'zaloguj', '2045-07-07 23:07:11', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(406, 0, '', '', '', 2, 'zaloguj', '2045-07-07 23:07:33', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(407, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 23:07:47', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(408, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 23:10:42', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(409, 0, '', '', '', 2, 'zaloguj', '2045-07-07 23:12:50', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(410, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 23:13:06', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(411, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 23:13:28', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(412, 0, '', '', '', 0, 'zs01', '2045-07-07 23:15:17', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(413, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 23:15:31', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(414, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 23:15:49', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(415, 0, '', '', '', 2, 'zaloguj', '2045-07-07 23:17:24', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(416, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 23:17:41', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(417, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 23:22:38', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(418, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 23:24:16', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(419, 0, '', '', '', 3, 'wyloguj', '2045-07-07 23:24:34', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(420, 0, '', '', '', 2, 'zaloguj', '2045-07-07 23:24:47', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(421, 0, '', '', '', 69, 'hibernacja on', '2045-07-07 23:25:12', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(422, 0, '', '', '', 2, 'zaloguj', '2045-07-07 23:31:44', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(423, 0, '', '', '', 70, 'hibernacja off', '2045-07-07 23:32:00', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(424, 0, '', '', '', 61, 'polecenie', '2045-07-07 23:32:33', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(425, 0, '', '', '', 70, 'hibernacja off', '2045-07-07 23:32:41', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(426, 0, '', '', '', 59, 'hasło', '2045-07-07 23:38:50', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(427, 0, '', '', '', 2, 'zaloguj', '2045-07-07 23:39:28', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(428, 0, '', '', '', 59, 'hasło', '2045-07-07 23:39:50', 3, 'Peng Yaping', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(429, 0, '', '', '', 3, 'wyloguj', '2045-07-07 23:40:05', 3, 'Peng Yaping', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(430, 0, '', '', '', 12, '?', '2045-07-07 23:40:10', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(431, 0, '', '', '', 61, 'polecenie', '2045-07-07 23:40:26', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(432, 1, 'hibernacja on', '2045-07-07 23:40:37', '', 0, 'hibernacja on', '2045-07-07 23:40:37', 0, ' ', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'nie masz uprawnień'),
(433, 2, 'hibernacja on', '2045-07-07 23:40:37', '', 432, 'info', '2045-07-07 23:40:52', 0, ' ', 1, 'DESKTOP-2KPJSHU', 0, 'nie masz uprawnień', ''),
(434, 1, 'hibernacja on', '2045-07-07 23:40:37', '', 0, 'hibernacja on', '2045-07-07 23:40:37', 0, ' ', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'zaloguj sie'),
(435, 2, 'hibernacja on', '2045-07-07 23:40:37', '', 432, 'info', '2045-07-07 23:41:04', 0, ' ', 1, 'DESKTOP-2KPJSHU', 0, 'zaloguj sie', ''),
(436, 0, '', '', '', 66, 'testy historia', '2045-07-07 23:51:01', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(437, 0, '', '', '', 61, 'polecenie', '2045-07-07 23:51:37', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(438, 1, 'testy historia', '2045-07-07 23:51:47', '', 0, 'testy historia', '2045-07-07 23:51:47', 0, ' ', 0, 'DESKTOP-2KPJSHU', 1, 'info', 'nieznane polecenie'),
(439, 0, '', '', '', 2, 'zaloguj', '2045-07-07 23:52:01', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(440, 0, '', '', '', 66, 'testy historia', '2045-07-07 23:52:21', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(441, 2, 'testy historia', '2045-07-07 23:51:47', '', 438, 'info', '2045-07-07 23:55:18', 0, ' ', 1, 'DESKTOP-2KPJSHU', 0, 'nieznane polecenie', ''),
(442, 0, '', '', '', 2, 'zaloguj', '2045-07-07 23:55:36', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(443, 0, '', '', '', 2, 'zaloguj', '2045-07-07 23:56:03', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(444, 0, '', '', '', 71, 'moduł historia', '2045-07-07 23:56:22', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(445, 0, '', '', '', 3, 'wyloguj', '2045-07-07 23:59:11', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(446, 0, '', '', '', 2, 'zaloguj', '2045-07-07 23:59:20', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(447, 0, '', '', '', 71, 'moduł historia', '2045-07-07 23:59:54', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(448, 0, '', '', '', 3, 'wyloguj', '2045-07-08 00:00:56', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(449, 0, '', '', '', 2, 'zaloguj', '2045-07-08 00:01:07', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(450, 0, '', '', '', 71, 'moduł historia', '2045-07-08 00:01:41', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(451, 0, '', '', '', 2, 'zaloguj', '2045-07-08 00:06:52', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(452, 0, '', '', '', 0, 'testy historia', '2045-07-08 00:07:14', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(453, 0, '', '', '', 2, 'zaloguj', '2045-07-08 00:07:20', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(454, 0, '', '', '', 66, 'testy historia', '2045-07-08 00:07:32', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(455, 0, '', '', '', 2, 'zaloguj', '2045-07-08 00:19:41', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(456, 0, '', '', '', 71, 'moduł historia', '2045-07-08 00:20:08', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(457, 0, '', '', '', 2, 'zaloguj', '2045-07-08 00:22:15', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(458, 0, '', '', '', 71, 'moduł historia', '2045-07-08 00:22:36', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(459, 0, '', '', '', 71, 'moduł historia', '2045-07-08 00:23:15', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(460, 0, '', '', '', 2, 'zaloguj', '2045-07-08 00:25:59', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(461, 0, '', '', '', 71, 'moduł historia', '2045-07-08 00:26:15', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(462, 0, '', '', '', 0, 'testy', '2045-07-08 00:26:46', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(463, 0, '', '', '', 53, 'test', '2045-07-08 00:26:55', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(464, 0, '', '', '', 3, 'wyloguj', '2045-07-08 00:30:09', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(465, 0, '', '', '', 2, 'zaloguj', '2045-07-08 00:31:04', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(466, 0, '', '', '', 1, 'pomoc', '2045-07-08 00:31:17', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(467, 0, '', '', '', 66, 'test historia', '2045-07-08 00:34:18', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(468, 0, '', '', '', 53, 'test', '2045-07-08 00:35:28', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(469, 0, '', '', '', 66, 'test historia', '2045-07-08 00:39:10', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(470, 0, '', '', '', 72, 'modul historia', '2045-07-08 00:39:47', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(471, 0, '', '', '', 66, 'test historia', '2045-07-08 00:40:04', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(472, 0, '', '', '', 54, 'reset', '2045-07-08 00:41:22', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(473, 0, '', '', '', 67, 'reset historia', '2045-07-08 00:42:34', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(474, 0, '', '', '', 53, 'test', '2045-07-08 00:43:03', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(475, 0, '', '', '', 49, 'zespół', '2045-07-08 00:43:28', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(476, 0, '', '', '', 58, 'naprawa', '2045-07-08 00:44:21', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(477, 0, '', '', '', 2, 'zaloguj', '2045-07-08 00:44:43', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(478, 0, '', '', '', 49, 'zespół', '2045-07-08 00:44:59', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(479, 0, '', '', '', 49, 'zespół', '2045-07-08 00:45:24', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(480, 0, '', '', '', 53, 'test', '2045-07-08 00:46:17', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(481, 0, '', '', '', 53, 'test', '2045-07-08 00:47:02', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(482, 0, '', '', '', 0, 'moduł historia', '2045-07-08 00:47:46', 4, 'William Weir', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(483, 0, '', '', '', 71, 'moduł historia', '2045-07-08 00:48:24', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(484, 0, '', '', '', 2, 'zaloguj', '2045-07-08 00:57:58', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(485, 0, '', '', '', 71, 'moduł historia', '2045-07-08 00:58:15', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(486, 0, '', '', '', 2, 'zaloguj', '2045-07-08 01:06:29', 0, ' ', 0, 'DESKTOP-2KPJSHU', 0, '', ''),
(487, 0, '', '', '', 71, 'moduł historia', '2045-07-08 01:06:49', 2, 'John Spow', 0, 'DESKTOP-2KPJSHU', 0, '', '');

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
(1, 'Dedal', '127.0.0.1', 'YS361650367188BX14125427906288GH', '2022-04-19 13:19:48', '2022-04-19 13:19:48'),
(2, 'Komputer-Tomka', '127.0.0.1', 'EH591650367190BD5524755507850ON', '2022-04-19 13:19:50', '2022-04-19 13:19:50'),
(3, 'Komputer-Tomka', '127.0.0.1', 'EE771650367738IE8349511032140NE', '2022-04-19 13:28:58', '2022-04-19 13:28:58'),
(4, 'Dedal', '127.0.0.1', 'WY511650367782IY2495721331356SC', '2022-04-19 13:29:42', '2022-04-19 13:29:42'),
(5, 'Komputer-Tomka', '127.0.0.1', 'JM131650367785OH31133679790585XY', '2022-04-19 13:29:45', '2022-04-19 13:29:45'),
(6, 'Komputer-Tomka', '127.0.0.1', 'BK641650369312ZZ5134657755552LY', '2022-04-19 13:55:12', '2022-04-19 13:55:12'),
(7, 'Komputer-Tomka', '127.0.0.1', 'EL761650369317DE2153484346481GE', '2022-04-19 13:55:17', '2022-04-19 13:55:17'),
(8, 'Komputer-Tomka', '127.0.0.1', 'BO541650369971JW4651161469101TE', '2022-04-19 14:06:11', '2022-04-19 14:06:11'),
(9, 'Dedal', '127.0.0.1', 'IL161650378581EZ572616657564OJ', '2022-04-19 16:29:40', '2022-04-19 16:29:40'),
(10, 'Dedal', '127.0.0.1', 'RC471650378592IQ3787470065376ME', '2022-04-19 16:29:52', '2022-04-19 16:29:52'),
(11, 'Dedal', '127.0.0.1', 'XI521650378752FA666015150080IH', '2022-04-19 16:32:32', '2022-04-19 16:32:32'),
(12, 'Dedal', '127.0.0.1', 'TF571650378847AS3394071594279TB', '2022-04-19 16:34:07', '2022-04-19 16:34:07'),
(13, 'Dedal', '127.0.0.1', 'VS161650378867ZZ3059413639212MT', '2022-04-19 16:34:27', '2022-04-19 16:34:27'),
(14, 'Dedal', '127.0.0.1', 'VI191650378897OF8323105304558EE', '2022-04-19 16:34:57', '2022-04-19 16:34:57'),
(15, 'Dedal', '127.0.0.1', 'WR131650379036WN5564364782404HB', '2022-04-19 16:37:16', '2022-04-19 16:37:16'),
(16, 'Dedal', '127.0.0.1', 'HQ211650379111TK9713203032888WE', '2022-04-19 16:38:31', '2022-04-19 16:38:31'),
(17, 'Dedal', '127.0.0.1', 'GT701650379325XW9122128070050HF', '2022-04-19 16:42:05', '2022-04-19 16:42:05'),
(18, 'Dedal', '127.0.0.1', 'TY741650379398PH11158436422208US', '2022-04-19 16:43:18', '2022-04-19 16:43:18'),
(19, 'Dedal', '127.0.0.1', 'YH561650379449EK4624755691735QP', '2022-04-19 16:44:09', '2022-04-19 16:44:09'),
(20, 'Dedal', '127.0.0.1', 'TS911650379532LJ97133680742092XJ', '2022-04-19 16:45:32', '2022-04-19 16:45:32'),
(21, 'Dedal', '127.0.0.1', 'BO911650379549JY40155135677606BE', '2022-04-19 16:45:49', '2022-04-19 16:45:49'),
(22, 'Dedal', '127.0.0.1', 'HH121650379659VF3197372399881WN', '2022-04-19 16:47:39', '2022-04-19 16:47:39'),
(23, 'Dedal', '127.0.0.1', 'RF421650379702WX36118827338544FE', '2022-04-19 16:48:22', '2022-04-19 16:48:22'),
(24, 'Dedal', '127.0.0.1', 'KF321650379718XK7120477719414AM', '2022-04-19 16:48:38', '2022-04-19 16:48:38'),
(25, 'Dedal', '127.0.0.1', 'BY41650379781NY18136981521823CL', '2022-04-19 16:49:41', '2022-04-19 16:49:41'),
(26, 'Dedal', '127.0.0.1', 'MS811650379830CE9152812154560KO', '2022-04-19 16:50:30', '2022-04-19 16:50:30'),
(27, 'Dedal', '127.0.0.1', 'NS371650379846EI8379218232608LH', '2022-04-19 16:50:46', '2022-04-19 16:50:46'),
(28, 'Dedal', '127.0.0.1', 'IV971650379904XO94127079252608IK', '2022-04-19 16:51:44', '2022-04-19 16:51:44'),
(29, 'Dedal', '127.0.0.1', 'QR171650379929FZ9446210638012WI', '2022-04-19 16:52:09', '2022-04-19 16:52:09'),
(30, 'Dedal', '127.0.0.1', 'AY751650380008EZ439609120192ZX', '2022-04-19 16:53:28', '2022-04-19 16:53:28'),
(31, 'Dedal', '127.0.0.1', 'FB291650380601MY82123778545075CI', '2022-04-19 17:03:21', '2022-04-19 17:03:21'),
(32, 'Dedal', '127.0.0.1', 'DP901650382802NV64138632155368LQ', '2022-04-19 17:40:02', '2022-04-19 17:40:02'),
(33, 'Dedal', '127.0.0.1', 'SJ571650382949KH7542909956674RL', '2022-04-19 17:42:29', '2022-04-19 17:42:29'),
(34, 'Dedal', '127.0.0.1', 'RC81650383024GE10120477960752CA', '2022-04-19 17:43:44', '2022-04-19 17:43:44'),
(35, 'Dedal', '127.0.0.1', 'YM681650385293JS6872616952892NL', '2022-04-19 18:21:33', '2022-04-19 18:21:33'),
(36, 'Dedal', '127.0.0.1', 'BV971650385386ES3174267342370XD', '2022-04-19 18:23:06', '2022-04-19 18:23:06'),
(37, 'Dedal', '127.0.0.1', 'SO681650385548TU6794071976236UK', '2022-04-19 18:25:48', '2022-04-19 18:25:48'),
(38, 'Dedal', '127.0.0.1', 'RS281650385575SD6667665808575TT', '2022-04-19 18:26:15', '2022-04-19 18:26:15'),
(39, 'Dedal', '127.0.0.1', 'AT271650385733EE7623105400262FK', '2022-04-19 18:28:53', '2022-04-19 18:28:53'),
(40, 'Dedal', '127.0.0.1', 'OA431650385842BA3674267362890ZL', '2022-04-19 18:30:42', '2022-04-19 18:30:42'),
(41, 'Dedal', '127.0.0.1', 'DM151650386055IL5994072005135LN', '2022-04-19 18:34:15', '2022-04-19 18:34:15'),
(42, 'DESKTOP-2KPJSHU', '127.0.0.1', 'JG651650388037OK4251162029147RM', '2022-04-19 19:07:17', '2022-04-19 19:07:17'),
(43, 'Dedal', '127.0.0.1', 'ZQ411650389558TE531357401602LW', '2022-04-19 19:32:38', '2022-04-19 19:32:38'),
(44, 'Dedal', '127.0.0.1', 'CG461650389563VK10019804674756DE', '2022-04-19 19:32:43', '2022-04-19 19:32:43'),
(45, 'DESKTOP-2KPJSHU', '127.0.0.1', 'NE241650389563JI2936308570386PT', '2022-04-19 19:32:43', '2022-04-19 19:32:43'),
(46, 'Dedal', '127.0.0.1', 'CS581650389659CI4075917924314VR', '2022-04-19 19:34:19', '2022-04-19 19:34:19'),
(47, 'Dedal', '127.0.0.1', 'KP11650390867MI93136982441961RI', '2022-04-19 19:54:27', '2022-04-19 19:54:27'),
(48, 'DESKTOP-2KPJSHU', '127.0.0.1', 'UT31650392333ZO69155136879302UV', '2022-04-19 20:18:53', '2022-04-19 20:18:53'),
(49, 'DESKTOP-2KPJSHU', '127.0.0.1', 'XF981650395855FK243300791710VZ', '2022-04-19 21:17:35', '2022-04-19 21:17:35'),
(50, 'Dedal', '127.0.0.1', 'LZ681650397048OC2675918264208VK', '2022-04-19 21:37:28', '2022-04-19 21:37:28'),
(51, 'Dedal', '127.0.0.1', 'YE121650397495FV8572617489780NY', '2022-04-19 21:44:55', '2022-04-19 21:44:55'),
(52, 'Dedal', '127.0.0.1', 'XX521650398403KI77122129481822VZ', '2022-04-19 22:00:03', '2022-04-19 22:00:03'),
(53, 'Dedal', '127.0.0.1', 'ZU801650398487YN59103975104681FO', '2022-04-19 22:01:27', '2022-04-19 22:01:27'),
(54, 'Dedal', '127.0.0.1', 'OR751650399041KY8052812769312CN', '2022-04-19 22:10:41', '2022-04-19 22:10:41'),
(55, 'Dedal', '127.0.0.1', 'IR391650399574PX9267666382534GQ', '2022-04-19 22:19:34', '2022-04-19 22:19:34'),
(56, 'Dedal', '127.0.0.1', 'ZO491650399624YQ477568782328PL', '2022-04-19 22:20:24', '2022-04-19 22:20:24'),
(57, 'Dedal', '127.0.0.1', 'YJ131650399788EM418251998940QJ', '2022-04-19 22:23:08', '2022-04-19 22:23:08'),
(58, 'Dedal', '127.0.0.1', 'HY971650400128XM59158438412288YS', '2022-04-19 22:28:48', '2022-04-19 22:28:48'),
(59, 'Dedal', '127.0.0.1', 'XQ381650400464SW3163389645936LI', '2022-04-19 22:34:24', '2022-04-19 22:34:24'),
(60, 'Dedal', '127.0.0.1', 'GB351650400523FY8270967222489YL', '2022-04-19 22:35:23', '2022-04-19 22:35:23'),
(61, 'Dedal', '127.0.0.1', 'HG711650400771ZC45141934466306XO', '2022-04-19 22:39:31', '2022-04-19 22:39:31'),
(62, 'Komputer-Tomka', '127.0.0.1', 'LR421650433782TF7936309543204IQ', '2022-04-20 07:49:42', '2022-04-20 07:49:42'),
(63, 'Dedal', '127.0.0.1', 'JS981650433795IO677570388365SZ', '2022-04-20 07:49:55', '2022-04-20 07:49:55'),
(64, 'Dedal', '127.0.0.1', 'ZX141650434294MZ1751163463114YG', '2022-04-20 07:58:14', '2022-04-20 07:58:14'),
(65, 'Komputer-Tomka', '127.0.0.1', 'MU1001650436967ES3433008739340GV', '2022-04-20 08:42:47', '2022-04-20 08:42:47'),
(66, 'Dedal', '127.0.0.1', 'CP51650436986BI91146888891754SE', '2022-04-20 08:43:06', '2022-04-20 08:43:06'),
(67, 'Komputer-Tomka', '127.0.0.1', 'NL561650437817MU5994074955569MZ', '2022-04-20 08:56:57', '2022-04-20 08:56:57'),
(68, 'Komputer-Tomka', '127.0.0.1', 'DQ821650439323XM5259415815628KB', '2022-04-20 09:22:03', '2022-04-20 09:22:03'),
(69, 'Komputer-Tomka', '127.0.0.1', 'KL291650439775OU413300879550BC', '2022-04-20 09:29:35', '2022-04-20 09:29:35'),
(70, 'Komputer-Tomka', '127.0.0.1', 'QA281650440650MY823300881300BY', '2022-04-20 09:44:10', '2022-04-20 09:44:10'),
(71, 'Komputer-Tomka', '127.0.0.1', 'YH341650440830OV6826407053280TN', '2022-04-20 09:47:10', '2022-04-20 09:47:10'),
(72, 'Komputer-Tomka', '127.0.0.1', 'XQ471650440918MQ7539610582032BQ', '2022-04-20 09:48:38', '2022-04-20 09:48:38'),
(73, 'Komputer-Tomka', '127.0.0.1', 'PC671650440988FP83110579546196EB', '2022-04-20 09:49:48', '2022-04-20 09:49:48'),
(74, 'Komputer-Tomka', '127.0.0.1', 'VE91650441265TI76158442361440EF', '2022-04-20 09:54:25', '2022-04-20 09:54:25'),
(75, 'Komputer-Tomka', '127.0.0.1', 'WT251650441799VN5113880484131CB', '2022-04-20 10:03:19', '2022-04-20 10:03:19'),
(76, 'Komputer-Tomka', '127.0.0.1', 'BS841650444868UP2542911566568IC', '2022-04-20 10:54:28', '2022-04-20 10:54:28'),
(77, 'Komputer-Tomka', '127.0.0.1', 'WB81650445002SQ2041261125050IN', '2022-04-20 10:56:42', '2022-04-20 10:56:42'),
(78, 'Dedal', '127.0.0.1', 'EN331650446008CB1194075422456ZJ', '2022-04-20 11:13:28', '2022-04-20 11:13:28'),
(79, 'Komputer-Tomka', '127.0.0.1', 'ZL711650446569VB7989124114726CF', '2022-04-20 11:22:49', '2022-04-20 11:22:49'),
(80, 'Komputer-Tomka', '127.0.0.1', 'OZ671650447124IX5367668332084PH', '2022-04-20 11:32:04', '2022-04-20 11:32:04'),
(81, 'Komputer-Tomka', '127.0.0.1', 'FO221650447362UR93156792499390WR', '2022-04-20 11:36:02', '2022-04-20 11:36:02'),
(82, 'Komputer-Tomka', '127.0.0.1', 'QC521650447604YP6846212532912JW', '2022-04-20 11:40:04', '2022-04-20 11:40:04'),
(83, 'Komputer-Tomka', '127.0.0.1', 'LV151650447993HI763300895986RL', '2022-04-20 11:46:33', '2022-04-20 11:46:33'),
(84, 'Komputer-Tomka', '127.0.0.1', 'PD421650448332HM857765691620LT', '2022-04-20 11:52:12', '2022-04-20 11:52:12'),
(85, 'Dedal', '127.0.0.1', 'TX871650448364MU7039610760736HT', '2022-04-20 11:52:44', '2022-04-20 11:52:44'),
(86, 'Komputer-Tomka', '127.0.0.1', 'WV181650448919TY656601795676HD', '2022-04-20 12:01:59', '2022-04-20 12:01:59'),
(87, 'Komputer-Tomka', '127.0.0.1', 'OG791650448929ST38105628731456FQ', '2022-04-20 12:02:09', '2022-04-20 12:02:09'),
(88, 'Dedal', '127.0.0.1', 'AC41650452259FV61141938894274KD', '2022-04-20 12:57:39', '2022-04-20 12:57:39'),
(89, 'Komputer-Tomka', '127.0.0.1', 'NN921650454506MN81105629088384JI', '2022-04-20 13:35:06', '2022-04-20 13:35:06'),
(90, 'Dedal', '127.0.0.1', 'ME511650455241GJ68132036419280KF', '2022-04-20 13:47:21', '2022-04-20 13:47:21'),
(91, 'Komputer-Tomka', '127.0.0.1', 'QK561650456801NC6939610963224HK', '2022-04-20 14:13:21', '2022-04-20 14:13:21'),
(92, 'Komputer-Tomka', '127.0.0.1', 'DT781650457362SM60120483387426IF', '2022-04-20 14:22:42', '2022-04-20 14:22:42'),
(93, 'Komputer-Tomka', '127.0.0.1', 'GD901650457465BW1824756861975EU', '2022-04-20 14:24:25', '2022-04-20 14:24:25'),
(94, 'Komputer-Tomka', '127.0.0.1', 'VV301650457750VC1846212817000KW', '2022-04-20 14:29:10', '2022-04-20 14:29:10'),
(95, 'DESKTOP-2KPJSHU', '127.0.0.1', 'TH621650465413FO8385824201476BL', '2022-04-20 16:36:53', '2022-04-20 16:36:53'),
(96, 'DESKTOP-2KPJSHU', '127.0.0.1', 'KG931650465424ME65146891422736ZL', '2022-04-20 16:37:04', '2022-04-20 16:37:04'),
(97, 'DESKTOP-2KPJSHU', '127.0.0.1', 'LL501650465761CH3626407452176VM', '2022-04-20 16:42:41', '2022-04-20 16:42:41'),
(98, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PA801650466038JP95120484020774HX', '2022-04-20 16:47:18', '2022-04-20 16:47:18'),
(99, 'DESKTOP-2KPJSHU', '127.0.0.1', 'BH181650466872PW6182523343600FJ', '2022-04-20 17:01:12', '2022-04-20 17:01:12'),
(100, 'DESKTOP-2KPJSHU', '127.0.0.1', 'WW421650466889UZ3494076612673TL', '2022-04-20 17:01:29', '2022-04-20 17:01:29'),
(101, 'DESKTOP-2KPJSHU', '127.0.0.1', 'AL111650467324IJ65156794395780AV', '2022-04-20 17:08:44', '2022-04-20 17:08:44'),
(102, 'Dedal', '127.0.0.1', 'RP211650467533JY796601870132OL', '2022-04-20 17:12:13', '2022-04-20 17:12:13'),
(103, 'Dedal', '127.0.0.1', 'LA901650467610QR7952814963520CD', '2022-04-20 17:13:30', '2022-04-20 17:13:30'),
(104, 'Dedal', '127.0.0.1', 'RM961650467640NR6641261691000TX', '2022-04-20 17:14:00', '2022-04-20 17:14:00'),
(105, 'DESKTOP-2KPJSHU', '127.0.0.1', 'ZH251650468320XJ941650468320GH', '2022-04-20 17:25:20', '2022-04-20 17:25:20'),
(106, 'DESKTOP-2KPJSHU', '127.0.0.1', 'UW671650468324XH989125289496ZN', '2022-04-20 17:25:24', '2022-04-20 17:25:24'),
(107, 'DESKTOP-2KPJSHU', '127.0.0.1', 'UM381650468804IS8034659844884NS', '2022-04-20 17:33:24', '2022-04-20 17:33:24'),
(108, 'DESKTOP-2KPJSHU', '127.0.0.1', 'DQ401650468811WY5752815001952QF', '2022-04-20 17:33:31', '2022-04-20 17:33:31'),
(109, 'DESKTOP-2KPJSHU', '127.0.0.1', 'IA361650469745JK55110581472915DC', '2022-04-20 17:49:05', '2022-04-20 17:49:05'),
(110, 'DESKTOP-2KPJSHU', '127.0.0.1', 'JB561650469751LN95165046975100YJ', '2022-04-20 17:49:11', '2022-04-20 17:49:11'),
(111, 'DESKTOP-2KPJSHU', '127.0.0.1', 'HF411650469928QD3142912218128UA', '2022-04-20 17:52:08', '2022-04-20 17:52:08'),
(112, 'DESKTOP-2KPJSHU', '127.0.0.1', 'XZ941650469930HM6379222556640UY', '2022-04-20 17:52:10', '2022-04-20 17:52:10'),
(113, 'DESKTOP-2KPJSHU', '127.0.0.1', 'XF651650470147OL9072620686468EZ', '2022-04-20 17:55:47', '2022-04-20 17:55:47'),
(114, 'DESKTOP-2KPJSHU', '127.0.0.1', 'CR271650470159WN96148542314310ZG', '2022-04-20 17:55:59', '2022-04-20 17:55:59'),
(115, 'Dedal', '127.0.0.1', 'QY201650470304YI10135338564928NP', '2022-04-20 17:58:24', '2022-04-20 17:58:24'),
(116, 'DESKTOP-2KPJSHU', '127.0.0.1', 'PS831650470450PD3277572111150KL', '2022-04-20 18:00:50', '2022-04-20 18:00:50'),
(117, 'DESKTOP-2KPJSHU', '127.0.0.1', 'VW851650470458MG9766018818320IZ', '2022-04-20 18:00:58', '2022-04-20 18:00:58'),
(118, 'DESKTOP-2KPJSHU', '127.0.0.1', 'HW431650472017ZU394951416051DQ', '2022-04-20 18:26:57', '2022-04-20 18:26:57'),
(119, 'DESKTOP-2KPJSHU', '127.0.0.1', 'DQ121650472034SO88120484458482YL', '2022-04-20 18:27:14', '2022-04-20 18:27:14'),
(120, 'DESKTOP-2KPJSHU', '127.0.0.1', 'UN201650472582VR54130387333978XM', '2022-04-20 18:36:22', '2022-04-20 18:36:22'),
(121, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RX881650472592MY2141261814800GJ', '2022-04-20 18:36:32', '2022-04-20 18:36:32'),
(122, 'DESKTOP-2KPJSHU', '127.0.0.1', 'IA51650472827VW9611553309789QU', '2022-04-20 18:40:27', '2022-04-20 18:40:27'),
(123, 'Dedal', '127.0.0.1', 'UL971650472909TC1153493980537QT', '2022-04-20 18:41:49', '2022-04-20 18:41:49'),
(124, 'DESKTOP-2KPJSHU', '127.0.0.1', 'WG321650472918GC3616504729180UC', '2022-04-20 18:41:58', '2022-04-20 18:41:58');

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
(1, 2, '2045-07-06 19:50:10', '', '2045-07-06 19:50:10', 2, 1, 0),
(2, 3, '2045-07-06 19:59:19', '2045-07-06 19:59:40', '2045-07-06 19:59:40', 2, 1, 0),
(3, 5, '2045-07-06 19:59:57', '', '2045-07-06 19:59:57', 2, 1, 0),
(4, 6, '2045-07-06 20:25:35', '', '2045-07-06 20:25:35', 2, 1, 0),
(5, 8, '2045-07-06 20:36:37', '', '2045-07-06 20:36:37', 2, 1, 0),
(6, 42, '2045-07-07 01:37:42', '', '2045-07-07 01:37:42', 2, 1, 0),
(7, 45, '2045-07-07 02:05:19', '2045-07-07 02:38:34', '2045-07-07 02:38:34', 2, 1, 0),
(8, 45, '2045-07-07 02:38:51', '2045-07-07 02:41:53', '2045-07-07 02:41:53', 4, 1, 0),
(9, 45, '2045-07-07 02:42:17', '2045-07-07 03:47:18', '2045-07-07 03:47:18', 2, 1, 0),
(10, 48, '2045-07-07 02:49:24', '', '2045-07-07 02:49:24', 4, 1, 0),
(11, 49, '2045-07-07 03:47:50', '', '2045-07-07 03:47:50', 2, 1, 0),
(12, 65, '2045-07-07 15:13:39', '2045-07-07 15:15:04', '2045-07-07 15:15:04', 2, 1, 0),
(13, 65, '2045-07-07 15:15:11', '2045-07-07 15:16:05', '2045-07-07 15:16:05', 2, 1, 0),
(14, 65, '2045-07-07 15:16:14', '', '2045-07-07 15:16:14', 2, 1, 0),
(15, 67, '2045-07-07 15:27:09', '', '2045-07-07 15:27:09', 2, 1, 0),
(16, 68, '2045-07-07 15:52:16', '', '2045-07-07 15:52:16', 2, 1, 0),
(17, 70, '2045-07-07 16:14:53', '2045-07-07 16:14:57', '2045-07-07 16:14:57', 2, 1, 0),
(18, 70, '2045-07-07 16:15:19', '', '2045-07-07 16:15:19', 2, 1, 0),
(19, 71, '2045-07-07 16:17:22', '', '2045-07-07 16:17:22', 2, 1, 0),
(20, 72, '2045-07-07 16:19:03', '', '2045-07-07 16:19:03', 2, 1, 0),
(21, 73, '2045-07-07 16:20:00', '2045-07-07 16:24:19', '2045-07-07 16:24:19', 2, 1, 0),
(22, 74, '2045-07-07 16:24:36', '', '2045-07-07 16:24:36', 2, 1, 0),
(23, 77, '2045-07-07 17:27:01', '', '2045-07-07 17:27:01', 2, 1, 0),
(24, 79, '2045-07-07 17:53:10', '', '2045-07-07 17:53:10', 4, 1, 0),
(25, 80, '2045-07-07 18:02:18', '', '2045-07-07 18:02:18', 4, 1, 0),
(26, 81, '2045-07-07 18:06:16', '2045-07-07 18:07:21', '2045-07-07 18:07:21', 2, 1, 0),
(27, 81, '2045-07-07 18:08:00', '', '2045-07-07 18:08:00', 4, 1, 0),
(28, 82, '2045-07-07 18:11:56', '2045-07-07 18:12:37', '2045-07-07 18:12:37', 2, 1, 0),
(29, 82, '2045-07-07 18:14:08', '', '2045-07-07 18:14:08', 4, 1, 0),
(30, 83, '2045-07-07 18:17:07', '', '2045-07-07 18:17:07', 4, 1, 0),
(31, 84, '2045-07-07 18:22:27', '2045-07-07 18:23:31', '2045-07-07 18:23:31', 2, 1, 0),
(32, 84, '2045-07-07 18:23:40', '', '2045-07-07 18:23:40', 2, 1, 0),
(33, 87, '2045-07-07 18:32:21', '2045-07-07 19:28:24', '2045-07-07 19:28:24', 2, 1, 0),
(34, 87, '2045-07-07 19:29:00', '2045-07-07 20:03:23', '2045-07-07 20:03:23', 2, 1, 0),
(35, 89, '2045-07-07 20:06:00', '2045-07-07 20:11:00', '2045-07-07 20:11:00', 2, 1, 0),
(36, 89, '2045-07-07 20:11:14', '2045-07-07 20:37:37', '2045-07-07 20:37:37', 4, 1, 0),
(37, 89, '2045-07-07 20:37:53', '', '2045-07-07 20:37:53', 4, 1, 0),
(38, 91, '2045-07-07 20:44:07', '', '2045-07-07 20:44:07', 4, 1, 0),
(39, 93, '2045-07-07 20:55:04', '2045-07-07 20:55:11', '2045-07-07 20:55:11', 4, 1, 0),
(40, 93, '2045-07-07 20:55:38', '', '2045-07-07 20:55:38', 4, 1, 0),
(41, 96, '2045-07-07 23:07:37', '', '2045-07-07 23:07:37', 4, 1, 0),
(42, 97, '2045-07-07 23:12:57', '2045-07-07 23:24:36', '2045-07-07 23:24:36', 4, 1, 0),
(43, 98, '2045-07-07 23:17:30', '', '2045-07-07 23:17:30', 2, 1, 0),
(44, 97, '2045-07-07 23:25:00', '2045-07-07 23:31:09', '2045-07-07 23:31:09', 4, 1, 1),
(45, 62, '2045-07-07 23:31:20', '', '2045-07-07 23:31:20', 7, 1, 0),
(46, 99, '2045-07-07 23:31:52', '', '2045-07-07 23:31:52', 4, 1, 0),
(47, 101, '2045-07-07 23:39:44', '2045-07-07 23:40:06', '2045-07-07 23:40:06', 3, 1, 0),
(48, 101, '2045-07-07 23:52:11', '', '2045-07-07 23:52:11', 2, 1, 0),
(49, 105, '2045-07-07 23:56:11', '2045-07-07 23:59:12', '2045-07-07 23:59:12', 2, 1, 0),
(50, 105, '2045-07-07 23:59:39', '2045-07-08 00:00:59', '2045-07-08 00:00:59', 2, 1, 0),
(51, 105, '2045-07-08 00:01:21', '', '2045-07-08 00:01:21', 2, 1, 0),
(52, 107, '2045-07-08 00:07:25', '', '2045-07-08 00:07:25', 2, 1, 0),
(53, 110, '2045-07-08 00:19:59', '', '2045-07-08 00:19:59', 2, 1, 0),
(54, 112, '2045-07-08 00:22:24', '', '2045-07-08 00:22:24', 2, 1, 0),
(55, 113, '2045-07-08 00:26:06', '2045-07-08 00:30:11', '2045-07-08 00:30:11', 2, 1, 0),
(56, 116, '2045-07-08 00:31:10', '', '2045-07-08 00:31:10', 2, 1, 0),
(57, 117, '2045-07-08 00:44:52', '', '2045-07-08 00:44:52', 4, 1, 0),
(58, 118, '2045-07-08 00:58:04', '', '2045-07-08 00:58:04', 2, 1, 0),
(59, 120, '2045-07-08 01:06:38', '2045-07-08 01:09:26', '2045-07-08 01:09:26', 2, 1, 0);

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
(34, 12, 5, '2022-04-19 18:38:05', 1),
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
(70, 17, 2, '2022-04-20 17:53:08', 1);

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
(0, '', '0', '@#', 'd4$%%', '', '', '', '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 9, 7, 11, 13),
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
(412, 71, 12, '2022-04-20 17:12:34', 1);

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
(16, 'zapas 1', 2, ''),
(17, 'zapas 2', 2, '');

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
(0, 0, 0, 0, 'brak', '1900-01-01 12:00:00', '1900-01-01 13:00:00', 1, 'test', 0),
(1, 3, 6, 2, 'do sprawdzenia', '2045-07-06 20:17:46', '2045-07-06 20:18:19', 2, 'test', 0),
(2, 3, 5, 1, 'jakieś', '2045-07-06 20:17:06', '2045-07-06 20:18:43', 2, 'test', 0),
(3, 3, 6, 2, 'są', '2045-07-06 20:26:16', '2045-07-06 20:26:25', 2, 'test', 0),
(4, 3, 5, 0, '', '2045-07-07 05:00:42', '2045-07-07 05:04:58', 2, 'test', 0),
(5, 19, 26, 0, '', '2045-07-07 05:06:42', '2045-07-07 05:09:11', 2, 'test', 0),
(6, 3, 5, 0, '', '2045-06-08 15:22:50', '2045-06-08 15:22:55', 2, 'test', 0),
(7, 3, 5, 1, 'test - niekompletny', '2045-07-07 16:29:51', '2045-07-07 16:30:34', 2, 'test', 0),
(8, 3, 6, 0, '', '2045-07-07 17:29:53', '2045-07-07 17:30:02', 2, 'test', 0),
(9, 3, 6, 0, '', '', '2045-07-07 17:30:44', 2, 'reset', 0),
(10, 3, 6, 0, '', '2045-07-07 17:30:58', '2045-07-07 17:31:09', 2, 'test', 0),
(11, 0, 0, -5, '$#.d%...  plik uszkodzony', '', '2045-05-06 20:18:19', 0, 'inne', 0),
(12, 3, 6, 0, 'wykonano naprawa dla 10 elementów zespołu', '', '2045-07-07 20:00:08', 2, 'naprawa', 0),
(13, 3, 6, 0, 'wykonano reset dla 10 elementów zespołu', '', '2045-07-07 20:08:21', 2, 'reset', 0),
(14, 3, 5, 0, 'logon', '2045-06-08 15:22:50', '2045-06-08 15:22:55', 3, 'polecenie', 0),
(15, 3, 6, 1, 'test - brak', '2045-07-08 00:35:47', '2045-07-08 00:38:47', 2, 'test', 0),
(16, 3, 6, 0, 'wykonano reset dla 10 elementów zespołu', '', '2045-07-08 00:42:02', 2, 'reset', 0),
(17, 3, 6, 10, 'test elementu - niewykonany, test elementu - niewykonany, test elementu - niewykonany i 3 innych', '2045-07-08 00:46:23', '2045-07-08 00:46:37', 4, 'test', 0),
(18, 3, 6, 0, 'wykonano naprawa dla 10 elementów zespołu', '', '2045-07-08 00:46:46', 2, 'naprawa', 0),
(19, 3, 6, 0, '', '2045-07-08 00:47:07', '2045-07-08 00:47:29', 4, 'test', 0),
(20, 3, 6, 0, '', '2045-07-08 00:43:22', '2045-07-08 00:48:40', 2, 'test', 0);

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
(90, 17, 36, 1, 1, '0', 0, 1, 1, '0', 0, 1, 1);

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
(13, 'zapas', '');

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
(0, 'brak', '', 0, 0, 30, '', 17, 10, 18, 8),
(1, 'Pomieszczenie laboratorium', 'PL', 3, 0, 7, '', 37, 2, 272, 20),
(2, 'Pomieszczenie oranżerii', 'PO', 3, 0, 7, '', 6, 2, 2, 10),
(3, 'Pomieszczenie medyczne', 'PM', 3, 0, 7, '', 4, 2, 2, 7),
(4, 'Urządzenia medyczne', 'UM', 3, 0, 7, '', 2, 2, 2, 15),
(5, 'Magazyn leków', 'ML', 3, 7, 30, '', 17, 10, 18, 8),
(6, 'Zespół upraw', 'ZU', 3, 20, 7, '', 6, 10, 40, 10),
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
(36, 'Kokon hibernacyjny John Spow', 'ZS01', 17, 0, 7, '', 10, 5, 30, 10);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;
--
-- AUTO_INCREMENT dla tabeli `komputery`
--
ALTER TABLE `komputery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT dla tabeli `logowania`
--
ALTER TABLE `logowania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT dla tabeli `moduly`
--
ALTER TABLE `moduly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT dla tabeli `moduly_osoby`
--
ALTER TABLE `moduly_osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT dla tabeli `polecenia_osoby`
--
ALTER TABLE `polecenia_osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;
--
-- AUTO_INCREMENT dla tabeli `stan`
--
ALTER TABLE `stan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT dla tabeli `testylog`
--
ALTER TABLE `testylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT dla tabeli `ustawienia`
--
ALTER TABLE `ustawienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `uszkodzenia`
--
ALTER TABLE `uszkodzenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT dla tabeli `uszkodzenianazwa`
--
ALTER TABLE `uszkodzenianazwa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT dla tabeli `wiadomosci`
--
ALTER TABLE `wiadomosci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT dla tabeli `zespoly`
--
ALTER TABLE `zespoly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
