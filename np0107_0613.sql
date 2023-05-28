CREATE DATABASE  IF NOT EXISTS `np` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `np`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: np
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `ad`
--

DROP TABLE IF EXISTS `ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad` (
  `adid` int NOT NULL AUTO_INCREMENT,
  `file_path` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ad_file` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`adid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad`
--

LOCK TABLES `ad` WRITE;
/*!40000 ALTER TABLE `ad` DISABLE KEYS */;
INSERT INTO `ad` VALUES (1,'image','1.gif'),(2,'image','2.gif'),(3,'image','3.gif');
/*!40000 ALTER TABLE `ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `mid` int NOT NULL,
  `pid` int NOT NULL,
  `amount` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`mid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cart_view`
--

DROP TABLE IF EXISTS `cart_view`;
/*!50001 DROP VIEW IF EXISTS `cart_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cart_view` AS SELECT 
 1 AS `mid`,
 1 AS `pid`,
 1 AS `price`,
 1 AS `amount`,
 1 AS `total`,
 1 AS `date`,
 1 AS `name`,
 1 AS `type`,
 1 AS `size`,
 1 AS `color`,
 1 AS `count`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cms`
--

DROP TABLE IF EXISTS `cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms` (
  `id` int NOT NULL,
  `pwd` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms`
--

LOCK TABLES `cms` WRITE;
/*!40000 ALTER TABLE `cms` DISABLE KEYS */;
INSERT INTO `cms` VALUES (10827108,10827108),(10844250,10844250),(10844252,10844252),(11044270,11044270),(11044271,11044271);
/*!40000 ALTER TABLE `cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colrow`
--

DROP TABLE IF EXISTS `colrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colrow` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colrow`
--

LOCK TABLES `colrow` WRITE;
/*!40000 ALTER TABLE `colrow` DISABLE KEYS */;
/*!40000 ALTER TABLE `colrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marquee`
--

DROP TABLE IF EXISTS `marquee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marquee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marquee`
--

LOCK TABLES `marquee` WRITE;
/*!40000 ALTER TABLE `marquee` DISABLE KEYS */;
INSERT INTO `marquee` VALUES (1,'ヽ(✿ﾟ▽ﾟ)ノヽ(✿ﾟ▽ﾟ)ノヽ(✿ﾟ▽ﾟ)ノ1/8-1/14新品特賣 只有7天要買要快!!!   Σ( ° △ °)Σ( ° △ °)Σ( ° △ °)全系列商品優惠倒數計時 還有7天Σ( ° △ °)Σ( ° △ °)Σ( ° △ °)  o(￣▽￣)ｄo(￣▽￣)ｄo(￣▽￣)ｄ新年換新衣 買衣送衣o(￣▽￣)ｄo(￣▽￣)ｄo(￣▽￣)ｄ'),(11,'666'),(12,'ヽ(✿ﾟ▽ﾟ)ノ1/8-1/14新品特賣 只有7天要買要快!!!ヽ(✿ﾟ▽ﾟ)ノ Σ( ° △ °)全系列商品優惠倒數計時 還有7天Σ( ° △ °) o(￣▽￣)ｄ新年換新衣 買衣送衣o(￣▽￣)ｄ'),(13,'ヽ(✿ﾟ▽ﾟ)ノヽ(✿ﾟ▽ﾟ)ノヽ(✿ﾟ▽ﾟ)ノ1/8-1/14新品特賣 只有7天要買要快!!!   Σ( ° △ °)Σ( ° △ °)Σ( ° △ °)全系列商品優惠倒數計時 還有7天Σ( ° △ °)Σ( ° △ °)Σ( ° △ °)  o(￣▽￣)ｄo(￣▽￣)ｄo(￣▽￣)ｄ新年換新衣 買衣送衣o(￣▽￣)ｄo(￣▽￣)ｄo(￣▽￣)ｄ');
/*!40000 ALTER TABLE `marquee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (2,'b','b','b@xxx.xxx');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `msg_id` int NOT NULL AUTO_INCREMENT,
  `ptype` int NOT NULL,
  `uname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `msg_date` date NOT NULL,
  `msg_content` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `star` int NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (28,1,'b','2023-01-07','讚!讚!讚!',4),(29,5,'b','2023-01-07','不合穿~',3),(30,3,'b','2023-01-07','品質不佳',1),(31,2,'b','2023-01-07','cp值超高',5),(32,7,'b','2023-01-07','出貨速度很慢!',1),(33,4,'b','2023-01-07','不推!',2),(34,6,'b','2023-01-07','好穿，已再回購~~~',4);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `mid` int NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tel` varchar(20) NOT NULL,
  `pay_way` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pay_name` varchar(45) DEFAULT NULL,
  `pay_card` varchar(45) DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `total` int NOT NULL,
  `order_date` datetime(3) NOT NULL,
  `ship_status` varchar(45) NOT NULL DEFAULT '未出貨,已出貨,已退貨',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (22,2,'路人甲','0912354789','宅配','路人甲','333333333399','中原大學',8550,'2023-01-07 05:52:17.000','已退貨'),(23,2,'我最美','0944678852','宅配','我最美','4546798754313','中壢市中北路200號',14800,'2023-01-07 05:55:38.000','已出貨'),(24,2,'王老五','00up654xu;657987','超取',NULL,NULL,'便利超商中原店',18600,'2023-01-07 05:58:17.000','已出貨');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `order2_view`
--

DROP TABLE IF EXISTS `order2_view`;
/*!50001 DROP VIEW IF EXISTS `order2_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order2_view` AS SELECT 
 1 AS `oid`,
 1 AS `mid`,
 1 AS `order_date`,
 1 AS `total`,
 1 AS `pay_way`,
 1 AS `ship_status`,
 1 AS `pid`,
 1 AS `amount`,
 1 AS `price`,
 1 AS `name`,
 1 AS `size`,
 1 AS `color`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_view`
--

DROP TABLE IF EXISTS `order_view`;
/*!50001 DROP VIEW IF EXISTS `order_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_view` AS SELECT 
 1 AS `oid`,
 1 AS `mid`,
 1 AS `order_date`,
 1 AS `total`,
 1 AS `pay_way`,
 1 AS `ship_status`,
 1 AS `pid`,
 1 AS `amount`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pid` int NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `note` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` int NOT NULL,
  `type` int NOT NULL,
  `size` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `color` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `count` int NOT NULL,
  `status` varchar(3) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'休閒百搭牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1500,3,'S','藍',10,'off'),(2,'休閒百搭牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1500,3,'S','深藍',0,'on'),(3,'休閒百搭牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1500,3,'S','黑',2,'on'),(4,'休閒百搭牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1500,3,'M','藍',5,'on'),(5,'休閒百搭牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1500,3,'M','深藍',5,'on'),(6,'休閒百搭牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1500,3,'M','黑',5,'on'),(7,'休閒百搭牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1500,3,'L','藍',5,'on'),(8,'休閒百搭牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1500,3,'L','深藍',5,'on'),(9,'休閒百搭牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1500,3,'L','黑',5,'on'),(10,'休閒百搭牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1500,3,'XL','藍',5,'on'),(11,'休閒百搭牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1500,3,'XL','深藍',5,'on'),(12,'休閒百搭牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1500,3,'XL','黑',3,'on'),(13,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'S','藍',5,'on'),(14,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'S','深藍',5,'on'),(15,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'S','黑',5,'on'),(16,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'S','灰',5,'on'),(17,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'M','藍',5,'on'),(18,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'M','深藍',5,'on'),(19,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'M','黑',5,'on'),(20,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'M','灰',0,'on'),(21,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'L','藍',5,'on'),(22,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'L','深藍',5,'on'),(23,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'L','黑',5,'on'),(24,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'L','灰',5,'on'),(25,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'XL','藍',5,'on'),(26,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'XL','深藍',5,'on'),(27,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'XL','黑',5,'on'),(28,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1450,1,'XL','灰',5,'on'),(29,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'S','白',5,'on'),(30,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'S','深藍',5,'on'),(31,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'S','黑',5,'on'),(32,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'S','灰',5,'on'),(33,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'S','淺藍',3,'on'),(34,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'M','白',5,'on'),(35,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'M','深藍',5,'on'),(36,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'M','黑',5,'on'),(37,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'M','灰',5,'on'),(38,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'M','淺藍',5,'on'),(39,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'L','白',5,'on'),(40,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'L','深藍',0,'on'),(41,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'L','黑',5,'on'),(42,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'L','灰',5,'on'),(43,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'L','淺藍',5,'on'),(44,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'XL','白',5,'on'),(45,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'XL','深藍',5,'on'),(46,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'XL','黑',5,'on'),(47,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'XL','灰',5,'on'),(48,'簡約抗皺親膚長袖襯衫','材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',800,5,'XL','淺藍',5,'on'),(49,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'S','白',5,'on'),(50,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'S','深藍',5,'on'),(51,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'S','黑',5,'on'),(52,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'S','灰',5,'on'),(53,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'S','淺藍',5,'on'),(54,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'M','白',5,'on'),(55,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'M','深藍',5,'on'),(56,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'M','黑',5,'on'),(57,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'M','灰',5,'on'),(58,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'M','淺藍',5,'on'),(59,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'L','白',5,'on'),(60,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'L','深藍',5,'on'),(61,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'L','黑',5,'on'),(62,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'L','灰',2,'on'),(63,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'L','淺藍',5,'on'),(64,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'XL','白',5,'on'),(65,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'XL','深藍',5,'on'),(66,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'XL','黑',5,'on'),(67,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'XL','灰',5,'on'),(68,'保暖刷毛連帽T','材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1300,7,'XL','淺藍',5,'on'),(69,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'S','白',5,'on'),(70,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'S','黑',5,'on'),(71,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'S','灰',5,'on'),(72,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'S','藍',5,'on'),(73,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'M','白',5,'on'),(74,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'M','黑',5,'on'),(75,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'M','灰',5,'on'),(76,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'M','藍',5,'on'),(77,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'L','白',5,'on'),(78,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'L','黑',5,'on'),(79,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'L','灰',5,'on'),(80,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'L','藍',5,'on'),(81,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'XL','白',5,'on'),(82,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'XL','黑',5,'on'),(83,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'XL','灰',5,'on'),(84,'棉質素面短袖T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,9,'XL','藍',5,'on'),(85,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'S','藍',5,'on'),(86,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'S','深藍',5,'on'),(87,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'S','黑',5,'on'),(88,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'S','灰',5,'on'),(89,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'M','藍',5,'on'),(90,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'M','深藍',5,'on'),(91,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'M','黑',5,'on'),(92,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'M','灰',5,'on'),(93,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'L','藍',5,'on'),(94,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'L','深藍',5,'on'),(95,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'L','黑',5,'on'),(96,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'L','灰',5,'on'),(97,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'XL','藍',5,'on'),(98,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'XL','深藍',5,'on'),(99,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'XL','黑',5,'on'),(100,'彈力休閒褲','材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',850,2,'XL','灰',5,'on'),(101,'直筒牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',950,4,'S','藍',5,'on'),(102,'直筒牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',950,4,'S','深藍',5,'on'),(103,'直筒牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',950,4,'S','黑',1,'on'),(104,'直筒牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',950,4,'M','藍',5,'on'),(105,'直筒牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',950,4,'M','深藍',5,'on'),(106,'直筒牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',950,4,'M','黑',5,'on'),(107,'直筒牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',950,4,'L','藍',5,'on'),(108,'直筒牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',950,4,'L','深藍',5,'on'),(109,'直筒牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',950,4,'L','黑',5,'on'),(110,'直筒牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',950,4,'XL','藍',5,'on'),(111,'直筒牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',950,4,'XL','深藍',5,'on'),(112,'直筒牛仔褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',950,4,'XL','黑',5,'on'),(113,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'S','白',5,'on'),(114,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'S','乳白',5,'on'),(115,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'S','藍',5,'on'),(116,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'S','灰',5,'on'),(117,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'S','黑',5,'on'),(118,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'M','白',5,'on'),(119,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'M','乳白',5,'on'),(120,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'M','藍',5,'on'),(121,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'M','灰',5,'on'),(122,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'M','黑',5,'on'),(123,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'L','白',5,'on'),(124,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'L','乳白',5,'on'),(125,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'L','藍',5,'on'),(126,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'L','灰',5,'on'),(127,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'L','黑',5,'on'),(128,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'XL','白',5,'on'),(129,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'XL','乳白',5,'on'),(130,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'XL','藍',5,'on'),(131,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'XL','灰',5,'on'),(132,'條紋襯衫','材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',600,6,'XL','黑',5,'on'),(133,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'S','白',5,'on'),(134,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'S','藍',5,'on'),(135,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'S','黑',5,'on'),(136,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'S','灰',5,'on'),(137,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'M','白',5,'on'),(138,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'M','藍',2,'on'),(139,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'M','黑',5,'on'),(140,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'M','灰',5,'on'),(141,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'L','白',5,'on'),(142,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'L','藍',5,'on'),(143,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'L','黑',5,'on'),(144,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'L','灰',5,'on'),(145,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'XL','白',5,'on'),(146,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'XL','藍',5,'on'),(147,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'XL','黑',5,'on'),(148,'運動空氣層連帽T','材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',1000,8,'XL','灰',5,'on'),(149,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'S','軍綠',0,'on'),(150,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'S','白',5,'on'),(151,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'S','藍',5,'on'),(152,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'S','黑',5,'on'),(153,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'S','灰',5,'on'),(154,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'M','軍綠',5,'on'),(155,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'M','白',5,'on'),(156,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'M','藍',5,'on'),(157,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'M','黑',5,'on'),(158,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'M','灰',5,'on'),(159,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'L','軍綠',5,'on'),(160,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'L','白',5,'on'),(161,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'L','藍',5,'on'),(162,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'L','黑',5,'on'),(163,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'L','灰',5,'on'),(164,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'XL','軍綠',5,'on'),(165,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'XL','白',5,'on'),(166,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'XL','藍',5,'on'),(167,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'XL','黑',5,'on'),(168,'字母圖案T恤','材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品<br>',900,10,'XL','灰',5,'on'),(169,'保暖休閒褲','材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品',111,1,'XL','黃',5,'on');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ship`
--

DROP TABLE IF EXISTS `ship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ship` (
  `oid` int NOT NULL,
  `pid` int NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`pid`,`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ship`
--

LOCK TABLES `ship` WRITE;
/*!40000 ALTER TABLE `ship` DISABLE KEYS */;
INSERT INTO `ship` VALUES (24,12,2,1500),(24,20,5,1450),(22,23,3,1450),(23,33,2,800),(23,40,5,800),(24,62,3,1300),(22,79,2,900),(23,103,4,950),(22,115,4,600),(24,138,3,1000),(23,149,5,900);
/*!40000 ALTER TABLE `ship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `cart_view`
--

/*!50001 DROP VIEW IF EXISTS `cart_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cart_view` AS select `b`.`mid` AS `mid`,`b`.`pid` AS `pid`,`a`.`price` AS `price`,`b`.`amount` AS `amount`,(`a`.`price` * `b`.`amount`) AS `total`,`b`.`date` AS `date`,`a`.`name` AS `name`,`a`.`type` AS `type`,`a`.`size` AS `size`,`a`.`color` AS `color`,`a`.`count` AS `count`,`a`.`status` AS `status` from (`product` `a` join `cart` `b` on((`a`.`pid` = `b`.`pid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order2_view`
--

/*!50001 DROP VIEW IF EXISTS `order2_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order2_view` AS select `a`.`oid` AS `oid`,`a`.`mid` AS `mid`,`a`.`order_date` AS `order_date`,`a`.`total` AS `total`,`a`.`pay_way` AS `pay_way`,`a`.`ship_status` AS `ship_status`,`a`.`pid` AS `pid`,`a`.`amount` AS `amount`,`a`.`price` AS `price`,`b`.`name` AS `name`,`b`.`size` AS `size`,`b`.`color` AS `color` from (`order_view` `a` join `product` `b` on((`a`.`pid` = `b`.`pid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_view`
--

/*!50001 DROP VIEW IF EXISTS `order_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_view` AS select `a`.`oid` AS `oid`,`a`.`mid` AS `mid`,`a`.`order_date` AS `order_date`,`a`.`total` AS `total`,`a`.`pay_way` AS `pay_way`,`a`.`ship_status` AS `ship_status`,`b`.`pid` AS `pid`,`b`.`amount` AS `amount`,`b`.`price` AS `price` from (`order` `a` join `ship` `b` on((`a`.`oid` = `b`.`oid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-07  6:13:31
