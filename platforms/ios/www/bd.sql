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

-- Copiando estrutura para tabela sose_bd.sose_usr
CREATE TABLE IF NOT EXISTS `sose_usr` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_nome` varchar(150) DEFAULT NULL,
  `usr_nascimento` varchar(10) DEFAULT NULL,
  `usr_cpf` varchar(14) DEFAULT NULL,
  `usr_cep` varchar(9) DEFAULT NULL,
  `usr_endereco` varchar(255) DEFAULT NULL,
  `usr_estado` int(3) DEFAULT NULL,
  `usr_cidade` int(3) DEFAULT NULL,
  `usr_telefone` varchar(50) DEFAULT NULL,
  `usr_foto` blob DEFAULT NULL,
  `usr_email` varchar(100) DEFAULT NULL,
  `usr_senha` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`usr_id`),
  KEY `usuario_estado` (`usr_estado`),
  KEY `usuario_cidade` (`usr_cidade`),
  CONSTRAINT `usuario_cidade` FOREIGN KEY (`usr_cidade`) REFERENCES `sose_cidade` (`cidade_id`),
  CONSTRAINT `usuario_estado` FOREIGN KEY (`usr_estado`) REFERENCES `sose_estado` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela sose_bd.sose_usr: ~0 rows (aproximadamente)
DELETE FROM `sose_usr`;
/*!40000 ALTER TABLE `sose_usr` DISABLE KEYS */;
INSERT INTO `sose_usr` (`usr_id`, `usr_nome`, `usr_nascimento`, `usr_cpf`, `usr_cep`, `usr_endereco`, `usr_estado`, `usr_cidade`, `usr_telefone`, `usr_foto`, `usr_email`, `usr_senha`) VALUES
	(1, 'teste', '17/05/1993', '085555555', '57038622', 'travessa', 2, 1, '82999430213', NULL, 'rafamerola@gmail.com', '698dc19d489c4e4db73e28a713eab07b');
/*!40000 ALTER TABLE `sose_usr` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
