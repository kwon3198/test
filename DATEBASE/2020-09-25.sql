-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: kwon
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_attach`
--

DROP TABLE IF EXISTS `tbl_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_attach` (
  `full_name` varchar(150) NOT NULL,
  `regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `bno` int(11) NOT NULL,
  PRIMARY KEY (`full_name`),
  KEY `fk_tbl_attach_tbl_product1_idx` (`bno`),
  CONSTRAINT `fk_tbl_attach_tbl_product1` FOREIGN KEY (`bno`) REFERENCES `tbl_product` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attach`
--

LOCK TABLES `tbl_attach` WRITE;
/*!40000 ALTER TABLE `tbl_attach` DISABLE KEYS */;
INSERT INTO `tbl_attach` VALUES ('/2019/10/20/s_6628ae49-d5d6-4911-a79e-5728b513cfb6_웹툰사이트.jpg','2019-10-20 02:10:47',0),('/2019/10/20/s_cf415fbe-754b-4d47-9ecd-0339438dc24f_logo.png','2019-10-20 02:10:47',0);
/*!40000 ALTER TABLE `tbl_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_brand` (
  `brdname` varchar(30) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `brdsun` int(11) NOT NULL,
  PRIMARY KEY (`brand`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_brand`
--

LOCK TABLES `tbl_brand` WRITE;
/*!40000 ALTER TABLE `tbl_brand` DISABLE KEYS */;
INSERT INTO `tbl_brand` VALUES ('구찌','guggi',1),('폴로','polo',2),('오프화이트','OFF-WHITE',3);
/*!40000 ALTER TABLE `tbl_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `catename` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `catesun` int(11) NOT NULL,
  PRIMARY KEY (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES ('상의','top',1),('하의','bottom',2),('아우터','outer',3),('가죽제품','reder',4);
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_member` (
  `user_id` varchar(50) NOT NULL,
  `user_pw` varchar(255) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `point` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `levels` varchar(50) NOT NULL DEFAULT 'ROLE_USER',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES ('admin','$2a$10$gu6dQmG7SKLdZpSLic1U3uKyJYntY6pQikZyJCz5vYxPhz6iG3v02','관리자tester','user02@edu.com',0,1,'ROLE_ADMIN','2019-10-15 10:41:44','2020-09-22 00:04:46'),('test','$2a$10$4zDSvlJTL8thHS10nCfXsuh4.k3Ms8koQd51nWFauMD4F2wNcscWy','테스트','테스트@naver.com',100,1,'ROLE_USER','2020-09-18 05:52:20','2020-09-18 05:52:20'),('tkrwp','$2a$10$gk0bjLhMXCgqXOSkfLFpvuKXeWwi2oeNAnPHl7zsDM9.mPZSzPlN6','삭제','삭제@삭제',0,0,'ROLE_USER','2020-09-22 00:07:49','2020-09-22 00:24:43');
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product` (
  `bno` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `content` text,
  `brand` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `sales` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `view_count` int(11) DEFAULT '0',
  `reply_count` int(11) DEFAULT '0',
  PRIMARY KEY (`bno`),
  KEY `fk_tbl_product_tbl_category1_idx` (`category`),
  KEY `fk_tbl_product_tbl_brand1_idx` (`brand`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (19,'test','123','guggi',123,'outer',123,123,'2020-09-25 01:37:07','2020-09-25 02:00:20',2,0),(20,'test','tset','polo',10000,'reder',1,1,'2020-09-25 01:44:04','2020-09-25 01:57:03',2,0),(21,'test','tset','테스트브랜드',1,'top',1,1,'2020-09-25 05:45:22','2020-09-25 05:45:22',0,0);
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reply`
--

DROP TABLE IF EXISTS `tbl_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reply` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bno` int(11) NOT NULL,
  PRIMARY KEY (`rno`),
  KEY `fk_tbl_reply_tbl_product1_idx` (`bno`),
  CONSTRAINT `fk_tbl_reply_tbl_product1` FOREIGN KEY (`bno`) REFERENCES `tbl_product` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reply`
--

LOCK TABLES `tbl_reply` WRITE;
/*!40000 ALTER TABLE `tbl_reply` DISABLE KEYS */;
INSERT INTO `tbl_reply` VALUES (1,'1:댓글을 수정   MOD','user02','2019-10-17 02:39:01','2019-10-18 01:52:51',0),(5,'댓글 내용 테스트 입니다.','test2','2019-10-17 09:12:31','2019-10-18 06:16:21',0),(7,'REPLY TEXT5','test5','2019-10-17 10:01:34','2019-10-17 10:01:34',0),(8,'REPLY TEXT6','test6','2019-10-17 10:01:42','2019-10-17 10:01:42',0),(9,'REPLY TEXT7','test6','2019-10-17 10:02:06','2019-10-17 10:02:06',0),(10,'REPLY TEXT8','test6','2019-10-17 10:02:16','2019-10-17 10:02:16',0),(11,'REPLY TEXT9','test6','2019-10-17 10:02:31','2019-10-17 10:02:31',0),(12,'REPLY TEXT10','test6','2019-10-17 10:02:49','2019-10-17 10:02:49',0),(13,'REPLY TEXT11','test6','2019-10-17 10:02:56','2019-10-17 10:02:56',0),(14,'REPLY TEXT14','REPLYER','2019-10-18 00:12:52','2019-10-18 06:11:17',0),(15,'테스트 댓글 내용 입니다.15','사용자','2019-10-18 06:14:46','2019-10-18 06:35:28',0);
/*!40000 ALTER TABLE `tbl_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'kwon'
--

--
-- Dumping routines for database 'kwon'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-25 17:12:03
