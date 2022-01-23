-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Sty 2022, 00:07
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
  `hostid` text COLLATE utf8_polish_ci NOT NULL,
  `czaslogowania` text COLLATE utf8_polish_ci NOT NULL,
  `czaszmiana` text COLLATE utf8_polish_ci NOT NULL,
  `ustawienia_1` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `komputery`
--

INSERT INTO `komputery` (`id`, `nazwa`, `hostid`, `czaslogowania`, `czaszmiana`, `ustawienia_1`) VALUES
(1, 'DESKTOP-2KPJSHU', 'JG361642940029UT5036144680638GW', '2022-01-23 13:13:48', '2022-01-23 13:13:48', 0),
(2, 'DESKTOP-2KPJSHU', 'AW601642940067PJ5719715280804YU', '2022-01-23 13:14:26', '2022-01-23 13:14:26', 0),
(3, 'DESKTOP-2KPJSHU', 'HQ91642940161PS94139649913685TZ', '2022-01-23 13:16:01', '2022-01-23 13:16:01', 0),
(4, 'DESKTOP-2KPJSHU', 'DR241642940273VB8362431730374MU', '2022-01-23 13:17:53', '2022-01-23 13:17:53', 0),
(5, 'DESKTOP-2KPJSHU', 'ME741642940302QM5939430567248CB', '2022-01-23 13:18:22', '2022-01-23 13:18:22', 0),
(6, 'DESKTOP-2KPJSHU', 'JL441642940359SA5285432898668PF', '2022-01-23 13:19:19', '2022-01-23 13:19:19', 0),
(7, 'DESKTOP-2KPJSHU', 'RC661642949687LY8573932735915VH', '2022-01-23 15:54:47', '2022-01-23 15:54:47', 0),
(8, 'DESKTOP-2KPJSHU', 'PY141642949743FH1021358346659RL', '2022-01-23 15:55:43', '2022-01-23 15:55:43', 0),
(9, 'DESKTOP-2KPJSHU', 'QP631642949773XP97141293680478TE', '2022-01-23 15:56:13', '2022-01-23 15:56:13', 0),
(10, 'DESKTOP-2KPJSHU', 'SZ291642949786LA6970646840798XO', '2022-01-23 15:56:25', '2022-01-23 15:56:25', 0),
(11, 'DESKTOP-2KPJSHU', 'MQ861642949798HD7613143598384CR', '2022-01-23 15:56:38', '2022-01-23 15:56:38', 0),
(12, 'DESKTOP-2KPJSHU', 'GF231642951532LW21146222686348UR', '2022-01-23 16:25:31', '2022-01-23 16:25:31', 0),
(13, 'DESKTOP-2KPJSHU', 'OE681642951869PN3331216085511ED', '2022-01-23 16:31:09', '2022-01-23 16:31:09', 0),
(14, 'DESKTOP-2KPJSHU', 'LU791642952011AQ8088719408594XE', '2022-01-23 16:33:31', '2022-01-23 16:33:31', 0),
(15, 'DESKTOP-2KPJSHU', 'EX421642952055JR27139650924675YR', '2022-01-23 16:34:14', '2022-01-23 16:34:14', 0),
(16, 'DESKTOP-2KPJSHU', 'DK291642952067GX5888719411618LG', '2022-01-23 16:34:27', '2022-01-23 16:34:27', 0),
(17, 'DESKTOP-2KPJSHU', 'KI671642952085JA63115006645950XO', '2022-01-23 16:34:44', '2022-01-23 16:34:44', 0),
(18, 'DESKTOP-2KPJSHU', 'YH271642952096SG6285433508992IZ', '2022-01-23 16:34:55', '2022-01-23 16:34:55', 0),
(19, 'DESKTOP-2KPJSHU', 'WX451642952110MS328214760550PB', '2022-01-23 16:35:10', '2022-01-23 16:35:10', 0),
(20, 'DESKTOP-2KPJSHU', 'DT651642952136SE6918072473496LT', '2022-01-23 16:35:34', '2022-01-23 16:35:34', 0),
(21, 'DESKTOP-2KPJSHU', 'HL791642952219WJ4626287235504GX', '2022-01-23 16:36:59', '2022-01-23 16:36:59', 0),
(22, 'DESKTOP-2KPJSHU', 'YR171642952235FJ648214761175JQ', '2022-01-23 16:37:15', '2022-01-23 16:37:15', 0),
(23, 'DESKTOP-2KPJSHU', 'QA671642952241IC6188719421014LV', '2022-01-23 16:37:21', '2022-01-23 16:37:21', 0),
(24, 'DESKTOP-2KPJSHU', 'XZ241642952247QL7711500665729WM', '2022-01-23 16:37:27', '2022-01-23 16:37:27', 0),
(25, 'DESKTOP-2KPJSHU', 'ZJ691642952251PK4941073806275HY', '2022-01-23 16:37:31', '2022-01-23 16:37:31', 0),
(26, 'DESKTOP-2KPJSHU', 'HW831642952270HW11138007990680YO', '2022-01-23 16:37:48', '2022-01-23 16:37:48', 0),
(27, 'DESKTOP-2KPJSHU', 'JI321642952301XI72151151611692QT', '2022-01-23 16:38:21', '2022-01-23 16:38:21', 0),
(28, 'DESKTOP-2KPJSHU', 'VJ301642952313UW48134722089666ZP', '2022-01-23 16:38:33', '2022-01-23 16:38:33', 0),
(29, 'DESKTOP-2KPJSHU', 'JI901642952343SK7024644285145BY', '2022-01-23 16:39:02', '2022-01-23 16:39:02', 0),
(30, 'DESKTOP-2KPJSHU', 'BA551642952353EP18126507331181JA', '2022-01-23 16:39:13', '2022-01-23 16:39:13', 0),
(31, 'DESKTOP-2KPJSHU', 'DB911642952450XV16164295245000RV', '2022-01-23 16:40:50', '2022-01-23 16:40:50', 0),
(32, 'DESKTOP-2KPJSHU', 'VA721642952551DW1359146291836MH', '2022-01-23 16:42:31', '2022-01-23 16:42:31', 0),
(33, 'DESKTOP-2KPJSHU', 'HL11642952569CD708214762845SS', '2022-01-23 16:42:49', '2022-01-23 16:42:49', 0),
(34, 'DESKTOP-2KPJSHU', 'LK471642952590TI54119935539070OU', '2022-01-23 16:43:10', '2022-01-23 16:43:10', 0),
(35, 'DESKTOP-2KPJSHU', 'UV871642952623GF375575820658SK', '2022-01-23 16:43:42', '2022-01-23 16:43:42', 0),
(36, 'DESKTOP-2KPJSHU', 'AS641642952944NA43164295294400CT', '2022-01-23 16:49:04', '2022-01-23 16:49:04', 0),
(37, 'DESKTOP-2KPJSHU', 'JA551642952999OR656571811996DL', '2022-01-23 16:49:59', '2022-01-23 16:49:59', 0),
(38, 'DESKTOP-2KPJSHU', 'SV821642953055CM2547645638595OE', '2022-01-23 16:50:55', '2022-01-23 16:50:55', 0),
(39, 'DESKTOP-2KPJSHU', 'UE921642953102DX5570646983386FP', '2022-01-23 16:51:42', '2022-01-23 16:51:42', 0),
(40, 'DESKTOP-2KPJSHU', 'GX471642953112HV593285906224RD', '2022-01-23 16:51:51', '2022-01-23 16:51:51', 0),
(41, 'DESKTOP-2KPJSHU', 'XC431642953125KX7521358390625FA', '2022-01-23 16:52:02', '2022-01-23 16:52:02', 0),
(42, 'DESKTOP-2KPJSHU', 'WF391642953137NM97138008063508QX', '2022-01-23 16:52:17', '2022-01-23 16:52:17', 0),
(43, 'DESKTOP-2KPJSHU', 'WJ751642953202PJ7549288596060FX', '2022-01-23 16:53:22', '2022-01-23 16:53:22', 0),
(44, 'DESKTOP-2KPJSHU', 'JS501642953205YN2087076519865SH', '2022-01-23 16:53:25', '2022-01-23 16:53:25', 0),
(45, 'DESKTOP-2KPJSHU', 'XO531642953221OK4082147661050TV', '2022-01-23 16:53:40', '2022-01-23 16:53:40', 0),
(46, 'DESKTOP-2KPJSHU', 'YG971642953234RB64159366463698VI', '2022-01-23 16:53:54', '2022-01-23 16:53:54', 0),
(47, 'DESKTOP-2KPJSHU', 'WN361642953312PT7423001346368DG', '2022-01-23 16:55:12', '2022-01-23 16:55:12', 0),
(48, 'DESKTOP-2KPJSHU', 'DS961642953363ZF2141073834075WB', '2022-01-23 16:56:02', '2022-01-23 16:56:02', 0),
(49, 'DESKTOP-2KPJSHU', 'LA181642953367ET2565718134680CZ', '2022-01-23 16:56:06', '2022-01-23 16:56:06', 0),
(50, 'DESKTOP-2KPJSHU', 'VG51642953373YQ354928860119EB', '2022-01-23 16:56:13', '2022-01-23 16:56:13', 0),
(51, 'DESKTOP-2KPJSHU', 'YP811642953406KA936571813624WR', '2022-01-23 16:56:45', '2022-01-23 16:56:45', 0),
(52, 'DESKTOP-2KPJSHU', 'FU351642953412CK2151151713904LO', '2022-01-23 16:56:52', '2022-01-23 16:56:52', 0),
(53, 'DESKTOP-2KPJSHU', 'NG351642953453XM157503370855LE', '2022-01-23 16:57:33', '2022-01-23 16:57:33', 0),
(54, 'DESKTOP-2KPJSHU', 'CX571642953466GC2890362440630WL', '2022-01-23 16:57:46', '2022-01-23 16:57:46', 0),
(55, 'DESKTOP-2KPJSHU', 'JW71642953475FD22146222859275UB', '2022-01-23 16:57:55', '2022-01-23 16:57:55', 0),
(56, 'DESKTOP-2KPJSHU', 'VB651642953485MU7519715441820IJ', '2022-01-23 16:58:04', '2022-01-23 16:58:04', 0),
(57, 'DESKTOP-2KPJSHU', 'FV751642953664CS59113363802816QQ', '2022-01-23 17:01:04', '2022-01-23 17:01:04', 0),
(58, 'DESKTOP-2KPJSHU', 'VD871642953665AZ67152794690845PL', '2022-01-23 17:01:05', '2022-01-23 17:01:05', 0),
(59, 'DESKTOP-2KPJSHU', 'WL901642953672LO6870647007896QU', '2022-01-23 17:01:11', '2022-01-23 17:01:11', 0),
(60, 'DESKTOP-2KPJSHU', 'KX571642953677FN9854217471341JT', '2022-01-23 17:01:17', '2022-01-23 17:01:17', 0),
(61, 'DESKTOP-2KPJSHU', 'PZ881642953688VP10078861777024NN', '2022-01-23 17:01:28', '2022-01-23 17:01:28', 0),
(62, 'DESKTOP-2KPJSHU', 'HJ691642953815OU194928861445UG', '2022-01-23 17:03:34', '2022-01-23 17:03:34', 0),
(63, 'DESKTOP-2KPJSHU', 'VG441642953821QK8554217476093GC', '2022-01-23 17:03:40', '2022-01-23 17:03:40', 0),
(64, 'DESKTOP-2KPJSHU', 'HV191642953853SP4026287261648MD', '2022-01-23 17:04:13', '2022-01-23 17:04:13', 0),
(65, 'DESKTOP-2KPJSHU', 'HR731642954156PR424928862468NN', '2022-01-23 17:09:16', '2022-01-23 17:09:16', 0),
(66, 'DESKTOP-2KPJSHU', 'YI891642954168MP65113363837592RT', '2022-01-23 17:09:25', '2022-01-23 17:09:25', 0),
(67, 'DESKTOP-2KPJSHU', 'YA441642954171XD6367361121011BN', '2022-01-23 17:09:31', '2022-01-23 17:09:31', 0),
(68, 'DESKTOP-2KPJSHU', 'LJ961642954186NJ3246002717208PH', '2022-01-23 17:09:46', '2022-01-23 17:09:46', 0),
(69, 'DESKTOP-2KPJSHU', 'XM411642954192BF6759146350912XK', '2022-01-23 17:09:52', '2022-01-23 17:09:52', 0),
(70, 'DESKTOP-2KPJSHU', 'BR501642954209GW65131436336720VW', '2022-01-23 17:10:09', '2022-01-23 17:10:09', 0),
(71, 'DESKTOP-2KPJSHU', 'CJ721642954276HY3667361125316QQ', '2022-01-23 17:11:15', '2022-01-23 17:11:15', 0),
(72, 'DESKTOP-2KPJSHU', 'UU641642954286OI2716429542860TU', '2022-01-23 17:11:25', '2022-01-23 17:11:25', 0),
(73, 'DESKTOP-2KPJSHU', 'NY101642954341HE78159366571077YZ', '2022-01-23 17:12:21', '2022-01-23 17:12:21', 0),
(74, 'DESKTOP-2KPJSHU', 'DR341642954371EW1914786589339NH', '2022-01-23 17:12:51', '2022-01-23 17:12:51', 0),
(75, 'DESKTOP-2KPJSHU', 'DS941642954408EI54121578626192UJ', '2022-01-23 17:13:28', '2022-01-23 17:13:28', 0),
(76, 'DESKTOP-2KPJSHU', 'RF331642954421CK2385433629892XO', '2022-01-23 17:13:40', '2022-01-23 17:13:40', 0),
(77, 'DESKTOP-2KPJSHU', 'FV261642954427AD74110077946609NB', '2022-01-23 17:13:47', '2022-01-23 17:13:47', 0),
(78, 'DESKTOP-2KPJSHU', 'JQ541642954433LF2155860450722AG', '2022-01-23 17:13:52', '2022-01-23 17:13:52', 0),
(79, 'DESKTOP-2KPJSHU', 'OB731642954439SN5782147721950DA', '2022-01-23 17:13:59', '2022-01-23 17:13:59', 0),
(80, 'DESKTOP-2KPJSHU', 'ZE681642954459FA1524644316885WK', '2022-01-23 17:14:19', '2022-01-23 17:14:19', 0),
(81, 'DESKTOP-2KPJSHU', 'CV431642954467QN8172289996548VH', '2022-01-23 17:14:27', '2022-01-23 17:14:27', 0),
(82, 'DESKTOP-2KPJSHU', 'ZH151642954477GA52138008176068DU', '2022-01-23 17:14:37', '2022-01-23 17:14:37', 0),
(83, 'DESKTOP-2KPJSHU', 'HA891642954644DS3727930228948CF', '2022-01-23 17:17:23', '2022-01-23 17:17:23', 0),
(84, 'DESKTOP-2KPJSHU', 'AT941642954654DN649857727924GH', '2022-01-23 17:17:34', '2022-01-23 17:17:34', 0),
(85, 'DESKTOP-2KPJSHU', 'AL891642954706NI1992005463536VD', '2022-01-23 17:18:26', '2022-01-23 17:18:26', 0),
(86, 'DESKTOP-2KPJSHU', 'JR881642954721TL39142937060727BK', '2022-01-23 17:18:40', '2022-01-23 17:18:40', 0),
(87, 'DESKTOP-2KPJSHU', 'AU381642954725LV41133079332725AV', '2022-01-23 17:18:45', '2022-01-23 17:18:45', 0),
(88, 'DESKTOP-2KPJSHU', 'SG931642954733BW5827930230461ER', '2022-01-23 17:18:53', '2022-01-23 17:18:53', 0),
(89, 'DESKTOP-2KPJSHU', 'ZU401642954996QL87134722309672KP', '2022-01-23 17:23:16', '2022-01-23 17:23:16', 0),
(90, 'DESKTOP-2KPJSHU', 'XZ351642955031WC43123221627325RX', '2022-01-23 17:23:51', '2022-01-23 17:23:51', 0),
(91, 'DESKTOP-2KPJSHU', 'WD761642955091BX9116649811461WA', '2022-01-23 17:24:51', '2022-01-23 17:24:51', 0),
(92, 'DESKTOP-2KPJSHU', 'AW101642955110QY4223001371540BI', '2022-01-23 17:25:09', '2022-01-23 17:25:09', 0),
(93, 'DESKTOP-2KPJSHU', 'DE771642955119RP2162652556781BG', '2022-01-23 17:25:19', '2022-01-23 17:25:19', 0),
(94, 'DESKTOP-2KPJSHU', 'QD311642955197YB8614786596773AQ', '2022-01-23 17:26:37', '2022-01-23 17:26:37', 0),
(95, 'DESKTOP-2KPJSHU', 'LF991642955410NZ80101863235420LM', '2022-01-23 17:30:10', '2022-01-23 17:30:10', 0),
(96, 'DESKTOP-2KPJSHU', 'EQ381642955425LT6649288662750WQ', '2022-01-23 17:30:25', '2022-01-23 17:30:25', 0),
(97, 'DESKTOP-2KPJSHU', 'QZ141642955437WN9414786598933BO', '2022-01-23 17:30:37', '2022-01-23 17:30:37', 0),
(98, 'DESKTOP-2KPJSHU', 'VE601642955468JT51134722348376IM', '2022-01-23 17:31:08', '2022-01-23 17:31:08', 0),
(99, 'DESKTOP-2KPJSHU', 'WW921642955663BE6598577339780GU', '2022-01-23 17:34:23', '2022-01-23 17:34:23', 0),
(100, 'DESKTOP-2KPJSHU', 'RO211642956156CK7295291457048ML', '2022-01-23 17:42:35', '2022-01-23 17:42:35', 0),
(101, 'DESKTOP-2KPJSHU', 'HT271642956159NJ62156080835105IP', '2022-01-23 17:42:39', '2022-01-23 17:42:39', 0),
(102, 'DESKTOP-2KPJSHU', 'KZ681642956237DK48157723798752NH', '2022-01-23 17:43:57', '2022-01-23 17:43:57', 0),
(103, 'DESKTOP-2KPJSHU', 'GE801642956299BJ7318072519289VA', '2022-01-23 17:44:58', '2022-01-23 17:44:58', 0),
(104, 'DESKTOP-2KPJSHU', 'VT501642957856QY64154438038464CU', '2022-01-23 18:10:55', '2022-01-23 18:10:55', 0),
(105, 'DESKTOP-2KPJSHU', 'ZZ901642957862RR2873933103790QP', '2022-01-23 18:11:02', '2022-01-23 18:11:02', 0),
(106, 'DESKTOP-2KPJSHU', 'DQ511642957961CO22164295796100LP', '2022-01-23 18:12:41', '2022-01-23 18:12:41', 0),
(107, 'DESKTOP-2KPJSHU', 'YX291642971541KR8655861032394GM', '2022-01-23 21:59:00', '2022-01-23 21:59:00', 0),
(108, 'DESKTOP-2KPJSHU', 'SM541642971603UK469004807326EJ', '2022-01-23 22:00:03', '2022-01-23 22:00:03', 0),
(109, 'DESKTOP-2KPJSHU', 'ZM851642971771HL7155861040214LU', '2022-01-23 22:02:51', '2022-01-23 22:02:51', 0),
(110, 'DESKTOP-2KPJSHU', 'FX891642971783SI6131437742640QT', '2022-01-23 22:03:02', '2022-01-23 22:03:02', 0),
(111, 'DESKTOP-2KPJSHU', 'RO611642971792KM4464075899888HJ', '2022-01-23 22:03:12', '2022-01-23 22:03:12', 0),
(112, 'DESKTOP-2KPJSHU', 'WS761642972290RX5790363475950RV', '2022-01-23 22:11:29', '2022-01-23 22:11:29', 0),
(113, 'DESKTOP-2KPJSHU', 'PQ991642972296JM99156082368120MW', '2022-01-23 22:11:36', '2022-01-23 22:11:36', 0),
(114, 'DESKTOP-2KPJSHU', 'MA171642972412JW57144581572256AH', '2022-01-23 22:13:32', '2022-01-23 22:13:32', 0),
(115, 'DESKTOP-2KPJSHU', 'QK151642972417HN4641074310425HT', '2022-01-23 22:13:37', '2022-01-23 22:13:37', 0),
(116, 'DESKTOP-2KPJSHU', 'KR751642972421SX6111722124628EH', '2022-01-23 22:13:41', '2022-01-23 22:13:41', 0),
(117, 'DESKTOP-2KPJSHU', 'PH701642972430BK7713143779440CC', '2022-01-23 22:13:49', '2022-01-23 22:13:49', 0),
(118, 'DESKTOP-2KPJSHU', 'SM431642972561EB6139431341464CW', '2022-01-23 22:16:01', '2022-01-23 22:16:01', 0),
(119, 'DESKTOP-2KPJSHU', 'IH591642972597MQ2696935383223FM', '2022-01-23 22:16:37', '2022-01-23 22:16:37', 0),
(120, 'DESKTOP-2KPJSHU', 'AS741642972606OB63110079164602MJ', '2022-01-23 22:16:46', '2022-01-23 22:16:46', 0),
(121, 'DESKTOP-2KPJSHU', 'MM481642972712SC4623001617968BX', '2022-01-23 22:18:31', '2022-01-23 22:18:31', 0),
(122, 'DESKTOP-2KPJSHU', 'VL931642972725WT5872290799900KJ', '2022-01-23 22:18:45', '2022-01-23 22:18:45', 0),
(123, 'DESKTOP-2KPJSHU', 'XX621642972884TD1373933779780VM', '2022-01-23 22:21:24', '2022-01-23 22:21:24', 0),
(124, 'DESKTOP-2KPJSHU', 'EO271642973028NW16110079192876SC', '2022-01-23 22:23:48', '2022-01-23 22:23:48', 0),
(125, 'DESKTOP-2KPJSHU', 'YI81642973148PY1498578388880ZW', '2022-01-23 22:25:48', '2022-01-23 22:25:48', 0),
(126, 'DESKTOP-2KPJSHU', 'UA61642973155CP62161011369190TE', '2022-01-23 22:25:55', '2022-01-23 22:25:55', 0),
(127, 'DESKTOP-2KPJSHU', 'TL781642973338ZN689857840028YN', '2022-01-23 22:28:58', '2022-01-23 22:28:58', 0),
(128, 'DESKTOP-2KPJSHU', 'KX581642973385VU21136366790955BQ', '2022-01-23 22:29:45', '2022-01-23 22:29:45', 0),
(129, 'DESKTOP-2KPJSHU', 'NQ351642973393AY469857840358PJ', '2022-01-23 22:29:53', '2022-01-23 22:29:53', 0),
(130, 'DESKTOP-2KPJSHU', 'PO751642973418ZJ38103507325334DD', '2022-01-23 22:30:17', '2022-01-23 22:30:17', 0),
(131, 'DESKTOP-2KPJSHU', 'ZJ281642973426HI7772290830744MA', '2022-01-23 22:30:25', '2022-01-23 22:30:25', 0),
(132, 'DESKTOP-2KPJSHU', 'BD631642973437CC27106793273405FG', '2022-01-23 22:30:37', '2022-01-23 22:30:37', 0),
(133, 'DESKTOP-2KPJSHU', 'NE121642973444NJ414928920332DL', '2022-01-23 22:30:44', '2022-01-23 22:30:44', 0),
(134, 'DESKTOP-2KPJSHU', 'CE701642973448SZ5749289203440VH', '2022-01-23 22:30:48', '2022-01-23 22:30:48', 0),
(135, 'DESKTOP-2KPJSHU', 'GL461642973512XV7141295722032MY', '2022-01-23 22:31:52', '2022-01-23 22:31:52', 0),
(136, 'DESKTOP-2KPJSHU', 'PE541642974006YR7782148700300PD', '2022-01-23 22:40:03', '2022-01-23 22:40:03', 0),
(137, 'DESKTOP-2KPJSHU', 'PN541642974020UP15121580077480RH', '2022-01-23 22:40:20', '2022-01-23 22:40:20', 0),
(138, 'DESKTOP-2KPJSHU', 'KZ901642974072YL9459147066592SZ', '2022-01-23 22:41:12', '2022-01-23 22:41:12', 0),
(139, 'DESKTOP-2KPJSHU', 'MG191642974203UR66157725523488PN', '2022-01-23 22:43:23', '2022-01-23 22:43:23', 0),
(140, 'DESKTOP-2KPJSHU', 'CK131642974395EC2224644615925PP', '2022-01-23 22:46:33', '2022-01-23 22:46:33', 0),
(141, 'DESKTOP-2KPJSHU', 'LQ801642974404OC7665718976160GN', '2022-01-23 22:46:44', '2022-01-23 22:46:44', 0),
(142, 'DESKTOP-2KPJSHU', 'CP411642974412JH1760790053244RW', '2022-01-23 22:46:51', '2022-01-23 22:46:51', 0),
(143, 'DESKTOP-2KPJSHU', 'AI841642974496KS7731216515424BP', '2022-01-23 22:48:16', '2022-01-23 22:48:16', 0),
(144, 'DESKTOP-2KPJSHU', 'MX611642974661DQ3082148733050DF', '2022-01-23 22:51:01', '2022-01-23 22:51:01', 0),
(145, 'DESKTOP-2KPJSHU', 'IJ131642974750UZ231642974750IQ', '2022-01-23 22:52:30', '2022-01-23 22:52:30', 0),
(146, 'DESKTOP-2KPJSHU', 'YR81642974875LW51138009889500BA', '2022-01-23 22:54:32', '2022-01-23 22:54:32', 0),
(147, 'DESKTOP-2KPJSHU', 'UD211642974883PB409857849298OF', '2022-01-23 22:54:43', '2022-01-23 22:54:43', 0),
(148, 'DESKTOP-2KPJSHU', 'UR791642974896AD8619715698752TE', '2022-01-23 22:54:56', '2022-01-23 22:54:56', 0),
(149, 'DESKTOP-2KPJSHU', 'QZ831642975321SR12161011581458XJ', '2022-01-23 23:02:00', '2022-01-23 23:02:00', 0),
(150, 'DESKTOP-2KPJSHU', 'PW201642975332PV40147867779880TI', '2022-01-23 23:02:12', '2022-01-23 23:02:12', 0),
(151, 'DESKTOP-2KPJSHU', 'SZ881642975358NQ7418072728938LS', '2022-01-23 23:02:37', '2022-01-23 23:02:37', 0),
(152, 'DESKTOP-2KPJSHU', 'BN801642975530DH7542717363780HT', '2022-01-23 23:05:30', '2022-01-23 23:05:30', 0),
(153, 'DESKTOP-2KPJSHU', 'WB531642975538SU4964076045982OH', '2022-01-23 23:05:38', '2022-01-23 23:05:38', 0),
(154, 'DESKTOP-2KPJSHU', 'XM1001642975729NO5088720689366SR', '2022-01-23 23:08:49', '2022-01-23 23:08:49', 0),
(155, 'DESKTOP-2KPJSHU', 'FB671642975749ZC878214878745UO', '2022-01-23 23:09:09', '2022-01-23 23:09:09', 0),
(156, 'DESKTOP-2KPJSHU', 'CX771642975765FG672290933660ZM', '2022-01-23 23:09:25', '2022-01-23 23:09:25', 0),
(157, 'DESKTOP-2KPJSHU', 'NV331642975791HX429573564238WE', '2022-01-23 23:09:51', '2022-01-23 23:09:51', 0),
(158, 'DESKTOP-2KPJSHU', 'RO421642975866RV73157725683136GI', '2022-01-23 23:11:06', '2022-01-23 23:11:06', 0),
(159, 'DESKTOP-2KPJSHU', 'GM961642975877VG22138009973668JJ', '2022-01-23 23:11:17', '2022-01-23 23:11:17', 0),
(160, 'DESKTOP-2KPJSHU', 'YC381642975919NP32105150458816ZQ', '2022-01-23 23:11:59', '2022-01-23 23:11:59', 0),
(161, 'DESKTOP-2KPJSHU', 'NI411642975992JW59126509151384WP', '2022-01-23 23:13:11', '2022-01-23 23:13:11', 0),
(162, 'DESKTOP-2KPJSHU', 'SM351642976199AW7188720714746MD', '2022-01-23 23:16:38', '2022-01-23 23:16:38', 0),
(163, 'DESKTOP-2KPJSHU', 'IR191642976233AM913285952466LS', '2022-01-23 23:17:13', '2022-01-23 23:17:13', 0),
(164, 'DESKTOP-2KPJSHU', 'WA501642976448IU66157725739008HO', '2022-01-23 23:20:47', '2022-01-23 23:20:47', 0),
(165, 'DESKTOP-2KPJSHU', 'IJ921642976460FO22101864540520OS', '2022-01-23 23:21:00', '2022-01-23 23:21:00', 0),
(166, 'DESKTOP-2KPJSHU', 'CK121642976501OU100105150496064XS', '2022-01-23 23:21:41', '2022-01-23 23:21:41', 0),
(167, 'DESKTOP-2KPJSHU', 'YE601642976534RC47156082770730YP', '2022-01-23 23:22:13', '2022-01-23 23:22:13', 0),
(168, 'DESKTOP-2KPJSHU', 'SU291642976633RY58136367060539FX', '2022-01-23 23:23:52', '2022-01-23 23:23:52', 0),
(169, 'DESKTOP-2KPJSHU', 'PF171642976643II327930602931QU', '2022-01-23 23:24:03', '2022-01-23 23:24:03', 0),
(170, 'DESKTOP-2KPJSHU', 'PQ611642976679TD24101864554098NN', '2022-01-23 23:24:38', '2022-01-23 23:24:38', 0),
(171, 'DESKTOP-2KPJSHU', 'AI861642976740MD5226287627840FH', '2022-01-23 23:25:40', '2022-01-23 23:25:40', 0),
(172, 'DESKTOP-2KPJSHU', 'YZ131642976894BA9757504191290ME', '2022-01-23 23:28:14', '2022-01-23 23:28:14', 0),
(173, 'DESKTOP-2KPJSHU', 'NX981642976945VX6746003354460TU', '2022-01-23 23:29:05', '2022-01-23 23:29:05', 0),
(174, 'DESKTOP-2KPJSHU', 'PA691642976997SG5292006711832FK', '2022-01-23 23:29:56', '2022-01-23 23:29:56', 0),
(175, 'DESKTOP-2KPJSHU', 'JN901642977012MM81123223275900UO', '2022-01-23 23:30:11', '2022-01-23 23:30:11', 0),
(176, 'DESKTOP-2KPJSHU', 'IB201642977126JN81119937330198ZR', '2022-01-23 23:32:06', '2022-01-23 23:32:06', 0),
(177, 'DESKTOP-2KPJSHU', 'BJ21642977142GF7283791834242LB', '2022-01-23 23:32:22', '2022-01-23 23:32:22', 0),
(178, 'DESKTOP-2KPJSHU', 'BU921642977158AW8182148857900OS', '2022-01-23 23:32:38', '2022-01-23 23:32:38', 0),
(179, 'DESKTOP-2KPJSHU', 'LT771642977221YF592006724376TM', '2022-01-23 23:33:41', '2022-01-23 23:33:41', 0),
(180, 'DESKTOP-2KPJSHU', 'MC511642977295HJ99151153911140TI', '2022-01-23 23:34:54', '2022-01-23 23:34:54', 0),
(181, 'DESKTOP-2KPJSHU', 'UI701642977357KS36110079482919JK', '2022-01-23 23:35:57', '2022-01-23 23:35:57', 0),
(182, 'DESKTOP-2KPJSHU', 'XL381642977733JN69144582040504BU', '2022-01-23 23:42:13', '2022-01-23 23:42:13', 0),
(183, 'DESKTOP-2KPJSHU', 'QW791642977963RM4696935699817GN', '2022-01-23 23:46:03', '2022-01-23 23:46:03', 0),
(184, 'DESKTOP-2KPJSHU', 'GW441642977969FJ846571911876NK', '2022-01-23 23:46:09', '2022-01-23 23:46:09', 0),
(185, 'DESKTOP-2KPJSHU', 'GM561642978052YW2885434858704WO', '2022-01-23 23:47:32', '2022-01-23 23:47:32', 0),
(186, 'DESKTOP-2KPJSHU', 'JA651642978112NU2342717430912WV', '2022-01-23 23:48:32', '2022-01-23 23:48:32', 0),
(187, 'DESKTOP-2KPJSHU', 'IK451642978156QC9011500847092XZ', '2022-01-23 23:49:15', '2022-01-23 23:49:15', 0),
(188, 'DESKTOP-2KPJSHU', 'CD501642978164SU7869005082888TH', '2022-01-23 23:49:24', '2022-01-23 23:49:24', 0),
(189, 'DESKTOP-2KPJSHU', 'NL561642978503WI36139653172755RQ', '2022-01-23 23:55:03', '2022-01-23 23:55:03', 0),
(190, 'DESKTOP-2KPJSHU', 'JU221642978680JF65142939145160EO', '2022-01-23 23:58:00', '2022-01-23 23:58:00', 0),
(191, 'DESKTOP-2KPJSHU', 'JG381642978902HW3113365544238SR', '2022-01-24 00:01:41', '2022-01-24 00:01:41', 0),
(192, 'DESKTOP-2KPJSHU', 'VW741642978967GP31118294485624NO', '2022-01-24 00:02:46', '2022-01-24 00:02:46', 0),
(193, 'DESKTOP-2KPJSHU', 'FI711642979063SL296935764717MV', '2022-01-24 00:04:23', '2022-01-24 00:04:23', 0),
(194, 'DESKTOP-2KPJSHU', 'QO621642979122PB9065719164880RD', '2022-01-24 00:05:22', '2022-01-24 00:05:22', 0);

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
(3, '2', 'Louise', 'Banks', 'I oficer', 'K', 1, '123', 0, 1, 0, 'DESKTOP-2KPJSHU', '18.04.2045, 22:21:26', '18.04.2045, 22:35:28', 'Witaj Louise Banks', 400, '123', 0, 1, 0),
(4, '3', 'Dave', 'Bowman', 'II oficer', 'M', 1, '123', 0, 1, 0, 'DESKTOP-2KPJSHU', '18.04.2045, 22:21:28', '18.04.2045, 22:35:31', 'Witaj Dave Bowman', 400, '123', 0, 1, 1),
(5, '4', 'Dwayne', 'Hicks', 'Nawigator', 'M', 1, '123', 0, 1, 0, '', '18.04.2045, 22:21:29', '18.04.2045, 22:38:32', 'Witaj Dwayne Hicks', 400, '123', 0, 1, 0),
(6, '5', 'Anna', 'Lee Dwell', 'Mechanik', 'K', 1, '123', 0, 1, 0, 'DESKTOP-2KPJSHU', '18.04.2045, 22:35:59', '18.04.2045, 22:35:29', 'Witaj Anna Lee Dwell', 400, '123', 0, 1, 0),
(7, '6', 'William', 'Weir', 'Naukowiec', 'M', 1, '123', 0, 1, 0, 'Komputer-Tomka', '18.04.2045, 22:21:32', '18.04.2045, 22:35:31', 'Witaj William Weir', 400, '123', 0, 1, 1),
(8, '7', 'Elizabeth', 'Halperin', 'Naukowiec', 'K', 1, '123', 0, 1, 0, 'DESKTOP-2KPJSHU', '18.04.2045, 22:21:36', '18.04.2045, 22:35:32', 'Witaj Elizabeth Halperin', 400, '123', 0, 1, 0),
(9, '8', 'Hannah', 'Stevens', 'Informatyk', 'K', 1, '!@#', 0, 1, 0, 'Komputer-Tomka', '18.04.2045, 22:40:31', '18.05.2045, 23:24:48', 'Witaj Hannah Stevens', 0, '!@#', 0, 1, 0),
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
(2, '2022-01-16 18:50:01', 'Obecna data startu Dedala', '2043-03-11 12:01:02'),
(3, '', 'Oryginalna data startu akcji na Dedalu', '2045-04-18 21:35:00'),
(4, '2022-01-17 23:38:40', 'Obecna data akcji na Dedalu', '2045-04-18 21:40:43'),
(5, '2022-01-17 23:38:40', 'Stan larpa', 'START'),
(6, '2022-01-17 23:38:40', 'Data startu larpa ', '2022-01-17 23:38:40');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT dla tabeli `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
