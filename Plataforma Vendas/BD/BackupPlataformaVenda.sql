/*
SQLyog Ultimate v12.4.1 (64 bit)
MySQL - 5.7.23 : Database - plataformavenda
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`plataformavenda` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `plataformavenda`;

/*Table structure for table `carrinho` */

DROP TABLE IF EXISTS `carrinho`;

CREATE TABLE `carrinho` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Produto` int(11) NOT NULL,
  `Quantidade` double DEFAULT NULL,
  `Preco` double DEFAULT NULL,
  `Margem` double DEFAULT NULL,
  `ValorTotal` double DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Produto_Carrinho` (`Id_Produto`),
  CONSTRAINT `Produto_Carrinho` FOREIGN KEY (`Id_Produto`) REFERENCES `produtos` (`Id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `carrinho` */

/*Table structure for table `produtos` */

DROP TABLE IF EXISTS `produtos`;

CREATE TABLE `produtos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `CustoCompra` double NOT NULL,
  `Descricao` varchar(200) DEFAULT NULL,
  `Margem` double DEFAULT NULL,
  `Situacao` enum('ATIVO','EXCLUÍDO') DEFAULT 'ATIVO',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `produtos` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
