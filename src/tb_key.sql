/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 5.6.12 : Database - db_database10
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_database10` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_database10`;

/*Table structure for table `tb_key` */

DROP TABLE IF EXISTS `tb_key`;

CREATE TABLE `tb_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `keyWord` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '关键字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=gbk;

/*Data for the table `tb_key` */

insert  into `tb_key`(`id`,`keyWord`) values (1,'C/C++'),(2,'Mysql'),(3,'Oracle'),(7,'Linux'),(8,'spark'),(9,'Hadoop'),(10,'javaEE'),(11,'javaScript'),(12,'java'),(13,'JavaWeb'),(14,'IOS'),(15,'PHP'),(16,'Android'),(17,'OpenStack'),(18,'Swift'),(19,'JQeury'),(20,'Algorithm');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
