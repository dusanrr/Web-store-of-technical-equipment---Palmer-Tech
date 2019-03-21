-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2015 at 10:49 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `databaza`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikli`
--

CREATE TABLE IF NOT EXISTS `artikli` (
  `artikal_id` int(4) NOT NULL,
  `artikal_naziv` varchar(60) NOT NULL,
  `artikal_podkat` varchar(25) NOT NULL,
  `artikal_opis` longtext NOT NULL,
  `artikal_cena` double NOT NULL,
  `artikal_garancija` varchar(25) NOT NULL,
  `artikal_prodaja` int(50) NOT NULL,
  `artikal_slika` longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikli`
--

INSERT INTO `artikli` (`artikal_id`, `artikal_naziv`, `artikal_podkat`, `artikal_opis`, `artikal_cena`, `artikal_garancija`, `artikal_prodaja`, `artikal_slika`) VALUES
(1, 'Comtrade Gamer Intel i5 4460', '1', 'Proizvodjac: ComTrade\r\nNamena: Gaming\r\nTip procesora: Intel Core i5\r\nKapacitet hard diska: 1 TB\r\nGraficka kartica: Nvidia\r\nMemorija: 8 GB\r\nOptika: DVD RW\r\nOperativni sistem: Nema\r\nHard Disk2: Nema', 83999, '12', 50, 'upload_image/racunar1.jpg'),
(2, 'Comtrade Gamer AMD FX-6100', '1', 'Proizvodjac: ComTrade\r\nNamena: Gaming\r\nKapacitet hard diska: 1 TB\r\nGraficka kartica: Nvidia\r\nMemorija: 8 GB\r\nOptika: DVD RW\r\nOperativni sistem: Nema', 58999, '12', 50, 'upload_image/racunar2.jpg'),
(3, 'Comtrade Gamer Intel i7 4790K', '1', 'ProizvoÄ‘aÄ	ComTrade\r\nNamena	Gaming\r\nTip procesora: Intel Core i7\r\nKapacitet hard diska: 6 TB\r\nGraficka kartica: Nvidia\r\nMemorija: 16 GB\r\nOptika: DVD RW\r\nOperativni sistem: Nema\r\nHard Disk2: 480GB SSD', 249599, '12', 50, 'upload_image/racunar3.jpg'),
(4, 'Comtrade Business Intel G1610', '1', 'Proizvodjac: ComTrade\r\nNamena: Business\r\nKapacitet hard diska: 320 GB\r\nGraficka kartica: Integrisana\r\nMemorija: 4 GB\r\nOptika: DVD RW\r\nOperativni sistem: Nema', 22799, '12', 50, 'upload_image/racunar4.jpg'),
(5, 'Apple iMac 27" (mf885z/a) Intel i5', '1', 'Proizvodjac: Apple\r\nOptika: Nema\r\nTip procesora: Intel Core i5\r\nKapacitet hard diska: 1 TB\r\nGraficka kartica: AMD\r\nMemorija: 8 GB\r\nNamena: Business\r\nOperativni sistem: Mac OS', 304899, '24', 50, 'upload_image/racunar5.jpg'),
(6, 'Apple iMac 21.5" (me087cr/a) Intel i5', '1', 'Proizvodjac: Apple\r\nOptika: Nema\r\nTip procesora: Intel Core i5\r\nKapacitet hard diska: 1 TB\r\nGraficka kartica: Nvidia\r\nMemorija: 8 GB\r\nNamena: Business\r\nOperativni sistem: Mac OS', 224799, '24', 50, 'upload_image/racunar6.jpg'),
(7, 'HP Envy 23-n011 Beats Edition AIO (G9B68EA)', '1', 'Proizvodjac: HP\r\nNamena: Bussines\r\nProcesor: Intel Core i5\r\nHard Disk1: 1 TB\r\nGrafika: Integrisana\r\nMemorija: 8 GB\r\nOptika: DVD RW\r\nOperativni sistem: Windows 8', 138999, '24', 50, 'upload_image/racunar7.jpg'),
(8, 'Lenovo IdeaCentre C460 AIO (57324337)', '1', 'Proizvodjac: Lenovo\r\nIntel G3220T Dual Core 2.6GHz 4GB 500GB Intel HD Graphics DVD-RW', 59990, '24', 50, 'upload_image/racunar8.jpg'),
(9, 'Dell U2415 UltraSharpr IPS Monitor', '2', 'Proizvodjac: Dell\r\nDijagonala: 24"\r\nRezolucija: 1920 x 1200\r\nTip panela: IPS\r\nHDMI: Da\r\nDisplay Port: Da\r\nDVI: Ne\r\nVreme odziva: 6ms\r\nZvucnici: Ne', 43499, '12', 50, 'upload_image/monitor1.jpg'),
(10, 'LG 27MU67 IPS Monitor', '2', 'Proizvodjac: LG\r\nDijagonala: 27"\r\nRezolucija: 3840 x 2160\r\nTip panela: IPS\r\nHDMI: Da\r\nDisplay Port: Da\r\nDVI: Ne\r\nVreme odziva: 5ms\r\nZvucnici: Ne', 55399, '24', 50, 'upload_image/monitor2.jpg'),
(11, 'LG 22MP67VQ IPS Monitor', '2', 'Proizvodjac: LG\r\nDijagonala: 21.5"\r\nRezolucija: 1920 x 1080\r\nTip panela: IPS\r\nHDMI: Da\r\nDisplay Port: Ne\r\nDVI: Da\r\nVreme odziva: 5ms\r\nZvucnici: Ne', 19999, '12', 50, 'upload_image/monitor3.jpg'),
(12, 'HP 22CW (J7Y66AA) Pavilion IPS Monitor', '2', 'Proizvodjac: HP\r\nDijagonala: 21.5"\r\nRezolucija: 1920 x 1080\r\nTip panela: IPS\r\nHDMI: Da\r\nDisplay Port: Ne\r\nDVI: Ne\r\nVreme odziva: 7ms\r\nZvucnici: Ne', 18399, '12', 50, 'upload_image/monitor4.jpg'),
(13, 'LG 22MP65VQ P IPS Monitor', '2', 'Proizvodjac: LG\r\nDijagonala: 21.5"\r\nRezolucija: 1920 x 1080\r\nTip panela: IPS\r\nHDMI: Da\r\nDisplay Port: Ne\r\nDVI: Ne\r\nVreme odziva: 5ms\r\nZvucnici: Ne', 18599, '12', 50, 'upload_image/monitor5.jpg'),
(14, 'Dell P2416D Professional IPS Monitor', '2', 'Proizvodjac: Dell\r\nDijagonala: 23.8"\r\nRezolucija: 2560 x 1440\r\nTip panela: IPS\r\nHDMI: Da\r\nDisplay Port: Da\r\nDVI: Ne\r\nVreme odziva: 6ms\r\nZvucnici: Ne', 39999, '12', 50, 'upload_image/monitor6.jpg'),
(15, 'LG 27MB85Z B IPS Monitor', '2', 'Proizvodjac: LG\r\nDijagonala: 27"\r\nRezolucija: 2560 x 1440\r\nTip panela: IPS\r\nHDMI: Da\r\nDisplay Port: Da\r\nDVI: Da\r\nVreme odziva: 5ms\r\nZvucnici: Ne', 109999, '12', 50, 'upload_image/monitor7.jpg'),
(16, 'Samsung LS24D590PSX PLS Monitor', '2', 'Proizvodjac: Samsung\r\nDijagonala: 23.6"\r\nRezolucija: 1920 x 1080\r\nTip panela: PLS\r\nHDMI: Da\r\nDisplay Port: Ne\r\nDVI: Ne\r\nVreme odziva: 5ms\r\nZvucnici: Ne', 24999, '12', 50, 'upload_image/monitor8.jpg'),
(17, 'Gigabyte GA P85 D3 1150', '3', 'Proizvodjac: Gigabyte\r\nSocket: Intel 1150', 9699, '12', 50, 'upload_image/maticna1.jpg'),
(18, 'Asus Z97 P Intel 1150', '3', 'Proizvodjac: Asus\r\nSocket: Intel 1150', 15999, '12', 50, 'upload_image/maticna2.jpg'),
(19, 'Asus Z170 Pro Gaming 1151', '3', 'Proizvodjac: Asus\r\nSocket: Intel 1151', 24699, '12', 50, 'upload_image/maticna3.jpg'),
(20, 'Asus Maximus VIII Hero 1151', '3', 'Proizvodjac: Asus\r\nSocket: Intel 1151', 32999, '12', 50, 'upload_image/maticna4.jpg'),
(21, 'Gigabyte GA 990FXA UD3', '3', 'Proizvodjac: Gigabyte\r\nSocket: AMD AM3+', 13590, '12', 50, 'upload_image/maticna5.jpg'),
(22, 'MSI MB H97 PC Mate', '3', 'Proizvodjac: MSI\r\nSocket: Intel 1150', 12499, '12', 50, 'upload_image/maticna6.jpg'),
(23, 'Asus B85 Pro Gamer', '3', 'Proizvodjac: Asus\r\nSocket: Intel 1150', 16999, '12', 50, 'upload_image/maticna7.jpg'),
(24, 'AsRock H61 DGS', '3', 'Proizvodjac: ASRock\r\nSocket: Intel 1155', 6399, '12', 50, 'upload_image/maticna8.jpg'),
(25, 'Intel i7 6700K', '4', 'Proizvodjac: Intel\r\nTip procesora: Intel Core i7\r\nSocket: Intel 1151 4GHz', 54599, '12', 50, 'upload_image/procesor1.jpg'),
(26, 'Intel i5 6600K', '4', 'Proizvodjac: Intel\r\nTip procesora: Intel Core i5\r\nSocket: Intel 1151 3.5GHz', 37499, '12', 50, 'upload_image/procesor2.jpg'),
(27, 'AMD Athlon X4 840', '4', 'Proizvodjac: AMD\r\nTip procesora: AMD Athlon\r\nSocket: AMD FM2+ 3.1GHz ', 8799, '12', 50, 'upload_image/procesor3.jpg'),
(28, 'AMD A10 7870K', '4', 'Proizvodjac: AMD\r\nTip procesora: AMD A serija\r\nSocket: AMD FM2+ 3.9GHz', 20599, '12', 50, 'upload_image/procesor4.jpg'),
(29, 'AMD FX 6100', '4', 'Proizvodjac: AMD\r\nTip procesora: AMD FX serija\r\nSocket: AMD AM3+ 3.3GHz', 11999, '12', 50, 'upload_image/procesor5.jpg'),
(30, 'AMD A8 7600', '4', 'Proizvodjac: AMD\r\nTip procesora: AMD A serija\r\nSocket: AMD FM2+ 3.1GHz ', 12699, '12', 50, 'upload_image/procesor6.jpg'),
(31, 'Intel Pentium G3258', '4', 'Proizvodjac: Intel\r\nTip procesora: Intel Pentium\r\nSocket: Intel 1150 3.2GHz', 10499, '12', 50, 'upload_image/procesor7.jpg'),
(32, 'Intel Core i5 4460', '4', 'Proizvodjac: Intel\r\nTip procesora: Intel Core i5\r\nSocket: Intel 1150 3.2GHz', 25999, '12', 50, 'upload_image/procesor8.jpg'),
(33, 'Cooler Hydro H55 CW 9060010 WW', '5', 'Proizvodjac: Corsair', 11899, '12', 50, 'upload_image/kuler1.png'),
(34, 'Cooler Hydro H110 CW 9060014 WW', '5', 'Proizvodjac: Corsair', 21299, '12', 50, 'upload_image/kuler2.png'),
(35, 'Cooler Master Seidon 120V RL S12V 24PK R2', '5', 'Proizvodjac: Cooler Master', 5999, '12', 50, 'upload_image/kuler3.png'),
(36, 'Cooler Master Hyper 212 Evo RR 212E 16PK R1', '5', 'Proizvodjac: Cooler Master', 5199, '12', 50, 'upload_image/kuler4.png'),
(37, 'Cooler Master Sickle Flow 120mm', '5', 'Proizvodjac: Cooler Master', 1299, '12', 50, 'upload_image/kuler5.png'),
(38, 'Cooler Master Sickle Flow 120mm', '5', 'Proizvodjac: Cooler Master', 1199, '12', 50, 'upload_image/kuler6.png'),
(39, 'Cooler Master HyperT4 RR T4 18PK R1', '5', 'Proizvodjac: Cooler Master', 2999, '12', 50, 'upload_image/kuler7.png'),
(40, 'Cooler MasterSilencio FP 120 3 pin', '5', 'Proizvodjac: Cooler Master', 1399, '12', 50, 'upload_image/kuler8.png'),
(41, 'Corsair 8GB DDR3 Vengeance', '6', 'Proizvodjac: Corsair\r\nKapacitet: 8GB\r\nTip memorije: DDR3 1600MHz', 10999, '12', 50, 'upload_image/memorija1.jpg'),
(42, 'Kingston Kit 2x4GB DDR3 HyperX', '6', 'Proizvodjac: Kingston\r\nKapacitet: 8GB\r\nTip memorije: DDR3 1866MHz', 10199, '12', 50, 'upload_image/memorija2.jpg'),
(43, 'Kingston Kit 2x8GB DDR3 HyperX Fury', '6', 'Proizvodjac: Kingston\r\nKapacitet: 16GB\r\nTip memorije: DDR3 1866MHz', 13999, '12', 50, 'upload_image/memorija3.jpg'),
(44, 'Kingston 8GB DDR3 HyperX Savage', '6', 'Proizvodjac: Kingston\r\nKapacitet: 8GB\r\nTip memorije: DDR4 2400MHz', 7999, '12', 50, 'upload_image/memorija4.jpg'),
(45, 'Kingston 8GB DDR4 Hyperx Fury', '6', 'Proizvodjac: Kingston\r\nKapacitet: 8GB\r\nTip memorije: DDR4 2133MHz', 9999, '12', 50, 'upload_image/memorija5.jpg'),
(46, 'Corsair 4GB DDR3 Vengeance', '6', 'Proizvodjac: Corsair\r\nKapacitet: 4GB\r\nTip memorije: DDR3 1600MHz', 5899, '12', 50, 'upload_image/memorija6.jpg'),
(47, 'Kingston 4GB DDR3 HyperX Fury', '6', 'Proizvodjac: Kingston\r\nKapacitet: 4GB\r\nTip memorije: DDR3 1866MHz', 4599, '12', 50, 'upload_image/memorija7.jpg'),
(48, 'Kingston 4GB DDR3 HyperX Fury', '6', 'Proizvodjac: Kingston\r\nKapacitet: 4GB\r\nTip memorije: DDR3 1866MHz', 4599, '12', 50, 'upload_image/memorija8.jpg'),
(49, 'Seagate Barracuda 1TB', '7', 'Proizvodjac: Seagate\r\nKapacitet: 1TB\r\nFormat: 3.5"', 8499, '12', 50, 'upload_image/hard disk1.jpg'),
(50, 'WD Blue 1TB WD10JPVX', '7', 'Proizvodjac: Western Digital\r\nKapacitet: 1TB\r\nFormat: 2.5"', 8999, '12', 50, 'upload_image/hard disk2.jpg'),
(51, 'Toshiba 3TB DT01ACA300', '7', 'Proizvodjac: Toshiba\r\nKapacitet: 3TB\r\nFormat: 3.5"', 15999, '12', 50, 'upload_image/hard disk3.jpg'),
(52, 'WD Green 1TB WD10EZRX', '7', 'Proizvodjac: Western Digital\r\nKapacitet: 1TB\r\nFormat: 3.5"', 8290, '12', 50, 'upload_image/hard disk4.jpg'),
(53, 'Toshiba 2TB DT01ACA200', '7', 'Proizvodjac: Toshiba\r\nKapacitet: 2TB\r\nFormat: 3.5"', 11499, '12', 50, 'upload_image/hard disk5.jpg'),
(54, 'WD Blue 1TB WD10EZEX', '7', 'Proizvodjac: Western Digital\r\nKapacitet: 1TB\r\nFormat: 3.5"', 8199, '12', 50, 'upload_image/hard disk6.jpg'),
(55, 'Toshiba 500GB TSH MQ01ABF050', '7', 'Proizvodjac: Toshiba\r\nKapacitet: 500GB\r\nFormat: 2.5"', 6890, '12', 50, 'upload_image/hard disk7.jpg'),
(56, 'Seagate Momentus 500GB ST500LT012', '7', 'Proizvodjac: Seagate\r\nKapacitet: 500GB\r\nFormat: 2.5"', 6890, '12', 50, 'upload_image/hard disk8.jpg'),
(57, 'SAMSUNG 850 EVO 250GB MZ 75E250B', '8', 'Proizvodjac: Samsung\r\nKapacitet: 256GB\r\nTip: 2.5"', 16699, '12', 50, 'upload_image/SSD1.jpg'),
(58, 'SAMSUNG 650 128GB MZ 650120Z', '8', 'Proizvodjac: Samsung\r\nKapacitet: 120GB\r\nTip: 2.5"', 7999, '12', 50, 'upload_image/SSD2.jpg'),
(59, 'Kingston HyperX Fury 240GB', '8', 'Proizvodjac: Kingston\r\nKapacitet: 240GB\r\nTip: 2.5"', 15999, '12', 50, 'upload_image/SSD3.jpg'),
(60, 'Samsung 850 PRO 512GB MZ 7KE512BW', '8', 'Proizvodjac: Samsung\r\nKapacitet: 512GB\r\nTip: 2.5"', 37499, '12', 50, 'upload_image/SSD4.jpg'),
(61, 'Samsung 850 PRO 128GB MZ 7KE128BW', '8', 'Proizvodjac: Samsung\r\nKapacitet: 128GB\r\nTip: 2.5"', 13899, '12', 50, 'upload_image/SSD5.jpg'),
(62, 'Samsung 850 EVO 1TB MZ 75E1T0B', '8', 'Proizvodjac: Samsung\r\nKapacitet: 1TB\r\nTip: 2.5"', 60299, '12', 50, 'upload_image/SSD6.jpg'),
(63, 'Corsair Force GS 360GB CSSD F360GBGS BK', '8', 'Proizvodjac: Corsair\r\nKapacitet: 360GB\r\nTip: 2.5"', 40199, '12', 50, 'upload_image/SSD7.jpg'),
(64, 'Kingston SSDNow V300 120GB SV300S37A', '8', 'Proizvodjac: Kingston\r\nKapacitet: 120GB\r\nTip: 2.5"', 8990, '12', 50, 'upload_image/SSD8.jpg'),
(65, 'Gigabyte Radeon 2GB GDDR5', '9', 'Proizvodjac: Gigabyte\r\nCipset: AMD Radeon\r\nTip memorije: DDR5\r\nMemorija: 2GB', 23999, '12', 50, 'upload_image/graficka1.png'),
(66, 'Asus Nvidia GTX980 Strix 4GB DDR5', '9', 'Proizvodjac: Asus\r\nCipset: NVidia Geforce\r\nTip memorije: DDR5\r\nMemorija: 4GB', 85499, '12', 50, 'upload_image/graficka2.png'),
(67, 'MSI Nvidia GT720 2GB DDR3', '9', 'Proizvodjac: MSI\r\nCipset: NVidia Geforce\r\nTip memorije: DDR3\r\nMemorija: 2GB', 8299, '12', 50, 'upload_image/graficka3.png'),
(68, 'Asus Radeon R7 370 Strix 4GB DDR5', '9', 'Proizvodjac: Asus\r\nCipset: AMD Radeon\r\nTip memorije: DDR5\r\nMemorija: 4GB', 29499, '12', 50, 'upload_image/graficka4.png'),
(69, 'Asus Radeon R9 270 OC 2GB DDR5', '9', 'Proizvodjac: Gigabyte\r\nCipset: AMD Radeon\r\nTip memorije: DDR5\r\nMemorija: 2GB', 25999, '12', 50, 'upload_image/graficka5.png'),
(70, 'Gigabyte Nvidia GTX980 4GB DDR5', '9', 'Proizvodjac: Gigabyte\r\nCipset: NVidia Geforce\r\nTip memorije: DDR5\r\nMemorija: 4GB', 84999, '12', 50, 'upload_image/graficka6.png'),
(71, 'MSI Nvidia GTX960 Gaming 2GB DDR5', '9', 'Proizvodjac: MSI\r\nCipset: NVidia Geforce\r\nTip memorije: DDR5\r\nMemorija: 2GB', 31999, '12', 50, 'upload_image/graficka7.png'),
(72, 'MSI Nvidia GTX750 OC 2GB DDR5', '9', 'Proizvodjac: MSI\r\nCipset: NVidia Geforce\r\nTip memorije: DDR5\r\nMemorija: 2GB', 19999, '12', 50, 'upload_image/graficka8.png'),
(73, 'Antec Basic Series VP 700P', '10', 'Proizvodjac: Antec\r\nNapajanje: 500W', 9999, '12', 50, 'upload_image/napajanje1.jpg'),
(74, 'Coolermaster B500 v2 RS 500 ACABB1 EU', '10', 'Proizvodjac: Cooler Master\r\nNapajanje: 500W', 7299, '12', 50, 'upload_image/napajanje2.jpg'),
(75, 'Antec Basic Series VP 500PC', '10', 'Proizvodjac: Antec\r\nNapajanje: 500W', 6899, '12', 50, 'upload_image/napajanje3.jpg'),
(76, 'Antec True Power TP 650C', '10', 'Proizvodjac: Antec\r\nNapajanje: 650W', 11999, '12', 50, 'upload_image/napajanje4.jpg'),
(77, 'Antec Basic Series VP 500PC', '10', 'Proizvodjac: Antec\r\nNapajanje 500W', 6899, '12', 50, 'upload_image/napajanje5.jpg'),
(78, 'Coolermaster V850 RS850 AFBAG1 EU', '10', 'Proizvodjac: Cooler Master\r\nNapajanje: 850W', 22099, '12', 50, 'upload_image/napajanje6.jpg'),
(79, 'Coolermaster B700 v2 RS 700 ACABB1 EU', '10', 'Proizvodjac: Cooler Master\r\nNapajanje: 700W', 10599, '12', 50, 'upload_image/napajanje7.jpg'),
(80, 'Coolermaster G650M RS650 AMAAB1 EU', '10', 'Proizvodjac: Cooler Master\r\nNapajanje: 650W', 12399, '12', 50, 'upload_image/napajanje8.jpg'),
(81, 'LC Power PRO 925B', '11', 'Proizvodjac: LC Power 600W', 7999, '12', 50, 'upload_image/kuciste1.jpg'),
(82, 'Antec Lanboy', '11', 'Proizvodjac: Antec', 19999, '12', 50, 'upload_image/kuciste2.jpg'),
(83, 'Cooler Master CM 690 III CMS 693 KWN1', '11', 'Proizvodjac: Cooler Master', 11590, '12', 50, 'upload_image/kuciste3.jpg'),
(84, 'Cooler Master Silencio 452 SIL 452 KKN1', '11', 'Proizvodjac: Cooler Master', 9499, '12', 50, 'upload_image/kuciste4.jpg'),
(85, 'Cooler Master Elite 130 RC 130 KKN1', '11', 'Proizvodjac: Cooler Master', 5999, '12', 50, 'upload_image/kuciste5.jpg'),
(86, 'Cooler Master Storm Enforcer SGC 1000 KWN1', '11', 'Proizvodjac: Cooler Master', 10199, '12', 50, 'upload_image/kuciste6.jpg'),
(87, 'LC Power PRO 910B', '11', 'Proizvodjac: LC Power 420W', 6499, '12', 50, 'upload_image/kuciste7.jpg'),
(88, 'Cooler Master Cosmos II RC 1200 KKN1', '11', 'Proizvodjac: Cooler Master', 39990, '12', 50, 'upload_image/kuciste8.jpg'),
(89, 'WD 2TB My Passport Ultra', '12', 'Proizvodjac: Western Digital\r\nKapacitet: 1TB\r\nFormat: 2.5"\r\nBoja: Plava', 16299, '12', 50, 'upload_image/HDDE1.jpg'),
(90, 'WD 1TB My Passport Ultra', '12', 'Proizvodjac: Western Digital\r\nKapacitet: 1TB\r\nFormat: 2.5"\r\nBoja: Plava', 10699, '12', 50, 'upload_image/HDDE2.jpg'),
(91, 'WD 1TB My Passport Ultra', '12', 'Proizvodjac: Western Digital\r\nKapacitet: 1TB\r\nFormat: 2.5"\r\nBoja: Bela', 10699, '12', 50, 'upload_image/HDDE3.jpg'),
(92, 'WD 1TB My Passport Ultra', '12', 'Proizvodjac: Western Digital\r\nKapacitet: 1TB\r\nFormat: 2.5"\r\nBoja: Crna', 10699, '12', 50, 'upload_image/HDDE4.jpg'),
(93, 'Toshiba 2TB Canvio Connec II', '12', 'Proizvodjac: Toshiba\r\nKapacitet: 2TB\r\nFormat: 2.5"\r\nBoja: Bela', 14499, '12', 50, 'upload_image/HDDE5.jpg'),
(94, 'Toshiba 2TB Canvio Connec II', '12', 'Proizvodjac: Toshiba\r\nKapacitet: 2TB\r\nFormat: 2.5"\r\nBoja: Crna', 14499, '12', 50, 'upload_image/HDDE6.jpg'),
(95, 'Toshiba 2TB Canvio Connec II', '12', 'Proizvodjac: Toshiba\r\nKapacitet: 2TB\r\nFormat: 2.5"\r\nBoja: Zlatna', 14499, '12', 50, 'upload_image/HDDE7.jpg'),
(96, 'Toshiba 1TB Canvio Connec II', '12', 'Proizvodjac: Toshiba\r\nKapacitet: 1TB\r\nFormat: 2.5"\r\nBoja: Crvena', 9699, '12', 50, 'upload_image/HDDE8.jpg'),
(97, 'Samsung G318 Galaxy Trend 2 Lite', '13', 'Proizvodjac: Samsung\r\nVeliÄina ekrana: 4.0"\r\nSmart: Da\r\nInterna memorija: 4 GB\r\nOperativni sistem: Android\r\nProcesor: Dual Core\r\nRAM: 512 MB\r\nRezolucija glavne kamere: 3 MP\r\nRezolucija ekrana: 480 x 800\r\nRezolucija prednje kamere: < 1 MP\r\nRezolucija video snimka glavne kamere: WVGA\r\nDual SIM: Da\r\nBoja: Crna', 10499, '12', 50, 'upload_image/samsung1.png'),
(98, 'Samsung G925 Galaxy S6 EDGE', '13', 'Proizvodjac: Samsung\r\nVeliÄina ekrana: 5.1"\r\nSmart: Da\r\nInterna memorija: 32 GB\r\nOperativni sistem: Android\r\nProcesor: Octa Core\r\nRAM: 3 GB\r\nRezolucija glavne kamere: 16 MP\r\nRezolucija ekrana: 2560 x 1440\r\nRezolucija prednje kamere: 5 MP\r\nRezolucija video snimka glavne kamere: 4K\r\nDual SIM: Ne\r\nBoja: Crna', 114990, '12', 50, 'upload_image/samsung2.png'),
(99, 'Samsung G313 Galaxy Trend 2', '13', 'Proizvodjac: Samsung\r\nVeliÄina ekrana: 4.0"\r\nSmart: Da\r\nInterna memorija: 4 GB\r\nOperativni sistem: Android\r\nProcesor: Single Core\r\nRAM: 512 MB\r\nRezolucija glavne kamere: 3.2 MP\r\nRezolucija ekrana: 480 x 800\r\nRezolucija prednje kamere: Nema\r\nRezolucija video snimka glavne kamere: <720p\r\nDual SIM: Ne\r\nBoja: Bela', 13990, '12', 50, 'upload_image/samsung3.png'),
(100, 'Samsung G360 Galaxy Core Prime', '13', 'Proizvodjac: Samsung\r\nVeliÄina ekrana: 4.5"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 1 GB\r\nRezolucija glavne kamere: 5 MP\r\nRezolucija ekrana: 480 x 800\r\nRezolucija prednje kamere: 2 MP\r\nRezolucija video snimka glavne kamere: 720p\r\nDual SIM: Ne\r\nBoja: Bela', 20999, '12', 50, 'upload_image/samsung4.png'),
(101, 'Samsung G925 Galaxy S6', '13', 'Proizvodjac: Samsung\r\nVeliÄina ekrana: 5.1"\r\nSmart: Da\r\nInterna memorija: 32 GB\r\nOperativni sistem: Android\r\nProcesor: Octa Core\r\nRAM: 3 GB\r\nRezolucija glavne kamere: 16 MP\r\nRezolucija ekrana: 2560 x 1440\r\nRezolucija prednje kamere: 5 MP\r\nRezolucija video snimka glavne kamere: 4K\r\nDual SIM: Ne\r\nBoja: Crna', 96999, '12', 50, 'upload_image/samsung5.png'),
(102, 'Samsung N910c Galaxy Note 4', '13', 'Proizvodjac: Samsung\r\nVeliÄina ekrana: 5.7"\r\nSmart: Da\r\nInterna memorija: 32 GB\r\nOperativni sistem: Android\r\nProcesor: Octa Core\r\nRAM: 3 GB\r\nRezolucija glavne kamere: 16 MP\r\nRezolucija ekrana: 2560 x 1440\r\nRezolucija prednje kamere: 3.2 MP\r\nRezolucija video snimka glavne kamere: 4K\r\nDual SIM: Ne\r\nBoja: Crna', 99990, '12', 50, 'upload_image/samsung6.png'),
(103, 'Samsung N915 Galaxy Note 4 Edge', '13', 'Proizvodjac: Samsung\r\nVeliÄina ekrana: 5.6"\r\nSmart: Da\r\nInterna memorija: 32 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 3 GB\r\nRezolucija glavne kamere: 16 MP\r\nRezolucija ekrana: 2560 x 1440\r\nRezolucija prednje kamere: 3.2 MP\r\nRezolucija video snimka glavne kamere: 4K\r\nDual SIM: Ne\r\nBoja: Bela', 104999, '12', 50, 'upload_image/samsung7.png'),
(104, 'Samsung N9005 Galaxy Note 3', '13', 'Proizvodjac: Samsung\r\nVeliÄina ekrana: 5.7"\r\nSmart: Da\r\nInterna memorija: 32 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 3 GB\r\nRezolucija glavne kamere: 13 MP\r\nRezolucija ekrana: 1920 x 1080\r\nRezolucija prednje kamere: 2 MP\r\nRezolucija video snimka glavne kamere: 4K\r\nDual SIM: Ne\r\nBoja: Crna', 54999, '12', 50, 'upload_image/samsung8.png'),
(105, 'LG D855 G3 Crni', '14', 'Proizvodjac: LG\r\nVeliÄina ekrana: 5.5"\r\nSmart: Da\r\nInterna memorija: 32 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 3 GB\r\nRezolucija glavne kamere: 13 MP\r\nRezolucija ekrana: 2560 x 1440\r\nRezolucija prednje kamere: 2 MP\r\nRezolucija video snimka glavne kamere: 4K\r\nDual SIM: Ne\r\nBoja: Crna', 71999, '12', 50, 'upload_image/LG1.jpg'),
(106, 'LG D855 G3 Beli', '14', 'Proizvodjac: LG\r\nVeliÄina ekrana: 5.5"\r\nSmart: Da\r\nInterna memorija: 16 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 3 GB\r\nRezolucija glavne kamere: 13 MP\r\nRezolucija ekrana: 2560 x 1440\r\nRezolucija prednje kamere: 2 MP\r\nRezolucija video snimka glavne kamere: 4K\r\nDual SIM: Ne\r\nBoja: Bela', 65999, '12', 50, 'upload_image/LG2.jpg'),
(107, 'LG Joy H220 LTE Plavi', '14', 'Proizvodjac: LG\r\nVeliÄina ekrana: 4.0"\r\nSmart: Da\r\nInterna memorija: 4 GB\r\nOperativni sistem: Android\r\nProcesor: Dual Core\r\nRAM: 512 MB\r\nRezolucija glavne kamere: 5 MP\r\nRezolucija ekrana: 480 x 800\r\nRezolucija prednje kamere: < 1 MP\r\nRezolucija video snimka glavne kamere: <720p\r\nDual SIM: Ne\r\nBoja: Plava', 12999, '12', 50, 'upload_image/LG3.jpg'),
(108, 'LG Spirit H440N LTE Sivi', '14', 'Proizvodjac: LG\r\nVeliÄina ekrana: 4.7"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 1 GB\r\nRezolucija glavne kamere: 8 MP\r\nRezolucija ekrana: 720 x 1280\r\nRezolucija prednje kamere: 1 MP\r\nRezolucija video snimka glavne kamere: 1080p\r\nDual SIM: Ne\r\nBoja: Zlatna', 24999, '12', 50, 'upload_image/LG4.jpg'),
(109, 'LG D373 L80 Beli', '14', 'Proizvodjac: LG\r\nVeliÄina ekrana: 5.0"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Dual Core\r\nRAM: 1 GB\r\nRezolucija glavne kamere: 8 MP\r\nRezolucija ekrana: 480 x 800\r\nRezolucija prednje kamere: 1.3 MP\r\nRezolucija video snimka glavne kamere: <720p\r\nDual SIM: Ne\r\nBoja: Bela', 23999, '12', 50, 'upload_image/LG5.jpg'),
(110, 'LG D331 L Bello Beli', '14', 'Proizvodjac: LG\r\nVeliÄina ekrana: 5.0"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 1 GB\r\nRezolucija glavne kamere: 8 MP\r\nRezolucija ekrana: 480 x 854\r\nRezolucija prednje kamere: 1 MP\r\nRezolucija video snimka glavne kamere: 1080p\r\nDual SIM: Ne\r\nBoja: Bela', 23999, '12', 50, 'upload_image/LG6.jpg'),
(111, 'LG D290N L Fino Beli', '14', 'Proizvodjac: LG\r\nVeliÄina ekrana: 4.5"\r\nSmart: Da\r\nInterna memorija: 4 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 1 GB\r\nRezolucija glavne kamere: 8 MP\r\nRezolucija ekrana: 480 x 800\r\nRezolucija prednje kamere: < 1 MP\r\nRezolucija video snimka glavne kamere: <720p\r\nDual SIM: Ne\r\nBoja: Bela', 18999, '12', 50, 'upload_image/LG7.jpg'),
(112, 'LG D620R G2 Beli', '14', 'Proizvodjac: LG\r\nVeliÄina ekrana: 4.7"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 1 GB\r\nRezolucija glavne kamere: 8 MP\r\nRezolucija ekrana: 540 x 960\r\nRezolucija prednje kamere: 1.3 MP\r\nRezolucija video snimka glavne kamere: 1080p\r\nDual SIM: Ne\r\nBoja: Bela', 19999, '12', 50, 'upload_image/LG8.jpg'),
(113, 'Lenovo A5000 Crni', '15', 'Proizvodjac: Lenovo\r\nVeliÄina ekrana: 5.0"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 1 GB\r\nRezolucija glavne kamere: 8 MP\r\nRezolucija ekrana: 720 x 1280\r\nRezolucija prednje kamere: 2 MP\r\nRezolucija video snimka glavne kamere: 1080p\r\nDual SIM: Da\r\nBoja: Crna', 19999, '12', 50, 'upload_image/lenovo1.jpg'),
(114, 'Lenovo A536 Crni', '15', 'Proizvodjac: Lenovo\r\nVeliÄina ekrana: 5.0"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 1 GB\r\nRezolucija glavne kamere: 5 MP\r\nRezolucija ekrana: 480 x 854\r\nRezolucija prednje kamere: 2 MP\r\nRezolucija video snimka glavne kamere: 720p\r\nDual SIM: Ne\r\nBoja: Crna', 15999, '12', 50, 'upload_image/lenovo2.jpg'),
(115, 'Lenovo S60 Beli', '15', 'Proizvodjac: Lenovo', 29999, '12', 50, 'upload_image/lenovo3.jpg'),
(116, 'Lenovo A536 Crni', '15', 'Proizvodjac: Lenovo\r\nVeliÄina ekrana: 5.0"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 1 GB\r\nRezolucija glavne kamere: 5 MP\r\nRezolucija ekrana: 480 x 854\r\nRezolucija prednje kamere: 2 MP\r\nRezolucija video snimka glavne kamere: 720p\r\nDual SIM: Da\r\nBoja: Bela', 16490, '12', 50, 'upload_image/lenovo4.jpg'),
(117, 'Lenovo A369', '15', 'Proizvodjac: Lenovo\r\nVeliÄina ekrana: 4.0"\r\nSmart: Da\r\nInterna memorija: 4 GB\r\nOperativni sistem: Android\r\nProcesor: Dual Core\r\nRAM: 512 MB\r\nRezolucija glavne kamere: 2 MP\r\nRezolucija ekrana: 480 x 800\r\nRezolucija prednje kamere: Nema\r\nRezolucija video snimka glavne kamere: <720p\r\nDual SIM: Ne\r\nBoja: Crna', 8990, '12', 50, 'upload_image/lenovo5.jpg'),
(118, 'Lenovo K900', '15', 'Proizvodjac: Lenovo\r\nVeliÄina ekrana: 5.5"\r\nSmart: Da\r\nInterna memorija: 32 GB\r\nOperativni sistem: Android\r\nProcesor: Dual Core\r\nRAM: 2 GB\r\nRezolucija glavne kamere: 13 MP\r\nRezolucija ekrana: 1920 x 1080\r\nRezolucija prednje kamere: 2 MP\r\nRezolucija video snimka glavne kamere: 1080p\r\nDual SIM: Ne\r\nBoja: Crna', 59990, '12', 50, 'upload_image/lenovo6.jpg'),
(119, 'Lenovo S60 Sivi', '15', 'Proizvodjac: Lenovo\r\nVeliÄina ekrana: 5.0"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 2 GB\r\nRezolucija glavne kamere: 13 MP\r\nRezolucija ekrana: 720 x 1280\r\nRezolucija prednje kamere: 5 MP\r\nRezolucija video snimka glavne kamere: 1080p\r\nDual SIM: Da\r\nBoja: Siva', 27999, '12', 50, 'upload_image/lenovo7.jpg'),
(120, 'Lenovo S60 Beli', '15', 'Proizvodjac: Lenovo\r\nVeliÄina ekrana: 5.0"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 2 GB\r\nRezolucija glavne kamere: 13 MP\r\nRezolucija ekrana: 720 x 1280\r\nRezolucija prednje kamere: 5 MP\r\nRezolucija video snimka glavne kamere: 1080p\r\nDual SIM: Da\r\nBoja: Bela', 27999, '12', 50, 'upload_image/lenovo8.jpg'),
(121, 'HTC Desire 626G Plavi', '16', 'Proizvodjac: HTC\r\nVeliÄina ekrana: 5.0"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Octa Core\r\nRAM: 1 GB\r\nRezolucija glavne kamere: 13 MP\r\nRezolucija ekrana: 720 x 1280\r\nRezolucija prednje kamere: 5 MP\r\nRezolucija video snimka glavne kamere: 1080p\r\nDual SIM: Da\r\nBoja: Plava', 36999, '12', 50, 'upload_image/HTC1.jpg'),
(122, 'HTC Desire 620G Sivi', '16', 'Proizvodjac: HTC\r\nVeliÄina ekrana: 5.0"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Octa Core\r\nRAM: 1 GB\r\nRezolucija glavne kamere: 8 MP\r\nRezolucija ekrana: 720 x 1280\r\nRezolucija prednje kamere: 5 MP\r\nRezolucija video snimka glavne kamere: 1080p\r\nDual SIM: Da\r\nBoja: Crna', 32999, '12', 50, 'upload_image/HTC2.jpg'),
(123, 'HTC Desire 526 Crni', '16', 'Proizvodjac: HTC\r\nVeliÄina ekrana: 4.7"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Octa Core\r\nRAM: 1 GB\r\nRezolucija glavne kamere: 8 MP\r\nRezolucija ekrana: 540 x 960\r\nRezolucija prednje kamere: 2 MP\r\nRezolucija video snimka glavne kamere: 1080p\r\nDual SIM: Ne\r\nBoja: Crna', 25999, '12', 50, 'upload_image/HTC3.jpg'),
(124, 'HTC Desire 510 Sivi', '16', 'Proizvodjac: HTC\r\nVeliÄina ekrana: 4.7"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 1 GB\r\nRezolucija glavne kamere: 5 MP\r\nRezolucija ekrana: 480 x 854\r\nRezolucija prednje kamere: < 1 MP\r\nRezolucija video snimka glavne kamere: 1080p\r\nDual SIM: Ne\r\nBoja: Siva', 19999, '12', 50, 'upload_image/HTC4.jpg'),
(125, 'HTC Desire EYE Crveni', '16', 'Proizvodjac: HTC\r\nVeliÄina ekrana: 5.2"\r\nSmart: Da\r\nInterna memorija: 16 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 2 GB\r\nRezolucija glavne kamere: 13 MP\r\nRezolucija ekrana: 1920 x 1080\r\nRezolucija prednje kamere: 13 MP\r\nRezolucija video snimka glavne kamere: 1080p\r\nDual SIM: Ne\r\nBoja: Crvena', 74999, '12', 50, 'upload_image/HTC5.jpg'),
(126, 'HTC Desire 510 Beli', '16', 'Proizvodjac: HTC\r\nVeliÄina ekrana: 4.7"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 1 GB\r\nRezolucija glavne kamere: 5 MP\r\nRezolucija ekrana: 480 x 854\r\nRezolucija prednje kamere: < 1 MP\r\nRezolucija video snimka glavne kamere: 1080p\r\nDual SIM: Ne\r\nBoja: Bela', 19999, '12', 50, 'upload_image/HTC6.jpg'),
(127, 'HTC Desire 610 Plavi', '16', 'Proizvodjac: HTC\r\nVeliÄina ekrana: 4.7"\r\nSmart: Da\r\nInterna memorija: 8 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 1 GB\r\nRezolucija glavne kamere: 8 MP\r\nRezolucija ekrana: 540 x 960\r\nRezolucija prednje kamere: 1.3 MP\r\nRezolucija video snimka glavne kamere: 1080p\r\nDual SIM: Ne\r\nBoja: Plava', 29999, '12', 50, 'upload_image/HTC7.jpg'),
(128, 'HTC One M8 Sivi', '16', 'Proizvodjac: HTC\r\nVeliÄina ekrana: 5.0"\r\nSmart: Da\r\nInterna memorija: 16 GB\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRAM: 2 GB\r\nRezolucija glavne kamere: 4 MP\r\nRezolucija ekrana: 1920 x 1080\r\nRezolucija prednje kamere: 5 MP\r\nRezolucija video snimka glavne kamere: 1080p\r\nDual SIM: Ne\r\nBoja: Siva', 64999, '12', 50, 'upload_image/HTC8.jpg'),
(129, 'Panasonic KX TG2511FXM Srebrni', '17', 'Proizvodjac: Panasonic', 3290, '12', 50, 'upload_image/panasonic1.jpg'),
(130, 'Panasonic KX TGB210FXW Beli', '17', 'Proizvodjac: Panasonic', 2999, '12', 50, 'upload_image/panasonic2.jpg'),
(131, 'Panasonic KX TG2511FXT Crni', '17', 'Proizvodjac: Panasonic', 3290, '12', 50, 'upload_image/panasonic3.jpg'),
(132, 'Panasonic KX TS500FXB Stoni Crni', '17', 'Proizvodjac: Panasonic', 1199, '12', 50, 'upload_image/panasonic4.jpg'),
(133, 'Panasonic KX TG1711FXW Beli', '17', 'Proizvodjac: Panasonic', 2999, '12', 50, 'upload_image/panasonic5.jpg'),
(134, 'Panasonic KX TS500FXB Stoni Beli', '17', 'Proizvodjac: Panasonic', 1199, '12', 50, 'upload_image/panasonic6.jpg'),
(135, 'Panasonic KX TGB210FXB Crni', '17', 'Proizvodjac: Panasonic', 3199, '12', 50, 'upload_image/panasonic7.jpg'),
(136, 'Panasonic KX TGC210FXW Beli', '17', 'Proizvodjac: Panasonic', 3990, '12', 50, 'upload_image/panasonic8.jpg'),
(137, 'Canon PowerShot A1300 Crni', '21', 'Proizvodjac: Canon', 6999, '12', 50, 'upload_image/fotoaparat1.jpg'),
(138, 'Canon PowerShot A2600 Crni', '21', 'Proizvodjac: Canon', 7499, '12', 50, 'upload_image/fotoaparat2.jpg'),
(139, 'Sony Alpha 58 SLT A58K Crni', '21', 'Proizvodjac: Sony', 56999, '12', 50, 'upload_image/fotoaparat3.jpg'),
(140, 'Canon EOS 750D Crni', '21', 'Proizvodjac: Canon\r\nTip: DSLR\r\nRezolucija slike: 24.2 Mpix\r\nRezolucija video snimka	Full HD: (1080p)\r\nBoja: Crna', 116999, '12', 50, 'upload_image/fotoaparat4.jpg'),
(141, 'Canon EOS 5DS Body Crni', '21', 'Proizvodjac: Canon\r\nTip: DSLR\r\nRezolucija slike: 50.6 Mpix\r\nRezolucija video snimka	Full HD: (1080p)\r\nBoja: Crna', 522999, '12', 50, 'upload_image/fotoaparat5.jpg'),
(142, 'Canon EOS750D Crni ', '21', 'Proizvodjac: Canon\r\nTip: DSLR\r\nRezolucija slike: 24.2 Mpix\r\nRezolucija video snimka	Full HD: (1080p)\r\nBoja: Crna', 152999, '12', 50, 'upload_image/fotoaparat6.jpg'),
(143, 'Sony DSC WX500W Beli', '21', 'Proizvodjac: Sony\r\nTip: Kompaktni\r\nRezolucija slike: 18.2 Mpix\r\nRezolucija video snimka	Full HD: (1080p)\r\nBoja: Bela', 46999, '12', 50, 'upload_image/fotoaparat7.jpg'),
(144, 'Canon EOS 1200D EFS Crni', '21', 'Proizvodjac: Canon\r\nTip: DSLR\r\nRezolucija slike: 18 Mpix\r\nRezolucija video snimka	Full HD: (1080p)\r\nBoja: Crna', 75999, '12', 50, 'upload_image/fotoaparat8.jpg'),
(145, 'Canon Legria HF G25 AD8063B004AA', '20', 'Proizvodjac: Canon', 124999, '12', 50, 'upload_image/kamera1.jpeg'),
(146, 'Canon XA 20 AD8453B003AA', '20', 'Proizvodjac: Canon', 258999, '12', 50, 'upload_image/kamera2.jpeg'),
(147, 'Canon XA 10 AD8453B003AA', '20', 'Proizvodjac: Canon', 179499, '12', 50, 'upload_image/kamera3.jpeg'),
(148, 'Sony HDR PJ320', '20', 'Proizvodjac: Sony', 34990, '12', 50, 'upload_image/kamera4.jpeg'),
(149, 'Sony HDR CX240EB', '20', 'Proizvodjac: Sony', 25999, '12', 50, 'upload_image/kamera5.jpeg'),
(150, 'Sony HDR CX330EB', '20', 'Proizvodjac: Sony', 33990, '12', 50, 'upload_image/kamera6.jpeg'),
(151, 'Praktica DVC 5 FHD Crvena', '20', 'Proizvodjac: Praktica', 16990, '12', 50, 'upload_image/kamera7.jpeg'),
(152, 'Praktica DVC 10 FHD', '20', 'Proizvodjac: Praktica', 24499, '12', 50, 'upload_image/kamera8.jpeg'),
(153, 'Toshiba Satellite L50 B 2DT ', '18', 'Proizvodjac: Toshiba\r\nDijagonala ekrana: 15.6"\r\nProcesor: Intel Pentium\r\nModel procesora: N3540 do 2.66GHz Quad Core\r\nMemorija: 4 GB\r\nHard Disk1: 500 GB\r\nModel VGA: HD Bay Trail\r\nGrafika: Integrisana\r\nHard Disk2: Nema\r\nRezolucija ekrana: 1366 x 768\r\nOptika: Nema\r\nBaterija: LI 4-cell\r\nNamena: Home\r\nOperativni sistem: Nema\r\nBoja: Bela', 36999, '24', 50, 'upload_image/laptop1.jpg'),
(154, 'Asus N551JB CN083D ', '18', 'Proizvodjac: Asus\r\nDijagonala ekrana: 15.6"\r\nProcesor: Intel Core i7\r\nModel procesora: 4720HQ do 3.60GHz Quad Core\r\nMemorija: 8 GB\r\nHard Disk1: 1 TB\r\nModel VGA: NVIDIA GeForce 940M\r\nGrafika: Nvidia\r\nHard Disk2: 24 GB SSHD\r\nRezolucija ekrana: 1920 x 1080\r\nOptika: DVD RW\r\nBaterija: LI 6-cell\r\nNamena: Gaming\r\nOperativni sistem: Nema\r\nBoja: Srebrna', 125999, '24', 50, 'upload_image/laptop2.jpg'),
(155, 'Toshiba KIRA 107', '18', 'Proizvodjac: Toshiba\r\nDijagonala ekrana: 13.3"\r\nProcesor: Intel Core i7\r\nModel procesora: 5500U do 3.0GHz\r\nMemorija: 8 GB\r\nHard Disk1: 256 GB SSD\r\nModel VGA: Intel HD 5500\r\nGrafika: Integrisana\r\nHard Disk2: Nema\r\nRezolucija ekrana: 1920 x 1080\r\nOptika: Nema\r\nBaterija: LI 4-cell\r\nNamena: Bussines\r\nOperativni sistem: Windows 8.1\r\nBoja: Srebrna', 207999, '24', 50, 'upload_image/laptop3.jpg'),
(156, 'Toshiba KIRA 10D', '18', 'Proizvodjac: Toshiba\r\nDijagonala ekrana: 13.3"\r\nProcesor: Intel Core i7\r\nModel procesora: 5500U do 3.0GHz\r\nMemorija: 8 GB\r\nHard Disk1: 256 GB SSD\r\nModel VGA: Intel HD 5500\r\nGrafika: Integrisana\r\nHard Disk2: Nema\r\nRezolucija ekrana: 1920 x 1080\r\nOptika: Nema\r\nBaterija: LI 4-cell\r\nNamena: Bussines\r\nOperativni sistem: Windows 8.1\r\nBoja: Srebrna', 152999, '24', 50, 'upload_image/laptop4.jpg'),
(157, 'Toshiba Satellite L50 B 1VR', '18', 'Proizvodjac: Toshiba\r\nDijagonala ekrana: 15.6"\r\nProcesor: Intel Pentium\r\nModel procesora: N3540 do 2.66GHz Quad Core\r\nMemorija: 4 GB\r\nHard Disk1: 1 TB\r\nModel VGA: HD Bay Trail\r\nGrafika: Integrisana\r\nHard Disk2: Nema\r\nRezolucija ekrana: 1366 x 768\r\nOptika: DVD RW\r\nBaterija: LI 4-cell\r\nNamena: Home\r\nOperativni sistem: Nema\r\nBoja: Crna', 39999, '24', 50, 'upload_image/laptop5.jpg'),
(158, 'Lenovo IdeaPad G50 30', '18', 'Proizvodjac: Lenovo\r\nDijagonala ekrana: 15.6"\r\nProcesor: Intel Pentium\r\nModel procesora: N3540 do 2.66GHz Quad Core\r\nMemorija: 4 GB\r\nHard Disk1: 500 GB\r\nModel VGA: Intel HD\r\nGrafika: Integrisana\r\nHard Disk2: Nema\r\nRezolucija ekrana: 1366 x 768\r\nOptika: DVD RW\r\nBaterija: LI 4-cell\r\nNamena: Home\r\nOperativni sistem: Nema\r\nBoja: Crna', 35899, '24', 50, 'upload_image/laptop6.jpg'),
(159, 'Asus G551JW CN275H', '18', 'Proizvodjac: Asus\r\nDijagonala ekrana: 15.6"\r\nProcesor: Intel Core i7\r\nModel procesora: 4720HQ do 3.60GHz Quad Core\r\nMemorija: 12 GB\r\nHard Disk1: 1 TB\r\nModel VGA: NVIDIA GeForce GTX960M\r\nGrafika: Nvidia\r\nHard Disk2: Nema\r\nRezolucija ekrana: 1920 x 1080\r\nOptika: DVD RW\r\nBaterija: LI 6-cell\r\nNamena: Gaming\r\nOperativni sistem: Windows 8.1\r\nBoja: Crna', 155999, '24', 50, 'upload_image/laptop7.jpg'),
(160, 'Acer Switch SW5 012 184G', '18', 'Proizvodjac: Acer\r\nDijagonala ekrana: 10.1"\r\nProcesor: Intel Atom\r\nModel procesora: Z3735F do 1.83GHz Quad Core\r\nMemorija: 2 GB\r\nHard Disk1: 32 GB eMMC\r\nModel VGA: Intel HD\r\nGrafika: Integrisana\r\nHard Disk2: Nema\r\nRezolucija ekrana: 1280 x 800\r\nOptika: Nema\r\nBaterija: LI 2-cell\r\nNamena: Multimedia\r\nOperativni sistem: Windows 8.1\r\nBoja: Srebrna', 39999, '24', 50, 'upload_image/laptop8.jpg'),
(161, 'Samsung Galaxy Tab E Beli', '19', 'Proizvodjac: Samsung\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRezolucija ekrana: 1280 x 800\r\nDijagonala ekrana: 9.6"\r\nRAM memorija: 1.5 GB\r\nInterna memorija: 8 GB\r\nSim slot: Ne\r\nGPS: Da\r\nBoja: Bela', 25999, '12', 50, 'upload_image/tablet1.jpg'),
(162, 'Samsung Galaxy Tab E Crni', '19', 'Proizvodjac: Samsung\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRezolucija ekrana: 1280 x 800\r\nDijagonala ekrana: 9.6"\r\nRAM memorija: 1.5 GB\r\nInterna memorija: 8 GB\r\nSim slot: Ne\r\nGPS: Da\r\nBoja: Crna', 25999, '24', 50, 'upload_image/tablet2.jpg'),
(163, 'Tesla TTL7QL', '19', 'Proizvodjac: Tesla\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRezolucija ekrana: 1024 x 600\r\nDijagonala ekrana: 7"\r\nRAM memorija: 1 GB\r\nInterna memorija: 8 GB\r\nSim slot: Ne\r\nGPS: Ne\r\nBoja: Crna', 9999, '24', 50, 'upload_image/tablet3.jpg'),
(164, 'Toshiba Encore WT7 C 100', '19', 'Proizvodjac: Toshiba\r\nOperativni sistem: Windows\r\nProcesor: Quad Core\r\nRezolucija ekrana: 1024 x 600\r\nDijagonala ekrana: 7"\r\nRAM memorija: 1 GB\r\nInterna memorija: 16 GB\r\nSim slot: Ne\r\nGPS: Ne\r\nBoja: Bela', 12999, '24', 50, 'upload_image/tablet4.jpg'),
(165, 'Samsung Galaxy Tab 4 Crni', '19', 'Proizvodjac: Samsung\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRezolucija ekrana: 1280 x 800\r\nDijagonala ekrana: 10.1"\r\nRAM memorija: 1.5 GB\r\nInterna memorija: 16 GB\r\nSim slot: Ne\r\nGPS: Da\r\nBoja: Crna', 29999, '24', 50, 'upload_image/tablet5.jpg'),
(166, 'Samsung Galaxy Tab 4 Beli', '19', 'Proizvodjac: Samsung\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRezolucija ekrana: 1280 x 800\r\nDijagonala ekrana: 10.1"\r\nRAM memorija: 1.5 GB\r\nInterna memorija: 16 GB\r\nSim slot: Ne\r\nGPS: Da\r\nBoja: Bela', 29999, '12', 50, 'upload_image/tablet6.jpg'),
(167, 'Acer Iconia A3 A11', '19', 'Proizvodjac: Acer\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRezolucija ekrana: 1280 x 800\r\nDijagonala ekrana: 10.1"\r\nRAM memorija: 1 GB\r\nInterna memorija: 16 GB\r\nSim slot: Da\r\nGPS: Da\r\nBoja: Crna', 24999, '12', 50, 'upload_image/tablet7.jpg'),
(168, 'eStar Beauty HD', '19', 'Proizvodjac: eStar\r\nOperativni sistem: Android\r\nProcesor: Quad Core\r\nRezolucija ekrana: 1024 x 600\r\nDijagonala ekrana: 7"\r\nRAM memorija: 512 MB\r\nInterna memorija:8 GB\r\nSim slot: Ne\r\nGPS: Ne\r\nBoja: Crvena', 5999, '12', 50, 'upload_image/tablet8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategorija`
--

CREATE TABLE IF NOT EXISTS `kategorija` (
  `kategorija_id` int(4) NOT NULL,
  `kategorija_ime` varchar(30) NOT NULL,
  `kategorija_slika` longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategorija`
--

INSERT INTO `kategorija` (`kategorija_id`, `kategorija_ime`, `kategorija_slika`) VALUES
(1, 'Racunari i komponente', 'upload_image/racunarske komponente.jpg'),
(2, 'Mobilni i fiksni telefoni', 'upload_image/mobilni i fiksni telefoni.jpg'),
(3, 'Kamere i fotoaparati', 'upload_image/kamere i fotoaparati.jpg'),
(4, 'Laptopovi i tableti', 'upload_image/laptopovi i tableti.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE IF NOT EXISTS `korisnik` (
  `korisnik_id` int(4) NOT NULL,
  `korisnik_imeprezime` varchar(35) NOT NULL,
  `korisnik_username` varchar(25) NOT NULL,
  `korisnik_password` varchar(20) NOT NULL,
  `korisnik_pol` varchar(7) NOT NULL,
  `korisnik_email` varchar(35) NOT NULL,
  `korisnik_contact` varchar(12) NOT NULL,
  `korisnik_grad` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`korisnik_id`, `korisnik_imeprezime`, `korisnik_username`, `korisnik_password`, `korisnik_pol`, `korisnik_email`, `korisnik_contact`, `korisnik_grad`) VALUES
(1, 'Dusan Rajkovic', 'dule.tagoe', 'partizan94', 'Muski', 'dule.tagoe@gmail.com', '0643319866', 'Smederevo'),
(2, 'admin', 'admin', 'admin123', 'Musko', 'admin@gmail.com', '9859632561', 'Rajkot');

-- --------------------------------------------------------

--
-- Table structure for table `korpa`
--

CREATE TABLE IF NOT EXISTS `korpa` (
  `id` int(11) NOT NULL,
  `korisnik_id` int(11) NOT NULL,
  `korisnik_imeprezime` varchar(50) NOT NULL,
  `artikal_id` int(11) NOT NULL,
  `artikal_naziv` varchar(30) NOT NULL,
  `artikal_cena` double NOT NULL,
  `kolicina` int(11) NOT NULL,
  `datum` varchar(10) NOT NULL,
  `kategorija_id` int(11) NOT NULL,
  `uspesno` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `narudzbine`
--

CREATE TABLE IF NOT EXISTS `narudzbine` (
  `id` int(11) NOT NULL,
  `korisnik_id` int(11) NOT NULL,
  `korisnik_imeprezime` varchar(50) NOT NULL,
  `artikal_id` int(11) NOT NULL,
  `artikal_naziv` varchar(30) NOT NULL,
  `artikal_cena` double NOT NULL,
  `artikal_zaplacanje` double NOT NULL,
  `kolicina` int(11) NOT NULL,
  `datum_narudzbine` varchar(10) NOT NULL,
  `kategorija_id` int(11) NOT NULL,
  `uspesno` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `narudzbine`
--

INSERT INTO `narudzbine` (`id`, `korisnik_id`, `korisnik_imeprezime`, `artikal_id`, `artikal_naziv`, `artikal_cena`, `artikal_zaplacanje`, `kolicina`, `datum_narudzbine`, `kategorija_id`, `uspesno`) VALUES
(14, 1, 'Dusan Rajkovic', 2, 'Comtrade Business Intel G1840', 31999, 127996, 4, '20-08-2015', 1, 1),
(15, 1, 'Dusan Rajkovic', 3, 'Comtrade Gamer Pro Intel i3', 57490, 172470, 3, '20-08-2015', 1, 1),
(16, 1, 'Dusan Rajkovic', 4, 'Comtrade HOME Pro Intel G3220', 40999, 81998, 2, '20-08-2015', 1, 1),
(17, 1, 'Dusan Rajkovic', 1, 'Comtrade Gamer AMD 6100', 58999, 58999, 1, '21-08-2015', 1, 1),
(18, 1, 'Dusan Rajkovic', 2, 'Comtrade Business Intel G1840', 31999, 31999, 1, '21-08-2015', 1, 1),
(19, 1, 'Dusan Rajkovic', 3, 'Comtrade Gamer Pro Intel i3', 57490, 57490, 1, '21-08-2015', 1, 1),
(41, 1, 'Dusan Rajkovic', 2, 'Comtrade Business Intel G1840', 31999, 95997, 3, '27-08-2015', 1, 1),
(42, 1, 'Dusan Rajkovic', 3, 'Comtrade Gamer Pro Intel i3', 57490, 114980, 2, '27-08-2015', 1, 1),
(43, 1, 'Dusan Rajkovic', 4, 'Comtrade HOME Pro Intel G3220', 40999, 163996, 4, '27-08-2015', 1, 1),
(48, 3, 'Marija Jaksic', 2, 'Comtrade Business Intel G1840', 31999, 31999, 1, '28-08-2015', 1, 1),
(49, 1, 'Dusan Rajkovic', 3, 'Comtrade Gamer Pro Intel i3', 57490, 57490, 1, '28-08-2015', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `podkat`
--

CREATE TABLE IF NOT EXISTS `podkat` (
  `podkat_id` int(4) NOT NULL,
  `glavnakat_id` int(4) NOT NULL,
  `podkat_naziv` varchar(35) NOT NULL,
  `podkat_slika` longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `podkat`
--

INSERT INTO `podkat` (`podkat_id`, `glavnakat_id`, `podkat_naziv`, `podkat_slika`) VALUES
(1, 1, 'Racunari', 'upload_image/racunari.jpg'),
(2, 1, 'Monitori', 'upload_image/monitori.jpg'),
(3, 1, 'Maticne ploce', 'upload_image/maticne ploce.jpg'),
(4, 1, 'Procesori', 'upload_image/procesori.jpg'),
(5, 1, 'Kuleri', 'upload_image/kuleri.jpg'),
(6, 1, 'Memorije', 'upload_image/memorija.jpg'),
(7, 1, 'Hard diskovi', 'upload_image/hard diskovi.jpg'),
(8, 1, 'SSD diskovi', 'upload_image/SSD diskovi.jpg'),
(9, 1, 'Graficke kartice', 'upload_image/graficke kartice.jpg'),
(10, 1, 'Napajanja', 'upload_image/napajanje.jpg'),
(11, 1, 'Kucista', 'upload_image/kucista.jpg'),
(12, 1, 'Eksterni HDD', 'upload_image/hard diskovi eksterni.jpg'),
(13, 2, 'Samsung', 'upload_image/samsung.jpg'),
(14, 2, 'LG', 'upload_image/LG.jpg'),
(15, 2, 'Lenovo', 'upload_image/lenovo.jpg'),
(16, 2, 'HTC', 'upload_image/htc.jpg'),
(17, 2, 'Panasonic', 'upload_image/panasonic.jpg'),
(18, 4, 'Laptopovi', 'upload_image/laptop.jpg'),
(19, 4, 'Tableti', 'upload_image/tablet.jpg'),
(20, 3, 'Video kamere', 'upload_image/kamere.jpg'),
(21, 3, 'Fotoaparati', 'upload_image/fotoaparati.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reklamacije`
--

CREATE TABLE IF NOT EXISTS `reklamacije` (
  `reklamacija_id` int(4) NOT NULL,
  `reklamirao` varchar(50) NOT NULL,
  `proizvod_za_reklamaciju` varchar(50) NOT NULL,
  `status_reklamacije` varchar(50) NOT NULL,
  `opis_reklamacije` longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reklamacije`
--

INSERT INTO `reklamacije` (`reklamacija_id`, `reklamirao`, `proizvod_za_reklamaciju`, `status_reklamacije`, `opis_reklamacije`) VALUES
(7, 'Dusan Rajkovic', 'Comtrade Gamer Pro Intel i3', 'Prihvacena', 'Problem je u tome i tome, samo za testiranje, bla bla bla bla\r\nI takoooo\r\nTo sam nes\r\nLala Bala idi tamo'),
(9, 'Dusan Rajkovic', 'Comtrade HOME Pro Intel G3220', 'Pending', 'sasasasasa'),
(10, 'Dusan Rajkovic', 'Comtrade Business Intel G1840', 'Pending', 'sasasasa'),
(11, 'Dusan Rajkovic', 'Comtrade HOME Pro Intel G3220', 'Pending', 'dsdsdsdsds'),
(8, 'Dusan Rajkovic', 'Comtrade Business Intel G1840', 'Pending', 'Imam problem sa tim i tim i tako to i to'),
(12, 'Dusan Rajkovic', 'Comtrade Gamer Pro Intel i3', 'Prihvacena', 'fdfdfdfd'),
(13, 'Dusan Rajkovic', 'Comtrade HOME Pro Intel G3220', 'Pending', 'sadasfasdfkdhfsdjfhsdjkfhdsjkfsdhfjksdhjfashdjashdjkadfhdjkfhsdjfhsdjfsd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikli`
--
ALTER TABLE `artikli`
  ADD PRIMARY KEY (`artikal_id`);

--
-- Indexes for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD PRIMARY KEY (`kategorija_id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`korisnik_id`);

--
-- Indexes for table `korpa`
--
ALTER TABLE `korpa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `narudzbine`
--
ALTER TABLE `narudzbine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `podkat`
--
ALTER TABLE `podkat`
  ADD PRIMARY KEY (`podkat_id`);

--
-- Indexes for table `reklamacije`
--
ALTER TABLE `reklamacije`
  ADD PRIMARY KEY (`reklamacija_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikli`
--
ALTER TABLE `artikli`
  MODIFY `artikal_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `kategorija`
--
ALTER TABLE `kategorija`
  MODIFY `kategorija_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `korisnik_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `korpa`
--
ALTER TABLE `korpa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `narudzbine`
--
ALTER TABLE `narudzbine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `podkat`
--
ALTER TABLE `podkat`
  MODIFY `podkat_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `reklamacije`
--
ALTER TABLE `reklamacije`
  MODIFY `reklamacija_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
