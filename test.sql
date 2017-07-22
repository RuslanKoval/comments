-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 22 2017 г., 18:37
-- Версия сервера: 5.5.53
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `parent` int(10) DEFAULT NULL,
  `text` text NOT NULL,
  `created_at` int(10) NOT NULL,
  `updated_at` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `parent`, `text`, `created_at`, `updated_at`) VALUES
(614, 13, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A adipisci aliquam at blanditiis cumque dolores ducimus error eum excepturi id illum ipsa, iure laboriosam laborum magnam minus molestiae nihil nisi nostrum nulla, numquam officia omnis perferendis placeat quam quasi quia quidem repellat repudiandae similique suscipit, tenetur vitae voluptatem. Ea, voluptate.', 1500737664, NULL),
(615, 13, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A adipisci aliquam at blanditiis cumque dolores ducimus error eum excepturi id illum ipsa, iure laboriosam laborum magnam minus molestiae nihil nisi nostrum nulla, numquam officia omnis perferendis placeat quam quasi quia quidem repellat repudiandae similique suscipit, tenetur vitae voluptatem. Ea, voluptate.', 1500737687, NULL),
(616, 13, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A adipisci aliquam at blanditiis cumque dolores ducimus error eum excepturi id illum ipsa, iure laboriosam laborum magnam minus molestiae nihil nisi nostrum nulla, numquam officia omnis perferendis placeat quam quasi quia quidem repellat repudiandae similique suscipit, tenetur vitae voluptatem. Ea, voluptate.', 1500737691, NULL),
(617, 14, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A adipisci aliquam at blanditiis cumque dolores ducimus error eum excepturi id illum ipsa, iure laboriosam laborum magnam minus molestiae nihil nisi nostrum nulla, numquam officia omnis perferendis placeat quam quasi quia quidem repellat repudiandae similique suscipit, tenetur vitae voluptatem. Ea, voluptate.', 1500737703, NULL),
(618, 14, 614, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A adipisci aliquam at blanditiis cumque dolores ducimus error eum excepturi id illum ipsa, iure laboriosam laborum magnam minus molestiae nihil nisi nostrum nulla, numquam officia omnis perferendis placeat quam quasi quia quidem repellat repudiandae similique suscipit, tenetur vitae voluptatem. Ea, voluptate.', 1500737712, NULL),
(619, 14, 615, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A adipisci aliquam at blanditiis cumque dolores ducimus error eum excepturi id illum ipsa, iure laboriosam laborum magnam minus molestiae nihil nisi nostrum nulla, numquam officia omnis perferendis placeat quam quasi quia quidem repellat repudiandae similique suscipit, tenetur vitae voluptatem. Ea, voluptate.', 1500737718, NULL),
(620, 13, 618, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A adipisci aliquam at blanditiis cumque dolores ducimus error eum excepturi id illum ipsa, iure laboriosam laborum magnam minus molestiae nihil nisi nostrum nulla, numquam officia omnis perferendis placeat quam quasi quia quidem repellat repudiandae similique suscipit, tenetur vitae voluptatem. Ea, voluptate.', 1500737731, NULL),
(621, 14, 620, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A adipisci aliquam at blanditiis cumque dolores ducimus error eum excepturi id illum ipsa, iure laboriosam laborum magnam minus molestiae nihil nisi nostrum nulla, numquam officia omnis perferendis placeat quam quasi quia quidem repellat repudiandae similique suscipit, tenetur vitae voluptatem. Ea, voluptate.', 1500737742, NULL),
(622, 13, 621, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A adipisci aliquam at blanditiis cumque dolores ducimus error eum excepturi id illum ipsa, iure laboriosam laborum magnam minus molestiae nihil nisi nostrum nulla, numquam officia omnis perferendis placeat quam quasi quia quidem repellat repudiandae similique suscipit, tenetur vitae voluptatem. Ea, voluptate.', 1500737756, NULL),
(623, 13, 618, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A adipisci aliquam at blanditiis cumque dolores ducimus error eum excepturi id illum ipsa, iure laboriosam laborum magnam minus molestiae nihil nisi nostrum nulla, numquam officia omnis perferendis placeat quam quasi quia quidem repellat repudiandae similique suscipit, tenetur vitae voluptatem. Ea, voluptate.', 1500737771, NULL),
(624, 13, 621, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A adipisci aliquam at blanditiis cumque dolores ducimus error eum excepturi id illum ipsa, iure laboriosam laborum magnam minus molestiae nihil nisi nostrum nulla, numquam officia omnis perferendis placeat quam quasi quia quidem repellat repudiandae similique suscipit, tenetur vitae voluptatem. Ea, voluptate. 22', 1500737797, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `created_at`) VALUES
(11, 'test', 'b59c67bf196a4758191e42f76670ceba', 1486663177),
(12, 'test2', 'b59c67bf196a4758191e42f76670ceba', 1486663345),
(13, 'qqqq', '3bad6af0fa4b8b330d162e19938ee981', 1500732059),
(14, 'wwww', 'e34a8899ef6468b74f8a1048419ccc8b', 1500733243);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=625;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
