-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Mar 2022, 23:19
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
  `nrip` text COLLATE utf8_polish_ci NOT NULL,
  `hostid` text COLLATE utf8_polish_ci NOT NULL,
  `czasrejestracja` text COLLATE utf8_polish_ci NOT NULL,
  `czaszmiana` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `komputery`
--

INSERT INTO `komputery` (`id`, `nazwa`, `nrip`, `hostid`, `czasrejestracja`, `czaszmiana`) VALUES
(1, 'DESKTOP-2KPJSHU', '127.0.0.1', 'KJ181648661122IL78112108956296UA', '2022-03-30 19:25:22', '2045-06-17 01:56:25'),
(2, 'DESKTOP-2KPJSHU', '127.0.0.1', 'ME831648673514US50154975310316SU', '2022-03-30 22:51:54', '2022-03-30 22:51:54'),
(3, 'DESKTOP-2KPJSHU', '127.0.0.1', 'RN461648674033WU59118704530376YL', '2022-03-30 23:00:33', '2022-03-30 23:00:33'),
(4, 'DESKTOP-2KPJSHU', '127.0.0.1', 'TX41648674040GZ4198920442400ND', '2022-03-30 23:00:40', '2022-03-30 23:00:40');

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
  `del` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `logowania`
--

INSERT INTO `logowania` (`id`, `komputery`, `czaslogowania`, `czaswylogowania`, `czaszmiana`, `zalogowany`, `del`) VALUES
(1, 1, '2045-06-17 01:56:08', '2045-06-17 01:56:25', '2045-06-17 01:56:25', 2, 1),
(2, 4, '2045-06-17 05:33:49', '', '2045-06-17 05:33:49', 2, 0),
(3, 4, '2045-06-17 05:37:14', '2045-06-17 05:47:01', '2045-06-17 05:47:01', 8, 1),
(4, 4, '2045-06-17 05:47:27', '2045-06-17 05:48:06', '2045-06-17 05:48:06', 4, 1);

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
(46, 54, 10, '2022-03-23 18:26:19', 1);

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
(1, '', '110', 'Dedal', '', 'statek', '', '', '', 'S', 2, '!@#', '!@#', 0, 1, 0, 1, 1, 1, 0, '', '2022-03-27 22:23:40', '', 'Dedal jest tylko jeden', 0, 0, 0, 1, 1, 1, 0, 9, 7, 11, 13),
(2, '2045-06-17 05:34:13', '10', 'John', 'Spow', 'Kapitan', 'nawigator, pilot', 'USA', 'john', 'M', 1, '123', '123', 1, 0, 1, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '2045-06-17 05:33:49', '2045-06-17 05:34:13', 'Witaj John Spow', 200, 0, 1, 0, 0, 0, 0, 9, 7, 11, 13),
(3, '2022-03-16 21:59:32', '20', 'Peng', 'Yaping', 'I oficer', 'astrofizyk, dyplomata', 'Chiny', 'peng', 'M', 1, '123', '123', 0, 0, 1, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '', '', 'Witaj Louise Banks', 400, 0, 1, 0, 0, 0, 0, 9, 7, 11, 13),
(4, '2045-06-17 05:48:06', '30', 'William', 'Weir', 'II oficer', 'matematyk, inżynier jądrowy', 'Unia Europejska', 'william', 'M', 1, '123', '123', 0, 0, 1, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '2045-06-17 05:47:27', '2045-06-17 05:48:06', 'Witaj Dave Bowman', 400, 0, 1, 0, 0, 0, 0, 9, 7, 11, 13),
(5, '2022-03-13 21:38:03', '40', 'Manu', 'Punjabi', 'III oficer', 'elektronik, nawigator', 'Indie', 'manu', 'M', 1, '123', '123', 0, 0, 1, 0, 0, 0, 0, '', '', '', 'Witaj Dwayne Hicks', 400, 0, 1, 0, 0, 0, 0, 9, 7, 11, 13),
(6, '2022-03-20 13:40:13', '50', 'Zeki', 'Demir', 'IV oficer', 'pilot, nawigator', 'Turcja', 'zeki', 'M', 1, '123', '123', 1, 0, 1, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '', '', 'Witaj Anna Lee Dwell', 400, 0, 1, 0, 0, 0, 0, 9, 7, 11, 13),
(7, '2022-03-23 18:44:54', '60', 'Akito', 'Yamazaki', 'Psychiatra', 'psychiatra, programista', 'Japonia', 'akito', 'M', 2, '123', '123', 0, 0, 1, 1, 1, 1, 1, 'Komputer-Tomka', '', '', 'Witaj William Weir', 400, 0, 1, 1, 1, 1, 0, 9, 7, 11, 13),
(8, '2045-06-17 05:47:01', '70', 'Da', 'Yang', 'Lekarz', 'lekarz, biolog', 'Chiny', 'da', 'M', 1, '123', '123', 0, 0, 1, 0, 0, 0, 0, 'DESKTOP-2KPJSHU', '2045-06-17 05:37:14', '2045-06-17 05:47:01', 'Witaj Elizabeth Halperin', 400, 0, 1, 0, 0, 0, 0, 9, 7, 11, 13),
(9, '2022-03-27 20:10:49', '80', 'Han', 'Stevens', 'Informatyk', 'programista, łącznościowiec', 'Turcja', 'han', 'M', 2, '123', '123', 0, 0, 1, 1, 1, 1, 1, 'Komputer-Tomka', '', '', 'Witaj Hannah Stevens', 0, 0, 1, 1, 1, 1, 0, 9, 7, 11, 13),
(10, '', '90', 'Dave', 'Bowman', 'Łącznościowiec', 'łącznościowiec, psycholog', 'USA', 'dave', 'M', 1, '123', '123', 0, 0, 1, 0, 0, 0, 0, '', '', '', 'Witam Joshua', 0, 0, 1, 0, 0, 0, 0, 9, 7, 11, 13),
(11, '', '100', 'Rajeh', ' Amit', 'Pilot', 'pilot / nawigator', 'Indie', 'rajeh', 'M', 2, '123', '123', 0, 0, 1, 1, 1, 1, 1, '', '', '', 'Witam MG', 0, 0, 1, 1, 1, 1, 0, 9, 7, 11, 13),
(12, '', '120', 'GRACE', ' ', 'SI', '', '', '', 'S', 2, '123', '123', 0, 0, 0, 1, 1, 1, 1, '', '', '', 'Witam Grace', 0, 0, 0, 1, 1, 1, 0, 9, 7, 11, 13),
(13, '', '130', '*****', '***', 'Narośl Weira', '', '', '', 'S', 3, '123', '123', 0, 0, 0, 1, 1, 1, 1, '', '', '', 'Witam', 0, 0, 0, 1, 1, 1, 0, 9, 7, 11, 13),
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
(253, 1, 13, '2022-03-23 21:44:32', 0);

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
(4, '2022-03-27 22:23:47', 'Obecna data akcji na Dedalu', '2045-06-14 04:53:55'),
(5, '2022-03-27 22:23:47', 'Stan larpa', 'START'),
(6, '2022-03-27 22:23:47', 'Data startu larpa ', '2022-03-27 22:23:47');

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
(3, 2, 'John Spow', 10, 'Dave Bowman', 'hello', '2045-06-13 18:38:50', 0, 0, 1),
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
(30, 13, 'Narośl Weira', 4, 'William Weir', 'to ja', '2045-06-14 02:58:15', 1, 1, 0),
(31, 13, 'Narośl Weira', 2, 'John Spow', 'to ja', '2045-06-14 03:34:13', 1, 1, 0),
(32, 2, 'John Spow', 13, 'Narośl Weira', 'kto ty jesteś ?', '2045-06-14 05:56:56', 0, 0, 0),
(33, 2, 'John Spow', 3, 'Peng Yaping', 'test', '2045-06-14 05:57:33', 0, 0, 0),
(34, 2, 'John Spow', 13, 'Narośl Weira', 'test', '2045-06-14 05:57:33', 0, 0, 0),
(35, 2, 'John Spow', 3, 'Peng Yaping', 'test', '2045-06-14 05:58:45', 0, 0, 0),
(36, 13, ' ', 2, 'John Spow', 'test nazwiska', '2045-06-14 06:09:34', 1, 1, 0),
(37, 2, 'John Spow', 13, ' ', 'kto ty ?', '2045-06-14 06:09:59', 0, 0, 0),
(38, 4, 'William Weir', 13, '           ', 'co za ja ?', '2045-06-14 06:12:27', 0, 0, 0),
(39, 13, '***** ***', 4, 'William Weir', 'test nazwiska', '2045-06-14 06:14:40', 1, 1, 0),
(40, 2, 'John Spow', 15, 'NASA  ', 'wyloguj', '2045-06-15 00:34:45', 0, 0, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `logowania`
--
ALTER TABLE `logowania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT dla tabeli `polecenia_osoby`
--
ALTER TABLE `polecenia_osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT dla tabeli `ustawienia`
--
ALTER TABLE `ustawienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `wiadomosci`
--
ALTER TABLE `wiadomosci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
