-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Mar 2022, 22:44
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
(80, 'notatka nowa', 'nowa_7', '500', 'informacja', 'problem z założeniem notatki: ', 'tekstAlert', '', 'end', 'end', ''),
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
(161, 'wszystko kasuj', 'kasuja_14', '500', 'komunikat', '', 'skasowano wyświetloną notatkę', '', 'kasuja_1', 'kasuja_1', ''),
(162, 'notatka usuń', 'usun_0', '500', 'komunikat', '', 'wykonuję: [ notatka usuń ]', '', 'usun_1', 'usun_1', 'alternatywa'),
(163, 'notatka usuń', 'usun_3', '500', 'warunek', '', 'notatka', 'wczytana', 'usun_4', 'usun_6', 'czy wczytana?'),
(164, 'notatka usuń', 'usun_1', '500', 'dane', '', 'podaj id notatki ?', '', 'usun_2', 'usun_2', ''),
(165, 'notatka usuń', 'usun_2', '500', 'zapiszdane', '', 'nr notatki', '', 'usun_3', 'usun_3', ''),
(167, 'notatka usuń', 'usun_4', '500', 'warunek', '', 'notatka', 'identyfikator', 'usun_5', 'usun_6', 'czy wczytana o id = bufor0'),
(168, 'notatka usuń', 'usun_5', '500', 'informacja', 'masz wczytaną notatkę o id: ', 'bufor1', '', 'end', 'end', ''),
(169, 'notatka usuń', 'usun_6', '500', 'komunikat', '', 'usuwam notatkę', '', 'usun_7', 'usun_7', ''),
(170, 'notatka usuń', 'usun_7', '500', 'getset', '', 'usun', 'notatki', 'usun_8', 'usun_9', ''),
(171, 'notatka usuń', 'usun_8', '500', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(172, 'notatka usuń', 'usun_9', '500', 'informacja', 'odmowa: ', 'tekst', '', 'end', 'end', ''),
(173, 'notatka udostępnij', 'udostepnij_5', '500', 'informacja', 'masz wczytaną notatkę o id: ', 'bufor1', '', 'end', 'end', ''),
(174, 'notatka udostępnij', 'udostepnij_4', '500', 'warunek', '', 'notatka', 'identyfikator', 'udostepnij_5', 'udostepnij_6', 'czy wczytana o id = bufor0'),
(175, 'notatka udostępnij', 'udostepnij_3', '500', 'warunek', '', 'notatka', 'wczytana', 'udostepnij_4', 'udostepnij_6', 'czy wczytana?'),
(176, 'notatka udostępnij', 'udostepnij_2', '500', 'zapiszdane', '', 'nr notatki', '', 'udostepnij_3', 'udostepnij_3', ''),
(177, 'notatka udostępnij', 'udostepnij_1', '500', 'dane', '', 'podaj id notatki ?', '', 'udostepnij_2', 'udostepnij_2', ''),
(178, 'notatka udostępnij', 'udostepnij_0', '500', 'komunikat', '', 'wykonuję: [ notatka udostępnij ]', '', 'udostepnij_1', 'udostepnij_1', 'alternatywa'),
(179, 'notatka udostępnij', 'udostepnij_7', '500', 'dane', '', 'imię ?', '', 'udostepnij_8', 'udostepnij_8', ''),
(180, 'notatka udostępnij', 'udostepnij_8', '500', 'dodajdane', '', 'osoba imię', '', 'udostepnij_9', 'udostepnij_9', ''),
(181, 'notatka udostępnij', 'udostepnij_11', '500', 'getset', '', 'udostepnij', 'notatki', 'udostepnij_12', 'udostepnij_13', ''),
(182, 'notatka udostępnij', 'udostepnij_9', '500', 'dane', '', 'podaj nazwisko ?', '', 'udostepnij_10', 'udostepnij_10', ''),
(183, 'notatka udostępnij', 'udostepnij_10', '500', 'dodajdane', '', 'osoba nazwisko', '', 'udostepnij_11', 'udostepnij_11', ''),
(184, 'notatka udostępnij', 'udostepnij_6', '500', 'komunikat', '', 'podaj osobę:', '', 'udostepnij_7', 'udostepnij_7', ''),
(185, 'notatka udostępnij', 'udostepnij_12', '500', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(186, 'notatka udostępnij', 'udostepnij_13', '500', 'informacja', 'odmowa: ', 'tekst', '', 'end', 'end', ''),
(187, 'notatka dostęp', 'dostep_0', '500', 'komunikat', '', 'wykonuję: [ notatka dostęp ]', '', 'dostep_1', 'dostep_1', 'alternatywa'),
(188, 'notatka dostęp', 'dostep_1', '500', 'dane', '', 'podaj id notatki ?', '', 'dostep_2', 'dostep_2', ''),
(189, 'notatka dostęp', 'dostep_2', '500', 'zapiszdane', '', 'nr notatki', '', 'dostep_3', 'dostep_3', ''),
(190, 'notatka dostęp', 'dostep_3', '500', 'getset', '', 'wczytaj', 'notatka_dostep', 'dostep_5', 'dostep_4', ''),
(191, 'notatka dostęp', 'dostep_4', '500', 'informacja', 'odmowa: ', 'tekst', '', 'end', 'end', ''),
(192, 'notatka dostęp', 'dostep_5', '500', 'informacja', 'notatka o id: [ ', 'bufor1', '] jest udostępniona:', 'dostep_6', 'dostep_6', ''),
(193, 'notatka dostęp', 'dostep_7', '500', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(194, 'notatka dostęp', 'dostep_6', '500', 'linie', '', 'dostep', '', 'dostep_7', 'dostep_7', '');

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
(1, 'DESKTOP-2KPJSHU', 'TL691646558753PS3257629556355YA', '2022-03-06 10:25:53', '2022-03-06 10:25:53', 0),
(2, 'DESKTOP-2KPJSHU', 'RZ921646558848TS33107026325120HZ', '2022-03-06 10:27:28', '2022-03-06 10:27:28', 0),
(3, 'DESKTOP-2KPJSHU', 'BZ151646559167UO8383974517517WW', '2022-03-06 10:32:47', '2022-03-06 10:32:47', 0),
(4, 'DESKTOP-2KPJSHU', 'ZI451646559175XN73146543766575II', '2022-03-06 10:32:55', '2022-03-06 10:32:55', 0),
(5, 'DESKTOP-2KPJSHU', 'YF651646559328WY97149836898848GZ', '2022-03-06 10:35:28', '2022-03-06 10:35:28', 0),
(6, 'DESKTOP-2KPJSHU', 'EC611646560636XI7152689940352JO', '2022-03-06 10:57:16', '2022-03-06 10:57:16', 0),
(7, 'DESKTOP-2KPJSHU', 'BI21646560775OY8892207403400BY', '2022-03-06 10:59:35', '2022-03-06 10:59:35', 0),
(8, 'DESKTOP-2KPJSHU', 'RD391646560852MY5447750264708YM', '2022-03-06 11:00:52', '2022-03-06 11:00:52', 0),
(9, 'DESKTOP-2KPJSHU', 'YU931646561169ZA92135018015858BQ', '2022-03-06 11:06:09', '2022-03-06 11:06:09', 0),
(10, 'DESKTOP-2KPJSHU', 'WM521646561223PQ4814819051007HR', '2022-03-06 11:07:02', '2022-03-06 11:07:02', 0),
(11, 'DESKTOP-2KPJSHU', 'LA91646561348DS5120198978404SI', '2022-03-06 11:09:08', '2022-03-06 11:09:08', 0),
(12, 'DESKTOP-2KPJSHU', 'UR91646561631JC100116905875801WS', '2022-03-06 11:13:51', '2022-03-06 11:13:51', 0),
(13, 'DESKTOP-2KPJSHU', 'XL301646561649VP2113612753781DZ', '2022-03-06 11:14:09', '2022-03-06 11:14:09', 0),
(14, 'DESKTOP-2KPJSHU', 'HB521646561930NJ63138311202120EX', '2022-03-06 11:18:50', '2022-03-06 11:18:50', 0),
(15, 'DESKTOP-2KPJSHU', 'ZJ481646562311ZY48143250921057MA', '2022-03-06 11:25:11', '2022-03-06 11:25:11', 0),
(16, 'DESKTOP-2KPJSHU', 'CN681646562338JH4987267803914NR', '2022-03-06 11:25:38', '2022-03-06 11:25:38', 0),
(17, 'DESKTOP-2KPJSHU', 'JM81646562485ZN726344999760KU', '2022-03-06 11:28:05', '2022-03-06 11:28:05', 0),
(18, 'DESKTOP-2KPJSHU', 'QF951646562532PF1936224375704EI', '2022-03-06 11:28:52', '2022-03-06 11:28:52', 0),
(19, 'DESKTOP-2KPJSHU', 'SB421646562542TC913172500336WR', '2022-03-06 11:29:02', '2022-03-06 11:29:02', 0),
(20, 'DESKTOP-2KPJSHU', 'PM621646562592GP2079035004416XX', '2022-03-06 11:29:52', '2022-03-06 11:29:52', 0),
(21, 'DESKTOP-2KPJSHU', 'WG231646562728CX4665862509120EK', '2022-03-06 11:32:08', '2022-03-06 11:32:08', 0),
(22, 'DESKTOP-2KPJSHU', 'JK131646562777MG8158070026592SU', '2022-03-06 11:32:56', '2022-03-06 11:32:56', 0),
(23, 'DESKTOP-2KPJSHU', 'WW101646562780YX6883974701780ED', '2022-03-06 11:33:00', '2022-03-06 11:33:00', 0),
(24, 'DESKTOP-2KPJSHU', 'GN871646562995ER7113172503960SZ', '2022-03-06 11:36:35', '2022-03-06 11:36:35', 0),
(25, 'DESKTOP-2KPJSHU', 'MI811646563027RY3195500655566RN', '2022-03-06 11:37:07', '2022-03-06 11:37:07', 0),
(26, 'DESKTOP-2KPJSHU', 'HB321646563051UT9267509085091DW', '2022-03-06 11:37:31', '2022-03-06 11:37:31', 0),
(27, 'DESKTOP-2KPJSHU', 'XF551646563312FP55120199121776EM', '2022-03-06 11:41:52', '2022-03-06 11:41:52', 0),
(28, 'DESKTOP-2KPJSHU', 'WM131646563411NE2146103775508WN', '2022-03-06 11:43:31', '2022-03-06 11:43:31', 0),
(29, 'DESKTOP-2KPJSHU', 'CP811646563513CB67111966318884TX', '2022-03-06 11:45:13', '2022-03-06 11:45:13', 0),
(30, 'DESKTOP-2KPJSHU', 'XF471646563605BK644939690815OT', '2022-03-06 11:46:45', '2022-03-06 11:46:45', 0),
(31, 'DESKTOP-2KPJSHU', 'AE161646563764TG4019758765168ZH', '2022-03-06 11:49:24', '2022-03-06 11:49:24', 0),
(32, 'DESKTOP-2KPJSHU', 'VT91646563822SP69103733520786QY', '2022-03-06 11:50:22', '2022-03-06 11:50:22', 0),
(33, 'DESKTOP-2KPJSHU', 'DW31646563838ZR9397147266442LM', '2022-03-06 11:50:38', '2022-03-06 11:50:38', 0),
(34, 'DESKTOP-2KPJSHU', 'LX441646563885OR43103733524755UT', '2022-03-06 11:51:25', '2022-03-06 11:51:25', 0),
(35, 'DESKTOP-2KPJSHU', 'SF411646563946QI91116906040166VK', '2022-03-06 11:52:26', '2022-03-06 11:52:26', 0),
(36, 'DESKTOP-2KPJSHU', 'AP371646563987WW63115259479090FN', '2022-03-06 11:53:07', '2022-03-06 11:53:07', 0),
(37, 'DESKTOP-2KPJSHU', 'SJ481646564786RU628232823930JV', '2022-03-06 12:06:26', '2022-03-06 12:06:26', 0),
(38, 'DESKTOP-2KPJSHU', 'VE711646564791PK1680681674759DX', '2022-03-06 12:06:31', '2022-03-06 12:06:31', 0),
(39, 'DESKTOP-2KPJSHU', 'BH611646564846JB86128432057988MC', '2022-03-06 12:07:26', '2022-03-06 12:07:26', 0),
(40, 'DESKTOP-2KPJSHU', 'GR551646564868RY3919758778416PF', '2022-03-06 12:07:48', '2022-03-06 12:07:48', 0),
(41, 'DESKTOP-2KPJSHU', 'IX501646564891PQ69111966412588TR', '2022-03-06 12:08:11', '2022-03-06 12:08:11', 0),
(42, 'DESKTOP-2KPJSHU', 'OA121646564918VG92146544277702CA', '2022-03-06 12:08:38', '2022-03-06 12:08:38', 0),
(43, 'DESKTOP-2KPJSHU', 'AL901646565046DQ419879390276NA', '2022-03-06 12:10:46', '2022-03-06 12:10:46', 0),
(44, 'DESKTOP-2KPJSHU', 'KK111646565110BB17154777120340YF', '2022-03-06 12:11:50', '2022-03-06 12:11:50', 0),
(45, 'DESKTOP-2KPJSHU', 'LH431646565140CV64136664906620GA', '2022-03-06 12:12:20', '2022-03-06 12:12:20', 0),
(46, 'DESKTOP-2KPJSHU', 'IB991646565225DU58136664913675NW', '2022-03-06 12:13:45', '2022-03-06 12:13:45', 0),
(47, 'DESKTOP-2KPJSHU', 'SB331646565260AO96144897742880OB', '2022-03-06 12:14:20', '2022-03-06 12:14:20', 0),
(48, 'DESKTOP-2KPJSHU', 'ZR151646565298KM9688914526092HY', '2022-03-06 12:14:58', '2022-03-06 12:14:58', 0),
(49, 'DESKTOP-2KPJSHU', 'RE301646565395SL4113172523160QW', '2022-03-06 12:16:34', '2022-03-06 12:16:34', 0),
(50, 'DESKTOP-2KPJSHU', 'OU681646565439CJ11164656543900SW', '2022-03-06 12:17:19', '2022-03-06 12:17:19', 0),
(51, 'DESKTOP-2KPJSHU', 'BD811646565491PD5311525958437WM', '2022-03-06 12:18:11', '2022-03-06 12:18:11', 0),
(52, 'DESKTOP-2KPJSHU', 'MY521646565527KD1747750400283VP', '2022-03-06 12:18:47', '2022-03-06 12:18:47', 0),
(53, 'DESKTOP-2KPJSHU', 'DM541646565552KX8660922925424WR', '2022-03-06 12:19:12', '2022-03-06 12:19:12', 0),
(54, 'DESKTOP-2KPJSHU', 'AH831646565681NW4736224444982GR', '2022-03-06 12:21:21', '2022-03-06 12:21:21', 0),
(55, 'DESKTOP-2KPJSHU', 'AE351646565695WO884939697085HK', '2022-03-06 12:21:35', '2022-03-06 12:21:35', 0),
(56, 'DESKTOP-2KPJSHU', 'AK491646565722YS4046103840216YE', '2022-03-06 12:22:02', '2022-03-06 12:22:02', 0),
(57, 'DESKTOP-2KPJSHU', 'RT701646565748XB6831284749212HP', '2022-03-06 12:22:28', '2022-03-06 12:22:28', 0),
(58, 'DESKTOP-2KPJSHU', 'EW611646565795MA76126785566215GU', '2022-03-06 12:23:15', '2022-03-06 12:23:15', 0),
(59, 'DESKTOP-2KPJSHU', 'ZK901646565837LK5716465658370DX', '2022-03-06 12:23:57', '2022-03-06 12:23:57', 0),
(60, 'DESKTOP-2KPJSHU', 'HS51646565894KT814819093046CW', '2022-03-06 12:24:54', '2022-03-06 12:24:54', 0),
(61, 'DESKTOP-2KPJSHU', 'IG201646566001CP9254336678033SI', '2022-03-06 12:26:41', '2022-03-06 12:26:41', 0),
(62, 'DESKTOP-2KPJSHU', 'QE451646566038PW42130078717002PQ', '2022-03-06 12:27:18', '2022-03-06 12:27:18', 0),
(63, 'DESKTOP-2KPJSHU', 'HP491646566061QG5932931321220MX', '2022-03-06 12:27:41', '2022-03-06 12:27:41', 0),
(64, 'DESKTOP-2KPJSHU', 'XN901646566167ET14136664991861SE', '2022-03-06 12:29:27', '2022-03-06 12:29:27', 0),
(65, 'DESKTOP-2KPJSHU', 'QK661646566194FY6137871022462EF', '2022-03-06 12:29:54', '2022-03-06 12:29:54', 0),
(66, 'DESKTOP-2KPJSHU', 'MC291646566222BQ754939698666HN', '2022-03-06 12:30:21', '2022-03-06 12:30:21', 0),
(67, 'DESKTOP-2KPJSHU', 'ZW531646566257QT1170802349051SW', '2022-03-06 12:30:57', '2022-03-06 12:30:57', 0),
(68, 'DESKTOP-2KPJSHU', 'KW41646566312PJ86143251269144QS', '2022-03-06 12:31:52', '2022-03-06 12:31:52', 0),
(69, 'DESKTOP-2KPJSHU', 'AM341646566447UR9651043559857OR', '2022-03-06 12:34:07', '2022-03-06 12:34:07', 0),
(70, 'DESKTOP-2KPJSHU', 'PB801646566473AW79113613086637RB', '2022-03-06 12:34:33', '2022-03-06 12:34:33', 0),
(71, 'DESKTOP-2KPJSHU', 'JX211646575679OF6290561662345SE', '2022-03-06 15:07:59', '2022-03-06 15:07:59', 0),
(72, 'DESKTOP-2KPJSHU', 'AH901646575724BU1569156180408EM', '2022-03-06 15:08:44', '2022-03-06 15:08:44', 0),
(73, 'DESKTOP-2KPJSHU', 'PR721646575793JM67130079487647QB', '2022-03-06 15:09:53', '2022-03-06 15:09:53', 0),
(74, 'DESKTOP-2KPJSHU', 'KL331646575861DQ71131726068880FY', '2022-03-06 15:11:01', '2022-03-06 15:11:01', 0),
(75, 'DESKTOP-2KPJSHU', 'CC591646575877UC7110320583759RT', '2022-03-06 15:11:17', '2022-03-06 15:11:17', 0),
(76, 'DESKTOP-2KPJSHU', 'JV951646575903TX1134578093963QW', '2022-03-06 15:11:43', '2022-03-06 15:11:43', 0),
(77, 'DESKTOP-2KPJSHU', 'MC601646575949AW1221405487337BY', '2022-03-06 15:12:29', '2022-03-06 15:12:29', 0),
(78, 'DESKTOP-2KPJSHU', 'WR911646576054BM8163011029346DJ', '2022-03-06 15:14:14', '2022-03-06 15:14:14', 0),
(79, 'DESKTOP-2KPJSHU', 'DZ671646576068YK3329638369224QE', '2022-03-06 15:14:28', '2022-03-06 15:14:28', 0),
(80, 'DESKTOP-2KPJSHU', 'XX221646576149LB40105380873536AO', '2022-03-06 15:15:49', '2022-03-06 15:15:49', 0),
(81, 'DESKTOP-2KPJSHU', 'XV881646576247DV2218112338717ZK', '2022-03-06 15:17:27', '2022-03-06 15:17:27', 0),
(82, 'DESKTOP-2KPJSHU', 'UK841646576262KA6146104135336SQ', '2022-03-06 15:17:42', '2022-03-06 15:17:42', 0),
(83, 'DESKTOP-2KPJSHU', 'JI401646576323LG4019758915876OP', '2022-03-06 15:18:43', '2022-03-06 15:18:43', 0),
(84, 'DESKTOP-2KPJSHU', 'CM461646576387HS96110320617929GY', '2022-03-06 15:19:47', '2022-03-06 15:19:47', 0),
(85, 'DESKTOP-2KPJSHU', 'RB41646576396HX5130079535284DK', '2022-03-06 15:19:56', '2022-03-06 15:19:56', 0),
(86, 'DESKTOP-2KPJSHU', 'YW61646576461IC3279035670128AT', '2022-03-06 15:21:01', '2022-03-06 15:21:01', 0),
(87, 'DESKTOP-2KPJSHU', 'AS541646576526EF847750719254CF', '2022-03-06 15:22:06', '2022-03-06 15:22:06', 0),
(88, 'DESKTOP-2KPJSHU', 'AV301646576575YW3611526036025UF', '2022-03-06 15:22:55', '2022-03-06 15:22:55', 0),
(89, 'DESKTOP-2KPJSHU', 'FY721646576612UP3148191895080SK', '2022-03-06 15:23:32', '2022-03-06 15:23:32', 0),
(90, 'DESKTOP-2KPJSHU', 'AI331646576739DN4726345227824OG', '2022-03-06 15:25:39', '2022-03-06 15:25:39', 0),
(91, 'DESKTOP-2KPJSHU', 'FY421646576806LQ8949397304180PX', '2022-03-06 15:26:46', '2022-03-06 15:26:46', 0),
(92, 'DESKTOP-2KPJSHU', 'GX171646576926FJ52144898769488RP', '2022-03-06 15:28:46', '2022-03-06 15:28:46', 0),
(93, 'DESKTOP-2KPJSHU', 'FN11646576957KU5046104154796ZW', '2022-03-06 15:29:17', '2022-03-06 15:29:17', 0),
(94, 'DESKTOP-2KPJSHU', 'HB121646576992UP1387268580576BW', '2022-03-06 15:29:52', '2022-03-06 15:29:52', 0),
(95, 'DESKTOP-2KPJSHU', 'MN831646577137FY10113613822453MV', '2022-03-06 15:32:16', '2022-03-06 15:32:16', 0),
(96, 'DESKTOP-2KPJSHU', 'HA281646577142VN8777389125674FG', '2022-03-06 15:32:22', '2022-03-06 15:32:22', 0),
(97, 'DESKTOP-2KPJSHU', 'QE931646577198SK8942811007148KK', '2022-03-06 15:33:18', '2022-03-06 15:33:18', 0),
(98, 'DESKTOP-2KPJSHU', 'MR491646577337RU2123493300275DI', '2022-03-06 15:35:37', '2022-03-06 15:35:37', 0),
(99, 'DESKTOP-2KPJSHU', 'RI491646577368FD2316465773680JN', '2022-03-06 15:36:08', '2022-03-06 15:36:08', 0),
(100, 'DESKTOP-2KPJSHU', 'GW951646582043TC2287268848279CU', '2022-03-06 16:54:03', '2022-03-06 16:54:03', 0),
(101, 'DESKTOP-2KPJSHU', 'DG441646582052AM3298794923120BN', '2022-03-06 16:54:12', '2022-03-06 16:54:12', 0),
(102, 'DESKTOP-2KPJSHU', 'ZR441646582116DD88103734673308RP', '2022-03-06 16:55:16', '2022-03-06 16:55:16', 0),
(103, 'DESKTOP-2KPJSHU', 'SQ721646582205ZP79161365056090VA', '2022-03-06 16:56:45', '2022-03-06 16:56:45', 0),
(104, 'DESKTOP-2KPJSHU', 'KI261646582240EC61151485566080IS', '2022-03-06 16:57:20', '2022-03-06 16:57:20', 0),
(105, 'DESKTOP-2KPJSHU', 'GY891646582334TG6841164558350IZ', '2022-03-06 16:58:54', '2022-03-06 16:58:54', 0),
(106, 'DESKTOP-2KPJSHU', 'DI261646584513WY7516465845130FN', '2022-03-06 17:35:13', '2022-03-06 17:35:13', 0),
(107, 'DESKTOP-2KPJSHU', 'JN421646584588AF1837871445524JX', '2022-03-06 17:36:28', '2022-03-06 17:36:28', 0),
(108, 'DESKTOP-2KPJSHU', 'QK661646586985FY6137871500655EF', '2022-03-06 18:16:25', '2022-03-06 18:16:25', 0),
(109, 'DESKTOP-2KPJSHU', 'WR121646587432BQ87143253106584FK', '2022-03-06 18:23:52', '2022-03-06 18:23:52', 0),
(110, 'DESKTOP-2KPJSHU', 'LL211646587504JQ4511526112528KV', '2022-03-06 18:25:04', '2022-03-06 18:25:04', 0),
(111, 'DESKTOP-2KPJSHU', 'JQ761646587778FG67121847495572EZ', '2022-03-06 18:29:38', '2022-03-06 18:29:38', 0),
(112, 'DESKTOP-2KPJSHU', 'KW41646588043PJ86143253159741QS', '2022-03-06 18:34:03', '2022-03-06 18:34:03', 0),
(113, 'DESKTOP-2KPJSHU', 'PR721646588047JM67130080455713QB', '2022-03-06 18:34:07', '2022-03-06 18:34:07', 0),
(114, 'DESKTOP-2KPJSHU', 'MJ631646588083TF27110321401561TE', '2022-03-06 18:34:43', '2022-03-06 18:34:43', 0),
(115, 'DESKTOP-2KPJSHU', 'MC601646588140AW1221405645820BY', '2022-03-06 18:35:40', '2022-03-06 18:35:40', 0),
(116, 'DESKTOP-2KPJSHU', 'ZG941646588198RO5174096468910JW', '2022-03-06 18:36:37', '2022-03-06 18:36:37', 0),
(117, 'DESKTOP-2KPJSHU', 'BT631646588229RW67149839528839ME', '2022-03-06 18:37:09', '2022-03-06 18:37:09', 0),
(118, 'DESKTOP-2KPJSHU', 'QA761646588247BP74123494118525TL', '2022-03-06 18:37:27', '2022-03-06 18:37:27', 0),
(119, 'DESKTOP-2KPJSHU', 'WR911646588267BM8163012238433DJ', '2022-03-06 18:37:46', '2022-03-06 18:37:46', 0),
(120, 'DESKTOP-2KPJSHU', 'RH581646588436RD29139960017060PC', '2022-03-06 18:40:36', '2022-03-06 18:40:36', 0),
(121, 'DESKTOP-2KPJSHU', 'HZ271646595718YR5783976381618LJ', '2022-03-06 20:41:58', '2022-03-06 20:41:58', 0),
(122, 'DESKTOP-2KPJSHU', 'GG551646596645HY87158073277920JZ', '2022-03-06 20:57:25', '2022-03-06 20:57:25', 0),
(123, 'DESKTOP-2KPJSHU', 'CW951646597267LT2564217293413NR', '2022-03-06 21:07:47', '2022-03-06 21:07:47', 0),
(124, 'DESKTOP-2KPJSHU', 'AW301646597386QC203293194772EJ', '2022-03-06 21:09:46', '2022-03-06 21:09:46', 0),
(125, 'DESKTOP-2KPJSHU', 'EW481646597768LM4295502670544JR', '2022-03-06 21:16:07', '2022-03-06 21:16:07', 0),
(126, 'DESKTOP-2KPJSHU', 'NM361646597777YC2067510508857GV', '2022-03-06 21:16:17', '2022-03-06 21:16:17', 0),
(127, 'DESKTOP-2KPJSHU', 'HN951646597832HW62128434630896JS', '2022-03-06 21:17:12', '2022-03-06 21:17:12', 0),
(128, 'DESKTOP-2KPJSHU', 'NG771646598635CK321405782255AA', '2022-03-06 21:30:35', '2022-03-06 21:30:35', 0),
(129, 'DESKTOP-2KPJSHU', 'LD261646598704CG3546104763712ZE', '2022-03-06 21:31:44', '2022-03-06 21:31:44', 0),
(130, 'DESKTOP-2KPJSHU', 'YX671646598840HO6721405784920HV', '2022-03-06 21:34:00', '2022-03-06 21:34:00', 0),
(131, 'DESKTOP-2KPJSHU', 'GH361646598922LE4682329946100DX', '2022-03-06 21:35:22', '2022-03-06 21:35:22', 0),
(132, 'DESKTOP-2KPJSHU', 'SX41646599166WH6316465991660FA', '2022-03-06 21:39:26', '2022-03-06 21:39:26', 0),
(133, 'DESKTOP-2KPJSHU', 'YE1001646599271JW9742811581046BQ', '2022-03-06 21:41:11', '2022-03-06 21:41:11', 0),
(134, 'DESKTOP-2KPJSHU', 'QG671646601543JS8098796092580GM', '2022-03-06 22:19:03', '2022-03-06 22:19:03', 0),
(135, 'DESKTOP-2KPJSHU', 'WQ311646601644CA7355984455896VH', '2022-03-06 22:20:44', '2022-03-06 22:20:44', 0),
(136, 'DESKTOP-2KPJSHU', 'UF751646601672NS59161366963856JH', '2022-03-06 22:21:12', '2022-03-06 22:21:12', 0),
(137, 'DESKTOP-2KPJSHU', 'DJ381646601753IE86130081538487JS', '2022-03-06 22:22:33', '2022-03-06 22:22:33', 0),
(138, 'DESKTOP-2KPJSHU', 'HC31646601956SI8546104854768DJ', '2022-03-06 22:25:56', '2022-03-06 22:25:56', 0),
(139, 'DESKTOP-2KPJSHU', 'EC621646602007DX1654337866231TI', '2022-03-06 22:26:47', '2022-03-06 22:26:47', 0),
(140, 'DESKTOP-2KPJSHU', 'NY191646602614AR9127992244438GP', '2022-03-06 22:36:54', '2022-03-06 22:36:54', 0),
(141, 'DESKTOP-2KPJSHU', 'PC621646602631DD76128435005218TS', '2022-03-06 22:37:11', '2022-03-06 22:37:11', 0),
(142, 'DESKTOP-2KPJSHU', 'EC511646602699WH51107029175435YX', '2022-03-06 22:38:19', '2022-03-06 22:38:19', 0),
(143, 'DESKTOP-2KPJSHU', 'UF51646602727WR7395502958166MV', '2022-03-06 22:38:47', '2022-03-06 22:38:47', 0),
(144, 'DESKTOP-2KPJSHU', 'TI241646602766JP6429638849788TI', '2022-03-06 22:39:26', '2022-03-06 22:39:26', 0),
(145, 'DESKTOP-2KPJSHU', 'ME251646602790EF97120202003670RK', '2022-03-06 22:39:50', '2022-03-06 22:39:50', 0),
(146, 'DESKTOP-2KPJSHU', 'CM361646603012GR75164660301200WI', '2022-03-06 22:43:32', '2022-03-06 22:43:32', 0);

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
(37, '1645391490H36D14808523410', 'WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW', 2, '2022-03-04 18:13:31', 0, 0, 1),
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
(69, 56, 0, 0, '2045-05-23 17:14:33', 'pisze');

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
(25, 53, 3, '2022-03-05 15:28:13', 0),
(26, 53, 4, '2022-03-05 15:28:18', 0),
(27, 53, 5, '2022-03-05 15:28:19', 0),
(28, 53, 6, '2022-03-05 15:28:20', 0),
(29, 53, 8, '2022-03-05 15:28:21', 0),
(30, 53, 10, '2022-03-05 15:28:21', 0),
(31, 53, 7, '2022-03-05 15:28:23', 0),
(32, 53, 9, '2022-03-05 15:28:23', 0),
(33, 53, 11, '2022-03-05 15:28:24', 0),
(34, 53, 1, '2022-03-05 15:28:24', 0),
(35, 53, 12, '2022-03-05 15:28:25', 0),
(36, 54, 3, '2022-03-05 19:11:43', 0),
(37, 54, 4, '2022-03-05 19:11:46', 0),
(38, 55, 3, '2022-03-05 19:12:53', 0),
(39, 55, 4, '2022-03-05 23:16:51', 0),
(40, 54, 5, '2022-03-06 09:28:05', 1),
(41, 56, 2, '2022-03-06 09:28:40', 0),
(42, 56, 12, '2022-03-06 09:28:41', 0),
(43, 56, 1, '2022-03-06 09:28:42', 0);

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
  `fionaorg` tinyint(1) NOT NULL,
  `rajehorg` tinyint(1) NOT NULL,
  `uzytkownik` text COLLATE utf8_polish_ci NOT NULL,
  `czaslogowania` text COLLATE utf8_polish_ci NOT NULL,
  `czaswylogowania` text COLLATE utf8_polish_ci NOT NULL,
  `odpowiedz` text COLLATE utf8_polish_ci NOT NULL,
  `reakcja` int(11) NOT NULL,
  `haslonew` text COLLATE utf8_polish_ci NOT NULL,
  `zalogowanynew` tinyint(1) NOT NULL,
  `blokadanew` tinyint(1) NOT NULL,
  `hannahnew` tinyint(1) NOT NULL,
  `fionanew` tinyint(1) NOT NULL,
  `rajehnew` tinyint(1) NOT NULL,
  `hannahid` int(11) NOT NULL,
  `fionaid` int(11) NOT NULL,
  `rajehid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `osoby`
--

INSERT INTO `osoby` (`id`, `czaszmiana`, `kolejnosc`, `imie`, `nazwisko`, `funkcja`, `specjalnosc`, `narodowosc`, `userlogin`, `rodzaj`, `user`, `hasloorg`, `autoryzacja`, `zalogowanyorg`, `blokadaorg`, `hannahorg`, `fionaorg`, `rajehorg`, `uzytkownik`, `czaslogowania`, `czaswylogowania`, `odpowiedz`, `reakcja`, `haslonew`, `zalogowanynew`, `blokadanew`, `hannahnew`, `fionanew`, `rajehnew`, `hannahid`, `fionaid`, `rajehid`) VALUES
(0, '', '0', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, 0, '', '', '', '', 0, '', 0, 0, 0, 0, 0, 9, 7, 11),
(1, '', '110', 'Dedal', '', 'statek', '', '', '', 'S', 2, '!@#', 0, 1, 0, 1, 1, 1, '', '2022-01-30 13:39:18', '', 'Dedal jest tylko jeden', 0, '!@#', 0, 0, 1, 1, 1, 9, 7, 11),
(2, '2022-03-06 21:41:32', '10', 'John', 'Spow', 'Kapitan', 'nawigator, pilot', 'USA', 'john', 'M', 1, '123', 1, 0, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '2022-03-06 21:41:32', '', 'Witaj John Spow', 200, '123', 1, 0, 0, 0, 0, 9, 7, 11),
(3, '', '20', 'Wang', 'Yaping', 'I oficer', 'astrofizyk, dyplomata', 'Chiny', 'wang', 'K', 1, '123', 0, 0, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '', '', 'Witaj Louise Banks', 400, '123', 0, 0, 0, 0, 0, 9, 7, 11),
(4, '2022-01-30 23:07:50', '30', 'William', 'Weir', 'II oficer', 'matematyk, inżynier jądrowy', 'Unia Europejska', 'william', 'M', 1, '123', 0, 0, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '2022-01-30 23:07:50', '', 'Witaj Dave Bowman', 400, '123', 0, 0, 0, 0, 0, 9, 7, 11),
(5, '', '40', 'Fatima', 'Punjabi', 'III oficer', 'elektronik, nawigator', 'Indie', 'fatima', 'K', 1, '123', 0, 0, 0, 0, 0, 0, '', '', '', 'Witaj Dwayne Hicks', 400, '123', 0, 0, 0, 0, 0, 9, 7, 11),
(6, '2022-02-05 11:34:18', '50', 'Zeki', 'Demir', 'IV oficer', 'pilot, nawigator', 'Turcja', 'borys', 'M', 1, '123', 1, 0, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '2022-02-05 11:26:00', '2022-02-05 11:34:18', 'Witaj Anna Lee Dwell', 400, '123', 0, 0, 0, 0, 0, 9, 7, 11),
(7, '2022-01-30 23:03:13', '60', 'Naoko', 'Yamazaki', 'Lekarz', 'psychiatra, programista', 'Japonia', 'fiona', 'K', 2, '123', 0, 0, 0, 0, 0, 0, 'Komputer-Tomka', '2022-01-30 23:03:13', '', 'Witaj William Weir', 400, '123', 1, 0, 1, 1, 0, 9, 7, 11),
(8, '', '70', 'Liu', 'Yang', 'Naukowiec', 'lekarz, biolog', 'Chiny', 'liu', 'K', 1, '123', 0, 0, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '', '', 'Witaj Elizabeth Halperin', 400, '123', 0, 0, 0, 0, 0, 9, 7, 11),
(9, '', '80', 'Hannah', 'Stevens', 'Informatyk', 'programista, łącznościowiec', 'Unia Europejska', 'hannah', 'K', 2, '123', 0, 0, 0, 0, 0, 0, 'Komputer-Tomka', '', '', 'Witaj Hannah Stevens', 0, '!@#', 0, 0, 1, 1, 0, 9, 7, 11),
(10, '', '90', 'Dave', 'Bowman', 'Łącznościowiec', 'łącznościowiec, psycholog', 'USA', 'dave', 'M', 1, '123', 0, 0, 0, 0, 0, 0, '', '', '', 'Witam Joshua', 0, 'pomoc', 0, 0, 0, 0, 0, 9, 7, 11),
(11, '', '100', 'Rajeh', ' Amit', 'Pilot', 'pilot / nawigator', 'Indie', 'rajeh', 'M', 2, '123', 0, 0, 0, 0, 0, 0, '', '', '', 'Witam MG', 0, '123', 0, 0, 1, 1, 0, 9, 7, 11),
(12, '', '120', 'GRACE', ' ', 'SI', '', '', '', 'S', 2, '123', 0, 0, 0, 0, 0, 0, '', '', '', 'Witam Grace', 0, '123', 0, 0, 1, 1, 1, 9, 7, 11),
(13, '', '120', 'Narośl', ' ', '\r\n', '', '', '', 'S', 3, '123', 0, 0, 0, 0, 0, 0, '', '', '', 'Witam', 0, '123', 0, 0, 1, 1, 1, 9, 7, 11),
(14, '', '120', 'NASA', ' ', '\r\n', '', '', '', 'S', 3, '123', 0, 0, 0, 0, 0, 0, '', '', '', 'Witam', 0, '123', 0, 0, 1, 1, 1, 9, 7, 11);

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
(37, 'notatka udostępnij', 0, 0, 0, 37, '500', 'udostepnij_1', 'udostępnia osobie notatkę o identyfikatorze'),
(38, 'udostępnij', 1, 0, 0, 37, '500', 'udostepnij_0', 'udostępnia osobie notatkę o identyfikatorze'),
(39, 'notatka udostepnij', 1, 0, 0, 37, '500', 'udostepnij_0', 'udostępnia osobie notatkę o identyfikatorze'),
(40, 'udostepnij', 1, 0, 0, 37, '500', 'udostepnij_0', 'udostępnia osobie notatkę o identyfikatorze'),
(41, 'notatka dostęp', 1, 0, 0, 41, '500', 'dostep_1', 'pokazuje udostępnienie notatki o identyfikatorze'),
(42, 'dostęp', 1, 0, 0, 41, '500', 'dostep_0', 'pokazuje udostępnienie notatki o identyfikatorze'),
(43, 'notatka dostep', 1, 0, 0, 41, '500', 'dostep_0', 'pokazuje udostępnienie notatki o identyfikatorze'),
(44, 'dostep', 1, 0, 0, 41, '500', 'dostep_0', 'pokazuje udostępnienie notatki o identyfikatorze');

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
(2, 1, 2, '2022-03-05 11:35:39', 1),
(3, 1, 3, '2022-03-05 11:20:11', 1),
(4, 1, 12, '2022-03-05 11:06:00', 1),
(71, 1, 4, '2022-03-05 11:15:05', 1),
(72, 1, 5, '2022-03-05 11:11:32', 1),
(73, 1, 6, '2022-03-05 11:11:32', 1),
(74, 1, 7, '2022-03-05 11:11:32', 1),
(75, 1, 8, '2022-03-05 11:11:32', 1),
(76, 1, 9, '2022-03-05 11:11:32', 1),
(77, 1, 10, '2022-03-05 11:11:32', 1),
(78, 1, 11, '2022-03-05 11:11:32', 1),
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
(252, 2, 11, '2022-03-05 09:35:59', 1);

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
(4, '2022-02-27 08:13:49', 'Obecna data akcji na Dedalu', '2045-05-16 15:59:47'),
(5, '2022-01-30 13:49:01', 'Stan larpa', 'START'),
(6, '2022-01-30 13:49:01', 'Data startu larpa ', '2022-01-30 13:49:01');

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
  `przeczytana` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `wiadomosci`
--

INSERT INTO `wiadomosci` (`id`, `autor`, `autorText`, `odbiorca`, `odbiorcaText`, `tresc`, `czas`, `przeczytana`) VALUES
(1, 1, 'Dedal', 2, 'John Spow', 'cześć Dedal do John', '2044-01-02 14:12:24', 0),
(2, 1, 'Dedal', 3, 'Wang Japing', 'cześć Dedal do Wang', '2044-01-02 15:12:24', 0),
(3, 3, 'Wang Japing', 2, 'John Spow', 'cześć Wang do John 1', '2044-01-02 16:12:24', 0),
(4, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 2', '2044-01-02 15:12:01', 0),
(5, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 3', '2044-01-02 15:12:02', 0),
(6, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 4', '2044-01-02 15:12:03', 0),
(7, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 5', '2044-01-02 15:12:04', 0),
(8, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 6', '2044-01-02 15:12:06', 0),
(9, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 7', '2044-01-02 15:12:05', 0),
(10, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 8', '2044-01-02 15:12:07', 0),
(11, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 9', '2044-01-02 15:12:08', 0),
(12, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 10', '2044-01-02 15:12:09', 0),
(13, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 11', '2044-01-02 15:11:00', 0),
(14, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 12', '2044-01-02 15:13:00', 0),
(15, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 13', '2044-01-02 15:14:00', 0),
(16, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 14', '2044-01-02 15:15:00', 0),
(17, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 15', '2044-01-02 15:16:00', 0),
(18, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 16', '2044-01-02 15:17:00', 0),
(19, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 17', '2044-01-02 15:18:00', 0),
(21, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 18', '2044-01-02 15:19:00', 0),
(22, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 19', '2044-01-02 15:14:09', 0),
(23, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 20', '2044-01-02 15:14:00', 0),
(24, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 21', '2044-01-02 15:15:05', 0),
(25, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 22', '2044-01-02 15:15:00', 0),
(26, 2, 'John Spow', 3, 'Wang Japing', 'cześć John do Wang 23', '2044-01-02 15:16:00', 0),
(27, 2, 'John Spow', 3, 'Rajech Amid', 'cześć John do Rajeh', '2044-01-02 15:12:24', 0);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `dzialania`
--
ALTER TABLE `dzialania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT dla tabeli `komputery`
--
ALTER TABLE `komputery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT dla tabeli `moduly`
--
ALTER TABLE `moduly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `notatki_ng`
--
ALTER TABLE `notatki_ng`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT dla tabeli `notatki_tr`
--
ALTER TABLE `notatki_tr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT dla tabeli `notatki_udo`
--
ALTER TABLE `notatki_udo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT dla tabeli `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT dla tabeli `polecenia`
--
ALTER TABLE `polecenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT dla tabeli `polecenia_osoby`
--
ALTER TABLE `polecenia_osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT dla tabeli `ustawienia`
--
ALTER TABLE `ustawienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `wiadomosci`
--
ALTER TABLE `wiadomosci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
