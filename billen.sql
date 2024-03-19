-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 19. 11:24
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `billen`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mainbillen`
--

CREATE TABLE `mainbillen` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` int(10) NOT NULL,
  `arrivedate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `mainbillen`
--

INSERT INTO `mainbillen` (`id`, `name`, `price`, `arrivedate`) VALUES
(0, 'nagyon jó billentyűzet ', 12000, '2024-03-14'),
(1, 'nagyon jó billentyűzet 2 ', 120000, '2024-03-13'),
(2, 'nagyon jó billentyűzet 2 ', 120000, '2024-03-13');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `mainbillen`
--
ALTER TABLE `mainbillen`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
