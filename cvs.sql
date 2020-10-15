-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for boladas
CREATE DATABASE IF NOT EXISTS `boladas` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `boladas`;

-- Dumping structure for table boladas.bladmins
CREATE TABLE IF NOT EXISTS `bladmins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default_user.png',
  `permission` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.bladmins: 1 rows
/*!40000 ALTER TABLE `bladmins` DISABLE KEYS */;
INSERT INTO `bladmins` (`id`, `username`, `password_hash`, `name`, `email`, `image`, `permission`) VALUES
	(1, 'admin', '$2y$13$R/dmZlAGj0kj5/7pJ0N2Le.SSjdTwUPgSPhU9q7I8jzLEEoUWJjsO', 'Admin', 'derciobob@gmail.com', '', '1');
/*!40000 ALTER TABLE `bladmins` ENABLE KEYS */;

-- Dumping structure for table boladas.bladsense
CREATE TABLE IF NOT EXISTS `bladsense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` text DEFAULT NULL,
  `provider_name` varchar(255) DEFAULT NULL,
  `large_track_code` text DEFAULT NULL,
  `tablet_track_code` text DEFAULT NULL,
  `phone_track_code` text DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table boladas.bladsense: 4 rows
/*!40000 ALTER TABLE `bladsense` DISABLE KEYS */;
INSERT INTO `bladsense` (`id`, `slug`, `provider_name`, `large_track_code`, `tablet_track_code`, `phone_track_code`, `status`) VALUES
	(1, 'top', 'Google AdSense', '<img src="//bylancer.com/products/classified-php-script/storage/adsense/ads-banner-top.jpg"/>', '', '', '0'),
	(2, 'bottom', 'Google AdSense', '<img src="//bylancer.com/products/classified-php-script/storage/adsense/ads-banner-bottom.png"/>', '', '', '0'),
	(3, 'left_sidebar', 'Google AdSense', '<img src="//bylancer.com/products/classified-php-script/storage/adsense/ads-banner-left.png"/>', '', '', '0'),
	(4, 'right_sidebar', 'Google AdSense', '<img src="//bylancer.com/products/classified-php-script/storage/adsense/ads-banner-right.jpg"/>', '', '', '0');
/*!40000 ALTER TABLE `bladsense` ENABLE KEYS */;

-- Dumping structure for table boladas.blbalance
CREATE TABLE IF NOT EXISTS `blbalance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `current_balance` double(9,2) DEFAULT NULL,
  `total_earning` double(9,2) DEFAULT NULL,
  `total_withdrawal` double(9,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table boladas.blbalance: 1 rows
/*!40000 ALTER TABLE `blbalance` DISABLE KEYS */;
INSERT INTO `blbalance` (`id`, `current_balance`, `total_earning`, `total_withdrawal`) VALUES
	(1, 320.00, 320.00, 0.00);
/*!40000 ALTER TABLE `blbalance` ENABLE KEYS */;

-- Dumping structure for table boladas.blblog
CREATE TABLE IF NOT EXISTS `blblog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `author` int(10) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` text CHARACTER SET utf32 COLLATE utf32_unicode_ci DEFAULT NULL,
  `status` enum('publish','pending') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blblog: ~1 rows (approximately)
/*!40000 ALTER TABLE `blblog` DISABLE KEYS */;
INSERT INTO `blblog` (`id`, `author`, `title`, `description`, `image`, `tags`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 'First Blog', '<p>Consectetur adipisicing elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo do consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<blockquote>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</blockquote><p>Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo do consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim.</p><p></p></p>\n', NULL, 'travel fun, love', 'publish', '2020-01-15 23:05:15', '2020-01-17 19:12:18');
/*!40000 ALTER TABLE `blblog` ENABLE KEYS */;

-- Dumping structure for table boladas.blblog_categories
CREATE TABLE IF NOT EXISTS `blblog_categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(10) NOT NULL DEFAULT 0,
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blblog_categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `blblog_categories` DISABLE KEYS */;
INSERT INTO `blblog_categories` (`id`, `title`, `slug`, `position`, `active`) VALUES
	(1, 'Fashion', 'fashion', 0, '1'),
	(2, 'Lifestyle', 'lifestyle', 1, '1');
/*!40000 ALTER TABLE `blblog_categories` ENABLE KEYS */;

-- Dumping structure for table boladas.blblog_cat_relation
CREATE TABLE IF NOT EXISTS `blblog_cat_relation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `blog_id` int(10) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blblog_cat_relation: ~2 rows (approximately)
/*!40000 ALTER TABLE `blblog_cat_relation` DISABLE KEYS */;
INSERT INTO `blblog_cat_relation` (`id`, `blog_id`, `category_id`) VALUES
	(1, 1, 1),
	(2, 1, 2);
/*!40000 ALTER TABLE `blblog_cat_relation` ENABLE KEYS */;

-- Dumping structure for table boladas.blblog_comment
CREATE TABLE IF NOT EXISTS `blblog_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `blog_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `is_admin` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `parent` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blblog_comment: ~0 rows (approximately)
/*!40000 ALTER TABLE `blblog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blblog_comment` ENABLE KEYS */;

-- Dumping structure for table boladas.blcatagory_main
CREATE TABLE IF NOT EXISTS `blcatagory_main` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_order` int(10) DEFAULT NULL,
  `cat_name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(300) NOT NULL DEFAULT 'fa-usd',
  `picture` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table boladas.blcatagory_main: 9 rows
/*!40000 ALTER TABLE `blcatagory_main` DISABLE KEYS */;
INSERT INTO `blcatagory_main` (`cat_id`, `cat_order`, `cat_name`, `slug`, `icon`, `picture`) VALUES
	(1, 1, 'Veículos', 'veiculos', 'pe-7s-car', 'https://img.icons8.com/dusk/64/000000/traffic-jam.png'),
	(2, 2, 'Telefones E Tablets', 'mobiles-tablets', 'pe-7s-phone', 'https://img.icons8.com/dusk/64/000000/two-smartphones.png'),
	(3, 3, 'Tecnologia', 'tecnologia', 'pe-7s-monitor', 'https://img.icons8.com/dusk/64/000000/tv.png'),
	(5, 5, 'Moda', 'moda', 'pe-7s-drawer', 'https://img.icons8.com/dusk/64/000000/home-page.png'),
	(6, 6, 'Empregos', 'empregos', 'pe-7s-portfolio', 'https://img.icons8.com/dusk/64/000000/find-matching-job.png'),
	(7, 7, 'Serviços', 'servicos', 'pe-7s-tools', 'https://img.icons8.com/dusk/64/000000/services.png'),
	(8, 8, 'Lazer', 'entertainment', 'pe-7s-film', 'https://img.icons8.com/dusk/64/000000/dancing.png'),
	(4, 4, 'Imobiliária', 'imobiliaria', 'pe-7s-home', 'https://img.icons8.com/dusk/64/000000/real-estate.png'),
	(9, NULL, 'Agricultura e Comida', 'agricultura-comida', 'fa fa-shopping-basket', '');
/*!40000 ALTER TABLE `blcatagory_main` ENABLE KEYS */;

-- Dumping structure for table boladas.blcatagory_sub
CREATE TABLE IF NOT EXISTS `blcatagory_sub` (
  `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_cat_id` int(11) DEFAULT NULL,
  `sub_cat_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_order` mediumint(8) DEFAULT NULL,
  `photo_show` enum('0','1') NOT NULL DEFAULT '1',
  `price_show` enum('0','1') NOT NULL DEFAULT '1',
  `picture` text DEFAULT NULL,
  PRIMARY KEY (`sub_cat_id`),
  UNIQUE KEY `id` (`sub_cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

-- Dumping data for table boladas.blcatagory_sub: 42 rows
/*!40000 ALTER TABLE `blcatagory_sub` DISABLE KEYS */;
INSERT INTO `blcatagory_sub` (`sub_cat_id`, `main_cat_id`, `sub_cat_name`, `slug`, `cat_order`, `photo_show`, `price_show`, `picture`) VALUES
	(1, 1, 'Motas', 'motas', 0, '1', '1', ''),
	(2, 1, 'Carros', 'carros', 2, '1', '1', ''),
	(3, 1, 'Veiculos Comercias', 'commercial-vehicles', 3, '1', '1', ''),
	(4, 1, 'Acessorios', 'acessorios', 4, '1', '1', ''),
	(5, 1, 'Outros Veiculos', 'outros-veiculos', 5, '1', '1', ''),
	(6, 2, 'Telemoveis', 'telemoveis', 6, '1', '1', ''),
	(7, 2, 'Acessorios', 'acessorios', 7, '1', '1', ''),
	(8, 2, 'Tablets', 'tablets-1', 8, '1', '1', NULL),
	(9, 2, 'Relogios', 'relogios', 9, '1', '1', ''),
	(10, 3, 'Acessórios de Camera ', 'camera-accessories', 10, '1', '1', ''),
	(11, 3, 'Acessorios de Computador ', 'acessorios-computador', 11, '1', '1', ''),
	(12, 3, 'Electrodomesticos para Casa', 'electrodomesticos-casa', 12, '1', '1', ''),
	(13, 3, 'Laptops - Computadores', 'laptops-computers', 13, '1', '1', ''),
	(14, 3, 'Sistema de Som - Home Theatre', 'music-systems-home-theatre', 14, '1', '1', ''),
	(15, 3, 'Video Games - Consolas', 'video-games-consoles', 15, '1', '1', ''),
	(16, 4, 'Estabelecimentos comerciais para renda', 'estabelecimentos-comerciais-para-renda', 16, '1', '1', ''),
	(17, 4, 'Estabelecimentos comerciais para Venda', 'estabelecimentos-comerciais-para-venda', 17, '1', '1', ''),
	(18, 4, 'Casas - Apartamentos para Alugar', 'casas-apartamentos-para-alugar', 18, '1', '1', ''),
	(19, 4, 'Casas - Apartamentos para Venda', 'casas-apartamentos-para-venda', 19, '1', '1', ''),
	(20, 4, 'Terrenos', 'terreno', 20, '1', '1', ''),
	(21, 4, 'Guest House', 'guest-house', 21, '1', '1', ''),
	(22, 4, 'Serviços de Apartamento', 'servicos-de-apartamento', 22, '1', '1', ''),
	(23, 5, 'Make Up', 'make-up', 23, '1', '1', ''),
	(24, 5, 'Cabelos - Proteses', 'cabelos-proteses', 24, '1', '1', ''),
	(25, 5, 'Joias', 'joias', 25, '1', '1', ''),
	(26, 5, 'Perfumes', 'perfumes', 26, '1', '1', ''),
	(27, 5, 'Calçados', 'calcados', 27, '1', '1', ''),
	(28, 6, 'Tempo Inteiro', 'tempo-inteiro', 28, '1', '1', ''),
	(29, 6, 'Estagios', 'estagios', 29, '1', '1', ''),
	(30, 6, 'Part Time ', 'part-time', 30, '1', '1', ''),
	(33, 7, 'Pulicidade - Design', 'pulicidade-design', 33, '1', '1', ''),
	(35, 7, 'Reparação de Computador', 'reparacao-de-computador', 35, '1', '1', ''),
	(49, 5, 'Diversos', 'diversos-1', 49, '1', '1', NULL),
	(37, 7, 'Reparação de Electronicos', 'reparacao-de-electronicos', 37, '1', '1', ''),
	(39, 7, 'Reparação de Telemoveis', 'reparacao-de-telemoveis', 39, '1', '1', ''),
	(40, 7, 'Diversos', 'diversos', 40, '1', '1', ''),
	(48, 5, 'Roupas e Acessorios', 'roupas-e-acessorios', 48, '1', '1', NULL),
	(42, 8, 'Filmes', 'filmes', 42, '1', '1', ''),
	(43, 8, 'Revistas', 'revistas', 43, '1', '1', ''),
	(44, 8, 'Jogos', 'jogos', 44, '1', '1', ''),
	(45, 8, 'Livros', 'livros', 45, '1', '1', ''),
	(47, 8, 'Diversos', 'diversos', 47, '1', '1', NULL);
/*!40000 ALTER TABLE `blcatagory_sub` ENABLE KEYS */;

-- Dumping structure for table boladas.blcategory_translation
CREATE TABLE IF NOT EXISTS `blcategory_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translation_id` int(1) DEFAULT NULL,
  `lang_code` varchar(10) DEFAULT NULL,
  `category_type` varchar(22) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table boladas.blcategory_translation: 0 rows
/*!40000 ALTER TABLE `blcategory_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `blcategory_translation` ENABLE KEYS */;

-- Dumping structure for table boladas.blcities
CREATE TABLE IF NOT EXISTS `blcities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ISO-3166 2-letter country code, 2 characters',
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT 'name of geographical point (utf8) varchar(200)',
  `asciiname` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT 'name of geographical point in plain ascii characters, varchar(200)',
  `latitude` float DEFAULT NULL COMMENT 'longitude in decimal degrees (wgs84)',
  `longitude` float DEFAULT NULL COMMENT 'latitude in decimal degrees (wgs84)',
  `feature_class` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see http://www.geonames.org/export/codes.html, char(1)',
  `feature_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see http://www.geonames.org/export/codes.html, varchar(10)',
  `subadmin1_code` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'fipscode (subject to change to iso code), see exceptions below, see file admin1Codes.txt for display names of this code; varchar(20)',
  `subadmin2_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'code for the second administrative division, a county in the US, see file admin2Codes.txt; varchar(80)',
  `population` bigint(20) DEFAULT NULL COMMENT 'bigint (4 byte int) ',
  `time_zone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'the timezone id (see file timeZone.txt)',
  `active` tinyint(3) unsigned DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `country_code` (`country_code`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=1088156 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blcities: 25 rows
/*!40000 ALTER TABLE `blcities` DISABLE KEYS */;
INSERT INTO `blcities` (`id`, `country_code`, `name`, `asciiname`, `latitude`, `longitude`, `feature_class`, `feature_code`, `subadmin1_code`, `subadmin2_code`, `population`, `time_zone`, `active`, `created_at`, `updated_at`) VALUES
	(1024552, 'MZ', 'Xai-Xai', 'Xai-Xai', -25.0519, 33.6442, 'P', 'PPLA', 'MZ.02', 'MZ.02.9408663', 127366, 'Africa/Maputo', 1, '2014-09-02 04:30:00', '2014-09-02 04:30:00'),
	(1024696, 'MZ', 'Dondo', 'Dondo', -19.6094, 34.7431, 'P', 'PPL', 'MZ.05', NULL, 78648, 'Africa/Maputo', 1, '2012-01-19 04:30:00', '2012-01-19 04:30:00'),
	(1024701, 'MZ', 'Macia', 'Macia', -25.0269, 33.0989, 'P', 'PPL', 'MZ.02', NULL, 23156, 'Africa/Maputo', 1, '2012-01-19 04:30:00', '2012-01-19 04:30:00'),
	(1026014, 'MZ', 'Tete', 'Tete', -16.1564, 33.5867, 'P', 'PPLA', 'MZ.08', NULL, 129316, 'Africa/Maputo', 1, '2012-01-19 04:30:00', '2012-01-19 04:30:00'),
	(1028079, 'MZ', 'Ressano Garcia', 'Ressano Garcia', -25.4428, 31.9953, 'P', 'PPL', 'MZ.04', NULL, 110000, 'Africa/Maputo', 1, '2013-05-05 04:30:00', '2013-05-05 04:30:00'),
	(1028434, 'MZ', 'Quelimane', 'Quelimane', -17.8786, 36.8883, 'P', 'PPLA', 'MZ.09', NULL, 188964, 'Africa/Maputo', 1, '2012-01-19 04:30:00', '2012-01-19 04:30:00'),
	(1028918, 'MZ', 'Pemba', 'Pemba', -12.974, 40.5177, 'P', 'PPLA', 'MZ.01', NULL, 108737, 'Africa/Maputo', 1, '2010-05-28 04:30:00', '2010-05-28 04:30:00'),
	(1033356, 'MZ', 'Nampula', 'Nampula', -15.1165, 39.2666, 'P', 'PPLA', 'MZ.06', NULL, 388526, 'Africa/Maputo', 1, '2010-05-28 04:30:00', '2010-05-28 04:30:00'),
	(1035025, 'MZ', 'Nacala', 'Nacala', -14.5626, 40.6854, 'P', 'PPL', 'MZ.06', NULL, 224795, 'Africa/Maputo', 1, '2013-12-01 04:30:00', '2013-12-01 04:30:00'),
	(1037125, 'MZ', 'Montepuez', 'Montepuez', -13.1256, 38.9997, 'P', 'PPL', 'MZ.01', NULL, 72279, 'Africa/Maputo', 1, '2012-01-19 04:30:00', '2012-01-19 04:30:00'),
	(1037370, 'MZ', 'Mocímboa', 'Mocimboa', -11.3167, 40.35, 'P', 'PPL', 'MZ.01', NULL, 27909, 'Africa/Maputo', 1, '2013-08-10 04:30:00', '2013-08-10 04:30:00'),
	(1037390, 'MZ', 'Ilha de Moçambique', 'Ilha de Mocambique', -15.0342, 40.7358, 'P', 'PPL', 'MZ.06', NULL, 54315, 'Africa/Maputo', 1, '2012-01-19 04:30:00', '2012-01-19 04:30:00'),
	(1039536, 'MZ', 'Maxixe', 'Maxixe', -23.8597, 35.3472, 'P', 'PPL', 'MZ.03', NULL, 119868, 'Africa/Maputo', 1, '2012-01-19 04:30:00', '2012-01-19 04:30:00'),
	(1039854, 'MZ', 'Matola', 'Matola', -25.9622, 32.4589, 'P', 'PPLA', 'MZ.04', NULL, 675422, 'Africa/Maputo', 1, '2013-07-04 04:30:00', '2013-07-04 04:30:00'),
	(1040652, 'MZ', 'Maputo', 'Maputo', -25.9655, 32.5832, 'P', 'PPLC', 'MZ.11', NULL, 1191613, 'Africa/Maputo', 1, '2017-06-22 04:30:00', '2017-06-22 04:30:00'),
	(1040938, 'MZ', 'Manjacaze', 'Manjacaze', -24.7117, 33.8828, 'P', 'PPL', 'MZ.02', NULL, 25541, 'Africa/Maputo', 1, '2012-01-19 04:30:00', '2012-01-19 04:30:00'),
	(1043893, 'MZ', 'Lichinga', 'Lichinga', -13.3128, 35.2406, 'P', 'PPLA', 'MZ.07', NULL, 109839, 'Africa/Maputo', 1, '2012-01-19 04:30:00', '2012-01-19 04:30:00'),
	(1045114, 'MZ', 'Inhambane', 'Inhambane', -23.865, 35.3833, 'P', 'PPLA', 'MZ.03', NULL, 73884, 'Africa/Maputo', 1, '2012-01-19 04:30:00', '2012-01-19 04:30:00'),
	(1047660, 'MZ', 'Cuamba', 'Cuamba', -14.8031, 36.5372, 'P', 'PPL', 'MZ.07', NULL, 73268, 'Africa/Maputo', 1, '2012-01-19 04:30:00', '2012-01-19 04:30:00'),
	(1048364, 'MZ', 'Chokwé', 'Chokwe', -24.5333, 32.9833, 'P', 'PPLA2', 'MZ.02', 'MZ.02.7874104', 63695, 'Africa/Maputo', 1, '2017-04-25 04:30:00', '2017-04-25 04:30:00'),
	(1049261, 'MZ', 'Chimoio', 'Chimoio', -19.1164, 33.4833, 'P', 'PPLA', 'MZ.10', NULL, 256936, 'Africa/Maputo', 1, '2012-01-19 04:30:00', '2012-01-19 04:30:00'),
	(1049861, 'MZ', 'Chibuto', 'Chibuto', -24.6867, 33.5306, 'P', 'PPL', 'MZ.02', NULL, 59165, 'Africa/Maputo', 1, '2012-01-19 04:30:00', '2012-01-19 04:30:00'),
	(1052373, 'MZ', 'Beira', 'Beira', -19.8436, 34.8389, 'P', 'PPLA', 'MZ.05', NULL, 530604, 'Africa/Maputo', 1, '2012-01-19 04:30:00', '2012-01-19 04:30:00'),
	(1052944, 'MZ', 'António Enes', 'Antonio Enes', -16.2325, 39.9086, 'P', 'PPL', 'MZ.06', NULL, 74624, 'Africa/Maputo', 1, '2017-09-19 04:30:00', '2017-09-19 04:30:00'),
	(1088155, 'MZ', 'Mutuáli', 'Mutuali', -14.8706, 37.0044, 'P', 'PPL', 'MZ.06', NULL, 30523, 'Africa/Maputo', 1, '2006-01-17 04:30:00', '2006-01-17 04:30:00');
/*!40000 ALTER TABLE `blcities` ENABLE KEYS */;

-- Dumping structure for table boladas.blcountries
CREATE TABLE IF NOT EXISTS `blcountries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso3` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_numeric` int(10) unsigned DEFAULT NULL,
  `fips` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asciiname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capital` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` int(10) unsigned DEFAULT NULL,
  `population` int(10) unsigned DEFAULT NULL,
  `continent_code` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tld` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code_format` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code_regex` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighbours` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `equivalent_fips_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=253 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blcountries: 252 rows
/*!40000 ALTER TABLE `blcountries` DISABLE KEYS */;
INSERT INTO `blcountries` (`id`, `code`, `latitude`, `longitude`, `iso3`, `iso_numeric`, `fips`, `name`, `asciiname`, `capital`, `area`, `population`, `continent_code`, `tld`, `currency_code`, `phone`, `postal_code_format`, `postal_code_regex`, `languages`, `neighbours`, `equivalent_fips_code`, `active`, `created_at`, `updated_at`) VALUES
	(1, 'AD', NULL, NULL, 'AND', 20, 'AN', 'Andorra', 'Andorra', 'Andorra la Vella', 468, 84000, 'EU', '.ad', 'EUR', '376', 'AD###', '^(?:AD)*(d{3})$', 'ca', 'ES,FR', '', 0, NULL, NULL),
	(2, 'AE', NULL, NULL, 'ARE', 784, 'AE', 'al-Imārāt', 'United Arab Emirates', 'Abu Dhabi', 82880, 4975593, 'AS', '.ae', 'AED', '971', '', '', 'ar-AE,fa,en,hi,ur', 'SA,OM', '', 0, NULL, NULL),
	(3, 'AF', NULL, NULL, 'AFG', 4, 'AF', 'Afġānistān', 'Afghanistan', 'Kabul', 647500, 29121286, 'AS', '.af', 'AFN', '93', '', '', 'fa-AF,ps,uz-AF,tk', 'TM,CN,IR,TJ,PK,UZ', '', 0, NULL, NULL),
	(4, 'AG', NULL, NULL, 'ATG', 28, 'AC', 'Antigua and Barbuda', 'Antigua and Barbuda', 'St. John\'s', 443, 86754, 'NA', '.ag', 'XCD', '+1-268', '', '', 'en-AG', '', '', 0, NULL, NULL),
	(5, 'AI', NULL, NULL, 'AIA', 660, 'AV', 'Anguilla', 'Anguilla', 'The Valley', 102, 13254, 'NA', '.ai', 'XCD', '+1-264', '', '', 'en-AI', '', '', 0, NULL, NULL),
	(6, 'AL', NULL, NULL, 'ALB', 8, 'AL', 'Shqipëria', 'Albania', 'Tirana', 28748, 2986952, 'EU', '.al', 'ALL', '355', '', '', 'sq,el', 'MK,GR,ME,RS,XK', '', 0, NULL, NULL),
	(7, 'AM', NULL, NULL, 'ARM', 51, 'AM', 'Hayastan', 'Armenia', 'Yerevan', 29800, 2968000, 'AS', '.am', 'AMD', '374', '######', '^(d{6})$', 'hy', 'GE,IR,AZ,TR', '', 0, NULL, NULL),
	(8, 'AN', NULL, NULL, 'ANT', 530, 'NT', 'Netherlands Antilles', 'Netherlands Antilles', 'Willemstad', 960, 136197, 'NA', '.an', 'ANG', '599', '', '', 'nl-AN,en,es', 'GP', '', 0, NULL, NULL),
	(9, 'AO', NULL, NULL, 'AGO', 24, 'AO', 'Angola', 'Angola', 'Luanda', 1246700, 13068161, 'AF', '.ao', 'AOA', '244', '', '', 'pt-AO', 'CD,NA,ZM,CG', '', 0, NULL, NULL),
	(10, 'AQ', NULL, NULL, 'ATA', 10, 'AY', 'Antarctica', 'Antarctica', '', 14000000, 0, 'AN', '.aq', '', '', '', '', '', '', '', 0, NULL, NULL),
	(11, 'AR', NULL, NULL, 'ARG', 32, 'AR', 'Argentina', 'Argentina', 'Buenos Aires', 2766890, 41343201, 'SA', '.ar', 'ARS', '54', '@####@@@', '^([A-Z]d{4}[A-Z]{3})$', 'es-AR,en,it,de,fr,gn', 'CL,BO,UY,PY,BR', '', 0, NULL, NULL),
	(12, 'AS', NULL, NULL, 'ASM', 16, 'AQ', 'American Samoa', 'American Samoa', 'Pago Pago', 199, 57881, 'OC', '.as', 'USD', '+1-684', '', '', 'en-AS,sm,to', '', '', 0, NULL, NULL),
	(13, 'AT', NULL, NULL, 'AUT', 40, 'AU', 'Österreich', 'Austria', 'Vienna', 83858, 8205000, 'EU', '.at', 'EUR', '43', '####', '^(d{4})$', 'de-AT,hr,hu,sl', 'CH,DE,HU,SK,CZ,IT,SI,LI', '', 0, NULL, NULL),
	(14, 'AU', NULL, NULL, 'AUS', 36, 'AS', 'Australia', 'Australia', 'Canberra', 7686850, 21515754, 'OC', '.au', 'AUD', '61', '####', '^(d{4})$', 'en-AU', '', '', 0, NULL, NULL),
	(15, 'AW', NULL, NULL, 'ABW', 533, 'AA', 'Aruba', 'Aruba', 'Oranjestad', 193, 71566, 'NA', '.aw', 'AWG', '297', '', '', 'nl-AW,es,en', '', '', 0, NULL, NULL),
	(16, 'AX', NULL, NULL, 'ALA', 248, '', 'Aland Islands', 'Aland Islands', 'Mariehamn', 1580, 26711, 'EU', '.ax', 'EUR', '+358-18', '#####', '^(?:FI)*(d{5})$', 'sv-AX', '', 'FI', 0, NULL, NULL),
	(17, 'AZ', NULL, NULL, 'AZE', 31, 'AJ', 'Azərbaycan', 'Azerbaijan', 'Baku', 86600, 8303512, 'AS', '.az', 'AZN', '994', 'AZ ####', '^(?:AZ)*(d{4})$', 'az,ru,hy', 'GE,IR,AM,TR,RU', '', 0, NULL, NULL),
	(18, 'BA', NULL, NULL, 'BIH', 70, 'BK', 'Bosna i Hercegovina', 'Bosnia and Herzegovina', 'Sarajevo', 51129, 4590000, 'EU', '.ba', 'BAM', '387', '#####', '^(d{5})$', 'bs,hr-BA,sr-BA', 'HR,ME,RS', '', 0, NULL, NULL),
	(19, 'BB', NULL, NULL, 'BRB', 52, 'BB', 'Barbados', 'Barbados', 'Bridgetown', 431, 285653, 'NA', '.bb', 'BBD', '+1-246', 'BB#####', '^(?:BB)*(d{5})$', 'en-BB', '', '', 0, NULL, NULL),
	(20, 'BD', NULL, NULL, 'BGD', 50, 'BG', 'Bāṅlādēś', 'Bangladesh', 'Dhaka', 144000, 156118464, 'AS', '.bd', 'BDT', '880', '####', '^(d{4})$', 'bn-BD,en', 'MM,IN', '', 0, NULL, NULL),
	(21, 'BE', NULL, NULL, 'BEL', 56, 'BE', 'Belgique', 'Belgium', 'Brussels', 30510, 10403000, 'EU', '.be', 'EUR', '32', '####', '^(d{4})$', 'nl-BE,fr-BE,de-BE', 'DE,NL,LU,FR', '', 0, NULL, NULL),
	(22, 'BF', NULL, NULL, 'BFA', 854, 'UV', 'Burkina Faso', 'Burkina Faso', 'Ouagadougou', 274200, 16241811, 'AF', '.bf', 'XOF', '226', '', '', 'fr-BF', 'NE,BJ,GH,CI,TG,ML', '', 0, NULL, NULL),
	(23, 'BG', NULL, NULL, 'BGR', 100, 'BU', 'Bŭlgarija', 'Bulgaria', 'Sofia', 110910, 7148785, 'EU', '.bg', 'BGN', '359', '####', '^(d{4})$', 'bg,tr-BG,rom', 'MK,GR,RO,TR,RS', '', 0, NULL, NULL),
	(24, 'BH', NULL, NULL, 'BHR', 48, 'BA', 'al-Baḥrayn', 'Bahrain', 'Manama', 665, 738004, 'AS', '.bh', 'BHD', '973', '####|###', '^(d{3}d?)$', 'ar-BH,en,fa,ur', '', '', 0, NULL, NULL),
	(25, 'BI', NULL, NULL, 'BDI', 108, 'BY', 'Burundi', 'Burundi', 'Bujumbura', 27830, 9863117, 'AF', '.bi', 'BIF', '257', '', '', 'fr-BI,rn', 'TZ,CD,RW', '', 0, NULL, NULL),
	(26, 'BJ', NULL, NULL, 'BEN', 204, 'BN', 'Bénin', 'Benin', 'Porto-Novo', 112620, 9056010, 'AF', '.bj', 'XOF', '+229', '', '', 'fr-BJ', 'NE,TG,BF,NG', '', 0, NULL, '2016-05-10 02:25:29'),
	(27, 'BL', NULL, NULL, 'BLM', 652, 'TB', 'Saint Barthelemy', 'Saint Barthelemy', 'Gustavia', 21, 8450, 'NA', '.gp', 'EUR', '590', '### ###', '', 'fr', '', '', 0, NULL, NULL),
	(28, 'BM', NULL, NULL, 'BMU', 60, 'BD', 'Bermuda', 'Bermuda', 'Hamilton', 53, 65365, 'NA', '.bm', 'BMD', '+1-441', '@@ ##', '^([A-Z]{2}d{2})$', 'en-BM,pt', '', '', 0, NULL, NULL),
	(29, 'BN', NULL, NULL, 'BRN', 96, 'BX', 'Brunei Darussalam', 'Brunei', 'Bandar Seri Begawan', 5770, 395027, 'AS', '.bn', 'BND', '673', '@@####', '^([A-Z]{2}d{4})$', 'ms-BN,en-BN', 'MY', '', 0, NULL, NULL),
	(30, 'BO', NULL, NULL, 'BOL', 68, 'BL', 'Bolivia', 'Bolivia', 'Sucre', 1098580, 9947418, 'SA', '.bo', 'BOB', '591', '', '', 'es-BO,qu,ay', 'PE,CL,PY,BR,AR', '', 0, NULL, NULL),
	(31, 'BQ', NULL, NULL, 'BES', 535, '', 'Bonaire, Saint Eustatius and Saba ', 'Bonaire, Saint Eustatius and Saba ', '', 328, 18012, 'NA', '.bq', 'USD', '599', '', '', 'nl,pap,en', '', '', 0, NULL, NULL),
	(32, 'BR', NULL, NULL, 'BRA', 76, 'BR', 'Brasil', 'Brazil', 'Brasilia', 8511965, 201103330, 'SA', '.br', 'BRL', '55', '#####-###', '^(d{8})$', 'pt-BR,es,en,fr', 'SR,PE,BO,UY,GY,PY,GF,VE,CO,AR', '', 0, NULL, NULL),
	(33, 'BS', NULL, NULL, 'BHS', 44, 'BF', 'Bahamas', 'Bahamas', 'Nassau', 13940, 301790, 'NA', '.bs', 'BSD', '+1-242', '', '', 'en-BS', '', '', 0, NULL, NULL),
	(34, 'BT', NULL, NULL, 'BTN', 64, 'BT', 'Druk-yul', 'Bhutan', 'Thimphu', 47000, 699847, 'AS', '.bt', 'BTN', '975', '', '', 'dz', 'CN,IN', '', 0, NULL, NULL),
	(35, 'BV', NULL, NULL, 'BVT', 74, 'BV', 'Bouvet Island', 'Bouvet Island', '', 49, 0, 'AN', '.bv', 'NOK', '', '', '', '', '', '', 0, NULL, NULL),
	(36, 'BW', NULL, NULL, 'BWA', 72, 'BC', 'Botswana', 'Botswana', 'Gaborone', 600370, 2029307, 'AF', '.bw', 'BWP', '267', '', '', 'en-BW,tn-BW', 'ZW,ZA,NA', '', 0, NULL, NULL),
	(37, 'BY', NULL, NULL, 'BLR', 112, 'BO', 'Biełaruś', 'Belarus', 'Minsk', 207600, 9685000, 'EU', '.by', 'BYR', '375', '######', '^(d{6})$', 'be,ru', 'PL,LT,UA,RU,LV', '', 0, NULL, NULL),
	(38, 'BZ', NULL, NULL, 'BLZ', 84, 'BH', 'Belize', 'Belize', 'Belmopan', 22966, 314522, 'NA', '.bz', 'BZD', '501', '', '', 'en-BZ,es', 'GT,MX', '', 0, NULL, NULL),
	(39, 'CA', NULL, NULL, 'CAN', 124, 'CA', 'Canada', 'Canada', 'Ottawa', 9984670, 33679000, 'NA', '.ca', 'CAD', '1', '@#@ #@#', '^([ABCEGHJKLMNPRSTVXY]d[ABCEGHJKLMNPRSTVWXYZ]) ?(d[ABCEGHJKLMNPRSTVWXYZ]d)$ ', 'en-CA,fr-CA,iu', 'US', '', 0, NULL, NULL),
	(40, 'CC', NULL, NULL, 'CCK', 166, 'CK', 'Cocos Islands', 'Cocos Islands', 'West Island', 14, 628, 'AS', '.cc', 'AUD', '61', '', '', 'ms-CC,en', '', '', 0, NULL, NULL),
	(41, 'CD', NULL, NULL, 'COD', 180, 'CG', 'RDC', 'Democratic Republic of the Congo', 'Kinshasa', 2345410, 70916439, 'AF', '.cd', 'CDF', '243', '', '', 'fr-CD,ln,kg', 'TZ,CF,SS,RW,ZM,BI,UG,CG,AO', '', 0, NULL, NULL),
	(42, 'CF', NULL, NULL, 'CAF', 140, 'CT', 'Centrafrique', 'Central African Republic', 'Bangui', 622984, 4844927, 'AF', '.cf', 'XAF', '236', '', '', 'fr-CF,sg,ln,kg', 'TD,SD,CD,SS,CM,CG', '', 0, NULL, NULL),
	(43, 'CG', NULL, NULL, 'COG', 178, 'CF', 'Congo', 'Republic of the Congo', 'Brazzaville', 342000, 3039126, 'AF', '.cg', 'XAF', '242', '', '', 'fr-CG,kg,ln-CG', 'CF,GA,CD,CM,AO', '', 0, NULL, NULL),
	(44, 'CH', NULL, NULL, 'CHE', 756, 'SZ', 'Switzerland', 'Switzerland', 'Berne', 41290, 7581000, 'EU', '.ch', 'CHF', '41', '####', '^(d{4})$', 'de-CH,fr-CH,it-CH,rm', 'DE,IT,LI,FR,AT', '', 0, NULL, NULL),
	(45, 'CI', NULL, NULL, 'CIV', 384, 'IV', 'Côte d\'Ivoire', 'Ivory Coast', 'Yamoussoukro', 322460, 21058798, 'AF', '.ci', 'XOF', '225', '', '', 'fr-CI', 'LR,GH,GN,BF,ML', '', 0, NULL, NULL),
	(46, 'CK', NULL, NULL, 'COK', 184, 'CW', 'Cook Islands', 'Cook Islands', 'Avarua', 240, 21388, 'OC', '.ck', 'NZD', '682', '', '', 'en-CK,mi', '', '', 0, NULL, NULL),
	(47, 'CL', NULL, NULL, 'CHL', 152, 'CI', 'Chile', 'Chile', 'Santiago', 756950, 16746491, 'SA', '.cl', 'CLP', '56', '#######', '^(d{7})$', 'es-CL', 'PE,BO,AR', '', 0, NULL, NULL),
	(48, 'CM', NULL, NULL, 'CMR', 120, 'CM', 'Cameroun', 'Cameroon', 'Yaounde', 475440, 19294149, 'AF', '.cm', 'XAF', '237', '', '', 'fr-CM,en-CM', 'TD,CF,GA,GQ,CG,NG', '', 0, NULL, NULL),
	(49, 'CN', NULL, NULL, 'CHN', 156, 'CH', 'Zhōngguó', 'China', 'Beijing', 9596960, 1330044000, 'AS', '.cn', 'CNY', '86', '######', '^(d{6})$', 'zh-CN,yue,wuu,dta,ug,za', 'LA,BT,TJ,KZ,MN,AF,NP,MM,KG,PK,KP,RU,VN,IN', '', 0, NULL, NULL),
	(50, 'CO', NULL, NULL, 'COL', 170, 'CO', 'Colombia', 'Colombia', 'Bogota', 1138910, 47790000, 'SA', '.co', 'COP', '57', '', '', 'es-CO', 'EC,PE,PA,BR,VE', '', 0, NULL, NULL),
	(51, 'CR', NULL, NULL, 'CRI', 188, 'CS', 'Costa Rica', 'Costa Rica', 'San Jose', 51100, 4516220, 'NA', '.cr', 'CRC', '506', '####', '^(d{4})$', 'es-CR,en', 'PA,NI', '', 0, NULL, NULL),
	(52, 'CS', NULL, NULL, 'SCG', 891, 'YI', 'Serbia and Montenegro', 'Serbia and Montenegro', 'Belgrade', 102350, 10829175, 'EU', '.cs', 'RSD', '381', '#####', '^(d{5})$', 'cu,hu,sq,sr', 'AL,HU,MK,RO,HR,BA,BG', '', 0, NULL, NULL),
	(53, 'CU', NULL, NULL, 'CUB', 192, 'CU', 'Cuba', 'Cuba', 'Havana', 110860, 11423000, 'NA', '.cu', 'CUP', '53', 'CP #####', '^(?:CP)*(d{5})$', 'es-CU', 'US', '', 0, NULL, NULL),
	(54, 'CV', NULL, NULL, 'CPV', 132, 'CV', 'Cabo Verde', 'Cape Verde', 'Praia', 4033, 508659, 'AF', '.cv', 'CVE', '238', '####', '^(d{4})$', 'pt-CV', '', '', 0, NULL, NULL),
	(55, 'CW', NULL, NULL, 'CUW', 531, 'UC', 'Curacao', 'Curacao', ' Willemstad', 444, 141766, 'NA', '.cw', 'ANG', '599', '', '', 'nl,pap', '', '', 0, NULL, NULL),
	(56, 'CX', NULL, NULL, 'CXR', 162, 'KT', 'Christmas Island', 'Christmas Island', 'Flying Fish Cove', 135, 1500, 'AS', '.cx', 'AUD', '61', '####', '^(d{4})$', 'en,zh,ms-CC', '', '', 0, NULL, NULL),
	(57, 'CY', NULL, NULL, 'CYP', 196, 'CY', 'Kýpros (Kıbrıs)', 'Cyprus', 'Nicosia', 9250, 1102677, 'EU', '.cy', 'EUR', '357', '####', '^(d{4})$', 'el-CY,tr-CY,en', '', '', 0, NULL, NULL),
	(58, 'CZ', NULL, NULL, 'CZE', 203, 'EZ', 'Česko', 'Czech Republic', 'Prague', 78866, 10476000, 'EU', '.cz', 'CZK', '420', '### ##', '^(d{5})$', 'cs,sk', 'PL,DE,SK,AT', '', 0, NULL, NULL),
	(59, 'DE', NULL, NULL, 'DEU', 276, 'GM', 'Deutschland', 'Germany', 'Berlin', 357021, 81802257, 'EU', '.de', 'EUR', '49', '#####', '^(d{5})$', 'de', 'CH,PL,NL,DK,BE,CZ,LU,FR,AT', '', 0, NULL, NULL),
	(60, 'DJ', NULL, NULL, 'DJI', 262, 'DJ', 'Djibouti', 'Djibouti', 'Djibouti', 23000, 740528, 'AF', '.dj', 'DJF', '253', '', '', 'fr-DJ,ar,so-DJ,aa', 'ER,ET,SO', '', 0, NULL, NULL),
	(61, 'DK', NULL, NULL, 'DNK', 208, 'DA', 'Danmark', 'Denmark', 'Copenhagen', 43094, 5484000, 'EU', '.dk', 'DKK', '45', '####', '^(d{4})$', 'da-DK,en,fo,de-DK', 'DE', '', 0, NULL, NULL),
	(62, 'DM', NULL, NULL, 'DMA', 212, 'DO', 'Dominica', 'Dominica', 'Roseau', 754, 72813, 'NA', '.dm', 'XCD', '+1-767', '', '', 'en-DM', '', '', 0, NULL, NULL),
	(63, 'DO', NULL, NULL, 'DOM', 214, 'DR', 'República Dominicana', 'Dominican Republic', 'Santo Domingo', 48730, 9823821, 'NA', '.do', 'DOP', '+809/829/849', '#####', '^(d{5})$', 'es-DO', 'HT', '', 0, NULL, NULL),
	(64, 'DZ', NULL, NULL, 'DZA', 12, 'AG', 'Algérie', 'Algeria', 'Algiers', 2381740, 34586184, 'AF', '.dz', 'DZD', '213', '#####', '^(d{5})$', 'ar-DZ,fr', 'NE,EH,LY,MR,TN,MA,ML', '', 0, NULL, NULL),
	(65, 'EC', NULL, NULL, 'ECU', 218, 'EC', 'Ecuador', 'Ecuador', 'Quito', 283560, 14790608, 'SA', '.ec', 'USD', '593', '@####@', '^([a-zA-Z]d{4}[a-zA-Z])$', 'es-EC', 'PE,CO', '', 0, NULL, NULL),
	(66, 'EE', NULL, NULL, 'EST', 233, 'EN', 'Eesti', 'Estonia', 'Tallinn', 45226, 1291170, 'EU', '.ee', 'EUR', '372', '#####', '^(d{5})$', 'et,ru', 'RU,LV', '', 0, NULL, NULL),
	(67, 'EG', NULL, NULL, 'EGY', 818, 'EG', 'Egypt', 'Egypt', 'Cairo', 1001450, 80471869, 'AF', '.eg', 'EGP', '20', '#####', '^(d{5})$', 'ar-EG,en,fr', 'LY,SD,IL,PS', '', 0, NULL, NULL),
	(68, 'EH', NULL, NULL, 'ESH', 732, 'WI', 'aṣ-Ṣaḥrāwīyâ al-ʿArabīyâ', 'Western Sahara', 'El-Aaiun', 266000, 273008, 'AF', '.eh', 'MAD', '212', '', '', 'ar,mey', 'DZ,MR,MA', '', 0, NULL, NULL),
	(69, 'ER', NULL, NULL, 'ERI', 232, 'ER', 'Ertrā', 'Eritrea', 'Asmara', 121320, 5792984, 'AF', '.er', 'ERN', '291', '', '', 'aa-ER,ar,tig,kun,ti-ER', 'ET,SD,DJ', '', 0, NULL, NULL),
	(70, 'ES', NULL, NULL, 'ESP', 724, 'SP', 'España', 'Spain', 'Madrid', 504782, 46505963, 'EU', '.es', 'EUR', '34', '#####', '^(d{5})$', 'es-ES,ca,gl,eu,oc', 'AD,PT,GI,FR,MA', '', 0, NULL, NULL),
	(71, 'ET', NULL, NULL, 'ETH', 231, 'ET', 'Ityoṗya', 'Ethiopia', 'Addis Ababa', 1127127, 88013491, 'AF', '.et', 'ETB', '251', '####', '^(d{4})$', 'am,en-ET,om-ET,ti-ET,so-ET,sid', 'ER,KE,SD,SS,SO,DJ', '', 0, NULL, NULL),
	(72, 'FI', NULL, NULL, 'FIN', 246, 'FI', 'Suomi (Finland)', 'Finland', 'Helsinki', 337030, 5244000, 'EU', '.fi', 'EUR', '358', '#####', '^(?:FI)*(d{5})$', 'fi-FI,sv-FI,smn', 'NO,RU,SE', '', 0, NULL, NULL),
	(73, 'FJ', NULL, NULL, 'FJI', 242, 'FJ', 'Viti', 'Fiji', 'Suva', 18270, 875983, 'OC', '.fj', 'FJD', '679', '', '', 'en-FJ,fj', '', '', 0, NULL, NULL),
	(74, 'FK', NULL, NULL, 'FLK', 238, 'FK', 'Falkland Islands', 'Falkland Islands', 'Stanley', 12173, 2638, 'SA', '.fk', 'FKP', '500', '', '', 'en-FK', '', '', 0, NULL, NULL),
	(75, 'FM', NULL, NULL, 'FSM', 583, 'FM', 'Micronesia', 'Micronesia', 'Palikir', 702, 107708, 'OC', '.fm', 'USD', '691', '#####', '^(d{5})$', 'en-FM,chk,pon,yap,kos,uli,woe,nkr,kpg', '', '', 0, NULL, NULL),
	(76, 'FO', NULL, NULL, 'FRO', 234, 'FO', 'Føroyar', 'Faroe Islands', 'Torshavn', 1399, 48228, 'EU', '.fo', 'DKK', '298', 'FO-###', '^(?:FO)*(d{3})$', 'fo,da-FO', '', '', 0, NULL, NULL),
	(77, 'FR', NULL, NULL, 'FRA', 250, 'FR', 'France', 'France', 'Paris', 547030, 64768389, 'EU', '.fr', 'EUR', '33', '#####', '^(d{5})$', 'fr-FR,frp,br,co,ca,eu,oc', 'CH,DE,BE,LU,IT,AD,MC,ES', '', 0, NULL, NULL),
	(78, 'GA', NULL, NULL, 'GAB', 266, 'GB', 'Gabon', 'Gabon', 'Libreville', 267667, 1545255, 'AF', '.ga', 'XAF', '241', '', '', 'fr-GA', 'CM,GQ,CG', '', 0, NULL, NULL),
	(79, 'GD', NULL, NULL, 'GRD', 308, 'GJ', 'Grenada', 'Grenada', 'St. George\'s', 344, 107818, 'NA', '.gd', 'XCD', '+1-473', '', '', 'en-GD', '', '', 0, NULL, NULL),
	(80, 'GE', NULL, NULL, 'GEO', 268, 'GG', 'Sak\'art\'velo', 'Georgia', 'Tbilisi', 69700, 4630000, 'AS', '.ge', 'GEL', '995', '####', '^(d{4})$', 'ka,ru,hy,az', 'AM,AZ,TR,RU', '', 0, NULL, NULL),
	(81, 'GF', NULL, NULL, 'GUF', 254, 'FG', 'Guyane', 'French Guiana', 'Cayenne', 91000, 195506, 'SA', '.gf', 'EUR', '594', '#####', '^((97|98)3d{2})$', 'fr-GF', 'SR,BR', '', 0, NULL, NULL),
	(82, 'GG', NULL, NULL, 'GGY', 831, 'GK', 'Guernsey', 'Guernsey', 'St Peter Port', 78, 65228, 'EU', '.gg', 'GBP', '+44-1481', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|G', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en,fr', '', '', 0, NULL, NULL),
	(83, 'GH', NULL, NULL, 'GHA', 288, 'GH', 'Ghana', 'Ghana', 'Accra', 239460, 24339838, 'AF', '.gh', 'GHS', '233', '', '', 'en-GH,ak,ee,tw', 'CI,TG,BF', '', 0, NULL, NULL),
	(84, 'GI', NULL, NULL, 'GIB', 292, 'GI', 'Gibraltar', 'Gibraltar', 'Gibraltar', 7, 27884, 'EU', '.gi', 'GIP', '350', '', '', 'en-GI,es,it,pt', 'ES', '', 0, NULL, NULL),
	(85, 'GL', NULL, NULL, 'GRL', 304, 'GL', 'Grønland', 'Greenland', 'Nuuk', 2166086, 56375, 'NA', '.gl', 'DKK', '299', '####', '^(d{4})$', 'kl,da-GL,en', '', '', 0, NULL, NULL),
	(86, 'GM', NULL, NULL, 'GMB', 270, 'GA', 'Gambia', 'Gambia', 'Banjul', 11300, 1593256, 'AF', '.gm', 'GMD', '220', '', '', 'en-GM,mnk,wof,wo,ff', 'SN', '', 0, NULL, NULL),
	(87, 'GN', NULL, NULL, 'GIN', 324, 'GV', 'Guinée', 'Guinea', 'Conakry', 245857, 10324025, 'AF', '.gn', 'GNF', '224', '', '', 'fr-GN', 'LR,SN,SL,CI,GW,ML', '', 0, NULL, NULL),
	(88, 'GP', NULL, NULL, 'GLP', 312, 'GP', 'Guadeloupe', 'Guadeloupe', 'Basse-Terre', 1780, 443000, 'NA', '.gp', 'EUR', '590', '#####', '^((97|98)d{3})$', 'fr-GP', '', '', 0, NULL, NULL),
	(89, 'GQ', NULL, NULL, 'GNQ', 226, 'EK', 'Guinée Equatoriale', 'Equatorial Guinea', 'Malabo', 28051, 1014999, 'AF', '.gq', 'XAF', '240', '', '', 'es-GQ,fr', 'GA,CM', '', 0, NULL, NULL),
	(90, 'GR', NULL, NULL, 'GRC', 300, 'GR', 'Elláda', 'Greece', 'Athens', 131940, 11000000, 'EU', '.gr', 'EUR', '30', '### ##', '^(d{5})$', 'el-GR,en,fr', 'AL,MK,TR,BG', '', 0, NULL, NULL),
	(91, 'GS', NULL, NULL, 'SGS', 239, 'SX', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'Grytviken', 3903, 30, 'AN', '.gs', 'GBP', '', '', '', 'en', '', '', 0, NULL, NULL),
	(92, 'GT', NULL, NULL, 'GTM', 320, 'GT', 'Guatemala', 'Guatemala', 'Guatemala City', 108890, 13550440, 'NA', '.gt', 'GTQ', '502', '#####', '^(d{5})$', 'es-GT', 'MX,HN,BZ,SV', '', 0, NULL, NULL),
	(93, 'GU', NULL, NULL, 'GUM', 316, 'GQ', 'Guam', 'Guam', 'Hagatna', 549, 159358, 'OC', '.gu', 'USD', '+1-671', '969##', '^(969d{2})$', 'en-GU,ch-GU', '', '', 0, NULL, NULL),
	(94, 'GW', NULL, NULL, 'GNB', 624, 'PU', 'Guiné-Bissau', 'Guinea-Bissau', 'Bissau', 36120, 1565126, 'AF', '.gw', 'XOF', '245', '####', '^(d{4})$', 'pt-GW,pov', 'SN,GN', '', 0, NULL, NULL),
	(95, 'GY', NULL, NULL, 'GUY', 328, 'GY', 'Guyana', 'Guyana', 'Georgetown', 214970, 748486, 'SA', '.gy', 'GYD', '592', '', '', 'en-GY', 'SR,BR,VE', '', 0, NULL, NULL),
	(96, 'HK', NULL, NULL, 'HKG', 344, 'HK', 'Hèunggóng', 'Hong Kong', 'Hong Kong', 1092, 6898686, 'AS', '.hk', 'HKD', '852', '', '', 'zh-HK,yue,zh,en', '', '', 0, NULL, NULL),
	(97, 'HM', NULL, NULL, 'HMD', 334, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', '', 412, 0, 'AN', '.hm', 'AUD', ' ', '', '', '', '', '', 0, NULL, NULL),
	(98, 'HN', NULL, NULL, 'HND', 340, 'HO', 'Honduras', 'Honduras', 'Tegucigalpa', 112090, 7989415, 'NA', '.hn', 'HNL', '504', '@@####', '^([A-Z]{2}d{4})$', 'es-HN', 'GT,NI,SV', '', 0, NULL, NULL),
	(99, 'HR', NULL, NULL, 'HRV', 191, 'HR', 'Hrvatska', 'Croatia', 'Zagreb', 56542, 4491000, 'EU', '.hr', 'HRK', '385', '#####', '^(?:HR)*(d{5})$', 'hr-HR,sr', 'HU,SI,BA,ME,RS', '', 0, NULL, NULL),
	(100, 'HT', NULL, NULL, 'HTI', 332, 'HA', 'Haïti', 'Haiti', 'Port-au-Prince', 27750, 9648924, 'NA', '.ht', 'HTG', '509', 'HT####', '^(?:HT)*(d{4})$', 'ht,fr-HT', 'DO', '', 0, NULL, NULL),
	(101, 'HU', NULL, NULL, 'HUN', 348, 'HU', 'Magyarország', 'Hungary', 'Budapest', 93030, 9982000, 'EU', '.hu', 'HUF', '36', '####', '^(d{4})$', 'hu-HU', 'SK,SI,RO,UA,HR,AT,RS', '', 0, NULL, NULL),
	(102, 'ID', NULL, NULL, 'IDN', 360, 'ID', 'Indonesia', 'Indonesia', 'Jakarta', 1919440, 242968342, 'AS', '.id', 'IDR', '62', '#####', '^(d{5})$', 'id,en,nl,jv', 'PG,TL,MY', '', 0, NULL, NULL),
	(103, 'IE', NULL, NULL, 'IRL', 372, 'EI', 'Ireland', 'Ireland', 'Dublin', 70280, 4622917, 'EU', '.ie', 'EUR', '353', '', '', 'en-IE,ga-IE', 'GB', '', 0, NULL, NULL),
	(104, 'IL', NULL, NULL, 'ISR', 376, 'IS', 'Yiśrā\'ēl', 'Israel', 'Jerusalem', 20770, 7353985, 'AS', '.il', 'ILS', '972', '#####', '^(d{5})$', 'he,ar-IL,en-IL,', 'SY,JO,LB,EG,PS', '', 0, NULL, NULL),
	(105, 'IM', NULL, NULL, 'IMN', 833, 'IM', 'Isle of Man', 'Isle of Man', 'Douglas, Isle of Man', 572, 75049, 'EU', '.im', 'GBP', '+44-1624', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|G', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en,gv', '', '', 0, NULL, NULL),
	(106, 'IN', NULL, NULL, 'IND', 356, 'IN', 'Bharat', 'India', 'New Delhi', 3287590, 1173108018, 'AS', '.in', 'INR', '91', '######', '^(d{6})$', 'en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,k', 'CN,NP,MM,BT,PK,BD', '', 0, NULL, NULL),
	(107, 'IO', NULL, NULL, 'IOT', 86, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'Diego Garcia', 60, 4000, 'AS', '.io', 'USD', '246', '', '', 'en-IO', '', '', 0, NULL, NULL),
	(108, 'IQ', NULL, NULL, 'IRQ', 368, 'IZ', 'al-ʿIrāq', 'Iraq', 'Baghdad', 437072, 29671605, 'AS', '.iq', 'IQD', '964', '#####', '^(d{5})$', 'ar-IQ,ku,hy', 'SY,SA,IR,JO,TR,KW', '', 0, NULL, NULL),
	(109, 'IR', NULL, NULL, 'IRN', 364, 'IR', 'Īrān', 'Iran', 'Tehran', 1648000, 76923300, 'AS', '.ir', 'IRR', '98', '##########', '^(d{10})$', 'fa-IR,ku', 'TM,AF,IQ,AM,PK,AZ,TR', '', 0, NULL, NULL),
	(110, 'IS', NULL, NULL, 'ISL', 352, 'IC', 'Ísland', 'Iceland', 'Reykjavik', 103000, 308910, 'EU', '.is', 'ISK', '354', '###', '^(d{3})$', 'is,en,de,da,sv,no', '', '', 0, NULL, NULL),
	(111, 'IT', NULL, NULL, 'ITA', 380, 'IT', 'Italia', 'Italy', 'Rome', 301230, 60340328, 'EU', '.it', 'EUR', '39', '#####', '^(d{5})$', 'it-IT,en,de-IT,fr-IT,sc,ca,co,sl', 'CH,VA,SI,SM,FR,AT', '', 0, NULL, NULL),
	(112, 'JE', NULL, NULL, 'JEY', 832, 'JE', 'Jersey', 'Jersey', 'Saint Helier', 116, 90812, 'EU', '.je', 'GBP', '+44-1534', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|G', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en,pt', '', '', 0, NULL, NULL),
	(113, 'JM', NULL, NULL, 'JAM', 388, 'JM', 'Jamaica', 'Jamaica', 'Kingston', 10991, 2847232, 'NA', '.jm', 'JMD', '+1-876', '', '', 'en-JM', '', '', 0, NULL, NULL),
	(114, 'JO', NULL, NULL, 'JOR', 400, 'JO', 'al-Urdun', 'Jordan', 'Amman', 92300, 6407085, 'AS', '.jo', 'JOD', '962', '#####', '^(d{5})$', 'ar-JO,en', 'SY,SA,IQ,IL,PS', '', 0, NULL, NULL),
	(115, 'JP', NULL, NULL, 'JPN', 392, 'JA', 'Nihon', 'Japan', 'Tokyo', 377835, 127288000, 'AS', '.jp', 'JPY', '81', '###-####', '^(d{7})$', 'ja', '', '', 0, NULL, NULL),
	(116, 'KE', NULL, NULL, 'KEN', 404, 'KE', 'Kenya', 'Kenya', 'Nairobi', 582650, 40046566, 'AF', '.ke', 'KES', '254', '#####', '^(d{5})$', 'en-KE,sw-KE', 'ET,TZ,SS,SO,UG', '', 0, NULL, NULL),
	(117, 'KG', NULL, NULL, 'KGZ', 417, 'KG', 'Kyrgyzstan', 'Kyrgyzstan', 'Bishkek', 198500, 5508626, 'AS', '.kg', 'KGS', '996', '######', '^(d{6})$', 'ky,uz,ru', 'CN,TJ,UZ,KZ', '', 0, NULL, NULL),
	(118, 'KH', NULL, NULL, 'KHM', 116, 'CB', 'Kambucā', 'Cambodia', 'Phnom Penh', 181040, 14453680, 'AS', '.kh', 'KHR', '855', '#####', '^(d{5})$', 'km,fr,en', 'LA,TH,VN', '', 0, NULL, NULL),
	(119, 'KI', NULL, NULL, 'KIR', 296, 'KR', 'Kiribati', 'Kiribati', 'Tarawa', 811, 92533, 'OC', '.ki', 'AUD', '686', '', '', 'en-KI,gil', '', '', 0, NULL, NULL),
	(120, 'KM', NULL, NULL, 'COM', 174, 'CN', 'Comores', 'Comoros', 'Moroni', 2170, 773407, 'AF', '.km', 'KMF', '269', '', '', 'ar,fr-KM', '', '', 0, NULL, NULL),
	(121, 'KN', NULL, NULL, 'KNA', 659, 'SC', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Basseterre', 261, 51134, 'NA', '.kn', 'XCD', '+1-869', '', '', 'en-KN', '', '', 0, NULL, NULL),
	(122, 'KP', NULL, NULL, 'PRK', 408, 'KN', 'Joseon', 'North Korea', 'Pyongyang', 120540, 22912177, 'AS', '.kp', 'KPW', '850', '###-###', '^(d{6})$', 'ko-KP', 'CN,KR,RU', '', 0, NULL, NULL),
	(123, 'KR', NULL, NULL, 'KOR', 410, 'KS', 'Hanguk', 'South Korea', 'Seoul', 98480, 48422644, 'AS', '.kr', 'KRW', '82', 'SEOUL ###-###', '^(?:SEOUL)*(d{6})$', 'ko-KR,en', 'KP', '', 0, NULL, NULL),
	(124, 'KW', NULL, NULL, 'KWT', 414, 'KU', 'al-Kuwayt', 'Kuwait', 'Kuwait City', 17820, 2789132, 'AS', '.kw', 'KWD', '965', '#####', '^(d{5})$', 'ar-KW,en', 'SA,IQ', '', 0, NULL, NULL),
	(125, 'KY', NULL, NULL, 'CYM', 136, 'CJ', 'Cayman Islands', 'Cayman Islands', 'George Town', 262, 44270, 'NA', '.ky', 'KYD', '+1-345', '', '', 'en-KY', '', '', 0, NULL, NULL),
	(126, 'KZ', NULL, NULL, 'KAZ', 398, 'KZ', 'Ķazaķstan', 'Kazakhstan', 'Astana', 2717300, 15340000, 'AS', '.kz', 'KZT', '7', '######', '^(d{6})$', 'kk,ru', 'TM,CN,KG,UZ,RU', '', 0, NULL, NULL),
	(127, 'LA', NULL, NULL, 'LAO', 418, 'LA', 'Lāw', 'Laos', 'Vientiane', 236800, 6368162, 'AS', '.la', 'LAK', '856', '#####', '^(d{5})$', 'lo,fr,en', 'CN,MM,KH,TH,VN', '', 0, NULL, NULL),
	(128, 'LB', NULL, NULL, 'LBN', 422, 'LE', 'Lubnān', 'Lebanon', 'Beirut', 10400, 4125247, 'AS', '.lb', 'LBP', '961', '#### ####|####', '^(d{4}(d{4})?)$', 'ar-LB,fr-LB,en,hy', 'SY,IL', '', 0, NULL, NULL),
	(129, 'LC', NULL, NULL, 'LCA', 662, 'ST', 'Saint Lucia', 'Saint Lucia', 'Castries', 616, 160922, 'NA', '.lc', 'XCD', '+1-758', '', '', 'en-LC', '', '', 0, NULL, NULL),
	(130, 'LI', NULL, NULL, 'LIE', 438, 'LS', 'Liechtenstein', 'Liechtenstein', 'Vaduz', 160, 35000, 'EU', '.li', 'CHF', '423', '####', '^(d{4})$', 'de-LI', 'CH,AT', '', 0, NULL, NULL),
	(131, 'LK', NULL, NULL, 'LKA', 144, 'CE', 'Šrī Laṁkā', 'Sri Lanka', 'Colombo', 65610, 21513990, 'AS', '.lk', 'LKR', '94', '#####', '^(d{5})$', 'si,ta,en', '', '', 0, NULL, NULL),
	(132, 'LR', NULL, NULL, 'LBR', 430, 'LI', 'Liberia', 'Liberia', 'Monrovia', 111370, 3685076, 'AF', '.lr', 'LRD', '231', '####', '^(d{4})$', 'en-LR', 'SL,CI,GN', '', 0, NULL, NULL),
	(133, 'LS', NULL, NULL, 'LSO', 426, 'LT', 'Lesotho', 'Lesotho', 'Maseru', 30355, 1919552, 'AF', '.ls', 'LSL', '266', '###', '^(d{3})$', 'en-LS,st,zu,xh', 'ZA', '', 0, NULL, NULL),
	(134, 'LT', NULL, NULL, 'LTU', 440, 'LH', 'Lietuva', 'Lithuania', 'Vilnius', 65200, 2944459, 'EU', '.lt', 'EUR', '370', 'LT-#####', '^(?:LT)*(d{5})$', 'lt,ru,pl', 'PL,BY,RU,LV', '', 0, NULL, NULL),
	(135, 'LU', NULL, NULL, 'LUX', 442, 'LU', 'Lëtzebuerg', 'Luxembourg', 'Luxembourg', 2586, 497538, 'EU', '.lu', 'EUR', '352', 'L-####', '^(d{4})$', 'lb,de-LU,fr-LU', 'DE,BE,FR', '', 0, NULL, NULL),
	(136, 'LV', NULL, NULL, 'LVA', 428, 'LG', 'Latvija', 'Latvia', 'Riga', 64589, 2217969, 'EU', '.lv', 'EUR', '371', 'LV-####', '^(?:LV)*(d{4})$', 'lv,ru,lt', 'LT,EE,BY,RU', '', 0, NULL, NULL),
	(137, 'LY', NULL, NULL, 'LBY', 434, 'LY', 'Lībiyā', 'Libya', 'Tripolis', 1759540, 6461454, 'AF', '.ly', 'LYD', '218', '', '', 'ar-LY,it,en', 'TD,NE,DZ,SD,TN,EG', '', 0, NULL, NULL),
	(138, 'MA', NULL, NULL, 'MAR', 504, 'MO', 'Maroc', 'Morocco', 'Rabat', 446550, 31627428, 'AF', '.ma', 'MAD', '212', '#####', '^(d{5})$', 'ar-MA,fr', 'DZ,EH,ES', '', 0, NULL, NULL),
	(139, 'MC', NULL, NULL, 'MCO', 492, 'MN', 'Monaco', 'Monaco', 'Monaco', 2, 32965, 'EU', '.mc', 'EUR', '377', '#####', '^(d{5})$', 'fr-MC,en,it', 'FR', '', 0, NULL, NULL),
	(140, 'MD', NULL, NULL, 'MDA', 498, 'MD', 'Moldova', 'Moldova', 'Chisinau', 33843, 4324000, 'EU', '.md', 'MDL', '373', 'MD-####', '^(?:MD)*(d{4})$', 'ro,ru,gag,tr', 'RO,UA', '', 0, NULL, NULL),
	(141, 'ME', NULL, NULL, 'MNE', 499, 'MJ', 'Crna Gora', 'Montenegro', 'Podgorica', 14026, 666730, 'EU', '.me', 'EUR', '382', '#####', '^(d{5})$', 'sr,hu,bs,sq,hr,rom', 'AL,HR,BA,RS,XK', '', 0, NULL, NULL),
	(142, 'MF', NULL, NULL, 'MAF', 663, 'RN', 'Saint Martin', 'Saint Martin', 'Marigot', 53, 35925, 'NA', '.gp', 'EUR', '590', '### ###', '', 'fr', 'SX', '', 0, NULL, NULL),
	(143, 'MG', NULL, NULL, 'MDG', 450, 'MA', 'Madagascar', 'Madagascar', 'Antananarivo', 587040, 21281844, 'AF', '.mg', 'MGA', '261', '###', '^(d{3})$', 'fr-MG,mg', '', '', 0, NULL, NULL),
	(144, 'MH', NULL, NULL, 'MHL', 584, 'RM', 'Marshall Islands', 'Marshall Islands', 'Majuro', 181, 65859, 'OC', '.mh', 'USD', '692', '', '', 'mh,en-MH', '', '', 0, NULL, NULL),
	(145, 'MK', NULL, NULL, 'MKD', 807, 'MK', 'Makedonija', 'Macedonia', 'Skopje', 25333, 2062294, 'EU', '.mk', 'MKD', '389', '####', '^(d{4})$', 'mk,sq,tr,rmm,sr', 'AL,GR,BG,RS,XK', '', 0, NULL, NULL),
	(146, 'ML', NULL, NULL, 'MLI', 466, 'ML', 'Mali', 'Mali', 'Bamako', 1240000, 13796354, 'AF', '.ml', 'XOF', '223', '', '', 'fr-ML,bm', 'SN,NE,DZ,CI,GN,MR,BF', '', 0, NULL, NULL),
	(147, 'MM', NULL, NULL, 'MMR', 104, 'BM', 'Mẏanmā', 'Myanmar', 'Nay Pyi Taw', 678500, 53414374, 'AS', '.mm', 'MMK', '95', '#####', '^(d{5})$', 'my', 'CN,LA,TH,BD,IN', '', 0, NULL, NULL),
	(148, 'MN', NULL, NULL, 'MNG', 496, 'MG', 'Mongol Uls', 'Mongolia', 'Ulan Bator', 1565000, 3086918, 'AS', '.mn', 'MNT', '976', '######', '^(d{6})$', 'mn,ru', 'CN,RU', '', 0, NULL, NULL),
	(149, 'MO', NULL, NULL, 'MAC', 446, 'MC', 'Ngoumún', 'Macao', 'Macao', 254, 449198, 'AS', '.mo', 'MOP', '853', '', '', 'zh,zh-MO,pt', '', '', 0, NULL, NULL),
	(150, 'MP', NULL, NULL, 'MNP', 580, 'CQ', 'Northern Mariana Islands', 'Northern Mariana Islands', 'Saipan', 477, 53883, 'OC', '.mp', 'USD', '+1-670', '', '', 'fil,tl,zh,ch-MP,en-MP', '', '', 0, NULL, NULL),
	(151, 'MQ', NULL, NULL, 'MTQ', 474, 'MB', 'Martinique', 'Martinique', 'Fort-de-France', 1100, 432900, 'NA', '.mq', 'EUR', '596', '#####', '^(d{5})$', 'fr-MQ', '', '', 0, NULL, NULL),
	(152, 'MR', NULL, NULL, 'MRT', 478, 'MR', 'Mauritanie', 'Mauritania', 'Nouakchott', 1030700, 3205060, 'AF', '.mr', 'MRO', '222', '', '', 'ar-MR,fuc,snk,fr,mey,wo', 'SN,DZ,EH,ML', '', 0, NULL, NULL),
	(153, 'MS', NULL, NULL, 'MSR', 500, 'MH', 'Montserrat', 'Montserrat', 'Plymouth', 102, 9341, 'NA', '.ms', 'XCD', '+1-664', '', '', 'en-MS', '', '', 0, NULL, NULL),
	(154, 'MT', NULL, NULL, 'MLT', 470, 'MT', 'Malta', 'Malta', 'Valletta', 316, 403000, 'EU', '.mt', 'EUR', '356', '@@@ ###|@@@ ##', '^([A-Z]{3}d{2}d?)$', 'mt,en-MT', '', '', 0, NULL, NULL),
	(155, 'MU', NULL, NULL, 'MUS', 480, 'MP', 'Mauritius', 'Mauritius', 'Port Louis', 2040, 1294104, 'AF', '.mu', 'MUR', '230', '', '', 'en-MU,bho,fr', '', '', 0, NULL, NULL),
	(156, 'MV', NULL, NULL, 'MDV', 462, 'MV', 'Dhivehi', 'Maldives', 'Male', 300, 395650, 'AS', '.mv', 'MVR', '960', '#####', '^(d{5})$', 'dv,en', '', '', 0, NULL, NULL),
	(157, 'MW', NULL, NULL, 'MWI', 454, 'MI', 'Malawi', 'Malawi', 'Lilongwe', 118480, 15447500, 'AF', '.mw', 'MWK', '265', '', '', 'ny,yao,tum,swk', 'TZ,MZ,ZM', '', 0, NULL, NULL),
	(158, 'MX', NULL, NULL, 'MEX', 484, 'MX', 'México', 'Mexico', 'Mexico City', 1972550, 112468855, 'NA', '.mx', 'MXN', '52', '#####', '^(d{5})$', 'es-MX', 'GT,US,BZ', '', 0, NULL, NULL),
	(159, 'MY', NULL, NULL, 'MYS', 458, 'MY', 'Malaysia', 'Malaysia', 'Kuala Lumpur', 329750, 28274729, 'AS', '.my', 'MYR', '60', '#####', '^(d{5})$', 'ms-MY,en,zh,ta,te,ml,pa,th', 'BN,TH,ID', '', 0, NULL, NULL),
	(160, 'MZ', NULL, NULL, 'MOZ', 508, 'MZ', 'Moçambique', 'Mozambique', 'Maputo', 801590, 22061451, 'AF', '.mz', 'MZN', '258', '####', '^(d{4})$', 'pt-MZ,vmw', 'ZW,TZ,SZ,ZA,ZM,MW', '', 1, NULL, '2020-09-22 00:17:38'),
	(161, 'NA', NULL, NULL, 'NAM', 516, 'WA', 'Namibia', 'Namibia', 'Windhoek', 825418, 2128471, 'AF', '.na', 'NAD', '264', '', '', 'en-NA,af,de,hz,naq', 'ZA,BW,ZM,AO', '', 0, NULL, NULL),
	(162, 'NC', NULL, NULL, 'NCL', 540, 'NC', 'Nouvelle Calédonie', 'New Caledonia', 'Noumea', 19060, 216494, 'OC', '.nc', 'XPF', '687', '#####', '^(d{5})$', 'fr-NC', '', '', 0, NULL, NULL),
	(163, 'NE', NULL, NULL, 'NER', 562, 'NG', 'Niger', 'Niger', 'Niamey', 1267000, 15878271, 'AF', '.ne', 'XOF', '227', '####', '^(d{4})$', 'fr-NE,ha,kr,dje', 'TD,BJ,DZ,LY,BF,NG,ML', '', 0, NULL, NULL),
	(164, 'NF', NULL, NULL, 'NFK', 574, 'NF', 'Norfolk Island', 'Norfolk Island', 'Kingston', 35, 1828, 'OC', '.nf', 'AUD', '672', '####', '^(d{4})$', 'en-NF', '', '', 0, NULL, NULL),
	(165, 'NG', NULL, NULL, 'NGA', 566, 'NI', 'Nigeria', 'Nigeria', 'Abuja', 923768, 154000000, 'AF', '.ng', 'NGN', '234', '######', '^(d{6})$', 'en-NG,ha,yo,ig,ff', 'TD,NE,BJ,CM', '', 0, NULL, NULL),
	(166, 'NI', NULL, NULL, 'NIC', 558, 'NU', 'Nicaragua', 'Nicaragua', 'Managua', 129494, 5995928, 'NA', '.ni', 'NIO', '505', '###-###-#', '^(d{7})$', 'es-NI,en', 'CR,HN', '', 0, NULL, NULL),
	(167, 'NL', NULL, NULL, 'NLD', 528, 'NL', 'Nederland', 'Netherlands', 'Amsterdam', 41526, 16645000, 'EU', '.nl', 'EUR', '31', '#### @@', '^(d{4}[A-Z]{2})$', 'nl-NL,fy-NL', 'DE,BE', '', 0, NULL, NULL),
	(168, 'NO', NULL, NULL, 'NOR', 578, 'NO', 'Norge (Noreg)', 'Norway', 'Oslo', 324220, 5009150, 'EU', '.no', 'NOK', '47', '####', '^(d{4})$', 'no,nb,nn,se,fi', 'FI,RU,SE', '', 0, NULL, NULL),
	(169, 'NP', NULL, NULL, 'NPL', 524, 'NP', 'Nēpāl', 'Nepal', 'Kathmandu', 140800, 28951852, 'AS', '.np', 'NPR', '977', '#####', '^(d{5})$', 'ne,en', 'CN,IN', '', 0, NULL, NULL),
	(170, 'NR', NULL, NULL, 'NRU', 520, 'NR', 'Naoero', 'Nauru', 'Yaren', 21, 10065, 'OC', '.nr', 'AUD', '674', '', '', 'na,en-NR', '', '', 0, NULL, NULL),
	(171, 'NU', NULL, NULL, 'NIU', 570, 'NE', 'Niue', 'Niue', 'Alofi', 260, 2166, 'OC', '.nu', 'NZD', '683', '', '', 'niu,en-NU', '', '', 0, NULL, NULL),
	(172, 'NZ', NULL, NULL, 'NZL', 554, 'NZ', 'New Zealand', 'New Zealand', 'Wellington', 268680, 4252277, 'OC', '.nz', 'NZD', '64', '####', '^(d{4})$', 'en-NZ,mi', '', '', 0, NULL, NULL),
	(173, 'OM', NULL, NULL, 'OMN', 512, 'MU', 'ʿUmān', 'Oman', 'Muscat', 212460, 2967717, 'AS', '.om', 'OMR', '968', '###', '^(d{3})$', 'ar-OM,en,bal,ur', 'SA,YE,AE', '', 0, NULL, NULL),
	(174, 'PA', NULL, NULL, 'PAN', 591, 'PM', 'Panamá', 'Panama', 'Panama City', 78200, 3410676, 'NA', '.pa', 'PAB', '507', '', '', 'es-PA,en', 'CR,CO', '', 0, NULL, NULL),
	(175, 'PE', NULL, NULL, 'PER', 604, 'PE', 'Perú', 'Peru', 'Lima', 1285220, 29907003, 'SA', '.pe', 'PEN', '51', '', '', 'es-PE,qu,ay', 'EC,CL,BO,BR,CO', '', 0, NULL, NULL),
	(176, 'PF', NULL, NULL, 'PYF', 258, 'FP', 'Polinésie Française', 'French Polynesia', 'Papeete', 4167, 270485, 'OC', '.pf', 'XPF', '689', '#####', '^((97|98)7d{2})$', 'fr-PF,ty', '', '', 0, NULL, NULL),
	(177, 'PG', NULL, NULL, 'PNG', 598, 'PP', 'Papua New Guinea', 'Papua New Guinea', 'Port Moresby', 462840, 6064515, 'OC', '.pg', 'PGK', '675', '###', '^(d{3})$', 'en-PG,ho,meu,tpi', 'ID', '', 0, NULL, NULL),
	(178, 'PH', NULL, NULL, 'PHL', 608, 'RP', 'Pilipinas', 'Philippines', 'Manila', 300000, 99900177, 'AS', '.ph', 'PHP', '63', '####', '^(d{4})$', 'tl,en-PH,fil', '', '', 0, NULL, NULL),
	(179, 'PK', NULL, NULL, 'PAK', 586, 'PK', 'Pākistān', 'Pakistan', 'Islamabad', 803940, 184404791, 'AS', '.pk', 'PKR', '92', '#####', '^(d{5})$', 'ur-PK,en-PK,pa,sd,ps,brh', 'CN,AF,IR,IN', '', 0, NULL, NULL),
	(180, 'PL', NULL, NULL, 'POL', 616, 'PL', 'Polska', 'Poland', 'Warsaw', 312685, 38500000, 'EU', '.pl', 'PLN', '48', '##-###', '^(d{5})$', 'pl', 'DE,LT,SK,CZ,BY,UA,RU', '', 0, NULL, NULL),
	(181, 'PM', NULL, NULL, 'SPM', 666, 'SB', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint-Pierre', 242, 7012, 'NA', '.pm', 'EUR', '508', '#####', '^(97500)$', 'fr-PM', '', '', 0, NULL, NULL),
	(182, 'PN', NULL, NULL, 'PCN', 612, 'PC', 'Pitcairn', 'Pitcairn', 'Adamstown', 47, 46, 'OC', '.pn', 'NZD', '870', '', '', 'en-PN', '', '', 0, NULL, NULL),
	(183, 'PR', NULL, NULL, 'PRI', 630, 'RQ', 'Puerto Rico', 'Puerto Rico', 'San Juan', 9104, 3916632, 'NA', '.pr', 'USD', '+1-787/1-939', '#####-####', '^(d{9})$', 'en-PR,es-PR', '', '', 0, NULL, NULL),
	(184, 'PS', NULL, NULL, 'PSE', 275, 'WE', 'Filasṭīn', 'Palestinian Territory', 'East Jerusalem', 5970, 3800000, 'AS', '.ps', 'ILS', '970', '', '', 'ar-PS', 'JO,IL,EG', '', 0, NULL, NULL),
	(185, 'PT', NULL, NULL, 'PRT', 620, 'PO', 'Portugal', 'Portugal', 'Lisbon', 92391, 10676000, 'EU', '.pt', 'EUR', '351', '####-###', '^(d{7})$', 'pt-PT,mwl', 'ES', '', 0, NULL, NULL),
	(186, 'PW', NULL, NULL, 'PLW', 585, 'PS', 'Palau', 'Palau', 'Melekeok', 458, 19907, 'OC', '.pw', 'USD', '680', '96940', '^(96940)$', 'pau,sov,en-PW,tox,ja,fil,zh', '', '', 0, NULL, NULL),
	(187, 'PY', NULL, NULL, 'PRY', 600, 'PA', 'Paraguay', 'Paraguay', 'Asuncion', 406750, 6375830, 'SA', '.py', 'PYG', '595', '####', '^(d{4})$', 'es-PY,gn', 'BO,BR,AR', '', 0, NULL, NULL),
	(188, 'QA', NULL, NULL, 'QAT', 634, 'QA', 'Qaṭar', 'Qatar', 'Doha', 11437, 840926, 'AS', '.qa', 'QAR', '974', '', '', 'ar-QA,es', 'SA', '', 0, NULL, NULL),
	(189, 'RE', NULL, NULL, 'REU', 638, 'RE', 'Réunion', 'Reunion', 'Saint-Denis', 2517, 776948, 'AF', '.re', 'EUR', '262', '#####', '^((97|98)(4|7|8)d{2})$', 'fr-RE', '', '', 0, NULL, NULL),
	(190, 'RO', NULL, NULL, 'ROU', 642, 'RO', 'România', 'Romania', 'Bucharest', 237500, 21959278, 'EU', '.ro', 'RON', '40', '######', '^(d{6})$', 'ro,hu,rom', 'MD,HU,UA,BG,RS', '', 0, NULL, NULL),
	(191, 'RS', NULL, NULL, 'SRB', 688, 'RI', 'Srbija', 'Serbia', 'Belgrade', 88361, 7344847, 'EU', '.rs', 'RSD', '381', '######', '^(d{6})$', 'sr,hu,bs,rom', 'AL,HU,MK,RO,HR,BA,BG,ME,XK', '', 0, NULL, NULL),
	(192, 'RU', NULL, NULL, 'RUS', 643, 'RS', 'Rossija', 'Russia', 'Moscow', 17100000, 140702000, 'EU', '.ru', 'RUB', '7', '######', '^(d{6})$', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,mns,bua,myv', 'GE,CN,BY,UA,KZ,LV,PL,EE,LT,FI,MN,NO,AZ,KP', '', 0, NULL, NULL),
	(193, 'RW', NULL, NULL, 'RWA', 646, 'RW', 'Rwanda', 'Rwanda', 'Kigali', 26338, 11055976, 'AF', '.rw', 'RWF', '250', '', '', 'rw,en-RW,fr-RW,sw', 'TZ,CD,BI,UG', '', 0, NULL, NULL),
	(194, 'SA', NULL, NULL, 'SAU', 682, 'SA', 'as-Saʿūdīyâ', 'Saudi Arabia', 'Riyadh', 1960582, 25731776, 'AS', '.sa', 'SAR', '966', '#####', '^(d{5})$', 'ar-SA', 'QA,OM,IQ,YE,JO,AE,KW', '', 0, NULL, NULL),
	(195, 'SB', NULL, NULL, 'SLB', 90, 'BP', 'Solomon Islands', 'Solomon Islands', 'Honiara', 28450, 559198, 'OC', '.sb', 'SBD', '677', '', '', 'en-SB,tpi', '', '', 0, NULL, NULL),
	(196, 'SC', NULL, NULL, 'SYC', 690, 'SE', 'Seychelles', 'Seychelles', 'Victoria', 455, 88340, 'AF', '.sc', 'SCR', '248', '', '', 'en-SC,fr-SC', '', '', 0, NULL, NULL),
	(197, 'SD', NULL, NULL, 'SDN', 729, 'SU', 'Sudan', 'Sudan', 'Khartoum', 1861484, 35000000, 'AF', '.sd', 'SDG', '249', '#####', '^(d{5})$', 'ar-SD,en,fia', 'SS,TD,EG,ET,ER,LY,CF', '', 0, NULL, NULL),
	(198, 'SE', NULL, NULL, 'SWE', 752, 'SW', 'Sverige', 'Sweden', 'Stockholm', 449964, 9555893, 'EU', '.se', 'SEK', '46', '### ##', '^(?:SE)*(d{5})$', 'sv-SE,se,sma,fi-SE', 'NO,FI', '', 0, NULL, NULL),
	(199, 'SG', NULL, NULL, 'SGP', 702, 'SN', 'xīnjiāpō', 'Singapore', 'Singapur', 693, 4701069, 'AS', '.sg', 'SGD', '65', '######', '^(d{6})$', 'cmn,en-SG,ms-SG,ta-SG,zh-SG', '', '', 0, NULL, NULL),
	(200, 'SH', NULL, NULL, 'SHN', 654, 'SH', 'Saint Helena', 'Saint Helena', 'Jamestown', 410, 7460, 'AF', '.sh', 'SHP', '290', 'STHL 1ZZ', '^(STHL1ZZ)$', 'en-SH', '', '', 0, NULL, NULL),
	(201, 'SI', NULL, NULL, 'SVN', 705, 'SI', 'Slovenija', 'Slovenia', 'Ljubljana', 20273, 2007000, 'EU', '.si', 'EUR', '386', '####', '^(?:SI)*(d{4})$', 'sl,sh', 'HU,IT,HR,AT', '', 0, NULL, NULL),
	(202, 'SJ', NULL, NULL, 'SJM', 744, 'SV', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'Longyearbyen', 62049, 2550, 'EU', '.sj', 'NOK', '47', '', '', 'no,ru', '', '', 0, NULL, NULL),
	(203, 'SK', NULL, NULL, 'SVK', 703, 'LO', 'Slovensko', 'Slovakia', 'Bratislava', 48845, 5455000, 'EU', '.sk', 'EUR', '421', '### ##', '^(d{5})$', 'sk,hu', 'PL,HU,CZ,UA,AT', '', 0, NULL, NULL),
	(204, 'SL', NULL, NULL, 'SLE', 694, 'SL', 'Sierra Leone', 'Sierra Leone', 'Freetown', 71740, 5245695, 'AF', '.sl', 'SLL', '232', '', '', 'en-SL,men,tem', 'LR,GN', '', 0, NULL, NULL),
	(205, 'SM', NULL, NULL, 'SMR', 674, 'SM', 'San Marino', 'San Marino', 'San Marino', 61, 31477, 'EU', '.sm', 'EUR', '378', '4789#', '^(4789d)$', 'it-SM', 'IT', '', 0, NULL, NULL),
	(206, 'SN', NULL, NULL, 'SEN', 686, 'SG', 'Sénégal', 'Senegal', 'Dakar', 196190, 12323252, 'AF', '.sn', 'XOF', '221', '#####', '^(d{5})$', 'fr-SN,wo,fuc,mnk', 'GN,MR,GW,GM,ML', '', 0, NULL, NULL),
	(207, 'SO', NULL, NULL, 'SOM', 706, 'SO', 'Soomaaliya', 'Somalia', 'Mogadishu', 637657, 10112453, 'AF', '.so', 'SOS', '252', '@@  #####', '^([A-Z]{2}d{5})$', 'so-SO,ar-SO,it,en-SO', 'ET,KE,DJ', '', 0, NULL, NULL),
	(208, 'SR', NULL, NULL, 'SUR', 740, 'NS', 'Suriname', 'Suriname', 'Paramaribo', 163270, 492829, 'SA', '.sr', 'SRD', '597', '', '', 'nl-SR,en,srn,hns,jv', 'GY,BR,GF', '', 0, NULL, NULL),
	(209, 'SS', NULL, NULL, 'SSD', 728, 'OD', 'South Sudan', 'South Sudan', 'Juba', 644329, 8260490, 'AF', '', 'SSP', '211', '', '', 'en', 'CD,CF,ET,KE,SD,UG,', '', 0, NULL, NULL),
	(210, 'ST', NULL, NULL, 'STP', 678, 'TP', 'São Tomé e Príncipe', 'Sao Tome and Principe', 'Sao Tome', 1001, 175808, 'AF', '.st', 'STD', '239', '', '', 'pt-ST', '', '', 0, NULL, NULL),
	(211, 'SV', NULL, NULL, 'SLV', 222, 'ES', 'El Salvador', 'El Salvador', 'San Salvador', 21040, 6052064, 'NA', '.sv', 'USD', '503', 'CP ####', '^(?:CP)*(d{4})$', 'es-SV', 'GT,HN', '', 0, NULL, NULL),
	(212, 'SX', NULL, NULL, 'SXM', 534, 'NN', 'Sint Maarten', 'Sint Maarten', 'Philipsburg', 21, 37429, 'NA', '.sx', 'ANG', '599', '', '', 'nl,en', 'MF', '', 0, NULL, NULL),
	(213, 'SY', NULL, NULL, 'SYR', 760, 'SY', 'Sūrīyâ', 'Syria', 'Damascus', 185180, 22198110, 'AS', '.sy', 'SYP', '963', '', '', 'ar-SY,ku,hy,arc,fr,en', 'IQ,JO,IL,TR,LB', '', 0, NULL, NULL),
	(214, 'SZ', NULL, NULL, 'SWZ', 748, 'WZ', 'Swaziland', 'Swaziland', 'Mbabane', 17363, 1354051, 'AF', '.sz', 'SZL', '268', '@###', '^([A-Z]d{3})$', 'en-SZ,ss-SZ', 'ZA,MZ', '', 0, NULL, NULL),
	(215, 'TC', NULL, NULL, 'TCA', 796, 'TK', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Cockburn Town', 430, 20556, 'NA', '.tc', 'USD', '+1-649', 'TKCA 1ZZ', '^(TKCA 1ZZ)$', 'en-TC', '', '', 0, NULL, NULL),
	(216, 'TD', NULL, NULL, 'TCD', 148, 'CD', 'Tchad', 'Chad', 'N\'Djamena', 1284000, 10543464, 'AF', '.td', 'XAF', '235', '', '', 'fr-TD,ar-TD,sre', 'NE,LY,CF,SD,CM,NG', '', 0, NULL, NULL),
	(217, 'TF', NULL, NULL, 'ATF', 260, 'FS', 'French Southern Territories', 'French Southern Territories', 'Port-aux-Francais', 7829, 140, 'AN', '.tf', 'EUR', '', '', '', 'fr', '', '', 0, NULL, NULL),
	(218, 'TG', NULL, NULL, 'TGO', 768, 'TO', 'Togo', 'Togo', 'Lome', 56785, 6587239, 'AF', '.tg', 'XOF', '228', '', '', 'fr-TG,ee,hna,kbp,dag,ha', 'BJ,GH,BF', '', 0, NULL, NULL),
	(219, 'TH', NULL, NULL, 'THA', 764, 'TH', 'Prathēt tai', 'Thailand', 'Bangkok', 514000, 67089500, 'AS', '.th', 'THB', '66', '#####', '^(d{5})$', 'th,en', 'LA,MM,KH,MY', '', 0, NULL, NULL),
	(220, 'TJ', NULL, NULL, 'TJK', 762, 'TI', 'Tojikiston', 'Tajikistan', 'Dushanbe', 143100, 7487489, 'AS', '.tj', 'TJS', '992', '######', '^(d{6})$', 'tg,ru', 'CN,AF,KG,UZ', '', 0, NULL, NULL),
	(221, 'TK', NULL, NULL, 'TKL', 772, 'TL', 'Tokelau', 'Tokelau', '', 10, 1466, 'OC', '.tk', 'NZD', '690', '', '', 'tkl,en-TK', '', '', 0, NULL, NULL),
	(222, 'TL', NULL, NULL, 'TLS', 626, 'TT', 'Timór Lorosa\'e', 'East Timor', 'Dili', 15007, 1154625, 'OC', '.tl', 'USD', '670', '', '', 'tet,pt-TL,id,en', 'ID', '', 0, NULL, NULL),
	(223, 'TM', NULL, NULL, 'TKM', 795, 'TX', 'Turkmenistan', 'Turkmenistan', 'Ashgabat', 488100, 4940916, 'AS', '.tm', 'TMT', '993', '######', '^(d{6})$', 'tk,ru,uz', 'AF,IR,UZ,KZ', '', 0, NULL, NULL),
	(224, 'TN', NULL, NULL, 'TUN', 788, 'TS', 'Tunisie', 'Tunisia', 'Tunis', 163610, 10589025, 'AF', '.tn', 'TND', '216', '####', '^(d{4})$', 'ar-TN,fr', 'DZ,LY', '', 0, NULL, NULL),
	(225, 'TO', NULL, NULL, 'TON', 776, 'TN', 'Tonga', 'Tonga', 'Nuku\'alofa', 748, 122580, 'OC', '.to', 'TOP', '676', '', '', 'to,en-TO', '', '', 0, NULL, NULL),
	(226, 'TR', NULL, NULL, 'TUR', 792, 'TU', 'Türkiye', 'Turkey', 'Ankara', 780580, 77804122, 'AS', '.tr', 'TRY', '90', '#####', '^(d{5})$', 'tr-TR,ku,diq,az,av', 'SY,GE,IQ,IR,GR,AM,AZ,BG', '', 0, NULL, NULL),
	(227, 'TT', NULL, NULL, 'TTO', 780, 'TD', 'Trinidad and Tobago', 'Trinidad and Tobago', 'Port of Spain', 5128, 1228691, 'NA', '.tt', 'TTD', '+1-868', '', '', 'en-TT,hns,fr,es,zh', '', '', 0, NULL, NULL),
	(228, 'TV', NULL, NULL, 'TUV', 798, 'TV', 'Tuvalu', 'Tuvalu', 'Funafuti', 26, 10472, 'OC', '.tv', 'AUD', '688', '', '', 'tvl,en,sm,gil', '', '', 0, NULL, NULL),
	(229, 'TW', NULL, NULL, 'TWN', 158, 'TW', 'T\'ai2-wan1', 'Taiwan', 'Taipei', 35980, 22894384, 'AS', '.tw', 'TWD', '886', '#####', '^(d{5})$', 'zh-TW,zh,nan,hak', '', '', 0, NULL, NULL),
	(230, 'TZ', NULL, NULL, 'TZA', 834, 'TZ', 'Tanzania', 'Tanzania', 'Dodoma', 945087, 41892895, 'AF', '.tz', 'TZS', '255', '', '', 'sw-TZ,en,ar', 'MZ,KE,CD,RW,ZM,BI,UG,MW', '', 0, NULL, NULL),
	(231, 'UA', NULL, NULL, 'UKR', 804, 'UP', 'Ukrajina', 'Ukraine', 'Kiev', 603700, 45415596, 'EU', '.ua', 'UAH', '380', '#####', '^(d{5})$', 'uk,ru-UA,rom,pl,hu', 'PL,MD,HU,SK,BY,RO,RU', '', 0, NULL, NULL),
	(232, 'UG', NULL, NULL, 'UGA', 800, 'UG', 'Uganda', 'Uganda', 'Kampala', 236040, 33398682, 'AF', '.ug', 'UGX', '256', '', '', 'en-UG,lg,sw,ar', 'TZ,KE,SS,CD,RW', '', 0, NULL, NULL),
	(233, 'UK', NULL, NULL, 'GBR', 826, 'UK', 'United Kingdom', 'United Kingdom', 'London', 244820, 62348447, 'EU', '.uk', 'GBP', '44', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|G', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en-GB,cy-GB,gd', 'IE', '', 0, NULL, NULL),
	(234, 'UM', NULL, NULL, 'UMI', 581, '', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', '', 0, 0, 'OC', '.um', 'USD', '1', '', '', 'en-UM', '', '', 0, NULL, NULL),
	(235, 'US', NULL, NULL, 'USA', 840, 'US', 'USA', 'United States', 'Washington', 9629091, 310232863, 'NA', '.us', 'USD', '1', '#####-####', '^d{5}(-d{4})?$', 'en-US,es-US,haw,fr', 'CA,MX,CU', '', 0, NULL, NULL),
	(236, 'UY', NULL, NULL, 'URY', 858, 'UY', 'Uruguay', 'Uruguay', 'Montevideo', 176220, 3477000, 'SA', '.uy', 'UYU', '598', '#####', '^(d{5})$', 'es-UY', 'BR,AR', '', 0, NULL, NULL),
	(237, 'UZ', NULL, NULL, 'UZB', 860, 'UZ', 'O\'zbekiston', 'Uzbekistan', 'Tashkent', 447400, 27865738, 'AS', '.uz', 'UZS', '998', '######', '^(d{6})$', 'uz,ru,tg', 'TM,AF,KG,TJ,KZ', '', 0, NULL, NULL),
	(238, 'VA', NULL, NULL, 'VAT', 336, 'VT', 'Vaticanum', 'Vatican', 'Vatican City', 0, 921, 'EU', '.va', 'EUR', '379', '#####', '^(d{5})$', 'la,it,fr', 'IT', '', 0, NULL, NULL),
	(239, 'VC', NULL, NULL, 'VCT', 670, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Kingstown', 389, 104217, 'NA', '.vc', 'XCD', '+1-784', '', '', 'en-VC,fr', '', '', 0, NULL, NULL),
	(240, 'VE', NULL, NULL, 'VEN', 862, 'VE', 'Venezuela', 'Venezuela', 'Caracas', 912050, 27223228, 'SA', '.ve', 'VEF', '58', '####', '^(d{4})$', 'es-VE', 'GY,BR,CO', '', 0, NULL, NULL),
	(241, 'VG', NULL, NULL, 'VGB', 92, 'VI', 'British Virgin Islands', 'British Virgin Islands', 'Road Town', 153, 21730, 'NA', '.vg', 'USD', '+1-284', '', '', 'en-VG', '', '', 0, NULL, NULL),
	(242, 'VI', NULL, NULL, 'VIR', 850, 'VQ', 'U.S. Virgin Islands', 'U.S. Virgin Islands', 'Charlotte Amalie', 352, 108708, 'NA', '.vi', 'USD', '+1-340', '#####-####', '^d{5}(-d{4})?$', 'en-VI', '', '', 0, NULL, NULL),
	(243, 'VN', NULL, NULL, 'VNM', 704, 'VM', 'Việt Nam', 'Vietnam', 'Hanoi', 329560, 89571130, 'AS', '.vn', 'VND', '84', '######', '^(d{6})$', 'vi,en,fr,zh,km', 'CN,LA,KH', '', 0, NULL, NULL),
	(244, 'VU', NULL, NULL, 'VUT', 548, 'NH', 'Vanuatu', 'Vanuatu', 'Port Vila', 12200, 221552, 'OC', '.vu', 'VUV', '678', '', '', 'bi,en-VU,fr-VU', '', '', 0, NULL, NULL),
	(245, 'WF', NULL, NULL, 'WLF', 876, 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 'Mata Utu', 274, 16025, 'OC', '.wf', 'XPF', '681', '#####', '^(986d{2})$', 'wls,fud,fr-WF', '', '', 0, NULL, NULL),
	(246, 'WS', NULL, NULL, 'WSM', 882, 'WS', 'Samoa', 'Samoa', 'Apia', 2944, 192001, 'OC', '.ws', 'WST', '685', '', '', 'sm,en-WS', '', '', 0, NULL, NULL),
	(247, 'XK', NULL, NULL, 'XKX', 0, 'KV', 'Kosovo', 'Kosovo', 'Pristina', 10908, 1800000, 'EU', '', 'EUR', '', '', '', 'sq,sr', 'RS,AL,MK,ME', '', 0, NULL, NULL),
	(248, 'YE', NULL, NULL, 'YEM', 887, 'YM', 'al-Yaman', 'Yemen', 'Sanaa', 527970, 23495361, 'AS', '.ye', 'YER', '967', '', '', 'ar-YE', 'SA,OM', '', 0, NULL, NULL),
	(249, 'YT', NULL, NULL, 'MYT', 175, 'MF', 'Mayotte', 'Mayotte', 'Mamoudzou', 374, 159042, 'AF', '.yt', 'EUR', '262', '#####', '^(d{5})$', 'fr-YT', '', '', 0, NULL, NULL),
	(250, 'ZA', NULL, NULL, 'ZAF', 710, 'SF', 'South Africa', 'South Africa', 'Pretoria', 1219912, 49000000, 'AF', '.za', 'ZAR', '27', '####', '^(d{4})$', 'zu,xh,af,nso,en-ZA,tn,st,ts,ss,ve,nr', 'ZW,SZ,MZ,BW,NA,LS', '', 0, NULL, NULL),
	(251, 'ZM', NULL, NULL, 'ZMB', 894, 'ZA', 'Zambia', 'Zambia', 'Lusaka', 752614, 13460305, 'AF', '.zm', 'ZMW', '260', '#####', '^(d{5})$', 'en-ZM,bem,loz,lun,lue,ny,toi', 'ZW,TZ,MZ,CD,NA,MW,AO', '', 0, NULL, NULL),
	(252, 'ZW', NULL, NULL, 'ZWE', 716, 'ZI', 'Zimbabwe', 'Zimbabwe', 'Harare', 390580, 11651858, 'AF', '.zw', 'ZWL', '263', '', '', 'en-ZW,sn,nr,nd', 'ZA,MZ,BW,ZM', '', 0, NULL, NULL);
/*!40000 ALTER TABLE `blcountries` ENABLE KEYS */;

-- Dumping structure for table boladas.blcurrencies
CREATE TABLE IF NOT EXISTS `blcurrencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `html_entity` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'From Github : An array of currency symbols as HTML entities',
  `font_arial` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `font_code2000` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unicode_decimal` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unicode_hex` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `in_left` tinyint(1) DEFAULT 0,
  `decimal_places` int(10) unsigned DEFAULT 2 COMMENT 'Currency Decimal Places - ISO 4217',
  `decimal_separator` varchar(10) COLLATE utf8_unicode_ci DEFAULT '.',
  `thousand_separator` varchar(10) COLLATE utf8_unicode_ci DEFAULT ',',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=171 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blcurrencies: 170 rows
/*!40000 ALTER TABLE `blcurrencies` DISABLE KEYS */;
INSERT INTO `blcurrencies` (`id`, `code`, `name`, `html_entity`, `font_arial`, `font_code2000`, `unicode_decimal`, `unicode_hex`, `in_left`, `decimal_places`, `decimal_separator`, `thousand_separator`, `created_at`, `updated_at`) VALUES
	(1, 'AED', 'United Arab Emirates Dirham', '&#1583;.&#1573;', 'د.إ', 'د.إ', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(2, 'AFN', 'Afghanistan Afghani', '&#65;&#102;', '؋', '؋', '1547', '60b', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(3, 'ALL', 'Albania Lek', '&#76;&#101;&#107;', 'Lek', 'Lek', '76, 1', '4c, 6', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(4, 'AMD', 'Armenia Dram', '', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(5, 'ANG', 'Netherlands Antilles Guilder', '&#402;', 'ƒ', 'ƒ', '402', '192', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(6, 'AOA', 'Angola Kwanza', '&#75;&#122;', 'Kz', 'Kz', NULL, NULL, 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(7, 'ARS', 'Argentina Peso', '&#36;', '$', '$', '36', '24', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(8, 'AUD', 'Australia Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(9, 'AWG', 'Aruba Guilder', '&#402;', 'ƒ', 'ƒ', '402', '192', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(10, 'AZN', 'Azerbaijan New Manat', '&#1084;&#1072;&#1085;', 'ман', 'ман', '1084,', '43c, ', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(11, 'BAM', 'Bosnia and Herzegovina Convertible Marka', '&#75;&#77;', 'KM', 'KM', '75, 7', '4b, 4', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(12, 'BBD', 'Barbados Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(13, 'BDT', 'Bangladesh Taka', '&#2547;', '৳', '৳', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(14, 'BGN', 'Bulgaria Lev', '&#1083;&#1074;', 'лв', 'лв', '1083,', '43b, ', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(15, 'BHD', 'Bahrain Dinar', '.&#1583;.&#1576;', NULL, NULL, NULL, NULL, 0, 3, '.', ',', NULL, '2016-04-03 18:05:01'),
	(16, 'BIF', 'Burundi Franc', '&#70;&#66;&#117;', 'FBu', 'FBu', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(17, 'BMD', 'Bermuda Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(18, 'BND', 'Brunei Darussalam Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(19, 'BOB', 'Bolivia Boliviano', '&#36;&#98;', '$b', '$b', '36, 9', '24, 6', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(20, 'BRL', 'Brazil Real', '&#82;&#36;', 'R$', 'R$', '82, 3', '52, 2', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(21, 'BSD', 'Bahamas Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(22, 'BTN', 'Bhutan Ngultrum', '&#78;&#117;&#46;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(23, 'BWP', 'Botswana Pula', '&#80;', 'P', 'P', '80', '50', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(24, 'BYR', 'Belarus Ruble', '&#112;&#46;', 'p.', 'p.', '112, ', '70, 2', 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(25, 'BZD', 'Belize Dollar', '&#66;&#90;&#36;', 'BZ$', 'BZ$', '66, 9', '42, 5', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(26, 'CAD', 'Canada Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(27, 'CDF', 'Congo/Kinshasa Franc', '&#70;&#67;', 'Fr', 'Fr', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(28, 'CHF', 'Switzerland Franc', '', 'Fr', 'Fr', '67, 7', '43, 4', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(29, 'CLP', 'Chile Peso', '&#36;', '$', '$', '36', '24', 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(30, 'CNY', 'China Yuan Renminbi', '&#165;', '¥', '¥', '165', 'a5', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(31, 'COP', 'Colombia Peso', '&#36;', '$', '$', '36', '24', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(32, 'CRC', 'Costa Rica Colon', '&#8353;', '₡', '₡', '8353', '20a1', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(33, 'CUC', 'Cuba Convertible Peso', NULL, NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
	(34, 'CUP', 'Cuba Peso', '&#8396;', '₱', '₱', '8369', '20b1', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(35, 'CVE', 'Cape Verde Escudo', '&#x24;', '$', '$', NULL, NULL, 1, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(36, 'CZK', 'Czech Republic Koruna', '&#75;&#269;', 'Kč', 'Kč', '75, 2', '4b, 1', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(37, 'DJF', 'Djibouti Franc', '&#70;&#100;&#106;', 'Fr', 'Fr', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(38, 'DKK', 'Denmark Krone', '&#107;&#114;', 'kr', 'kr', '107, ', '6b, 7', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(39, 'DOP', 'Dominican Republic Peso', '&#82;&#68;&#36;', 'RD$', 'RD$', '82, 6', '52, 4', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(40, 'DZD', 'Algeria Dinar', '&#1583;&#1580;', 'DA', 'DA', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(41, 'EEK', 'Estonia Kroon', NULL, 'kr', 'kr', '107, ', '6b, 7', 0, 2, '.', ',', NULL, NULL),
	(42, 'EGP', 'Egypt Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(43, 'ERN', 'Eritrea Nakfa', '&#x4E;&#x66;&#x6B;', 'Nfk', 'Nfk', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
	(44, 'ETB', 'Ethiopia Birr', '&#66;&#114;', 'Br', 'Br', NULL, NULL, 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(45, 'EUR', 'Euro Member Countries', '€', '€', '€', '8364', '20ac', 0, 2, ',', ' ', NULL, '2017-02-10 11:57:28'),
	(46, 'FJD', 'Fiji Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(47, 'FKP', 'Falkland Islands (Malvinas) Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(48, 'GBP', 'United Kingdom Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(49, 'GEL', 'Georgia Lari', '&#4314;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(50, 'GGP', 'Guernsey Pound', NULL, '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, NULL),
	(51, 'GHC', 'Ghana Cedi', '&#x47;&#x48;&#xA2;', 'GH¢', 'GH¢', '162', 'a2', 1, 2, '.', ',', NULL, NULL),
	(52, 'GHS', 'Ghana Cedi', '&#x47;&#x48;&#xA2;', 'GH¢', 'GH¢', NULL, NULL, 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(53, 'GIP', 'Gibraltar Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(54, 'GMD', 'Gambia Dalasi', '&#68;', 'D', 'D', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(55, 'GNF', 'Guinea Franc', '&#70;&#71;', 'Fr', 'Fr', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(56, 'GTQ', 'Guatemala Quetzal', '&#81;', 'Q', 'Q', '81', '51', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(57, 'GYD', 'Guyana Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(58, 'HKD', 'Hong Kong Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(59, 'HNL', 'Honduras Lempira', '&#76;', 'L', 'L', '76', '4c', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(60, 'HRK', 'Croatia Kuna', '&#107;&#110;', 'kn', 'kn', '107, ', '6b, 6', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(61, 'HTG', 'Haiti Gourde', '&#71;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(62, 'HUF', 'Hungary Forint', '&#70;&#116;', 'Ft', 'Ft', '70, 1', '46, 7', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(63, 'IDR', 'Indonesia Rupiah', '&#82;&#112;', 'Rp', 'Rp', '82, 1', '52, 7', 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(64, 'ILS', 'Israel Shekel', '&#8362;', '₪', '₪', '8362', '20aa', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(65, 'IMP', 'Isle of Man Pound', NULL, '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, NULL),
	(66, 'INR', 'India Rupee', '&#8377;', '₨', '₨', '', '', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(67, 'IQD', 'Iraq Dinar', '&#1593;.&#1583;', 'د.ع;', 'د.ع;', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(68, 'IRR', 'Iran Rial', '&#65020;', '﷼', '﷼', '65020', 'fdfc', 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(69, 'ISK', 'Iceland Krona', '&#107;&#114;', 'kr', 'kr', '107, ', '6b, 7', 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(70, 'JEP', 'Jersey Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(71, 'JMD', 'Jamaica Dollar', '&#74;&#36;', 'J$', 'J$', '74, 3', '4a, 2', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(72, 'JOD', 'Jordan Dinar', '&#74;&#68;', NULL, NULL, NULL, NULL, 0, 3, '.', ',', NULL, '2016-04-03 18:05:01'),
	(73, 'JPY', 'Japan Yen', '&#165;', '¥', '¥', '165', 'a5', 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(74, 'KES', 'Kenya Shilling', '&#x4B;&#x53;&#x68;', 'KSh', 'KSh', NULL, NULL, 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(75, 'KGS', 'Kyrgyzstan Som', '&#1083;&#1074;', 'лв', 'лв', '1083,', '43b, ', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(76, 'KHR', 'Cambodia Riel', '&#6107;', '៛', '៛', '6107', '17db', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(77, 'KMF', 'Comoros Franc', '&#67;&#70;', 'Fr', 'Fr', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(78, 'KPW', 'Korea (North) Won', '&#8361;', '₩', '₩', '8361', '20a9', 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(79, 'KRW', 'Korea (South) Won', '&#8361;', '₩', '₩', '8361', '20a9', 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(80, 'KWD', 'Kuwait Dinar', '&#1583;.&#1603;', 'د.ك', 'د.ك', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(81, 'KYD', 'Cayman Islands Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(82, 'KZT', 'Kazakhstan Tenge', '&#1083;&#1074;', 'лв', 'лв', '1083,', '43b, ', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(83, 'LAK', 'Laos Kip', '&#8365;', '₭', '₭', '8365', '20ad', 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(84, 'LBP', 'Lebanon Pound', '&#163;', '£', '£', '163', 'a3', 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(85, 'LKR', 'Sri Lanka Rupee', '&#8360;', '₨', '₨', '8360', '20a8', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(86, 'LRD', 'Liberia Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(87, 'LSL', 'Lesotho Loti', '&#76;', 'M', 'M', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(88, 'LTL', 'Lithuania Litas', '&#76;&#116;', 'Lt', 'Lt', '76, 1', '4c, 7', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(89, 'LVL', 'Latvia Lat', '&#76;&#115;', 'Ls', 'Ls', '76, 1', '4c, 7', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(90, 'LYD', 'Libya Dinar', '&#1604;.&#1583;', 'DL', 'DL', NULL, NULL, 0, 3, '.', ',', NULL, '2016-04-03 18:05:01'),
	(91, 'MAD', 'Morocco Dirham', '&#1583;.&#1605;.', 'Dhs', 'Dhs', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(92, 'MDL', 'Moldova Leu', '&#76;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(93, 'MGA', 'Madagascar Ariary', '&#65;&#114;', 'Ar', 'Ar', NULL, NULL, 0, 5, '.', ',', NULL, '2016-04-03 18:05:01'),
	(94, 'MKD', 'Macedonia Denar', '&#1076;&#1077;&#1085;', 'ден', 'ден', '1076,', '434, ', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(95, 'MMK', 'Myanmar (Burma) Kyat', '&#75;', NULL, NULL, NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(96, 'MNT', 'Mongolia Tughrik', '&#8366;', '₮', '₮', '8366', '20ae', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(97, 'MOP', 'Macau Pataca', '&#77;&#79;&#80;&#36;', NULL, NULL, NULL, NULL, 0, 1, '.', ',', NULL, '2016-04-03 18:05:01'),
	(98, 'MRO', 'Mauritania Ouguiya', '&#85;&#77;', 'UM', 'UM', NULL, NULL, 0, 5, '.', ',', NULL, '2016-04-03 18:05:01'),
	(99, 'MUR', 'Mauritius Rupee', '&#8360;', '₨', '₨', '8360', '20a8', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(100, 'MVR', 'Maldives (Maldive Islands) Rufiyaa', '.&#1923;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(101, 'MWK', 'Malawi Kwacha', '&#77;&#75;', 'MK', 'MK', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(102, 'MXN', 'Mexico Peso', '&#36;', '$', '$', '36', '24', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(103, 'MYR', 'Malaysia Ringgit', '&#82;&#77;', 'RM', 'RM', '82, 7', '52, 4', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(104, 'MZN', 'Mozambique Metical', '&#77;&#84;', 'MT', 'MT', '77, 8', '4d, 5', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(105, 'NAD', 'Namibia Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(106, 'NGN', 'Nigeria Naira', '&#8358;', '₦', '₦', '8358', '20a6', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(107, 'NIO', 'Nicaragua Cordoba', '&#67;&#36;', 'C$', 'C$', '67, 3', '43, 2', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(108, 'NOK', 'Norway Krone', '&#107;&#114;', 'kr', 'kr', '107, ', '6b, 7', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(109, 'NPR', 'Nepal Rupee', '&#8360;', '₨', '₨', '8360', '20a8', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(110, 'NZD', 'New Zealand Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(111, 'OMR', 'Oman Rial', '&#65020;', '﷼', '﷼', '65020', 'fdfc', 0, 3, '.', ',', NULL, '2016-04-03 18:05:01'),
	(112, 'PAB', 'Panama Balboa', '&#66;&#47;&#46;', 'B/.', 'B/.', '66, 4', '42, 2', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(113, 'PEN', 'Peru Nuevo Sol', '&#83;&#47;&#46;', 'S/.', 'S/.', '83, 4', '53, 2', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(114, 'PGK', 'Papua New Guinea Kina', '&#75;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(115, 'PHP', 'Philippines Peso', '&#8369;', '₱', '₱', '8369', '20b1', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(116, 'PKR', 'Pakistan Rupee', '&#8360;', '₨', '₨', '8360', '20a8', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(117, 'PLN', 'Poland Zloty', '&#122;&#322;', 'zł', 'zł', '122, ', '7a, 1', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(118, 'PYG', 'Paraguay Guarani', '&#71;&#115;', 'Gs', 'Gs', '71, 1', '47, 7', 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(119, 'QAR', 'Qatar Riyal', '&#65020;', '﷼', '﷼', '65020', 'fdfc', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(120, 'RON', 'Romania New Leu', '&#108;&#101;&#105;', 'lei', 'lei', '108, ', '6c, 6', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(121, 'RSD', 'Serbia Dinar', '&#1044;&#1080;&#1085;&#46;', 'Дин.', 'Дин.', '1044,', '414, ', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(122, 'RUB', 'Russia Ruble', '&#1088;&#1091;&#1073;', 'руб', 'руб', '1088,', '440, ', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(123, 'RWF', 'Rwanda Franc', '&#1585;.&#1587;', 'FRw', 'FRw', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(124, 'SAR', 'Saudi Arabia Riyal', '&#65020;', '﷼', '﷼', '65020', 'fdfc', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(125, 'SBD', 'Solomon Islands Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(126, 'SCR', 'Seychelles Rupee', '&#8360;', '₨', '₨', '8360', '20a8', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(127, 'SDG', 'Sudan Pound', '&#163;', 'DS', 'DS', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(128, 'SEK', 'Sweden Krona', '&#107;&#114;', 'kr', 'kr', '107, ', '6b, 7', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(129, 'SGD', 'Singapore Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(130, 'SHP', 'Saint Helena Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(131, 'SLL', 'Sierra Leone Leone', '&#76;&#101;', 'Le', 'Le', NULL, NULL, 1, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(132, 'SOS', 'Somalia Shilling', '&#83;', 'S', 'S', '83', '53', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(133, 'SPL', 'Seborga Luigino', NULL, NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
	(134, 'SRD', 'Suriname Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(135, 'SSP', 'South Sudanese Pound', '&#xA3;', '£', '£', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
	(136, 'STD', 'São Tomé and Príncipe Dobra', '&#68;&#98;', 'Db', 'Db', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(137, 'SVC', 'El Salvador Colon', '&#36;', '$', '$', '36', '24', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(138, 'SYP', 'Syria Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(139, 'SZL', 'Swaziland Lilangeni', '&#76;', 'E', 'E', NULL, NULL, 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(140, 'THB', 'Thailand Baht', '&#3647;', '฿', '฿', '3647', 'e3f', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(141, 'TJS', 'Tajikistan Somoni', '&#84;&#74;&#83;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(142, 'TMT', 'Turkmenistan Manat', '&#109;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(143, 'TND', 'Tunisia Dinar', '&#1583;.&#1578;', 'DT', 'DT', NULL, NULL, 1, 3, '.', ',', NULL, '2016-04-03 18:05:01'),
	(144, 'TOP', 'Tonga Pa\'anga', '&#84;&#36;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(145, 'TRL', 'Turkey Lira', NULL, '₤', '₤', '8356', '20a4', 1, 2, '.', ',', NULL, NULL),
	(146, 'TRY', 'Turkey Lira', '&#x20BA;', '₺', '₺', '', '', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(147, 'TTD', 'Trinidad and Tobago Dollar', '&#36;', 'TT$', 'TT$', '84, 8', '54, 5', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(148, 'TVD', 'Tuvalu Dollar', NULL, '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
	(149, 'TWD', 'Taiwan New Dollar', '&#78;&#84;&#36;', 'NT$', 'NT$', '78, 8', '4e, 5', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(150, 'TZS', 'Tanzania Shilling', '&#x54;&#x53;&#x68;', 'TSh', 'TSh', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(151, 'UAH', 'Ukraine Hryvnia', '&#8372;', '₴', '₴', '8372', '20b4', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(152, 'UGX', 'Uganda Shilling', '&#85;&#83;&#104;', 'USh', 'USh', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(153, 'USD', 'United States Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(154, 'UYU', 'Uruguay Peso', '&#36;&#85;', '$U', '$U', '36, 8', '24, 5', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(155, 'UZS', 'Uzbekistan Som', '&#1083;&#1074;', 'лв', 'лв', '1083,', '43b, ', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(156, 'VEF', 'Venezuela Bolivar', '&#66;&#115;', 'Bs', 'Bs', '66, 1', '42, 7', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(157, 'VND', 'Viet Nam Dong', '&#8363;', '₫', '₫', '8363', '20ab', 1, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(158, 'VUV', 'Vanuatu Vatu', '&#86;&#84;', NULL, NULL, NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(159, 'WST', 'Samoa Tala', '&#87;&#83;&#36;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(160, 'XAF', 'Communauté Financière Africaine (BEAC) CFA Franc B', '&#70;&#67;&#70;&#65;', 'F', 'F', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(161, 'XCD', 'East Caribbean Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(162, 'XDR', 'International Monetary Fund (IMF) Special Drawing ', '', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(163, 'XOF', 'Communauté Financière Africaine (BCEAO) Franc', '&#70;&#67;&#70;&#65;', 'F', 'F', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(164, 'XPF', 'Comptoirs Français du Pacifique (CFP) Franc', '&#70;', 'F', 'F', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 18:05:01'),
	(165, 'YER', 'Yemen Rial', '&#65020;', '﷼', '﷼', '65020', 'fdfc', 0, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(166, 'ZAR', 'South Africa Rand', '&#82;', 'R', 'R', '82', '52', 1, 2, '.', ',', NULL, '2016-04-03 18:05:01'),
	(167, 'ZMW', 'Zambia Kwacha', NULL, 'ZK', 'ZK', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
	(168, 'ZWD', 'Zimbabwe Dollar', NULL, 'Z$', 'Z$', '90, 3', '5a, 2', 1, 2, '.', ',', NULL, NULL),
	(169, 'ZWL', 'Zimbabwe Dollar', NULL, 'Z$', 'Z$', '90, 3', '5a, 2', 1, 2, '.', ',', NULL, NULL),
	(170, 'XBT', 'Bitcoin', '฿', '฿', '฿', NULL, NULL, 1, 2, '.', ',', NULL, NULL);
/*!40000 ALTER TABLE `blcurrencies` ENABLE KEYS */;

-- Dumping structure for table boladas.blcustom_data
CREATE TABLE IF NOT EXISTS `blcustom_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `field_id` int(11) DEFAULT NULL,
  `field_type` varchar(20) DEFAULT NULL,
  `field_data` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table boladas.blcustom_data: 0 rows
/*!40000 ALTER TABLE `blcustom_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `blcustom_data` ENABLE KEYS */;

-- Dumping structure for table boladas.blcustom_fields
CREATE TABLE IF NOT EXISTS `blcustom_fields` (
  `custom_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `custom_order` int(10) DEFAULT NULL,
  `translation_lang` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `translation_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_anycat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_catid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_subcatid` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_type` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_options` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_required` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `custom_name` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `custom_default` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_min` int(11) unsigned NOT NULL DEFAULT 0,
  `custom_max` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`custom_id`),
  KEY `custom_order` (`custom_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blcustom_fields: 0 rows
/*!40000 ALTER TABLE `blcustom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `blcustom_fields` ENABLE KEYS */;

-- Dumping structure for table boladas.blcustom_options
CREATE TABLE IF NOT EXISTS `blcustom_options` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table boladas.blcustom_options: 0 rows
/*!40000 ALTER TABLE `blcustom_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `blcustom_options` ENABLE KEYS */;

-- Dumping structure for table boladas.blemailq
CREATE TABLE IF NOT EXISTS `blemailq` (
  `q_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `toname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blemailq: 0 rows
/*!40000 ALTER TABLE `blemailq` DISABLE KEYS */;
/*!40000 ALTER TABLE `blemailq` ENABLE KEYS */;

-- Dumping structure for table boladas.blfaq_entries
CREATE TABLE IF NOT EXISTS `blfaq_entries` (
  `faq_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `translation_lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `translation_of` int(10) unsigned DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `faq_pid` smallint(4) NOT NULL DEFAULT 0,
  `faq_weight` mediumint(6) NOT NULL DEFAULT 0,
  `faq_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faq_content` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`faq_id`),
  KEY `translation_lang` (`translation_lang`,`translation_of`,`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blfaq_entries: 23 rows
/*!40000 ALTER TABLE `blfaq_entries` DISABLE KEYS */;
INSERT INTO `blfaq_entries` (`faq_id`, `translation_lang`, `translation_of`, `parent_id`, `faq_pid`, `faq_weight`, `faq_title`, `faq_content`, `active`) VALUES
	(2, NULL, NULL, NULL, 2, 0, 'What is Quickad Classified?', 'Quickad Classified Ads Php Script is Premium Classified Php Script with fully responsive Material design. Built to be beautiful, fast and powerful. One click setup User can easily setup this theme and easy to use and customized.\n\n<h3>Features</h3>\n<ul>\n<li>Custom Fields</li>\n<li>Facebook Login</li>\n<li>Google+ Login</li>\n<li>2 Home layout</li>\n<li>Multi Theme Layout</li>\n<li>Material Design</li>\n<li>Fully Responsive</li>\n<li>Unlimited Colors</li>\n<li>Premium Submission</li>\n<li>Custom Widgets</li>\n<li>Paid Listing</li>\n<li>Featured &amp; Urgent Listing</li>\n<li>Grid View</li>\n<li>Listing View</li>\n<li>PayPal Integrated</li>\n<li>SEO optimized</li>\n<li>Google maps integrated</li>\n<li>Unlimited Colors Google Map</li>\n<li>Geo location support</li>\n<li>Bootstrap 3x</li>\n<li>Cross Browser support</li>\n<li>Email Notifications</li>\n<li>Well commented code.</li>\n<li>and much more.</li>\n</ul>', 1),
	(9, NULL, NULL, NULL, 0, 0, 'How Long It Take To Register?', 'Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ant ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim.', 1),
	(10, NULL, NULL, NULL, 0, 0, 'How Can I Download Full Event Schedule?', 'Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ant ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim.', 1),
	(11, 'en', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(12, 'fr', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(13, 'sv', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(14, 'it', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(15, 'gr', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(16, 'es', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(17, 'pl', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(18, 'ja', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(19, 'zh', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(20, 'ar', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(21, 'he', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(22, 'ru', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(23, 'bn', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(24, 'hi', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(25, 'bg', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(26, 'ro', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(27, 'th', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(28, 'tr', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(29, 'ur', 11, 11, 0, 0, 'd', '<p>sa</p>', 1),
	(30, 'vi', 11, 11, 0, 0, 'd', '<p>sa</p>', 1);
/*!40000 ALTER TABLE `blfaq_entries` ENABLE KEYS */;

-- Dumping structure for table boladas.blfavads
CREATE TABLE IF NOT EXISTS `blfavads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table boladas.blfavads: 0 rows
/*!40000 ALTER TABLE `blfavads` DISABLE KEYS */;
/*!40000 ALTER TABLE `blfavads` ENABLE KEYS */;

-- Dumping structure for table boladas.blfirebase_device_token
CREATE TABLE IF NOT EXISTS `blfirebase_device_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `device_id` varchar(55) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `token` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table boladas.blfirebase_device_token: 0 rows
/*!40000 ALTER TABLE `blfirebase_device_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `blfirebase_device_token` ENABLE KEYS */;

-- Dumping structure for table boladas.bllanguages
CREATE TABLE IF NOT EXISTS `bllanguages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direction` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.bllanguages: 20 rows
/*!40000 ALTER TABLE `bllanguages` DISABLE KEYS */;
INSERT INTO `bllanguages` (`id`, `code`, `direction`, `name`, `file_name`, `active`, `default`) VALUES
	(1, 'en', 'ltr', 'English', 'english', 1, 1),
	(2, 'fr', 'ltr', 'French', 'french', 1, 0),
	(3, 'sv', 'ltr', 'Swedish', 'swedish', 1, 0),
	(4, 'it', 'ltr', 'Italian', 'italian', 1, 0),
	(5, 'gr', 'ltr', 'German', 'german', 1, 0),
	(6, 'es', 'ltr', 'Spanish', 'spanish', 1, 0),
	(7, 'pl', 'ltr', 'Polish', 'polish', 1, 0),
	(8, 'ja', 'ltr', 'Japanese', 'japanese', 1, 0),
	(9, 'zh', 'ltr', 'Chinese', 'chinese', 1, 0),
	(10, 'ar', 'rtl', 'Arabic', 'arabic', 1, 0),
	(11, 'he', 'rtl', 'Hebrew', 'hebrew', 1, 0),
	(12, 'ru', 'ltr', 'Russian', 'russian', 1, 0),
	(13, 'bn', 'ltr', 'Bangali', 'bangali', 1, 0),
	(14, 'hi', 'ltr', 'Hindi', 'hindi', 1, 0),
	(15, 'bg', 'ltr', 'Bulgarian', 'bulgarian', 1, 0),
	(16, 'ro', 'ltr', 'Romanian', 'romanian', 1, 0),
	(17, 'th', 'ltr', 'Thai', 'thai', 1, 0),
	(18, 'tr', 'ltr', 'Turkish', 'turkish', 1, 0),
	(19, 'ur', 'rtl', 'Urdu', 'urdu', 1, 0),
	(20, 'vi', 'ltr', 'Vietnamese', 'vietnamese', 1, 0);
/*!40000 ALTER TABLE `bllanguages` ENABLE KEYS */;

-- Dumping structure for table boladas.bllogin_attempts
CREATE TABLE IF NOT EXISTS `bllogin_attempts` (
  `user_id` int(11) DEFAULT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table boladas.bllogin_attempts: 3 rows
/*!40000 ALTER TABLE `bllogin_attempts` DISABLE KEYS */;
INSERT INTO `bllogin_attempts` (`user_id`, `time`) VALUES
	(3, '1601269286'),
	(3, '1601269301'),
	(3, '1601269307'),
	(7, '1602362308'),
	(7, '1602362325'),
	(3, '1602600286');
/*!40000 ALTER TABLE `bllogin_attempts` ENABLE KEYS */;

-- Dumping structure for table boladas.bllogs
CREATE TABLE IF NOT EXISTS `bllogs` (
  `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `log_date` int(11) unsigned NOT NULL DEFAULT 0,
  `log_summary` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.bllogs: 60 rows
/*!40000 ALTER TABLE `bllogs` DISABLE KEYS */;
INSERT INTO `bllogs` (`log_id`, `log_date`, `log_summary`, `log_details`) VALUES
	(1, 1600714078, 'Cron Run', 'Ads closed: 0<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(2, 1600715575, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(3, 1600715933, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(4, 1600767923, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(5, 1600771223, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(6, 1600772994, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(7, 1600775959, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(8, 1600777149, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(9, 1600780921, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(10, 1600782091, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(11, 1600856899, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(12, 1600881692, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(13, 1600882477, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(14, 1600883698, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(15, 1600884285, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(16, 1600884618, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(17, 1601267471, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(18, 1601268306, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(19, 1601268771, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(20, 1601270513, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(21, 1601272298, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(22, 1601288004, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(23, 1601299590, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(24, 1601304388, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(25, 1601304706, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(26, 1601309354, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(27, 1601310209, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(28, 1601310534, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(29, 1601320727, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(30, 1601321328, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(31, 1601321967, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(32, 1601322602, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(33, 1601323098, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(34, 1601392624, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(35, 1601475755, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(36, 1601476562, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(37, 1601477043, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(38, 1601477354, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(39, 1601477875, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(40, 1601478278, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(41, 1601480239, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(42, 1601480547, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(43, 1601572318, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(44, 1601574941, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(45, 1601749884, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(46, 1601750645, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(47, 1601750948, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(48, 1601751819, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(49, 1601754504, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(50, 1601803121, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(51, 1601803995, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(52, 1601806678, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(53, 1601807035, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(54, 1601808826, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(55, 1601831530, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(56, 1601831831, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(57, 1601832385, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(58, 1601832702, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(59, 1601878450, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(60, 1602269080, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(61, 1602361219, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(62, 1602361842, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(63, 1602362283, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(64, 1602598117, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 2<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(65, 1602601025, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(66, 1602603778, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(67, 1602606550, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(68, 1602609900, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
	(69, 1602671798, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds');
/*!40000 ALTER TABLE `bllogs` ENABLE KEYS */;

-- Dumping structure for table boladas.blmessages
CREATE TABLE IF NOT EXISTS `blmessages` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` varchar(40) DEFAULT NULL,
  `to_id` varchar(50) DEFAULT NULL,
  `from_uname` varchar(225) DEFAULT NULL,
  `to_uname` varchar(255) DEFAULT NULL,
  `message_content` text CHARACTER SET utf8 DEFAULT NULL,
  `message_date` datetime DEFAULT NULL,
  `recd` tinyint(1) NOT NULL DEFAULT 0,
  `seen` enum('0','1') NOT NULL DEFAULT '0',
  `message_type` varchar(255) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table boladas.blmessages: 0 rows
/*!40000 ALTER TABLE `blmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `blmessages` ENABLE KEYS */;

-- Dumping structure for table boladas.blnotification
CREATE TABLE IF NOT EXISTS `blnotification` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `cat_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blnotification: 0 rows
/*!40000 ALTER TABLE `blnotification` DISABLE KEYS */;
/*!40000 ALTER TABLE `blnotification` ENABLE KEYS */;

-- Dumping structure for table boladas.bloptions
CREATE TABLE IF NOT EXISTS `bloptions` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table boladas.bloptions: 134 rows
/*!40000 ALTER TABLE `bloptions` DISABLE KEYS */;
INSERT INTO `bloptions` (`option_id`, `option_name`, `option_value`) VALUES
	(1, 'site_logo', 'material-theme_logo.png'),
	(2, 'site_title', 'Boladas'),
	(3, 'meta_keywords', ''),
	(4, 'meta_description', ''),
	(5, 'admin_email', 'admin@gmail.com'),
	(6, 'tpl_name', 'material-theme'),
	(7, 'country_type', 'single'),
	(8, 'timezone', 'Africa/Maputo'),
	(9, 'lang', 'portuguese'),
	(10, 'currency_sign', '&#77;&#84;'),
	(11, 'currency_code', 'MZN'),
	(12, 'currency_pos', '0'),
	(13, 'featured_fee', '10'),
	(14, 'urgent_fee', '10'),
	(15, 'highlight_fee', '10'),
	(16, 'home_page', 'home-image'),
	(17, 'home_map_latitude', '28.6139391'),
	(18, 'home_map_longitude', '77.20902120000005'),
	(19, 'home_map_zoom', '4'),
	(20, 'map_color', '#8080ff'),
	(21, 'theme_color', '#01796f'),
	(22, 'home_banner', 'bg.jpg'),
	(23, 'contact_address', 'Maputo'),
	(24, 'contact_phone', '8228722585'),
	(25, 'contact_email', 'info@boladas.co.mz'),
	(26, 'contact_latitude', '40.7344458'),
	(27, 'contact_longitude', '-73.86704922'),
	(28, 'footer_text', 'Aenean sodales mattis augue. Morbi euismod, felis at volutpat volutpat, quam lectus porttitor massa, tur ex a neque pulvinar pulvinar.'),
	(29, 'copyright_text', '2020; Boladas'),
	(30, 'facebook_link', ''),
	(31, 'twitter_link', ''),
	(32, 'googleplus_link', ''),
	(33, 'youtube_link', ''),
	(34, 'facebook_app_id', ''),
	(35, 'facebook_app_secret', ''),
	(36, 'google_app_id', ''),
	(37, 'google_app_secret', ''),
	(38, 'recaptcha_mode', '0'),
	(39, 'recaptcha_public_key', ''),
	(40, 'recaptcha_private_key', ''),
	(41, 'gmap_api_key', ''),
	(42, 'email_type', 'mail'),
	(43, 'smtp_host', ''),
	(44, 'smtp_port', ''),
	(45, 'smtp_username', ''),
	(46, 'smtp_password', ''),
	(47, 'userlangsel', '0'),
	(48, 'userthemesel', '0'),
	(49, 'color_switcher', '0'),
	(50, 'admin_tpl_name', 'style-dark'),
	(51, 'admin_tpl_color', 'green'),
	(52, 'admin_menu_style', 'horizontal'),
	(53, 'transfer_filter', '1'),
	(54, 'mod_rewrite', '1'),
	(55, 'temp_php', '1'),
	(56, 'quickad_debug', '0'),
	(57, 'xml_latest', '1'),
	(58, 'xml_featured', '1'),
	(59, 'site_admin_logo', 'adminlogo.png'),
	(60, 'site_favicon', 'favicon.png'),
	(61, 'post_address_mode', '0'),
	(62, 'post_tags_mode', '0'),
	(63, 'post_auto_approve', '1'),
	(64, 'post_watermark', '0'),
	(65, 'max_image_upload', '4'),
	(66, 'post_premium_listing', '1'),
	(67, 'post_desc_editor', '1'),
	(68, 'email_template', '1'),
	(69, 'email_engine', 'phpmailer'),
	(70, 'smtp_secure', '0'),
	(71, 'smtp_auth', 'true'),
	(72, 'aws_host', ''),
	(73, 'aws_access_key', ''),
	(74, 'aws_secret_key', ''),
	(75, 'mandrill_user', ''),
	(76, 'mandrill_key', ''),
	(77, 'sendgrid_user', ''),
	(78, 'sendgrid_pass', ''),
	(79, 'email_sub_signup_confirm', '{SITE_TITLE} - {LANG_EMAILCONFIRM}'),
	(80, 'email_sub_forgot_pass', '{SITE_TITLE} - {LANG_FORGOTPASS}'),
	(81, 'email_sub_contact', '{LANG_CONTACT_SUBJECT_START} - {CONTACT_SUBJECT}'),
	(82, 'email_sub_feedback', '{FEEDBACK_SUBJECT}'),
	(83, 'email_sub_report', '{LANG_REPORTVIO}  - {SITE_TITLE}'),
	(84, 'email_sub_ad_approve', 'Congratulations! {SELLER_NAME} Your ad has been approved'),
	(85, 'email_sub_re_ad_approve', 'Congratulations! {SELLER_NAME} Your ad resubmission has been approved'),
	(86, 'email_sub_contact_seller', '{SITE_TITLE} - {NAME} {LANG_WANT-TO-CONTACT}'),
	(87, 'email_message_signup_confirm', 'Greetings from {SITE_TITLE} Team!\n\nThanks for registering with {SITE_TITLE}. We are thrilled to have you as a registered member and hope that you find our service beneficial.\n\nBefore we get you started please activate your account by clicking on the link below\n{CONFIRMATION_LINK}\n\n\nAfter your Account activation you will have  Post Ad, Chat with sellers and more. Once you have your Profile filled in you are ready to go.\n\nHave further questions? You can find answers in our FAQ Section at {LINK_CONTACT}\nSincerely,\n\n{SITE_TITLE} Team!\n{SITE_URL}'),
	(88, 'email_message_forgot_pass', '{LANG_TORESET}\n\n{FORGET_PASSWORD_LINK}\n\nHave further questions? You can find answers in our FAQ Section at {LINK_CONTACT}\nSincerely,\n\n{SITE_TITLE} Team!\n{SITE_URL}'),
	(89, 'email_message_contact', '{NAME} {LANG_WANT-TO-CONTACT} {SITE_TITLE}:\n\n{LANG_NAME}          : {NAME}\n{LANG_EMAIL}         : {EMAIL}\n\n{LANG_MESSAGE}:\n\n{MESSAGE}\n\n------------------------------------------\n\nThis message has been sent automatically by the {SITE_TITLE} system.\nIf you need to contact us, go to {LINK_CONTACT}'),
	(90, 'email_message_feedback', '{NAME} {LANG_SEND-FEEDBACK} {SITE_TITLE}:\n\n{LANG_NAME}          : {NAME}\n{LANG_EMAIL}         : {EMAIL}\n{LANG_PHONE}         : {PHONE}\n\n{LANG_MESSAGE}:\n\n{MESSAGE}\n\n------------------------------------------\n\nThis message has been sent automatically by the {SITE_TITLE} system.\nIf you need to contact us, go to {LINK_CONTACT}'),
	(91, 'email_message_report', '{LANG_FOLLOWING-SENT-AUTO}  {SITE_TITLE}:\n\n{LANG_NAME}: {NAME}\n{LANG_USERNAME}: {USERNAME}\n{LANG_EMAIL}: {EMAIL}\n\n{LANG_VIOLATION}: {VIOLATION}\n{LANG_VIOLAT0R}: {USERNAME2}\n{LANG_VIOLATION} URL: {URL}\n\n{DETAILS}'),
	(92, 'email_message_ad_approve', 'Congratulations! Your ad to {ADTITLE} on {SITE_TITLE} has been approved. You can view your item here:\n\n{ADLINK}\n\nThanks for your submission!\n\nRegards,\n{SITE_TITLE} Team\n\nQuestions? See our Knowledgebase and Support Center at {LINK_CONTACT}\n\n------------------------------------------\n\nThis message has been sent automatically by the {SITE_TITLE} system.\nIf you need to contact us, go to {LINK_CONTACT}'),
	(93, 'email_message_re_ad_approve', 'Congratulations! Your ad Re-Submission to {ADTITLE} on {SITE_TITLE} has been approved. You can view your item here:\n\n{ADLINK}\n\nThanks for your submission!\n\nRegards,\n{SITE_TITLE} Team\n\nQuestions? See our Knowledgebase and Support Center at {SITE_URL}contact.php\n\n------------------------------------------\n\nThis message has been sent automatically by the {SITE_TITLE} system.\nIf you need to contact us, go to {LINK_CONTACT}'),
	(94, 'email_message_contact_seller', '{SENDER_NAME} {LANG_WANT-TO-CONTACT}.\n\n{LANG_YOUR-AD}  : {ADTITLE}\n\n{LANG_NAME}     : {SENDER_NAME}\n{LANG_EMAIL}    : {SENDER_EMAIL}\n{LANG_PHONE}    : {SENDER_PHONE}\n{LANG_MESSAGE}  : {MESSAGE}\n\n------------------------------------------\n\nThis message has been sent automatically by the {SITE_TITLE} system.\nIf you need to contact us, go to {LINK_CONTACT}'),
	(95, 'email_message_post_notification', 'This message has been sent automatically by the {SITE_TITLE} system.\nIf you need to contact us, go to {LINK_CONTACT}\n-----------------------------------------\nThe following project was recently added to {SITE_TITLE} and fits under your expertise:\n\n{ADTITLE}\n{ADLINK}'),
	(96, 'email_sub_post_notification', '{SITE_TITLE} - {LANG_ADNOTICE}'),
	(97, 'email_sub_signup_details', '{SITE_TITLE} - {LANG_THANKSIGNUP}'),
	(98, 'email_message_signup_details', 'Dear Valued Thanks for creating an account {SITE_TITLE} ,\n\nYour username: {USERNAME}\nYour password: {PASSWORD}\n\n\nHave further questions? You can start chat with live support team.\nSincerely,\n\n{SITE_TITLE} Team!\n{SITE_URL}'),
	(99, 'contact_validation', '0'),
	(100, 'delete_expired', '0'),
	(101, 'validation_time', '0'),
	(102, 'cron_exec_time', '300'),
	(103, 'cron_time', '1602671798'),
	(104, 'external_code', ''),
	(105, 'blog_enable', '1'),
	(106, 'blog_banner', '1'),
	(107, 'show_blog_home', '1'),
	(108, 'blog_comment_enable', '1'),
	(109, 'blog_comment_approval', '2'),
	(110, 'blog_comment_user', '1'),
	(111, 'testimonials_enable', '1'),
	(112, 'show_testimonials_blog', '1'),
	(113, 'show_testimonials_home', '1'),
	(114, 'non_active_msg', '0'),
	(115, 'non_active_allow', '1'),
	(116, 'cookie_link', ''),
	(117, 'cookie_consent', '1'),
	(118, 'socket_host', 'localhost'),
	(119, 'socket_port', '9300'),
	(120, 'listing_view', 'grid'),
	(121, 'map_type', 'openstreet'),
	(122, 'specific_country', 'MZ'),
	(123, 'site_url', 'http://localhost/dev/CVS/'),
	(124, 'location_track_icon', '1'),
	(125, 'auto_detect_location', 'no'),
	(126, 'live_location_api', 'ip_api'),
	(127, 'termcondition_link', ''),
	(128, 'privacy_link', ''),
	(129, 'quickad_secret_file', '5ad47xjyj0'),
	(130, 'purchase_key', 'nulled'),
	(131, 'post_without_login', '0'),
	(132, 'company_bank_info', ''),
	(133, 'stripe_publishable_key', ''),
	(134, 'stripe_secret_key', ''),
	(135, 'm_pesa_token', 'A6/IqcoMDlKBix1N0p9hPdsWboXfehQW8pGJ4F1TQIWtNbqCybhgQ/vZozayodgz83eY/rQHhiJNS4sBQHGASSHqUVKI0TTqYazLHDblJFo+dMO8HOn1LoHEW0cioJktMSZYElQ75EtEAuXpsgmoB8niU/udTz9hCBPT9fQcindikoi0JxTFIB/l21HratfSzvS4f9LDJTHIscPX/S6WqQghWSihFHsmf7y4mI9jsw3uQ+oV6qyfvOIfSHq42tF/i38nM7OYESr97Nppv52MWnh6v1WOOk9OuUAwhGm9KF7CFXxuHdvx63Lxwwp6yHPNlJanAh8pMvFqI/G5H1qMATJ1gcwrMgmnx3L+0n+hG3vC27vLOQs7Z21EuWUt9iVhEP5vu/hdq/Oa6oHQM0IbkslAE1YZ2juj5pVXhL0whHwvzIY9Ift7OSFX7dfuYGeUu6fQRWH9g109l9V4cMOv5A+Osw9zF0Hc98N85C8Kt3+kDdfTtseWGWVWgUDFVLKSey/sEC3BQYDaECfMBckMwNMVVQGn3u76wl6eauKwlo4cmuGMB4kKnLEtAY4TbEf7YcT4YntCiqwOZG9PhkhrXyCPblGRuuwRK1JqClxX5JW+wm2FOEghgyFn78PWZQ4hiwYCoIyslS6UZWhpbZMHncl+dD8vcHtkdWTS/b4kpTQ=');
/*!40000 ALTER TABLE `bloptions` ENABLE KEYS */;

-- Dumping structure for table boladas.blpages
CREATE TABLE IF NOT EXISTS `blpages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `translation_lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `translation_of` int(10) unsigned DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translation_lang` (`translation_lang`),
  KEY `translation_of` (`translation_of`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blpages: 0 rows
/*!40000 ALTER TABLE `blpages` DISABLE KEYS */;
/*!40000 ALTER TABLE `blpages` ENABLE KEYS */;

-- Dumping structure for table boladas.blpayments
CREATE TABLE IF NOT EXISTS `blpayments` (
  `payment_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `payment_install` enum('0','1') NOT NULL DEFAULT '0',
  `payment_title` varchar(255) DEFAULT NULL,
  `payment_folder` varchar(30) DEFAULT NULL,
  `payment_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table boladas.blpayments: 5 rows
/*!40000 ALTER TABLE `blpayments` DISABLE KEYS */;
INSERT INTO `blpayments` (`payment_id`, `payment_install`, `payment_title`, `payment_folder`, `payment_desc`) VALUES
	(1, '0', 'Paypal', 'paypal', 'You will be redirected to paypal to complete payment.'),
	(2, '0', 'Credit & Debit Card', 'stripe', 'Make an instant deposit using online payment service Stripe. Pay with your debit or credit card.'),
	(3, '1', 'M-Pesa', 'wire_transfer', NULL),
	(4, '0', '2Checkout', '2checkout', NULL),
	(5, '0', 'Paystack', 'paystack', 'You will be redirected to Paystack to complete payment.');
/*!40000 ALTER TABLE `blpayments` ENABLE KEYS */;

-- Dumping structure for table boladas.blproduct
CREATE TABLE IF NOT EXISTS `blproduct` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `status` enum('pending','active','rejected','expire') NOT NULL DEFAULT 'pending',
  `user_id` int(20) DEFAULT NULL,
  `featured` enum('0','1') NOT NULL DEFAULT '0',
  `urgent` enum('0','1') NOT NULL DEFAULT '0',
  `highlight` enum('0','1') NOT NULL DEFAULT '0',
  `product_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `price` int(10) NOT NULL DEFAULT 0,
  `negotiable` enum('0','1') NOT NULL DEFAULT '0',
  `phone` varchar(50) DEFAULT NULL,
  `hide_phone` enum('0','1') DEFAULT NULL,
  `location` text DEFAULT NULL,
  `city` char(50) DEFAULT NULL,
  `state` char(50) DEFAULT NULL,
  `country` char(50) DEFAULT NULL,
  `latlong` varchar(255) DEFAULT NULL,
  `screen_shot` text DEFAULT NULL,
  `tag` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT 1,
  `custom_fields` longtext DEFAULT NULL,
  `custom_types` longtext DEFAULT NULL,
  `custom_values` longtext CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `expire_date` int(12) NOT NULL DEFAULT 0,
  `featured_exp_date` int(11) DEFAULT NULL,
  `urgent_exp_date` int(11) DEFAULT NULL,
  `highlight_exp_date` int(11) DEFAULT NULL,
  `contact_phone` enum('0','1') NOT NULL DEFAULT '0',
  `contact_email` enum('0','1') NOT NULL DEFAULT '0',
  `contact_chat` enum('0','1') NOT NULL DEFAULT '0',
  `admin_seen` enum('0','1') NOT NULL DEFAULT '0',
  `emailed` enum('0','1') NOT NULL DEFAULT '0',
  `hide` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table boladas.blproduct: 8 rows
/*!40000 ALTER TABLE `blproduct` DISABLE KEYS */;
INSERT INTO `blproduct` (`id`, `status`, `user_id`, `featured`, `urgent`, `highlight`, `product_name`, `slug`, `description`, `category`, `sub_category`, `price`, `negotiable`, `phone`, `hide_phone`, `location`, `city`, `state`, `country`, `latlong`, `screen_shot`, `tag`, `view`, `custom_fields`, `custom_types`, `custom_values`, `created_at`, `updated_at`, `expire_date`, `featured_exp_date`, `urgent_exp_date`, `highlight_exp_date`, `contact_phone`, `contact_email`, `contact_chat`, `admin_seen`, `emailed`, `hide`) VALUES
	(1, 'expire', 2, '1', '1', '1', 'Quickad Classified Ads Php Script CMS', 'quickad-classified-ads-php-script-cms-1', '<h2><span style=\\"color: rgb(51, 51, 51); font-size: 16px;\\">Quickad AdsÃ‚Â <a href=\\"https://codecanyon.net/item/quickad-classified-ads-php-script/19960675\\">Php Classified Script</a></span><span style=\\"color: rgb(51, 51, 51); font-size: 16px;\\">Â is Premium Classified Php Script with fully responsive Material & Classic design. Built to be beautiful, fast and powerful. One-click setup User can easily set up this theme and easy to use and customized.</span></h2><p><span style=\\"color: rgb(84, 84, 84); font-size: 16px;\\">With the help of ourÂ <a href=\\"https://codecanyon.net/item/quickad-classified-ads-php-script/19960675\\" target=\\"_blank\\">best classified script</a>Â &Â <a href=\\"https://codecanyon.net/item/quickad-classified-ads-php-script/19960675\\" target=\\"_blank\\">jobs script</a>, you will be also showcasingÂ <a href=\\"https://codecanyon.net/item/quickad-classified-ads-php-script/19960675\\" target=\\"_blank\\">geo classified ads cms</a>Â orÂ <a href=\\"https://codecanyon.net/item/quickad-classified-ads-php-script/19960675\\" target=\\"_blank\\">PHP classified ads scripts</a>Â easily. This premium classified script will help you use a classifiedÃ‚Â <a href=\\"https://codentheme.com/category/php-scripts-php-code/\\" target=\\"_blank\\">PHP script</a>to deliver the necessary output in a short span of time. You can create an online classified jobs portal withÃ‚Â <a href=\\"https://www.bylancer.com/\\" target=\\"_blank\\">Quickad jobs classified scripts</a>. End user canÃ‚Â <a href=\\"https://classified.bylancer.com/\\" target=\\"_blank\\">post free classifieds</a>Â or make an ad to premium with various premium features.</span></p><p><span style=\\"font-size: 13px; color: rgb(135, 135, 135);\\">PriceÂ <span style=\\"color: rgb(35, 207, 95);\\">$69.00Â </span></span><span style=\\"font-size: 13px; color: rgb(135, 135, 135);\\">Total Sales (650+)</span></p><p><a target=\\"_blank\\" href=\\"https://bylancer.com/products/demo/classified/\\">LIVE DEMO</a>Â <a href=\\"https://codecanyon.net/item/quickad-classified-ads-php-script/19960675\\">BUY NOW</a>Â <a href=\\"https://bylancer.com/products/demo/classified/documentation/index.html\\">DOCUMENTATION</a></p><p>------------------------------------------------------------------------------------</p><p><b>Our Portfolio</b></p><ol><li><a href=\\"https://codecanyon.net/item/quickad-classified-ads-php-script/19960675\\" target=\\"_blank\\">Quickad Classified PHP Script Ads CMS</a></li><li><a href=\\"https://codecanyon.net/item/quickad-classified-native-android-app/23956447\\" target=\\"_blank\\">Quickad - Classified Native Android App</a></li><li><a href=\\"https://codentheme.com/item/bookmepro-wordpress-appointment-booking-scheduling-plugin/\\" target=\\"_blank\\">Bookme Pro - WordPress Appointment Booking and Scheduling Software</a></li><li><a href=\\"https://codecanyon.net/item/bookme-wordpress-booking-plugin/20926116\\" target=\\"_blank\\">Bookme - WordPress Appointment Booking Scheduling Plugin</a></li><li><a href=\\"https://codecanyon.net/item/wchat-fully-responsive-phpajax-chat/18047319\\" target=\\"_blank\\">Wchat - Fully Responsive PHP AJAX Chat Script</a></li><li><a href=\\"https://codentheme.com/item/wchat-free-chat-html-template/\\" target=\\"_blank\\">Wchat - Free Chat HTML Template</a></li><li><a href=\\"https://codecanyon.net/item/facebook-style-php-ajax-chat-zechat/16491266\\" target=\\"_blank\\">Zechat - Facebook Style Php Ajax Chat</a></li><li><a href=\\"https://themeforest.net/item/eagle-material-design-admin-template/20829964\\" target=\\"_blank\\">Eagle - Material+ Bootstrap Admin Template</a></li><li><a href=\\"https://codentheme.com/item/noddy-bootstrap-4-admin-template/\\" target=\\"_blank\\">Noddy Bootstrap 4 Admin Template</a></li><li><a href=\\"https://codentheme.com/item/newsmania-wordpress-news-magazine-theme/?ref=bylancer\\" target=\\"_blank\\">The Magazine - Responsive News WordPress Theme</a></li><li><a href=\\"https://codentheme.com/item/fashiony-wordpress-blog-magazine-theme/\\" target=\\"_blank\\">Fashiony - WordPress Blog & Magazine Theme</a></li><li><a href=\\"https://codentheme.com/item/electron-wordpress-blog-magazine-theme/\\" target=\\"_blank\\">Electron - Minimal Personal Blog WordPress Theme</a></li><li><a href=\\"https://codentheme.com/item/creative-modern-blog-html-template-electron/\\" target=\\"_blank\\">Electron - Free Blog Bootstrap Html Website Template</a></li><li><a href=\\"https://codentheme.com/item/mega-gdpr-compliance-toolkit-for-wordpress/\\" target=\\"_blank\\">Mega GDPR Compliance toolkit for WordPress</a></li><li><a href=\\"https://codentheme.com/item/spider-ajax-php-50-form-with-jquery-validation/\\" target=\\"_blank\\">Spider - PHP Ajax 50+ Form With Jquery Validation</a></li><li><a href=\\"https://codentheme.com/item/appui-free-responsive-html-vuejs-angularjs-admin-dashboard/\\" target=\\"_blank\\">AppUI - Free Bootstrap HTML, Vuejs & angularjs Admin Dashboard Template</a></li><li><a href=\\"https://codentheme.com/best-wordpress-appointment-booking-and-scheduling-plugin-2019/\\" target=\\"_blank\\">Best WordPress Appointment Booking Plugin</a></li><li><a href=\\"https://codentheme.com/free-wordpress-themes/\\" target=\\"_blank\\">Free Wordpress themes</a></li></ol>', 7, 33, 69, '0', '9799901707', '0', 'delhi', '1269515', 'IN.24', 'IN', '28.617603494866284,77.20727920532227', '1566644186_prequickad.jpg', 'Best php scripts, open classifieds, best classified script, classified ads cms quickad, classified demo, quickad classified ads php script, PHP Classified Scripts, Classified Ads Scripts, job portal scripts, best classified w', 17, '', '', '', '2019-08-24 16:29:46', '2019-08-24 13:53:05', 1569236386, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(2, 'active', 3, '0', '0', '0', 'Toyotta Hiace Van', 'toyotta-hiace-van', '<p>Toyota Hiace Van&nbsp;</p><p>15 lugares</p><p>bom estado</p>', 1, 2, 50000, '0', '84822845', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1600883611_toyota.jpg', '', 4, NULL, NULL, NULL, '2020-09-23 19:54:02', '2020-09-23 19:54:02', 1603475642, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(3, 'active', 3, '0', '0', '0', 'Nissan Sierre', 'nissan-sierre', '<p>Nissan Sierre</p><p>4 Portas</p><p>Cabine</p>', 1, 2, 70000, '0', '846872773', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1600884379_nissan.jpg', '', 4, NULL, NULL, NULL, '2020-09-23 20:06:39', '2020-09-23 20:06:39', 1603476399, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(4, 'active', 3, '0', '0', '0', 'vending machine', 'vending-machine', '<p>vending machine<br></p>', 3, 12, 2000, '0', '84822845', '0', '', '1039854', 'MZ.04', 'MZ', '28.6139391,77.20902120000005', '1600884516_redboxhiringkioskambassadors1-851x452-2.png', '', 6, NULL, NULL, NULL, '2020-09-23 20:09:11', '2020-09-23 20:09:11', 1603476551, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(5, 'active', 3, '1', '1', '1', 'VEstido', 'vestido', '<p>Vestido</p>', 5, 48, 600, '0', '846872773', '0', '', '1039854', 'MZ.04', 'MZ', '28.6139391,77.20902120000005', '1601287391_1600715828img20200910120515110.jpg,1601287393_1600715828img20200910120515111.jpg', '', 14, NULL, NULL, NULL, '2020-09-28 12:03:32', '2020-09-28 12:03:32', 1603879412, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(6, 'active', 3, '1', '1', '1', 'Carro 4x4 Nissan', 'carro-4x4-nissan', '<p>Carro 4x4 Nissan<br></p><p>4portas</p><p>3.5</p>', 1, 2, 80000, '0', '822872285', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1601310050_nissan.jpg,1601310053_toyota.jpg', '', 52, NULL, NULL, NULL, '2020-09-28 18:23:16', '2020-09-28 18:23:16', 1603902196, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(7, 'active', 5, '0', '0', '0', 'Mota', 'mota', '<p>Mota para andar na cidade&nbsp;</p>', 1, 1, 35000, '0', '848451', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1601808707_mota.jpg', '', 9, NULL, NULL, NULL, '2020-10-04 12:52:17', '2020-10-04 12:52:17', 1604400737, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(8, 'active', 6, '0', '0', '0', 'Mota v4.5', 'mota-v4.5', '<p>Mota v4.5<br></p><p>Bom estado</p>', 1, 1, 20000, '0', '845544115', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1601879968_mota.jpg', '', 3, NULL, NULL, NULL, '2020-10-05 08:39:42', '2020-10-05 08:39:42', 1604471982, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(9, 'active', 3, '0', '0', '0', 'Motorila', 'motorila', '<p>assdsd</p>', 3, 10, 500, '0', '848898665', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602599281_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 16:28:35', '2020-10-13 16:28:35', 1605191315, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(10, 'active', 3, '0', '0', '0', 'dss', 'dss', '<p>wd</p>', 1, 2, 5345, '0', '844443947', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602599745_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 16:36:09', '2020-10-13 16:36:09', 1605191769, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(11, 'active', 3, '0', '0', '0', 'Maputo', 'maputo', '<p>fddsf</p>', 1, 1, 56, '0', '', '0', '', '1040938', 'MZ.02', 'MZ', '28.6139391,77.20902120000005', '1602600314_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 16:45:37', '2020-10-13 16:45:37', 1605192337, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(12, 'active', 3, '0', '0', '0', 'ABC', 'abc', '<p>afsafsf</p>', 1, 2, 500, '0', '', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602600964_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 16:56:32', '2020-10-13 16:56:32', 1605192992, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(13, 'active', 3, '0', '0', '0', 'Ultimad', 'ultimad', '<p>asdassda</p>', 1, 2, 1000, '0', '848602620', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602601189_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 17:00:54', '2020-10-13 17:00:54', 1605193254, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(14, 'active', 6, '0', '0', '0', 'Aleusaa', 'aleusaa', '<p>Manifesta</p>', 1, 2, 500, '0', '848602620', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602601460_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 17:04:40', '2020-10-13 17:04:40', 1605193480, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(15, 'active', 6, '0', '0', '0', 'ewrewr', 'ewrewr', '<p>ewrewqr</p>', 1, 2, 343, '0', '', '0', '', '1040938', 'MZ.02', 'MZ', '28.6139391,77.20902120000005', '1602605898_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 18:18:39', '2020-10-13 18:18:39', 1605197919, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(16, 'active', 6, '0', '0', '0', 'dsdsadsa', 'dsdsadsa', '<p>asdsadsad</p>', 1, 1, 345, '0', '', '0', '', '1039536', 'MZ.03', 'MZ', '28.6139391,77.20902120000005', '1602606569_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 18:29:41', '2020-10-13 18:29:41', 1605198581, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(17, 'active', 6, '0', '0', '0', 'scsfsafsf', 'scsfsafsf', '<p>sfsafs</p>', 1, 2, 54654, '0', '', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602607689_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 18:48:25', '2020-10-13 18:48:25', 1605199705, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(18, 'active', 6, '0', '0', '0', 'safsafsa', 'safsafsa', '<p>safsafsaf</p>', 1, 2, 567, '0', '', '0', '', '1039854', 'MZ.04', 'MZ', '28.6139391,77.20902120000005', '1602607861_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 18:51:11', '2020-10-13 18:51:11', 1605199871, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(19, 'active', 6, '0', '0', '0', 'adadasd', 'adadasd', '<p>sdfzxcxc</p>', 1, 2, 1234, '0', '345345435', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602608835_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 19:07:31', '2020-10-13 19:07:31', 1605200851, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(20, 'active', 6, '0', '0', '0', 'fsdfsdf', 'fsdfsdf', '<p>dsfdsfds</p>', 1, 2, 1234, '0', '', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602608924_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 19:08:57', '2020-10-13 19:08:57', 1605200937, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(21, 'active', 6, '0', '0', '0', 'rwerewr', 'rwerewr', '<p>erewrew</p>', 1, 2, 45345, '0', 'ddasfdsf', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602609060_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 19:11:13', '2020-10-13 19:11:13', 1605201073, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(22, 'active', 6, '0', '0', '0', 'sgdsgsda', 'sgdsgsda', '<p>sgsadgdsg</p>', 1, 2, 3434, '0', '', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602609204_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 19:13:42', '2020-10-13 19:13:42', 1605201222, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(23, 'active', 6, '0', '0', '0', 'fdfdsf', 'fdfdsf', '<p>fdgdgdg</p>', 1, 3, 567, '0', '', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602609940_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 19:25:59', '2020-10-13 19:25:59', 1605201959, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(24, 'active', 6, '0', '0', '0', 'rwerwer', 'rwerwer', '<p>weqtewtqewt</p>', 1, 4, 34533, '0', '', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602610428_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 19:34:08', '2020-10-13 19:34:08', 1605202448, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(25, 'active', 6, '0', '0', '0', '4545', '4545', '<p>sdafdsdsgdsga</p>', 1, 2, 1234, '0', '', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602611087_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 19:45:11', '2020-10-13 19:45:11', 1605203111, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(26, 'active', 6, '0', '0', '0', '4234324', '4234324', '<p>424sdfsdfdasf</p>', 1, 2, 123, '0', '848602620', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602611168_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 19:47:17', '2020-10-13 19:47:17', 1605203237, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(27, 'active', 6, '0', '0', '0', 'ddsg', 'ddsg', '<p>dsgdsg</p>', 1, 3, 35, '0', '', '0', '', '1039536', 'MZ.03', 'MZ', '28.6139391,77.20902120000005', '1602611327_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 19:49:00', '2020-10-13 19:49:00', 1605203340, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(28, 'active', 6, '0', '0', '0', 'Maputoerer', 'maputoerer', '<p>ewrerewr</p>', 1, 3, 500, '0', 'ddasfdsf', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602611499_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 19:52:07', '2020-10-13 19:52:07', 1605203527, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(29, 'active', 6, '0', '0', '0', 'dfsafas', 'dfsafas', '<p>aFSAF</p>', 1, 3, 1233, '0', '', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602624990_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 23:36:46', '2020-10-13 23:36:46', 1605217006, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(30, 'active', 6, '0', '0', '0', 'sdafdsf', 'sdafdsf', '<p>fsadf</p>', 3, 12, 45, '0', '', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602625290_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 23:41:44', '2020-10-13 23:41:44', 1605217304, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(31, 'active', 6, '0', '0', '0', 'Qual', 'qual', '<p>fdsfsdf</p>', 2, 8, 123, '0', '', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602625493_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 23:45:37', '2020-10-13 23:45:37', 1605217537, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(32, 'active', 6, '0', '0', '0', 'affdsfas', 'affdsfas', '<p>dfdffsd</p>', 3, 13, 345, '0', '', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602625836_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-13 23:50:48', '2020-10-13 23:50:48', 1605217848, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(33, 'active', 6, '0', '0', '0', 'fagasg', 'fagasg', '<p>asgdg</p>', 1, 3, 65, '0', '', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602626439_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-14 00:00:54', '2020-10-14 00:00:54', 1605218454, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(34, 'active', 6, '0', '0', '0', 'saF', 'saf-1', '<p>SFSAF</p>', 1, 4, 242, '0', '', '0', '', '1039854', 'MZ.04', 'MZ', '28.6139391,77.20902120000005', '', '', 1, NULL, NULL, NULL, '2020-10-14 00:02:46', '2020-10-14 00:02:46', 1605218566, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(35, 'active', 6, '0', '0', '0', 'dgsffasf', 'dgsffasf', '<p>asfasf</p>', 1, 2, 42, '0', '', '0', '', '1039854', 'MZ.04', 'MZ', '28.6139391,77.20902120000005', '1602627031_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-14 00:10:42', '2020-10-14 00:10:42', 1605219042, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(36, 'active', 6, '0', '0', '0', 'dgsffasf', 'dgsffasf-1', '<p>gdgds</p>', 1, 5, 42, '0', '', '0', '', '1039536', 'MZ.03', 'MZ', '28.6139391,77.20902120000005', '1602627231_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-14 00:14:22', '2020-10-14 00:14:22', 1605219262, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(37, 'active', 6, '0', '0', '0', 'Maputo', 'maputo-2', '<p>fsfdsf</p>', 2, 7, 23, '0', '', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602670256_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-14 12:11:06', '2020-10-14 12:11:06', 1605262266, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(38, 'active', 6, '0', '0', '0', '5464', '5464', '<p>hfghhcfh</p>', 2, 7, 76, '0', '', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602670767_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-14 12:19:38', '2020-10-14 12:19:38', 1605262778, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(39, 'active', 6, '0', '0', '0', 'Asdweef', 'asdweef', '<p>sghdhhdfh</p>', 2, 7, 1234354, '0', '', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602671228_download.jpg', '', 1, NULL, NULL, NULL, '2020-10-14 12:27:31', '2020-10-14 12:27:31', 1605263251, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(40, 'active', 3, '0', '0', '0', 'Gás', 'gas', '<p>Gás</p>', 1, 1, 5000, '0', '845262', '0', '', '1040652', 'MZ.11', 'MZ', '28.6139391,77.20902120000005', '1602671860_aaaa.jpg', '', 1, NULL, NULL, NULL, '2020-10-14 12:38:23', '2020-10-14 12:38:23', 1605263903, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(41, 'active', 3, '0', '0', '0', 'dsad', 'dsad', '<p>dsa</p>', 1, 1, 12, '0', '232332', '0', '', '1039854', 'MZ.04', 'MZ', '28.6139391,77.20902120000005', '1602674488_images644x461-19870.jpg', '', 1, NULL, NULL, NULL, '2020-10-14 13:21:44', '2020-10-14 13:21:44', 1605266504, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(42, 'active', 3, '0', '0', '0', 'dsad', 'dsad-1', '<p>56</p>', 1, 4, 12, '0', '232332', '0', '', '1033356', 'MZ.06', 'MZ', '28.6139391,77.20902120000005', '1602681154_images644x461-19870.jpg', '', 1, NULL, NULL, NULL, '2020-10-14 15:13:12', '2020-10-14 15:13:12', 1605273192, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(43, 'active', 3, '0', '0', '0', 'dsad', 'dsad-2', '<p>sasaas</p>', 1, 3, 12, '0', '232332', '0', '', '1052373', 'MZ.05', 'MZ', '28.6139391,77.20902120000005', '1602681619_images644x461-19870.jpg', '', 1, NULL, NULL, NULL, '2020-10-14 15:20:47', '2020-10-14 15:20:47', 1605273647, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
	(44, 'active', 3, '0', '0', '0', 'dsad', 'dsad-3', '<p>ssadasd</p>', 1, 4, 12, '0', '232332', '0', '', '1026014', 'MZ.08', 'MZ', '28.6139391,77.20902120000005', '1602683892_images644x461-19870.jpg', '', 1, NULL, NULL, NULL, '2020-10-14 15:58:30', '2020-10-14 15:58:30', 1605275910, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0');
/*!40000 ALTER TABLE `blproduct` ENABLE KEYS */;

-- Dumping structure for table boladas.blproduct_resubmit
CREATE TABLE IF NOT EXISTS `blproduct_resubmit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL,
  `featured` enum('0','1') NOT NULL DEFAULT '0',
  `urgent` enum('0','1') NOT NULL DEFAULT '0',
  `highlight` enum('0','1') NOT NULL DEFAULT '0',
  `product_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8 DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `negotiable` enum('0','1') NOT NULL DEFAULT '0',
  `phone` varchar(50) DEFAULT NULL,
  `hide_phone` enum('0','1') DEFAULT NULL,
  `location` text DEFAULT NULL,
  `city` char(50) DEFAULT NULL,
  `state` char(50) DEFAULT NULL,
  `country` char(50) DEFAULT NULL,
  `latlong` varchar(255) DEFAULT NULL,
  `screen_shot` text DEFAULT NULL,
  `tag` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  `status` enum('pending','active','rejected','softreject') NOT NULL DEFAULT 'pending',
  `view` int(11) NOT NULL DEFAULT 1,
  `custom_fields` longtext DEFAULT NULL,
  `custom_types` longtext DEFAULT NULL,
  `custom_values` longtext CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `featured_exp_date` int(11) DEFAULT NULL,
  `urgent_exp_date` int(11) DEFAULT NULL,
  `highlight_exp_date` int(11) DEFAULT NULL,
  `contact_phone` enum('0','1') NOT NULL DEFAULT '0',
  `contact_email` enum('0','1') NOT NULL DEFAULT '0',
  `contact_chat` enum('0','1') NOT NULL DEFAULT '0',
  `comments` text DEFAULT NULL,
  `admin_seen` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id` (`product_id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table boladas.blproduct_resubmit: 0 rows
/*!40000 ALTER TABLE `blproduct_resubmit` DISABLE KEYS */;
/*!40000 ALTER TABLE `blproduct_resubmit` ENABLE KEYS */;

-- Dumping structure for table boladas.blpush_notification
CREATE TABLE IF NOT EXISTS `blpush_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table boladas.blpush_notification: 1 rows
/*!40000 ALTER TABLE `blpush_notification` DISABLE KEYS */;
INSERT INTO `blpush_notification` (`id`, `sender_id`, `sender_name`, `owner_id`, `owner_name`, `product_id`, `product_title`, `type`, `message`) VALUES
	(1, 0, '', 3, '', 2, 'Toyotta Hiace Van', 'ad_approve', 'Toyotta Hiace Van has been approved, Make it premium for more visibility.');
/*!40000 ALTER TABLE `blpush_notification` ENABLE KEYS */;

-- Dumping structure for table boladas.blreviews
CREATE TABLE IF NOT EXISTS `blreviews` (
  `reviewID` int(21) NOT NULL AUTO_INCREMENT,
  `productID` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `comments` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `date` date DEFAULT NULL,
  `publish` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`reviewID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table boladas.blreviews: 1 rows
/*!40000 ALTER TABLE `blreviews` DISABLE KEYS */;
INSERT INTO `blreviews` (`reviewID`, `productID`, `user_id`, `rating`, `comments`, `date`, `publish`) VALUES
	(1, '5', 3, 5, 'Muito bom', '2020-09-28', 1);
/*!40000 ALTER TABLE `blreviews` ENABLE KEYS */;

-- Dumping structure for table boladas.blsubadmin1
CREATE TABLE IF NOT EXISTS `blsubadmin1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asciiname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `country_code` (`country_code`),
  KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=MyISAM AUTO_INCREMENT=2358 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blsubadmin1: 11 rows
/*!40000 ALTER TABLE `blsubadmin1` DISABLE KEYS */;
INSERT INTO `blsubadmin1` (`id`, `code`, `country_code`, `name`, `asciiname`, `active`) VALUES
	(2347, 'MZ.09', 'MZ', 'Zambézia', 'Zambezia', 1),
	(2348, 'MZ.08', 'MZ', 'Tete', 'Tete', 1),
	(2349, 'MZ.05', 'MZ', 'Sofala', 'Sofala', 1),
	(2350, 'MZ.07', 'MZ', 'Niassa', 'Niassa', 1),
	(2351, 'MZ.06', 'MZ', 'Nampula', 'Nampula', 1),
	(2352, 'MZ.04', 'MZ', 'Maputo', 'Maputo', 1),
	(2353, 'MZ.10', 'MZ', 'Manica', 'Manica', 1),
	(2354, 'MZ.03', 'MZ', 'Inhambane', 'Inhambane', 1),
	(2355, 'MZ.02', 'MZ', 'Gaza', 'Gaza', 1),
	(2356, 'MZ.01', 'MZ', 'Cabo Delgado', 'Cabo Delgado', 1),
	(2357, 'MZ.11', 'MZ', 'Maputo City', 'Maputo City', 1);
/*!40000 ALTER TABLE `blsubadmin1` ENABLE KEYS */;

-- Dumping structure for table boladas.blsubadmin2
CREATE TABLE IF NOT EXISTS `blsubadmin2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subadmin1_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asciiname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `country_code` (`country_code`),
  KEY `subadmin1_code` (`subadmin1_code`),
  KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=MyISAM AUTO_INCREMENT=25543 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blsubadmin2: 168 rows
/*!40000 ALTER TABLE `blsubadmin2` DISABLE KEYS */;
INSERT INTO `blsubadmin2` (`id`, `code`, `country_code`, `subadmin1_code`, `name`, `asciiname`, `active`) VALUES
	(25375, 'MZ.07.1027397', 'MZ', 'MZ.07', 'Circunscrição de Sanga', 'Circunscricao de Sanga', 1),
	(25376, 'MZ.01.1028315', 'MZ', 'MZ.01', 'Circunscrição da Quissanga', 'Circunscricao da Quissanga', 1),
	(25377, 'MZ.09.1028433', 'MZ', 'MZ.09', 'Concelho de Quelimane', 'Concelho de Quelimane', 1),
	(25378, 'MZ.01.1029247', 'MZ', 'MZ.01', 'Circunscrição de Palma', 'Circunscricao de Palma', 1),
	(25379, 'MZ.06.1033355', 'MZ', 'MZ.06', 'Distrito de Rapale', 'Distrito de Rapale', 1),
	(25380, 'MZ.06.1035018', 'MZ', 'MZ.06', 'Circunscrição de Nacala-a-Velha', 'Circunscricao de Nacala-a-Velha', 1),
	(25381, 'MZ.08.1035304', 'MZ', 'MZ.08', 'Circunscrição da Mutarara', 'Circunscricao da Mutarara', 1),
	(25382, 'MZ.06.1035470', 'MZ', 'MZ.06', 'Circunscrição de Murrupula', 'Circunscricao de Murrupula', 1),
	(25383, 'MZ.10.1035732', 'MZ', 'MZ.10', 'Guro', 'Guro', 1),
	(25384, 'MZ.10.1037018', 'MZ', 'MZ.10', 'Circunscrição de Mossurize', 'Circunscricao de Mossurize', 1),
	(25385, 'MZ.06.1037020', 'MZ', 'MZ.06', 'Circunscrição de Mossuril', 'Circunscricao de Mossuril', 1),
	(25386, 'MZ.09.1037109', 'MZ', 'MZ.09', 'Circunscrição de Mopeia', 'Circunscricao de Mopeia', 1),
	(25387, 'MZ.06.1037178', 'MZ', 'MZ.06', 'Concelho de Monapo', 'Concelho de Monapo', 1),
	(25388, 'MZ.06.1037222', 'MZ', 'MZ.06', 'Distrito de Moma', 'Distrito de Moma', 1),
	(25389, 'MZ.06.1037282', 'MZ', 'MZ.06', 'Circunscrìção de Mogovolas', 'Circunscricao de Mogovolas', 1),
	(25390, 'MZ.06.1037286', 'MZ', 'MZ.06', 'Circunscrìção do Mogincual', 'Circunscricao do Mogincual', 1),
	(25391, 'MZ.01.1037368', 'MZ', 'MZ.01', 'Mocimboa da Praia', 'Mocimboa da Praia', 1),
	(25392, 'MZ.08.1037394', 'MZ', 'MZ.08', 'Moatize', 'Moatize', 1),
	(25393, 'MZ.06.1038879', 'MZ', 'MZ.06', 'Memba', 'Memba', 1),
	(25394, 'MZ.07.1039135', 'MZ', 'MZ.07', 'Mecula', 'Mecula', 1),
	(25395, 'MZ.01.1039148', 'MZ', 'MZ.01', 'Mecufi', 'Mecufi', 1),
	(25396, 'MZ.06.1039205', 'MZ', 'MZ.06', 'Meconta', 'Meconta', 1),
	(25397, 'MZ.04.1039852', 'MZ', 'MZ.04', 'Concelho de Matola', 'Concelho de Matola', 1),
	(25398, 'MZ.05.1040396', 'MZ', 'MZ.05', 'Circunscrição de Marromeu', 'Circunscricao de Marromeu', 1),
	(25399, 'MZ.08.1040587', 'MZ', 'MZ.08', 'Circunscrição de Marávia', 'Circunscricao de Maravia', 1),
	(25400, 'MZ.02.1040936', 'MZ', 'MZ.02', 'Mandlakaze', 'Mandlakaze', 1),
	(25401, 'MZ.10.1040948', 'MZ', 'MZ.10', 'Concelho de Manica', 'Concelho de Manica', 1),
	(25402, 'MZ.07.1041189', 'MZ', 'MZ.07', 'Circunscrição de Mandimba', 'Circunscricao de Mandimba', 1),
	(25403, 'MZ.08.1041912', 'MZ', 'MZ.08', 'Circunscrição de Màgoé', 'Circunscricao de Magoe', 1),
	(25404, 'MZ.01.1042455', 'MZ', 'MZ.01', 'Circunscrição de Macomia', 'Circunscricao de Macomia', 1),
	(25405, 'MZ.08.1042871', 'MZ', 'MZ.08', 'Circunscrição da Macanga', 'Circunscricao da Macanga', 1),
	(25406, 'MZ.09.1045351', 'MZ', 'MZ.09', 'Circunscrição do Ile', 'Circunscricao do Ile', 1),
	(25407, 'MZ.01.1045383', 'MZ', 'MZ.01', 'Concelho do Ibo', 'Concelho do Ibo', 1),
	(25408, 'MZ.03.1045762', 'MZ', 'MZ.03', 'Circunscrição do Govuro', 'Circunscricao do Govuro', 1),
	(25409, 'MZ.05.1045789', 'MZ', 'MZ.05', 'Gorongosa District', 'Gorongosa District', 1),
	(25410, 'MZ.06.1046627', 'MZ', 'MZ.06', 'Circunscrição do Eráti', 'Circunscricao do Erati', 1),
	(25411, 'MZ.09.1049181', 'MZ', 'MZ.09', 'Concelho do Chinde', 'Concelho do Chinde', 1),
	(25412, 'MZ.10.1049260', 'MZ', 'MZ.10', 'Concelho do Chimoio', 'Concelho do Chimoio', 1),
	(25413, 'MZ.02.1049858', 'MZ', 'MZ.02', 'Distrito de Chibuto', 'Distrito de Chibuto', 1),
	(25414, 'MZ.05.1051852', 'MZ', 'MZ.05', 'Concelho do Búzi', 'Concelho do Buzi', 1),
	(25415, 'MZ.05.1052372', 'MZ', 'MZ.05', 'Concelho da Beira', 'Concelho da Beira', 1),
	(25416, 'MZ.10.1052446', 'MZ', 'MZ.10', 'Barue District', 'Barue District', 1),
	(25417, 'MZ.08.1052937', 'MZ', 'MZ.08', 'Circunscrição da Angónia', 'Circunscricao da Angonia', 1),
	(25418, 'MZ.09.1053142', 'MZ', 'MZ.09', 'Alto Molócuè', 'Alto Molocue', 1),
	(25419, 'MZ.04.1090080', 'MZ', 'MZ.04', 'Manhica', 'Manhica', 1),
	(25420, 'MZ.10.7646374', 'MZ', 'MZ.10', 'Gondola District', 'Gondola District', 1),
	(25421, 'MZ.01.7646427', 'MZ', 'MZ.01', 'Pemba', 'Pemba', 1),
	(25422, 'MZ.03.7670754', 'MZ', 'MZ.03', 'Vilankulos District', 'Vilankulos District', 1),
	(25423, 'MZ.04.7670756', 'MZ', 'MZ.04', 'Matutiune District', 'Matutiune District', 1),
	(25424, 'MZ.10.7670758', 'MZ', 'MZ.10', 'Sussundenga District', 'Sussundenga District', 1),
	(25425, 'MZ.02.7670759', 'MZ', 'MZ.02', 'Chicualacuala', 'Chicualacuala', 1),
	(25426, 'MZ.02.7670767', 'MZ', 'MZ.02', 'Massingir', 'Massingir', 1),
	(25427, 'MZ.03.7670768', 'MZ', 'MZ.03', 'Mabote', 'Mabote', 1),
	(25428, 'MZ.02.7670771', 'MZ', 'MZ.02', 'Massangena', 'Massangena', 1),
	(25429, 'MZ.02.7670772', 'MZ', 'MZ.02', 'Chigubo', 'Chigubo', 1),
	(25430, 'MZ.02.7670774', 'MZ', 'MZ.02', 'Mabalane', 'Mabalane', 1),
	(25431, 'MZ.04.7701205', 'MZ', 'MZ.04', 'Aeroporto', 'Aeroporto', 1),
	(25432, 'MZ.04.7701206', 'MZ', 'MZ.04', 'Distrito Municipal 1', 'Distrito Municipal 1', 1),
	(25433, 'MZ.04.7701207', 'MZ', 'MZ.04', 'Distrito Municipal 2', 'Distrito Municipal 2', 1),
	(25434, 'MZ.04.7701208', 'MZ', 'MZ.04', 'Distrito Municipal 3', 'Distrito Municipal 3', 1),
	(25435, 'MZ.04.7701210', 'MZ', 'MZ.04', 'Distrito Municipal 4', 'Distrito Municipal 4', 1),
	(25436, 'MZ.04.7701211', 'MZ', 'MZ.04', 'Distrito Municipal 5', 'Distrito Municipal 5', 1),
	(25437, 'MZ.07.7732033', 'MZ', 'MZ.07', 'Cuamba', 'Cuamba', 1),
	(25438, 'MZ.06.7732034', 'MZ', 'MZ.06', 'Malema', 'Malema', 1),
	(25439, 'MZ.06.7732035', 'MZ', 'MZ.06', 'Ribaue', 'Ribaue', 1),
	(25440, 'MZ.06.7732036', 'MZ', 'MZ.06', 'Nampula', 'Nampula', 1),
	(25441, 'MZ.06.7732037', 'MZ', 'MZ.06', 'Mecuburi', 'Mecuburi', 1),
	(25442, 'MZ.06.7732038', 'MZ', 'MZ.06', 'Cidade de Nampula', 'Cidade de Nampula', 1),
	(25443, 'MZ.04.7873976', 'MZ', 'MZ.04', 'Magude District', 'Magude District', 1),
	(25444, 'MZ.04.7873980', 'MZ', 'MZ.04', 'Moamba District', 'Moamba District', 1),
	(25445, 'MZ.04.7873983', 'MZ', 'MZ.04', 'Boane District', 'Boane District', 1),
	(25446, 'MZ.05.7873984', 'MZ', 'MZ.05', 'Nhamatanda District', 'Nhamatanda District', 1),
	(25447, 'MZ.05.7873985', 'MZ', 'MZ.05', 'Chibabava District', 'Chibabava District', 1),
	(25448, 'MZ.05.7873986', 'MZ', 'MZ.05', 'Dondo District', 'Dondo District', 1),
	(25449, 'MZ.09.7873988', 'MZ', 'MZ.09', 'Nicodala District', 'Nicodala District', 1),
	(25450, 'MZ.09.7873991', 'MZ', 'MZ.09', 'Gurue District', 'Gurue District', 1),
	(25451, 'MZ.09.7873993', 'MZ', 'MZ.09', 'Morrumbala District', 'Morrumbala District', 1),
	(25452, 'MZ.10.7874045', 'MZ', 'MZ.10', 'Guro District', 'Guro District', 1),
	(25453, 'MZ.05.7874046', 'MZ', 'MZ.05', 'Caia District', 'Caia District', 1),
	(25454, 'MZ.02.7874104', 'MZ', 'MZ.02', 'Chokwe District', 'Chokwe District', 1),
	(25455, 'MZ.08.7874106', 'MZ', 'MZ.08', 'Tsangano District', 'Tsangano District', 1),
	(25456, 'MZ.07.7874115', 'MZ', 'MZ.07', 'Lichinga District', 'Lichinga District', 1),
	(25457, 'MZ.07.7874117', 'MZ', 'MZ.07', 'Majune District', 'Majune District', 1),
	(25458, 'MZ.01.7874119', 'MZ', 'MZ.01', 'Balama District', 'Balama District', 1),
	(25459, 'MZ.06.7874406', 'MZ', 'MZ.06', 'Angoche District', 'Angoche District', 1),
	(25460, 'MZ.06.7874408', 'MZ', 'MZ.06', 'Lalaua District', 'Lalaua District', 1),
	(25461, 'MZ.06.7874410', 'MZ', 'MZ.06', 'Muecate District', 'Muecate District', 1),
	(25462, 'MZ.06.7874411', 'MZ', 'MZ.06', 'Nacaroa District', 'Nacaroa District', 1),
	(25463, 'MZ.07.7874414', 'MZ', 'MZ.07', 'Lago District', 'Lago District', 1),
	(25464, 'MZ.07.7874416', 'MZ', 'MZ.07', 'Maúa District', 'Maua District', 1),
	(25465, 'MZ.07.7874417', 'MZ', 'MZ.07', 'Mecanhelas District', 'Mecanhelas District', 1),
	(25466, 'MZ.07.7874418', 'MZ', 'MZ.07', 'Metarica District', 'Metarica District', 1),
	(25467, 'MZ.07.7874419', 'MZ', 'MZ.07', 'Muembe District', 'Muembe District', 1),
	(25468, 'MZ.07.7874420', 'MZ', 'MZ.07', 'Ngauma District', 'Ngauma District', 1),
	(25469, 'MZ.07.7874421', 'MZ', 'MZ.07', 'Nipepe District', 'Nipepe District', 1),
	(25470, 'MZ.05.7874471', 'MZ', 'MZ.05', 'Chemba District', 'Chemba District', 1),
	(25471, 'MZ.05.7874472', 'MZ', 'MZ.05', 'Muanza District', 'Muanza District', 1),
	(25472, 'MZ.05.7874473', 'MZ', 'MZ.05', 'Maringué District', 'Maringue District', 1),
	(25473, 'MZ.05.7874474', 'MZ', 'MZ.05', 'Machanga District', 'Machanga District', 1),
	(25474, 'MZ.05.7874614', 'MZ', 'MZ.05', 'Cheringoma District', 'Cheringoma District', 1),
	(25475, 'MZ.10.7874620', 'MZ', 'MZ.10', 'Machaze District', 'Machaze District', 1),
	(25476, 'MZ.10.7874622', 'MZ', 'MZ.10', 'Macossa District', 'Macossa District', 1),
	(25477, 'MZ.10.7874624', 'MZ', 'MZ.10', 'Tambara District', 'Tambara District', 1),
	(25478, 'MZ.09.7874708', 'MZ', 'MZ.09', 'Gilé District', 'Gile District', 1),
	(25479, 'MZ.09.7874710', 'MZ', 'MZ.09', 'Lugela District', 'Lugela District', 1),
	(25480, 'MZ.09.7874711', 'MZ', 'MZ.09', 'Maganja da Costa District', 'Maganja da Costa District', 1),
	(25481, 'MZ.09.7874712', 'MZ', 'MZ.09', 'Milange District', 'Milange District', 1),
	(25482, 'MZ.09.7874724', 'MZ', 'MZ.09', 'Namarroi District', 'Namarroi District', 1),
	(25483, 'MZ.09.7874726', 'MZ', 'MZ.09', 'Pebane District', 'Pebane District', 1),
	(25484, 'MZ.09.7880951', 'MZ', 'MZ.09', 'Mocuba District', 'Mocuba District', 1),
	(25485, 'MZ.08.7905000', 'MZ', 'MZ.08', 'Changara District', 'Changara District', 1),
	(25486, 'MZ.08.7905199', 'MZ', 'MZ.08', 'Chifunde District', 'Chifunde District', 1),
	(25487, 'MZ.08.7905529', 'MZ', 'MZ.08', 'Chiuta District', 'Chiuta District', 1),
	(25488, 'MZ.09.7909704', 'MZ', 'MZ.09', 'Inhassunge District', 'Inhassunge District', 1),
	(25489, 'MZ.03.7909714', 'MZ', 'MZ.03', 'Zavala District', 'Zavala District', 1),
	(25490, 'MZ.03.7909715', 'MZ', 'MZ.03', 'Massinga District', 'Massinga District', 1),
	(25491, 'MZ.03.7909780', 'MZ', 'MZ.03', 'Funhalouro District', 'Funhalouro District', 1),
	(25492, 'MZ.03.7909781', 'MZ', 'MZ.03', 'Inhassoro District', 'Inhassoro District', 1),
	(25493, 'MZ.03.7909783', 'MZ', 'MZ.03', 'Inharrime District', 'Inharrime District', 1),
	(25494, 'MZ.03.7909784', 'MZ', 'MZ.03', 'Jangamo District', 'Jangamo District', 1),
	(25495, 'MZ.03.7909785', 'MZ', 'MZ.03', 'Homoine District', 'Homoine District', 1),
	(25496, 'MZ.03.7909786', 'MZ', 'MZ.03', 'Morrumbene District', 'Morrumbene District', 1),
	(25497, 'MZ.08.7909828', 'MZ', 'MZ.08', 'Cahora Bassa District', 'Cahora Bassa District', 1),
	(25498, 'MZ.01.7909845', 'MZ', 'MZ.01', 'Mueda District', 'Mueda District', 1),
	(25499, 'MZ.01.7909876', 'MZ', 'MZ.01', 'Ancuabe District', 'Ancuabe District', 1),
	(25500, 'MZ.01.7911292', 'MZ', 'MZ.01', 'Namuno District', 'Namuno District', 1),
	(25501, 'MZ.07.8299276', 'MZ', 'MZ.07', 'Marrupa District', 'Marrupa District', 1),
	(25502, 'MZ.01.8299277', 'MZ', 'MZ.01', 'Montepuez District', 'Montepuez District', 1),
	(25503, 'MZ.04.8301113', 'MZ', 'MZ.04', 'Namaacha District', 'Namaacha District', 1),
	(25504, 'MZ.04.8693192', 'MZ', 'MZ.04', 'Marracuene District', 'Marracuene District', 1),
	(25505, 'MZ.09.8714615', 'MZ', 'MZ.09', 'Namacurra District', 'Namacurra District', 1),
	(25506, 'MZ.02.9072735', 'MZ', 'MZ.02', 'Bilene Macia District', 'Bilene Macia District', 1),
	(25507, 'MZ.07.9252721', 'MZ', 'MZ.07', 'Mavago', 'Mavago', 1),
	(25508, 'MZ.03.9252722', 'MZ', 'MZ.03', 'Maxixe', 'Maxixe', 1),
	(25509, 'MZ.01.9252727', 'MZ', 'MZ.01', 'Meluco', 'Meluco', 1),
	(25510, 'MZ.02.9252728', 'MZ', 'MZ.02', 'Guija', 'Guija', 1),
	(25511, 'MZ.01.9252729', 'MZ', 'MZ.01', 'Chiure', 'Chiure', 1),
	(25512, 'MZ.06.9252730', 'MZ', 'MZ.06', 'Ilha de Mocambique', 'Ilha de Mocambique', 1),
	(25513, 'MZ.08.9252731', 'MZ', 'MZ.08', 'Cidade de Tete', 'Cidade de Tete', 1),
	(25514, 'MZ.08.9252732', 'MZ', 'MZ.08', 'Luenha', 'Luenha', 1),
	(25515, 'MZ.03.9252733', 'MZ', 'MZ.03', 'Cidade de Inhambane', 'Cidade de Inhambane', 1),
	(25516, 'MZ.01.9252735', 'MZ', 'MZ.01', 'Muidumbe', 'Muidumbe', 1),
	(25517, 'MZ.01.9252736', 'MZ', 'MZ.01', 'Nangade', 'Nangade', 1),
	(25518, 'MZ.03.9252738', 'MZ', 'MZ.03', 'Panda', 'Panda', 1),
	(25519, 'MZ.08.9252739', 'MZ', 'MZ.08', 'Zumbu', 'Zumbu', 1),
	(25520, 'MZ.02.9408663', 'MZ', 'MZ.02', 'Xai-Xai District', 'Xai-Xai District', 1),
	(25521, 'MZ.07.10651614', 'MZ', 'MZ.07', 'Cidade de Lichinga', 'Cidade de Lichinga', 1),
	(25522, 'MZ.02.10668849', 'MZ', 'MZ.02', 'Cidade de Xai-Xai', 'Cidade de Xai-Xai', 1),
	(25523, 'MZ.11.10683815', 'MZ', 'MZ.11', 'KaMubukwana', 'KaMubukwana', 1),
	(25524, 'MZ.11.10685827', 'MZ', 'MZ.11', 'KaMavota', 'KaMavota', 1),
	(25525, 'MZ.11.10685828', 'MZ', 'MZ.11', 'Nhlamankulo', 'Nhlamankulo', 1),
	(25526, 'MZ.11.10685829', 'MZ', 'MZ.11', 'KaMaxakeni', 'KaMaxakeni', 1),
	(25527, 'MZ.11.10685830', 'MZ', 'MZ.11', 'KaMpfumo', 'KaMpfumo', 1),
	(25528, 'MZ.11.10685831', 'MZ', 'MZ.11', 'KaTembe', 'KaTembe', 1),
	(25529, 'MZ.11.10685832', 'MZ', 'MZ.11', 'KaNyaka', 'KaNyaka', 1),
	(25530, 'MZ.10.10701340', 'MZ', 'MZ.10', 'Distrito de Vanduzi', 'Distrito de Vanduzi', 1),
	(25531, 'MZ.10.10701341', 'MZ', 'MZ.10', 'Distrito de Macate', 'Distrito de Macate', 1),
	(25532, 'MZ.09.10701342', 'MZ', 'MZ.09', 'Distrito de Mulevala', 'Distrito de Mulevala', 1),
	(25533, 'MZ.09.10701343', 'MZ', 'MZ.09', 'Distrito de Mocubela', 'Distrito de Mocubela', 1),
	(25534, 'MZ.09.10701344', 'MZ', 'MZ.09', 'Distrito de Derre', 'Distrito de Derre', 1),
	(25535, 'MZ.09.10702916', 'MZ', 'MZ.09', 'Distrito de Molumbo', 'Distrito de Molumbo', 1),
	(25536, 'MZ.09.10703116', 'MZ', 'MZ.09', 'Distrito de Luabo', 'Distrito de Luabo', 1),
	(25537, 'MZ.08.10703925', 'MZ', 'MZ.08', 'Distrito de Dôa', 'Distrito de Doa', 1),
	(25538, 'MZ.06.10703926', 'MZ', 'MZ.06', 'Distrito de Larde', 'Distrito de Larde', 1),
	(25539, 'MZ.06.10703927', 'MZ', 'MZ.06', 'Distrito de Liúpo', 'Distrito de Liupo', 1),
	(25540, 'MZ.08.10704473', 'MZ', 'MZ.08', 'Distrito de Marara', 'Distrito de Marara', 1),
	(25541, 'MZ.09.11189152', 'MZ', 'MZ.09', 'Mopeia District', 'Mopeia District', 1),
	(25542, 'MZ.08.11204389', 'MZ', 'MZ.08', 'Angónia District', 'Angonia District', 1);
/*!40000 ALTER TABLE `blsubadmin2` ENABLE KEYS */;

-- Dumping structure for table boladas.blsubscriptions
CREATE TABLE IF NOT EXISTS `blsubscriptions` (
  `sub_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sub_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_term` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'MONTHLY',
  `sub_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `sub_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` smallint(10) DEFAULT NULL,
  `pay_mode` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `recommended` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `discount_badge` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blsubscriptions: 3 rows
/*!40000 ALTER TABLE `blsubscriptions` DISABLE KEYS */;
INSERT INTO `blsubscriptions` (`sub_id`, `sub_title`, `sub_term`, `sub_amount`, `sub_image`, `group_id`, `pay_mode`, `active`, `recommended`, `discount_badge`) VALUES
	(4, 'Premium', 'MONTHLY', 250.00, 'https://cdn.iconscout.com/icon/free/png-64/check-verified-successful-accept-tick-yes-success-2516.png', 2, 'one_time', 1, 'yes', ''),
	(5, 'Standard', 'WEEKLY', 100.00, '', 1, 'one_time', 1, 'no', ''),
	(6, 'Basic', 'DAILY', 25.00, '', 3, 'recurring', 1, 'yes', '');
/*!40000 ALTER TABLE `blsubscriptions` ENABLE KEYS */;

-- Dumping structure for table boladas.bltestimonials
CREATE TABLE IF NOT EXISTS `bltestimonials` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.bltestimonials: ~3 rows (approximately)
/*!40000 ALTER TABLE `bltestimonials` DISABLE KEYS */;
INSERT INTO `bltestimonials` (`id`, `name`, `designation`, `content`, `image`) VALUES
	(1, 'Tony Stark', 'Social Marketing', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL),
	(2, 'Steve Roger', 'Content Writer', 'Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip e', NULL),
	(3, 'Natasha', 'Designer', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo do consequat. Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua', NULL);
/*!40000 ALTER TABLE `bltestimonials` ENABLE KEYS */;

-- Dumping structure for table boladas.bltime_zones
CREATE TABLE IF NOT EXISTS `bltime_zones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_zone_id` varchar(40) COLLATE utf8_unicode_ci DEFAULT '',
  `gmt` float DEFAULT NULL,
  `dst` float DEFAULT NULL,
  `raw` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `time_zone_id` (`time_zone_id`),
  KEY `country_code` (`country_code`)
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.bltime_zones: 247 rows
/*!40000 ALTER TABLE `bltime_zones` DISABLE KEYS */;
INSERT INTO `bltime_zones` (`id`, `country_code`, `time_zone_id`, `gmt`, `dst`, `raw`) VALUES
	(1, 'AD', 'Europe/Andorra', 1, 2, 1),
	(2, 'AE', 'Asia/Dubai', 4, 4, 4),
	(3, 'AF', 'Asia/Kabul', 4.5, 4.5, 4.5),
	(4, 'AG', 'America/Antigua', -4, -4, -4),
	(5, 'AI', 'America/Anguilla', -4, -4, -4),
	(6, 'AL', 'Europe/Tirane', 1, 2, 1),
	(7, 'AM', 'Asia/Yerevan', 4, 4, 4),
	(8, 'AO', 'Africa/Luanda', 1, 1, 1),
	(9, 'AQ', 'Antarctica/Casey', 8, 8, 8),
	(10, 'AR', 'America/Argentina/Buenos_Aires', -3, -3, -3),
	(11, 'AS', 'Pacific/Pago_Pago', -11, -11, -11),
	(12, 'AT', 'Europe/Vienna', 1, 2, 1),
	(13, 'AU', 'Antarctica/Macquarie', 11, 11, 11),
	(14, 'AW', 'America/Aruba', -4, -4, -4),
	(15, 'AX', 'Europe/Mariehamn', 2, 3, 2),
	(16, 'AZ', 'Asia/Baku', 4, 5, 4),
	(17, 'BA', 'Europe/Sarajevo', 1, 2, 1),
	(18, 'BB', 'America/Barbados', -4, -4, -4),
	(19, 'BD', 'Asia/Dhaka', 6, 6, 6),
	(20, 'BE', 'Europe/Brussels', 1, 2, 1),
	(21, 'BF', 'Africa/Ouagadougou', 0, 0, 0),
	(22, 'BG', 'Europe/Sofia', 2, 3, 2),
	(23, 'BH', 'Asia/Bahrain', 3, 3, 3),
	(24, 'BI', 'Africa/Bujumbura', 2, 2, 2),
	(25, 'BJ', 'Africa/Porto-Novo', 1, 1, 1),
	(26, 'BL', 'America/St_Barthelemy', -4, -4, -4),
	(27, 'BM', 'Atlantic/Bermuda', -4, -3, -4),
	(28, 'BN', 'Asia/Brunei', 8, 8, 8),
	(29, 'BO', 'America/La_Paz', -4, -4, -4),
	(30, 'BQ', 'America/Kralendijk', -4, -4, -4),
	(31, 'BR', 'America/Araguaina', -3, -3, -3),
	(32, 'BS', 'America/Nassau', -5, -4, -5),
	(33, 'BT', 'Asia/Thimphu', 6, 6, 6),
	(34, 'BW', 'Africa/Gaborone', 2, 2, 2),
	(35, 'BY', 'Europe/Minsk', 3, 3, 3),
	(36, 'BZ', 'America/Belize', -6, -6, -6),
	(37, 'CA', 'America/Atikokan', -5, -5, -5),
	(38, 'CC', 'Indian/Cocos', 6.5, 6.5, 6.5),
	(39, 'CD', 'Africa/Kinshasa', 1, 1, 1),
	(40, 'CF', 'Africa/Bangui', 1, 1, 1),
	(41, 'CG', 'Africa/Brazzaville', 1, 1, 1),
	(42, 'CH', 'Europe/Zurich', 1, 2, 1),
	(43, 'CI', 'Africa/Abidjan', 0, 0, 0),
	(44, 'CK', 'Pacific/Rarotonga', -10, -10, -10),
	(45, 'CL', 'America/Santiago', -3, -3, -3),
	(46, 'CM', 'Africa/Douala', 1, 1, 1),
	(47, 'CN', 'Asia/Shanghai', 8, 8, 8),
	(48, 'CO', 'America/Bogota', -5, -5, -5),
	(49, 'CR', 'America/Costa_Rica', -6, -6, -6),
	(50, 'CU', 'America/Havana', -5, -4, -5),
	(51, 'CV', 'Atlantic/Cape_Verde', -1, -1, -1),
	(52, 'CW', 'America/Curacao', -4, -4, -4),
	(53, 'CX', 'Indian/Christmas', 7, 7, 7),
	(54, 'CY', 'Asia/Nicosia', 2, 3, 2),
	(55, 'CZ', 'Europe/Prague', 1, 2, 1),
	(56, 'DE', 'Europe/Berlin', 1, 2, 1),
	(57, 'DJ', 'Africa/Djibouti', 3, 3, 3),
	(58, 'DK', 'Europe/Copenhagen', 1, 2, 1),
	(59, 'DM', 'America/Dominica', -4, -4, -4),
	(60, 'DO', 'America/Santo_Domingo', -4, -4, -4),
	(61, 'DZ', 'Africa/Algiers', 1, 1, 1),
	(62, 'EC', 'America/Guayaquil', -5, -5, -5),
	(63, 'EE', 'Europe/Tallinn', 2, 3, 2),
	(64, 'EG', 'Africa/Cairo', 2, 2, 2),
	(65, 'EH', 'Africa/El_Aaiun', 0, 0, 0),
	(66, 'ER', 'Africa/Asmara', 3, 3, 3),
	(67, 'ES', 'Africa/Ceuta', 1, 2, 1),
	(68, 'ET', 'Africa/Addis_Ababa', 3, 3, 3),
	(69, 'FI', 'Europe/Helsinki', 2, 3, 2),
	(70, 'FJ', 'Pacific/Fiji', 13, 12, 12),
	(71, 'FK', 'Atlantic/Stanley', -3, -3, -3),
	(72, 'FM', 'Pacific/Chuuk', 10, 10, 10),
	(73, 'FO', 'Atlantic/Faroe', 0, 1, 0),
	(74, 'FR', 'Europe/Paris', 1, 2, 1),
	(75, 'GA', 'Africa/Libreville', 1, 1, 1),
	(76, 'GD', 'America/Grenada', -4, -4, -4),
	(77, 'GE', 'Asia/Tbilisi', 4, 4, 4),
	(78, 'GF', 'America/Cayenne', -3, -3, -3),
	(79, 'GG', 'Europe/Guernsey', 0, 1, 0),
	(80, 'GH', 'Africa/Accra', 0, 0, 0),
	(81, 'GI', 'Europe/Gibraltar', 1, 2, 1),
	(82, 'GL', 'America/Danmarkshavn', 0, 0, 0),
	(83, 'GM', 'Africa/Banjul', 0, 0, 0),
	(84, 'GN', 'Africa/Conakry', 0, 0, 0),
	(85, 'GP', 'America/Guadeloupe', -4, -4, -4),
	(86, 'GQ', 'Africa/Malabo', 1, 1, 1),
	(87, 'GR', 'Europe/Athens', 2, 3, 2),
	(88, 'GS', 'Atlantic/South_Georgia', -2, -2, -2),
	(89, 'GT', 'America/Guatemala', -6, -6, -6),
	(90, 'GU', 'Pacific/Guam', 10, 10, 10),
	(91, 'GW', 'Africa/Bissau', 0, 0, 0),
	(92, 'GY', 'America/Guyana', -4, -4, -4),
	(93, 'HK', 'Asia/Hong_Kong', 8, 8, 8),
	(94, 'HN', 'America/Tegucigalpa', -6, -6, -6),
	(95, 'HR', 'Europe/Zagreb', 1, 2, 1),
	(96, 'HT', 'America/Port-au-Prince', -5, -4, -5),
	(97, 'HU', 'Europe/Budapest', 1, 2, 1),
	(98, 'ID', 'Asia/Jakarta', 7, 7, 7),
	(99, 'IE', 'Europe/Dublin', 0, 1, 0),
	(100, 'IL', 'Asia/Jerusalem', 2, 3, 2),
	(101, 'IM', 'Europe/Isle_of_Man', 0, 1, 0),
	(102, 'IN', 'Asia/Kolkata', 5.5, 5.5, 5.5),
	(103, 'IO', 'Indian/Chagos', 6, 6, 6),
	(104, 'IQ', 'Asia/Baghdad', 3, 3, 3),
	(105, 'IR', 'Asia/Tehran', 3.5, 4.5, 3.5),
	(106, 'IS', 'Atlantic/Reykjavik', 0, 0, 0),
	(107, 'IT', 'Europe/Rome', 1, 2, 1),
	(108, 'JE', 'Europe/Jersey', 0, 1, 0),
	(109, 'JM', 'America/Jamaica', -5, -5, -5),
	(110, 'JO', 'Asia/Amman', 2, 3, 2),
	(111, 'JP', 'Asia/Tokyo', 9, 9, 9),
	(112, 'KE', 'Africa/Nairobi', 3, 3, 3),
	(113, 'KG', 'Asia/Bishkek', 6, 6, 6),
	(114, 'KH', 'Asia/Phnom_Penh', 7, 7, 7),
	(115, 'KI', 'Pacific/Enderbury', 13, 13, 13),
	(116, 'KM', 'Indian/Comoro', 3, 3, 3),
	(117, 'KN', 'America/St_Kitts', -4, -4, -4),
	(118, 'KP', 'Asia/Pyongyang', 9, 9, 9),
	(119, 'KR', 'Asia/Seoul', 9, 9, 9),
	(120, 'KW', 'Asia/Kuwait', 3, 3, 3),
	(121, 'KY', 'America/Cayman', -5, -5, -5),
	(122, 'KZ', 'Asia/Almaty', 6, 6, 6),
	(123, 'LA', 'Asia/Vientiane', 7, 7, 7),
	(124, 'LB', 'Asia/Beirut', 2, 3, 2),
	(125, 'LC', 'America/St_Lucia', -4, -4, -4),
	(126, 'LI', 'Europe/Vaduz', 1, 2, 1),
	(127, 'LK', 'Asia/Colombo', 5.5, 5.5, 5.5),
	(128, 'LR', 'Africa/Monrovia', 0, 0, 0),
	(129, 'LS', 'Africa/Maseru', 2, 2, 2),
	(130, 'LT', 'Europe/Vilnius', 2, 3, 2),
	(131, 'LU', 'Europe/Luxembourg', 1, 2, 1),
	(132, 'LV', 'Europe/Riga', 2, 3, 2),
	(133, 'LY', 'Africa/Tripoli', 2, 2, 2),
	(134, 'MA', 'Africa/Casablanca', 0, 0, 0),
	(135, 'MC', 'Europe/Monaco', 1, 2, 1),
	(136, 'MD', 'Europe/Chisinau', 2, 3, 2),
	(137, 'ME', 'Europe/Podgorica', 1, 2, 1),
	(138, 'MF', 'America/Marigot', -4, -4, -4),
	(139, 'MG', 'Indian/Antananarivo', 3, 3, 3),
	(140, 'MH', 'Pacific/Kwajalein', 12, 12, 12),
	(141, 'MK', 'Europe/Skopje', 1, 2, 1),
	(142, 'ML', 'Africa/Bamako', 0, 0, 0),
	(143, 'MM', 'Asia/Rangoon', 6.5, 6.5, 6.5),
	(144, 'MN', 'Asia/Choibalsan', 8, 8, 8),
	(145, 'MO', 'Asia/Macau', 8, 8, 8),
	(146, 'MP', 'Pacific/Saipan', 10, 10, 10),
	(147, 'MQ', 'America/Martinique', -4, -4, -4),
	(148, 'MR', 'Africa/Nouakchott', 0, 0, 0),
	(149, 'MS', 'America/Montserrat', -4, -4, -4),
	(150, 'MT', 'Europe/Malta', 1, 2, 1),
	(151, 'MU', 'Indian/Mauritius', 4, 4, 4),
	(152, 'MV', 'Indian/Maldives', 5, 5, 5),
	(153, 'MW', 'Africa/Blantyre', 2, 2, 2),
	(154, 'MX', 'America/Bahia_Banderas', -6, -5, -6),
	(155, 'MY', 'Asia/Kuala_Lumpur', 8, 8, 8),
	(156, 'MZ', 'Africa/Maputo', 2, 2, 2),
	(157, 'NA', 'Africa/Windhoek', 2, 1, 1),
	(158, 'NC', 'Pacific/Noumea', 11, 11, 11),
	(159, 'NE', 'Africa/Niamey', 1, 1, 1),
	(160, 'NF', 'Pacific/Norfolk', 11.5, 11.5, 11.5),
	(161, 'NG', 'Africa/Lagos', 1, 1, 1),
	(162, 'NI', 'America/Managua', -6, -6, -6),
	(163, 'NL', 'Europe/Amsterdam', 1, 2, 1),
	(164, 'NO', 'Europe/Oslo', 1, 2, 1),
	(165, 'NP', 'Asia/Kathmandu', 5.75, 5.75, 5.75),
	(166, 'NR', 'Pacific/Nauru', 12, 12, 12),
	(167, 'NU', 'Pacific/Niue', -11, -11, -11),
	(168, 'NZ', 'Pacific/Auckland', 13, 12, 12),
	(169, 'OM', 'Asia/Muscat', 4, 4, 4),
	(170, 'PA', 'America/Panama', -5, -5, -5),
	(171, 'PE', 'America/Lima', -5, -5, -5),
	(172, 'PF', 'Pacific/Gambier', -9, -9, -9),
	(173, 'PG', 'Pacific/Bougainville', 11, 11, 11),
	(174, 'PH', 'Asia/Manila', 8, 8, 8),
	(175, 'PK', 'Asia/Karachi', 5, 5, 5),
	(176, 'PL', 'Europe/Warsaw', 1, 2, 1),
	(177, 'PM', 'America/Miquelon', -3, -2, -3),
	(178, 'PN', 'Pacific/Pitcairn', -8, -8, -8),
	(179, 'PR', 'America/Puerto_Rico', -4, -4, -4),
	(180, 'PS', 'Asia/Gaza', 2, 3, 2),
	(181, 'PT', 'Atlantic/Azores', -1, 0, -1),
	(182, 'PW', 'Pacific/Palau', 9, 9, 9),
	(183, 'PY', 'America/Asuncion', -3, -4, -4),
	(184, 'QA', 'Asia/Qatar', 3, 3, 3),
	(185, 'RE', 'Indian/Reunion', 4, 4, 4),
	(186, 'RO', 'Europe/Bucharest', 2, 3, 2),
	(187, 'RS', 'Europe/Belgrade', 1, 2, 1),
	(188, 'RU', 'Asia/Anadyr', 12, 12, 12),
	(189, 'RW', 'Africa/Kigali', 2, 2, 2),
	(190, 'SA', 'Asia/Riyadh', 3, 3, 3),
	(191, 'SB', 'Pacific/Guadalcanal', 11, 11, 11),
	(192, 'SC', 'Indian/Mahe', 4, 4, 4),
	(193, 'SD', 'Africa/Khartoum', 3, 3, 3),
	(194, 'SE', 'Europe/Stockholm', 1, 2, 1),
	(195, 'SG', 'Asia/Singapore', 8, 8, 8),
	(196, 'SH', 'Atlantic/St_Helena', 0, 0, 0),
	(197, 'SI', 'Europe/Ljubljana', 1, 2, 1),
	(198, 'SJ', 'Arctic/Longyearbyen', 1, 2, 1),
	(199, 'SK', 'Europe/Bratislava', 1, 2, 1),
	(200, 'SL', 'Africa/Freetown', 0, 0, 0),
	(201, 'SM', 'Europe/San_Marino', 1, 2, 1),
	(202, 'SN', 'Africa/Dakar', 0, 0, 0),
	(203, 'SO', 'Africa/Mogadishu', 3, 3, 3),
	(204, 'SR', 'America/Paramaribo', -3, -3, -3),
	(205, 'SS', 'Africa/Juba', 3, 3, 3),
	(206, 'ST', 'Africa/Sao_Tome', 0, 0, 0),
	(207, 'SV', 'America/El_Salvador', -6, -6, -6),
	(208, 'SX', 'America/Lower_Princes', -4, -4, -4),
	(209, 'SY', 'Asia/Damascus', 2, 3, 2),
	(210, 'SZ', 'Africa/Mbabane', 2, 2, 2),
	(211, 'TC', 'America/Grand_Turk', -5, -4, -5),
	(212, 'TD', 'Africa/Ndjamena', 1, 1, 1),
	(213, 'TF', 'Indian/Kerguelen', 5, 5, 5),
	(214, 'TG', 'Africa/Lome', 0, 0, 0),
	(215, 'TH', 'Asia/Bangkok', 7, 7, 7),
	(216, 'TJ', 'Asia/Dushanbe', 5, 5, 5),
	(217, 'TK', 'Pacific/Fakaofo', 13, 13, 13),
	(218, 'TL', 'Asia/Dili', 9, 9, 9),
	(219, 'TM', 'Asia/Ashgabat', 5, 5, 5),
	(220, 'TN', 'Africa/Tunis', 1, 1, 1),
	(221, 'TO', 'Pacific/Tongatapu', 13, 13, 13),
	(222, 'TR', 'Europe/Istanbul', 2, 3, 2),
	(223, 'TT', 'America/Port_of_Spain', -4, -4, -4),
	(224, 'TV', 'Pacific/Funafuti', 12, 12, 12),
	(225, 'TW', 'Asia/Taipei', 8, 8, 8),
	(226, 'TZ', 'Africa/Dar_es_Salaam', 3, 3, 3),
	(227, 'UA', 'Europe/Kiev', 2, 3, 2),
	(228, 'UG', 'Africa/Kampala', 3, 3, 3),
	(229, 'UK', 'Europe/London', 0, 1, 0),
	(230, 'UM', 'Pacific/Johnston', -10, -10, -10),
	(231, 'US', 'America/Adak', -10, -9, -10),
	(232, 'UY', 'America/Montevideo', -2, -3, -3),
	(233, 'UZ', 'Asia/Samarkand', 5, 5, 5),
	(234, 'VA', 'Europe/Vatican', 1, 2, 1),
	(235, 'VC', 'America/St_Vincent', -4, -4, -4),
	(236, 'VE', 'America/Caracas', -4.5, -4.5, -4.5),
	(237, 'VG', 'America/Tortola', -4, -4, -4),
	(238, 'VI', 'America/St_Thomas', -4, -4, -4),
	(239, 'VN', 'Asia/Ho_Chi_Minh', 7, 7, 7),
	(240, 'VU', 'Pacific/Efate', 11, 11, 11),
	(241, 'WF', 'Pacific/Wallis', 12, 12, 12),
	(242, 'WS', 'Pacific/Apia', 14, 13, 13),
	(243, 'YE', 'Asia/Aden', 3, 3, 3),
	(244, 'YT', 'Indian/Mayotte', 3, 3, 3),
	(245, 'ZA', 'Africa/Johannesburg', 2, 2, 2),
	(246, 'ZM', 'Africa/Lusaka', 2, 2, 2),
	(247, 'ZW', 'Africa/Harare', 2, 2, 2);
/*!40000 ALTER TABLE `bltime_zones` ENABLE KEYS */;

-- Dumping structure for table boladas.bltransaction
CREATE TABLE IF NOT EXISTS `bltransaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(225) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `amount` double(9,2) DEFAULT NULL,
  `featured` enum('0','1') DEFAULT '0',
  `urgent` enum('0','1') DEFAULT '0',
  `highlight` enum('0','1') DEFAULT '0',
  `transaction_time` int(11) DEFAULT NULL,
  `status` enum('pending','success','failed','cancel') DEFAULT NULL,
  `transaction_gatway` varchar(255) DEFAULT NULL,
  `transaction_ip` varchar(15) DEFAULT NULL,
  `transaction_description` varchar(255) DEFAULT NULL,
  `transaction_method` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table boladas.bltransaction: 5 rows
/*!40000 ALTER TABLE `bltransaction` DISABLE KEYS */;
INSERT INTO `bltransaction` (`id`, `product_name`, `product_id`, `seller_id`, `amount`, `featured`, `urgent`, `highlight`, `transaction_time`, `status`, `transaction_gatway`, `transaction_ip`, `transaction_description`, `transaction_method`) VALUES
	(1, 'VEstido', 5, 3, 60.00, '1', '1', '1', 1601287855, 'success', 'wire_transfer', '::1', 'Pacote Destaque Urgente Realçar', 'Premium Ad'),
	(2, 'Carro 4x4 Nissan', 6, 3, 60.00, '1', '1', '1', 1601310378, 'success', 'wire_transfer', '::1', 'Pacote Destaque Urgente Realçar', 'Premium Ad'),
	(4, 'Standard Plano de associação', 5, 4, 100.00, '0', '0', '0', 2020, 'success', 'Admin', '::1', 'Standard Plano de associação', 'Subscription'),
	(42, 'dsad', 43, 3, 35.00, '1', '1', '0', 1602683782, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Urgente', 'Premium Ad'),
	(6, 'Standard Plano de associação', 5, 6, 100.00, '0', '0', '0', 2020, 'success', 'Admin', '::1', 'Standard Plano de associação', 'Subscription'),
	(41, 'dsad', 42, 3, 35.00, '1', '1', '0', 1602681342, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Urgente', 'Premium Ad'),
	(40, 'dsad', 41, 3, 35.00, '1', '1', '0', 1602680899, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Urgente', 'Premium Ad'),
	(39, 'Gás', 40, 3, 35.00, '1', '1', '0', 1602674087, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Urgente', 'Premium Ad'),
	(11, 'Premium Plano de associação', 4, 3, 250.00, '0', '0', '0', 1602413908, 'pending', 'wire_transfer', '::1', 'Premium Plano de associação', 'Subscription'),
	(12, 'Premium Plano de associação', 4, 3, 250.00, '0', '0', '0', 1602423528, 'pending', 'wire_transfer', '::1', 'Premium Plano de associação', 'Subscription'),
	(13, 'Premium Plano de associação', 4, 3, 250.00, '0', '0', '0', 1602423602, 'pending', 'wire_transfer', '::1', 'Premium Plano de associação', 'Subscription'),
	(14, 'Motorila', 9, 3, 60.00, '1', '1', '1', 1602599334, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Urgente Realçar', 'Premium Ad'),
	(15, 'Maputo', 11, 3, 60.00, '1', '1', '1', 1602600356, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Urgente Realçar', 'Premium Ad'),
	(16, 'Aleusaa', 14, 6, 35.00, '1', '1', '0', 1602601524, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Urgente', 'Premium Ad'),
	(17, 'ewrewr', 15, 6, 35.00, '1', '1', '0', 1602606395, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Urgente', 'Premium Ad'),
	(18, 'dsdsadsa', 16, 6, 35.00, '1', '1', '0', 1602606591, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Urgente', 'Premium Ad'),
	(19, 'scsfsafsf', 17, 6, 10.00, '1', '0', '0', 1602607718, 'pending', 'wire_transfer', '::1', 'Pacote Destaque', 'Premium Ad'),
	(20, 'safsafsa', 18, 6, 10.00, '1', '0', '0', 1602607891, 'pending', 'wire_transfer', '::1', 'Pacote Destaque', 'Premium Ad'),
	(21, 'adadasd', 19, 6, 10.00, '1', '0', '0', 1602608867, 'pending', 'wire_transfer', '::1', 'Pacote Destaque', 'Premium Ad'),
	(22, 'fsdfsdf', 20, 6, 35.00, '1', '1', '0', 1602608947, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Urgente', 'Premium Ad'),
	(23, 'rwerewr', 21, 6, 25.00, '0', '0', '1', 1602609081, 'pending', 'wire_transfer', '::1', 'Pacote Realçar', 'Premium Ad'),
	(24, 'sgdsgsda', 22, 6, 25.00, '0', '1', '0', 1602609230, 'pending', 'wire_transfer', '::1', 'Pacote Urgente', 'Premium Ad'),
	(25, 'fdfdsf', 23, 6, 35.00, '1', '0', '1', 1602610401, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Realçar', 'Premium Ad'),
	(26, 'rwerwer', 24, 6, 60.00, '1', '1', '1', 1602610457, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Urgente Realçar', 'Premium Ad'),
	(27, '4545', 25, 6, 50.00, '0', '1', '1', 1602611127, 'pending', 'wire_transfer', '::1', 'Pacote Urgente Realçar', 'Premium Ad'),
	(28, '4234324', 26, 6, 10.00, '1', '0', '0', 1602611255, 'pending', 'wire_transfer', '::1', 'Pacote Destaque', 'Premium Ad'),
	(29, 'ddsg', 27, 6, 35.00, '1', '0', '1', 1602611370, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Realçar', 'Premium Ad'),
	(30, 'dfsafas', 29, 6, 10.00, '1', '0', '0', 1602625084, 'pending', 'wire_transfer', '::1', 'Pacote Destaque', 'Premium Ad'),
	(31, 'sdafdsf', 30, 6, 25.00, '0', '0', '1', 1602625332, 'pending', 'wire_transfer', '::1', 'Pacote Realçar', 'Premium Ad'),
	(32, 'Qual', 31, 6, 35.00, '1', '0', '1', 1602625551, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Realçar', 'Premium Ad'),
	(33, 'affdsfas', 32, 6, 10.00, '1', '0', '0', 1602625871, 'pending', 'wire_transfer', '::1', 'Pacote Destaque', 'Premium Ad'),
	(34, 'fagasg', 33, 6, 50.00, '0', '1', '1', 1602626473, 'pending', 'wire_transfer', '::1', 'Pacote Urgente Realçar', 'Premium Ad'),
	(35, 'saF', 34, 6, 10.00, '1', '0', '0', 1602626588, 'pending', 'wire_transfer', '::1', 'Pacote Destaque', 'Premium Ad'),
	(36, 'dgsffasf', 36, 6, 60.00, '1', '1', '1', 1602670064, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Urgente Realçar', 'Premium Ad'),
	(37, 'Maputo', 37, 6, 10.00, '1', '0', '0', 1602670604, 'pending', 'wire_transfer', '::1', 'Pacote Destaque', 'Premium Ad'),
	(38, 'Asdweef', 39, 6, 35.00, '1', '1', '0', 1602671426, 'pending', 'wire_transfer', '::1', 'Pacote Destaque Urgente', 'Premium Ad');
/*!40000 ALTER TABLE `bltransaction` ENABLE KEYS */;

-- Dumping structure for table boladas.blupgrades
CREATE TABLE IF NOT EXISTS `blupgrades` (
  `upgrade_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sub_id` int(11) unsigned NOT NULL DEFAULT 0,
  `user_id` int(11) unsigned NOT NULL DEFAULT 0,
  `upgrade_lasttime` int(11) unsigned NOT NULL DEFAULT 0,
  `upgrade_expires` int(11) unsigned NOT NULL DEFAULT 0,
  `unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_subscription_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_profile_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_subscription_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authorizenet_subscription_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_day` int(2) DEFAULT NULL,
  `length` int(4) DEFAULT NULL,
  `interval` int(4) DEFAULT NULL,
  `trial_days` int(4) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_trial_ends` date DEFAULT NULL,
  `date_canceled` datetime DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`upgrade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blupgrades: 2 rows
/*!40000 ALTER TABLE `blupgrades` DISABLE KEYS */;
/*!40000 ALTER TABLE `blupgrades` ENABLE KEYS */;

-- Dumping structure for table boladas.bluser
CREATE TABLE IF NOT EXISTS `bluser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT 1,
  `username` varchar(255) DEFAULT NULL,
  `user_type` enum('user','seller') DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `forgot` varchar(255) DEFAULT NULL,
  `confirm` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` enum('0','1','2') DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(225) DEFAULT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `sex` enum('Male','Female','Other') DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(225) DEFAULT NULL,
  `image` varchar(225) NOT NULL DEFAULT 'default_user.png',
  `lastactive` datetime DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `googleplus` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `oauth_provider` enum('','facebook','google','twitter') DEFAULT NULL,
  `oauth_uid` varchar(100) DEFAULT NULL,
  `oauth_link` varchar(255) DEFAULT NULL,
  `online` enum('0','1') NOT NULL DEFAULT '0',
  `notify` enum('0','1') DEFAULT '0',
  `notify_cat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table boladas.bluser: 4 rows
/*!40000 ALTER TABLE `bluser` DISABLE KEYS */;
INSERT INTO `bluser` (`id`, `group_id`, `username`, `user_type`, `password_hash`, `forgot`, `confirm`, `email`, `status`, `view`, `created_at`, `updated_at`, `name`, `tagline`, `description`, `website`, `sex`, `phone`, `postcode`, `address`, `country`, `city`, `image`, `lastactive`, `facebook`, `twitter`, `googleplus`, `instagram`, `linkedin`, `youtube`, `oauth_provider`, `oauth_uid`, `oauth_link`, `online`, `notify`, `notify_cat`) VALUES
	(3, 1, 'bobo', NULL, '$2y$13$2c05cqSeY0rUObrXJCAZb.Isong7rziRMg2Wd55p8SDXAdD/VUCAe', NULL, NULL, 'bobo@gmail.com', '1', NULL, '2020-09-22 15:36:57', '2020-09-28 07:02:03', 'bobo', NULL, 'Male', NULL, 'Male', NULL, NULL, NULL, 'Moçambique', NULL, 'bobo_13380137502.png', '2020-10-14 16:09:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL),
	(4, 1, 'user', NULL, '$2y$13$JiGnk4MjuWAxZ0z3tII6fOuqGYPuHAPz/SBIP50on48YM/8xc8RQ6', NULL, NULL, 'user@email.com', '0', NULL, '2020-10-03 20:52:18', '2020-10-03 20:52:34', 'User', NULL, 'Male', NULL, 'Male', NULL, NULL, NULL, 'Moçambique', NULL, 'user_3806516952.png', '2020-10-04 00:35:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL),
	(5, 1, 'bobo1', NULL, '$2y$13$2RgpT0Ot8W0j1BjLo4.dJ.V7YwCJfV2FPSquV1CMZPkgFeqcUK5QO', NULL, '08917796', 'dercio@gmail.com', '0', NULL, '2020-10-04 11:22:07', '2020-10-04 11:22:07', 'dede', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'India', 'Jodhpur', 'default_user.png', '2020-10-04 23:12:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL),
	(6, 1, 'herve', NULL, '$2y$13$p4O.jLPiGkRzLx6Yb57fmevY.RTHW8XtUU3taeAbCbrT7ENenIJMK', NULL, '04765036', 'herve@gmail.com', '1', NULL, '2020-10-05 08:37:45', '2020-10-05 08:41:08', 'Herve', NULL, '', NULL, 'Male', NULL, NULL, NULL, 'Moçambique', 'Jodhpur', 'default_user.png', '2020-10-13 19:25:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL),
	(7, 1, 'hjonas', NULL, '$2y$13$/D3T2U9iMxh92FztiX.Qb.ObMEG2J.GRpgQ8IQLpilJplRoC0F2H2', NULL, '82049382', 'hvjonas@gmail.com', '0', NULL, '2020-10-10 22:31:55', '2020-10-10 22:31:55', 'Helio Jonas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'India', 'Jodhpur', 'default_user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL);
/*!40000 ALTER TABLE `bluser` ENABLE KEYS */;

-- Dumping structure for table boladas.blusergroups
CREATE TABLE IF NOT EXISTS `blusergroups` (
  `group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_removable` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `group_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ad_limit` int(11) DEFAULT NULL,
  `ad_duration` smallint(10) DEFAULT NULL,
  `urgent_project_fee` double(8,2) NOT NULL DEFAULT 0.00,
  `featured_project_fee` double(8,2) NOT NULL DEFAULT 0.00,
  `highlight_project_fee` double(8,2) NOT NULL DEFAULT 0.00,
  `featured_duration` smallint(10) DEFAULT NULL,
  `urgent_duration` smallint(10) DEFAULT NULL,
  `highlight_duration` smallint(10) DEFAULT NULL,
  `top_search_result` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_on_home` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_in_home_search` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table boladas.blusergroups: 3 rows
/*!40000 ALTER TABLE `blusergroups` DISABLE KEYS */;
INSERT INTO `blusergroups` (`group_id`, `group_removable`, `group_name`, `ad_limit`, `ad_duration`, `urgent_project_fee`, `featured_project_fee`, `highlight_project_fee`, `featured_duration`, `urgent_duration`, `highlight_duration`, `top_search_result`, `show_on_home`, `show_in_home_search`) VALUES
	(1, 0, 'Registerd users (Free)', 50, 30, 25.00, 10.00, 25.00, 10, 20, 30, 'no', 'no', 'no'),
	(2, 0, 'Premium', 50, 30, 0.00, 100.00, 150.00, 0, 0, 0, 'yes', 'yes', 'yes'),
	(3, 0, 'Basic', 50, 30, 0.00, 0.00, 0.00, 0, 0, 0, 'yes', 'no', 'no');
/*!40000 ALTER TABLE `blusergroups` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
