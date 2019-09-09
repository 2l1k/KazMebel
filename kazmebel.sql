-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 09 2019 г., 06:58
-- Версия сервера: 5.7.23
-- Версия PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kazmebel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 2, 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 109, 22, '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'Nxc4L7FglaWvCSb2BCplmj3th73AC8hro4ZfGaTkpUoJyYN26i2GHJmgKJd2OfuInfndeWKOuOxENUePwH7hMaIv3gAtaFJIwKckSsNUUkDpFbKFOu8OKiSronQ9OvnU6e9TNM8pa4QrByzYPMUm3E8llg1EFAU2LWrh2TXekiVEEhzrfvdMORIYpBe1paYji8EzrKb5TKFVdMlmQNeNic2nv3b6xbJiWcLfMXInTin22KyJcTCvYOLESfnWJvlY', 1, '2019-08-26 10:16:45', '2019-08-26 10:16:45');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1),
(11, 'Слайдер', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `sub` varchar(64) NOT NULL,
  `btn` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `sub`, `btn`, `link`, `image`, `sort_order`) VALUES
(123, 7, 2, 'iPhone 6', '', '', 'index.php?route=product/product&amp;path=57&amp;product_id=49', '', 0),
(87, 6, 1, 'HP Banner', '', '', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, 1, 'NFL', '', '', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', '', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', '', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', '', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', '', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', '', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', '', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', '', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', '', '', 'catalog/demo/manufacturer/disney.png', 0),
(97, 8, 1, 'Starbucks', '', '', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', '', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(100, 6, 2, 'HP Banner', '', '', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(101, 8, 2, 'NFL', '', '', '', 'catalog/demo/manufacturer/nfl.png', 0),
(102, 8, 2, 'RedBull', '', '', '', 'catalog/demo/manufacturer/redbull.png', 0),
(103, 8, 2, 'Sony', '', '', '', 'catalog/demo/manufacturer/sony.png', 0),
(104, 8, 2, 'Coca Cola', '', '', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(105, 8, 2, 'Burger King', '', '', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(106, 8, 2, 'Canon', '', '', '', 'catalog/demo/manufacturer/canon.png', 0),
(107, 8, 2, 'Harley Davidson', '', '', '', 'catalog/demo/manufacturer/harley.png', 0),
(108, 8, 2, 'Dell', '', '', '', 'catalog/demo/manufacturer/dell.png', 0),
(109, 8, 2, 'Disney', '', '', '', 'catalog/demo/manufacturer/disney.png', 0),
(111, 8, 2, 'Starbucks', '', '', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(112, 8, 2, 'Nintendo', '', '', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(122, 7, 1, 'ЗАГОЛОВОК О МЕБЕЛИ В ПАРУ СЛОВ', '', '', '', 'catalog/Slide/slider.jpg', 1),
(121, 7, 1, 'ЗАГОЛОВОК О МЕБЕЛИ В ПАРУ СЛОВ', '', '', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/Slide/slider.jpg', 0),
(124, 7, 2, 'MacBookAir', '', '', '', '', 0),
(150, 11, 1, 'ЗАГОЛОВОК О МЕБЕЛИ В ПАРУ СЛОВ', 'Подзаголовок в пару слов', 'Оставить заявку', 'http://kazmebel/', 'catalog/Slide/slider.jpg', 0),
(151, 11, 1, 'ЗАГОЛОВОК О МЕБЕЛИ В ПАРУ СЛОВ', 'Подзаголовок в пару слов 1', 'Оставить заявку 1', 'http://kazmebel/', 'catalog/Slide/slider.jpg', 0),
(152, 11, 1, 'ЗАГОЛОВОК О МЕБЕЛИ В ПАРУ СЛОВ', 'Подзаголовок в пару слов 2', 'Оставить заявку 2', 'http://kazmebel/', 'catalog/Slide/slider.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_author`
--

CREATE TABLE `oc_bm_author` (
  `author_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `author_group_id` int(11) NOT NULL,
  `custom` int(1) DEFAULT '0',
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_author`
--

INSERT INTO `oc_bm_author` (`author_id`, `user_id`, `author_group_id`, `custom`, `setting`) VALUES
(1, 1, 1, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_author_description`
--

CREATE TABLE `oc_bm_author_description` (
  `author_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `short_description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `author_description_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_author_description`
--

INSERT INTO `oc_bm_author_description` (`author_id`, `language_id`, `name`, `description`, `short_description`, `meta_title`, `meta_description`, `meta_keyword`, `author_description_id`) VALUES
(1, 1, 'Author', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', 'Author', '', '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_author_group`
--

CREATE TABLE `oc_bm_author_group` (
  `author_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_author_group`
--

INSERT INTO `oc_bm_author_group` (`author_group_id`, `name`, `permission`) VALUES
(1, 'admin', '[\"add_posts\",\"edit_posts\",\"delete_posts\",\"edit_others_posts\",\"delete_others_posts\",\"add_reviews\",\"edit_reviews\",\"delete_reviews\",\"add_others_reviews\",\"edit_others_reviews\",\"delete_others_reviews\",\"add_authors\",\"edit_authors\",\"delete_authors\",\"add_author_groups\",\"edit_author_groups\",\"delete_author_groups\",\"add_categories\",\"edit_categories\",\"delete_categories\",\"change_post_author\"]'),
(2, 'editor', '[\"add_posts\",\"edit_posts\",\"delete_posts\",\"edit_others_posts\",\"delete_others_posts\",\"add_reviews\",\"edit_reviews\",\"delete_reviews\",\"add_others_reviews\",\"edit_others_reviews\",\"delete_others_reviews\",\"add_authors\",\"edit_authors\",\"delete_authors\",\"add_author_groups\",\"edit_author_groups\",\"delete_author_groups\",\"add_categories\",\"edit_categories\",\"delete_categories\",\"change_post_author\"]'),
(3, 'author', '[\"add_posts\",\"edit_posts\",\"add_reviews\",\"edit_reviews\",\"delete_reviews\"]'),
(4, 'moderator', '[\"add_reviews\",\"edit_reviews\",\"delete_reviews\",\"add_others_reviews\",\"edit_others_reviews\",\"delete_others_reviews\"]');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_category`
--

CREATE TABLE `oc_bm_category` (
  `category_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `limit_access_user` int(1) NOT NULL DEFAULT '0',
  `limit_users` text,
  `limit_access_user_group` int(1) NOT NULL DEFAULT '0',
  `limit_user_groups` text,
  `custom` int(1) DEFAULT '0',
  `setting` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_category`
--

INSERT INTO `oc_bm_category` (`category_id`, `parent_id`, `sort_order`, `image`, `status`, `limit_access_user`, `limit_users`, `limit_access_user_group`, `limit_user_groups`, `custom`, `setting`, `date_added`, `date_modified`) VALUES
(10, 0, 1, '', 1, 0, '', 0, '', 0, '\"\"', '2019-09-04 17:56:38', '2019-09-04 17:56:38'),
(8, 0, 1, '', 1, 0, '', 0, '', 0, '\"\"', '2019-08-27 16:42:54', '2019-08-27 16:42:54'),
(9, 0, 1, '', 1, 0, '', 0, '', 0, '\"\"', '2019-08-27 16:42:54', '2019-09-06 20:41:30');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_category_description`
--

CREATE TABLE `oc_bm_category_description` (
  `category_description_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_category_description`
--

INSERT INTO `oc_bm_category_description` (`category_description_id`, `category_id`, `language_id`, `title`, `short_description`, `description`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(27, 10, 1, 'Проекты', '', '', 'Проекты', '', ''),
(28, 10, 2, 'Projects', '', '', 'Projects', '', ''),
(19, 8, 1, 'Статьи', '', '', 'Статьи', '', ''),
(20, 8, 2, 'Articles', '', '', 'Articles', '', ''),
(31, 9, 1, 'Новинки', '', '', 'Новинки', '', ''),
(32, 9, 2, 'News', '', '', 'News', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_category_path`
--

CREATE TABLE `oc_bm_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_category_path`
--

INSERT INTO `oc_bm_category_path` (`category_id`, `path_id`, `level`) VALUES
(10, 10, 0),
(8, 8, 0),
(9, 9, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_category_to_layout`
--

CREATE TABLE `oc_bm_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_category_to_layout`
--

INSERT INTO `oc_bm_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(10, 0, 0),
(8, 0, 0),
(9, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_category_to_store`
--

CREATE TABLE `oc_bm_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_category_to_store`
--

INSERT INTO `oc_bm_category_to_store` (`category_id`, `store_id`) VALUES
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post`
--

CREATE TABLE `oc_bm_post` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_title` varchar(255) DEFAULT NULL,
  `image_alt` varchar(255) DEFAULT NULL,
  `review_display` int(1) DEFAULT '0',
  `images_review` int(1) DEFAULT '0',
  `viewed` int(11) DEFAULT '1',
  `status` int(1) DEFAULT '1',
  `limit_access_user` int(1) NOT NULL DEFAULT '0',
  `limit_users` text,
  `limit_access_user_group` int(1) NOT NULL DEFAULT '0',
  `limit_user_groups` text,
  `custom` int(1) DEFAULT '0',
  `setting` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_published` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post`
--

INSERT INTO `oc_bm_post` (`post_id`, `user_id`, `image`, `image_title`, `image_alt`, `review_display`, `images_review`, `viewed`, `status`, `limit_access_user`, `limit_users`, `limit_access_user_group`, `limit_user_groups`, `custom`, `setting`, `date_added`, `date_published`, `date_modified`) VALUES
(1, 1, 'catalog/d_blog_module/post/Photo_blog_6.jpg', NULL, NULL, 0, 0, 185, 1, 0, '', 0, '', 0, '', '2016-04-13 11:00:05', '2016-04-24 00:00:00', '2019-09-06 20:35:36'),
(2, 1, 'catalog/d_blog_module/post/Photo_blog_3.jpg', NULL, NULL, 0, 0, 24, 1, 0, '', 0, '', 0, '', '2016-04-13 11:15:37', '2016-04-23 00:00:00', '2019-09-04 17:57:35'),
(3, 1, 'catalog/d_blog_module/post/Photo_blog_8.jpg', NULL, NULL, 0, 0, 15, 1, 0, '', 0, '', 0, '', '2016-04-13 11:24:30', '2016-04-23 00:00:00', '2019-09-06 20:33:37'),
(4, 1, 'catalog/d_blog_module/post/Photo_blog_2.jpg', NULL, NULL, 0, 0, 13, 1, 0, '', 0, '', 0, '', '2016-04-13 11:27:08', '2016-04-23 00:00:00', '2019-09-06 20:37:04'),
(5, 1, 'catalog/d_blog_module/post/Photo_blog_1.jpg', NULL, NULL, 0, 0, 37, 1, 0, '', 0, '', 0, '', '2016-04-13 11:32:03', '2016-04-26 00:00:00', '2019-09-04 17:58:13'),
(6, 1, 'catalog/d_blog_module/post/Photo_blog_4.jpg', NULL, NULL, 0, 0, 10, 1, 0, '', 0, '', 0, '', '2016-04-13 11:35:22', '2016-04-24 00:00:00', '2019-09-06 20:35:04'),
(7, 1, 'catalog/d_blog_module/post/Photo_blog_5.jpg', NULL, NULL, 0, 0, 10, 1, 0, '', 0, '', 0, '', '2016-04-13 11:37:01', '2016-04-12 00:00:00', '2019-09-06 20:35:56'),
(8, 1, 'catalog/d_blog_module/post/Photo_blog_10.jpg', NULL, NULL, 0, 0, 14, 1, 0, '', 0, '', 0, '', '2016-04-13 11:38:46', '2016-04-23 00:00:00', '2019-09-06 20:36:38'),
(9, 1, 'catalog/d_blog_module/post/Photo_blog_7.jpg', NULL, NULL, 0, 0, 122, 1, 0, '', 0, '', 0, '', '2016-04-13 11:40:51', '2016-04-22 00:00:00', '2019-09-06 20:34:33'),
(10, 1, 'catalog/d_blog_module/post/Photo_blog_9.jpg', NULL, NULL, 1, 0, 187, 1, 0, '', 0, '', 0, '', '2016-04-17 11:42:08', '2016-03-16 00:00:00', '2019-09-06 20:28:11');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_description`
--

CREATE TABLE `oc_bm_post_description` (
  `post_description_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `tag` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post_description`
--

INSERT INTO `oc_bm_post_description` (`post_description_id`, `post_id`, `language_id`, `title`, `short_description`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `tag`) VALUES
(229, 9, 2, 'Shopping day', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Shopping day', '', '', 'vocation,look,summer'),
(241, 1, 2, 'My latest adventure', 'Vivamus efficitur libero quis arcu gravida, porttitor fermentum sapien suscipit. Nullam mattis, felis ut vehicula malesuada, nulla velit maximus velit, imperdiet tempus felis urna consequat mauris. Fusce et sollicitudin felis. In pulvinar ante eu arcu placerat mattis. Nunc quis aliquet augue.', '		\r\n&lt;p&gt;The purpose of this HTML is to help determine what default settings are with CSS and to make sure that all possible HTML Elements are included in this HTML so as to not miss any possible Elements when designing a site.&lt;br&gt;&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;h1&gt;Heading 1&lt;/h1&gt;\r\n&lt;h2&gt;Heading 2&lt;/h2&gt;\r\n&lt;h3&gt;Heading 3&lt;/h3&gt;\r\n&lt;h4&gt;Heading 4&lt;/h4&gt;\r\n&lt;h5&gt;Heading 5&lt;/h5&gt;\r\n&lt;h6&gt;Heading 6&lt;/h6&gt;\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;h2 id=&quot;paragraph&quot;&gt;Paragraph&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, &lt;a href=&quot;#&quot; title=&quot;test link&quot;&gt;test link&lt;/a&gt; adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Maecenas ornare tortor. Donec sed tellus eget sapien fringilla nonummy. Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc. Morbi imperdiet augue quis tellus.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, &lt;em&gt;emphasis&lt;/em&gt; consectetuer adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Maecenas ornare tortor. Donec sed tellus eget sapien fringilla nonummy. Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc. Morbi imperdiet augue quis tellus.&lt;/p&gt;\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;h2 id=&quot;list_types&quot;&gt;List Types&lt;/h2&gt;\r\n&lt;h3&gt;Definition List&lt;/h3&gt;\r\n&lt;dl&gt;\r\n&lt;dt&gt;Definition List Title&lt;/dt&gt;\r\n&lt;dd&gt;This is a definition list division.&lt;/dd&gt;\r\n&lt;/dl&gt;\r\n&lt;h3&gt;Ordered List&lt;/h3&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;List Item 1&lt;/li&gt;\r\n&lt;li&gt;List Item 2&lt;/li&gt;\r\n&lt;li&gt;List Item 3&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;h3&gt;Unordered List&lt;/h3&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;List Item 1&lt;/li&gt;\r\n&lt;li&gt;List Item 2&lt;/li&gt;\r\n&lt;li&gt;List Item 3&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;h2 id=&quot;form_elements&quot;&gt;Forms&lt;/h2&gt;\r\n&lt;fieldset&gt;\r\n&lt;legend&gt;Legend&lt;/legend&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus.&lt;/p&gt;\r\n\r\n&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h2&gt;Image&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://opencart.dreamvention.com/220/d_blog_module/image/cache/catalog/d_blog_module/post/Photo_blog_3-1400x875.jpg&quot; class=&quot;img-responsive&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/fieldset&gt;\r\n&lt;hr&gt;\r\n&lt;h2 id=&quot;tables&quot;&gt;Tables&lt;/h2&gt;\r\n&lt;table class=&quot;table table-bordered&quot;&gt;\r\n&lt;tbody&gt;&lt;tr&gt;\r\n&lt;th&gt;Table Header 1&lt;/th&gt;\r\n&lt;th&gt;Table Header 2&lt;/th&gt;\r\n&lt;th&gt;Table Header 3&lt;/th&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;\r\n&lt;td&gt;Division 1&lt;/td&gt;\r\n&lt;td&gt;Division 2&lt;/td&gt;\r\n&lt;td&gt;Division 3&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr class=&quot;even&quot;&gt;\r\n&lt;td&gt;Division 1&lt;/td&gt;\r\n&lt;td&gt;Division 2&lt;/td&gt;\r\n&lt;td&gt;Division 3&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;\r\n&lt;td&gt;Division 1&lt;/td&gt;\r\n&lt;td&gt;Division 2&lt;/td&gt;\r\n&lt;td&gt;Division 3&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;/tbody&gt;&lt;/table&gt;\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;h2 id=&quot;misc&quot;&gt;Misc Stuff – abbr, acronym, pre, code, sub, sup, etc.&lt;/h2&gt;\r\n&lt;p&gt;Lorem &lt;sup&gt;superscript&lt;/sup&gt; dolor &lt;sub&gt;subscript&lt;/sub&gt; amet, consectetuer adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. &lt;cite&gt;cite&lt;/cite&gt;. Nunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Maecenas ornare tortor. Donec sed tellus eget sapien fringilla nonummy. &lt;acronym title=&quot;National Basketball Association&quot;&gt;NBA&lt;/acronym&gt; Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc. Morbi imperdiet augue quis tellus.  &lt;abbr title=&quot;Avenue&quot;&gt;AVE&lt;/abbr&gt;&lt;/p&gt;\r\n&lt;pre&gt;&lt;p&gt;\r\nLorem ipsum dolor sit amet,\r\n consectetuer adipiscing elit.\r\n Nullam dignissim convallis est.\r\n Quisque aliquam. Donec faucibus. \r\nNunc iaculis suscipit dui. \r\nNam sit amet sem. \r\nAliquam libero nisi, imperdiet at,\r\n tincidunt nec, gravida vehicula,\r\n nisl. \r\nPraesent mattis, massa quis \r\nluctus fermentum, turpis mi \r\nvolutpat justo, eu volutpat \r\nenim diam eget metus. \r\nMaecenas ornare tortor. \r\nDonec sed tellus eget sapien\r\n fringilla nonummy. \r\n&lt;acronym title=&quot;National Basketball Association&quot;&gt;NBA&lt;/acronym&gt; \r\nMauris a ante. Suspendisse\r\n quam sem, consequat at, \r\ncommodo vitae, feugiat in, \r\nnunc. Morbi imperdiet augue\r\n quis tellus.  \r\n&lt;abbr title=&quot;Avenue&quot;&gt;AVE&lt;/abbr&gt;&lt;/p&gt;&lt;/pre&gt;\r\n&lt;blockquote&gt;&lt;p&gt;\r\n	“This stylesheet is going to help so freaking much.” &lt;br&gt;-Blockquote\r\n&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;p&gt;&lt;br&gt;\r\n&lt;!-- End of Sample Content --&gt;&lt;/p&gt;\r\n', 'My latest adventure', '', '', 'summer,sale,day off'),
(159, 2, 2, 'Big sale this summer', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Big sale this summer', '', 'big-sale-this-summer', 'look'),
(163, 5, 2, 'Fashion in city', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fashion in city', '', '', '	vocation,summer,day off'),
(257, 4, 2, 'Favorite look', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Favorite look', '', '', '	photo,day off,look'),
(253, 8, 2, 'Favorite photo', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Favorite photo', '', '', 'day off,vocation,look'),
(233, 6, 2, 'Photography', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Photography', '', '', 'shopping,dresses,look'),
(221, 3, 2, 'Spring mood', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Spring mood', '', '', '	vocation, dresses,summer'),
(228, 9, 1, 'Shopping day', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Shopping day', '', '', 'vocation,look,summer'),
(240, 1, 1, 'My latest adventure', 'Vivamus efficitur libero quis arcu gravida, porttitor fermentum sapien suscipit. Nullam mattis, felis ut vehicula malesuada, nulla velit maximus velit, imperdiet tempus felis urna consequat mauris. Fusce et sollicitudin felis. In pulvinar ante eu arcu placerat mattis. Nunc quis aliquet augue.', '		\r\n&lt;p&gt;The purpose of this HTML is to help determine what default settings are with CSS and to make sure that all possible HTML Elements are included in this HTML so as to not miss any possible Elements when designing a site.&lt;br&gt;&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;h1&gt;Heading 1&lt;/h1&gt;\r\n&lt;h2&gt;Heading 2&lt;/h2&gt;\r\n&lt;h3&gt;Heading 3&lt;/h3&gt;\r\n&lt;h4&gt;Heading 4&lt;/h4&gt;\r\n&lt;h5&gt;Heading 5&lt;/h5&gt;\r\n&lt;h6&gt;Heading 6&lt;/h6&gt;\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;h2 id=&quot;paragraph&quot;&gt;Paragraph&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, &lt;a href=&quot;#&quot; title=&quot;test link&quot;&gt;test link&lt;/a&gt; adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Maecenas ornare tortor. Donec sed tellus eget sapien fringilla nonummy. Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc. Morbi imperdiet augue quis tellus.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, &lt;em&gt;emphasis&lt;/em&gt; consectetuer adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Maecenas ornare tortor. Donec sed tellus eget sapien fringilla nonummy. Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc. Morbi imperdiet augue quis tellus.&lt;/p&gt;\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;h2 id=&quot;list_types&quot;&gt;List Types&lt;/h2&gt;\r\n&lt;h3&gt;Definition List&lt;/h3&gt;\r\n&lt;dl&gt;\r\n&lt;dt&gt;Definition List Title&lt;/dt&gt;\r\n&lt;dd&gt;This is a definition list division.&lt;/dd&gt;\r\n&lt;/dl&gt;\r\n&lt;h3&gt;Ordered List&lt;/h3&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;List Item 1&lt;/li&gt;\r\n&lt;li&gt;List Item 2&lt;/li&gt;\r\n&lt;li&gt;List Item 3&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;h3&gt;Unordered List&lt;/h3&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;List Item 1&lt;/li&gt;\r\n&lt;li&gt;List Item 2&lt;/li&gt;\r\n&lt;li&gt;List Item 3&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;h2 id=&quot;form_elements&quot;&gt;Forms&lt;/h2&gt;\r\n&lt;fieldset&gt;\r\n&lt;legend&gt;Legend&lt;/legend&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus.&lt;/p&gt;\r\n\r\n&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h2&gt;Image&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://opencart.dreamvention.com/220/d_blog_module/image/cache/catalog/d_blog_module/post/Photo_blog_3-1400x875.jpg&quot; class=&quot;img-responsive&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/fieldset&gt;\r\n&lt;hr&gt;\r\n&lt;h2 id=&quot;tables&quot;&gt;Tables&lt;/h2&gt;\r\n&lt;table class=&quot;table table-bordered&quot;&gt;\r\n&lt;tbody&gt;&lt;tr&gt;\r\n&lt;th&gt;Table Header 1&lt;/th&gt;\r\n&lt;th&gt;Table Header 2&lt;/th&gt;\r\n&lt;th&gt;Table Header 3&lt;/th&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;\r\n&lt;td&gt;Division 1&lt;/td&gt;\r\n&lt;td&gt;Division 2&lt;/td&gt;\r\n&lt;td&gt;Division 3&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr class=&quot;even&quot;&gt;\r\n&lt;td&gt;Division 1&lt;/td&gt;\r\n&lt;td&gt;Division 2&lt;/td&gt;\r\n&lt;td&gt;Division 3&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;\r\n&lt;td&gt;Division 1&lt;/td&gt;\r\n&lt;td&gt;Division 2&lt;/td&gt;\r\n&lt;td&gt;Division 3&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;/tbody&gt;&lt;/table&gt;\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;h2 id=&quot;misc&quot;&gt;Misc Stuff – abbr, acronym, pre, code, sub, sup, etc.&lt;/h2&gt;\r\n&lt;p&gt;Lorem &lt;sup&gt;superscript&lt;/sup&gt; dolor &lt;sub&gt;subscript&lt;/sub&gt; amet, consectetuer adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. &lt;cite&gt;cite&lt;/cite&gt;. Nunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Maecenas ornare tortor. Donec sed tellus eget sapien fringilla nonummy. &lt;acronym title=&quot;National Basketball Association&quot;&gt;NBA&lt;/acronym&gt; Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc. Morbi imperdiet augue quis tellus.  &lt;abbr title=&quot;Avenue&quot;&gt;AVE&lt;/abbr&gt;&lt;/p&gt;\r\n&lt;pre&gt;&lt;p&gt;\r\nLorem ipsum dolor sit amet,\r\n consectetuer adipiscing elit.\r\n Nullam dignissim convallis est.\r\n Quisque aliquam. Donec faucibus. \r\nNunc iaculis suscipit dui. \r\nNam sit amet sem. \r\nAliquam libero nisi, imperdiet at,\r\n tincidunt nec, gravida vehicula,\r\n nisl. \r\nPraesent mattis, massa quis \r\nluctus fermentum, turpis mi \r\nvolutpat justo, eu volutpat \r\nenim diam eget metus. \r\nMaecenas ornare tortor. \r\nDonec sed tellus eget sapien\r\n fringilla nonummy. \r\n&lt;acronym title=&quot;National Basketball Association&quot;&gt;NBA&lt;/acronym&gt; \r\nMauris a ante. Suspendisse\r\n quam sem, consequat at, \r\ncommodo vitae, feugiat in, \r\nnunc. Morbi imperdiet augue\r\n quis tellus.  \r\n&lt;abbr title=&quot;Avenue&quot;&gt;AVE&lt;/abbr&gt;&lt;/p&gt;&lt;/pre&gt;\r\n&lt;blockquote&gt;&lt;p&gt;\r\n	“This stylesheet is going to help so freaking much.” &lt;br&gt;-Blockquote\r\n&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;p&gt;&lt;br&gt;\r\n&lt;!-- End of Sample Content --&gt;&lt;/p&gt;\r\n', 'My latest adventure', '', '', 'summer,sale,day off'),
(245, 7, 2, 'Fragments of life', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fragments of life', '', '', 'look,photo'),
(158, 2, 1, 'Big sale this summer', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Big sale this summer', '', 'big-sale-this-summer', 'look'),
(162, 5, 1, 'Fashion in city', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fashion in city', '', '', '	vocation,summer,day off'),
(256, 4, 1, 'Favorite look', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Favorite look', '', '', '	photo,day off,look'),
(252, 8, 1, 'Favorite photo', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Favorite photo', '', '', 'day off,vocation,look'),
(244, 7, 1, 'Fragments of life', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fragments of life', '', '', 'look,photo'),
(232, 6, 1, 'Photography', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Photography', '', '', 'shopping,dresses,look'),
(220, 3, 1, 'Spring mood', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Spring mood', '', '', '	vocation, dresses,summer'),
(185, 10, 2, 'Amazing day', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Amazing day', '', '', 'vocation,holiday,day off,look'),
(184, 10, 1, 'Amazing day', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Amazing day', '', '', 'vocation,holiday,day off,look');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_related`
--

CREATE TABLE `oc_bm_post_related` (
  `post_id` int(11) NOT NULL,
  `post_related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post_related`
--

INSERT INTO `oc_bm_post_related` (`post_id`, `post_related_id`) VALUES
(2, 7),
(2, 9),
(3, 1),
(3, 10),
(4, 5),
(4, 7),
(5, 3),
(5, 8),
(7, 1),
(7, 4),
(10, 6),
(10, 7),
(10, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_to_category`
--

CREATE TABLE `oc_bm_post_to_category` (
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post_to_category`
--

INSERT INTO `oc_bm_post_to_category` (`post_id`, `category_id`) VALUES
(1, 8),
(3, 8),
(4, 8),
(6, 8),
(7, 8),
(8, 8),
(9, 8),
(1, 9),
(3, 9),
(4, 9),
(6, 9),
(7, 9),
(8, 9),
(9, 9),
(2, 10),
(5, 10),
(10, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_to_layout`
--

CREATE TABLE `oc_bm_post_to_layout` (
  `post_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post_to_layout`
--

INSERT INTO `oc_bm_post_to_layout` (`post_id`, `store_id`, `layout_id`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_to_product`
--

CREATE TABLE `oc_bm_post_to_product` (
  `post_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post_to_product`
--

INSERT INTO `oc_bm_post_to_product` (`post_id`, `product_id`) VALUES
(2, 66),
(5, 66),
(10, 66),
(2, 67),
(10, 67),
(2, 68),
(5, 68),
(2, 69),
(5, 69);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_to_store`
--

CREATE TABLE `oc_bm_post_to_store` (
  `post_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post_to_store`
--

INSERT INTO `oc_bm_post_to_store` (`post_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_video`
--

CREATE TABLE `oc_bm_post_video` (
  `post_id` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_review`
--

CREATE TABLE `oc_bm_review` (
  `review_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `reply_to_review_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `guest_email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `rating` int(11) NOT NULL,
  `status` int(1) DEFAULT '1',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_review`
--

INSERT INTO `oc_bm_review` (`review_id`, `post_id`, `reply_to_review_id`, `language_id`, `customer_id`, `guest_email`, `image`, `author`, `description`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 1, 0, 0, 0, '', '', 'admin', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea', 5, 1, '2016-04-14 14:40:46', '2016-04-27 23:02:07'),
(2, 1, 1, 0, 0, '', '', 'admin', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea', 5, 1, '2016-04-22 09:08:10', '2016-04-27 23:02:03'),
(3, 1, 0, 0, 0, '', '', 'admin', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea', 5, 1, '2016-04-22 09:08:42', '2016-04-27 23:01:59'),
(4, 10, 0, 0, 0, '', '', 'admin', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea', 4, 1, '2016-04-24 22:37:11', '2016-04-27 23:01:34'),
(5, 10, 4, 0, 0, '', 'catalog/logo.png', 'admin', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea', 5, 1, '2016-04-24 23:34:22', '2016-04-27 23:01:39'),
(6, 9, 0, 0, 0, '', 'catalog/logo.png', 'admin', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea', 4, 1, '2016-04-27 01:04:57', '2016-04-27 23:01:43'),
(7, 10, 5, 0, 0, '', 'catalog/logo.png', 'admin', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea', 5, 1, '2016-04-27 02:38:21', '2016-04-27 23:01:48'),
(8, 10, 0, 0, 0, '', '', 'Antony', 'Aliquip veniam delectus, Marfa eiusmod Pinterest in do umami readymade swag. Selfies iPhone Kickstarter, drinking vinegar jean shorts fixie consequat flexitarian four loko.', 4, 1, '2016-04-27 02:48:57', '2016-04-27 23:01:53');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_review_to_image`
--

CREATE TABLE `oc_bm_review_to_image` (
  `review_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(7, 0, 1, '9ade77cbf1e5a7b4837dca6421', 67, 0, '[]', 1, '2019-09-05 11:48:19'),
(14, 0, 2, '02c5d38cd11ddea7f509b81951', 66, 0, '[]', 3, '2019-09-05 18:08:36'),
(15, 0, 1, '9ade77cbf1e5a7b4837dca6421', 66, 0, '[]', 1, '2019-09-08 17:11:16');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(59, '', 0, 1, 1, 1, 1, '2019-08-26 13:37:32', '2019-08-26 16:23:59'),
(62, '', 0, 1, 1, 6, 1, '2019-08-26 13:40:18', '2019-08-26 16:24:44'),
(63, '', 0, 1, 1, 3, 1, '2019-08-26 13:40:53', '2019-08-26 16:21:13'),
(64, '', 0, 1, 1, 2, 1, '2019-08-26 13:41:35', '2019-08-26 16:22:17'),
(65, '', 0, 1, 1, 5, 1, '2019-08-26 13:42:23', '2019-08-26 16:23:19'),
(66, '', 0, 1, 1, 4, 1, '2019-08-26 13:43:02', '2019-08-26 16:19:30');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(64, 2, 'Cabinet furniture', '', 'Cabinet furniture', '', ''),
(64, 1, 'Корпусная мебель', '&lt;svg width=&quot;46&quot; height=&quot;44&quot;&gt;\r\n  &lt;use xlink:href=&quot;catalog/view/theme/kazmebel/sprite/sprite.svg#mebel-4&quot;&gt;&lt;/use&gt;\r\n&lt;/svg&gt;', 'Корпусная мебель', '', ''),
(65, 1, 'Металлическая мебель', '&lt;svg width=&quot;46&quot; height=&quot;46&quot;&gt;\r\n  &lt;use xlink:href=&quot;catalog/view/theme/kazmebel/sprite/sprite.svg#mebel-5&quot;&gt;&lt;/use&gt;\r\n&lt;/svg&gt;', 'Металлическая мебель', '', ''),
(65, 2, 'Metal furniture', '&lt;svg width=&quot;46&quot; height=&quot;46&quot;&gt;\r\n  &lt;use xlink:href=&quot;./sprite/sprite.svg#mebel-5&quot;&gt;&lt;/use&gt;\r\n&lt;/svg&gt;', 'Metal furniture', '', ''),
(59, 1, 'Мягкая мебель', '&lt;svg width=&quot;46&quot; height=&quot;34&quot;&gt;\r\n  &lt;use xlink:href=&quot;catalog/view/theme/kazmebel/sprite/sprite.svg#mebel-1&quot;&gt;&lt;/use&gt;\r\n&lt;/svg&gt;', 'Мягкая мебель', '', ''),
(59, 2, 'Soft furniture', '', 'Soft furniture', '', ''),
(63, 1, 'Декорации', '&lt;svg width=&quot;29&quot; height=&quot;46&quot;&gt;\r\n  &lt;use xlink:href=&quot;catalog/view/theme/kazmebel/sprite/sprite.svg#mebel-3&quot;&gt;&lt;/use&gt;\r\n&lt;/svg&gt;', 'Декорации', '', ''),
(62, 1, 'Офисная мебель', '&lt;svg width=&quot;35&quot; height=&quot;46&quot;&gt;\r\n  &lt;use xlink:href=&quot;catalog/view/theme/kazmebel/sprite/sprite.svg#mebel-2&quot;&gt;&lt;/use&gt;\r\n&lt;/svg&gt;', 'Офисная мебель', '', ''),
(62, 2, 'Office furniture', '&lt;svg width=&quot;35&quot; height=&quot;46&quot;&gt;\r\n  &lt;use xlink:href=&quot;./sprite/sprite.svg#mebel-2&quot;&gt;&lt;/use&gt;\r\n&lt;/svg&gt;', 'Office furniture', '', ''),
(66, 2, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories', '', ''),
(63, 2, 'Decors', '', 'Decors', '', ''),
(66, 1, 'Аксессуары', '&lt;svg width=&quot;22&quot; height=&quot;46&quot;&gt;\r\n  &lt;use xlink:href=&quot;catalog/view/theme/kazmebel/sprite/sprite.svg#mebel-6&quot;&gt;&lt;/use&gt;\r\n&lt;/svg&gt;', 'Аксессуары', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(59, 59, 0),
(66, 66, 0),
(65, 65, 0),
(64, 64, 0),
(63, 63, 0),
(62, 62, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(59, 0, 0),
(63, 0, 0),
(62, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(59, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(20, 'Белоруссия (Беларусь)', 'BY', 'BLR', '', 0, 1),
(80, 'Грузия', 'GE', 'GEO', '', 0, 1),
(109, 'Казахстан', 'KZ', 'KAZ', '', 0, 1),
(115, 'Киргизия (Кыргызстан)', 'KG', 'KGZ', '', 0, 1),
(176, 'Российская Федерация', 'RU', 'RUS', '', 0, 1),
(220, 'Украина', 'UA', 'UKR', '', 0, 1),
(226, 'Узбекистан', 'UZ', 'UZB', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Тенге', 'KZT', '', ' Т', '0', 1.00000000, 1, '2019-09-09 03:51:04');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`, `image`) VALUES
(1, 1, 0, 1, 'Имяй', 'Фамилия', 'k2liks@mail.ru', '8 (777) 777-77-77', '', '20f76228fb97a561adaa8e4c15b323d4ea47e1ae', 'fGU7LPmMG', NULL, NULL, 0, 0, '{\"2\":\"09\\/23\\/2019\",\"1\":\"1\",\"4\":\"31\",\"5\":\"\\u0433. \\u0423\\u0440\\u0430\\u043b\\u044c\\u0441\\u043a\"}', '127.0.0.1', 1, 0, '', '', '2019-08-30 19:16:06', ''),
(2, 1, 0, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '0809eeef70106a1fbc4dd273b8108f0fe1994ccf', 'NuqSAmEck', NULL, NULL, 0, 1, '', '127.0.0.1', 1, 0, '', '', '2019-09-03 16:55:36', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '127.0.0.1', '2019-08-30 19:16:09'),
(2, 2, '127.0.0.1', '2019-09-03 16:55:55');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'tulegen@puzzle.kz', '127.0.0.1', 3, '2019-08-26 11:18:05', '2019-08-26 11:18:56'),
(2, 'admin', '127.0.0.1', 5, '2019-08-30 07:19:38', '2019-09-06 04:04:01'),
(3, '7777777', '127.0.0.1', 1, '2019-09-02 04:36:06', '2019-09-02 04:36:06');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(2, 66, '2019-09-05 12:28:34'),
(1, 67, '2019-09-05 12:23:55');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_custom_field`
--

INSERT INTO `oc_custom_field` (`custom_field_id`, `type`, `value`, `validation`, `location`, `status`, `sort_order`) VALUES
(1, 'select', '', '', 'account', 1, 2),
(2, 'date', '', '', 'account', 1, 1),
(5, 'text', '', '', 'account', 1, 4),
(4, 'select', '', '', 'account', 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_custom_field_customer_group`
--

INSERT INTO `oc_custom_field_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES
(2, 1, 0),
(1, 1, 0),
(5, 1, 0),
(4, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_custom_field_description`
--

INSERT INTO `oc_custom_field_description` (`custom_field_id`, `language_id`, `name`) VALUES
(1, 1, 'Пол'),
(2, 1, 'Дата рождения'),
(4, 1, 'Город'),
(5, 1, 'Адрес'),
(2, 2, 'Date of birth'),
(1, 2, 'Gender'),
(4, 2, 'City'),
(5, 2, 'Address');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_custom_field_value`
--

INSERT INTO `oc_custom_field_value` (`custom_field_value_id`, `custom_field_id`, `sort_order`) VALUES
(1, 1, 0),
(2, 1, 0),
(38, 4, 0),
(20, 4, 0),
(21, 4, 0),
(22, 4, 0),
(23, 4, 0),
(24, 4, 0),
(25, 4, 0),
(26, 4, 0),
(27, 4, 0),
(28, 4, 0),
(29, 4, 0),
(30, 4, 0),
(31, 4, 0),
(32, 4, 0),
(33, 4, 0),
(34, 4, 0),
(35, 4, 0),
(36, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_custom_field_value_description`
--

INSERT INTO `oc_custom_field_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES
(1, 1, 1, 'Мужской'),
(2, 2, 1, 'Female'),
(2, 1, 1, 'Женский'),
(38, 2, 4, 'Nur-Sultan'),
(38, 1, 4, 'Нур-Султан'),
(20, 2, 4, 'Aksay'),
(20, 1, 4, 'Аксай'),
(21, 2, 4, 'Aktau'),
(21, 1, 4, 'Актау'),
(22, 2, 4, 'Aktobe'),
(22, 1, 4, 'Актобе'),
(23, 2, 4, 'Almaty'),
(23, 1, 4, 'Алматы'),
(24, 2, 4, 'Atyrau'),
(24, 1, 4, 'Атырау'),
(25, 2, 4, 'Baikonur'),
(25, 1, 4, 'Байконур'),
(1, 2, 1, 'Male'),
(26, 2, 4, 'Zhezkazgan'),
(26, 1, 4, 'Жезказган'),
(27, 2, 4, 'Kokshetau'),
(27, 1, 4, 'Кокшетау'),
(28, 2, 4, 'Kostanay'),
(28, 1, 4, 'Костанай'),
(29, 2, 4, 'Kyzylorda'),
(29, 1, 4, 'Кызылорда'),
(30, 2, 4, 'Pavlodar'),
(30, 1, 4, 'Павлодар'),
(31, 2, 4, 'Petropavlovsk'),
(31, 1, 4, 'Петропавловск'),
(32, 2, 4, 'Semey'),
(32, 1, 4, 'Семей'),
(33, 2, 4, 'Taraz'),
(33, 1, 4, 'Тараз'),
(34, 2, 4, 'Uralsk'),
(34, 1, 4, 'Уральск'),
(35, 2, 4, 'Shymkent'),
(35, 1, 4, 'Шымкент'),
(36, 2, 4, 'Ekibastuz'),
(36, 1, 4, 'Экибастуз');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_download`
--

INSERT INTO `oc_download` (`download_id`, `filename`, `mask`, `date_added`) VALUES
(1, 'texture.jpg.utTbHtADV1XtjupYfseXmMLy9Y3z5pJB', 'texture.jpg', '2019-08-30 10:23:42'),
(2, 'card.svg.XuPMWiQcSE6N7olDnNbaw7pXL6I6UaT9', 'card.svg', '2019-08-30 13:15:25');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_download_description`
--

INSERT INTO `oc_download_description` (`download_id`, `language_id`, `name`) VALUES
(1, 1, 'Файл на скачивание'),
(1, 2, 'Download file'),
(2, 1, 'Загрузка'),
(2, 2, 'Download');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'd_blog_module', 'admin/view/common/column_left/before', 'extension/event/d_blog_module/view_common_column_left_before', 1, 0),
(35, 'd_blog_module', 'admin/view/setting/setting/before', 'extension/event/d_blog_module/view_setting_setting_captcha_before', 1, 0),
(36, 'd_blog_module', 'catalog/view/common/header/before', 'extension/event/d_blog_module/view_common_header_before', 1, 0),
(37, 'd_blog_module', 'catalog/view/common/menu/before', 'extension/event/d_blog_module/view_common_menu_before', 1, 0),
(38, 'd_blog_module', 'catalog/model/extension/module/d_visual_designer/getOptions/after', 'extension/event/d_blog_module/controller_after_d_visual_designer_menu', 1, 0),
(39, 'd_blog_module', 'admin/model/localisation/language/addLanguage/after', 'extension/event/d_blog_module/model_localisation_language_addLanguage_after', 1, 0),
(40, 'd_blog_module', 'admin/model/localisation/language/deleteLanguage/after', 'extension/event/d_blog_module/model_localisation_language_deleteLanguage_after', 1, 0),
(41, 'd_blog_module', 'catalog/model/design/layout/getLayout/after', 'extension/event/d_blog_module/model_design_layout_getLayout_after', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'module', 'special'),
(43, 'module', 'information'),
(45, 'module', 'd_blog_module'),
(46, 'module', 'html'),
(47, 'module', 'filter'),
(48, 'theme', 'kazmebel');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(4, 0, 'dblogmodulecompiledoc3v3.1.5.ocmod.zip', '2019-08-27 16:38:01');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(40, 4, 'admin/language/english', '2019-08-27 16:38:14'),
(41, 4, 'catalog/language/english', '2019-08-27 16:38:14'),
(42, 4, 'image/catalog/d_blog_module', '2019-08-27 16:38:14'),
(43, 4, 'image/catalog/d_visual_designer', '2019-08-27 16:38:14'),
(44, 4, 'system/config/d_ajax_search', '2019-08-27 16:38:14'),
(45, 4, 'system/config/d_blog_module.php', '2019-08-27 16:38:14'),
(46, 4, 'system/config/d_blog_module_demo', '2019-08-27 16:38:14'),
(47, 4, 'system/config/d_blog_module_layout', '2019-08-27 16:38:14'),
(48, 4, 'system/config/d_event_manager.php', '2019-08-27 16:38:14'),
(49, 4, 'system/config/d_visual_designer', '2019-08-27 16:38:14'),
(50, 4, 'system/config/d_visual_designer_route', '2019-08-27 16:38:14'),
(51, 4, 'system/library/d_shopunity', '2019-08-27 16:38:14'),
(52, 4, 'system/library/d_simple_html_dom.php', '2019-08-27 16:38:14'),
(53, 4, 'admin/controller/extension/d_ajax_search', '2019-08-27 16:38:14'),
(54, 4, 'admin/controller/extension/d_blog_module', '2019-08-27 16:38:14'),
(55, 4, 'admin/controller/extension/d_visual_designer_module', '2019-08-27 16:38:14'),
(56, 4, 'admin/controller/extension/event', '2019-08-27 16:38:14'),
(57, 4, 'admin/language/english/extension', '2019-08-27 16:38:14'),
(58, 4, 'admin/model/extension/d_admin_style', '2019-08-27 16:38:14'),
(59, 4, 'admin/model/extension/d_blog_module', '2019-08-27 16:38:14'),
(60, 4, 'admin/model/extension/d_opencart_patch', '2019-08-27 16:38:14'),
(61, 4, 'admin/model/extension/d_visual_designer_module', '2019-08-27 16:38:14'),
(62, 4, 'admin/model/extension/module', '2019-08-27 16:38:14'),
(63, 4, 'admin/view/image/d_admin_style', '2019-08-27 16:38:14'),
(64, 4, 'admin/view/image/d_blog_module', '2019-08-27 16:38:14'),
(65, 4, 'admin/view/javascript/d_admin_style', '2019-08-27 16:38:14'),
(66, 4, 'admin/view/javascript/d_bootstrap_bootbox', '2019-08-27 16:38:14'),
(67, 4, 'admin/view/javascript/d_bootstrap_colorpicker', '2019-08-27 16:38:14'),
(68, 4, 'admin/view/javascript/d_bootstrap_rating', '2019-08-27 16:38:14'),
(69, 4, 'admin/view/javascript/d_bootstrap_switch', '2019-08-27 16:38:14'),
(70, 4, 'admin/view/javascript/d_fileinput', '2019-08-27 16:38:14'),
(71, 4, 'admin/view/javascript/d_rubaxa_sortable', '2019-08-27 16:38:14'),
(72, 4, 'admin/view/javascript/d_tinysort', '2019-08-27 16:38:14'),
(73, 4, 'admin/view/stylesheet/d_admin_style', '2019-08-27 16:38:14'),
(74, 4, 'admin/view/stylesheet/d_bootstrap_extra', '2019-08-27 16:38:14'),
(75, 4, 'catalog/controller/extension/d_blog_module', '2019-08-27 16:38:14'),
(76, 4, 'catalog/controller/extension/d_visual_designer_module', '2019-08-27 16:38:14'),
(77, 4, 'catalog/controller/extension/event', '2019-08-27 16:38:14'),
(78, 4, 'catalog/language/english/extension', '2019-08-27 16:38:14'),
(79, 4, 'catalog/model/extension/d_blog_module', '2019-08-27 16:38:14'),
(80, 4, 'catalog/model/extension/d_opencart_patch', '2019-08-27 16:38:14'),
(81, 4, 'catalog/model/extension/d_visual_designer_module', '2019-08-27 16:38:14'),
(82, 4, 'catalog/view/javascript/d_blog_module', '2019-08-27 16:38:14'),
(83, 4, 'catalog/view/javascript/d_bootstrap_bootbox', '2019-08-27 16:38:14'),
(84, 4, 'catalog/view/javascript/d_bootstrap_colorpicker', '2019-08-27 16:38:14'),
(85, 4, 'catalog/view/javascript/d_bootstrap_rating', '2019-08-27 16:38:14'),
(86, 4, 'catalog/view/javascript/d_bootstrap_switch', '2019-08-27 16:38:14'),
(87, 4, 'catalog/view/javascript/d_fileinput', '2019-08-27 16:38:14'),
(88, 4, 'catalog/view/javascript/d_rubaxa_sortable', '2019-08-27 16:38:14'),
(89, 4, 'catalog/view/javascript/d_tinysort', '2019-08-27 16:38:14'),
(90, 4, 'image/catalog/d_blog_module/category', '2019-08-27 16:38:14'),
(91, 4, 'image/catalog/d_blog_module/no_profile_image.png', '2019-08-27 16:38:14'),
(92, 4, 'image/catalog/d_blog_module/post', '2019-08-27 16:38:14'),
(93, 4, 'image/catalog/d_blog_module/review', '2019-08-27 16:38:14'),
(94, 4, 'image/catalog/d_visual_designer/blog_post.svg', '2019-08-27 16:38:14'),
(95, 4, 'system/config/d_ajax_search/blog.php', '2019-08-27 16:38:14'),
(96, 4, 'system/config/d_blog_module_demo/d_blog_module.php', '2019-08-27 16:38:14'),
(97, 4, 'system/config/d_blog_module_demo/d_blog_module.sql', '2019-08-27 16:38:14'),
(98, 4, 'system/config/d_blog_module_layout/grid.php', '2019-08-27 16:38:14'),
(99, 4, 'system/config/d_visual_designer/blog_post.php', '2019-08-27 16:38:14'),
(100, 4, 'system/config/d_visual_designer_route/d_blog_module_author.php', '2019-08-27 16:38:14'),
(101, 4, 'system/config/d_visual_designer_route/d_blog_module_category.php', '2019-08-27 16:38:14'),
(102, 4, 'system/config/d_visual_designer_route/d_blog_module_post.php', '2019-08-27 16:38:14'),
(103, 4, 'system/library/d_shopunity/extension', '2019-08-27 16:38:14'),
(104, 4, 'system/library/d_shopunity/install', '2019-08-27 16:38:14'),
(105, 4, 'system/library/d_shopunity/readme', '2019-08-27 16:38:14'),
(106, 4, 'admin/controller/extension/d_ajax_search/blog.php', '2019-08-27 16:38:14'),
(107, 4, 'admin/controller/extension/d_blog_module/author.php', '2019-08-27 16:38:14'),
(108, 4, 'admin/controller/extension/d_blog_module/author_group.php', '2019-08-27 16:38:14'),
(109, 4, 'admin/controller/extension/d_blog_module/category.php', '2019-08-27 16:38:14'),
(110, 4, 'admin/controller/extension/d_blog_module/post.php', '2019-08-27 16:38:14'),
(111, 4, 'admin/controller/extension/d_blog_module/review.php', '2019-08-27 16:38:14'),
(112, 4, 'admin/controller/extension/d_visual_designer_module/blog_post.php', '2019-08-27 16:38:14'),
(113, 4, 'admin/controller/extension/event/d_blog_module.php', '2019-08-27 16:38:14'),
(114, 4, 'admin/controller/extension/module/d_blog_module.php', '2019-08-27 16:38:14'),
(115, 4, 'admin/language/en-gb/extension/d_admin_style', '2019-08-27 16:38:14'),
(116, 4, 'admin/language/en-gb/extension/d_blog_module', '2019-08-27 16:38:14'),
(117, 4, 'admin/language/en-gb/extension/d_visual_designer_module', '2019-08-27 16:38:14'),
(118, 4, 'admin/language/en-gb/extension/event', '2019-08-27 16:38:14'),
(119, 4, 'admin/language/english/extension/d_visual_designer_module', '2019-08-27 16:38:14'),
(120, 4, 'admin/model/extension/d_admin_style/style.php', '2019-08-27 16:38:14'),
(121, 4, 'admin/model/extension/d_blog_module/author.php', '2019-08-27 16:38:14'),
(122, 4, 'admin/model/extension/d_blog_module/author_group.php', '2019-08-27 16:38:14'),
(123, 4, 'admin/model/extension/d_blog_module/category.php', '2019-08-27 16:38:14'),
(124, 4, 'admin/model/extension/d_blog_module/post.php', '2019-08-27 16:38:14'),
(125, 4, 'admin/model/extension/d_blog_module/review.php', '2019-08-27 16:38:14'),
(126, 4, 'admin/model/extension/d_opencart_patch/cache.php', '2019-08-27 16:38:14'),
(127, 4, 'admin/model/extension/d_opencart_patch/event.php', '2019-08-27 16:38:14'),
(128, 4, 'admin/model/extension/d_opencart_patch/extension.php', '2019-08-27 16:38:14'),
(129, 4, 'admin/model/extension/d_opencart_patch/load.php', '2019-08-27 16:38:14'),
(130, 4, 'admin/model/extension/d_opencart_patch/modification.php', '2019-08-27 16:38:14'),
(131, 4, 'admin/model/extension/d_opencart_patch/module.php', '2019-08-27 16:38:14'),
(132, 4, 'admin/model/extension/d_opencart_patch/setting.php', '2019-08-27 16:38:14'),
(133, 4, 'admin/model/extension/d_opencart_patch/store.php', '2019-08-27 16:38:14'),
(134, 4, 'admin/model/extension/d_opencart_patch/url.php', '2019-08-27 16:38:14'),
(135, 4, 'admin/model/extension/d_opencart_patch/user.php', '2019-08-27 16:38:14'),
(136, 4, 'admin/model/extension/d_opencart_patch/vqmod.php', '2019-08-27 16:38:14'),
(137, 4, 'admin/model/extension/d_visual_designer_module/blog_post.php', '2019-08-27 16:38:14'),
(138, 4, 'admin/model/extension/module/d_blog_module.php', '2019-08-27 16:38:14'),
(139, 4, 'admin/model/extension/module/d_event_manager.php', '2019-08-27 16:38:14'),
(140, 4, 'admin/model/extension/module/d_twig_manager.php', '2019-08-27 16:38:14'),
(141, 4, 'admin/view/image/d_admin_style/checkmark.png', '2019-08-27 16:38:14'),
(142, 4, 'admin/view/image/d_admin_style/checkmark.svg', '2019-08-27 16:38:14'),
(143, 4, 'admin/view/image/d_blog_module/awesome_layout_d_blog_module.svg', '2019-08-27 16:38:14'),
(144, 4, 'admin/view/image/d_blog_module/bg.svg', '2019-08-27 16:38:14'),
(145, 4, 'admin/view/image/d_blog_module/dozens_d_blog_module.svg', '2019-08-27 16:38:14'),
(146, 4, 'admin/view/image/d_blog_module/fullstack_d_blog_module.svg', '2019-08-27 16:38:14'),
(147, 4, 'admin/view/image/d_blog_module/main_icon_d_blog_module.svg', '2019-08-27 16:38:15'),
(148, 4, 'admin/view/image/d_blog_module/powerful_d_blog_module.svg', '2019-08-27 16:38:15'),
(149, 4, 'admin/view/image/d_blog_module/welcome.jpg', '2019-08-27 16:38:15'),
(150, 4, 'admin/view/image/d_blog_module/welcome.png', '2019-08-27 16:38:15'),
(151, 4, 'admin/view/javascript/d_admin_style/gulp', '2019-08-27 16:38:15'),
(152, 4, 'admin/view/javascript/d_bootstrap_bootbox/bootbox.js', '2019-08-27 16:38:15'),
(153, 4, 'admin/view/javascript/d_bootstrap_bootbox/bootbox.min.js', '2019-08-27 16:38:15'),
(154, 4, 'admin/view/javascript/d_bootstrap_colorpicker/css', '2019-08-27 16:38:15'),
(155, 4, 'admin/view/javascript/d_bootstrap_colorpicker/img', '2019-08-27 16:38:15'),
(156, 4, 'admin/view/javascript/d_bootstrap_colorpicker/js', '2019-08-27 16:38:15'),
(157, 4, 'admin/view/javascript/d_bootstrap_rating/bootstrap-rating.css', '2019-08-27 16:38:15'),
(158, 4, 'admin/view/javascript/d_bootstrap_rating/bootstrap-rating.js', '2019-08-27 16:38:15'),
(159, 4, 'admin/view/javascript/d_bootstrap_rating/bootstrap-rating.min.js', '2019-08-27 16:38:15'),
(160, 4, 'admin/view/javascript/d_bootstrap_switch/css', '2019-08-27 16:38:15'),
(161, 4, 'admin/view/javascript/d_bootstrap_switch/js', '2019-08-27 16:38:15'),
(162, 4, 'admin/view/javascript/d_fileinput/CHANGE.md', '2019-08-27 16:38:15'),
(163, 4, 'admin/view/javascript/d_fileinput/LICENSE.md', '2019-08-27 16:38:15'),
(164, 4, 'admin/view/javascript/d_fileinput/bower.json', '2019-08-27 16:38:15'),
(165, 4, 'admin/view/javascript/d_fileinput/canvas-to-blob.js', '2019-08-27 16:38:15'),
(166, 4, 'admin/view/javascript/d_fileinput/composer.json', '2019-08-27 16:38:15'),
(167, 4, 'admin/view/javascript/d_fileinput/css', '2019-08-27 16:38:15'),
(168, 4, 'admin/view/javascript/d_fileinput/examples', '2019-08-27 16:38:15'),
(169, 4, 'admin/view/javascript/d_fileinput/fileinput.css', '2019-08-27 16:38:15'),
(170, 4, 'admin/view/javascript/d_fileinput/fileinput.js', '2019-08-27 16:38:15'),
(171, 4, 'admin/view/javascript/d_fileinput/img', '2019-08-27 16:38:15'),
(172, 4, 'admin/view/javascript/d_fileinput/js', '2019-08-27 16:38:15'),
(173, 4, 'admin/view/javascript/d_fileinput/nuget', '2019-08-27 16:38:15'),
(174, 4, 'admin/view/javascript/d_fileinput/package.json', '2019-08-27 16:38:15'),
(175, 4, 'admin/view/javascript/d_fileinput/sass', '2019-08-27 16:38:15'),
(176, 4, 'admin/view/javascript/d_fileinput/themes', '2019-08-27 16:38:15'),
(177, 4, 'admin/view/javascript/d_rubaxa_sortable/jquery.binding.js', '2019-08-27 16:38:15'),
(178, 4, 'admin/view/javascript/d_rubaxa_sortable/knockout-sortable.js', '2019-08-27 16:38:15'),
(179, 4, 'admin/view/javascript/d_rubaxa_sortable/ng-sortable.js', '2019-08-27 16:38:15'),
(180, 4, 'admin/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js', '2019-08-27 16:38:15'),
(181, 4, 'admin/view/javascript/d_rubaxa_sortable/sortable.css', '2019-08-27 16:38:15'),
(182, 4, 'admin/view/javascript/d_rubaxa_sortable/sortable.js', '2019-08-27 16:38:15'),
(183, 4, 'admin/view/javascript/d_rubaxa_sortable/sortable.min.js', '2019-08-27 16:38:15'),
(184, 4, 'admin/view/javascript/d_tinysort/jquery.tinysort.js', '2019-08-27 16:38:15'),
(185, 4, 'admin/view/javascript/d_tinysort/jquery.tinysort.min.js', '2019-08-27 16:38:15'),
(186, 4, 'admin/view/javascript/d_tinysort/tinysort.charorder.js', '2019-08-27 16:38:15'),
(187, 4, 'admin/view/javascript/d_tinysort/tinysort.charorder.min.js', '2019-08-27 16:38:15'),
(188, 4, 'admin/view/javascript/d_tinysort/tinysort.js', '2019-08-27 16:38:15'),
(189, 4, 'admin/view/javascript/d_tinysort/tinysort.min.js', '2019-08-27 16:38:15'),
(190, 4, 'admin/view/stylesheet/d_admin_style/core', '2019-08-27 16:38:15'),
(191, 4, 'admin/view/stylesheet/d_admin_style/themes', '2019-08-27 16:38:15'),
(192, 4, 'admin/view/stylesheet/d_bootstrap_extra/bootstrap.css', '2019-08-27 16:38:15'),
(193, 4, 'admin/view/template/extension/d_admin_style', '2019-08-27 16:38:15'),
(194, 4, 'admin/view/template/extension/d_blog_module', '2019-08-27 16:38:15'),
(195, 4, 'admin/view/template/extension/d_visual_designer', '2019-08-27 16:38:15'),
(196, 4, 'admin/view/template/extension/event', '2019-08-27 16:38:15'),
(197, 4, 'catalog/controller/extension/d_blog_module/author.php', '2019-08-27 16:38:15'),
(198, 4, 'catalog/controller/extension/d_blog_module/category.php', '2019-08-27 16:38:15'),
(199, 4, 'catalog/controller/extension/d_blog_module/post.php', '2019-08-27 16:38:15'),
(200, 4, 'catalog/controller/extension/d_blog_module/review.php', '2019-08-27 16:38:15'),
(201, 4, 'catalog/controller/extension/d_blog_module/search.php', '2019-08-27 16:38:15'),
(202, 4, 'catalog/controller/extension/d_visual_designer_module/blog_post.php', '2019-08-27 16:38:15'),
(203, 4, 'catalog/controller/extension/event/d_blog_module.php', '2019-08-27 16:38:15'),
(204, 4, 'catalog/language/en-gb/extension/d_blog_module', '2019-08-27 16:38:15'),
(205, 4, 'catalog/language/en-gb/extension/d_visual_designer_module', '2019-08-27 16:38:15'),
(206, 4, 'catalog/language/en-gb/extension/event', '2019-08-27 16:38:15'),
(207, 4, 'catalog/language/english/extension/d_visual_designer_module', '2019-08-27 16:38:15'),
(208, 4, 'catalog/model/extension/d_blog_module/author.php', '2019-08-27 16:38:15'),
(209, 4, 'catalog/model/extension/d_blog_module/category.php', '2019-08-27 16:38:15'),
(210, 4, 'catalog/model/extension/d_blog_module/post.php', '2019-08-27 16:38:15'),
(211, 4, 'catalog/model/extension/d_blog_module/review.php', '2019-08-27 16:38:15'),
(212, 4, 'catalog/model/extension/d_opencart_patch/load.php', '2019-08-27 16:38:15'),
(213, 4, 'catalog/model/extension/d_opencart_patch/user.php', '2019-08-27 16:38:15'),
(214, 4, 'catalog/model/extension/d_visual_designer_module/blog_post.php', '2019-08-27 16:38:15'),
(215, 4, 'catalog/model/extension/module/d_blog_module.php', '2019-08-27 16:38:15'),
(216, 4, 'catalog/view/javascript/d_blog_module/gulpfile.js', '2019-08-27 16:38:15'),
(217, 4, 'catalog/view/javascript/d_bootstrap_bootbox/bootbox.js', '2019-08-27 16:38:15'),
(218, 4, 'catalog/view/javascript/d_bootstrap_bootbox/bootbox.min.js', '2019-08-27 16:38:15'),
(219, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/css', '2019-08-27 16:38:15'),
(220, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/img', '2019-08-27 16:38:15'),
(221, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/js', '2019-08-27 16:38:15'),
(222, 4, 'catalog/view/javascript/d_bootstrap_rating/bootstrap-rating.css', '2019-08-27 16:38:15'),
(223, 4, 'catalog/view/javascript/d_bootstrap_rating/bootstrap-rating.js', '2019-08-27 16:38:15'),
(224, 4, 'catalog/view/javascript/d_bootstrap_rating/bootstrap-rating.min.js', '2019-08-27 16:38:15'),
(225, 4, 'catalog/view/javascript/d_bootstrap_switch/css', '2019-08-27 16:38:15'),
(226, 4, 'catalog/view/javascript/d_bootstrap_switch/js', '2019-08-27 16:38:15'),
(227, 4, 'catalog/view/javascript/d_fileinput/CHANGE.md', '2019-08-27 16:38:15'),
(228, 4, 'catalog/view/javascript/d_fileinput/LICENSE.md', '2019-08-27 16:38:15'),
(229, 4, 'catalog/view/javascript/d_fileinput/bower.json', '2019-08-27 16:38:15'),
(230, 4, 'catalog/view/javascript/d_fileinput/canvas-to-blob.js', '2019-08-27 16:38:15'),
(231, 4, 'catalog/view/javascript/d_fileinput/composer.json', '2019-08-27 16:38:15'),
(232, 4, 'catalog/view/javascript/d_fileinput/css', '2019-08-27 16:38:15'),
(233, 4, 'catalog/view/javascript/d_fileinput/examples', '2019-08-27 16:38:15'),
(234, 4, 'catalog/view/javascript/d_fileinput/fileinput.css', '2019-08-27 16:38:15'),
(235, 4, 'catalog/view/javascript/d_fileinput/fileinput.js', '2019-08-27 16:38:15'),
(236, 4, 'catalog/view/javascript/d_fileinput/img', '2019-08-27 16:38:15'),
(237, 4, 'catalog/view/javascript/d_fileinput/js', '2019-08-27 16:38:15'),
(238, 4, 'catalog/view/javascript/d_fileinput/nuget', '2019-08-27 16:38:15'),
(239, 4, 'catalog/view/javascript/d_fileinput/package.json', '2019-08-27 16:38:15'),
(240, 4, 'catalog/view/javascript/d_fileinput/sass', '2019-08-27 16:38:15'),
(241, 4, 'catalog/view/javascript/d_fileinput/themes', '2019-08-27 16:38:15'),
(242, 4, 'catalog/view/javascript/d_rubaxa_sortable/jquery.binding.js', '2019-08-27 16:38:15'),
(243, 4, 'catalog/view/javascript/d_rubaxa_sortable/knockout-sortable.js', '2019-08-27 16:38:15'),
(244, 4, 'catalog/view/javascript/d_rubaxa_sortable/ng-sortable.js', '2019-08-27 16:38:15'),
(245, 4, 'catalog/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js', '2019-08-27 16:38:15'),
(246, 4, 'catalog/view/javascript/d_rubaxa_sortable/sortable.css', '2019-08-27 16:38:15'),
(247, 4, 'catalog/view/javascript/d_rubaxa_sortable/sortable.js', '2019-08-27 16:38:15'),
(248, 4, 'catalog/view/javascript/d_rubaxa_sortable/sortable.min.js', '2019-08-27 16:38:15'),
(249, 4, 'catalog/view/javascript/d_tinysort/jquery.tinysort.js', '2019-08-27 16:38:15'),
(250, 4, 'catalog/view/javascript/d_tinysort/jquery.tinysort.min.js', '2019-08-27 16:38:15'),
(251, 4, 'catalog/view/javascript/d_tinysort/tinysort.charorder.js', '2019-08-27 16:38:15'),
(252, 4, 'catalog/view/javascript/d_tinysort/tinysort.charorder.min.js', '2019-08-27 16:38:15'),
(253, 4, 'catalog/view/javascript/d_tinysort/tinysort.js', '2019-08-27 16:38:15'),
(254, 4, 'catalog/view/javascript/d_tinysort/tinysort.min.js', '2019-08-27 16:38:15'),
(255, 4, 'catalog/view/theme/default/javascript', '2019-08-27 16:38:15'),
(256, 4, 'image/catalog/d_blog_module/category/Photo_blog_11.jpg', '2019-08-27 16:38:15'),
(257, 4, 'image/catalog/d_blog_module/category/Photo_blog_12.jpg', '2019-08-27 16:38:15'),
(258, 4, 'image/catalog/d_blog_module/category/Photo_blog_13.jpg', '2019-08-27 16:38:15'),
(259, 4, 'image/catalog/d_blog_module/category/Photo_blog_14.jpg', '2019-08-27 16:38:15'),
(260, 4, 'image/catalog/d_blog_module/category/Photo_blog_15.jpg', '2019-08-27 16:38:15'),
(261, 4, 'image/catalog/d_blog_module/category/Photo_blog_16.jpg', '2019-08-27 16:38:15'),
(262, 4, 'image/catalog/d_blog_module/category/Photo_blog_17.jpg', '2019-08-27 16:38:15'),
(263, 4, 'image/catalog/d_blog_module/category/blog.jpg', '2019-08-27 16:38:15'),
(264, 4, 'image/catalog/d_blog_module/post/Photo_blog_1.jpg', '2019-08-27 16:38:15'),
(265, 4, 'image/catalog/d_blog_module/post/Photo_blog_10.jpg', '2019-08-27 16:38:15'),
(266, 4, 'image/catalog/d_blog_module/post/Photo_blog_2.jpg', '2019-08-27 16:38:15'),
(267, 4, 'image/catalog/d_blog_module/post/Photo_blog_3.jpg', '2019-08-27 16:38:15'),
(268, 4, 'image/catalog/d_blog_module/post/Photo_blog_4.jpg', '2019-08-27 16:38:15'),
(269, 4, 'image/catalog/d_blog_module/post/Photo_blog_5.jpg', '2019-08-27 16:38:15'),
(270, 4, 'image/catalog/d_blog_module/post/Photo_blog_6.jpg', '2019-08-27 16:38:15'),
(271, 4, 'image/catalog/d_blog_module/post/Photo_blog_7.jpg', '2019-08-27 16:38:15'),
(272, 4, 'image/catalog/d_blog_module/post/Photo_blog_8.jpg', '2019-08-27 16:38:15'),
(273, 4, 'image/catalog/d_blog_module/post/Photo_blog_9.jpg', '2019-08-27 16:38:15'),
(274, 4, 'image/catalog/d_blog_module/post/post-1.jpg', '2019-08-27 16:38:15'),
(275, 4, 'image/catalog/d_blog_module/review/index.html', '2019-08-27 16:38:15'),
(276, 4, 'system/library/d_shopunity/extension/d_admin_style.json', '2019-08-27 16:38:15'),
(277, 4, 'system/library/d_shopunity/extension/d_blog_module.json', '2019-08-27 16:38:15'),
(278, 4, 'system/library/d_shopunity/extension/d_bootstrap_bootbox.json', '2019-08-27 16:38:15'),
(279, 4, 'system/library/d_shopunity/extension/d_bootstrap_colorpicker.json', '2019-08-27 16:38:15'),
(280, 4, 'system/library/d_shopunity/extension/d_bootstrap_extra.json', '2019-08-27 16:38:15'),
(281, 4, 'system/library/d_shopunity/extension/d_bootstrap_rating.json', '2019-08-27 16:38:15'),
(282, 4, 'system/library/d_shopunity/extension/d_bootstrap_switch.json', '2019-08-27 16:38:15'),
(283, 4, 'system/library/d_shopunity/extension/d_event_manager.json', '2019-08-27 16:38:15'),
(284, 4, 'system/library/d_shopunity/extension/d_fileinput.json', '2019-08-27 16:38:15'),
(285, 4, 'system/library/d_shopunity/extension/d_opencart_patch.json', '2019-08-27 16:38:15'),
(286, 4, 'system/library/d_shopunity/extension/d_rubaxa_sortable.json', '2019-08-27 16:38:15'),
(287, 4, 'system/library/d_shopunity/extension/d_simple_html_dom.json', '2019-08-27 16:38:15'),
(288, 4, 'system/library/d_shopunity/extension/d_tinysort.json', '2019-08-27 16:38:15'),
(289, 4, 'system/library/d_shopunity/extension/d_twig_manager.json', '2019-08-27 16:38:15'),
(290, 4, 'system/library/d_shopunity/extension/d_twig_partial.json', '2019-08-27 16:38:15'),
(291, 4, 'system/library/d_shopunity/install/d_opencart_patch.xml', '2019-08-27 16:38:15'),
(292, 4, 'system/library/d_shopunity/install/d_twig_manager.xml', '2019-08-27 16:38:15'),
(293, 4, 'system/library/d_shopunity/readme/d_opencart_patch.md', '2019-08-27 16:38:15'),
(294, 4, 'admin/language/en-gb/extension/d_admin_style/style.php', '2019-08-27 16:38:15'),
(295, 4, 'admin/language/en-gb/extension/d_blog_module/author.php', '2019-08-27 16:38:15'),
(296, 4, 'admin/language/en-gb/extension/d_blog_module/author_group.php', '2019-08-27 16:38:15'),
(297, 4, 'admin/language/en-gb/extension/d_blog_module/category.php', '2019-08-27 16:38:15'),
(298, 4, 'admin/language/en-gb/extension/d_blog_module/post.php', '2019-08-27 16:38:15'),
(299, 4, 'admin/language/en-gb/extension/d_blog_module/review.php', '2019-08-27 16:38:15'),
(300, 4, 'admin/language/en-gb/extension/d_visual_designer_module/blog_post.php', '2019-08-27 16:38:15'),
(301, 4, 'admin/language/en-gb/extension/event/d_blog_module.php', '2019-08-27 16:38:15'),
(302, 4, 'admin/language/en-gb/extension/module/d_blog_module.php', '2019-08-27 16:38:15'),
(303, 4, 'admin/language/english/extension/d_visual_designer_module/blog_post.php', '2019-08-27 16:38:15'),
(304, 4, 'admin/view/javascript/d_admin_style/gulp/gulpfile.js', '2019-08-27 16:38:15'),
(305, 4, 'admin/view/javascript/d_admin_style/gulp/package-lock.json', '2019-08-27 16:38:15'),
(306, 4, 'admin/view/javascript/d_admin_style/gulp/package.json', '2019-08-27 16:38:15'),
(307, 4, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css', '2019-08-27 16:38:15'),
(308, 4, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css.map', '2019-08-27 16:38:15'),
(309, 4, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css', '2019-08-27 16:38:15'),
(310, 4, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css.map', '2019-08-27 16:38:15'),
(311, 4, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker', '2019-08-27 16:38:15'),
(312, 4, 'admin/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.js', '2019-08-27 16:38:15'),
(313, 4, 'admin/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.min.js', '2019-08-27 16:38:15'),
(314, 4, 'admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css', '2019-08-27 16:38:15'),
(315, 4, 'admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css', '2019-08-27 16:38:15'),
(316, 4, 'admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js', '2019-08-27 16:38:15'),
(317, 4, 'admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js', '2019-08-27 16:38:15'),
(318, 4, 'admin/view/javascript/d_fileinput/css/fileinput-rtl.css', '2019-08-27 16:38:15'),
(319, 4, 'admin/view/javascript/d_fileinput/css/fileinput-rtl.min.css', '2019-08-27 16:38:15'),
(320, 4, 'admin/view/javascript/d_fileinput/css/fileinput.css', '2019-08-27 16:38:15'),
(321, 4, 'admin/view/javascript/d_fileinput/css/fileinput.min.css', '2019-08-27 16:38:15'),
(322, 4, 'admin/view/javascript/d_fileinput/examples/index.html', '2019-08-27 16:38:15'),
(323, 4, 'admin/view/javascript/d_fileinput/img/loading-sm.gif', '2019-08-27 16:38:15'),
(324, 4, 'admin/view/javascript/d_fileinput/img/loading.gif', '2019-08-27 16:38:15'),
(325, 4, 'admin/view/javascript/d_fileinput/js/fileinput.js', '2019-08-27 16:38:15'),
(326, 4, 'admin/view/javascript/d_fileinput/js/fileinput.min.js', '2019-08-27 16:38:15'),
(327, 4, 'admin/view/javascript/d_fileinput/js/locales', '2019-08-27 16:38:15'),
(328, 4, 'admin/view/javascript/d_fileinput/js/plugins', '2019-08-27 16:38:15'),
(329, 4, 'admin/view/javascript/d_fileinput/nuget/Package.nuspec', '2019-08-27 16:38:15'),
(330, 4, 'admin/view/javascript/d_fileinput/nuget/build.bat', '2019-08-27 16:38:15'),
(331, 4, 'admin/view/javascript/d_fileinput/sass/fileinput.scss', '2019-08-27 16:38:15'),
(332, 4, 'admin/view/javascript/d_fileinput/themes/explorer', '2019-08-27 16:38:15'),
(333, 4, 'admin/view/javascript/d_fileinput/themes/explorer-fa', '2019-08-27 16:38:15'),
(334, 4, 'admin/view/javascript/d_fileinput/themes/fa', '2019-08-27 16:38:15'),
(335, 4, 'admin/view/javascript/d_fileinput/themes/gly', '2019-08-27 16:38:15'),
(336, 4, 'admin/view/stylesheet/d_admin_style/core/_blog.scss', '2019-08-27 16:38:15'),
(337, 4, 'admin/view/stylesheet/d_admin_style/core/_common.scss', '2019-08-27 16:38:15'),
(338, 4, 'admin/view/stylesheet/d_admin_style/core/_compatible.scss', '2019-08-27 16:38:15'),
(339, 4, 'admin/view/stylesheet/d_admin_style/core/_notification.scss', '2019-08-27 16:38:15'),
(340, 4, 'admin/view/stylesheet/d_admin_style/core/_tables.scss', '2019-08-27 16:38:15'),
(341, 4, 'admin/view/stylesheet/d_admin_style/core/core.css', '2019-08-27 16:38:15'),
(342, 4, 'admin/view/stylesheet/d_admin_style/core/core.css.map', '2019-08-27 16:38:15'),
(343, 4, 'admin/view/stylesheet/d_admin_style/core/core.scss', '2019-08-27 16:38:15'),
(344, 4, 'admin/view/stylesheet/d_admin_style/core/header', '2019-08-27 16:38:15'),
(345, 4, 'admin/view/stylesheet/d_admin_style/core/normalize', '2019-08-27 16:38:15'),
(346, 4, 'admin/view/stylesheet/d_admin_style/core/scss', '2019-08-27 16:38:15'),
(347, 4, 'admin/view/stylesheet/d_admin_style/core/setup.css', '2019-08-27 16:38:15'),
(348, 4, 'admin/view/stylesheet/d_admin_style/core/setup.css.map', '2019-08-27 16:38:15'),
(349, 4, 'admin/view/stylesheet/d_admin_style/core/setup.scss', '2019-08-27 16:38:15'),
(350, 4, 'admin/view/stylesheet/d_admin_style/core/svg', '2019-08-27 16:38:15'),
(351, 4, 'admin/view/stylesheet/d_admin_style/core/welcome.css', '2019-08-27 16:38:15'),
(352, 4, 'admin/view/stylesheet/d_admin_style/core/welcome.css.map', '2019-08-27 16:38:15'),
(353, 4, 'admin/view/stylesheet/d_admin_style/core/welcome.scss', '2019-08-27 16:38:15'),
(354, 4, 'admin/view/stylesheet/d_admin_style/themes/dark', '2019-08-27 16:38:15'),
(355, 4, 'admin/view/stylesheet/d_admin_style/themes/default', '2019-08-27 16:38:15'),
(356, 4, 'admin/view/stylesheet/d_admin_style/themes/light', '2019-08-27 16:38:15'),
(357, 4, 'admin/view/template/extension/d_admin_style/setup.twig', '2019-08-27 16:38:15'),
(358, 4, 'admin/view/template/extension/d_blog_module/author_form.twig', '2019-08-27 16:38:15'),
(359, 4, 'admin/view/template/extension/d_blog_module/author_group_form.twig', '2019-08-27 16:38:15'),
(360, 4, 'admin/view/template/extension/d_blog_module/author_group_list.twig', '2019-08-27 16:38:15'),
(361, 4, 'admin/view/template/extension/d_blog_module/author_list.twig', '2019-08-27 16:38:15'),
(362, 4, 'admin/view/template/extension/d_blog_module/category_form.twig', '2019-08-27 16:38:15'),
(363, 4, 'admin/view/template/extension/d_blog_module/category_list.twig', '2019-08-27 16:38:15'),
(364, 4, 'admin/view/template/extension/d_blog_module/post_form.twig', '2019-08-27 16:38:15'),
(365, 4, 'admin/view/template/extension/d_blog_module/post_list.twig', '2019-08-27 16:38:15'),
(366, 4, 'admin/view/template/extension/d_blog_module/review_form.twig', '2019-08-27 16:38:15'),
(367, 4, 'admin/view/template/extension/d_blog_module/review_list.twig', '2019-08-27 16:38:15'),
(368, 4, 'admin/view/template/extension/d_blog_module/welcome.twig', '2019-08-27 16:38:15'),
(369, 4, 'admin/view/template/extension/d_visual_designer/settings_block', '2019-08-27 16:38:15'),
(370, 4, 'admin/view/template/extension/event/d_blog_module.twig', '2019-08-27 16:38:15'),
(371, 4, 'admin/view/template/extension/module/d_blog_module.twig', '2019-08-27 16:38:15'),
(372, 4, 'catalog/language/en-gb/extension/d_blog_module/author.php', '2019-08-27 16:38:15'),
(373, 4, 'catalog/language/en-gb/extension/d_blog_module/category.php', '2019-08-27 16:38:15'),
(374, 4, 'catalog/language/en-gb/extension/d_blog_module/post.php', '2019-08-27 16:38:15'),
(375, 4, 'catalog/language/en-gb/extension/d_blog_module/review.php', '2019-08-27 16:38:15'),
(376, 4, 'catalog/language/en-gb/extension/d_blog_module/search.php', '2019-08-27 16:38:15'),
(377, 4, 'catalog/language/en-gb/extension/d_visual_designer_module/blog_post.php', '2019-08-27 16:38:15'),
(378, 4, 'catalog/language/en-gb/extension/event/d_blog_module.php', '2019-08-27 16:38:15'),
(379, 4, 'catalog/language/english/extension/d_visual_designer_module/blog_post.php', '2019-08-27 16:38:15'),
(380, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css', '2019-08-27 16:38:15'),
(381, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css.map', '2019-08-27 16:38:16'),
(382, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css', '2019-08-27 16:38:16'),
(383, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css.map', '2019-08-27 16:38:16'),
(384, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker', '2019-08-27 16:38:16'),
(385, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.js', '2019-08-27 16:38:16'),
(386, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.min.js', '2019-08-27 16:38:16'),
(387, 4, 'catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css', '2019-08-27 16:38:16'),
(388, 4, 'catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css', '2019-08-27 16:38:16'),
(389, 4, 'catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js', '2019-08-27 16:38:16'),
(390, 4, 'catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js', '2019-08-27 16:38:16'),
(391, 4, 'catalog/view/javascript/d_fileinput/css/fileinput-rtl.css', '2019-08-27 16:38:16'),
(392, 4, 'catalog/view/javascript/d_fileinput/css/fileinput-rtl.min.css', '2019-08-27 16:38:16'),
(393, 4, 'catalog/view/javascript/d_fileinput/css/fileinput.css', '2019-08-27 16:38:16'),
(394, 4, 'catalog/view/javascript/d_fileinput/css/fileinput.min.css', '2019-08-27 16:38:16'),
(395, 4, 'catalog/view/javascript/d_fileinput/examples/index.html', '2019-08-27 16:38:16'),
(396, 4, 'catalog/view/javascript/d_fileinput/img/loading-sm.gif', '2019-08-27 16:38:16'),
(397, 4, 'catalog/view/javascript/d_fileinput/img/loading.gif', '2019-08-27 16:38:16'),
(398, 4, 'catalog/view/javascript/d_fileinput/js/fileinput.js', '2019-08-27 16:38:16'),
(399, 4, 'catalog/view/javascript/d_fileinput/js/fileinput.min.js', '2019-08-27 16:38:16'),
(400, 4, 'catalog/view/javascript/d_fileinput/js/locales', '2019-08-27 16:38:16'),
(401, 4, 'catalog/view/javascript/d_fileinput/js/plugins', '2019-08-27 16:38:16'),
(402, 4, 'catalog/view/javascript/d_fileinput/nuget/Package.nuspec', '2019-08-27 16:38:16'),
(403, 4, 'catalog/view/javascript/d_fileinput/nuget/build.bat', '2019-08-27 16:38:16'),
(404, 4, 'catalog/view/javascript/d_fileinput/sass/fileinput.scss', '2019-08-27 16:38:16'),
(405, 4, 'catalog/view/javascript/d_fileinput/themes/explorer', '2019-08-27 16:38:16'),
(406, 4, 'catalog/view/javascript/d_fileinput/themes/explorer-fa', '2019-08-27 16:38:16'),
(407, 4, 'catalog/view/javascript/d_fileinput/themes/fa', '2019-08-27 16:38:16'),
(408, 4, 'catalog/view/javascript/d_fileinput/themes/gly', '2019-08-27 16:38:16'),
(409, 4, 'catalog/view/theme/default/javascript/d_blog_module', '2019-08-27 16:38:16'),
(410, 4, 'catalog/view/theme/default/javascript/partial', '2019-08-27 16:38:16'),
(411, 4, 'catalog/view/theme/default/stylesheet/d_blog_module', '2019-08-27 16:38:16'),
(412, 4, 'catalog/view/theme/default/template/partial', '2019-08-27 16:38:16'),
(413, 4, 'system/library/template/Twig/Extension/DTwigManager.php', '2019-08-27 16:38:16'),
(414, 4, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha-horizontal.png', '2019-08-27 16:38:16'),
(415, 4, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha.png', '2019-08-27 16:38:16'),
(416, 4, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue-horizontal.png', '2019-08-27 16:38:16'),
(417, 4, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue.png', '2019-08-27 16:38:16'),
(418, 4, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/saturation.png', '2019-08-27 16:38:16'),
(419, 4, 'admin/view/javascript/d_fileinput/js/locales/LANG.js', '2019-08-27 16:38:16'),
(420, 4, 'admin/view/javascript/d_fileinput/js/locales/ar.js', '2019-08-27 16:38:16'),
(421, 4, 'admin/view/javascript/d_fileinput/js/locales/az.js', '2019-08-27 16:38:16'),
(422, 4, 'admin/view/javascript/d_fileinput/js/locales/bg.js', '2019-08-27 16:38:16'),
(423, 4, 'admin/view/javascript/d_fileinput/js/locales/ca.js', '2019-08-27 16:38:16'),
(424, 4, 'admin/view/javascript/d_fileinput/js/locales/cr.js', '2019-08-27 16:38:16'),
(425, 4, 'admin/view/javascript/d_fileinput/js/locales/cz.js', '2019-08-27 16:38:16'),
(426, 4, 'admin/view/javascript/d_fileinput/js/locales/da.js', '2019-08-27 16:38:16'),
(427, 4, 'admin/view/javascript/d_fileinput/js/locales/de.js', '2019-08-27 16:38:16'),
(428, 4, 'admin/view/javascript/d_fileinput/js/locales/el.js', '2019-08-27 16:38:16'),
(429, 4, 'admin/view/javascript/d_fileinput/js/locales/es.js', '2019-08-27 16:38:16'),
(430, 4, 'admin/view/javascript/d_fileinput/js/locales/et.js', '2019-08-27 16:38:16'),
(431, 4, 'admin/view/javascript/d_fileinput/js/locales/fa.js', '2019-08-27 16:38:16'),
(432, 4, 'admin/view/javascript/d_fileinput/js/locales/fi.js', '2019-08-27 16:38:16'),
(433, 4, 'admin/view/javascript/d_fileinput/js/locales/fr.js', '2019-08-27 16:38:16'),
(434, 4, 'admin/view/javascript/d_fileinput/js/locales/gl.js', '2019-08-27 16:38:16'),
(435, 4, 'admin/view/javascript/d_fileinput/js/locales/hu.js', '2019-08-27 16:38:16'),
(436, 4, 'admin/view/javascript/d_fileinput/js/locales/id.js', '2019-08-27 16:38:16'),
(437, 4, 'admin/view/javascript/d_fileinput/js/locales/it.js', '2019-08-27 16:38:16'),
(438, 4, 'admin/view/javascript/d_fileinput/js/locales/ja.js', '2019-08-27 16:38:16'),
(439, 4, 'admin/view/javascript/d_fileinput/js/locales/kr.js', '2019-08-27 16:38:16'),
(440, 4, 'admin/view/javascript/d_fileinput/js/locales/kz.js', '2019-08-27 16:38:16'),
(441, 4, 'admin/view/javascript/d_fileinput/js/locales/nl.js', '2019-08-27 16:38:16'),
(442, 4, 'admin/view/javascript/d_fileinput/js/locales/no.js', '2019-08-27 16:38:16'),
(443, 4, 'admin/view/javascript/d_fileinput/js/locales/pl.js', '2019-08-27 16:38:16'),
(444, 4, 'admin/view/javascript/d_fileinput/js/locales/pt-BR.js', '2019-08-27 16:38:16'),
(445, 4, 'admin/view/javascript/d_fileinput/js/locales/pt.js', '2019-08-27 16:38:16'),
(446, 4, 'admin/view/javascript/d_fileinput/js/locales/ro.js', '2019-08-27 16:38:16'),
(447, 4, 'admin/view/javascript/d_fileinput/js/locales/ru.js', '2019-08-27 16:38:16'),
(448, 4, 'admin/view/javascript/d_fileinput/js/locales/sk.js', '2019-08-27 16:38:16'),
(449, 4, 'admin/view/javascript/d_fileinput/js/locales/sl.js', '2019-08-27 16:38:16'),
(450, 4, 'admin/view/javascript/d_fileinput/js/locales/sv.js', '2019-08-27 16:38:16'),
(451, 4, 'admin/view/javascript/d_fileinput/js/locales/th.js', '2019-08-27 16:38:16'),
(452, 4, 'admin/view/javascript/d_fileinput/js/locales/tr.js', '2019-08-27 16:38:16'),
(453, 4, 'admin/view/javascript/d_fileinput/js/locales/uk.js', '2019-08-27 16:38:16'),
(454, 4, 'admin/view/javascript/d_fileinput/js/locales/vi.js', '2019-08-27 16:38:16'),
(455, 4, 'admin/view/javascript/d_fileinput/js/locales/zh-TW.js', '2019-08-27 16:38:16'),
(456, 4, 'admin/view/javascript/d_fileinput/js/locales/zh.js', '2019-08-27 16:38:16'),
(457, 4, 'admin/view/javascript/d_fileinput/js/plugins/piexif.js', '2019-08-27 16:38:16'),
(458, 4, 'admin/view/javascript/d_fileinput/js/plugins/piexif.min.js', '2019-08-27 16:38:16'),
(459, 4, 'admin/view/javascript/d_fileinput/js/plugins/purify.js', '2019-08-27 16:38:16'),
(460, 4, 'admin/view/javascript/d_fileinput/js/plugins/purify.min.js', '2019-08-27 16:38:16'),
(461, 4, 'admin/view/javascript/d_fileinput/js/plugins/sortable.js', '2019-08-27 16:38:16'),
(462, 4, 'admin/view/javascript/d_fileinput/js/plugins/sortable.min.js', '2019-08-27 16:38:16'),
(463, 4, 'admin/view/javascript/d_fileinput/themes/explorer/theme.css', '2019-08-27 16:38:16'),
(464, 4, 'admin/view/javascript/d_fileinput/themes/explorer/theme.js', '2019-08-27 16:38:16'),
(465, 4, 'admin/view/javascript/d_fileinput/themes/explorer/theme.min.css', '2019-08-27 16:38:16'),
(466, 4, 'admin/view/javascript/d_fileinput/themes/explorer/theme.min.js', '2019-08-27 16:38:16'),
(467, 4, 'admin/view/javascript/d_fileinput/themes/explorer-fa/theme.css', '2019-08-27 16:38:16'),
(468, 4, 'admin/view/javascript/d_fileinput/themes/explorer-fa/theme.js', '2019-08-27 16:38:16'),
(469, 4, 'admin/view/javascript/d_fileinput/themes/explorer-fa/theme.min.css', '2019-08-27 16:38:16'),
(470, 4, 'admin/view/javascript/d_fileinput/themes/explorer-fa/theme.min.js', '2019-08-27 16:38:16'),
(471, 4, 'admin/view/javascript/d_fileinput/themes/fa/theme.js', '2019-08-27 16:38:16'),
(472, 4, 'admin/view/javascript/d_fileinput/themes/fa/theme.min.js', '2019-08-27 16:38:16'),
(473, 4, 'admin/view/javascript/d_fileinput/themes/gly/theme.js', '2019-08-27 16:38:16'),
(474, 4, 'admin/view/javascript/d_fileinput/themes/gly/theme.min.js', '2019-08-27 16:38:16'),
(475, 4, 'admin/view/stylesheet/d_admin_style/core/header/header.css', '2019-08-27 16:38:16'),
(476, 4, 'admin/view/stylesheet/d_admin_style/core/header/header.css.map', '2019-08-27 16:38:16'),
(477, 4, 'admin/view/stylesheet/d_admin_style/core/header/header.scss', '2019-08-27 16:38:16'),
(478, 4, 'admin/view/stylesheet/d_admin_style/core/header/headerold.css', '2019-08-27 16:38:16'),
(479, 4, 'admin/view/stylesheet/d_admin_style/core/header/headerold.css.map', '2019-08-27 16:38:16'),
(480, 4, 'admin/view/stylesheet/d_admin_style/core/header/headerold.scss', '2019-08-27 16:38:16'),
(481, 4, 'admin/view/stylesheet/d_admin_style/core/normalize/normalize.css', '2019-08-27 16:38:16'),
(482, 4, 'admin/view/stylesheet/d_admin_style/core/scss/_mixin.scss', '2019-08-27 16:38:16'),
(483, 4, 'admin/view/stylesheet/d_admin_style/core/scss/_mixins.sass', '2019-08-27 16:38:16'),
(484, 4, 'admin/view/stylesheet/d_admin_style/core/scss/_variable.scss', '2019-08-27 16:38:16'),
(485, 4, 'admin/view/stylesheet/d_admin_style/core/scss/modification', '2019-08-27 16:38:16'),
(486, 4, 'admin/view/stylesheet/d_admin_style/core/scss/mofication', '2019-08-27 16:38:16'),
(487, 4, 'admin/view/stylesheet/d_admin_style/core/scss/section', '2019-08-27 16:38:16'),
(488, 4, 'admin/view/stylesheet/d_admin_style/core/scss/third_party', '2019-08-27 16:38:16'),
(489, 4, 'admin/view/stylesheet/d_admin_style/core/svg/loader.svg', '2019-08-27 16:38:16'),
(490, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/dark.css', '2019-08-27 16:38:16'),
(491, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/dark.css.map', '2019-08-27 16:38:16'),
(492, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/dark.scss', '2019-08-27 16:38:16'),
(493, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/scss', '2019-08-27 16:38:16'),
(494, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/styles.css', '2019-08-27 16:38:16'),
(495, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/styles.css.map', '2019-08-27 16:38:16'),
(496, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/styles.scss', '2019-08-27 16:38:16'),
(497, 4, 'admin/view/stylesheet/d_admin_style/themes/default/styles.css', '2019-08-27 16:38:16'),
(498, 4, 'admin/view/stylesheet/d_admin_style/themes/light/light.css', '2019-08-27 16:38:16'),
(499, 4, 'admin/view/stylesheet/d_admin_style/themes/light/light.css.map', '2019-08-27 16:38:16'),
(500, 4, 'admin/view/stylesheet/d_admin_style/themes/light/light.scss', '2019-08-27 16:38:16'),
(501, 4, 'admin/view/stylesheet/d_admin_style/themes/light/modification', '2019-08-27 16:38:16'),
(502, 4, 'admin/view/stylesheet/d_admin_style/themes/light/scss', '2019-08-27 16:38:16'),
(503, 4, 'admin/view/stylesheet/d_admin_style/themes/light/styles.css', '2019-08-27 16:38:16'),
(504, 4, 'admin/view/stylesheet/d_admin_style/themes/light/styles.css.map', '2019-08-27 16:38:16'),
(505, 4, 'admin/view/stylesheet/d_admin_style/themes/light/styles.scss', '2019-08-27 16:38:16'),
(506, 4, 'admin/view/template/extension/d_visual_designer/settings_block/vd-setting-block-blog_post.tag', '2019-08-27 16:38:16'),
(507, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha-horizontal.png', '2019-08-27 16:38:16'),
(508, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha.png', '2019-08-27 16:38:16'),
(509, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue-horizontal.png', '2019-08-27 16:38:16'),
(510, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue.png', '2019-08-27 16:38:16'),
(511, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/saturation.png', '2019-08-27 16:38:16'),
(512, 4, 'catalog/view/javascript/d_fileinput/js/locales/LANG.js', '2019-08-27 16:38:16'),
(513, 4, 'catalog/view/javascript/d_fileinput/js/locales/ar.js', '2019-08-27 16:38:16'),
(514, 4, 'catalog/view/javascript/d_fileinput/js/locales/az.js', '2019-08-27 16:38:16'),
(515, 4, 'catalog/view/javascript/d_fileinput/js/locales/bg.js', '2019-08-27 16:38:16'),
(516, 4, 'catalog/view/javascript/d_fileinput/js/locales/ca.js', '2019-08-27 16:38:16'),
(517, 4, 'catalog/view/javascript/d_fileinput/js/locales/cr.js', '2019-08-27 16:38:16'),
(518, 4, 'catalog/view/javascript/d_fileinput/js/locales/cz.js', '2019-08-27 16:38:16'),
(519, 4, 'catalog/view/javascript/d_fileinput/js/locales/da.js', '2019-08-27 16:38:16'),
(520, 4, 'catalog/view/javascript/d_fileinput/js/locales/de.js', '2019-08-27 16:38:16'),
(521, 4, 'catalog/view/javascript/d_fileinput/js/locales/el.js', '2019-08-27 16:38:16'),
(522, 4, 'catalog/view/javascript/d_fileinput/js/locales/es.js', '2019-08-27 16:38:16'),
(523, 4, 'catalog/view/javascript/d_fileinput/js/locales/et.js', '2019-08-27 16:38:16'),
(524, 4, 'catalog/view/javascript/d_fileinput/js/locales/fa.js', '2019-08-27 16:38:16'),
(525, 4, 'catalog/view/javascript/d_fileinput/js/locales/fi.js', '2019-08-27 16:38:16'),
(526, 4, 'catalog/view/javascript/d_fileinput/js/locales/fr.js', '2019-08-27 16:38:16'),
(527, 4, 'catalog/view/javascript/d_fileinput/js/locales/gl.js', '2019-08-27 16:38:16'),
(528, 4, 'catalog/view/javascript/d_fileinput/js/locales/hu.js', '2019-08-27 16:38:16'),
(529, 4, 'catalog/view/javascript/d_fileinput/js/locales/id.js', '2019-08-27 16:38:16'),
(530, 4, 'catalog/view/javascript/d_fileinput/js/locales/it.js', '2019-08-27 16:38:16'),
(531, 4, 'catalog/view/javascript/d_fileinput/js/locales/ja.js', '2019-08-27 16:38:16'),
(532, 4, 'catalog/view/javascript/d_fileinput/js/locales/kr.js', '2019-08-27 16:38:16'),
(533, 4, 'catalog/view/javascript/d_fileinput/js/locales/kz.js', '2019-08-27 16:38:16'),
(534, 4, 'catalog/view/javascript/d_fileinput/js/locales/nl.js', '2019-08-27 16:38:16'),
(535, 4, 'catalog/view/javascript/d_fileinput/js/locales/no.js', '2019-08-27 16:38:16'),
(536, 4, 'catalog/view/javascript/d_fileinput/js/locales/pl.js', '2019-08-27 16:38:16'),
(537, 4, 'catalog/view/javascript/d_fileinput/js/locales/pt-BR.js', '2019-08-27 16:38:16'),
(538, 4, 'catalog/view/javascript/d_fileinput/js/locales/pt.js', '2019-08-27 16:38:16'),
(539, 4, 'catalog/view/javascript/d_fileinput/js/locales/ro.js', '2019-08-27 16:38:16'),
(540, 4, 'catalog/view/javascript/d_fileinput/js/locales/ru.js', '2019-08-27 16:38:16'),
(541, 4, 'catalog/view/javascript/d_fileinput/js/locales/sk.js', '2019-08-27 16:38:16'),
(542, 4, 'catalog/view/javascript/d_fileinput/js/locales/sl.js', '2019-08-27 16:38:16'),
(543, 4, 'catalog/view/javascript/d_fileinput/js/locales/sv.js', '2019-08-27 16:38:16'),
(544, 4, 'catalog/view/javascript/d_fileinput/js/locales/th.js', '2019-08-27 16:38:16'),
(545, 4, 'catalog/view/javascript/d_fileinput/js/locales/tr.js', '2019-08-27 16:38:16'),
(546, 4, 'catalog/view/javascript/d_fileinput/js/locales/uk.js', '2019-08-27 16:38:16'),
(547, 4, 'catalog/view/javascript/d_fileinput/js/locales/vi.js', '2019-08-27 16:38:16'),
(548, 4, 'catalog/view/javascript/d_fileinput/js/locales/zh-TW.js', '2019-08-27 16:38:16'),
(549, 4, 'catalog/view/javascript/d_fileinput/js/locales/zh.js', '2019-08-27 16:38:16'),
(550, 4, 'catalog/view/javascript/d_fileinput/js/plugins/piexif.js', '2019-08-27 16:38:16'),
(551, 4, 'catalog/view/javascript/d_fileinput/js/plugins/piexif.min.js', '2019-08-27 16:38:16'),
(552, 4, 'catalog/view/javascript/d_fileinput/js/plugins/purify.js', '2019-08-27 16:38:16'),
(553, 4, 'catalog/view/javascript/d_fileinput/js/plugins/purify.min.js', '2019-08-27 16:38:16'),
(554, 4, 'catalog/view/javascript/d_fileinput/js/plugins/sortable.js', '2019-08-27 16:38:16'),
(555, 4, 'catalog/view/javascript/d_fileinput/js/plugins/sortable.min.js', '2019-08-27 16:38:16'),
(556, 4, 'catalog/view/javascript/d_fileinput/themes/explorer/theme.css', '2019-08-27 16:38:16'),
(557, 4, 'catalog/view/javascript/d_fileinput/themes/explorer/theme.js', '2019-08-27 16:38:16'),
(558, 4, 'catalog/view/javascript/d_fileinput/themes/explorer/theme.min.css', '2019-08-27 16:38:16'),
(559, 4, 'catalog/view/javascript/d_fileinput/themes/explorer/theme.min.js', '2019-08-27 16:38:16'),
(560, 4, 'catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.css', '2019-08-27 16:38:16'),
(561, 4, 'catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.js', '2019-08-27 16:38:16'),
(562, 4, 'catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.min.css', '2019-08-27 16:38:16'),
(563, 4, 'catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.min.js', '2019-08-27 16:38:16'),
(564, 4, 'catalog/view/javascript/d_fileinput/themes/fa/theme.js', '2019-08-27 16:38:16'),
(565, 4, 'catalog/view/javascript/d_fileinput/themes/fa/theme.min.js', '2019-08-27 16:38:16'),
(566, 4, 'catalog/view/javascript/d_fileinput/themes/gly/theme.js', '2019-08-27 16:38:16'),
(567, 4, 'catalog/view/javascript/d_fileinput/themes/gly/theme.min.js', '2019-08-27 16:38:16'),
(568, 4, 'catalog/view/theme/default/javascript/d_blog_module/author.js', '2019-08-27 16:38:16'),
(569, 4, 'catalog/view/theme/default/javascript/d_blog_module/category.js', '2019-08-27 16:38:16'),
(570, 4, 'catalog/view/theme/default/javascript/d_blog_module/main.js', '2019-08-27 16:38:16'),
(571, 4, 'catalog/view/theme/default/javascript/d_blog_module/post.js', '2019-08-27 16:38:16'),
(572, 4, 'catalog/view/theme/default/javascript/d_blog_module/review.js', '2019-08-27 16:38:16'),
(573, 4, 'catalog/view/theme/default/javascript/partial/d_address_field.js', '2019-08-27 16:38:16'),
(574, 4, 'catalog/view/theme/default/javascript/partial/d_custom_field.js', '2019-08-27 16:38:16'),
(575, 4, 'catalog/view/theme/default/javascript/partial/d_product_sort.js', '2019-08-27 16:38:16'),
(576, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/animate.css', '2019-08-27 16:38:16'),
(577, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/bootstrap.css', '2019-08-27 16:38:16'),
(578, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/bootstrap.css.map', '2019-08-27 16:38:16'),
(579, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/bootstrap.scss', '2019-08-27 16:38:16'),
(580, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/d_blog_module.css', '2019-08-27 16:38:16'),
(581, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/d_blog_module.css.map', '2019-08-27 16:38:16'),
(582, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/d_blog_module.scss', '2019-08-27 16:38:16'),
(583, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/theme', '2019-08-27 16:38:16'),
(584, 4, 'catalog/view/theme/default/template/extension/d_blog_module', '2019-08-27 16:38:16'),
(585, 4, 'catalog/view/theme/default/template/extension/d_visual_designer', '2019-08-27 16:38:16'),
(586, 4, 'catalog/view/theme/default/template/extension/d_visual_designer_module', '2019-08-27 16:38:16'),
(587, 4, 'catalog/view/theme/default/template/partial/button.twig', '2019-08-27 16:38:16'),
(588, 4, 'catalog/view/theme/default/template/partial/d_account_field.twig', '2019-08-27 16:38:16'),
(589, 4, 'catalog/view/theme/default/template/partial/d_address_field.twig', '2019-08-27 16:38:16'),
(590, 4, 'catalog/view/theme/default/template/partial/d_breadcrumb.twig', '2019-08-27 16:38:16'),
(591, 4, 'catalog/view/theme/default/template/partial/d_button.twig', '2019-08-27 16:38:16'),
(592, 4, 'catalog/view/theme/default/template/partial/d_button_continue.twig', '2019-08-27 16:38:16'),
(593, 4, 'catalog/view/theme/default/template/partial/d_button_submit.twig', '2019-08-27 16:38:16'),
(594, 4, 'catalog/view/theme/default/template/partial/d_cart.twig', '2019-08-27 16:38:16'),
(595, 4, 'catalog/view/theme/default/template/partial/d_custom_field.twig', '2019-08-27 16:38:16'),
(596, 4, 'catalog/view/theme/default/template/partial/d_empty.twig', '2019-08-27 16:38:16'),
(597, 4, 'catalog/view/theme/default/template/partial/d_layout_close.twig', '2019-08-27 16:38:16'),
(598, 4, 'catalog/view/theme/default/template/partial/d_layout_open.twig', '2019-08-27 16:38:16'),
(599, 4, 'catalog/view/theme/default/template/partial/d_mini_cart.twig', '2019-08-27 16:38:16'),
(600, 4, 'catalog/view/theme/default/template/partial/d_name_field.twig', '2019-08-27 16:38:16'),
(601, 4, 'catalog/view/theme/default/template/partial/d_notification.twig', '2019-08-27 16:38:16'),
(602, 4, 'catalog/view/theme/default/template/partial/d_product_list.twig', '2019-08-27 16:38:16'),
(603, 4, 'catalog/view/theme/default/template/partial/d_product_sort.twig', '2019-08-27 16:38:16'),
(604, 4, 'catalog/view/theme/default/template/partial/d_product_thumb.twig', '2019-08-27 16:38:16'),
(605, 4, 'catalog/view/theme/default/template/partial/d_rating.twig', '2019-08-27 16:38:16');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(606, 4, 'catalog/view/theme/default/template/partial/d_review.twig', '2019-08-27 16:38:16'),
(607, 4, 'catalog/view/theme/default/template/partial/d_search.twig', '2019-08-27 16:38:16'),
(608, 4, 'catalog/view/theme/default/template/partial/form_group.twig', '2019-08-27 16:38:16'),
(609, 4, 'catalog/view/theme/default/template/partial/input.twig', '2019-08-27 16:38:16'),
(610, 4, 'catalog/view/theme/default/template/partial/input_group.twig', '2019-08-27 16:38:16'),
(611, 4, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_button.scss', '2019-08-27 16:38:16'),
(612, 4, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_callout.scss', '2019-08-27 16:38:16'),
(613, 4, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_checkbox.scss', '2019-08-27 16:38:16'),
(614, 4, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_common.scss', '2019-08-27 16:38:16'),
(615, 4, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_forms.scss', '2019-08-27 16:38:16'),
(616, 4, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_import.scss', '2019-08-27 16:38:16'),
(617, 4, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_info.scss', '2019-08-27 16:38:16'),
(618, 4, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_navigation.scss', '2019-08-27 16:38:16'),
(619, 4, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_pagination.scss', '2019-08-27 16:38:16'),
(620, 4, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_panels.scss', '2019-08-27 16:38:16'),
(621, 4, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_button.scss', '2019-08-27 16:38:16'),
(622, 4, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_callout.scss', '2019-08-27 16:38:16'),
(623, 4, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_common.scss', '2019-08-27 16:38:16'),
(624, 4, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_forms.scss', '2019-08-27 16:38:16'),
(625, 4, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_import.scss', '2019-08-27 16:38:16'),
(626, 4, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_navigation.scss', '2019-08-27 16:38:16'),
(627, 4, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_panels.scss', '2019-08-27 16:38:16'),
(628, 4, 'admin/view/stylesheet/d_admin_style/core/scss/section/_dashboard.scss', '2019-08-27 16:38:16'),
(629, 4, 'admin/view/stylesheet/d_admin_style/core/scss/section/_firewall.scss', '2019-08-27 16:38:16'),
(630, 4, 'admin/view/stylesheet/d_admin_style/core/scss/section/_help.scss', '2019-08-27 16:38:16'),
(631, 4, 'admin/view/stylesheet/d_admin_style/core/scss/section/_low_php.scss', '2019-08-27 16:38:16'),
(632, 4, 'admin/view/stylesheet/d_admin_style/core/scss/section/_scan.scss', '2019-08-27 16:38:16'),
(633, 4, 'admin/view/stylesheet/d_admin_style/core/scss/section/_setting.scss', '2019-08-27 16:38:16'),
(634, 4, 'admin/view/stylesheet/d_admin_style/core/scss/section/_statistic.scss', '2019-08-27 16:38:16'),
(635, 4, 'admin/view/stylesheet/d_admin_style/core/scss/third_party/_chart.scss', '2019-08-27 16:38:16'),
(636, 4, 'admin/view/stylesheet/d_admin_style/core/scss/third_party/_diff.scss', '2019-08-27 16:38:16'),
(637, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/_mixin.scss', '2019-08-27 16:38:16'),
(638, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/_variable.scss', '2019-08-27 16:38:16'),
(639, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section', '2019-08-27 16:38:16'),
(640, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/third_party', '2019-08-27 16:38:16'),
(641, 4, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_button.scss', '2019-08-27 16:38:16'),
(642, 4, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_common.scss', '2019-08-27 16:38:16'),
(643, 4, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_form.scss', '2019-08-27 16:38:16'),
(644, 4, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_forms.scss', '2019-08-27 16:38:16'),
(645, 4, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_info.scss', '2019-08-27 16:38:16'),
(646, 4, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_modal.scss', '2019-08-27 16:38:16'),
(647, 4, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_navigation.scss', '2019-08-27 16:38:16'),
(648, 4, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_notification.scss', '2019-08-27 16:38:16'),
(649, 4, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_pagination.scss', '2019-08-27 16:38:16'),
(650, 4, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_panel.scss', '2019-08-27 16:38:16'),
(651, 4, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_table.scss', '2019-08-27 16:38:16'),
(652, 4, 'admin/view/stylesheet/d_admin_style/themes/light/scss/_mixin.scss', '2019-08-27 16:38:16'),
(653, 4, 'admin/view/stylesheet/d_admin_style/themes/light/scss/_variable.scss', '2019-08-27 16:38:16'),
(654, 4, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section', '2019-08-27 16:38:16'),
(655, 4, 'admin/view/stylesheet/d_admin_style/themes/light/scss/third_party', '2019-08-27 16:38:16'),
(656, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/theme/default', '2019-08-27 16:38:16'),
(657, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/theme/default.css', '2019-08-27 16:38:16'),
(658, 4, 'catalog/view/theme/default/template/extension/d_blog_module/author.twig', '2019-08-27 16:38:16'),
(659, 4, 'catalog/view/theme/default/template/extension/d_blog_module/category.twig', '2019-08-27 16:38:16'),
(660, 4, 'catalog/view/theme/default/template/extension/d_blog_module/layout_grid.twig', '2019-08-27 16:38:16'),
(661, 4, 'catalog/view/theme/default/template/extension/d_blog_module/post.twig', '2019-08-27 16:38:16'),
(662, 4, 'catalog/view/theme/default/template/extension/d_blog_module/post_thumb.twig', '2019-08-27 16:38:16'),
(663, 4, 'catalog/view/theme/default/template/extension/d_blog_module/review.twig', '2019-08-27 16:38:16'),
(664, 4, 'catalog/view/theme/default/template/extension/d_blog_module/review_thumb.twig', '2019-08-27 16:38:17'),
(665, 4, 'catalog/view/theme/default/template/extension/d_blog_module/search.twig', '2019-08-27 16:38:17'),
(666, 4, 'catalog/view/theme/default/template/extension/d_visual_designer/content_blocks', '2019-08-27 16:38:17'),
(667, 4, 'catalog/view/theme/default/template/extension/d_visual_designer_module/blog_post.twig', '2019-08-27 16:38:17'),
(668, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_dashboard.scss', '2019-08-27 16:38:17'),
(669, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_firewall.scss', '2019-08-27 16:38:17'),
(670, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_help.scss', '2019-08-27 16:38:17'),
(671, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_low_php.scss', '2019-08-27 16:38:17'),
(672, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_scan.scss', '2019-08-27 16:38:17'),
(673, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_setting.scss', '2019-08-27 16:38:17'),
(674, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_statistic.scss', '2019-08-27 16:38:17'),
(675, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/third_party/_chart.scss', '2019-08-27 16:38:17'),
(676, 4, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/third_party/_diff.scss', '2019-08-27 16:38:17'),
(677, 4, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_dashboard.scss', '2019-08-27 16:38:17'),
(678, 4, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_firewall.scss', '2019-08-27 16:38:17'),
(679, 4, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_help.scss', '2019-08-27 16:38:17'),
(680, 4, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_low_php.scss', '2019-08-27 16:38:17'),
(681, 4, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_scan.scss', '2019-08-27 16:38:17'),
(682, 4, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_setting.scss', '2019-08-27 16:38:17'),
(683, 4, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_statistic.scss', '2019-08-27 16:38:17'),
(684, 4, 'admin/view/stylesheet/d_admin_style/themes/light/scss/third_party/_chart.scss', '2019-08-27 16:38:17'),
(685, 4, 'admin/view/stylesheet/d_admin_style/themes/light/scss/third_party/_diff.scss', '2019-08-27 16:38:17'),
(686, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/theme/default/default.scss', '2019-08-27 16:38:17'),
(687, 4, 'catalog/view/theme/default/template/extension/d_visual_designer/content_blocks/vd-block-blog_post.tag', '2019-08-27 16:38:17');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(1, 1, 1, 'Производитель'),
(1, 2, 1, 'Manufacturer');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 1, 'Производители'),
(1, 2, 'Manufacturers');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'Зона НДС', 'Облагаемые НДС', '2014-05-21 22:30:20', '2014-09-09 11:48:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1),
(7, 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(5, 2, 'Anything else', '&lt;p&gt;\r\n	Anything else&lt;/p&gt;', 'Anything else', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;', 'Privacy Policy', '', ''),
(6, 1, 'Доставка', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;', 'Доставка', '', ''),
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;', 'About Us', '', ''),
(5, 1, 'Что нибудь ещё', '&lt;p&gt;Что нибудь ещё&lt;br&gt;&lt;/p&gt;', 'Что нибудь ещё', '', ''),
(6, 2, 'Доставка', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;', 'Доставка', '', ''),
(4, 1, 'О компании', '&lt;p&gt;\r\n	О компании&lt;/p&gt;', 'О компании', '', ''),
(3, 1, 'Условия Конфиденциальности', '&lt;p&gt;Условия Конфиденциальности&lt;br&gt;&lt;/p&gt;', 'Условия Конфиденциальности', '', ''),
(7, 2, 'Product category', '&lt;p&gt;Product category&lt;br&gt;&lt;/p&gt;', 'Product category', '', ''),
(7, 1, 'Категории товаров', '&lt;p&gt;Категории товаров&lt;br&gt;&lt;/p&gt;', 'Категории товаров', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0),
(3, 0, 0),
(5, 0, 0),
(7, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'Russian', 'ru-ru', 'ru_RU.UTF-8,ru_RU,russian', 'ru-ru.png', 'russian', 1, 1),
(2, 'English', 'en-gb', 'en_US.UTF-8,en_US,en-gb,en_gb,english', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Главная'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(100, 'Blog post'),
(101, 'Blog category'),
(102, 'Blog search'),
(103, 'Blog author');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(107, 1, 'category', 'content_bottom', 1),
(112, 3, 'special.32', 'content_bottom', 0),
(108, 1, 'special.32', 'content_bottom', 2),
(106, 1, 'featured.33', 'content_bottom', 0),
(105, 1, 'd_blog_module', 'content_top', 1),
(104, 1, 'slideshow.27', 'content_top', 0),
(109, 1, 'html.34', 'column_right', 0),
(110, 1, 'html.36', 'column_right', 1),
(111, 1, 'html.35', 'column_right', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(73, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(72, 3, 0, 'product/category'),
(70, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search'),
(64, 100, 0, 'extension/d_blog_module/post'),
(65, 101, 0, 'extension/d_blog_module/category'),
(66, 102, 0, 'extension/d_blog_module/search'),
(67, 103, 0, 'extension/d_blog_module/author');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Сантиметр', 'см'),
(2, 1, 'Миллиметр', 'мм'),
(1, 2, 'Сантиметр', 'см'),
(2, 2, 'Миллиметр', 'мм');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(12, 'Франция', '', 0),
(13, 'Германия', '', 0),
(14, 'Китай', '', 0),
(15, 'Англия', '', 0),
(11, 'Италия', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(4, 4, 'd_opencart_patch', 'd_opencart_patch', 'Dreamvention', '3.1.6', 'http://dreamvention.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_opencart_patch</name>\n    <code>d_opencart_patch</code>\n    <description>Permission fixes in Opencart 3.x</description>\n    <version>3.1.6</version>\n    <author>Dreamvention</author>\n    <link>http://dreamvention.com</link>\n    <file path=\"admin/controller/user/user_permission.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$path[] = $file . \'/*\';]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_opencart_patch.xml 1\n            $files[] = $file;\n            ]]></add>\n        </operation>\n        <operation error=\"skip\">\n            <search><![CDATA[$permission = substr($controller, 0, strrpos($controller, \'.\'));]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_opencart_patch.xml 2\n            $permission = (strrpos($controller, \'.\') !== false) ? substr($controller, 0, strrpos($controller, \'.\')) : $controller;\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/extension/installer.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$modification_info = $this->model_setting_modification->getModificationByCode($code);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_opencart_patch.xml 1\n            if (strpos($code, \'d_\') === 0 && $modification_info) {\n                $this->model_setting_modification->deleteModification($modification_info[\'modification_id\']);\n                $modification_info = false; \n            }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/setting/extension.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_path` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' ORDER BY `date_added` ASC\");]]></search>\n            <add position=\"replace\"><![CDATA[\n        //d_opencart_patch.xml 1\n        $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_install` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");\n\n        $extension = $query->row;\n\n        if(isset($extension[\'filename\']) && strpos($extension[\'filename\'], \'_compiled_\')){\n\n\n            $parts = explode(\'_compiled_\', $extension[\'filename\']);\n            $extension_name = $parts[0];\n            $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_path` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' AND path LIKE \'%\".$this->db->escape($extension_name).\"%\' ORDER BY `date_added` ASC\");\n        }else{\n            $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_path` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' ORDER BY `date_added` ASC\");\n        }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/setting/modification.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"modification` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");]]></search>\n            <add position=\"replace\"><![CDATA[\n        //d_opencart_patch.xml 1\n        $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_install` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");\n\n        $extension = $query->row;\n\n        if(isset($extension[\'filename\']) && strpos($extension[\'filename\'], \'_compiled_\') !== false){\n\n\n            $parts = explode(\'_compiled_\', $extension[\'filename\']);\n            $extension_name = $parts[0];\n            $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"modification` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' AND `name` LIKE \'%\".$this->db->escape($extension_name).\"%\'\");\n\n        }else{\n            $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"modification` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");\n        }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/marketplace/install.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->model_setting_extension->deleteExtensionInstall($extension_install_id);]]></search>\n            <add position=\"replace\"><![CDATA[//d_opencart_patch.xml 1 moved down]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/marketplace/install.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->model_setting_modification->deleteModificationsByExtensionInstallId($extension_install_id);]]></search>\n            <add position=\"after\"><![CDATA[\n                //d_opencart_patch.xml 2\n                $this->model_setting_extension->deleteExtensionInstall($extension_install_id);]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/common/filemanager.php\">\n        <operation>\n            <search><![CDATA[$files = glob($directory . \'/\' . $filter_name . \'*.{jpg,jpeg,png,gif,JPG,JPEG,PNG,GIF}\', GLOB_BRACE);]]></search>\n            <add position=\"replace\"><![CDATA[$files = glob($directory . \'/\' . $filter_name . \'*.{jpg,jpeg,svg,png,gif,JPG,JPEG,PNG,GIF}\', GLOB_BRACE);]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[\'jpg\',]]></search>\n            <add position=\"after\"><![CDATA[\'svg\',]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[\'image/jpeg\',]]></search>\n            <add position=\"after\"><![CDATA[\'image/svg+xml\',]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/common/filemanager.twig\">\n        <operation>\n            <search><![CDATA[<img src=\"{{ image.thumb }}\" alt=\"{{ image.name }}\" title=\"{{ image.name }}\" />]]></search>\n            <add position=\"replace\"><![CDATA[<img src=\"{{ image.thumb }}\" alt=\"{{ image.name }}\" title=\"{{ image.name }}\" width=\"100\" height=\"100\" />]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/common/header.twig\">\n        <operation>\n            <search><![CDATA[</header>]]></search>\n            <add position=\"before\"><![CDATA[\n                <style type=\"text/css\">\n                    a.img-thumbnail{\n                        min-width:100px;\n                    }\n                </style>\n                ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/tool/image.php\">\n        <operation>\n            <search><![CDATA[public function resize($filename, $width, $height) {]]></search>\n            <add position=\"after\"><![CDATA[\n                if (isset($this->request->server[\'HTTPS\']) && (($this->request->server[\'HTTPS\'] == \'on\') || ($this->request->server[\'HTTPS\'] == \'1\'))) {\n                    $server = HTTPS_CATALOG;\n                } else {\n                    $server = HTTP_CATALOG;\n                }\n\n                if ($filename) {\n                    $image_info = @getimagesize(DIR_IMAGE . $filename);\n                    if (!$image_info) {\n                        return $server . \'image/\' . $filename;\n                    }\n                } else {\n                    $filename = \"no_image.png\";\n                }\n                ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/model/tool/image.php\">\n        <operation>\n            <search><![CDATA[public function resize($filename, $width, $height) {]]></search>\n            <add position=\"after\"><![CDATA[\n                if (isset($this->request->server[\'HTTPS\']) && (($this->request->server[\'HTTPS\'] == \'on\') || ($this->request->server[\'HTTPS\'] == \'1\'))) {\n                    $server = HTTPS_SERVER;\n                } else {\n                    $server = HTTP_SERVER;\n                }\n\n                if ($filename) {\n                    $image_info = @getimagesize(DIR_IMAGE . $filename);\n                    if (!$image_info) {\n                        return $server . \'image/\' . $filename;\n                    }\n                } else {\n                    $filename = \"no_image.png\";\n                }\n                ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/model/localisation/language.php\">\n        <operation error=\"skip\">\n$language_data = $this->cache->get(\'language\');\n            <search ><![CDATA[$language_data = $this->cache->get(\'language\');]]></search>\n            <add position=\"replace\"><![CDATA[\n        $language_data = $this->cache->get(\'catalog.language\');]]></add>\n        </operation>\n    </file>\n    <file path=\"system/config/catalog.php\">\n        <operation error=\"skip\">\n            <search index=\"1\" ><![CDATA[\'view/*/before\' => array(]]></search>\n            <add position=\"replace\" offset=\"2\"><![CDATA[\n                   //    \"view/*/before\" => array(\n                   //        1000  => \'event/debug/before\'\n                   //    ),\n                ]]></add>\n        </operation>\n        <operation error=\"skip\">\n            <search ><![CDATA[\'controller/*/after\'  => array(]]></search>\n            <add position=\"replace\" offset=\"2\"><![CDATA[\n                    //  \'controller/*/after\'  => array(\n                    //\'event/debug/after\'\n                    //)\n                ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2019-08-27 16:38:17'),
(5, 0, 'd_twig_manager', 'd_twig_manager', 'Dreamvention', '2.0.0', 'http://dreamvention.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_twig_manager</name>\n    <code>d_twig_manager</code>\n    <description>Adds support for twig templating engine</description>\n    <version>2.0.0</version>\n    <author>Dreamvention</author>\n    <link>http://dreamvention.com</link>\n    <file path=\"system/engine/loader.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$template = new Template($this->registry->get(\'config\')->get(\'template_engine\'));]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            $template = new Template($this->registry->get(\'config\')->get(\'template_engine\'), $this->registry);\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/template.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[public function __construct($adaptor) {]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            public function __construct($adaptor, $registry) {\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$this->adaptor = new $class();]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            $this->adaptor = new $class($registry);\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/template/twig.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[private $data = array();]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            private $registry = array();\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[public function __construct() {]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            public function __construct($registry) {\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[\\Twig_Autoloader::register();]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            $this->registry = $registry;\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$this->twig = new \\Twig_Environment($loader, $config);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            if (file_exists(DIR_SYSTEM . \'library/template/Twig/Extension/DTwigManager.php\')) {\n                $this->twig->addExtension(new \\Twig_Extension_DTwigManager($this->registry));\n            }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/controller/event/theme.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$twig = new \\Twig_Environment($loader, $config);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            if (file_exists(DIR_SYSTEM . \'library/template/Twig/Extension/DTwigManager.php\')) {\n                $twig->addExtension(new Twig_Extension_DTwigManager($this->registry));\n            }\n            ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2019-08-27 16:38:46');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(27, 'Слайдер на главной', 'slideshow', '{\"name\":\"\\u0421\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440 \\u043d\\u0430 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439\",\"banner_id\":\"11\",\"width\":\"830\",\"height\":\"571\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(32, 'Акции', 'special', '{\"name\":\"\\u0410\\u043a\\u0446\\u0438\\u0438\",\"limit\":\"10\",\"width\":\"270\",\"height\":\"270\",\"status\":\"1\"}'),
(33, 'Каталог', 'featured', '{\"name\":\"\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\",\"product_name\":\"\",\"product\":[\"66\",\"67\",\"68\",\"69\"],\"limit\":\"12\",\"width\":\"238\",\"height\":\"238\",\"status\":\"1\"}'),
(34, 'Интересные статьи', 'html', '{\"name\":\"\\u0418\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u044b\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;a href=&quot;\\/index.php?route=extension\\/d_blog_module\\/category&amp;amp;category_id=8&quot; class=&quot;blocks__item&quot;&gt;\\r\\n  &lt;img src=&quot;catalog\\/view\\/theme\\/kazmebel\\/img\\/blocks-img-1.jpg&quot; alt=&quot;\\u0418\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u044b\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438&quot; class=&quot;blocks__img&quot;&gt;\\r\\n  &lt;div class=&quot;blocks__info&quot;&gt;\\r\\n    &lt;h3 class=&quot;blocks__title&quot;&gt;\\r\\n      \\u0418\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u044b\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438\\r\\n    &lt;\\/h3&gt;\\r\\n\\r\\n    &lt;span class=&quot;blocks__watch&quot;&gt;\\r\\n      \\u0421\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\r\\n      &lt;svg&gt;\\r\\n        &lt;use xlink:href=&quot;catalog\\/view\\/theme\\/kazmebel\\/sprite\\/sprite.svg#blocks-arrow&quot;&gt;&lt;\\/use&gt;\\r\\n      &lt;\\/svg&gt;\\r\\n    &lt;\\/span&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/a&gt;\"},\"2\":{\"title\":\"\",\"description\":\"\"}},\"status\":\"1\"}'),
(35, 'Новинки', 'html', '{\"name\":\"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;a href=&quot;\\/index.php?route=extension\\/d_blog_module\\/category&amp;amp;category_id=9&quot; class=&quot;blocks__item&quot;&gt;\\r\\n  &lt;img src=&quot;catalog\\/view\\/theme\\/kazmebel\\/img\\/blocks-img-3.jpg&quot; alt=&quot;\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438&quot; class=&quot;blocks__img&quot;&gt;\\r\\n  &lt;div class=&quot;blocks__info&quot;&gt;\\r\\n    &lt;h3 class=&quot;blocks__title&quot;&gt;\\r\\n      \\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438\\r\\n    &lt;\\/h3&gt;\\r\\n\\r\\n    &lt;span class=&quot;blocks__watch&quot;&gt;\\r\\n      \\u0421\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\r\\n      &lt;svg&gt;\\r\\n        &lt;use xlink:href=&quot;catalog\\/view\\/theme\\/kazmebel\\/sprite\\/sprite.svg#blocks-arrow&quot;&gt;&lt;\\/use&gt;\\r\\n      &lt;\\/svg&gt;\\r\\n    &lt;\\/span&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/a&gt;\"},\"2\":{\"title\":\"\",\"description\":\"\"}},\"status\":\"1\"}'),
(36, 'Регистрируйтесь', 'html', '{\"name\":\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u0443\\u0439\\u0442\\u0435\\u0441\\u044c\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;blocks__item blocks__item_register&quot;&gt;\\r\\n  &lt;img src=&quot;catalog\\/view\\/theme\\/kazmebel\\/img\\/blocks-img-2.jpg&quot; alt=&quot;\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u0443\\u0439\\u0442\\u0435\\u0441\\u044c&quot; class=&quot;blocks__img&quot;&gt;\\r\\n  &lt;div class=&quot;blocks__info&quot;&gt;\\r\\n    &lt;h3 class=&quot;blocks__title&quot;&gt;\\r\\n      \\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u0443\\u0439\\u0442\\u0435\\u0441\\u044c\\r\\n    &lt;\\/h3&gt;\\r\\n\\r\\n    &lt;h4 class=&quot;blocks__subtitle&quot;&gt;\\r\\n      \\u0438 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0430\\u0439\\u0442\\u0435 \\u0432\\u044b\\u0433\\u043e\\u0434\\u043d\\u044b\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f \\r\\n      &lt;br&gt;\\u043d\\u0430 \\u0432\\u0441\\u044e \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044e\\r\\n    &lt;\\/h4&gt;\\r\\n\\r\\n    &lt;button class=&quot;btn blocks__btn&quot;&gt;\\u041e\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u044c \\u0437\\u0430\\u044f\\u0432\\u043a\\u0443&lt;\\/button&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"\"}},\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(14, 'checkbox', 0),
(13, 'checkbox', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(13, 1, 'Берта'),
(13, 2, 'Bertha'),
(14, 2, 'Era'),
(14, 1, 'Era');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(59, 14, 'catalog/texture.jpg', 0),
(58, 14, 'catalog/texture.jpg', 0),
(57, 14, 'catalog/texture.jpg', 0),
(50, 13, 'catalog/texture.jpg', 0),
(51, 13, 'catalog/texture.jpg', 0),
(52, 13, 'catalog/texture.jpg', 0),
(53, 13, 'catalog/texture.jpg', 0),
(60, 14, 'catalog/texture.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`, `content`) VALUES
(52, 1, 13, 'AD0-черный', ''),
(50, 2, 13, 'AD3-light-grey', ''),
(50, 1, 13, 'AD3-светло-серый', ''),
(51, 2, 13, 'AI5-Red', ''),
(51, 1, 13, 'AI5-красный', ''),
(52, 2, 13, 'AD0-black', ''),
(53, 2, 13, 'AI8-green', ''),
(53, 1, 13, 'AI8-зеленый', ''),
(59, 1, 14, 'AI5-Красный', 'Композиция\r\n100% полиэстер\r\nВес\r\n302 г/м2\r\nСопротивление ссадины 100.000 циклов Мартиндейла\r\nВоспламеняемость\r\nBS EN 1021-1 (сигарета)\r\nBS EN 1021-2 (матч)\r\nСветлая быстрота\r\n6 (EN ISO 105 – B02)\r\n(EN ISO 105 – A01)\r\nБыстрота к затиранию\r\n5-4, сухой: 5 (ISO 105-X12)'),
(59, 2, 14, 'AI5-Red', 'Композиция\r\n100% полиэстер\r\nВес\r\n302 г/м2\r\nСопротивление ссадины 100.000 циклов Мартиндейла\r\nВоспламеняемость\r\nBS EN 1021-1 (сигарета)\r\nBS EN 1021-2 (матч)\r\nСветлая быстрота\r\n6 (EN ISO 105 – B02)\r\n(EN ISO 105 – A01)\r\nБыстрота к затиранию\r\n5-4, сухой: 5 (ISO 105-X12)'),
(58, 1, 14, 'AD3-светло-серый', 'Композиция\r\n100% полиэстер\r\nВес\r\n302 г/м2\r\nСопротивление ссадины 100.000 циклов Мартиндейла\r\nВоспламеняемость\r\nBS EN 1021-1 (сигарета)\r\nBS EN 1021-2 (матч)\r\nСветлая быстрота\r\n6 (EN ISO 105 – B02)\r\n(EN ISO 105 – A01)\r\nБыстрота к затиранию\r\n5-4, сухой: 5 (ISO 105-X12)'),
(58, 2, 14, 'AD3-light grey', 'Композиция\r\n100% полиэстер\r\nВес\r\n302 г/м2\r\nСопротивление ссадины 100.000 циклов Мартиндейла\r\nВоспламеняемость\r\nBS EN 1021-1 (сигарета)\r\nBS EN 1021-2 (матч)\r\nСветлая быстрота\r\n6 (EN ISO 105 – B02)\r\n(EN ISO 105 – A01)\r\nБыстрота к затиранию\r\n5-4, сухой: 5 (ISO 105-X12)'),
(57, 1, 14, 'AI8-зеленый', 'Композиция\r\n100% полиэстер\r\nВес\r\n302 г/м2\r\nСопротивление ссадины 100.000 циклов Мартиндейла\r\nВоспламеняемость\r\nBS EN 1021-1 (сигарета)\r\nBS EN 1021-2 (матч)\r\nСветлая быстрота\r\n6 (EN ISO 105 – B02)\r\n(EN ISO 105 – A01)\r\nБыстрота к затиранию\r\n5-4, сухой: 5 (ISO 105-X12)'),
(57, 2, 14, 'AI8-green', 'Композиция\r\n100% полиэстер\r\nВес\r\n302 г/м2\r\nСопротивление ссадины 100.000 циклов Мартиндейла\r\nВоспламеняемость\r\nBS EN 1021-1 (сигарета)\r\nBS EN 1021-2 (матч)\r\nСветлая быстрота\r\n6 (EN ISO 105 – B02)\r\n(EN ISO 105 – A01)\r\nБыстрота к затиранию\r\n5-4, сухой: 5 (ISO 105-X12)'),
(60, 1, 14, 'AD0-черный', 'Композиция\r\n100% полиэстер\r\nВес\r\n302 г/м2\r\nСопротивление ссадины 100.000 циклов Мартиндейла\r\nВоспламеняемость\r\nBS EN 1021-1 (сигарета)\r\nBS EN 1021-2 (матч)\r\nСветлая быстрота\r\n6 (EN ISO 105 – B02)\r\n(EN ISO 105 – A01)\r\nБыстрота к затиранию\r\n5-4, сухой: 5 (ISO 105-X12)'),
(60, 2, 14, 'AD0-black', 'Композиция\r\n100% полиэстер\r\nВес\r\n302 г/м2\r\nСопротивление ссадины 100.000 циклов Мартиндейла\r\nВоспламеняемость\r\nBS EN 1021-1 (сигарета)\r\nBS EN 1021-2 (матч)\r\nСветлая быстрота\r\n6 (EN ISO 105 – B02)\r\n(EN ISO 105 – A01)\r\nБыстрота к затиранию\r\n5-4, сухой: 5 (ISO 105-X12)');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '4005.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.143 YaBrowser/19.7.3.172 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-03 17:17:29', '2019-09-03 17:17:29'),
(2, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '4005.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.143 YaBrowser/19.7.3.172 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-03 17:37:12', '2019-09-03 17:37:12'),
(3, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '4005.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.143 YaBrowser/19.7.3.172 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-03 17:42:20', '2019-09-03 17:42:20'),
(4, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '4005.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.143 YaBrowser/19.7.3.172 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-03 17:48:30', '2019-09-03 17:48:30'),
(5, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '4005.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.143 YaBrowser/19.7.3.172 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-03 17:51:49', '2019-09-03 17:51:49'),
(6, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '4005.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.143 YaBrowser/19.7.3.172 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-03 18:02:36', '2019-09-03 18:02:36'),
(7, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '4005.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.143 YaBrowser/19.7.3.172 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-03 18:03:25', '2019-09-03 18:03:25'),
(8, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '4005.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.143 YaBrowser/19.7.3.172 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-03 18:04:14', '2019-09-03 18:04:14'),
(9, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '4005.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.143 YaBrowser/19.7.3.172 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-03 18:08:32', '2019-09-03 18:08:32'),
(10, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '4005.0000', 1, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.143 YaBrowser/19.7.3.172 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-03 18:09:42', '2019-09-03 18:11:22'),
(11, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '54005.0000', 1, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.143 YaBrowser/19.7.3.172 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-03 18:52:37', '2019-09-03 18:52:40'),
(12, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '7505.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 12:29:07', '2019-09-05 12:29:07'),
(13, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '15505.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 13:13:12', '2019-09-05 13:13:12'),
(14, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '27505.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 13:15:36', '2019-09-05 13:15:36'),
(15, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '15005.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 14:45:53', '2019-09-05 14:45:53'),
(16, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '8505.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 14:47:55', '2019-09-05 14:47:55'),
(17, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '8505.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 15:25:47', '2019-09-05 15:25:47'),
(18, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '8505.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 15:34:30', '2019-09-05 15:34:30'),
(19, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '8505.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 15:35:20', '2019-09-05 15:35:20'),
(20, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '8505.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 15:35:46', '2019-09-05 15:35:46'),
(21, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '8505.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 15:40:49', '2019-09-05 15:40:49'),
(22, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '8505.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 15:41:40', '2019-09-05 15:41:40'),
(23, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '8505.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 15:42:18', '2019-09-05 15:42:18'),
(24, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '8505.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 15:47:39', '2019-09-05 15:47:39'),
(25, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '8505.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 15:49:36', '2019-09-05 15:49:36'),
(26, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '8505.0000', 0, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 16:22:43', '2019-09-05 16:22:43'),
(27, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', 'ffffffffffff', '8505.0000', 1, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 16:34:09', '2019-09-05 16:34:25'),
(28, 0, 'INV-2019-00', 0, 'КазМебельГрупп', 'http://kazmebel/', 2, 1, 'Имя', 'Вамилия', 'ya_spamm@mail.ru', '7777777', '', '', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Оплата при доставке', 'cod', 'Имя', 'Вамилия', '', 'г. Уральск', '', 'Нур-Султан', '09000', 'Казахстан', 109, 'Акмолинская область', 22, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '4505.0000', 1, 0, '0.0000', 0, '', 1, 1, 'KZT', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 YaBrowser/19.9.0.1343 Yowser/2.5 Safari/537.36', 'ru,en;q=0.9,la;q=0.8,uk;q=0.7,de;q=0.6,bg;q=0.5,pt;q=0.4,it;q=0.3,fr;q=0.2', '2019-09-05 16:50:10', '2019-09-05 16:53:04');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 10, 1, 0, '', '2019-09-03 18:11:22'),
(2, 11, 1, 0, '', '2019-09-03 18:52:40'),
(3, 27, 1, 0, '', '2019-09-05 16:34:25'),
(4, 28, 1, 0, '', '2019-09-05 16:53:04');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 52, 'СТУЛ EVA.II', 'СТУЛ EVA.II', 1, '4000.0000', '4000.0000', '0.0000', 0),
(2, 2, 52, 'СТУЛ EVA.II', 'СТУЛ EVA.II', 1, '4000.0000', '4000.0000', '0.0000', 0),
(3, 3, 52, 'СТУЛ EVA.II', 'СТУЛ EVA.II', 1, '4000.0000', '4000.0000', '0.0000', 0),
(4, 4, 52, 'СТУЛ EVA.II', 'СТУЛ EVA.II', 1, '4000.0000', '4000.0000', '0.0000', 0),
(5, 5, 52, 'СТУЛ EVA.II', 'СТУЛ EVA.II', 1, '4000.0000', '4000.0000', '0.0000', 0),
(6, 6, 52, 'СТУЛ EVA.II', 'СТУЛ EVA.II', 1, '4000.0000', '4000.0000', '0.0000', 0),
(7, 7, 52, 'СТУЛ EVA.II', 'СТУЛ EVA.II', 1, '4000.0000', '4000.0000', '0.0000', 0),
(8, 8, 52, 'СТУЛ EVA.II', 'СТУЛ EVA.II', 1, '4000.0000', '4000.0000', '0.0000', 0),
(9, 9, 52, 'СТУЛ EVA.II', 'СТУЛ EVA.II', 1, '4000.0000', '4000.0000', '0.0000', 0),
(10, 10, 52, 'СТУЛ EVA.II', 'СТУЛ EVA.II', 1, '4000.0000', '4000.0000', '0.0000', 0),
(11, 11, 53, 'СТУЛ EVA.II', 'СТУЛ EVA.II', 18, '3000.0000', '54000.0000', '0.0000', 0),
(12, 12, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 5, '1500.0000', '7500.0000', '0.0000', 0),
(13, 13, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 5, '1500.0000', '7500.0000', '0.0000', 0),
(14, 13, 67, 'СТУЛ EVA 2', 'СТУЛ EVA.II', 4, '2000.0000', '8000.0000', '0.0000', 0),
(15, 14, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 5, '1500.0000', '7500.0000', '0.0000', 0),
(16, 14, 67, 'СТУЛ EVA 2', 'СТУЛ EVA.II', 10, '2000.0000', '20000.0000', '0.0000', 0),
(17, 15, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 6, '1500.0000', '9000.0000', '0.0000', 0),
(18, 15, 67, 'СТУЛ EVA 2', 'СТУЛ EVA.II', 3, '2000.0000', '6000.0000', '0.0000', 0),
(19, 16, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 3, '1500.0000', '4500.0000', '0.0000', 0),
(20, 16, 67, 'СТУЛ EVA 2', 'СТУЛ EVA.II', 2, '2000.0000', '4000.0000', '0.0000', 0),
(21, 17, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 3, '1500.0000', '4500.0000', '0.0000', 0),
(22, 17, 67, 'СТУЛ EVA 2', 'СТУЛ EVA.II', 2, '2000.0000', '4000.0000', '0.0000', 0),
(23, 18, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 3, '1500.0000', '4500.0000', '0.0000', 0),
(24, 18, 67, 'СТУЛ EVA 2', 'СТУЛ EVA.II', 2, '2000.0000', '4000.0000', '0.0000', 0),
(25, 19, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 3, '1500.0000', '4500.0000', '0.0000', 0),
(26, 19, 67, 'СТУЛ EVA 2', 'СТУЛ EVA.II', 2, '2000.0000', '4000.0000', '0.0000', 0),
(27, 20, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 3, '1500.0000', '4500.0000', '0.0000', 0),
(28, 20, 67, 'СТУЛ EVA 2', 'СТУЛ EVA.II', 2, '2000.0000', '4000.0000', '0.0000', 0),
(29, 21, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 3, '1500.0000', '4500.0000', '0.0000', 0),
(30, 21, 67, 'СТУЛ EVA 2', 'СТУЛ EVA.II', 2, '2000.0000', '4000.0000', '0.0000', 0),
(31, 22, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 3, '1500.0000', '4500.0000', '0.0000', 0),
(32, 22, 67, 'СТУЛ EVA 2', 'СТУЛ EVA.II', 2, '2000.0000', '4000.0000', '0.0000', 0),
(33, 23, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 3, '1500.0000', '4500.0000', '0.0000', 0),
(34, 23, 67, 'СТУЛ EVA 2', 'СТУЛ EVA.II', 2, '2000.0000', '4000.0000', '0.0000', 0),
(35, 24, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 3, '1500.0000', '4500.0000', '0.0000', 0),
(36, 24, 67, 'СТУЛ EVA 2', 'СТУЛ EVA.II', 2, '2000.0000', '4000.0000', '0.0000', 0),
(37, 25, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 3, '1500.0000', '4500.0000', '0.0000', 0),
(38, 25, 67, 'СТУЛ EVA 2', 'СТУЛ EVA.II', 2, '2000.0000', '4000.0000', '0.0000', 0),
(39, 26, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 3, '1500.0000', '4500.0000', '0.0000', 0),
(40, 26, 67, 'СТУЛ EVA 2', 'СТУЛ EVA.II', 2, '2000.0000', '4000.0000', '0.0000', 0),
(41, 27, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 3, '1500.0000', '4500.0000', '0.0000', 0),
(42, 27, 67, 'СТУЛ EVA 2', 'СТУЛ EVA.II', 2, '2000.0000', '4000.0000', '0.0000', 0),
(43, 28, 66, 'СТУЛ EVA', 'СТУЛ EVA.II', 3, '1500.0000', '4500.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Ожидание'),
(2, 1, 'В обработке'),
(3, 1, 'Доставлено'),
(7, 1, 'Отменено'),
(5, 1, 'Сделка завершена'),
(8, 1, 'Возврат'),
(9, 1, 'Отмена и аннулирование'),
(10, 1, 'Неудавшийся'),
(11, 1, 'Возмещенный'),
(12, 1, 'Полностью измененный'),
(13, 1, 'Полный возврат'),
(1, 2, 'Ожидание'),
(2, 2, 'В обработке'),
(3, 2, 'Доставлено'),
(7, 2, 'Отменено'),
(5, 2, 'Сделка завершена'),
(8, 2, 'Возврат'),
(9, 2, 'Отмена и аннулирование'),
(10, 2, 'Неудавшийся'),
(11, 2, 'Возмещенный'),
(12, 2, 'Полностью измененный'),
(13, 2, 'Полный возврат');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Сумма', '4000.0000', 1),
(2, 1, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(3, 1, 'total', 'Итого', '4005.0000', 9),
(4, 2, 'sub_total', 'Сумма', '4000.0000', 1),
(5, 2, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(6, 2, 'total', 'Итого', '4005.0000', 9),
(7, 3, 'sub_total', 'Сумма', '4000.0000', 1),
(8, 3, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(9, 3, 'total', 'Итого', '4005.0000', 9),
(10, 4, 'sub_total', 'Сумма', '4000.0000', 1),
(11, 4, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(12, 4, 'total', 'Итого', '4005.0000', 9),
(13, 5, 'sub_total', 'Сумма', '4000.0000', 1),
(14, 5, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(15, 5, 'total', 'Итого', '4005.0000', 9),
(16, 6, 'sub_total', 'Сумма', '4000.0000', 1),
(17, 6, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(18, 6, 'total', 'Итого', '4005.0000', 9),
(19, 7, 'sub_total', 'Сумма', '4000.0000', 1),
(20, 7, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(21, 7, 'total', 'Итого', '4005.0000', 9),
(22, 8, 'sub_total', 'Сумма', '4000.0000', 1),
(23, 8, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(24, 8, 'total', 'Итого', '4005.0000', 9),
(25, 9, 'sub_total', 'Сумма', '4000.0000', 1),
(26, 9, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(27, 9, 'total', 'Итого', '4005.0000', 9),
(28, 10, 'sub_total', 'Сумма', '4000.0000', 1),
(29, 10, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(30, 10, 'total', 'Итого', '4005.0000', 9),
(31, 11, 'sub_total', 'Сумма', '54000.0000', 1),
(32, 11, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(33, 11, 'total', 'Итого', '54005.0000', 9),
(34, 12, 'sub_total', 'Сумма', '7500.0000', 1),
(35, 12, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(36, 12, 'total', 'Итого', '7505.0000', 9),
(37, 13, 'sub_total', 'Сумма', '15500.0000', 1),
(38, 13, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(39, 13, 'total', 'Итого', '15505.0000', 9),
(40, 14, 'sub_total', 'Сумма', '27500.0000', 1),
(41, 14, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(42, 14, 'total', 'Итого', '27505.0000', 9),
(43, 15, 'sub_total', 'Сумма', '15000.0000', 1),
(44, 15, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(45, 15, 'total', 'Итого', '15005.0000', 9),
(46, 16, 'sub_total', 'Сумма', '8500.0000', 1),
(47, 16, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(48, 16, 'total', 'Итого', '8505.0000', 9),
(49, 17, 'sub_total', 'Сумма', '8500.0000', 1),
(50, 17, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(51, 17, 'total', 'Итого', '8505.0000', 9),
(52, 18, 'sub_total', 'Сумма', '8500.0000', 1),
(53, 18, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(54, 18, 'total', 'Итого', '8505.0000', 9),
(55, 19, 'sub_total', 'Сумма', '8500.0000', 1),
(56, 19, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(57, 19, 'total', 'Итого', '8505.0000', 9),
(58, 20, 'sub_total', 'Сумма', '8500.0000', 1),
(59, 20, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(60, 20, 'total', 'Итого', '8505.0000', 9),
(61, 21, 'sub_total', 'Сумма', '8500.0000', 1),
(62, 21, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(63, 21, 'total', 'Итого', '8505.0000', 9),
(64, 22, 'sub_total', 'Сумма', '8500.0000', 1),
(65, 22, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(66, 22, 'total', 'Итого', '8505.0000', 9),
(67, 23, 'sub_total', 'Сумма', '8500.0000', 1),
(68, 23, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(69, 23, 'total', 'Итого', '8505.0000', 9),
(70, 24, 'sub_total', 'Сумма', '8500.0000', 1),
(71, 24, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(72, 24, 'total', 'Итого', '8505.0000', 9),
(73, 25, 'sub_total', 'Сумма', '8500.0000', 1),
(74, 25, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(75, 25, 'total', 'Итого', '8505.0000', 9),
(76, 26, 'sub_total', 'Сумма', '8500.0000', 1),
(77, 26, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(78, 26, 'total', 'Итого', '8505.0000', 9),
(79, 27, 'sub_total', 'Сумма', '8500.0000', 1),
(80, 27, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(81, 27, 'total', 'Итого', '8505.0000', 9),
(82, 28, 'sub_total', 'Сумма', '4500.0000', 1),
(83, 28, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(84, 28, 'total', 'Итого', '4505.0000', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(81, 'СТУЛ EVA.II', '', '', '', '', '', '', '', 9999, 7, 'catalog/Category/item/chair.jpg', 11, 1, '4000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-09-08 16:14:00', '2019-09-08 16:16:29'),
(80, 'СТУЛ EVA.II', '', '', '', '', '', '', '', 9999, 7, 'catalog/Category/item/chair.jpg', 11, 1, '4000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-09-08 16:14:00', '2019-09-08 16:16:09'),
(79, 'СТУЛ EVA.II', '', '', '', '', '', '', '', 9999, 7, 'catalog/Category/item/chair.jpg', 11, 1, '2000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-09-08 16:14:00', '2019-09-08 16:15:54'),
(66, 'СТУЛ EVA.II', '', '', '', '', '9 лет', 'Гарантия на офисную мебель', '', 9993, 7, 'catalog/Category/item/chair.jpg', 11, 1, '6000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 80, '2019-09-04 11:46:07', '2019-09-08 16:05:40'),
(67, 'СТУЛ EVA.II', '', '', '', '', '', '', '', 9997, 7, 'catalog/Category/item/chair.jpg', 13, 1, '9000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 5, '2019-09-04 11:59:16', '2019-09-08 16:05:08'),
(68, 'СТУЛ EVA.II', '', '', '', '', '', '', '', 9999, 7, 'catalog/Category/item/chair.jpg', 11, 1, '2000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2019-09-04 11:59:23', '2019-09-08 16:06:07'),
(69, 'СТУЛ EVA.II', '', '', '', '', '', '', '', 9999, 7, 'catalog/Category/item/chair.jpg', 11, 1, '4000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-09-04 11:59:23', '2019-09-08 16:06:30'),
(70, 'СТУЛ EVA.II', '', '', '', '', '9 лет', 'Гарантия на офисную мебель', '', 9993, 7, 'catalog/Category/item/chair.jpg', 11, 1, '6000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-09-08 16:06:54', '2019-09-08 16:07:11'),
(71, 'СТУЛ EVA.II', '', '', '', '', '', '', '', 9997, 7, 'catalog/Category/item/chair.jpg', 13, 1, '9000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-09-08 16:06:54', '2019-09-08 16:07:31'),
(72, 'СТУЛ EVA.II', '', '', '', '', '', '', '', 9999, 7, 'catalog/Category/item/chair.jpg', 11, 1, '2000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-09-08 16:06:54', '2019-09-08 16:07:48'),
(73, 'СТУЛ EVA.II', '', '', '', '', '', '', '', 9999, 7, 'catalog/Category/item/chair.jpg', 11, 1, '4000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-09-08 16:06:54', '2019-09-08 16:08:05'),
(74, 'СТУЛ EVA.II', '', '', '', '', '9 лет', 'Гарантия на офисную мебель', '', 9993, 7, 'catalog/Category/item/chair.jpg', 11, 1, '6000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2019-09-08 16:13:59', '2019-09-08 16:14:18'),
(75, 'СТУЛ EVA.II', '', '', '', '', '9 лет', 'Гарантия на офисную мебель', '', 9993, 7, 'catalog/Category/item/chair.jpg', 11, 1, '6000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-09-08 16:14:00', '2019-09-08 16:14:36'),
(76, 'СТУЛ EVA.II', '', '', '', '', '', '', '', 9997, 7, 'catalog/Category/item/chair.jpg', 13, 1, '9000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-09-08 16:14:00', '2019-09-08 16:14:55'),
(77, 'СТУЛ EVA.II', '', '', '', '', '', '', '', 9997, 7, 'catalog/Category/item/chair.jpg', 13, 1, '9000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-09-08 16:14:00', '2019-09-08 16:15:18'),
(78, 'СТУЛ EVA.II', '', '', '', '', '', '', '', 9999, 7, 'catalog/Category/item/chair.jpg', 11, 1, '2000.0000', 0, 0, '2019-09-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-09-08 16:14:00', '2019-09-08 16:15:37');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(81, 1, 'СТУЛ EVA 4', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', ''),
(81, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(80, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(79, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(80, 1, 'СТУЛ EVA 4', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', ''),
(78, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(79, 1, 'СТУЛ EVA 3', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', ''),
(77, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(78, 1, 'СТУЛ EVA 3', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', ''),
(76, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(77, 1, 'СТУЛ EVA 2', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', ''),
(75, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(76, 1, 'СТУЛ EVA 2', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', ''),
(66, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(66, 1, 'СТУЛ EVA', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', ''),
(67, 1, 'СТУЛ EVA 2', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', ''),
(67, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(68, 1, 'СТУЛ EVA 3', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', ''),
(68, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(74, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(75, 1, 'СТУЛ EVA', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', ''),
(73, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(74, 1, 'СТУЛ EVA', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', ''),
(69, 1, 'СТУЛ EVA 4', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', ''),
(69, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(70, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(70, 1, 'СТУЛ EVA', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', ''),
(71, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(71, 1, 'СТУЛ EVA 2', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', ''),
(72, 2, 'THE CHAIR EVA.II', '', '', 'THE CHAIR EVA.II', '', ''),
(72, 1, 'СТУЛ EVA 3', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', ''),
(73, 1, 'СТУЛ EVA 4', '&lt;div&gt;Идейные соображения высшего порядка, а также консультация с широким активом способствует подготовки и реализации направлений прогрессивного развития. Равным образом сложившаяся структура организации позволяет оценить значение систем массового участия. С другой стороны рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений.&lt;br&gt;&lt;/div&gt;&lt;div&gt;активизации. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.&amp;nbsp;&lt;/div&gt;', '', 'СТУЛ EVA', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(466, 70, 1, 999, 0, '3000.0000', '2019-09-01', '2020-01-09'),
(458, 67, 1, 999, 0, '4000.0000', '2019-09-01', '2020-01-09'),
(460, 66, 1, 999, 0, '3000.0000', '2019-09-01', '2020-01-09'),
(461, 69, 1, 999, 0, '2000.0000', '2019-09-01', '2020-01-09'),
(468, 71, 1, 999, 0, '4000.0000', '2019-09-01', '2020-01-09'),
(470, 73, 1, 999, 0, '2000.0000', '2019-09-01', '2020-01-09'),
(478, 74, 1, 999, 0, '3000.0000', '2019-09-01', '2020-01-09'),
(480, 75, 1, 999, 0, '3000.0000', '2019-09-01', '2020-01-09'),
(481, 76, 1, 999, 0, '4000.0000', '2019-09-01', '2020-01-09'),
(483, 77, 1, 999, 0, '4000.0000', '2019-09-01', '2020-01-09'),
(485, 80, 1, 999, 0, '2000.0000', '2019-09-01', '2020-01-09'),
(489, 81, 1, 999, 0, '2000.0000', '2019-09-01', '2020-01-09');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `title`, `year`, `sort_order`) VALUES
(2441, 66, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2440, 66, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2439, 66, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0),
(2435, 67, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2434, 67, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2433, 67, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0),
(2447, 68, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0),
(2446, 68, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2445, 68, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2450, 69, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2449, 69, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2448, 69, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0),
(2468, 70, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0),
(2467, 70, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2466, 70, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2474, 71, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0),
(2473, 71, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2472, 71, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2480, 72, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2479, 72, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2478, 72, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0),
(2486, 73, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0),
(2485, 73, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2484, 73, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2516, 74, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0),
(2515, 74, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2514, 74, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2522, 75, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2521, 75, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2520, 75, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0),
(2525, 76, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0),
(2524, 76, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2523, 76, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2531, 77, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2530, 77, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2529, 77, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0),
(2537, 78, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2536, 78, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2535, 78, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0),
(2543, 79, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0),
(2542, 79, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2541, 79, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2549, 80, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0),
(2548, 80, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2547, 80, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2561, 81, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 1', '2017', 0),
(2560, 81, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 2', '2018', 0),
(2559, 81, 'catalog/Slide/gallery-slider.jpg', 'ЗАГОЛОВОК СТУЛ В КАКОМ ИНТЕРЬЕРЕ 3', '2019', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(241, 70, 13, '', 0),
(239, 69, 14, '', 1),
(238, 69, 13, '', 1),
(236, 68, 14, '', 1),
(237, 68, 13, '', 1),
(235, 67, 13, '', 0),
(234, 67, 14, '', 0),
(232, 66, 14, '', 0),
(233, 66, 13, '', 0),
(240, 70, 14, '', 0),
(243, 71, 14, '', 0),
(242, 71, 13, '', 0),
(245, 72, 13, '', 1),
(244, 72, 14, '', 1),
(248, 74, 14, '', 0),
(249, 74, 13, '', 0),
(251, 75, 14, '', 0),
(250, 75, 13, '', 0),
(253, 76, 14, '', 0),
(252, 76, 13, '', 0),
(255, 77, 13, '', 0),
(254, 77, 14, '', 0),
(257, 78, 13, '', 1),
(256, 78, 14, '', 1),
(259, 79, 14, '', 1),
(258, 79, 13, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(63, 235, 67, 13, 53, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(62, 235, 67, 13, 51, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(61, 235, 67, 13, 50, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(60, 235, 67, 13, 52, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(59, 234, 67, 14, 57, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(58, 234, 67, 14, 59, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(57, 234, 67, 14, 58, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(56, 234, 67, 14, 60, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(49, 232, 66, 14, 58, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(50, 232, 66, 14, 59, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(51, 232, 66, 14, 57, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(48, 232, 66, 14, 60, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(53, 233, 66, 13, 50, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(54, 233, 66, 13, 51, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(55, 233, 66, 13, 53, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(52, 233, 66, 13, 52, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(66, 236, 68, 14, 59, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(65, 236, 68, 14, 58, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(64, 236, 68, 14, 60, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(67, 236, 68, 14, 57, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(70, 237, 68, 13, 51, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(69, 237, 68, 13, 50, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(68, 237, 68, 13, 52, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(71, 237, 68, 13, 53, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(85, 241, 70, 13, 50, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(86, 241, 70, 13, 51, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(87, 241, 70, 13, 53, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(84, 241, 70, 13, 52, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(81, 240, 70, 14, 58, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(82, 240, 70, 14, 59, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(83, 240, 70, 14, 57, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(80, 240, 70, 14, 60, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(94, 243, 71, 14, 59, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(93, 243, 71, 14, 57, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(92, 243, 71, 14, 60, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(95, 243, 71, 14, 58, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(90, 242, 71, 13, 51, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(89, 242, 71, 13, 53, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(88, 242, 71, 13, 52, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(91, 242, 71, 13, 50, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(102, 245, 72, 13, 50, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(101, 245, 72, 13, 51, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(100, 245, 72, 13, 53, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(103, 245, 72, 13, 52, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(98, 244, 72, 14, 58, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(97, 244, 72, 14, 59, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(96, 244, 72, 14, 57, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(99, 244, 72, 14, 60, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(106, 248, 74, 14, 59, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(105, 248, 74, 14, 58, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(104, 248, 74, 14, 60, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(107, 248, 74, 14, 57, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(110, 249, 74, 13, 51, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(109, 249, 74, 13, 50, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(108, 249, 74, 13, 52, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(111, 249, 74, 13, 53, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(118, 251, 75, 14, 59, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(117, 251, 75, 14, 58, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(116, 251, 75, 14, 60, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(119, 251, 75, 14, 57, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(114, 250, 75, 13, 51, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(113, 250, 75, 13, 50, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(112, 250, 75, 13, 52, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(115, 250, 75, 13, 53, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(134, 255, 77, 13, 53, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(133, 255, 77, 13, 51, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(132, 255, 77, 13, 50, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(135, 255, 77, 13, 52, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(130, 254, 77, 14, 57, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(129, 254, 77, 14, 59, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(128, 254, 77, 14, 58, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(131, 254, 77, 14, 60, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(142, 257, 78, 13, 50, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(141, 257, 78, 13, 51, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(140, 257, 78, 13, 53, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(143, 257, 78, 13, 52, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(138, 256, 78, 14, 58, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(137, 256, 78, 14, 59, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(136, 256, 78, 14, 57, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(139, 256, 78, 14, 60, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(150, 259, 79, 14, 59, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(149, 259, 79, 14, 58, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(148, 259, 79, 14, 60, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(151, 259, 79, 14, 57, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(146, 258, 79, 13, 51, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(145, 258, 79, 13, 50, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(144, 258, 79, 13, 52, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(147, 258, 79, 13, 53, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(66, 67),
(66, 68),
(66, 69),
(66, 71),
(66, 72),
(66, 73),
(66, 76),
(66, 77),
(66, 78),
(66, 79),
(66, 80),
(66, 81),
(67, 66),
(67, 67),
(67, 68),
(67, 69),
(67, 70),
(67, 71),
(67, 72),
(67, 73),
(67, 74),
(67, 75),
(67, 76),
(67, 77),
(67, 78),
(67, 79),
(67, 80),
(67, 81),
(68, 66),
(68, 67),
(68, 68),
(68, 69),
(68, 70),
(68, 71),
(68, 72),
(68, 73),
(68, 74),
(68, 75),
(68, 76),
(68, 77),
(68, 78),
(68, 79),
(68, 80),
(68, 81),
(69, 66),
(69, 67),
(69, 68),
(69, 69),
(69, 70),
(69, 71),
(69, 72),
(69, 73),
(69, 74),
(69, 75),
(69, 76),
(69, 77),
(69, 78),
(69, 79),
(69, 80),
(69, 81),
(70, 67),
(70, 68),
(70, 69),
(70, 71),
(70, 72),
(70, 73),
(70, 76),
(70, 77),
(70, 78),
(70, 79),
(70, 80),
(70, 81),
(71, 66),
(71, 67),
(71, 68),
(71, 69),
(71, 70),
(71, 72),
(71, 73),
(71, 74),
(71, 75),
(71, 76),
(71, 78),
(71, 79),
(71, 80),
(71, 81),
(72, 66),
(72, 67),
(72, 68),
(72, 69),
(72, 70),
(72, 71),
(72, 73),
(72, 74),
(72, 75),
(72, 76),
(72, 77),
(72, 78),
(72, 80),
(72, 81),
(73, 66),
(73, 67),
(73, 68),
(73, 69),
(73, 70),
(73, 71),
(73, 72),
(73, 74),
(73, 75),
(73, 76),
(73, 77),
(73, 78),
(73, 79),
(73, 80),
(74, 67),
(74, 68),
(74, 69),
(74, 71),
(74, 72),
(74, 73),
(74, 76),
(74, 77),
(74, 78),
(74, 79),
(74, 80),
(74, 81),
(75, 67),
(75, 68),
(75, 69),
(75, 71),
(75, 72),
(75, 73),
(75, 76),
(75, 77),
(75, 78),
(75, 79),
(75, 80),
(75, 81),
(76, 66),
(76, 67),
(76, 68),
(76, 69),
(76, 70),
(76, 71),
(76, 72),
(76, 73),
(76, 74),
(76, 75),
(76, 77),
(76, 78),
(76, 79),
(76, 80),
(76, 81),
(77, 66),
(77, 67),
(77, 68),
(77, 69),
(77, 70),
(77, 72),
(77, 73),
(77, 74),
(77, 75),
(77, 76),
(77, 78),
(77, 79),
(77, 80),
(77, 81),
(78, 66),
(78, 67),
(78, 68),
(78, 69),
(78, 70),
(78, 71),
(78, 72),
(78, 73),
(78, 74),
(78, 75),
(78, 76),
(78, 77),
(78, 79),
(78, 80),
(78, 81),
(79, 66),
(79, 67),
(79, 68),
(79, 69),
(79, 70),
(79, 71),
(79, 73),
(79, 74),
(79, 75),
(79, 76),
(79, 77),
(79, 78),
(79, 80),
(79, 81),
(80, 66),
(80, 67),
(80, 68),
(80, 69),
(80, 70),
(80, 71),
(80, 72),
(80, 73),
(80, 74),
(80, 75),
(80, 76),
(80, 77),
(80, 78),
(80, 79),
(80, 81),
(81, 66),
(81, 67),
(81, 68),
(81, 69),
(81, 70),
(81, 71),
(81, 72),
(81, 74),
(81, 75),
(81, 76),
(81, 77),
(81, 78),
(81, 79),
(81, 80);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(550, 81, 1, 0, '500.0000', '2019-08-30', '2020-02-15'),
(546, 80, 1, 0, '500.0000', '2019-08-30', '2020-02-15'),
(544, 77, 1, 0, '2000.0000', '2019-08-30', '2020-02-15'),
(542, 76, 1, 0, '2000.0000', '2019-08-30', '2020-02-15'),
(541, 75, 1, 0, '1500.0000', '2019-08-30', '2020-02-15'),
(539, 74, 1, 0, '1500.0000', '2019-08-30', '2020-02-15'),
(531, 73, 1, 0, '500.0000', '2019-08-30', '2020-02-15'),
(529, 71, 1, 0, '2000.0000', '2019-08-30', '2020-02-15'),
(522, 69, 1, 0, '500.0000', '2019-08-30', '2020-02-15'),
(527, 70, 1, 0, '1500.0000', '2019-08-30', '2020-02-15'),
(519, 67, 1, 0, '2000.0000', '2019-08-30', '2020-02-15'),
(521, 66, 1, 0, '1500.0000', '2019-08-30', '2020-02-15');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(66, 59),
(66, 63),
(66, 64),
(66, 65),
(66, 66),
(67, 59),
(67, 63),
(67, 64),
(67, 65),
(67, 66),
(68, 59),
(68, 63),
(68, 64),
(68, 65),
(68, 66),
(69, 59),
(69, 63),
(69, 64),
(69, 65),
(69, 66),
(70, 59),
(70, 63),
(70, 64),
(70, 65),
(70, 66),
(71, 59),
(71, 63),
(71, 64),
(71, 65),
(71, 66),
(72, 59),
(72, 63),
(72, 64),
(72, 65),
(72, 66),
(73, 59),
(73, 63),
(73, 64),
(73, 65),
(73, 66),
(74, 59),
(74, 63),
(74, 64),
(74, 65),
(74, 66),
(75, 59),
(75, 63),
(75, 64),
(75, 65),
(75, 66),
(76, 59),
(76, 63),
(76, 64),
(76, 65),
(76, 66),
(77, 59),
(77, 63),
(77, 64),
(77, 65),
(77, 66),
(78, 59),
(78, 63),
(78, 64),
(78, 65),
(78, 66),
(79, 59),
(79, 63),
(79, 64),
(79, 65),
(79, 66),
(80, 59),
(80, 63),
(80, 64),
(80, 65),
(80, 66),
(81, 59),
(81, 63),
(81, 64),
(81, 65),
(81, 66);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_download`
--

INSERT INTO `oc_product_to_download` (`product_id`, `download_id`) VALUES
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(80, 0, 0),
(81, 0, 0),
(79, 0, 0),
(78, 0, 0),
(77, 0, 0),
(76, 0, 0),
(75, 0, 0),
(74, 0, 0),
(73, 0, 0),
(72, 0, 0),
(71, 0, 0),
(70, 0, 0),
(69, 0, 0),
(68, 0, 0),
(67, 0, 0),
(66, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Возвращены средства'),
(2, 1, 'Выдан в кредит'),
(3, 1, 'Отправлен другой товар для замены'),
(1, 2, 'Возвращены средства'),
(2, 2, 'Выдан в кредит'),
(3, 2, 'Отправлен другой товар для замены');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Получен/доставлен неисправным (сломан)'),
(2, 1, 'Получен не тот (ошибочный) товар'),
(3, 1, 'Ошибочный заказ'),
(4, 1, 'Ошибка, пожалуйста укажите/приложите подробности'),
(5, 1, 'Другое (другая причина), пожалуйста укажите/приложите подробности'),
(1, 2, 'Получен/доставлен неисправным (сломан)'),
(2, 2, 'Получен не тот (ошибочный) товар'),
(3, 2, 'Ошибочный заказ'),
(4, 2, 'Ошибка, пожалуйста укажите/приложите подробности'),
(5, 2, 'Другое (другая причина), пожалуйста укажите/приложите подробности');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Рассматриваемый'),
(3, 1, 'Готов (к отправке)'),
(2, 1, 'Заказ в ожидании'),
(1, 2, 'Рассматриваемый'),
(3, 2, 'Готов (к отправке)'),
(2, 2, 'Заказ в ожидании');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(888, 0, 1, 'information_id=4', 'about_us'),
(947, 0, 1, 'category_id=63', 'decors'),
(949, 0, 1, 'category_id=64', 'cabinet_furniture'),
(951, 0, 1, 'category_id=65', 'metal_furniture'),
(943, 0, 1, 'category_id=66', 'accessories'),
(955, 0, 1, 'category_id=62', 'office_furniture'),
(953, 0, 1, 'category_id=59', 'soft_furniture'),
(957, 0, 1, 'manufacturer_id=11', 'italiya'),
(958, 0, 1, 'manufacturer_id=12', 'franciya'),
(959, 0, 1, 'manufacturer_id=13', 'germaniya'),
(960, 0, 1, 'manufacturer_id=14', 'kitaj'),
(961, 0, 1, 'manufacturer_id=15', 'angliya'),
(1005, 0, 1, 'product_id=66', 'stul-eva'),
(1003, 0, 1, 'product_id=67', 'stul-eva2'),
(1007, 0, 1, 'product_id=68', 'stul-eva-3'),
(1008, 0, 1, 'product_id=69', 'stul-eva-4'),
(896, 0, 1, 'information_id=7', 'product_category'),
(841, 0, 1, 'information_id=6', 'delivery'),
(956, 0, 1, 'information_id=3', 'privacy'),
(891, 0, 1, 'information_id=5', 'terms'),
(845, 0, 1, 'common/home', ''),
(846, 0, 1, 'information/contact', 'contact'),
(847, 0, 1, 'information/sitemap', 'sitemap'),
(848, 0, 1, 'product/special', 'specials'),
(849, 0, 1, 'product/manufacturer', 'brands'),
(850, 0, 1, 'product/compare', 'compare-products'),
(851, 0, 1, 'product/search', 'search'),
(852, 0, 1, 'checkout/cart', 'cart'),
(853, 0, 1, 'checkout/checkout', 'checkout'),
(854, 0, 1, 'account/login', 'login'),
(855, 0, 1, 'account/logout', 'logout'),
(856, 0, 1, 'account/voucher', 'vouchers'),
(857, 0, 1, 'account/wishlist', 'wishlist'),
(858, 0, 1, 'account/account', 'my-account'),
(859, 0, 1, 'account/order', 'order-history'),
(860, 0, 1, 'account/newsletter', 'newsletter'),
(861, 0, 1, 'account/return/add', 'return-add'),
(862, 0, 1, 'account/forgotten', 'forgot-password'),
(863, 0, 1, 'account/download', 'downloads'),
(864, 0, 1, 'account/return', 'returns'),
(865, 0, 1, 'account/transaction', 'transactions'),
(866, 0, 1, 'account/register', 'create-account'),
(867, 0, 1, 'account/recurring', 'recurring'),
(868, 0, 1, 'account/address', 'address-book'),
(869, 0, 1, 'account/reward', 'reward-points'),
(870, 0, 1, 'account/edit', 'edit-account'),
(871, 0, 1, 'account/password', 'change-password'),
(880, 0, 1, 'affiliate/forgotten', 'affiliate-forgot-password'),
(881, 0, 1, 'affiliate/register', 'create-affiliate-account'),
(882, 0, 1, 'affiliate/login', 'affiliate-login'),
(883, 0, 1, 'affiliate/payment', 'affiliate-payment'),
(884, 0, 1, 'affiliate/tracking', 'affiliate-tracking'),
(885, 0, 1, 'affiliate/transaction', 'affiliate-transaction'),
(886, 0, 1, 'affiliate/account', 'affiliates');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('02c5d38cd11ddea7f509b81951', '{\"language\":\"ru-ru\",\"currency\":\"KZT\",\"user_id\":\"1\",\"user_token\":\"1AAl1NnPjCfdSThljCrHQ0iOmuFrURfV\",\"wishlist\":[\"66\"],\"customer_id\":\"2\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"\\u0418\\u043c\\u044f\",\"lastname\":\"\\u0412\\u0430\\u043c\\u0438\\u043b\\u0438\\u044f\",\"company\":\"\",\"address_1\":\"\\u0433. \\u0423\\u0440\\u0430\\u043b\\u044c\\u0441\\u043a\",\"address_2\":\"\",\"postcode\":\"09000\",\"city\":\"\\u041d\\u0443\\u0440-\\u0421\\u0443\\u043b\\u0442\\u0430\\u043d\",\"zone_id\":\"22\",\"zone\":\"\\u0410\\u043a\\u043c\\u043e\\u043b\\u0438\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c\",\"zone_code\":\"AM\",\"country_id\":\"109\",\"country\":\"\\u041a\\u0430\\u0437\\u0430\\u0445\\u0441\\u0442\\u0430\\u043d\",\"iso_code_2\":\"KZ\",\"iso_code_3\":\"KAZ\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"\\u0418\\u043c\\u044f\",\"lastname\":\"\\u0412\\u0430\\u043c\\u0438\\u043b\\u0438\\u044f\",\"company\":\"\",\"address_1\":\"\\u0433. \\u0423\\u0440\\u0430\\u043b\\u044c\\u0441\\u043a\",\"address_2\":\"\",\"postcode\":\"09000\",\"city\":\"\\u041d\\u0443\\u0440-\\u0421\\u0443\\u043b\\u0442\\u0430\\u043d\",\"zone_id\":\"22\",\"zone\":\"\\u0410\\u043a\\u043c\\u043e\\u043b\\u0438\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c\",\"zone_code\":\"AM\",\"country_id\":\"109\",\"country\":\"\\u041a\\u0430\\u0437\\u0430\\u0445\\u0441\\u0442\\u0430\\u043d\",\"iso_code_2\":\"KZ\",\"iso_code_3\":\"KAZ\",\"address_format\":\"\",\"custom_field\":null}}', '2019-09-05 15:32:47'),
('28cc6212dd8f47f323e4829a37', 'false', '2019-09-04 03:58:08'),
('32a996a6f2e978aacf8f77170f', '{\"language\":\"ru-ru\",\"currency\":\"KZT\",\"directory_file_manager\":\"Slide\",\"page_file_manager\":null,\"user_id\":\"1\",\"user_token\":\"hzJhkh58XmE0zvvmRye08AnddgMBElxU\",\"wishlist\":[\"66\",\"69\"],\"d_blog_module_debug\":0}', '2019-09-04 14:56:36'),
('808ea97b5300535e184a86d775', '{\"language\":\"ru-ru\",\"currency\":\"KZT\",\"user_id\":\"1\",\"user_token\":\"cF0e56emZRKb5oPwreZyBj08MvQlTAHB\",\"directory_file_manager\":null,\"page_file_manager\":null,\"customer_id\":\"1\"}', '2019-08-30 14:09:50'),
('84963f90c5b0575768aed0d1a7', '{\"language\":\"ru-ru\",\"currency\":\"KZT\",\"user_id\":\"1\",\"user_token\":\"oaA0gFzubowqV4AlelL2gbBWPXGXKTpi\",\"compare\":[],\"d_blog_module_debug\":0}', '2019-08-29 17:13:14'),
('8f7e301593692439e3e27aa119', '{\"language\":\"ru-ru\",\"currency\":\"KZT\"}', '2019-08-28 09:04:19'),
('90e79e123d24cbedc182a478e4', '{\"language\":\"ru-ru\",\"currency\":\"KZT\"}', '2019-08-27 04:10:44'),
('9259cabdc4468e01da39b677a7', '{\"language\":\"ru-ru\",\"currency\":\"KZT\"}', '2019-08-27 04:33:17'),
('9ade77cbf1e5a7b4837dca6421', '{\"language\":\"ru-ru\",\"currency\":\"KZT\",\"user_id\":\"1\",\"user_token\":\"xsS269mqdUiKh2uM0c1uC80YoIwgpCS7\",\"customer_id\":\"1\",\"shipping_address\":false,\"d_blog_module_debug\":0}', '2019-09-09 04:15:09'),
('a5fd63e4a583435795f639cb5a', '{\"language\":\"ru-ru\",\"currency\":\"KZT\"}', '2019-08-27 04:10:49'),
('ac6d603b644c5593ce53a0200a', '{\"language\":\"ru-ru\",\"currency\":\"KZT\",\"user_id\":\"1\",\"user_token\":\"Pz9aI5BeNL9J2l2iDuPiUghGXcFYWXnY\",\"install\":\"G6a22ZTOBE\"}', '2019-08-27 12:17:04'),
('b1fe4325dff7d470858094b34e', '{\"language\":\"ru-ru\",\"currency\":\"KZT\",\"user_id\":\"1\",\"user_token\":\"X4iMdMxd6oseqWNkSYWD8rPb7jNRaDpp\",\"customer_id\":\"1\",\"shipping_address\":false}', '2019-09-02 16:01:23'),
('b300cd4a992a1f7ecba4afd6c0', '{\"language\":\"ru-ru\",\"currency\":\"KZT\",\"user_id\":\"1\",\"user_token\":\"dnPX3zDUbNqPRIXk1WVFIkjZ1cVW33iC\"}', '2019-08-26 13:45:46'),
('d2ae9b1e9ade8cfcb1ce080e66', 'false', '2019-09-05 04:07:46'),
('e0eb7105fffd117e2dc5f23102', '{\"language\":\"ru-ru\",\"currency\":\"KZT\",\"user_id\":\"1\",\"user_token\":\"s525Gi6eV9ropaExDJXH2xSYzb6vYNv4\",\"wishlist\":[\"51\"],\"account\":\"register\",\"customer_id\":\"2\",\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"\\u0418\\u043c\\u044f\",\"lastname\":\"\\u0412\\u0430\\u043c\\u0438\\u043b\\u0438\\u044f\",\"company\":\"\",\"address_1\":\"\\u0433. \\u0423\\u0440\\u0430\\u043b\\u044c\\u0441\\u043a\",\"address_2\":\"\",\"postcode\":\"09000\",\"city\":\"\\u041d\\u0443\\u0440-\\u0421\\u0443\\u043b\\u0442\\u0430\\u043d\",\"zone_id\":\"22\",\"zone\":\"\\u0410\\u043a\\u043c\\u043e\\u043b\\u0438\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c\",\"zone_code\":\"AM\",\"country_id\":\"109\",\"country\":\"\\u041a\\u0430\\u0437\\u0430\\u0445\\u0441\\u0442\\u0430\\u043d\",\"iso_code_2\":\"KZ\",\"iso_code_3\":\"KAZ\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"\\u0418\\u043c\\u044f\",\"lastname\":\"\\u0412\\u0430\\u043c\\u0438\\u043b\\u0438\\u044f\",\"company\":\"\",\"address_1\":\"\\u0433. \\u0423\\u0440\\u0430\\u043b\\u044c\\u0441\\u043a\",\"address_2\":\"\",\"postcode\":\"09000\",\"city\":\"\\u041d\\u0443\\u0440-\\u0421\\u0443\\u043b\\u0442\\u0430\\u043d\",\"zone_id\":\"22\",\"zone\":\"\\u0410\\u043a\\u043c\\u043e\\u043b\\u0438\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c\",\"zone_code\":\"AM\",\"country_id\":\"109\",\"country\":\"\\u041a\\u0430\\u0437\\u0430\\u0445\\u0441\\u0442\\u0430\\u043d\",\"iso_code_2\":\"KZ\",\"iso_code_3\":\"KAZ\",\"address_format\":\"\",\"custom_field\":null}}', '2019-09-03 13:35:37');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(4, 0, 'total_voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'total_voucher', 'total_voucher_status', '1', 0),
(2900, 0, 'config', 'config_error_filename', 'error.log', 0),
(2899, 0, 'config', 'config_error_log', '1', 0),
(2898, 0, 'config', 'config_error_display', '1', 0),
(2044, 0, 'd_blog_module', 'd_blog_module_status', '1', 0),
(2895, 0, 'config', 'config_file_max_size', '300000', 0),
(2896, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(2620, 0, 'theme_kazmebel', 'theme_kazmebel_image_product_height', '228', 0),
(2621, 0, 'theme_kazmebel', 'theme_kazmebel_image_additional_width', '74', 0),
(2622, 0, 'theme_kazmebel', 'theme_kazmebel_image_additional_height', '74', 0),
(2623, 0, 'theme_kazmebel', 'theme_kazmebel_image_related_width', '80', 0),
(2624, 0, 'theme_kazmebel', 'theme_kazmebel_image_related_height', '80', 0),
(2625, 0, 'theme_kazmebel', 'theme_kazmebel_image_compare_width', '90', 0),
(2626, 0, 'theme_kazmebel', 'theme_kazmebel_image_compare_height', '90', 0),
(2627, 0, 'theme_kazmebel', 'theme_kazmebel_image_wishlist_width', '47', 0),
(2619, 0, 'theme_kazmebel', 'theme_kazmebel_image_product_width', '228', 0),
(2897, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(2610, 0, 'theme_kazmebel', 'theme_kazmebel_status', '1', 0),
(2611, 0, 'theme_kazmebel', 'theme_kazmebel_product_limit', '15', 0),
(2612, 0, 'theme_kazmebel', 'theme_kazmebel_product_description_length', '100', 0),
(2613, 0, 'theme_kazmebel', 'theme_kazmebel_image_category_width', '80', 0),
(2614, 0, 'theme_kazmebel', 'theme_kazmebel_image_category_height', '80', 0),
(2615, 0, 'theme_kazmebel', 'theme_kazmebel_image_thumb_width', '228', 0),
(2616, 0, 'theme_kazmebel', 'theme_kazmebel_image_thumb_height', '228', 0),
(2617, 0, 'theme_kazmebel', 'theme_kazmebel_image_popup_width', '500', 0),
(2618, 0, 'theme_kazmebel', 'theme_kazmebel_image_popup_height', '500', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '0', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(2728, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(2727, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(2726, 0, 'theme_default', 'theme_default_image_cart_height', '150', 0),
(2725, 0, 'theme_default', 'theme_default_image_cart_width', '150', 0),
(2724, 0, 'theme_default', 'theme_default_image_wishlist_height', '150', 0),
(2723, 0, 'theme_default', 'theme_default_image_wishlist_width', '150', 0),
(2722, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(2721, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(2720, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(2719, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(2718, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(2717, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(2716, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(2715, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(2710, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(2711, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(2712, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(2713, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(231, 0, 'developer', 'developer_sass', '0', 0),
(2042, 0, 'module_d_blog_module', 'module_d_blog_module_status', '1', 0),
(2043, 0, 'd_blog_module', 'd_blog_module_setting', '{\"config\":\"d_blog_module\",\"utc_datetime_format\":\"Y-m-d\\\\TH:i:sP\",\"dir_admin\":\"admin\",\"theme\":\"default\",\"admin_style\":\"light\",\"category\":{\"main_category_id\":1,\"layout\":[2],\"layout_type\":\"grid\",\"post_page_limit\":7,\"image_display\":1,\"image_width\":1200,\"image_height\":750,\"sub_category_display\":1,\"sub_category_col\":6,\"sub_category_image\":1,\"sub_category_post_count\":1,\"sub_category_image_width\":120,\"sub_category_image_height\":75,\"limited_post_display\":1,\"main_post_display\":1},\"post_thumb\":{\"image_width\":1200,\"image_height\":750,\"title_length\":100,\"short_description_length\":300,\"description_length\":300,\"category_label_display\":1,\"author_display\":1,\"date_display\":1,\"date_format\":{\"1\":\"%A %d %B, %Y\"},\"date_format_day\":\"%d\",\"date_format_month\":\"%B\",\"date_format_year\":\"%Y\",\"rating_display\":1,\"description_display\":1,\"tag_display\":1,\"views_display\":1,\"review_display\":1,\"read_more_display\":1,\"animate\":\"fadeIn\"},\"post\":{\"image_display\":1,\"image_width\":1200,\"image_height\":750,\"popup_display\":1,\"popup_width\":1400,\"popup_height\":875,\"author_display\":1,\"date_display\":1,\"date_format\":{\"1\":\"%A %d %B %Y\"},\"review_display\":1,\"rating_display\":1,\"category_label_display\":1,\"short_description_length\":150,\"style_short_description_display\":0,\"nav_display\":1,\"nav_same_category\":0,\"limit_access_user\":0,\"limit_access_user_group\":0,\"access_user\":[],\"access_user_group\":[]},\"review\":{\"guest\":1,\"social_login\":1,\"page_limit\":5,\"image_limit\":5,\"rating_display\":1,\"customer_display\":1,\"image_user_display\":1,\"moderate\":0,\"image_upload_width\":500,\"image_upload_height\":500},\"review_thumb\":{\"image_width\":70,\"image_height\":70,\"no_image\":\"catalog\\/d_blog_module\\/no_profile_image.png\",\"date_display\":1,\"image_display\":1,\"rating_display\":1,\"image_user_display\":1,\"image_user_width\":70,\"image_user_height\":70},\"author\":{\"layout\":[2],\"layout_type\":\"grid\",\"post_page_limit\":7,\"image_width\":400,\"image_height\":400,\"category_display\":1,\"category_col\":6,\"category_image\":1,\"category_post_count\":1,\"category_image_width\":120,\"category_image_height\":75},\"design\":{\"custom_style\":\"\",\"ssl_url\":\"\"}}', 1),
(2714, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(2709, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(2708, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(230, 0, 'developer', 'developer_theme', '0', 0),
(2628, 0, 'theme_kazmebel', 'theme_kazmebel_image_wishlist_height', '47', 0),
(2629, 0, 'theme_kazmebel', 'theme_kazmebel_image_cart_width', '47', 0),
(2630, 0, 'theme_kazmebel', 'theme_kazmebel_image_cart_height', '47', 0),
(2631, 0, 'theme_kazmebel', 'theme_kazmebel_image_location_width', '268', 0),
(2632, 0, 'theme_kazmebel', 'theme_kazmebel_image_location_height', '50', 0),
(2038, 0, 'module_information', 'module_information_status', '1', 0),
(2041, 0, 'module_d_blog_module', 'module_d_blog_module_setting', '{\"config\":\"d_blog_module\",\"utc_datetime_format\":\"Y-m-d\\\\TH:i:sP\",\"dir_admin\":\"admin\",\"theme\":\"default\",\"admin_style\":\"light\",\"category\":{\"main_category_id\":1,\"layout\":[2],\"layout_type\":\"grid\",\"post_page_limit\":7,\"image_display\":1,\"image_width\":1200,\"image_height\":750,\"sub_category_display\":1,\"sub_category_col\":6,\"sub_category_image\":1,\"sub_category_post_count\":1,\"sub_category_image_width\":120,\"sub_category_image_height\":75,\"limited_post_display\":1,\"main_post_display\":1},\"post_thumb\":{\"image_width\":1200,\"image_height\":750,\"title_length\":100,\"short_description_length\":300,\"description_length\":300,\"category_label_display\":1,\"author_display\":1,\"date_display\":1,\"date_format\":{\"1\":\"%A %d %B, %Y\"},\"date_format_day\":\"%d\",\"date_format_month\":\"%B\",\"date_format_year\":\"%Y\",\"rating_display\":1,\"description_display\":1,\"tag_display\":1,\"views_display\":1,\"review_display\":1,\"read_more_display\":1,\"animate\":\"fadeIn\"},\"post\":{\"image_display\":1,\"image_width\":1200,\"image_height\":750,\"popup_display\":1,\"popup_width\":1400,\"popup_height\":875,\"author_display\":1,\"date_display\":1,\"date_format\":{\"1\":\"%A %d %B %Y\"},\"review_display\":1,\"rating_display\":1,\"category_label_display\":1,\"short_description_length\":150,\"style_short_description_display\":0,\"nav_display\":1,\"nav_same_category\":0,\"limit_access_user\":0,\"limit_access_user_group\":0,\"access_user\":[],\"access_user_group\":[]},\"review\":{\"guest\":1,\"social_login\":1,\"page_limit\":5,\"image_limit\":5,\"rating_display\":1,\"customer_display\":1,\"image_user_display\":1,\"moderate\":0,\"image_upload_width\":500,\"image_upload_height\":500},\"review_thumb\":{\"image_width\":70,\"image_height\":70,\"no_image\":\"catalog\\/d_blog_module\\/no_profile_image.png\",\"date_display\":1,\"image_display\":1,\"rating_display\":1,\"image_user_display\":1,\"image_user_width\":70,\"image_user_height\":70},\"author\":{\"layout\":[2],\"layout_type\":\"grid\",\"post_page_limit\":7,\"image_width\":400,\"image_height\":400,\"category_display\":1,\"category_col\":6,\"category_image\":1,\"category_post_count\":1,\"category_image_width\":120,\"category_image_height\":75},\"design\":{\"custom_style\":\"\",\"ssl_url\":\"\"}}', 1),
(2609, 0, 'theme_kazmebel', 'theme_kazmebel_directory', 'kazmebel', 0),
(2886, 0, 'config', 'config_mail_alert_email', '', 0),
(2887, 0, 'config', 'config_maintenance', '0', 0),
(2888, 0, 'config', 'config_seo_url', '1', 0),
(2889, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(2890, 0, 'config', 'config_compression', '0', 0),
(2891, 0, 'config', 'config_secure', '0', 0),
(2892, 0, 'config', 'config_password', '1', 0),
(2893, 0, 'config', 'config_shared', '0', 0),
(2894, 0, 'config', 'config_encryption', 'QGxhtUXdTsEBa4sSiAy9AImesmesvN8ykCRW86j9mt4i1MGTCehBtPS0Pegd8iNl0kYGMKTVUbHfpGaONOJpNwR0KMvbAWahqubFPNM2ltV1zpClkgwXxglIBK18k4cdHr5AHCUZXnNwJZS97SX5X9HDyBJGCR7uWzk0FovHcIMRLEfyUmcQl66CV7ps6FWWlECoz6LgvjaKPpL0LE2dIQxxi0IqUNqY4LcKT5iNgppyjhTA4LnSachkVXZKVhJ64ZhoW8DA8b6uSsCrkqDziOp85nPckP4rf3jBqg6lYN1ggaD4RLgxrLgeHJNfCXcYFIioiMafpOb6SzQhE5XmGTewRifWhr3cy5oEmDkDdKXxmnHMNA1b7BsTFxAyQz3pp0f9vAnRJ6vAgmaALkvwUasCkS1BaMbuLltoSLAkJGCMIOicf0hoT7zGUw21xTZpEgG5gxo58WL0PJUBf0CuxRuqbrbZJJFVr2ekZzPvEzQUMHaquhFjMCRzDF5gl0JNDx6OP8bTWN9RK4dirC5Nxfegg897D882akVBGn8XAp4oQ37OjOUvC4lfwiegKgOgydwRA39vtIyz9nWb5H6uoQV7slTaWqnfVw4yODnDHoUVGljMuHTjceeYNtkbRUSOSzWJVCMo6TfuFjiYaduSD4YoEYnnO4zAcIoQS65FW3D13iWKiLhXP7MpvAa9u9iPXHwgvyiPO3BdQmBCNWFZN8PZC1YPGeRssto6UYEL2mtGceQ1nGdpSVohLUQDlgHWU6gKVFUrQy6nEnf6CDMgrC44hmDYfrnDg1liaDkNIGDBJQfI4uf8SCec70sZndLoLVnaXpObJqXrW0jnpv7nt0NKaYzipTnXUTtDfMGtHCNkcRzUDivYWLm5jenc0nN269wJLnRbCAjXoXUx4a9S8ALgqTCQajVwqgRaVBTC1KztYaZkvBSI4vOBcKdFNvcrjqnMitLlMplJ8wEVYNRd2Zp2Fe2qY52QDSDVTDa7QLapdKkcE3wLRLWLJLYCjmJ6', 0),
(2885, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(2884, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(2882, 0, 'config', 'config_mail_smtp_password', '', 0),
(2883, 0, 'config', 'config_mail_smtp_port', '25', 0),
(2881, 0, 'config', 'config_mail_smtp_username', '', 0),
(2880, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(2879, 0, 'config', 'config_mail_parameter', '', 0),
(2877, 0, 'config', 'config_icon', 'catalog/logo.png', 0),
(2878, 0, 'config', 'config_mail_engine', 'mail', 0),
(2876, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(2875, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(2874, 0, 'config', 'config_captcha', '', 0),
(2873, 0, 'config', 'config_return_status_id', '2', 0),
(2872, 0, 'config', 'config_return_id', '0', 0),
(2871, 0, 'config', 'config_affiliate_id', '4', 0),
(2870, 0, 'config', 'config_affiliate_commission', '5', 0),
(2869, 0, 'config', 'config_affiliate_auto', '0', 0),
(2868, 0, 'config', 'config_affiliate_approval', '0', 0),
(2867, 0, 'config', 'config_affiliate_group_id', '1', 0),
(2866, 0, 'config', 'config_stock_checkout', '0', 0),
(2865, 0, 'config', 'config_stock_warning', '0', 0),
(2864, 0, 'config', 'config_stock_display', '0', 0),
(2863, 0, 'config', 'config_api_id', '1', 0),
(2862, 0, 'config', 'config_fraud_status_id', '2', 0),
(2861, 0, 'config', 'config_complete_status', '[\"3\",\"5\"]', 1),
(2860, 0, 'config', 'config_processing_status', '[\"2\",\"3\",\"1\",\"12\",\"5\"]', 1),
(2859, 0, 'config', 'config_order_status_id', '1', 0),
(2858, 0, 'config', 'config_checkout_id', '5', 0),
(2857, 0, 'config', 'config_checkout_guest', '1', 0),
(2856, 0, 'config', 'config_cart_weight', '1', 0),
(2855, 0, 'config', 'config_invoice_prefix', 'INV-2019-00', 0),
(2854, 0, 'config', 'config_account_id', '3', 0),
(2853, 0, 'config', 'config_login_attempts', '5', 0),
(2852, 0, 'config', 'config_customer_price', '0', 0),
(2851, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(2850, 0, 'config', 'config_customer_group_id', '1', 0),
(2849, 0, 'config', 'config_customer_search', '0', 0),
(2848, 0, 'config', 'config_customer_activity', '0', 0),
(2847, 0, 'config', 'config_customer_online', '0', 0),
(2846, 0, 'config', 'config_tax_customer', 'shipping', 0),
(2845, 0, 'config', 'config_tax_default', 'shipping', 0),
(2844, 0, 'config', 'config_tax', '0', 0),
(2843, 0, 'config', 'config_voucher_max', '1000', 0),
(2842, 0, 'config', 'config_voucher_min', '1', 0),
(2841, 0, 'config', 'config_review_guest', '1', 0),
(2840, 0, 'config', 'config_review_status', '1', 0),
(2839, 0, 'config', 'config_limit_admin', '20', 0),
(2838, 0, 'config', 'config_product_count', '1', 0),
(2837, 0, 'config', 'config_weight_class_id', '1', 0),
(2836, 0, 'config', 'config_length_class_id', '1', 0),
(2835, 0, 'config', 'config_currency_auto', '1', 0),
(2834, 0, 'config', 'config_currency', 'KZT', 0),
(2833, 0, 'config', 'config_admin_language', 'ru-ru', 0),
(2832, 0, 'config', 'config_language', 'ru-ru', 0),
(2831, 0, 'config', 'config_zone_id', '', 0),
(2830, 0, 'config', 'config_country_id', '109', 0),
(2828, 0, 'config', 'config_open', 'Компания &quot;КазМебельГрупп&quot; предлагает офисную мебель лучших российских и итальянских фабрик:', 0),
(2829, 0, 'config', 'config_comment', 'Камбио, Феликс, NARBUTAS&amp;K, CODUTTI, DOZATO, Aran World, Bellucsi, Delia Valentina, Elledue, Fantoni, Frezza, Las,Office&amp; Co, Matrix, TIME OFFICE, Ofi FRAN, R.A. Mobili, Sacma, Sedus, Sesta, Tecnoarredo, Uffix и другие. ', 0),
(2827, 0, 'config', 'config_image', 'catalog/logo.png', 0),
(2826, 0, 'config', 'config_fax', '', 0),
(2825, 0, 'config', 'config_telephone', '+ 7 (727) 335 32 23', 0),
(2824, 0, 'config', 'config_email', 'tulegen@puzzle.kz', 0),
(2820, 0, 'config', 'config_name', 'КазМебельГрупп', 0),
(2821, 0, 'config', 'config_owner', 'Иванов Иван', 0),
(2822, 0, 'config', 'config_address', 'г. Москва, ул. Ленина 10 оф. 32', 0),
(2823, 0, 'config', 'config_geocode', '', 0),
(2819, 0, 'config', 'config_layout_id', '4', 0),
(2818, 0, 'config', 'config_theme', 'kazmebel', 0),
(2817, 0, 'config', 'config_meta_keyword', '', 0),
(2816, 0, 'config', 'config_meta_description', '', 0),
(2815, 0, 'config', 'config_meta_title', 'КазМебельГрупп', 0),
(2707, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(2706, 0, 'theme_default', 'theme_default_status', '0', 0),
(2705, 0, 'theme_default', 'theme_default_directory', 'kazmebel', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post'),
(7, 'citylink', 'Citylink');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '71020.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'В наличии'),
(8, 1, 'Предзаказ'),
(5, 1, 'Нет в наличии'),
(6, 1, 'Ожидание 2-3 дня'),
(7, 2, 'В наличии'),
(8, 2, 'Предзаказ'),
(5, 2, 'Нет в наличии'),
(6, 2, 'Ожидание 2-3 дня');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Налоги', 'Облагаемые налогом', '2014-06-06 23:00:00', '2014-09-09 11:50:31');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(87, 3, 'НДС', '18.0000', 'F', '2011-09-21 21:49:23', '2014-09-09 11:49:32');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'acfa36344427ec108fc44ebf2e9f621558b7d8b7', 'pTWmupsYj', 'John', 'Doe', 'tulegen@puzzle.kz', '', '', '127.0.0.1', 1, '2019-08-26 10:16:45');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/project\",\"catalog\\/projects\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"error\",\"event\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\",\"extension\\/analytics\",\"extension\\/analytics\\/google\",\"extension\\/captcha\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/d_ajax_search\",\"extension\\/d_ajax_search\\/blog\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\\/author\",\"extension\\/d_blog_module\\/author_group\",\"extension\\/d_blog_module\\/category\",\"extension\\/d_blog_module\\/post\",\"extension\\/d_blog_module\\/review\",\"extension\\/d_visual_designer_module\",\"extension\\/d_visual_designer_module\\/blog_post\",\"extension\\/dashboard\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/event\\/d_blog_module\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\",\"extension\\/fraud\\/ip\",\"extension\\/module\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/d_blog_module\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/payment\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\",\"extension\\/theme\\/default\",\"extension\\/total\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\",\"setting\\/setting\",\"setting\\/store\",\"startup\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/filter\",\"extension\\/theme\\/kazmebel\"],\"modify\":[\"catalog\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/project\",\"catalog\\/projects\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"error\",\"event\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\",\"extension\\/analytics\",\"extension\\/analytics\\/google\",\"extension\\/captcha\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/d_ajax_search\",\"extension\\/d_ajax_search\\/blog\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\\/author\",\"extension\\/d_blog_module\\/author_group\",\"extension\\/d_blog_module\\/category\",\"extension\\/d_blog_module\\/post\",\"extension\\/d_blog_module\\/review\",\"extension\\/d_visual_designer_module\",\"extension\\/d_visual_designer_module\\/blog_post\",\"extension\\/dashboard\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/event\\/d_blog_module\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\",\"extension\\/fraud\\/ip\",\"extension\\/module\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/d_blog_module\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/payment\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\",\"extension\\/theme\\/default\",\"extension\\/total\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\",\"setting\\/setting\",\"setting\\/store\",\"startup\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/filter\",\"extension\\/theme\\/kazmebel\"]}'),
(10, 'Demonstration', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/information\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/information\\/setting\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/information\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/information\\/setting\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Новый год'),
(7, 1, 'День рождения'),
(8, 1, 'Другое'),
(6, 2, 'Новый год'),
(7, 2, 'День рождения'),
(8, 2, 'Другое');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Килограмм', 'кг'),
(2, 1, 'Грамм', 'г'),
(1, 2, 'Килограмм', 'кг'),
(2, 2, 'Грамм', 'г');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 20, 'Брест', 'BR', 1),
(2, 20, 'Гомель', 'HO', 1),
(3, 20, 'Минск', 'HM', 1),
(4, 20, 'Гродно', 'HR', 1),
(5, 20, 'Могилев', 'MA', 1),
(6, 20, 'Минская область', 'MI', 1),
(7, 20, 'Витебск', 'VI', 1),
(8, 80, 'Abkhazia', 'AB', 1),
(9, 80, 'Ajaria', 'AJ', 1),
(10, 80, 'Tbilisi', 'TB', 1),
(11, 80, 'Guria', 'GU', 1),
(12, 80, 'Imereti', 'IM', 1),
(13, 80, 'Kakheti', 'KA', 1),
(14, 80, 'Kvemo Kartli', 'KK', 1),
(15, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(16, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(17, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(18, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(19, 80, 'Shida Kartli', 'SK', 1),
(20, 109, 'Алматинская область', 'AL', 1),
(21, 109, 'Алматы - город республ-го значения', 'AC', 1),
(22, 109, 'Акмолинская область', 'AM', 1),
(23, 109, 'Актюбинская область', 'AQ', 1),
(24, 109, 'Астана - город республ-го значения', 'AS', 1),
(25, 109, 'Атырауская область', 'AT', 1),
(26, 109, 'Западно-Казахстанская область', 'BA', 1),
(27, 109, 'Байконур - город республ-го значения', 'BY', 1),
(28, 109, 'Мангистауская область', 'MA', 1),
(29, 109, 'Южно-Казахстанская область', 'ON', 1),
(30, 109, 'Павлодарская область', 'PA', 1),
(31, 109, 'Карагандинская область', 'QA', 1),
(32, 109, 'Костанайская область', 'QO', 1),
(33, 109, 'Кызылординская область', 'QY', 1),
(34, 109, 'Восточно-Казахстанская область', 'SH', 1),
(35, 109, 'Северо-Казахстанская область', 'SO', 1),
(36, 109, 'Жамбылская область', 'ZH', 1),
(37, 115, 'Bishkek', 'GB', 1),
(38, 115, 'Batken', 'B', 1),
(39, 115, 'Chu', 'C', 1),
(40, 115, 'Jalal-Abad', 'J', 1),
(41, 115, 'Naryn', 'N', 1),
(42, 115, 'Osh', 'O', 1),
(43, 115, 'Talas', 'T', 1),
(44, 115, 'Ysyk-Kol', 'Y', 1),
(45, 176, 'Республика Хакасия', 'KK', 1),
(46, 176, 'Московская область', 'MOS', 1),
(47, 176, 'Чукотский АО', 'CHU', 1),
(48, 176, 'Архангельская область', 'ARK', 1),
(49, 176, 'Астраханская область', 'AST', 1),
(50, 176, 'Алтайский край', 'ALT', 1),
(51, 176, 'Белгородская область', 'BEL', 1),
(52, 176, 'Еврейская АО', 'YEV', 1),
(53, 176, 'Амурская область', 'AMU', 1),
(54, 176, 'Брянская область', 'BRY', 1),
(55, 176, 'Чувашская Республика', 'CU', 1),
(56, 176, 'Челябинская область', 'CHE', 1),
(57, 176, 'Карачаево-Черкесия', 'KC', 1),
(58, 176, 'Забайкальский край', 'ZAB', 1),
(59, 176, 'Ленинградская область', 'LEN', 1),
(60, 176, 'Республика Калмыкия', 'KL', 1),
(61, 176, 'Сахалинская область', 'SAK', 1),
(62, 176, 'Республика Алтай', 'AL', 1),
(63, 176, 'Чеченская Республика', 'CE', 1),
(64, 176, 'Иркутская область', 'IRK', 1),
(65, 176, 'Ивановская область', 'IVA', 1),
(66, 176, 'Удмуртская Республика', 'UD', 1),
(67, 176, 'Калининградская область', 'KGD', 1),
(68, 176, 'Калужская область', 'KLU', 1),
(69, 176, 'Республика Татарстан', 'TA', 1),
(70, 176, 'Кемеровская область', 'KEM', 1),
(71, 176, 'Хабаровский край', 'KHA', 1),
(72, 176, 'Ханты-Мансийский АО - Югра', 'KHM', 1),
(73, 176, 'Костромская область', 'KOS', 1),
(74, 176, 'Краснодарский край', 'KDA', 1),
(75, 176, 'Красноярский край', 'KYA', 1),
(76, 176, 'Курганская область', 'KGN', 1),
(77, 176, 'Курская область', 'KRS', 1),
(78, 176, 'Республика Тыва', 'TY', 1),
(79, 176, 'Липецкая область', 'LIP', 1),
(80, 176, 'Магаданская область', 'MAG', 1),
(81, 176, 'Республика Дагестан', 'DA', 1),
(82, 176, 'Республика Адыгея', 'AD', 1),
(83, 176, 'Москва', 'MOW', 1),
(84, 176, 'Мурманская область', 'MUR', 1),
(85, 176, 'Республика Кабардино-Балкария', 'KB', 1),
(86, 176, 'Ненецкий АО', 'NEN', 1),
(87, 176, 'Республика Ингушетия', 'IN', 1),
(88, 176, 'Нижегородская область', 'NIZ', 1),
(89, 176, 'Новгородская область', 'NGR', 1),
(90, 176, 'Новосибирская область', 'NVS', 1),
(91, 176, 'Омская область', 'OMS', 1),
(92, 176, 'Орловская область', 'ORL', 1),
(93, 176, 'Оренбургская область', 'ORE', 1),
(94, 176, 'Пензенская область', 'PNZ', 1),
(95, 176, 'Пермский край', 'PER', 1),
(96, 176, 'Камчатский край', 'KAM', 1),
(97, 176, 'Республика Карелия', 'KR', 1),
(98, 176, 'Псковская область', 'PSK', 1),
(99, 176, 'Ростовская область', 'ROS', 1),
(100, 176, 'Рязанская область', 'RYA', 1),
(101, 176, 'Ямало-Ненецкий АО', 'YAN', 1),
(102, 176, 'Самарская область', 'SAM', 1),
(103, 176, 'Республика Мордовия', 'MO', 1),
(104, 176, 'Саратовская область', 'SAR', 1),
(105, 176, 'Смоленская область', 'SMO', 1),
(106, 176, 'Санкт-Петербург', 'SPE', 1),
(107, 176, 'Ставропольский край', 'STA', 1),
(108, 176, 'Республика Коми', 'KO', 1),
(109, 176, 'Тамбовская область', 'TAM', 1),
(110, 176, 'Томская область', 'TOM', 1),
(111, 176, 'Тульская область', 'TUL', 1),
(112, 176, 'Тверская область', 'TVE', 1),
(113, 176, 'Тюменская область', 'TYU', 1),
(114, 176, 'Республика Башкортостан', 'BA', 1),
(115, 176, 'Ульяновская область', 'ULY', 1),
(116, 176, 'Республика Бурятия', 'BU', 1),
(117, 176, 'Республика Северная Осетия', 'SE', 1),
(118, 176, 'Владимирская область', 'VLA', 1),
(119, 176, 'Приморский край', 'PRI', 1),
(120, 176, 'Волгоградская область', 'VGG', 1),
(121, 176, 'Вологодская область', 'VLG', 1),
(122, 176, 'Воронежская область', 'VOR', 1),
(123, 176, 'Кировская область', 'KIR', 1),
(124, 176, 'Республика Саха', 'SA', 1),
(125, 176, 'Ярославская область', 'YAR', 1),
(126, 176, 'Свердловская область', 'SVE', 1),
(127, 176, 'Республика Марий Эл', 'ME', 1),
(128, 176, 'Республика Крым', 'CR', 1),
(129, 220, 'Черкассы', 'CK', 1),
(130, 220, 'Чернигов', 'CH', 1),
(131, 220, 'Черновцы', 'CV', 1),
(132, 220, 'Днепропетровск', 'DN', 1),
(133, 220, 'Донецк', 'DO', 1),
(134, 220, 'Ивано-Франковск', 'IV', 1),
(135, 220, 'Харьков', 'KH', 1),
(136, 220, 'Хмельницкий', 'KM', 1),
(137, 220, 'Кировоград', 'KR', 1),
(138, 220, 'Киевская область', 'KV', 1),
(139, 220, 'Киев', 'KY', 1),
(140, 220, 'Луганск', 'LU', 1),
(141, 220, 'Львов', 'LV', 1),
(142, 220, 'Николаев', 'MY', 1),
(143, 220, 'Одесса', 'OD', 1),
(144, 220, 'Полтава', 'PO', 1),
(145, 220, 'Ровно', 'RI', 1),
(146, 176, 'Севастополь', 'SEV', 1),
(147, 220, 'Сумы', 'SU', 1),
(148, 220, 'Тернополь', 'TE', 1),
(149, 220, 'Винница', 'VI', 1),
(150, 220, 'Луцк', 'VO', 1),
(151, 220, 'Ужгород', 'ZK', 1),
(152, 220, 'Запорожье', 'ZA', 1),
(153, 220, 'Житомир', 'ZH', 1),
(154, 220, 'Херсон', 'KE', 1),
(155, 226, 'Andijon', 'AN', 1),
(156, 226, 'Buxoro', 'BU', 1),
(157, 226, 'Farg\'ona', 'FA', 1),
(158, 226, 'Jizzax', 'JI', 1),
(159, 226, 'Namangan', 'NG', 1),
(160, 226, 'Navoiy', 'NW', 1),
(161, 226, 'Qashqadaryo', 'QA', 1),
(162, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(163, 226, 'Samarqand', 'SA', 1),
(164, 226, 'Sirdaryo', 'SI', 1),
(165, 226, 'Surxondaryo', 'SU', 1),
(166, 226, 'Toshkent City', 'TK', 1),
(167, 226, 'Toshkent Region', 'TO', 1),
(168, 226, 'Xorazm', 'XO', 1),
(169, 176, 'Байконур - город республ-го значения', 'BY', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 176, 0, 3, '2014-09-09 11:48:13', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Индексы таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Индексы таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Индексы таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Индексы таблицы `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Индексы таблицы `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Индексы таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Индексы таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Индексы таблицы `oc_bm_author`
--
ALTER TABLE `oc_bm_author`
  ADD PRIMARY KEY (`author_id`);

--
-- Индексы таблицы `oc_bm_author_description`
--
ALTER TABLE `oc_bm_author_description`
  ADD PRIMARY KEY (`author_description_id`);

--
-- Индексы таблицы `oc_bm_author_group`
--
ALTER TABLE `oc_bm_author_group`
  ADD PRIMARY KEY (`author_group_id`);

--
-- Индексы таблицы `oc_bm_category`
--
ALTER TABLE `oc_bm_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `oc_bm_category_description`
--
ALTER TABLE `oc_bm_category_description`
  ADD PRIMARY KEY (`category_description_id`);

--
-- Индексы таблицы `oc_bm_category_path`
--
ALTER TABLE `oc_bm_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oc_bm_category_to_store`
--
ALTER TABLE `oc_bm_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_bm_post`
--
ALTER TABLE `oc_bm_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Индексы таблицы `oc_bm_post_description`
--
ALTER TABLE `oc_bm_post_description`
  ADD PRIMARY KEY (`post_description_id`);

--
-- Индексы таблицы `oc_bm_post_related`
--
ALTER TABLE `oc_bm_post_related`
  ADD PRIMARY KEY (`post_id`,`post_related_id`);

--
-- Индексы таблицы `oc_bm_post_to_category`
--
ALTER TABLE `oc_bm_post_to_category`
  ADD PRIMARY KEY (`category_id`,`post_id`);

--
-- Индексы таблицы `oc_bm_post_to_product`
--
ALTER TABLE `oc_bm_post_to_product`
  ADD PRIMARY KEY (`product_id`,`post_id`);

--
-- Индексы таблицы `oc_bm_post_video`
--
ALTER TABLE `oc_bm_post_video`
  ADD PRIMARY KEY (`post_id`,`video`);

--
-- Индексы таблицы `oc_bm_review`
--
ALTER TABLE `oc_bm_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Индексы таблицы `oc_bm_review_to_image`
--
ALTER TABLE `oc_bm_review_to_image`
  ADD PRIMARY KEY (`review_id`,`image`);

--
-- Индексы таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Индексы таблицы `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Индексы таблицы `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Индексы таблицы `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Индексы таблицы `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Индексы таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Индексы таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Индексы таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Индексы таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Индексы таблицы `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Индексы таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Индексы таблицы `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Индексы таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Индексы таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Индексы таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Индексы таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Индексы таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Индексы таблицы `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Индексы таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Индексы таблицы `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Индексы таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Индексы таблицы `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Индексы таблицы `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Индексы таблицы `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Индексы таблицы `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Индексы таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Индексы таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Индексы таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Индексы таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Индексы таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Индексы таблицы `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Индексы таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Индексы таблицы `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Индексы таблицы `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Индексы таблицы `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Индексы таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Индексы таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Индексы таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Индексы таблицы `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Индексы таблицы `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Индексы таблицы `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Индексы таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Индексы таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Индексы таблицы `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Индексы таблицы `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Индексы таблицы `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Индексы таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Индексы таблицы `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Индексы таблицы `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Индексы таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Индексы таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Индексы таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Индексы таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Индексы таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Индексы таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Индексы таблицы `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Индексы таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Индексы таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Индексы таблицы `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Индексы таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Индексы таблицы `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Индексы таблицы `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Индексы таблицы `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Индексы таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Индексы таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Индексы таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Индексы таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Индексы таблицы `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Индексы таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Индексы таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Индексы таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Индексы таблицы `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Индексы таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Индексы таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Индексы таблицы `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Индексы таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Индексы таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Индексы таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Индексы таблицы `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Индексы таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Индексы таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Индексы таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Индексы таблицы `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Индексы таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Индексы таблицы `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Индексы таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT для таблицы `oc_bm_author`
--
ALTER TABLE `oc_bm_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_bm_author_description`
--
ALTER TABLE `oc_bm_author_description`
  MODIFY `author_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_bm_author_group`
--
ALTER TABLE `oc_bm_author_group`
  MODIFY `author_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_bm_category`
--
ALTER TABLE `oc_bm_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_bm_category_description`
--
ALTER TABLE `oc_bm_category_description`
  MODIFY `category_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `oc_bm_post`
--
ALTER TABLE `oc_bm_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_bm_post_description`
--
ALTER TABLE `oc_bm_post_description`
  MODIFY `post_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT для таблицы `oc_bm_review`
--
ALTER TABLE `oc_bm_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT для таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=688;

--
-- AUTO_INCREMENT для таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT для таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT для таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT для таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT для таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT для таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=490;

--
-- AUTO_INCREMENT для таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2562;

--
-- AUTO_INCREMENT для таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT для таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT для таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT для таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=551;

--
-- AUTO_INCREMENT для таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT для таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2901;

--
-- AUTO_INCREMENT для таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT для таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT для таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
