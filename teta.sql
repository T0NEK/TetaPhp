-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Lut 2022, 23:53
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
(14, 'wyloguj', 'wyloguj_2', '500', 'wylogowanie', '', '', '', 'end', 'end', ''),
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
(45, 'notatki', 'notatki_3', '500', 'informacja', 'problem z dostępem do notatek: ', 'tekst', '', 'end', 'end', 'informacja z error'),
(46, 'moduly', 'moduly_3', '500', 'informacja', 'problem z dostępem do modułów: ', 'tekst', '', 'end', 'end', 'informacja z error'),
(47, 'notatka wczytaj', 'notatka_2', '500', 'dane', '', 'podaj id notatki ?', '', 'notatka_3', 'notatka_3', ''),
(48, 'notatka wczytaj', 'notatka_3', '500', 'zapiszdane', '', 'nr notatki', '', 'notatka_4', 'notatka_4', ''),
(49, 'notatka wczytaj', 'notatka_4', '500', 'informacja', 'wczytuję motatkę nr: ', 'bufor1', '', 'notatka_5', 'notatka_5', ''),
(50, 'notatka wczytaj', 'notatka_5', '500', 'getset', '', 'wczytaj', 'notatka', 'notatka_7', 'notatka_6', ''),
(52, 'notatka wczytaj', 'notatka_7', '500', 'informacja', 'wczytano notatkę: ', 'tekst', '', 'end', 'end', ''),
(53, 'notatka wczytaj', 'notatka_6', '500', 'informacja', 'problem z wczytaniem notatki: ', 'tekst', '', 'end', 'end', ''),
(54, 'moduły', 'moduly_5', '500', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(55, 'notatki', 'notatki_5', '500', 'informacja', '', 'tekst', '', 'end', 'end', ''),
(56, 'notatka edytuj', 'edytuj_0', '500', 'komunikat', '', 'wykonuję: [ notatka edytuj ]', '', 'edytuj_1', 'edytuj_1', 'alternatywa'),
(57, 'notatka edytuj', 'edytuj_1', '500', 'warunek', '', 'notatka', '', 'edytuj_3', 'edytuj_2', 'czy wczytana?'),
(58, 'notatka edytuj', 'edytuj_2', '500', 'komunikat', '', 'brak notatki do edycji, wczytaj notatkę', '', 'end', 'end', ''),
(59, 'notatka edytuj', 'edytuj_3', '500', 'warunek', '', 'edycja', '', 'edytuj_4', 'edytuj_5', 'Czy w stanie edycji?'),
(60, 'notatka edytuj', 'edytuj_4', '500', 'komunikat', '', 'notatka w stanie edycji', '', 'end', 'end', ''),
(61, 'notatka edytuj', 'edytuj_5', '500', 'warunek', '', 'edytuj', '', 'edytuj_6', 'edytuj_7', 'Czy możliwa edycja?'),
(62, 'notatka edytuj', 'edytuj_6', '500', 'wykonaj', '', 'edytuj', 'on', 'edytuj_4', 'edytuj_4', 'notatka do edycji'),
(63, 'notatka edytuj', 'edytuj_7', '500', 'informacja', 'edycja niemożliwa, autor: ', 'notatka', 'wlasciciel', 'end', 'end', ''),
(64, 'notatka zapisz', 'zapisz_0', '500', 'komunikat', '', 'wykonuję: [ notatka zapisz ]', '', 'zapisz_1', 'zapisz_1', 'alternatywa'),
(65, 'notatka zapisz', 'zapisz_1', '500', 'warunek', '', 'notatka', '', 'zapisz_3', 'zapisz_2', 'czy wczytana?'),
(66, 'notatka zapisz', 'zapisz_2', '500', 'komunikat', '', 'brak notatki, zapis niemożliwy', '', 'end', 'end', ''),
(67, 'notatka zapisz', 'zapisz_3', '500', 'warunek', '', 'zmiany', '', 'zapisz_5', 'zapisz_4', 'Czy w stanie edycji?'),
(68, 'notatka zapisz', 'zapisz_4', '500', 'komunikat', '', 'brak zmian - zaniechano zapisu', '', 'end', 'end', ''),
(69, 'notatka zapisz', 'zapisz_5', '500', 'komunikat', '', 'zapisuję notatkę', '', 'zapisz_6', 'zapisz_6', ''),
(70, 'notatka zapisz', 'zapisz_6', '500', 'wykonaj', '', 'zapisz', 'notatka', 'zapisz_7', 'zapisz_8', ''),
(71, 'notatka zapisz', 'zapisz_7', '500', 'komunikat', '', 'zapisano', '', 'end', 'end', ''),
(72, 'notatka zapisz', 'zapisz_8', '500', 'komunikat', '', 'nie zapisano', '', 'end', 'end', ''),
(73, 'notatka nowa', 'nowa_0', '500', 'komunikat', '', 'wykonuję: [ notatka nowa ]', '', 'nowa_1', 'nowa_1', 'alternatywa'),
(74, 'notatka nowa', 'nowa_1', '500', 'komunikat', '', 'zakładam nową notatkę', '', 'nowa_2', 'nowa_2', ''),
(75, 'notatka nowa', 'nowa_4', '500', 'dane', '', 'podaj tytuł notatki ?', '', 'nowa_5', 'nowa_5', ''),
(76, 'notatka nowa', 'nowa_2', '500', 'warunek', '', 'edycja', '', 'nowa_3', 'nowa_4', 'Czy w stanie edycji?'),
(77, 'notatka nowa', 'nowa_3', '500', 'komunikat', '', 'masz notatkę w edycji', '', 'end', 'end', ''),
(78, 'notatka nowa', 'nowa_5', '500', 'zapiszdane', '', 'tytuł notatki', '', 'nowa_6', 'nowa_6', ''),
(79, 'notatka nowa', 'nowa_6', '500', 'getset', '', 'zapisz', 'notatki', 'nowa_8', 'nowa_7', ''),
(80, 'notatka nowa', 'nowa_7', '500', 'informacja', 'problem z założeniem notatki:', 'tekst', '', 'end', 'end', ''),
(81, 'notatka wczytaj', 'notatka_8', '500', 'warunek', '', 'edycja', '', 'notatka_9', 'notatka_2', 'Czy w stanie edycji?'),
(82, 'notatka wczytaj', 'notatka_9', '500', 'komunikat', '', 'masz notatkę w edycji', '', 'end', 'end', ''),
(83, 'notatka zamknij', 'zamknij_0', '500', 'komunikat', '', 'wykonuję: [ notatka zamknij ]', '', 'zamknij_1', 'zamknij_1', 'alternatywa'),
(84, 'notatka zamknij', 'zamknij_1', '500', 'warunek', '', 'notatka', '', 'zamknij_3', 'zamknij_2', 'czy wczytana?'),
(85, 'notatka zamknij', 'zamknij_2', '500', 'komunikat', '', 'brak wczytanej notatki', '', 'end', 'end', ''),
(86, 'notatka zamknij', 'zamknij_3', '500', 'warunek', '', 'edycja', '', 'zamknij_5', 'zamknij_4', 'Czy w stanie edycji?'),
(87, 'notatka zamknij', 'zamknij_4', '500', 'komunikat', '', 'notatka nie jest edytowana', '', 'end', 'end', ''),
(88, 'notatka zamknij', 'zamknij_5', '500', 'warunek', '', 'zmiany', '', 'zamknij_8', 'zamknij_6', 'Czy są zmiany ?'),
(89, 'notatka zamknij', 'zamknij_6', '500', 'komunikat', '', 'notatka zamknięta', '', 'zamknij_7', 'zamknij_7', ''),
(90, 'notatka zamknij', 'zamknij_7', '500', 'wykonaj', '', 'edytuj', 'off', 'end', 'end', ''),
(91, 'notatka zamknij', 'zamknij_8', '500', 'komunikat', '', 'notatka była edytowana', '', 'zamknij_9', 'zamknij_9', ''),
(92, 'notatka zamknij', 'zamknij_9', '500', 'dane', '', 'zapisać ? (t/n)', '', 'zamknij_10', 'zamknij_10', ''),
(93, 'notatka zamknij', 'zamknij_10', '500', 'zapiszdane', '', '(t/n)', '', 'zamknij_11', 'zamknij_11', ''),
(94, 'notatka zamknij', 'zamknij_11', '500', 'warunek', '', 'taknieSprawdz', '', 'zamknij_12', 'zamknij_9', ''),
(95, 'notatka zamknij', 'zamknij_12', '500', 'warunek', '', 'taknieZdecyduj', '', 'zapisz_5', 'zamknij_6', ''),
(96, 'notatka nowa', 'nowa_8', '500', 'informacja', 'założono notatkę - id: [', 'tekst', ']', 'end', 'end', '');

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
(83, 'DESKTOP-2KPJSHU', 'LY651645051817LR5178962487216RR', '2022-02-16 23:50:17', '2022-02-16 23:50:17', 0);

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
(5, '1644743791H9M34539619611', 'notatka nowa', 2, '2022-02-13 10:14:32', 0, '10000000000'),
(16, '1644944362H5D90471939910', 'nowa notatka testowa', 2, '2022-02-15 17:59:22', 0, '10000000000'),
(17, '1644944539H16K128305674042', 'notatka nowa', 2, '2022-02-15 18:02:19', 0, '10000000000'),
(18, '1644944819H17G106921413235', 'notatka nowa', 2, '2022-02-15 18:06:59', 0, '10000000000'),
(19, '1644944819H18Q92116909864', 'notatka nowa', 2, '2022-02-15 18:06:59', 1, '10000000000'),
(20, '1644944860H19F18094393460', 'notatka nowa', 2, '2022-02-15 18:07:40', 0, '10000000000'),
(21, '1644944860H20P18094393460', 'notatka nowa', 2, '2022-02-15 18:07:40', 0, '10000000000'),
(22, '1644945147H21L4934835441', 'test 1', 2, '2022-02-15 18:12:27', 0, '10000000000');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `notatki_tr`
--

CREATE TABLE `notatki_tr` (
  `id` int(11) NOT NULL,
  `notatki_ng` int(11) NOT NULL,
  `wersja` int(11) NOT NULL,
  `czas` text COLLATE utf8_polish_ci NOT NULL,
  `tresc` text CHARACTER SET utf32 COLLATE utf32_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `notatki_tr`
--

INSERT INTO `notatki_tr` (`id`, `notatki_ng`, `wersja`, `czas`, `tresc`) VALUES
(1, 1, 0, '2022-02-06 09:00', 'notatki_ng.id, notatki_ng.tytul, notatki_ng.wlasciciel, notatki_ng.stan,\r\nnotatki_ng.czasU,\r\nnotatki_ng.czasA,'),
(2, 3, 0, '2022-02-07 19:00', 'notatka 3 obca'),
(3, 1, 1, '2022-03-07 10:00', 'notatki_ng.id, notatki_ng.tytul, notatki_ng.wlasciciel, notatki_ng.stan,\r\nnotatki_ng.czasU,\r\nnotatki_ng.czasA,\r\n\r\nnotatki_ng.id, notatki_ng.tytul, notatki_ng.wlasciciel, notatki_ng.stan,\r\nnotatki_ng.czasU,\r\nnotatki_ng.czasA,'),
(4, 1, 2, '2022-03-07 10:00', 'notatki_ng.id, notatki_ng.tytul, notatki_ng.wlasciciel, notatki_ng.stan,\r\nnotatki_ng.czasU,\r\nnotatki_ng.czasA,\r\n\r\nnotatki_ng.id, notatki_ng.tytul, notatki_ng.wlasciciel, notatki_ng.stan,\r\nnotatki_ng.czasU,\r\nnotatki_ng.czasA,\r\n\r\n\r\nnotatki_ng.id, notatki_ng.tytul, notatki_ng.wlasciciel, notatki_ng.stan,\r\nnotatki_ng.czasU,\r\nnotatki_ng.czasA,');

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
(2, '2022-02-12 08:11:46', '1', 'John', 'Spow', 'Kapitan', 'nawigator, pilot', 'USA', 'john', 'M', 1, '123', 1, 0, 0, 0, 'DESKTOP-2KPJSHU', '2022-02-12 08:11:46', '', 'Witaj John Spow', 200, '123', 1, 0, 0),
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
(22, 'zamknij', 1, 0, 0, 21, '', '500', 'zamknij_0', 'Zamyka edycję notatki bez edycji');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT dla tabeli `komputery`
--
ALTER TABLE `komputery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT dla tabeli `moduly`
--
ALTER TABLE `moduly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `notatki_ng`
--
ALTER TABLE `notatki_ng`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT dla tabeli `notatki_tr`
--
ALTER TABLE `notatki_tr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT dla tabeli `polecenia`
--
ALTER TABLE `polecenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT dla tabeli `ustawienia`
--
ALTER TABLE `ustawienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
