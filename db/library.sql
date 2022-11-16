-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Лис 16 2022 р., 09:18
-- Версія сервера: 10.4.25-MariaDB
-- Версія PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `library`
--

-- --------------------------------------------------------

--
-- Структура таблиці `books`
--

CREATE TABLE `books` (
  `id_book` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `books`
--

INSERT INTO `books` (`id_book`, `title`, `author`, `year`) VALUES
(1, 'Fahrenheit 451', 'Ray Douglas Bradbury', '1953 year'),
(4, 'Animal Farm', 'George Orwell', '1945 year'),
(5, 'Dune', 'Frank Herbert', '1965 year'),
(6, 'Empire of Angels', 'Bernard Verber', '2020 year'),
(7, 'A Fatal Crossing', 'Tom Hindle', '2022 year'),
(8, 'The perfect stranger', 'Megan Miranda', '2021 year');

-- --------------------------------------------------------

--
-- Структура таблиці `genres`
--

CREATE TABLE `genres` (
  `id_genre` int(11) NOT NULL,
  `genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `genres`
--

INSERT INTO `genres` (`id_genre`, `genre`) VALUES
(3, 'Detective'),
(5, 'Fantasy'),
(7, 'Dystopia');

-- --------------------------------------------------------

--
-- Структура таблиці `issues`
--

CREATE TABLE `issues` (
  `id_issue` int(11) NOT NULL,
  `name_issue` varchar(255) NOT NULL,
  `genre_issue` varchar(255) NOT NULL,
  `book_issue` varchar(255) NOT NULL,
  `date_out` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL,
  `date_in` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `issues`
--

INSERT INTO `issues` (`id_issue`, `name_issue`, `genre_issue`, `book_issue`, `date_out`, `status`, `date_in`) VALUES
(30, 'Valerii Hmill', 'Dystopia', 'Fahrenheit 451', '0000-00-00 00:00:00', 1, '2022-11-07 10:39:34'),
(31, 'Oleg Voloshin', 'Fantasy', 'Empire of Angels', '0000-00-00 00:00:00', 1, '2022-11-07 10:39:24'),
(33, 'Vlad Mendresko', 'Fantasy', 'Dune', '0000-00-00 00:00:00', 0, NULL),
(34, 'Vlad Kibukevich', 'Detective', 'The perfect stranger', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `visitors`
--

INSERT INTO `visitors` (`id`, `name`, `email`, `phone`) VALUES
(20, 'Valerii Hmill', 'Valerii245@gmail.com', '0680536477'),
(22, 'Oleg Voloshin', 'OlegVol64@gmail.com', '0675893405'),
(25, 'Vlad Mendresko', 'Vlad1564@gmail.com', '0937618795'),
(26, 'Vlad Kibukevich', 'Wlad22352@gmail.com', '0503634329');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id_book`);

--
-- Індекси таблиці `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id_genre`);

--
-- Індекси таблиці `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id_issue`);

--
-- Індекси таблиці `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `books`
--
ALTER TABLE `books`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблиці `genres`
--
ALTER TABLE `genres`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `issues`
--
ALTER TABLE `issues`
  MODIFY `id_issue` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблиці `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
