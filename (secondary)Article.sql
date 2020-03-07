-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Мар 07 2020 г., 14:34
-- Версия сервера: 10.2.22-MariaDB-log
-- Версия PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u34`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Article`
--

CREATE TABLE `Article` (
  `id` bigint(18) NOT NULL,
  `userId` bigint(18) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `creationTime` datetime NOT NULL,
  `hidden` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Article`
--

INSERT INTO `Article` (`id`, `userId`, `title`, `text`, `creationTime`, `hidden`) VALUES
(1, 2, 'a', 'b', '2020-03-07 16:56:13', b'0'),
(2, 3, 'qqq', 'sssss', '2020-03-07 17:03:54', b'0'),
(3, 2, 'sss', 'wdwefewfe', '2020-03-07 17:26:20', b'1'),
(4, 4, 'sss', 'dvsdvev', '2020-03-07 17:33:20', b'0');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Article_userId` (`userId`) USING BTREE;

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Article`
--
ALTER TABLE `Article`
  MODIFY `id` bigint(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
