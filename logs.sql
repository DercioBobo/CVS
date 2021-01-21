-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.11-MariaDB - mariadb.org binary distribution
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

-- Dumping structure for table boladas.log_pagamento
CREATE TABLE IF NOT EXISTS `log_pagamento` (
  `id` int(220) NOT NULL AUTO_INCREMENT,
  `valor` double NOT NULL DEFAULT 0,
  `tipo` varchar(220) NOT NULL,
  `reference` varchar(50) NOT NULL DEFAULT '',
  `numero_telefone` varchar(220) NOT NULL,
  `user_id` varchar(220) NOT NULL,
  `data` datetime NOT NULL,
  `estado` varchar(220) DEFAULT NULL,
  `resposta` varchar(220) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table boladas.log_pagamento: ~2 rows (approximately)
DELETE FROM `log_pagamento`;
/*!40000 ALTER TABLE `log_pagamento` DISABLE KEYS */;
INSERT INTO `log_pagamento` (`id`, `valor`, `tipo`, `reference`, `numero_telefone`, `user_id`, `data`, `estado`, `resposta`, `created_by`, `created_on`) VALUES
	(1, 0, 'm-pesa', 'OEUT01611209167', '844443947', '3', '2021-01-21 08:06:07', '', '', 3, '2021-01-21 08:06:07'),
	(2, 0, 'm-pesa', 'OEUT01611209167', '844443947', '3', '2021-01-21 08:06:29', 'Request processed successfully', '{"output_ResponseCode":"INS-0","output_ResponseDesc":"Request processed successfully","output_TransactionID":"8AL05GXL79O","output_ConversationID":"7dc387c7926d46ecbee22efd26bd246c","output_ThirdPartyReference":"COMLEI16', 3, '2021-01-21 08:06:29');
/*!40000 ALTER TABLE `log_pagamento` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
