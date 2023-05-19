-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2023. Máj 19. 07:45
-- Kiszolgáló verziója: 10.2.44-MariaDB
-- PHP verzió: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `downlink_iplogdb`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `LOG`
--

CREATE TABLE `LOG` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `type` enum('BANNED','SUCCESS') COLLATE utf8_bin DEFAULT 'SUCCESS',
  `country` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `isp` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `device` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `LOG`
--
ALTER TABLE `LOG`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `LOG`
--
ALTER TABLE `LOG`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
