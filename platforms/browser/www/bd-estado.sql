-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.3.8-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para sose_bd
CREATE DATABASE IF NOT EXISTS `sose_bd` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sose_bd`;

-- Copiando estrutura para tabela sose_bd.sose_cidade
CREATE TABLE IF NOT EXISTS `sose_cidade` (
  `cidade_id` int(11) NOT NULL AUTO_INCREMENT,
  `cidade_nome` varchar(355) DEFAULT '0',
  `cidade_estado` int(11) DEFAULT 0,
  PRIMARY KEY (`cidade_id`),
  KEY `cidade_estado` (`cidade_estado`),
  CONSTRAINT `cidade_estado` FOREIGN KEY (`cidade_estado`) REFERENCES `sose_estado` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela sose_bd.sose_cidade: ~0 rows (aproximadamente)
DELETE FROM `sose_cidade`;
/*!40000 ALTER TABLE `sose_cidade` DISABLE KEYS */;
INSERT INTO `sose_cidade` (`cidade_id`, `cidade_nome`, `cidade_estado`) VALUES
	(1, 'Maceió', 2);
/*!40000 ALTER TABLE `sose_cidade` ENABLE KEYS */;

-- Copiando estrutura para tabela sose_bd.sose_estado
CREATE TABLE IF NOT EXISTS `sose_estado` (
  `estado_id` int(11) NOT NULL AUTO_INCREMENT,
  `estado_nome` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela sose_bd.sose_estado: ~27 rows (aproximadamente)
DELETE FROM `sose_estado`;
/*!40000 ALTER TABLE `sose_estado` DISABLE KEYS */;
INSERT INTO `sose_estado` (`estado_id`, `estado_nome`) VALUES
	(1, 'Acre (AC)'),
	(2, 'Alagoas (AL)'),
	(3, 'Amapá (AP)'),
	(4, 'Amazonas (AM)'),
	(5, 'Bahia (BA)'),
	(6, 'Ceará (CE)'),
	(7, 'Distrito Federal (DF)'),
	(8, 'Espírito Santo (ES)'),
	(9, 'Goiás (GO)'),
	(10, 'Maranhão (MA)'),
	(11, 'Mato Grosso (MT)'),
	(12, 'Mato Grosso do Sul (MS)'),
	(13, 'Minas Gerais (MG)'),
	(14, 'Pará (PA)'),
	(15, 'Paraíba (PB)'),
	(16, 'Paraná (PR)'),
	(17, 'Pernambuco (PE)'),
	(18, 'Piauí (PI)'),
	(19, 'Rio de Janeiro (RJ)'),
	(20, 'Rio Grande do Norte (RN)'),
	(21, 'Rio Grande do Sul (RS)'),
	(22, 'Rondônia (RO)'),
	(23, 'Roraima (RR)'),
	(24, 'Santa Catarina (SC)'),
	(25, 'São Paulo (SP)'),
	(26, 'Sergipe (SE)'),
	(27, 'Tocantins (TO)');
/*!40000 ALTER TABLE `sose_estado` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
