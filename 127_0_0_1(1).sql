-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Nov 24. 11:15
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `pcosszerako_kif`
--
-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `videokartya`
--

CREATE TABLE `videokartya` (
  `videokartya_id` int(11) NOT NULL,
  `videokartya_marka` varchar(50) NOT NULL,
  `videokartya_nev` varchar(50) NOT NULL,
  `videokartya_belsomb` varchar(50) NOT NULL,
  `videokartya_directx` varchar(50) NOT NULL,
  `videokartya_displayport` varchar(50) NOT NULL,
  `videokartya_foglalat` varchar(50) NOT NULL,
  `videokartya_fogyasztas` int(11) NOT NULL,
  `videokartya_kep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `videokartya`
--

INSERT INTO `videokartya` (`videokartya_id`, `videokartya_marka`, `videokartya_nev`, `videokartya_belsomb`, `videokartya_directx`, `videokartya_displayport`, `videokartya_foglalat`, `videokartya_fogyasztas`, `videokartya_kep`) VALUES
(1, 'ASUS ', 'TUF-RTX3060-O12G-V2-GAMING', '12228 ', 'DirectX 12.2', '3 ', 'PCI-E 16x 4.0', 170, 1),
(2, 'Gainward', 'RTX 4090 Phantom 24GB GDDR6X ', '24576 ', 'DirectX 12.2', '1', 'PCI-E 16x 4.0 ', 450, 2),
(3, 'Zotac', 'GAMING GeForce RTX 3080 Ti Trinity OC', '12228 ', 'DirectX 12.2', '3 ', 'PCI-E 16x 4.0 ', 350, 3),
(4, 'Asus', 'GeForce GTX 1050 Ti Cerberus Advanced Edition 4GB ', '4096 ', 'DirectX 12', '1 ', 'PCI-E 16x 3.0', 300, 4),
(5, 'PowerColor ', 'Radeon RX 550 Red Dragon 4GB GDDR5 128-bit', '4096 ', 'DirectX 12', '3', 'PCI-E 16x 3.0 ', 250, 5);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `videokartya`
--
ALTER TABLE `videokartya`
  ADD PRIMARY KEY (`videokartya_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `videokartya`
--
ALTER TABLE `videokartya`
  MODIFY `videokartya_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
