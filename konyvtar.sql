-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 14, 2021 at 08:40 PM
-- Server version: 10.3.31-MariaDB-0ubuntu0.20.04.1
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `felhasznalo`
--

INSERT INTO `felhasznalo` (`f_az`, `f_nev`, `f_email`, `f_jelszo`, `f_jog`) VALUES
(1, 'Könyvtáros', 'konyvtaros@gmail.com', '$2y$10$Y8W9N/EB2iqdv9/xyl6Bo.oKZrcg5X4KjdaQYmXAqOFAKQl9V5lHe', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `konyv`
--

CREATE TABLE `konyv` (
  `k_az` int(11) NOT NULL,
  `k_rakjel` int(11) NOT NULL,
  `k_cutszam` varchar(10) NOT NULL,
  `k_biblio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konyv`
--

INSERT INTO `konyv` (`k_az`, `k_rakjel`, `k_cutszam`, `k_biblio`) VALUES
(1, 4790, 'S 69', 'A színész / Mario Soldati ; [ford. Zsámboki Zoltán]. - Budapest : [s.n.], 1973 Debrecen : Alföldi Ny. - 204 p. ; 19 cm. - (Európa zsebkönyvek )'),
(2, 1267, 'S 69', 'Fiúk a barikádon : regény / Bertrand Soletchnik ; [ford. Görög Lívia] ; [ill. Kass János]. - Budapest : Móra Kiadó, 1971 Budapest : Egyet. Ny. - 136 p. ; 19 cm'),
(4, 1269, 'S 69', 'Fiúk a barikádon : regény / Bertrand Soletchnik ; [ford. Görög Lívia] ; [ill. Kass János]. - Budapest : Móra Kiadó, 1971 Budapest : Egyet. Ny. - 136 p. ; 19 cm'),
(5, 1270, 'S 69', 'Fiúk a barikádon : regény / Bertrand Soletchnik ; [ford. Görög Lívia] ; [ill. Kass János]. - Budapest : Móra Kiadó, 1971 Budapest : Egyet. Ny. - 136 p. ; 19 cm'),
(6, 1271, 'S 69', 'Fiúk a barikádon : regény / Bertrand Soletchnik ; [ford. Görög Lívia] ; [ill. Kass János]. - Budapest : Móra Kiadó, 1971 Budapest : Egyet. Ny. - 136 p. ; 19 cm'),
(7, 675, 'S 69', 'Csendes Don / Mihail Solohov ; [ford. Makai Imre] ; [vers ford. Lator László]. - 6. kiad. - Budapest : Európa ; Uzsgorod : Kárpáti Kiadó, 1966. - 2 db ; 21 cm'),
(8, 676, 'S 69', 'Csendes Don / Mihail Solohov ; [ford. Makai Imre] ; [vers ford. Lator László]. - 6. kiad. - Budapest : Európa ; Uzsgorod : Kárpáti Kiadó, 1966. - 2 db ; 21 cm'),
(9, 985, 'S 69', 'Csendes Don / Mihail Solohov ; [ford. Makai Imre] ; [vers ford. Lator László]. - 6. kiad. - Budapest : Európa ; Uzsgorod : Kárpáti Kiadó, 1966. - 2 db ; 21 cm'),
(10, 986, 'S 69', 'Csendes Don / Mihail Solohov ; [ford. Makai Imre] ; [vers ford. Lator László]. - 6. kiad. - Budapest : Európa ; Uzsgorod : Kárpáti Kiadó, 1966. - 2 db ; 21 cm'),
(11, 3462, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(12, 5400, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(13, 5414, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(14, 5415, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(15, 5420, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(16, 5425, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(17, 5438, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(18, 5440, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(19, 5447, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(20, 5450, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(21, 5451, 'S 69', 'Emberi sors : elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László]. - 3. kiad. - Budapest : Európa, 1971 Budapest : Kossuth Ny. - 139 p. ; 19 cm. - (Európa zsebkönyvek )'),
(22, 14757, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(23, 14758, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(24, 14759, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(25, 14762, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(26, 14763, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(27, 14764, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(28, 14765, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(29, 14766, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(30, 14767, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(31, 14768, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(32, 14769, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(33, 14770, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(34, 14771, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(35, 14772, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(36, 14773, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(37, 14774, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(38, 14775, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(39, 14776, 'S 69', 'Emberi sors : Elbeszélések / Mihail Solohov ; [ford. Makai Imre, Németh László, Soproni András]. - 2. kiad. - Bp. : Európa, 1987 Debrecen : Alföldi Ny. - 169 p. ; 21 cm. - (Európa zsebkönyvek)'),
(40, 3787, 'S 69', 'Feltört ugar / Mihail Solohov ; [ford. Makai Imre]. - Budapest : Európa, 1973 Budapest : Kossuth Ny. - 882 p. ; 19 cm. - (A szovjet irodalom könyvtára )'),
(41, 10617, 'S 69', 'A hazáért harcoltak / Mihail Solohov ; [fordította Makai Imre]. - 2. kiad. - Budapest : Zrínyi, 1979 Budapest : Zrínyi Ny. - 324 l. ; 19 cm. - (A győzelem könyvtára )'),
(42, 10621, 'S 69', 'A hazáért harcoltak / Mihail Solohov ; [fordította Makai Imre]. - 2. kiad. - Budapest : Zrínyi, 1979 Budapest : Zrínyi Ny. - 324 l. ; 19 cm. - (A győzelem könyvtára )'),
(43, 883, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(44, 884, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(45, 885, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(46, 886, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(47, 887, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(48, 888, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(49, 889, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(50, 890, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(51, 891, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(52, 892, 'S 76', 'Gabi : [regény] / Somogyi Tóth Sándor ; ill. Bornemisza László. - Budapest : Magvető, 1969 Budapest : Athenaeum Ny. - 187 p. : ill. ; 19 cm'),
(53, 3788, 'S 76', 'A gyerekek kétszer születnek / Somogyi Tóth Sándor ; [ill. Bornemissza László]. - Budapest : Móra Kiadó, 1973 Budapest : Kossuth Ny. - 285 p. ; 19 cm. - (Sirály könyvek )'),
(54, 3789, 'S 76', 'A gyerekek kétszer születnek / Somogyi Tóth Sándor ; [ill. Bornemissza László]. - Budapest : Móra Kiadó, 1973 Budapest : Kossuth Ny. - 285 p. ; 19 cm. - (Sirály könyvek )'),
(55, 122, 'S 80', 'Sophokles drámái / [ford. Babits Mihály et al.] ; [utószó Falus Róbert] ; [jegyz. Szilágyi János György]. - [Budapest] : M. Helikon : Európa, 1970 [Gyoma] : Kner Ny. - 509 p. ; 18 cm. - (Bibliotheca classica )'),
(56, 412, 'S 80', 'Sophokles drámái / [ford. Babits Mihály et al.] ; [utószó Falus Róbert] ; [jegyz. Szilágyi János György]. - [Budapest] : M. Helikon : Európa, 1970 [Gyoma] : Kner Ny. - 509 p. ; 18 cm. - (Bibliotheca classica )'),
(57, 413, 'S 80', 'Sophokles drámái / [ford. Babits Mihály et al.] ; [utószó Falus Róbert] ; [jegyz. Szilágyi János György]. - [Budapest] : M. Helikon : Európa, 1970 [Gyoma] : Kner Ny. - 509 p. ; 18 cm. - (Bibliotheca classica )'),
(58, 16667, 'S 68', 'Antigoné / Szophoklész ; ford. Mészöly Dezső, ... Babits Mihály ; a kötetet szerk., a mű szövegét sajtó alá rend. és a jegyzeteket összeáll. Bolonyai Gábor. - [Budapest] : Ikon, 1994 [Budapest] : Omigraf ; [Dabas] : Dabasi Ny. - 127 p. : ill. ; 28 cm. - (Matúra Klasszikusok )'),
(59, 4564, 'S 80', 'A sóragyogású bánat : mai nyugatnémet költők / [vál., utószó és jegyz. Hajnal Gábor]. - [Budapest] : Európa, [1973] Debrecen : Alföldi Ny. - 234 p. ; 19 cm. - (Modern könyvtár )'),
(60, 3644, 'S 82', 'Az ősi lovagi jel : a vak madarak titka 2. / Ludvík Souček ; [ford. Bártfai László] ; [ill. Kamil Lhoták]. - Bratislava : Madách Kiadó ; Budapest : Móra Kiadó, 1972. - 187 p. ; 24 cm'),
(61, 3645, 'S 82', 'Az ősi lovagi jel : a vak madarak titka 2. / Ludvík Souček ; [ford. Bártfai László] ; [ill. Kamil Lhoták]. - Bratislava : Madách Kiadó ; Budapest : Móra Kiadó, 1972. - 187 p. ; 24 cm'),
(62, 3646, 'S 82', 'Az ősi lovagi jel : a vak madarak titka 2. / Ludvík Souček ; [ford. Bártfai László] ; [ill. Kamil Lhoták]. - Bratislava : Madách Kiadó ; Budapest : Móra Kiadó, 1972. - 187 p. ; 24 cm'),
(63, 4322, 'S 89', 'Csatangolások Charleyval : Amerika nyomában / John Steinbeck ; [ford. Balassa Klára] ; [ill. Szántó Piroska]. - Budapest : Gondolat, 1973 Budapest : Athenaeum Ny. - 232 p., 10 t. ; 21 cm. - (Világjárók )'),
(64, 3829, 'S 89', 'Édentől Keletre : regény / John Steinbeck ; [ford. Szinnai Tivadar]. - Budapest : Európa ; Újvidék : Fórum, 1972. - 670 p. ; 20 cm'),
(65, 3830, 'S 89', 'Édentől Keletre : regény / John Steinbeck ; [ford. Szinnai Tivadar]. - Budapest : Európa ; Újvidék : Fórum, 1972. - 670 p. ; 20 cm'),
(66, 3831, 'S 89', 'Édentől Keletre : regény / John Steinbeck ; [ford. Szinnai Tivadar]. - Budapest : Európa ; Újvidék : Fórum, 1972. - 670 p. ; 20 cm'),
(67, 3832, 'S 89', 'Édentől Keletre : regény / John Steinbeck ; [ford. Szinnai Tivadar]. - Budapest : Európa ; Újvidék : Fórum, 1972. - 670 p. ; 20 cm'),
(68, 2852, 'S 89', 'Érik a gyümölcs : regény / John Steinbeck ; [ford. Benedek Marcell]. - Bukarest : Kriterion, 1971. - 510 p. ; 21 cm. - (Horizont könyvek)'),
(69, 4041, 'S 89', 'Kedves csirkefogók / John Steinbeck ; [ford. Gál Zsuzsa] ; [ill. Cseh Gusztáv]. - Bukarest : Kriterion, 1973. - 185 p. ; 21 cm'),
(70, 4042, 'S 89', 'Kedves csirkefogók / John Steinbeck ; [ford. Gál Zsuzsa] ; [ill. Cseh Gusztáv]. - Bukarest : Kriterion, 1973. - 185 p. ; 21 cm'),
(71, 1078, 'S 90', 'A pármai kolostor : regény / Stendhal ; [ford. Illés Endre]. - Bukarest : Kriterion, 1971. - 491 p. ; 20 cm. - (Horizont könyvek )'),
(72, 1079, 'S 90', 'A pármai kolostor : regény / Stendhal ; [ford. Illés Endre]. - Bukarest : Kriterion, 1971. - 491 p. ; 20 cm. - (Horizont könyvek )'),
(73, 1080, 'S 90', 'A pármai kolostor : regény / Stendhal ; [ford. Illés Endre]. - Bukarest : Kriterion, 1971. - 491 p. ; 20 cm. - (Horizont könyvek )'),
(74, 1081, 'S 90', 'A pármai kolostor : regény / Stendhal ; [ford. Illés Endre]. - Bukarest : Kriterion, 1971. - 491 p. ; 20 cm. - (Horizont könyvek )'),
(75, 1082, 'S 90', 'A pármai kolostor : regény / Stendhal ; [ford. Illés Endre]. - Bukarest : Kriterion, 1971. - 491 p. ; 20 cm. - (Horizont könyvek )'),
(76, 4043, 'S 90', 'A pármai kolostor / Stendhal ; ford. [és jegyz.] Illés Endre. - [Budapest] : M. Helikon : Európa, 1973 Debrecen : Alföldi Ny. - 502 p. ; 19 cm'),
(77, 4044, 'S 90', 'A pármai kolostor / Stendhal ; ford. [és jegyz.] Illés Endre. - [Budapest] : M. Helikon : Európa, 1973 Debrecen : Alföldi Ny. - 502 p. ; 19 cm'),
(78, 893, 'S 90', 'A szerelemről + Napóleon élete.(Ford. Kolozsvári Grandpierre Emil, Lontay László.) Bp. 1969. M. Helikon-[Európa Kiadó] 598, [600] / Stendhal művei 7.'),
(79, 4116, 'S 90', 'Vörös és fehér / Stendhal ; [ford., jegyz. és utószó Illés Endre]. - 8. kiad. - [Budapest] : Európa, 1973 Debrecen : Alföldi Ny. - 2 db ; 21 cm. - (A világirodalom remekei 5. sor. )'),
(80, 4117, 'S 90', 'Vörös és fehér / Stendhal ; [ford., jegyz. és utószó Illés Endre]. - 8. kiad. - [Budapest] : Európa, 1973 Debrecen : Alföldi Ny. - 2 db ; 21 cm. - (A világirodalom remekei 5. sor. )'),
(81, 4118, 'S 90', 'Vörös és fehér / Stendhal ; [ford., jegyz. és utószó Illés Endre]. - 8. kiad. - [Budapest] : Európa, 1973 Debrecen : Alföldi Ny. - 2 db ; 21 cm. - (A világirodalom remekei 5. sor. )'),
(82, 4119, 'S 90', 'Vörös és fehér / Stendhal ; [ford., jegyz. és utószó Illés Endre]. - 8. kiad. - [Budapest] : Európa, 1973 Debrecen : Alföldi Ny. - 2 db ; 21 cm. - (A világirodalom remekei 5. sor. )'),
(83, 4499, 'S 90', 'Vörös és fekete : krónika 1830-ból / Stendhal ; [ford. Illés Endre]. - Bukarest : Kriterion, 1973. - 491 p. ; 21 cm. - (Horizont könyvek )'),
(84, 629, 'S 91', 'Fehértől feketéig / Stetka Éva. - Budapest : Magvető, 1966 Szombathely : Vas M. Ny. - 126 p. ; 19 cm'),
(85, 630, 'S 91', 'Fehértől feketéig / Stetka Éva. - Budapest : Magvető, 1966 Szombathely : Vas M. Ny. - 126 p. ; 19 cm'),
(86, 631, 'S 91', 'Fehértől feketéig / Stetka Éva. - Budapest : Magvető, 1966 Szombathely : Vas M. Ny. - 126 p. ; 19 cm'),
(87, 1156, 'S 91', 'Kert / Stetka Éva. - Budapest : Magvető, 1971 Szombathely : Vas M. Ny. - 120 p. ; 19x17 cm'),
(88, 1157, 'S 91', 'Kert / Stetka Éva. - Budapest : Magvető, 1971 Szombathely : Vas M. Ny. - 120 p. ; 19x17 cm'),
(89, 8395, 'S 91', 'A fekete nyíl : Kalandos történelmi regény / Robert Louis Stevenson ; [... fordította és átdolgozta Szinnai Tivadar] ; [Szecskó Tamás rajzaival]. - 2. kiad. - Budapest : Móra K., 1977, cop. 1973 Budapest : Szikra Ny. - 225 l. : ill. ; 20 cm. - (Delfin könyvek )'),
(90, 8396, 'S 91', 'A fekete nyíl : Kalandos történelmi regény / Robert Louis Stevenson ; [... fordította és átdolgozta Szinnai Tivadar] ; [Szecskó Tamás rajzaival]. - 2. kiad. - Budapest : Móra K., 1977, cop. 1973 Budapest : Szikra Ny. - 225 l. : ill. ; 20 cm. - (Delfin könyvek )'),
(91, 8397, 'S 91', 'A fekete nyíl : Kalandos történelmi regény / Robert Louis Stevenson ; [... fordította és átdolgozta Szinnai Tivadar] ; [Szecskó Tamás rajzaival]. - 2. kiad. - Budapest : Móra K., 1977, cop. 1973 Budapest : Szikra Ny. - 225 l. : ill. ; 20 cm. - (Delfin könyvek )'),
(92, 8398, 'S 91', 'A fekete nyíl : Kalandos történelmi regény / Robert Louis Stevenson ; [... fordította és átdolgozta Szinnai Tivadar] ; [Szecskó Tamás rajzaival]. - 2. kiad. - Budapest : Móra K., 1977, cop. 1973 Budapest : Szikra Ny. - 225 l. : ill. ; 20 cm. - (Delfin könyvek )'),
(93, 9816, 'S 91', 'A kincses sziget : Regény / R. L. Stevenson ; [fordította Devecseri Gábor] / [Bérczi Ottó rajzaival]. - 4. kiad. - Budapest : Móra Kiadó, 1978, cop. 1966 Budapest : Szikra Ny. : Offset és J. Ny. - 235 l. : ill. ; 20 cm. - (Delfin könyvek)'),
(94, 9817, 'S 91', 'A kincses sziget : Regény / R. L. Stevenson ; [fordította Devecseri Gábor] / [Bérczi Ottó rajzaival]. - 4. kiad. - Budapest : Móra Kiadó, 1978, cop. 1966 Budapest : Szikra Ny. : Offset és J. Ny. - 235 l. : ill. ; 20 cm. - (Delfin könyvek)'),
(95, 9818, 'S 91', 'A kincses sziget : Regény / R. L. Stevenson ; [fordította Devecseri Gábor] / [Bérczi Ottó rajzaival]. - 4. kiad. - Budapest : Móra Kiadó, 1978, cop. 1966 Budapest : Szikra Ny. : Offset és J. Ny. - 235 l. : ill. ; 20 cm. - (Delfin könyvek)'),
(96, 9819, 'S 91', 'A kincses sziget : Regény / R. L. Stevenson ; [fordította Devecseri Gábor] / [Bérczi Ottó rajzaival]. - 4. kiad. - Budapest : Móra Kiadó, 1978, cop. 1966 Budapest : Szikra Ny. : Offset és J. Ny. - 235 l. : ill. ; 20 cm. - (Delfin könyvek)'),
(97, 539, 'S 91', 'Öngyilkosok klubja. - [Budapest] : Európa, 1970 Debrecen : Alföldi Ny. - 354 p. ; 20 cm. - (A világirodalom remekei 3. sor. )'),
(98, 540, 'S 91', 'Öngyilkosok klubja. - [Budapest] : Európa, 1970 Debrecen : Alföldi Ny. - 354 p. ; 20 cm. - (A világirodalom remekei 3. sor. )'),
(99, 894, 'S 91', '  Michelangelo : regényes életrajz / Irving Stone ; [ford. G. Beke Margit, Szőllősy Klára] ; [versford. Rónay György]. - [Budapest] : Gondolat, 1970 Budapest : Zrínyi Ny. - 630 p., 32 t. : ill. ; 24 cm'),
(100, 895, 'S 91', '  Michelangelo : regényes életrajz / Irving Stone ; [ford. G. Beke Margit, Szőllősy Klára] ; [versford. Rónay György]. - [Budapest] : Gondolat, 1970 Budapest : Zrínyi Ny. - 630 p., 32 t. : ill. ; 24 cm'),
(101, 896, 'S 91', '  Michelangelo : regényes életrajz / Irving Stone ; [ford. G. Beke Margit, Szőllősy Klára] ; [versford. Rónay György]. - [Budapest] : Gondolat, 1970 Budapest : Zrínyi Ny. - 630 p., 32 t. : ill. ; 24 cm'),
(203, 1268, 'S 69', 'Fiúk a barikádon : regény / Bertrand Soletchnik ; [ford. Görög Lívia] ; [ill. Kass János]. - Budapest : Móra Kiadó, 1971 Budapest : Egyet. Ny. - 136 p. ; 19 cm');

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

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `f_az` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konyv`
--
ALTER TABLE `konyv`
  MODIFY `k_az` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1820;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
