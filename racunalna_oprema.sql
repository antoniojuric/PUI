-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2019 at 12:45 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `racunalna_oprema`
--

-- --------------------------------------------------------

--
-- Table structure for table `narudzba`
--

CREATE TABLE `narudzba` (
  `id` int(11) NOT NULL,
  `datum` text COLLATE utf8_croatian_ci NOT NULL,
  `ukupan_iznos` float NOT NULL,
  `id_osoba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `narudzba`
--

INSERT INTO `narudzba` (`id`, `datum`, `ukupan_iznos`, `id_osoba`) VALUES
(1, '23/10/2019', 6285, 2),
(2, '23/10/2019', 519, 3);

-- --------------------------------------------------------

--
-- Table structure for table `narudzba_proizvod`
--

CREATE TABLE `narudzba_proizvod` (
  `id` int(11) NOT NULL,
  `Naziv_proizvoda` varchar(200) COLLATE utf8_croatian_ci NOT NULL,
  `Cijena_proizvoda` float NOT NULL,
  `Kolicina_proizvoda` int(11) NOT NULL,
  `Ukupni_iznos_proizvoda` float NOT NULL,
  `id_narudzbe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `narudzba_proizvod`
--

INSERT INTO `narudzba_proizvod` (`id`, `Naziv_proizvoda`, `Cijena_proizvoda`, `Kolicina_proizvoda`, `Ukupni_iznos_proizvoda`, `id_narudzbe`) VALUES
(1, 'DELL XPS 15-9570 INTEL CORE I7-8750H 16GB 512GB SSD NVIDIA GEFORCE GTX 1050TI 4GB WIN 10 PRO (DXPS15-I7-16-512-56)', 4973, 1, 4973, 1),
(2, 'HP Z DISPLAY Z23I', 150, 1, 150, 1),
(3, 'HP DeskJet Ink Advantage 3785 AiO, p/s/c, USB, WiFi (T8W46C)', 100, 1, 100, 1),
(4, 'HP COMPAQ ELITE 8300 I5 3570S 4GB', 521, 2, 1042, 1),
(5, 'TIPKOVNICA FURY HORNET', 20, 1, 20, 1),
(6, 'HP PROBOOK 650 G1 I5 4300M 8GB 256GB SSD', 499, 1, 499, 2),
(7, 'TIPKOVNICA FURY HORNET', 20, 1, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `osoba`
--

CREATE TABLE `osoba` (
  `id` int(11) NOT NULL,
  `korisnicko_ime` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `lozinka` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `ime` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `prezime` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `adresa` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `telefon` varchar(20) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `osoba`
--

INSERT INTO `osoba` (`id`, `korisnicko_ime`, `lozinka`, `ime`, `prezime`, `adresa`, `email`, `telefon`) VALUES
(1, 'admin', 'admin', 'Antonio', 'Jurić', 'kralja zvonimira', 'tony.2610@hotmail.com', '063913667'),
(2, 'j.primorac', 'cico', 'Josipa', 'Primorac', 'Kralja Zvonimira, Capljina', 'josipaprimorac@gmail.com', '0951234568'),
(3, 'ivana', 'ivana', 'Ivana', 'Dodig', 'gabela, Capljina', 'ivana@gmail.com', '0038763123456');

-- --------------------------------------------------------

--
-- Table structure for table `proizvod`
--

CREATE TABLE `proizvod` (
  `id` int(11) NOT NULL,
  `Naziv` varchar(200) COLLATE utf8_croatian_ci NOT NULL,
  `Opis` varchar(1000) COLLATE utf8_croatian_ci NOT NULL,
  `Cijena` float NOT NULL,
  `Kolicina` int(11) NOT NULL,
  `Vrsta_proizvoda` varchar(50) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `proizvod`
--

INSERT INTO `proizvod` (`id`, `Naziv`, `Opis`, `Cijena`, `Kolicina`, `Vrsta_proizvoda`) VALUES
(1, 'HP COMPAQ ELITE 8300 I5 3570S 4GB', 'Model: HP  Compaq Elite 8300 | Procesor: i5 3570s | Ram Memorija: 4 GB DDR3 | Pohrana: 500GB HDD | Optika: DVD-RW | Kamera: Da ', 521, 100, 'Racunala'),
(2, 'HP 22-C0010NY, 21.5\" FULL HD LED TOUCH, INTEL J5005', 'HP All-in-One PC | Syrah215 1.0 | Pent J5005 (1.4GHz, 4 cores) | 4GB DDR4 2400 (1x4GB) | 500GB 7200 | Intel UHD Graphics 600 | LCD 21.5 FHD AG LED UWVA NZBD TOUCH 3-sided | No ODD | FreeDos 2.0 | Touch Jet Black | WARR 1/1/0 Medium', 967, 100, 'Racunala'),
(3, 'HP 22-C0007NY (5EM15EA) TOUCH', 'HP All-in-One PC | Syrah215 1.0 | Core i3-8130U (2.2GHz 2 cores) | 4GB DDR4 2400 (1x4GB) | 1TB 7200 | Intel HD Graphics 620 | LCD 21.5 FHD AG LED UWVA NZBD TOUCH 3-sided | No ODD | FreeDos 2.0 | Touch Jet Black | WARR 1/1/0 Medium', 1039, 100, 'Racunala'),
(4, 'HP 22-C0007NY, 21.5\" FHD, INTEL CORE I3-8130U TOUCH', 'HP All-in-One PC | Syrah215 1.0 | Core i3-8130U (2.2GHz 2 cores) | 4GB DDR4 2400 (1x4GB) | 1TB 7200 | Intel HD Graphics 620 | LCD 21.5 FHD AG LED UWVA NZBD TOUCH 3-sided | No ODD | FreeDos 2.0 | Touch Jet Black | WARR 1/1/0 Medium', 1122, 100, 'Racunala'),
(5, 'HP 24-F0028NY AIO PC', 'HP All-in-One PC | Syrah238 1.0 | Core i3-8130U (2.2GHz 2 cores) | 8GB DDR4 2400 (1x8GB) | 256 GB SSD NVMe | Intel HD Graphics 620 | LCD 23.8 FHD AG LED UWVA ZBD TOUCH 3-sided | No ODD | FreeDos 2.0 | Touch Jet Black | WARR 1/1/0 Medium', 1199, 100, 'Racunala'),
(6, 'HP 22-C0002NY, 21,5\" FULL HD I5-8250U', 'HP All-in-One PC | Syrah215 1.0 | Core i5-8250U (1.6GHz, quad core) | 8GB DDR4 2400 (1x8GB) | 1TB 7200 | Intel HD Graphics 620 | LCD 21.5 FHD AG LED UWVA NZBD 3-sided | dvdrw | Windows 10 Plus 64bit | Non-Touch Jet Black | WARR 1/1/0 Medium', 1499, 100, 'Racunala'),
(7, 'DELL OPTIPLEX 5250, 21.5\", INTEL I5-7500, WIN 10 PRO', 'Dell OptiPlex 5250 AIO, Core i5-7500, 8GB, 256GB SSD, 21.5\" FHD, Integrated, Basic Stand, DVD RW, Kb, Mouse, W10Pro, 3Yr', 1941, 100, 'Racunala'),
(8, 'HP PROBOOK 650 G1 I5 4300M 8GB 256GB SSD', 'Velicina ekrana: 15,6\" | Procesor: Intel Core i5 (4th Gen) 4300M / 2.6 GHz - 3.3 GHz |  Dual-Core Cache 3 MB | RAM: 8 GB 1600 MHz DDR3L SDRAM | Maximalna kolicina ram-a 16 GB | Hard disk: 256 SSD | Grafika: Intel HD Graphics 4600 | Kamera: Ne | Rezolucija : 1920x180 Full HD | Podrzava: Flash Memory SD Memory Card, SDHC Memory Card, SDXC Memory Card | Portovi: 5 x USB 3.0, | DisplayPort, VGA, Microphone input, Headphone output, LAN, Dock, Serial | Memorijske kartice : Da (SD Card, SDHC Card, SDXC Card) | Data Link Protocol Bluetooth 4.0, Ethernet, Fast Ethernet, Gigabit Ethernet, IEEE 802.11a, IEEE 802.11b, IEEE 802.11g, IEEE 802.11n', 499, 100, 'Laptopi'),
(10, 'LENOVO IDEAPAD 330-15 INTEL CELERON N4000 4GB 128GB SSD', 'Lenovo IP 330-15, 15.6\'\'HD(1366x768) AG, Celeron N4000 (4M, 2C up to 2.6GHz), 4GB DDR4,128GB SSD, Intel UHD Graphics 600 , DVD RW,HDMI, 2x USB 3.1, 1xUSB -C, CR, 2-Cell Battery (30 Wh), No OS, Purple, 2Y', 544, 100, 'Laptopi'),
(11, 'DELL ULTRABOOK E7440 I5 4300U 8GB 256GB SSD', 'Ekran: 14\" | Rezolucija: 1366 x 768 pixels | Procesor: Intel Core i5 (4th Gen) 4300U / 1.9 GHz | RAM: 8 GB DDR3L SDRAM 1600 MHz | Max podržani: 16 GB | HDD: 256 GB SSD | Grafika: Intel HD Graphics 4400 | Interfaces: 3 x USB 3., Headphone/microphone combo jack, dock, mini displayPort, HDMI | Operativni sistem: Nema | Kamera: Da | Drive Type: Nema optike', 556, 100, 'Laptopi'),
(12, 'HP ELITEBOOK FOLIO 1040 G2 I5 5200U 8GB 256GB SSD TOUCH', 'Procesor: Intel Core i5-5200U 2.2GHz | RAM: 8 GB DDR3 | Hard disk: 256GB SSD | Opti?ki ure?aj: Ne | Grafi?ka kartica: Intel® HD Graphics | Operativni sistem: Nema | Garancija: 12 mj. | Veli?ina ekrana: 14\" | Web kamera: Da | Recolucija: 1920x1080 Full HD | Ekran: osjetljiv na dodir', 737, 100, 'Laptopi'),
(13, 'ACER ASPIRE 3 A315 AMD RYZEN 2200U 4GB 256GB SSD (NX.GY9EX.046)', 'Acer A315-41-R5QX (NX.GY9EX.046). SPECIFIKACIJE: Display: 15,6” HD, Procesor: Ryzen 3 2200U, DC4 2,5/3.4 GHz, Grafika: AMD Radeon Vega 3, RAM memorija: 4 GB, Disk: 256 GB SSD, OS: Boot-up Linux.', 758, 100, 'Laptopi'),
(14, 'GAMING LAPTOP ASUS FX705DY-EW005 AMD RYZEN 5-3550H AMD RADEON RX560X 8GB 256GB 1TB OSVIJETLJENA TASTATURA', 'ASUS FX705DY-EW005; 17,3\"/1920x1080/IPS; AMD Ryzen 5-3550H (6M Cache); DDR4 2400 8GB (MemMax.32GB - MemSlot 2x); PCIE NVME 256G M.2 SSD+SATA 1TB 5400RPM 2.5 HDD; AMD RADEON RX560X; Osvijetljena tastatura; 24 mjeseca garancija', 1809, 20, 'Laptopi'),
(15, 'DELL XPS 15-9570 INTEL CORE I7-8750H 16GB 512GB SSD NVIDIA GEFORCE GTX 1050TI 4GB WIN 10 PRO (DXPS15-I7-16-512-56)', 'Veli?ina ekrana: 15,6\" | Procesor: Intel Core i7-8750H(9MB, up to 4.1GHz) | Rezolucija: FHD(1920x1080) AG | RAM: 16GB DDR4(2x8) | Hard disk: 512GB SSD | Grafi?ka kartica: NVIDIA GeForce GTX 1050Ti 4GB | Opti?ki ure?aj: nema | Operativni sistem: Win 10 Pro | Boja: Silver | Garancija: 36 mj', 4973, 20, 'Laptopi'),
(16, 'HP Z DISPLAY Z23I', 'Tehnicki podaci: | Omjer slike: Široki ekran (16: 9) |  Rezolucija: 1920 x 1080 | Nagib piksela: 0,265 mm | Osvjetljenje: 250 cd / mÂ² | Omjer kontrasta: 1000: 1 statika, 5000000: 1 dinamika |  Ugao gledanja: vodoravno 178 Â°, okomito 178 Â° |  Vrijeme odziva: 8 ms sivo do sivo |  Boja proizvoda: crna |  Ugao nagiba i zakretanja: nagib: -5 do + 30 Â°, zakretanje: 360 Â° | â€¢ TeÅ¾ina: 6,4kg (s postoljem) | â€¢ Snaga: ulazni napon: 100 do 240 VAC | â€¢ PotroÅ¡nja energije: 36 W (maksimalno), 28 W (tipiÄ�no), 0,5 W (u stanju pripravnosti) | â€¢ Raspon radne temperature: 5 do 35 Â° C | â€¢ Raspon radne vlage: 20 do 80% relativne vlage | â€¢ Energetska uÄ�inkovitost: kvalificirano za ENERGY STAR, zlato EPEAT | â€¢ OkoliÅ¡: pozadinsko osvjetljenje ekrana bez Å¾ive; Staklo za prikaz bez arsena; Niski halogen; TCO certificirani rub', 150, 100, 'Monitori'),
(17, 'HP DeskJet Ink Advantage 3785 AiO, p/s/c, USB, WiFi (T8W46C)', 'Dostupne funkcije Ispis, kopiranje, skeniranje, wifi Funkcija ispisa Brzina crno-bijelog ispisa: ISO: Do 8 str/min, skica: do 19 str/min Brzina ispisa u boji: ISO: do 5.5 str/min, skica: do 15 str/min Vrijeme ispisa prve stranice (spreman): Crno-bijelo: brze od 15 sec U boji: brÅ¾e od 18 sec', 100, 100, 'Printeri'),
(18, 'TIPKOVNICA FURY HORNET', 'TIPKOVNICA FURY HORNET, US Layout', 20, 100, 'Tipkovnice');

-- --------------------------------------------------------

--
-- Table structure for table `vrsta_proizvoda`
--

CREATE TABLE `vrsta_proizvoda` (
  `id` int(11) NOT NULL,
  `Vrsta` varchar(50) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `vrsta_proizvoda`
--

INSERT INTO `vrsta_proizvoda` (`id`, `Vrsta`) VALUES
(2, 'Laptopi'),
(3, 'Monitori'),
(5, 'Printeri'),
(1, 'Racunala'),
(4, 'Tipkovnice');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `narudzba`
--
ALTER TABLE `narudzba`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_osoba` (`id_osoba`);

--
-- Indexes for table `narudzba_proizvod`
--
ALTER TABLE `narudzba_proizvod`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_narudzbe` (`id_narudzbe`);

--
-- Indexes for table `osoba`
--
ALTER TABLE `osoba`
  ADD PRIMARY KEY (`id`),
  ADD KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- Indexes for table `proizvod`
--
ALTER TABLE `proizvod`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Vrsta_proizvoda` (`Vrsta_proizvoda`);

--
-- Indexes for table `vrsta_proizvoda`
--
ALTER TABLE `vrsta_proizvoda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Vrsta` (`Vrsta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `narudzba`
--
ALTER TABLE `narudzba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `narudzba_proizvod`
--
ALTER TABLE `narudzba_proizvod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `osoba`
--
ALTER TABLE `osoba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `proizvod`
--
ALTER TABLE `proizvod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `vrsta_proizvoda`
--
ALTER TABLE `vrsta_proizvoda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `narudzba`
--
ALTER TABLE `narudzba`
  ADD CONSTRAINT `narudzba_ibfk_1` FOREIGN KEY (`id_osoba`) REFERENCES `osoba` (`id`);

--
-- Constraints for table `narudzba_proizvod`
--
ALTER TABLE `narudzba_proizvod`
  ADD CONSTRAINT `narudzba_proizvod_ibfk_1` FOREIGN KEY (`id_narudzbe`) REFERENCES `narudzba` (`id`);

--
-- Constraints for table `proizvod`
--
ALTER TABLE `proizvod`
  ADD CONSTRAINT `Vrsta_proizvoda_Proizvod` FOREIGN KEY (`Vrsta_proizvoda`) REFERENCES `vrsta_proizvoda` (`Vrsta`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
