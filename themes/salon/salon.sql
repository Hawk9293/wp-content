-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 13 2019 г., 14:52
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `salon`
--

-- --------------------------------------------------------

--
-- Структура таблицы `abDescription`
--

CREATE TABLE `abDescription` (
  `id` int(11) NOT NULL,
  `header` varchar(255) DEFAULT NULL,
  `class` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `abInfoId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `abDescription`
--

INSERT INTO `abDescription` (`id`, `header`, `class`, `img`, `abInfoId`) VALUES
(1, NULL, 'abItem__img-imgSmall', 'before.jpg', 1),
(2, 'Косметология', 'imgLine imgLine-third', 'after.jpg', NULL),
(3, 'Макияж', 'imgLine imgLine-first', 'after.jpg', 2),
(4, 'Причёска', 'imgLine imgLine-second', 'after.jpg', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `abDescriptionInfo`
--

CREATE TABLE `abDescriptionInfo` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `header` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `abDescriptionInfo`
--

INSERT INTO `abDescriptionInfo` (`id`, `name`, `header`) VALUES
(1, 'маска быстрой красоты - формула «ДМК DANNE»', '2'),
(2, 'результат: увлажнение и лифтинг', '2'),
(3, 'Идеальные брови', '3'),
(4, 'Правильно подобранный тон', '3'),
(5, 'Выразительный взгляд', '3'),
(6, 'Подходящий цвет помады', '3'),
(7, 'Красивая укладка или причёска - завершение образа', '4'),
(8, 'результат: увлажнение и лифтинг', '4');

-- --------------------------------------------------------

--
-- Структура таблицы `abHeader`
--

CREATE TABLE `abHeader` (
  `header` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `abHeader`
--

INSERT INTO `abHeader` (`header`) VALUES
('РЕЗУЛЬТАТЫ&nbsp;<span>НАШИХ</span>&nbsp;РАБОТ');

-- --------------------------------------------------------

--
-- Структура таблицы `abInfo`
--

CREATE TABLE `abInfo` (
  `id` int(11) NOT NULL,
  `header` varchar(255) NOT NULL,
  `subHeader` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `abInfo`
--

INSERT INTO `abInfo` (`id`, `header`, `subHeader`) VALUES
(1, '«ДО»', 'ОБРАЩЕНИЯ В<br> НАШ САЛОН'),
(2, '«ПОСЛЕ»', 'ВЫПОЛНЕНИЯ УСЛУГ<br>НАШИМИ МАСТЕРАМИ');

-- --------------------------------------------------------

--
-- Структура таблицы `burgerMenu`
--

CREATE TABLE `burgerMenu` (
  `id` int(11) NOT NULL,
  `menu_items` varchar(255) NOT NULL,
  `menu_links` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `burgerMenu`
--

INSERT INTO `burgerMenu` (`id`, `menu_items`, `menu_links`) VALUES
(9, 'Главная', '.headerBlock'),
(10, 'О салоне', '#'),
(11, 'Услуги', '.heroBlock'),
(12, 'Галерея', '#'),
(13, 'Новости', '.newsBlock'),
(14, 'Отзывы', '.reviewsBlock'),
(15, 'Контакты', '.contactUsBlock');

-- --------------------------------------------------------

--
-- Структура таблицы `certificates_block_header`
--

CREATE TABLE `certificates_block_header` (
  `id` int(1) NOT NULL,
  `main_header` varchar(255) NOT NULL,
  `sub_header` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `certificates_block_header`
--

INSERT INTO `certificates_block_header` (`id`, `main_header`, `sub_header`) VALUES
(1, '<span> каждый </span> мастер <span> имеет </span> несколько сертификатов <span>по своей специальности..</span>', 'СЕРТИФИКАТЫ&nbsp;<span>МАСТЕРОВ</span>');

-- --------------------------------------------------------

--
-- Структура таблицы `certificates_block_img`
--

CREATE TABLE `certificates_block_img` (
  `id` int(10) NOT NULL,
  `img_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `certificates_block_img`
--

INSERT INTO `certificates_block_img` (`id`, `img_name`) VALUES
(1, 'sert.jpg'),
(2, 'sert.jpg'),
(3, 'sert.jpg'),
(4, 'sert.jpg'),
(5, 'sert.jpg'),
(6, 'sert.jpg'),
(7, 'sert.jpg'),
(8, 'sert.jpg'),
(9, 'sert.jpg'),
(10, 'sert.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `contact_us_block_header`
--

CREATE TABLE `contact_us_block_header` (
  `id` int(11) NOT NULL,
  `main_header` text NOT NULL,
  `sub_header` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contact_us_block_header`
--

INSERT INTO `contact_us_block_header` (`id`, `main_header`, `sub_header`) VALUES
(1, '<span>ЕСТЬ</span>&nbsp;ВОПРОС<span>?</span>', '<span> Оставьте нам </span>Заявку на консультацию<span> и Мы </span>Вам<span> обязательно </span>презвоним..<span>!</span>');

-- --------------------------------------------------------

--
-- Структура таблицы `copyright`
--

CREATE TABLE `copyright` (
  `id` int(11) NOT NULL,
  `copyright` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `copyright`
--

INSERT INTO `copyright` (`id`, `copyright`) VALUES
(1, 'karin.pl.ua © 2019-2025. Все права защищены. Автор - Hawk');

-- --------------------------------------------------------

--
-- Структура таблицы `footer_block_header`
--

CREATE TABLE `footer_block_header` (
  `id` int(10) NOT NULL,
  `main_header` longtext NOT NULL,
  `sub_header` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `footer_block_header`
--

INSERT INTO `footer_block_header` (`id`, `main_header`, `sub_header`) VALUES
(1, '<span>МЫ</span>&nbsp;НА&nbsp;КАРТЕ', '<span>г.Полтава,</span> вул. Небесної Сотні, 13');

-- --------------------------------------------------------

--
-- Структура таблицы `footer_block_info_header`
--

CREATE TABLE `footer_block_info_header` (
  `id` int(1) NOT NULL,
  `main_header` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `footer_block_info_header`
--

INSERT INTO `footer_block_info_header` (`id`, `main_header`) VALUES
(1, 'KAРIН'),
(2, 'ИНФОРМАЦИЯ'),
(3, 'МЫ В СОЦИАЛЬНЫХ СЕТЯХ'),
(4, 'НАШИ КОНТАКТЫ');

-- --------------------------------------------------------

--
-- Структура таблицы `logoHeader`
--

CREATE TABLE `logoHeader` (
  `id` int(11) NOT NULL,
  `main_header` varchar(20) NOT NULL,
  `main_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `logoHeader`
--

INSERT INTO `logoHeader` (`id`, `main_header`, `main_description`) VALUES
(1, 'Карин', 'Cалон красоты<span> в центре </span>Полтавы');

-- --------------------------------------------------------

--
-- Структура таблицы `logoSubHeader`
--

CREATE TABLE `logoSubHeader` (
  `id` int(11) NOT NULL,
  `main_sub_header` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `mainInfo`
--

CREATE TABLE `mainInfo` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `header` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mainInfo`
--

INSERT INTO `mainInfo` (`id`, `link`, `header`) VALUES
(1, '#', 'Атмосфера'),
(2, '#', 'Цены'),
(3, '#', 'Качество');

-- --------------------------------------------------------

--
-- Структура таблицы `mainSettings`
--

CREATE TABLE `mainSettings` (
  `id` int(11) NOT NULL,
  `body_bg` varchar(255) NOT NULL,
  `body_overlay` varchar(255) NOT NULL,
  `body_overlay_exist` tinyint(1) NOT NULL,
  `top_line` varchar(255) NOT NULL,
  `bottom_line` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mainSettings`
--

INSERT INTO `mainSettings` (`id`, `body_bg`, `body_overlay`, `body_overlay_exist`, `top_line`, `bottom_line`) VALUES
(1, 'header-back.png', 'header-back-layer.png', 1, 'bottom-line-brown.png', 'pattern.png');

-- --------------------------------------------------------

--
-- Структура таблицы `phoneNumbers`
--

CREATE TABLE `phoneNumbers` (
  `id` int(11) NOT NULL,
  `numbers` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phoneNumbers`
--

INSERT INTO `phoneNumbers` (`id`, `numbers`) VALUES
(1, '+38 (066) 731 5516'),
(2, '+38 (050) 303 7447');

-- --------------------------------------------------------

--
-- Структура таблицы `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `place` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `places`
--

INSERT INTO `places` (`id`, `place`) VALUES
(1, 'Полтава, вул. Небесної Сотні, 13');

-- --------------------------------------------------------

--
-- Структура таблицы `reviewsBlockHeader`
--

CREATE TABLE `reviewsBlockHeader` (
  `id` int(11) NOT NULL,
  `header` varchar(255) NOT NULL,
  `sub_header` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reviewsBlockHeader`
--

INSERT INTO `reviewsBlockHeader` (`id`, `header`, `sub_header`) VALUES
(1, 'ОТЗЫВЫ&nbsp;<span>КЛИЕНТОВ</span>', '<span>Мы</span> каждый день <span>пополняем</span> ряды <span>своих</span> довольных клиентов');

-- --------------------------------------------------------

--
-- Структура таблицы `reviewsBlockReview`
--

CREATE TABLE `reviewsBlockReview` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(3) NOT NULL,
  `review` varchar(500) NOT NULL,
  `img` varchar(255) NOT NULL,
  `reverse_class` varchar(255) NOT NULL,
  `reverse_class_exist` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reviewsBlockReview`
--

INSERT INTO `reviewsBlockReview` (`id`, `name`, `age`, `review`, `img`, `reverse_class`, `reverse_class_exist`) VALUES
(1, 'ВАЛЕНТИНА', 29, 'Хочу выразить благодарность мастерам салона! Являюсь вашим клиентом практиччески с открытия и ни разу не пожалела. Всегда довольна качеством ваших услуг и атмосферой в салоне. Спасибо, что вы есть). Успехов и процветания)!', 'rev.jpg', '-second', 0),
(2, 'АНАСТАСИЯ', 25, 'Прекрасный салон, очень удобное месторасположение, хорошее тёплое обслуживание. Уже 3 года хожу туда. В особенности нравиться мастер-парикмахер Алена Кучерук, с ее золотыми ручками, я всегда выхожу красоткой!) Салоном довольна очень! Спасибо!)', 'rev.jpg', '-second', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `category_thumbnail` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `category_thumbnail`, `category`, `description`) VALUES
(1, 'imgrow1left.jpg', 'Ногтевая эстетика ', 'Наиболее популярные виды массажа в нашем салоне, которые направлены на красоту тела. С помощью массажа можно добиться упругости кожи, уменьшить объёмы, избавиться от целлюлита. Обёртывания помогут привести кожу в тонус, подтянуть её, избавиться от лишней жидкости. Всем известно, что массаж нужно делать курсом и тогда между первым и последним посещением Вы обязательно увидите результат.'),
(2, 'imgrow1centr.jpg', 'Педикюр', 'В современном мире сложно обойтись без косметологических процедур, которые позволяют нашей коже быть здоровой и красивой. Чистки, уходы, пилинги, депиляция - давно известные процедуры без которых не обходится ни одна современная женщина. Но мы стремимся к большему и хотим Вам предложить новинки в области косметологии: карбокси терапию, щелочную эпиляуию и ряд других процедур. Косметологи с опытом более 9 лет помогут Вам избавиться от прыщей, уменьшить морщины, улучшить цвет лица, обмен веществ, проведут лифтинг терапию... вобщем полностью позаботятся о здоровье вашей кожи'),
(3, 'imgrow1right.jpg', 'Ботокс и ламинирование ресниц', 'Яркий и стильный образ как женщины так и мужчины невозможно представить без модной стрижки, трендового окрашивания, здоровых и блестящих волос... Мы подобрали ряд услуг и косметики, чтобы Ваши волосы были идеальными. Мастера Bella Vita имеют отыт от 8 лет и множество дипломов и используют индивидуальный подход к каждому клиенту.'),
(4, 'imgrow2left.jpg', 'Окрашивание бровей хной', 'По утверждению Коко Шанель руки - визитная карточка девушки... но добавим от себя и мужчины тоже. Руку мы подаём при встрече, наши руки всегда навиду и выглядеть они должны соответственно. Современные гель лаки позволяют 10-14 дней вашим ножкам и ручкам выглядеть идеально. Мы предложим более 100 цветов гель лаков на Ваш вкус. Мастера с опытом от 5 лет позаботятся о красоте Ваших рук и ног.'),
(5, 'imgrow2centr.jpg', 'Макияж', 'Макияж - искуство создавать завершённый образ, продуманный мастером до мелочей. Макияж является основной его состаляющей. У каждого из нас бывают важные дни, когда мы должны выглядеть безупречно. Вам предстоит деловая встреча, романтическое свидание, фотосъёмка, посещение ресторана, концерта...и конечно же Вы должны быть идеальны. Только профессионал создаст такой макияж, который скроет недостатки и подчеркнет достоинства. Красивый цвет лица, выразительный взгляд, чувственные губы - это всё, что нужно, чтобы быть уверенной в своей внешности. Но и конечно же мы предложим соответствующую укладку или причёску для завершения образа. Сделайте макияж у наших визажистов!'),
(6, 'imgrow2right.jpg', 'Татуаж', 'Хотите всегда, везде и при любых обстоятельствах выглядеть эффектно? Татуаж и перманентный макияж в этом помогут. Надоело постоянно красить брови, подводить стрелки, наносить тени, красить губы...Качественный татуаж подчеркнёт Вашу естественную красоту и образ станет ярче. Выполняет процедуру дипломированый врач-косметолог с 7-ми летним опытом. Качество и стерильность гарантируем!'),
(7, 'imgrow3left.jpg', 'Наращивание волос', ''),
(8, 'iауmage011.jpg', 'Обучение', '');

-- --------------------------------------------------------

--
-- Структура таблицы `servicesHoverInfo`
--

CREATE TABLE `servicesHoverInfo` (
  `id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `servicesHoverInfo`
--

INSERT INTO `servicesHoverInfo` (`id`, `text`) VALUES
(1, 'смотреть'),
(2, 'УСЛУГИ и ЦЕНЫ');

-- --------------------------------------------------------

--
-- Структура таблицы `servicesInfo`
--

CREATE TABLE `servicesInfo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` int(11) NOT NULL,
  `services_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `servicesInfo`
--

INSERT INTO `servicesInfo` (`id`, `name`, `description`, `price`, `services_category_id`) VALUES
(90, 'Наращивание ногтей Полигелем (Акрил-гелем)', NULL, 300, 1),
(91, 'Коррекция нарощенных ногтей', NULL, 250, 1),
(92, 'Ремонт 1 ногтя', NULL, 20, 1),
(93, 'Снятие нарощенных ногтей', NULL, 70, 1),
(94, 'Перекрытие Гель-лака на нарощенных ногтях', NULL, 100, 1),
(95, 'Наращивание выкладного френча', NULL, 400, 1),
(96, 'Коррекция френча', NULL, 300, 1),
(97, 'Маникюр и покрытие натуральных ногтей Гель-лаком', NULL, 200, 1),
(98, 'Педикюр комбинированный ', NULL, 200, 2),
(99, 'Педикюр и Гель-лак', NULL, 300, 2),
(100, 'Ботокс и ламинирование ресниц', NULL, 300, 3),
(101, 'Коррекция и покраска бровей хной', NULL, 180, 4),
(102, 'Коррекция и покраска бровей краской', NULL, 100, 4),
(103, 'Коррекция бровей', NULL, 50, 4),
(104, 'Покраска бровей краской', NULL, 50, 4),
(105, 'Покраска ресниц', NULL, 50, 4),
(106, 'Вечерний', NULL, 400, 5),
(107, 'Свадебный', NULL, 400, 5),
(108, 'Дневной', NULL, 300, 5),
(109, 'Детский', NULL, 300, 5),
(110, 'Брови', NULL, 900, 6),
(111, 'Коррекция', NULL, 700, 6),
(112, 'Наращивание волос', NULL, 2000, 7),
(113, 'Коррекция волос', NULL, 2000, 7),
(114, 'Снятие волос', NULL, 500, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `social_networks`
--

CREATE TABLE `social_networks` (
  `id` int(1) NOT NULL,
  `name` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `social_networks`
--

INSERT INTO `social_networks` (`id`, `name`, `link`) VALUES
(1, 'vk', '#'),
(2, 'facebook', '#'),
(3, 'instagram', '#'),
(4, 'odnoklassniki', '#');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `abDescription`
--
ALTER TABLE `abDescription`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `abDescriptionInfo`
--
ALTER TABLE `abDescriptionInfo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `abInfo`
--
ALTER TABLE `abInfo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `burgerMenu`
--
ALTER TABLE `burgerMenu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `certificates_block_header`
--
ALTER TABLE `certificates_block_header`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `certificates_block_img`
--
ALTER TABLE `certificates_block_img`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contact_us_block_header`
--
ALTER TABLE `contact_us_block_header`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `copyright`
--
ALTER TABLE `copyright`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `footer_block_header`
--
ALTER TABLE `footer_block_header`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `footer_block_info_header`
--
ALTER TABLE `footer_block_info_header`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `logoHeader`
--
ALTER TABLE `logoHeader`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `logoSubHeader`
--
ALTER TABLE `logoSubHeader`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mainInfo`
--
ALTER TABLE `mainInfo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mainSettings`
--
ALTER TABLE `mainSettings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `phoneNumbers`
--
ALTER TABLE `phoneNumbers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reviewsBlockHeader`
--
ALTER TABLE `reviewsBlockHeader`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reviewsBlockReview`
--
ALTER TABLE `reviewsBlockReview`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `servicesHoverInfo`
--
ALTER TABLE `servicesHoverInfo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `servicesInfo`
--
ALTER TABLE `servicesInfo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `social_networks`
--
ALTER TABLE `social_networks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `abDescription`
--
ALTER TABLE `abDescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `abDescriptionInfo`
--
ALTER TABLE `abDescriptionInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `abInfo`
--
ALTER TABLE `abInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `burgerMenu`
--
ALTER TABLE `burgerMenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `certificates_block_header`
--
ALTER TABLE `certificates_block_header`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `certificates_block_img`
--
ALTER TABLE `certificates_block_img`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `contact_us_block_header`
--
ALTER TABLE `contact_us_block_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `copyright`
--
ALTER TABLE `copyright`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `footer_block_header`
--
ALTER TABLE `footer_block_header`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `footer_block_info_header`
--
ALTER TABLE `footer_block_info_header`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `logoHeader`
--
ALTER TABLE `logoHeader`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `logoSubHeader`
--
ALTER TABLE `logoSubHeader`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `mainInfo`
--
ALTER TABLE `mainInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `mainSettings`
--
ALTER TABLE `mainSettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `phoneNumbers`
--
ALTER TABLE `phoneNumbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `reviewsBlockHeader`
--
ALTER TABLE `reviewsBlockHeader`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `reviewsBlockReview`
--
ALTER TABLE `reviewsBlockReview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `servicesHoverInfo`
--
ALTER TABLE `servicesHoverInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `servicesInfo`
--
ALTER TABLE `servicesInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT для таблицы `social_networks`
--
ALTER TABLE `social_networks`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
