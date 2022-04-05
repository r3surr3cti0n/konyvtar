-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2022 at 06:51 PM
-- Server version: 10.3.34-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `konyvtar`
--
CREATE DATABASE IF NOT EXISTS `konyvtar` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `konyvtar`;

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalo`
--

CREATE TABLE `felhasznalo` (
  `f_az` int(11) NOT NULL,
  `f_nev` varchar(80) NOT NULL,
  `f_email` varchar(80) NOT NULL,
  `f_jelszo` varchar(255) DEFAULT NULL,
  `f_jog` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `felhasznalo`
--

INSERT INTO `felhasznalo` (`f_az`, `f_nev`, `f_email`, `f_jelszo`, `f_jog`) VALUES
(1, 'Könyvtáros', 'konyvtaros@gmail.com', '$2y$10$O7c6hHnDBKuCtjk3uFD/BervkdZKaznx30oY4MU/MP/S73WQAUe5y', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `konyv`
--

CREATE TABLE `konyv` (
  `k_az` int(11) NOT NULL,
  `k_rakjel` int(11) NOT NULL,
  `k_cutszam` varchar(10) NOT NULL,
  `k_biblio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `konyv`
--

INSERT INTO `konyv` (`k_az`, `k_rakjel`, `k_cutszam`, `k_biblio`) VALUES
(203, 1268, 'S 69', 'Fiúk a barikádon : regény / Bertrand Soletchnik ; [ford. Görög Lívia] ; [ill. Kass János]. - Budapest : Móra Kiadó, 1971 Budapest : Egyet. Ny. - 136 p. ; 19 cm'),
(2024, 4790, 'S 69', 'A színész / Mario Soldati ; [ford. Zsámboki Zoltán]. - Budapest : [s.n.], 1973 Debrecen : Alföldi Ny. - 204 p. ; 19 cm. - (Európa zsebkönyvek )'),
(2025, 1267, 'S 69', 'Fiúk a barikádon : regény / Bertrand Soletchnik ; [ford. Görög Lívia] ; [ill. Kass János]. - Budapest : Móra Kiadó, 1971 Budapest : Egyet. Ny. - 136 p. ; 19 cm'),
(2026, 1269, 'S 69', 'Fiúk a barikádon : regény / Bertrand Soletchnik ; [ford. Görög Lívia] ; [ill. Kass János]. - Budapest : Móra Kiadó, 1971 Budapest : Egyet. Ny. - 136 p. ; 19 cm'),
(2027, 1270, 'S 69', 'Fiúk a barikádon : regény / Bertrand Soletchnik ; [ford. Görög Lívia] ; [ill. Kass János]. - Budapest : Móra Kiadó, 1971 Budapest : Egyet. Ny. - 136 p. ; 19 cm'),
(2028, 1271, 'S 69', 'Fiúk a barikádon : regény / Bertrand Soletchnik ; [ford. Görög Lívia] ; [ill. Kass János]. - Budapest : Móra Kiadó, 1971 Budapest : Egyet. Ny. - 136 p. ; 19 cm'),
(2029, 675, 'S 69', 'Csendes Don / Mihail Solohov ; [ford. Makai Imre] ; [vers ford. Lator László]. - 6. kiad. - Budapest : Európa ; Uzsgorod : Kárpáti Kiadó, 1966. - 2 db ; 21 cm'),
(2030, 676, 'S 69', 'Csendes Don / Mihail Solohov ; [ford. Makai Imre] ; [vers ford. Lator László]. - 6. kiad. - Budapest : Európa ; Uzsgorod : Kárpáti Kiadó, 1966. - 2 db ; 21 cm'),
(2031, 985, 'S 69', 'Csendes Don / Mihail Solohov ; [ford. Makai Imre] ; [vers ford. Lator László]. - 6. kiad. - Budapest : Európa ; Uzsgorod : Kárpáti Kiadó, 1966. - 2 db ; 21 cm'),
(2032, 986, 'S 69', 'Csendes Don / Mihail Solohov ; [ford. Makai Imre] ; [vers ford. Lator László]. - 6. kiad. - Budapest : Európa ; Uzsgorod : Kárpáti Kiadó, 1966. - 2 db ; 21 cm'),
(2033, 3462, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(2034, 5400, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(2035, 5414, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(2036, 5415, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(2037, 5420, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(2038, 5425, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(2039, 5438, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(2040, 5440, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(2041, 5447, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(2042, 5450, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(2043, 5451, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(2044, 14757, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2045, 14758, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2046, 14759, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2047, 14762, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2048, 14763, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2049, 14764, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2050, 14765, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2051, 14766, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2052, 14767, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2053, 14768, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2054, 14769, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2055, 14770, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2056, 14771, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2057, 14772, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2058, 14773, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2059, 14774, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2060, 14775, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2061, 14776, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(2062, 3787, 'S 69', 'Feltört ugar / Mihail Solohov ; [ford. Makai Imre]. - Budapest : Európa, 1973 Budapest : Kossuth Ny. - 882 p. ; 19 cm. - (A szovjet irodalom könyvtára )'),
(2063, 10617, 'S 69', 'A hazáért harcoltak / Mihail Solohov ; [fordította Makai Imre]. - 2. kiad. - Budapest : Zrínyi, 1979 Budapest : Zrínyi Ny. - 324 l. ; 19 cm. - (A győzelem könyvtára )'),
(2064, 10621, 'S 69', 'A hazáért harcoltak / Mihail Solohov ; [fordította Makai Imre]. - 2. kiad. - Budapest : Zrínyi, 1979 Budapest : Zrínyi Ny. - 324 l. ; 19 cm. - (A győzelem könyvtára )'),
(2065, 883, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(2066, 884, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(2067, 885, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(2068, 886, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(2069, 887, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(2070, 888, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(2071, 889, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(2072, 890, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(2073, 891, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(2074, 892, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(2075, 3788, 'S 76', 'A gyerekek kétszer születnek / Somogyi Tóth Sándor ; [ill. Bornemissza László]. - Budapest : Móra Kiadó, 1973 Budapest : Kossuth Ny. - 285 p. ; 19 cm. - (Sirály könyvek )'),
(2076, 3789, 'S 76', 'A gyerekek kétszer születnek / Somogyi Tóth Sándor ; [ill. Bornemissza László]. - Budapest : Móra Kiadó, 1973 Budapest : Kossuth Ny. - 285 p. ; 19 cm. - (Sirály könyvek )'),
(2077, 122, 'S 80', 'Sophokles drámái / [ford. Babits Mihály et al.] ; [utószó Falus Róbert] ; [jegyz. Szilágyi János György]. - [Budapest] : M. Helikon : Európa, 1970 [Gyoma] : Kner Ny. - 509 p. ; 18 cm. - (Bibliotheca classica )'),
(2078, 412, 'S 80', 'Sophokles drámái / [ford. Babits Mihály et al.] ; [utószó Falus Róbert] ; [jegyz. Szilágyi János György]. - [Budapest] : M. Helikon : Európa, 1970 [Gyoma] : Kner Ny. - 509 p. ; 18 cm. - (Bibliotheca classica )'),
(2079, 413, 'S 80', 'Sophokles drámái / [ford. Babits Mihály et al.] ; [utószó Falus Róbert] ; [jegyz. Szilágyi János György]. - [Budapest] : M. Helikon : Európa, 1970 [Gyoma] : Kner Ny. - 509 p. ; 18 cm. - (Bibliotheca classica )'),
(2080, 16667, 'S 68', 'Antigoné / Szophoklész ; ford. Mészöly Dezső, ... Babits Mihály ; a kötetet szerk., a mű szövegét sajtó alá rend. és a jegyzeteket összeáll. Bolonyai Gábor. - [Budapest] : Ikon, 1994 [Budapest] : Omigraf ; [Dabas] : Dabasi Ny. - 127 p. : ill. ; 28 cm. - (Matúra Klasszikusok )'),
(2081, 4564, 'S 80', 'A sóragyogású bánat : mai nyugatnémet költők / [vál., utószó és jegyz. Hajnal Gábor]. - [Budapest] : Európa, [1973] Debrecen : Alföldi Ny. - 234 p. ; 19 cm. - (Modern könyvtár )'),
(2082, 3644, 'S 82', 'Az ősi lovagi jel : a vak madarak titka 2. / Ludvík Souček ; [ford. Bártfai László] ; [ill. Kamil Lhoták]. - Bratislava : Madách Kiadó ; Budapest : Móra Kiadó, 1972. - 187 p. ; 24 cm'),
(2083, 3645, 'S 82', 'Az ősi lovagi jel : a vak madarak titka 2. / Ludvík Souček ; [ford. Bártfai László] ; [ill. Kamil Lhoták]. - Bratislava : Madách Kiadó ; Budapest : Móra Kiadó, 1972. - 187 p. ; 24 cm'),
(2084, 3646, 'S 82', 'Az ősi lovagi jel : a vak madarak titka 2. / Ludvík Souček ; [ford. Bártfai László] ; [ill. Kamil Lhoták]. - Bratislava : Madách Kiadó ; Budapest : Móra Kiadó, 1972. - 187 p. ; 24 cm'),
(2085, 4322, 'S 89', 'Csatangolások Charleyval : Amerika nyomában / John Steinbeck ; [ford. Balassa Klára] ; [ill. Szántó Piroska]. - Budapest : Gondolat, 1973 Budapest : Athenaeum Ny. - 232 p., 10 t. ; 21 cm. - (Világjárók )'),
(2086, 3829, 'S 89', 'Édentől Keletre : regény / John Steinbeck ; [ford. Szinnai Tivadar]. - Budapest : Európa ; Újvidék : Fórum, 1972. - 670 p. ; 20 cm'),
(2087, 3830, 'S 89', 'Édentől Keletre : regény / John Steinbeck ; [ford. Szinnai Tivadar]. - Budapest : Európa ; Újvidék : Fórum, 1972. - 670 p. ; 20 cm'),
(2088, 3831, 'S 89', 'Édentől Keletre : regény / John Steinbeck ; [ford. Szinnai Tivadar]. - Budapest : Európa ; Újvidék : Fórum, 1972. - 670 p. ; 20 cm'),
(2089, 3832, 'S 89', 'Édentől Keletre : regény / John Steinbeck ; [ford. Szinnai Tivadar]. - Budapest : Európa ; Újvidék : Fórum, 1972. - 670 p. ; 20 cm'),
(2090, 2852, 'S 89', 'Érik a gyümölcs : regény / John Steinbeck ; [ford. Benedek Marcell]. - Bukarest : Kriterion, 1971. - 510 p. ; 21 cm. - (Horizont könyvek)'),
(2091, 4041, 'S 89', 'Kedves csirkefogók / John Steinbeck ; [ford. Gál Zsuzsa] ; [ill. Cseh Gusztáv]. - Bukarest : Kriterion, 1973. - 185 p. ; 21 cm'),
(2092, 4042, 'S 89', 'Kedves csirkefogók / John Steinbeck ; [ford. Gál Zsuzsa] ; [ill. Cseh Gusztáv]. - Bukarest : Kriterion, 1973. - 185 p. ; 21 cm'),
(2093, 1078, 'S 90', 'A pármai kolostor : regény / Stendhal ; [ford. Illés Endre]. - Bukarest : Kriterion, 1971. - 491 p. ; 20 cm. - (Horizont könyvek )'),
(2094, 1079, 'S 90', 'A pármai kolostor : regény / Stendhal ; [ford. Illés Endre]. - Bukarest : Kriterion, 1971. - 491 p. ; 20 cm. - (Horizont könyvek )'),
(2095, 1080, 'S 90', 'A pármai kolostor : regény / Stendhal ; [ford. Illés Endre]. - Bukarest : Kriterion, 1971. - 491 p. ; 20 cm. - (Horizont könyvek )'),
(2096, 1081, 'S 90', 'A pármai kolostor : regény / Stendhal ; [ford. Illés Endre]. - Bukarest : Kriterion, 1971. - 491 p. ; 20 cm. - (Horizont könyvek )'),
(2097, 1082, 'S 90', 'A pármai kolostor : regény / Stendhal ; [ford. Illés Endre]. - Bukarest : Kriterion, 1971. - 491 p. ; 20 cm. - (Horizont könyvek )'),
(2098, 4043, 'S 90', 'A pármai kolostor / Stendhal ; ford. [és jegyz.] Illés Endre. - [Budapest] : M. Helikon : Európa, 1973 Debrecen : Alföldi Ny. - 502 p. ; 19 cm'),
(2099, 4044, 'S 90', 'A pármai kolostor / Stendhal ; ford. [és jegyz.] Illés Endre. - [Budapest] : M. Helikon : Európa, 1973 Debrecen : Alföldi Ny. - 502 p. ; 19 cm'),
(2100, 893, 'S 90', 'A szerelemről + Napóleon élete.(Ford. Kolozsvári Grandpierre Emil, Lontay László.) Bp. 1969. M. Helikon-[Európa Kiadó] 598, [600] / Stendhal művei 7.'),
(2101, 4116, 'S 90', 'Vörös és fehér / Stendhal ; [ford., jegyz. és utószó Illés Endre]. - 8. kiad. - [Budapest] : Európa, 1973 Debrecen : Alföldi Ny. - 2 db ; 21 cm. - (A világirodalom remekei 5. sor. )'),
(2102, 4117, 'S 90', 'Vörös és fehér / Stendhal ; [ford., jegyz. és utószó Illés Endre]. - 8. kiad. - [Budapest] : Európa, 1973 Debrecen : Alföldi Ny. - 2 db ; 21 cm. - (A világirodalom remekei 5. sor. )'),
(2103, 4118, 'S 90', 'Vörös és fehér / Stendhal ; [ford., jegyz. és utószó Illés Endre]. - 8. kiad. - [Budapest] : Európa, 1973 Debrecen : Alföldi Ny. - 2 db ; 21 cm. - (A világirodalom remekei 5. sor. )'),
(2104, 4119, 'S 90', 'Vörös és fehér / Stendhal ; [ford., jegyz. és utószó Illés Endre]. - 8. kiad. - [Budapest] : Európa, 1973 Debrecen : Alföldi Ny. - 2 db ; 21 cm. - (A világirodalom remekei 5. sor. )'),
(2105, 4499, 'S 90', 'Vörös és fekete : krónika 1830-ból / Stendhal ; [ford. Illés Endre]. - Bukarest : Kriterion, 1973. - 491 p. ; 21 cm. - (Horizont könyvek )'),
(2106, 629, 'S 91', 'Fehértől feketéig / Stetka Éva. - Budapest : Magvető, 1966 Szombathely : Vas M. Ny. - 126 p. ; 19 cm'),
(2107, 630, 'S 91', 'Fehértől feketéig / Stetka Éva. - Budapest : Magvető, 1966 Szombathely : Vas M. Ny. - 126 p. ; 19 cm'),
(2108, 631, 'S 91', 'Fehértől feketéig / Stetka Éva. - Budapest : Magvető, 1966 Szombathely : Vas M. Ny. - 126 p. ; 19 cm'),
(2109, 1156, 'S 91', 'Kert / Stetka Éva. - Budapest : Magvető, 1971 Szombathely : Vas M. Ny. - 120 p. ; 19x17 cm'),
(2110, 1157, 'S 91', 'Kert / Stetka Éva. - Budapest : Magvető, 1971 Szombathely : Vas M. Ny. - 120 p. ; 19x17 cm'),
(2111, 8395, 'S 91', 'A fekete nyíl : Kalandos történelmi regény / Robert Louis Stevenson ; [... fordította és átdolgozta Szinnai Tivadar] ; [Szecskó Tamás rajzaival]. - 2. kiad. - Budapest : Móra K., 1977, cop. 1973 Budapest : Szikra Ny. - 225 l. : ill. ; 20 cm. - (Delfin könyvek )'),
(2112, 8396, 'S 91', 'A fekete nyíl : Kalandos történelmi regény / Robert Louis Stevenson ; [... fordította és átdolgozta Szinnai Tivadar] ; [Szecskó Tamás rajzaival]. - 2. kiad. - Budapest : Móra K., 1977, cop. 1973 Budapest : Szikra Ny. - 225 l. : ill. ; 20 cm. - (Delfin könyvek )'),
(2113, 8397, 'S 91', 'A fekete nyíl : Kalandos történelmi regény / Robert Louis Stevenson ; [... fordította és átdolgozta Szinnai Tivadar] ; [Szecskó Tamás rajzaival]. - 2. kiad. - Budapest : Móra K., 1977, cop. 1973 Budapest : Szikra Ny. - 225 l. : ill. ; 20 cm. - (Delfin könyvek )'),
(2114, 8398, 'S 91', 'A fekete nyíl : Kalandos történelmi regény / Robert Louis Stevenson ; [... fordította és átdolgozta Szinnai Tivadar] ; [Szecskó Tamás rajzaival]. - 2. kiad. - Budapest : Móra K., 1977, cop. 1973 Budapest : Szikra Ny. - 225 l. : ill. ; 20 cm. - (Delfin könyvek )'),
(2115, 9816, 'S 91', 'A kincses sziget : Regény / R. L. Stevenson ; [fordította Devecseri Gábor] / [Bérczi Ottó rajzaival]. - 4. kiad. - Budapest : Móra Kiadó, 1978, cop. 1966 Budapest : Szikra Ny. : Offset és J. Ny. - 235 l. : ill. ; 20 cm. - (Delfin könyvek)'),
(2116, 9817, 'S 91', 'A kincses sziget : Regény / R. L. Stevenson ; [fordította Devecseri Gábor] / [Bérczi Ottó rajzaival]. - 4. kiad. - Budapest : Móra Kiadó, 1978, cop. 1966 Budapest : Szikra Ny. : Offset és J. Ny. - 235 l. : ill. ; 20 cm. - (Delfin könyvek)'),
(2117, 9818, 'S 91', 'A kincses sziget : Regény / R. L. Stevenson ; [fordította Devecseri Gábor] / [Bérczi Ottó rajzaival]. - 4. kiad. - Budapest : Móra Kiadó, 1978, cop. 1966 Budapest : Szikra Ny. : Offset és J. Ny. - 235 l. : ill. ; 20 cm. - (Delfin könyvek)'),
(2118, 9819, 'S 91', 'A kincses sziget : Regény / R. L. Stevenson ; [fordította Devecseri Gábor] / [Bérczi Ottó rajzaival]. - 4. kiad. - Budapest : Móra Kiadó, 1978, cop. 1966 Budapest : Szikra Ny. : Offset és J. Ny. - 235 l. : ill. ; 20 cm. - (Delfin könyvek)'),
(2119, 539, 'S 91', 'Öngyilkosok klubja. - [Budapest] : Európa, 1970 Debrecen : Alföldi Ny. - 354 p. ; 20 cm. - (A világirodalom remekei 3. sor. )'),
(2120, 540, 'S 91', 'Öngyilkosok klubja. - [Budapest] : Európa, 1970 Debrecen : Alföldi Ny. - 354 p. ; 20 cm. - (A világirodalom remekei 3. sor. )'),
(2121, 894, 'S 91', '  Michelangelo : regényes életrajz / Irving Stone ; [ford. G. Beke Margit, Szőllősy Klára] ; [versford. Rónay György]. - [Budapest] : Gondolat, 1970 Budapest : Zrínyi Ny. - 630 p., 32 t. : ill. ; 24 cm'),
(2122, 895, 'S 91', '  Michelangelo : regényes életrajz / Irving Stone ; [ford. G. Beke Margit, Szőllősy Klára] ; [versford. Rónay György]. - [Budapest] : Gondolat, 1970 Budapest : Zrínyi Ny. - 630 p., 32 t. : ill. ; 24 cm'),
(2123, 896, 'S 91', '  Michelangelo : regényes életrajz / Irving Stone ; [ford. G. Beke Margit, Szőllősy Klára] ; [versford. Rónay György]. - [Budapest] : Gondolat, 1970 Budapest : Zrínyi Ny. - 630 p., 32 t. : ill. ; 24 cm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `felhasznalo`
--
ALTER TABLE `felhasznalo`
  ADD PRIMARY KEY (`f_az`);

--
-- Indexes for table `konyv`
--
ALTER TABLE `konyv`
  ADD PRIMARY KEY (`k_az`) USING BTREE,
  ADD UNIQUE KEY `k_rakjel` (`k_rakjel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
