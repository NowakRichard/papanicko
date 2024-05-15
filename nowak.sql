-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Stř 15. kvě 2024, 14:45
-- Verze serveru: 10.4.28-MariaDB
-- Verze PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `nowak`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `barva`
--

CREATE TABLE `barva` (
  `id` int(11) NOT NULL,
  `barva` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `barva`
--

INSERT INTO `barva` (`id`, `barva`) VALUES
(1, 'červená'),
(2, 'modrá'),
(3, 'zelená'),
(4, 'fialová'),
(5, 'žlutá'),
(6, 'oranžová'),
(7, 'růžová'),
(8, 'hnědá'),
(9, 'bílá'),
(10, 'černá');

-- --------------------------------------------------------

--
-- Struktura tabulky `chut`
--

CREATE TABLE `chut` (
  `id` int(11) NOT NULL,
  `chut` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `chut`
--

INSERT INTO `chut` (`id`, `chut`) VALUES
(1, 'sladké'),
(2, 'hořké'),
(3, 'slané'),
(4, 'kyselé'),
(5, 'umami');

-- --------------------------------------------------------

--
-- Struktura tabulky `druh`
--

CREATE TABLE `druh` (
  `id` int(11) NOT NULL,
  `druh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `druh`
--

INSERT INTO `druh` (`id`, `druh`) VALUES
(1, 'ovoce'),
(2, 'zelenina'),
(3, 'maso'),
(4, 'pečivo'),
(5, 'sladkosti');

-- --------------------------------------------------------

--
-- Struktura tabulky `jidlo`
--

CREATE TABLE `jidlo` (
  `id` int(11) NOT NULL,
  `nazev` varchar(255) NOT NULL,
  `hmotnost` smallint(5) UNSIGNED NOT NULL,
  `popis` text NOT NULL,
  `obrazek` varchar(255) NOT NULL,
  `barva_id` int(11) NOT NULL,
  `specialni_aspekt_id` int(11) NOT NULL,
  `chut_id` int(11) NOT NULL,
  `druh_id` int(11) NOT NULL,
  `konzumace_id` int(11) NOT NULL,
  `skladovani_id` int(11) NOT NULL,
  `puvod_id` int(11) NOT NULL,
  `zminka_id` int(11) NOT NULL,
  `trvanlivost_id` int(11) NOT NULL,
  `zdravost_id` int(11) NOT NULL,
  `vzhled_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `konzumace`
--

CREATE TABLE `konzumace` (
  `id` int(11) NOT NULL,
  `doporucena_teplota_konzumace` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `puvod`
--

CREATE TABLE `puvod` (
  `id` int(11) NOT NULL,
  `zeme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `puvod`
--

INSERT INTO `puvod` (`id`, `zeme`) VALUES
(1, 'Afghánistán'),
(2, 'Albánie'),
(3, 'Alžírsko'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Antigua a Barbuda'),
(7, 'Argentina'),
(8, 'Arménie'),
(9, 'Austrálie'),
(10, 'Ázerbájdžán'),
(11, 'Bahamy'),
(12, 'Bahrajn'),
(13, 'Bangladéš'),
(14, 'Barbados'),
(15, 'Belgie'),
(16, 'Belize'),
(17, 'Benin'),
(18, 'Bhútán'),
(19, 'Bělorusko'),
(20, 'Bolívie'),
(21, 'Bosna a Hercegovina'),
(22, 'Botswana'),
(23, 'Brazílie'),
(24, 'Brunej'),
(25, 'Bulharsko'),
(26, 'Burkina Faso'),
(27, 'Burundi'),
(28, 'Čad'),
(29, 'Černá Hora'),
(30, 'Česko'),
(31, 'Čína'),
(32, 'Dánsko'),
(33, 'Dominika'),
(34, 'Dominikánská republika'),
(35, 'Džibutsko'),
(36, 'Egypt'),
(37, 'Ekvádor'),
(38, 'Eritrea'),
(39, 'Estonsko'),
(40, 'Eswatini'),
(41, 'Etiopie'),
(42, 'Fidži'),
(43, 'Filipíny'),
(44, 'Finsko'),
(45, 'Francie'),
(46, 'Gabon'),
(47, 'Gambie'),
(48, 'Ghana'),
(49, 'Grenada'),
(50, 'Gruzie'),
(51, 'Guatemala'),
(52, 'Guinea'),
(53, 'Guinea-Bissau'),
(54, 'Guyana'),
(55, 'Haiti'),
(56, 'Honduras'),
(57, 'Chile'),
(58, 'Chorvatsko'),
(59, 'Indie'),
(60, 'Indonésie'),
(61, 'Irák'),
(62, 'Írán'),
(63, 'Irsko'),
(64, 'Island'),
(65, 'Itálie'),
(66, 'Izrael'),
(67, 'Jamajka'),
(68, 'Japonsko'),
(69, 'Jemen'),
(70, 'Jihoafrická republika'),
(71, 'Jižní Korea'),
(72, 'Jižní Súdán'),
(73, 'Jordánsko'),
(74, 'Kambodža'),
(75, 'Kamerun'),
(76, 'Kanada'),
(77, 'Katar'),
(78, 'Kazachstán'),
(79, 'Keňa'),
(80, 'Kiribati'),
(81, 'Kolumbie'),
(82, 'Komory'),
(83, 'Kongo'),
(84, 'Kostarika'),
(85, 'Kuba'),
(86, 'Kypr'),
(87, 'Kyrgyzstán'),
(88, 'Laos'),
(89, 'Lesotho'),
(90, 'Libanon'),
(91, 'Libérie'),
(92, 'Libye'),
(93, 'Lichtenštejnsko'),
(94, 'Litva'),
(95, 'Lotyšsko'),
(96, 'Lucembursko'),
(97, 'Madagaskar'),
(98, 'Maďarsko'),
(99, 'Makedonie'),
(100, 'Malajsie'),
(101, 'Malawi'),
(102, 'Maledivy'),
(103, 'Mali'),
(104, 'Malta'),
(105, 'Maroko'),
(106, 'Marshallovy ostrovy'),
(107, 'Mauritánie'),
(108, 'Mauritius'),
(109, 'Mexiko'),
(110, 'Mikronésie'),
(111, 'Moldavsko');

-- --------------------------------------------------------

--
-- Struktura tabulky `skladovani`
--

CREATE TABLE `skladovani` (
  `id` int(11) NOT NULL,
  `minimalni_teplota_skladovani` tinyint(4) NOT NULL,
  `maximalni_teplota_skladovani` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `specialni_aspekt`
--

CREATE TABLE `specialni_aspekt` (
  `id` int(11) NOT NULL,
  `aspekt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `specialni_aspekt`
--

INSERT INTO `specialni_aspekt` (`id`, `aspekt`) VALUES
(1, 'žádné'),
(2, 'jedovaté'),
(3, 'částečně jedovaté'),
(4, 'nejedlé za studena'),
(5, 'nejedlé za tepla');

-- --------------------------------------------------------

--
-- Struktura tabulky `trvanlivost`
--

CREATE TABLE `trvanlivost` (
  `id` int(11) NOT NULL,
  `pocet_dni_tranlivosti` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `vzhled`
--

CREATE TABLE `vzhled` (
  `id` int(11) NOT NULL,
  `vzhled` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `vzhled`
--

INSERT INTO `vzhled` (`id`, `vzhled`) VALUES
(1, 'Deconstructed'),
(2, 'Molecular gastronomy'),
(3, 'Minimalistický'),
(4, 'Rustikální'),
(5, 'Avantgardní'),
(6, 'Monochromatický'),
(7, 'Geometrický'),
(8, 'Zvířecí inspirace'),
(9, 'Vzdušný'),
(10, 'Interaktivní');

-- --------------------------------------------------------

--
-- Struktura tabulky `zdravost`
--

CREATE TABLE `zdravost` (
  `id` int(11) NOT NULL,
  `hodnoceni_zdravosti` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `zdravost`
--

INSERT INTO `zdravost` (`id`, `hodnoceni_zdravosti`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Struktura tabulky `zminka`
--

CREATE TABLE `zminka` (
  `id` int(11) NOT NULL,
  `prvni_datovana_zminka` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `barva`
--
ALTER TABLE `barva`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexy pro tabulku `chut`
--
ALTER TABLE `chut`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexy pro tabulku `druh`
--
ALTER TABLE `druh`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexy pro tabulku `jidlo`
--
ALTER TABLE `jidlo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_jidlo_barva_idx` (`barva_id`),
  ADD KEY `fk_jidlo_specialni_aspekt1_idx` (`specialni_aspekt_id`),
  ADD KEY `fk_jidlo_chut1_idx` (`chut_id`),
  ADD KEY `fk_jidlo_druh1_idx` (`druh_id`),
  ADD KEY `fk_jidlo_konzumace1_idx` (`konzumace_id`),
  ADD KEY `fk_jidlo_skladovani1_idx` (`skladovani_id`),
  ADD KEY `fk_jidlo_puvod1_idx` (`puvod_id`),
  ADD KEY `fk_jidlo_zminka1_idx` (`zminka_id`),
  ADD KEY `fk_jidlo_trvanlivost1_idx` (`trvanlivost_id`),
  ADD KEY `fk_jidlo_zdravost1_idx` (`zdravost_id`),
  ADD KEY `fk_jidlo_vzhled1_idx` (`vzhled_id`);

--
-- Indexy pro tabulku `konzumace`
--
ALTER TABLE `konzumace`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexy pro tabulku `puvod`
--
ALTER TABLE `puvod`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexy pro tabulku `skladovani`
--
ALTER TABLE `skladovani`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexy pro tabulku `specialni_aspekt`
--
ALTER TABLE `specialni_aspekt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexy pro tabulku `trvanlivost`
--
ALTER TABLE `trvanlivost`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexy pro tabulku `vzhled`
--
ALTER TABLE `vzhled`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idvzhled_UNIQUE` (`id`);

--
-- Indexy pro tabulku `zdravost`
--
ALTER TABLE `zdravost`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexy pro tabulku `zminka`
--
ALTER TABLE `zminka`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `jidlo`
--
ALTER TABLE `jidlo`
  ADD CONSTRAINT `fk_jidlo_barva` FOREIGN KEY (`barva_id`) REFERENCES `barva` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_jidlo_chut1` FOREIGN KEY (`chut_id`) REFERENCES `chut` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_jidlo_druh1` FOREIGN KEY (`druh_id`) REFERENCES `druh` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_jidlo_konzumace1` FOREIGN KEY (`konzumace_id`) REFERENCES `konzumace` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_jidlo_puvod1` FOREIGN KEY (`puvod_id`) REFERENCES `puvod` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_jidlo_skladovani1` FOREIGN KEY (`skladovani_id`) REFERENCES `skladovani` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_jidlo_specialni_aspekt1` FOREIGN KEY (`specialni_aspekt_id`) REFERENCES `specialni_aspekt` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_jidlo_trvanlivost1` FOREIGN KEY (`trvanlivost_id`) REFERENCES `trvanlivost` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_jidlo_vzhled1` FOREIGN KEY (`vzhled_id`) REFERENCES `vzhled` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_jidlo_zdravost1` FOREIGN KEY (`zdravost_id`) REFERENCES `zdravost` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_jidlo_zminka1` FOREIGN KEY (`zminka_id`) REFERENCES `zminka` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
