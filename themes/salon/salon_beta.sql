-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 09 2019 г., 21:16
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
(1, 'header-back.png', 'header-back-layer.png', 1, 'bottom-line-brown.png', 'doubleroundlinebrown.png');

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
(1, 'imgrow1left.jpg', 'Массаж', 'Наиболее популярные виды массажа в нашем салоне, которые направлены на красоту тела. С помощью массажа можно добиться упругости кожи, уменьшить объёмы, избавиться от целлюлита. Обёртывания помогут привести кожу в тонус, подтянуть её, избавиться от лишней жидкости. Всем известно, что массаж нужно делать курсом и тогда между первым и последним посещением Вы обязательно увидите результат.'),
(2, 'imgrow1centr.jpg', 'Косметологические услуги', 'В современном мире сложно обойтись без косметологических процедур, которые позволяют нашей коже быть здоровой и красивой. Чистки, уходы, пилинги, депиляция - давно известные процедуры без которых не обходится ни одна современная женщина. Но мы стремимся к большему и хотим Вам предложить новинки в области косметологии: карбокси терапию, щелочную эпиляуию и ряд других процедур. Косметологи с опытом более 9 лет помогут Вам избавиться от прыщей, уменьшить морщины, улучшить цвет лица, обмен веществ, проведут лифтинг терапию... вобщем полностью позаботятся о здоровье вашей кожи'),
(3, 'imgrow1right.jpg', 'Парикмахерские услуги', 'Яркий и стильный образ как женщины так и мужчины невозможно представить без модной стрижки, трендового окрашивания, здоровых и блестящих волос... Мы подобрали ряд услуг и косметики, чтобы Ваши волосы были идеальными. Мастера Bella Vita имеют отыт от 8 лет и множество дипломов и используют индивидуальный подход к каждому клиенту.'),
(4, 'imgrow2left.jpg', 'Ногтевой сервис', 'По утверждению Коко Шанель руки - визитная карточка девушки... но добавим от себя и мужчины тоже. Руку мы подаём при встрече, наши руки всегда навиду и выглядеть они должны соответственно. Современные гель лаки позволяют 10-14 дней вашим ножкам и ручкам выглядеть идеально. Мы предложим более 100 цветов гель лаков на Ваш вкус. Мастера с опытом от 5 лет позаботятся о красоте Ваших рук и ног.'),
(5, 'imgrow2centr.jpg', 'Макияж', 'Макияж - искуство создавать завершённый образ, продуманный мастером до мелочей. Макияж является основной его состаляющей. У каждого из нас бывают важные дни, когда мы должны выглядеть безупречно. Вам предстоит деловая встреча, романтическое свидание, фотосъёмка, посещение ресторана, концерта...и конечно же Вы должны быть идеальны. Только профессионал создаст такой макияж, который скроет недостатки и подчеркнет достоинства. Красивый цвет лица, выразительный взгляд, чувственные губы - это всё, что нужно, чтобы быть уверенной в своей внешности. Но и конечно же мы предложим соответствующую укладку или причёску для завершения образа. Сделайте макияж у наших визажистов!'),
(6, 'imgrow2right.jpg', 'Татуаж', 'Хотите всегда, везде и при любых обстоятельствах выглядеть эффектно? Татуаж и перманентный макияж в этом помогут. Надоело постоянно красить брови, подводить стрелки, наносить тени, красить губы...Качественный татуаж подчеркнёт Вашу естественную красоту и образ станет ярче. Выполняет процедуру дипломированый врач-косметолог с 7-ми летним опытом. Качество и стерильность гарантируем!');

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
  `services_list_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `servicesInfo`
--

INSERT INTO `servicesInfo` (`id`, `name`, `description`, `price`, `services_list_id`) VALUES
(3, 'Массаж воротниковой зоны', NULL, 300, 5),
(4, 'Классический массаж спины', NULL, 450, 5),
(5, 'Классический массаж всего тела', NULL, 550, 5),
(6, 'Вакуумный массаж', 'проблемные зоны', 400, 5),
(7, 'Механическая чистка лица', 'Очищение, вапоризация, поросуживающая маска, противовоспалительная маска, крем', 550, 1),
(8, 'Ультразвуковая чистка лица', 'Очищение, нанесение лечебного геля, ультразвуковая чистка, поросуживающая маска, азуленовая маска, крем', 500, 1),
(9, 'Антицеллюлитный вакуумный массаж', 'Проблемные зоны + обертывание', 600, 5),
(10, 'Антицеллюлитный массаж \"Ручная техника\"', 'Проблемные зоны + обертывание', 700, 5),
(11, 'Магнитно-роликовый вакуумный массаж', '', 450, 5),
(12, 'Маска-обёртывание для похудения', '', 450, 5),
(13, 'Комбинированная чистка лица', 'Очищение, нанесение лечебного геля, ультразвуковая чистка, механическая чистка, поросуживающая маска, азуленовая маска, крем', 650, 1),
(14, 'Лимфодренажный или Испанский массаж', 'Зоны: лицо,декольте,воротниковая зона. Делается по крему или маске. Длительность 15-20 мин.', 350, 2),
(15, 'Марокканский массаж', 'Зоны: лицо,декольте,воротниковая зона, голова. Делается по крему или маске. Уход: очищение, скраб, тоник с АНА кислотами. Длительность 1 час.', 600, 2),
(16, 'Пластифицирующий или Пластический массаж', 'Зоны: лицо, декольте, воротниковая зона. Уход: очищение, скраб, тоник с АНА кислотами. Длительность 20-30 мин.', 350, 2),
(17, 'Атравматическая чистка жирной кожи препаратами Sebum Soak (жирная кожа, расширенные поры)', 'Очищение, пилинг, чистка УЗ или механическая,маска энзимная №1 или очищающая/увлажняющая маска, крем, сыворотка', 620, 3),
(18, 'Чистка всех видов кожи препаратами Quick Peel (жирна/нормальная/комбинированная кожа с воспалительными элементами)', 'Очищение, пилинг, Dermatox,маска энзимная №1 или очищающая/увлажняющая маска, крем, сыворотка', 660, 3),
(19, 'Ягодный', NULL, 570, 4),
(20, 'Пилинг Джеспера', NULL, 540, 4),
(21, 'Молочный', NULL, 600, 4),
(22, 'Ретиноловый', NULL, 600, 4),
(23, 'Азелаиновый', NULL, 460, 4),
(24, 'Периорбитальная область', 'мешки, отёки', 720, 4),
(25, 'Щелочной пилинг Alkaline Wash', 'Очищение, пилинг, нейтрализация, энзимная маска №1 или очищающая/увлажняющая маска, крем, сыворотка', 780, 4),
(26, 'Энзимный пилинг Prozyme', 'Очищение, пилинг, очищающая/увлажняющая маска, крем, сыворотка', 600, 4),
(27, 'Кислотный пилинг Quick Peel', NULL, 420, 4),
(28, 'Pro Alpha peel + Prozyme', NULL, 1080, 4),
(29, 'Шестислойный пилинг с АНА кислотами', 'очищение, пилинг с АНА кислотами №1 и АНА №2, НЕ СМЫВАТЬ 8-12 часов!!!', 1800, 4),
(30, 'Пилинг PRX-T33', NULL, 2000, 4),
(31, 'Пилинг PRX-T33 + микронидлинг', NULL, 2800, 4),
(32, 'Уход за жирной и проблемной кожей, линия «COMODEX»', 'Очищение, скраб – гоммаж, пилинг – 30 %, чистка, лосьон, томатная маска, дарсенваль, альгинатная маска с корицей', 650, 12),
(33, '\"Глубокая ревизия кожи\" (любой тип кожи, кроме чувствительной)', 'Очищение, энзимный пилинг Prozyme, нанесение Sebum Soak, чистка УЗ или механическая, нанесение Dermatox, сыворотка, маска №1 или очищающая/увлажняющая маска, крем, сыворотка', 990, 12),
(34, 'Удаление мёртвых клеток кожи препаратами Prozyme (любой тип кожи)', 'Очищение, энзимный пилинг, чистка, сыворотка, маска №1 или очищающая/увлажняющая маска, крем, сыворотка', 860, 12),
(35, 'Процедура \"Мать невесты\"', 'Очищение, энзимная маска №1 + Desquamate Lotion, сыворотка, крем', 900, 12),
(36, 'Процедура мгновенного лифтинга «Silk»', 'Очищение, эксфолиация, тонизация, маска «шелковые волокна», массаж, маска-лифтинг, сыворотка', 790, 12),
(37, 'Маска гидролевая пиптидная Hyalual WOW Mask', NULL, 470, 13),
(38, 'Карбокси маска', NULL, 860, 13),
(39, 'Альгинатная маска', NULL, 360, 13),
(40, 'Маска \"быстрой красоты\"', 'Очищение, пилинг Quick Peel, сыворотка, крем', 530, 13),
(41, 'Тройная маска', 'Очищение, энзимные маски №1,2,3, сыворотка, крем', 1650, 13),
(42, 'Cтрижка мужская', NULL, 260, 6),
(43, 'Стрижка мужская модельная', NULL, 300, 6),
(44, 'Стрижка «под машинку»', NULL, 200, 6),
(45, 'Стрижка женская', NULL, 350, 7),
(46, 'Стрижка кончиков волос', 'Без мойки головы', 250, 7),
(47, 'Стрижка челки', 'Коррекция длины', 90, 7),
(48, 'Окрашивание бровей краской', NULL, 100, 14),
(49, 'Окрашивание бровей хной', NULL, 200, 14),
(50, 'Коррекция бровей', NULL, 80, 14),
(51, 'Окрашивание ресниц краской', NULL, 100, 15),
(52, 'Окрашивание ресниц хной', NULL, 200, 15),
(53, 'Маникюр (\"Классический\", \"Аппаратный\")', NULL, 200, 9),
(54, 'Педикюр («Классический», «Аппаратный», «Кислотный»)', NULL, 280, 9),
(55, 'Однотонное покрытие гель лаком', NULL, 180, 9),
(56, 'Французкое покрытие гель лаком', NULL, 220, 9),
(57, 'Покрытие лак /«french» лак', NULL, 100, 9),
(58, 'Снятие покрытия лак / гель лак', NULL, 60, 9),
(59, 'Коррекция длины и формы натуральных ногтей', NULL, 70, 9),
(60, 'Дизайн одного ногтя', 'стемпинг, рисунок, камни, аэрограф', 20, 9),
(61, 'Парафинотерапия рук', NULL, 100, 9),
(62, 'Парафинотерапия ног', NULL, 150, 9),
(63, 'Маникюр (\"Классический\", \"Аппаратный\")', NULL, 250, 8),
(64, 'Педикюр («Классический», «Аппаратный», «Кислотный»)', NULL, 340, 8),
(65, 'Полировка ногтей', NULL, 50, 8),
(66, 'Наращивание гелем', NULL, 700, 18),
(67, 'Наращивание гелем «FRENCH»', NULL, 800, 18),
(68, 'Коррекция', NULL, 500, 18),
(69, 'Коррекция «FRENCH»', NULL, 600, 18),
(70, 'Ремонт нарощеного ногтя', NULL, 70, 18),
(71, 'Снятие нарощеных ногтей', NULL, 250, 18),
(72, 'Дневной макияж', NULL, 400, 10),
(73, 'Вечерний макияж', NULL, 600, 10),
(74, 'Наращивание ресниц классический объём', NULL, 500, 10),
(75, 'Наращивание ресниц 2D', NULL, 550, 10),
(76, 'Наращивание ресниц 3D', NULL, 600, 10),
(77, 'Наращивание ресниц \"Голливуд\"', NULL, 700, 10),
(78, 'Снятие нарощенных ресниц', NULL, 120, 10),
(79, 'Снятие нарощенных ресниц с последующим наращиванием', NULL, 80, 10),
(80, 'Губы (контур)', NULL, 1500, 11),
(81, 'Губы (полная растушёвка)', NULL, 2500, 11),
(82, 'Губы (эффект 3D)', NULL, 3000, 11),
(83, 'Брови (волосковая техника)', NULL, 2500, 11),
(84, 'Брови (растушёвка)', NULL, 2000, 11),
(85, 'Межресничный контур глаз', NULL, 1800, 11),
(86, 'Стрелка верхнего века декоративная', NULL, 2000, 11),
(87, 'Стрелки верхнего и нижнего века декоративные', NULL, 2500, 11),
(88, 'Перманентный татуаж век (эффект теней)', NULL, 2500, 11),
(89, 'Мушка', NULL, 600, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `servicesList`
--

CREATE TABLE `servicesList` (
  `id` int(16) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `servicesList`
--

INSERT INTO `servicesList` (`id`, `name`, `category`) VALUES
(1, 'Чистки лица', 2),
(2, 'Массажи', 2),
(3, 'Атравматические чистки', 2),
(4, 'Пилинги', 2),
(5, 'Массаж', 1),
(6, 'Парикмахерские услуги для мужчин', 3),
(7, 'Парикмахерские услуги для женщин', 3),
(8, 'Ногтевой сервис для мужчин', 4),
(9, 'Ногтевой сервис для женщин', 4),
(10, 'Макияж', 5),
(11, 'Татуаж', 6),
(12, 'Уход', 2),
(13, 'Маски', 2),
(14, 'Брови', 3),
(15, 'Ресницы', 3),
(16, 'Для Женщин', 4),
(17, 'Для Мужчин', 4),
(18, 'Наращивание ногтей', 4);

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
-- Индексы таблицы `servicesList`
--
ALTER TABLE `servicesList`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `servicesHoverInfo`
--
ALTER TABLE `servicesHoverInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `servicesInfo`
--
ALTER TABLE `servicesInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT для таблицы `servicesList`
--
ALTER TABLE `servicesList`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `social_networks`
--
ALTER TABLE `social_networks`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
