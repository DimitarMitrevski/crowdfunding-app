CREATE DATABASE  IF NOT EXISTS `my_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `my_db`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: database-1.cfh2luhigg6h.eu-central-1.rds.amazonaws.com    Database: my_db
-- ------------------------------------------------------
-- Server version	8.0.28

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign` (
  `id` varchar(36) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL,
  `goal` int NOT NULL,
  `collected` int NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
INSERT INTO `campaign` VALUES ('0401e9e1e80b41188d676cdd1be30a3c','My 4 campaign','Description of 4 campaign in order to test.',400,400,'successful'),('051e6073bcec45bb804d0f9d581e2125','My 47 campaign','Description of 47 campaign in order to test.',4700,2420,'fraud'),('05928c32a1934f438d2a10257e1f9601','My 12 campaign','Description of 12 campaign in order to test.',1200,0,'fraud'),('0ed5233a35c644999d60c70bc19866a0','My 1 campaign','Description of 1 campaign in order to test.',100,10,'fraud'),('0f98ed0f3662419191a5745cd0e86ea6','My 25 campaign','Description of 25 campaign in order to test.',2500,0,'active'),('10f46156851d4b2eb082384ec81db56a','My 16 campaign','Description of 16 campaign in order to test.',1600,1600,'successful'),('12e30ac87c384f9080340313d1d7cef1','My 37 campaign','Description of 37 campaign in order to test.',3700,0,'active'),('1603e1e723b44dde9dea910cb16a525b','My 77 campaign','Description of 77 campaign in order to test.',7700,0,'active'),('1646130d5edc4f7185d1b9e6010a5312','My 59 campaign','Description of 59 campaign in order to test.',5900,0,'active'),('172882beb9c94218ba809b18403ca7c5','My 41 campaign','Description of 41 campaign in order to test.',4100,0,'active'),('1cba24235e7949229779e0be0030b365','My 71 campaign','Description of 71 campaign in order to test.',7100,0,'active'),('1ce4b24980814904bf8d7e1703c5685a','My 54 campaign','Description of 54 campaign in order to test.',5400,0,'fraud'),('1ecf3f5eae08459f9344dd455c672546','My 84 campaign','Description of 84 campaign in order to test.',8400,0,'fraud'),('209cee6fe6d040a19a655dafdb9e8f04','My 38 campaign','Description of 38 campaign in order to test.',3800,3800,'successful'),('21e5877736bb447aa92ee673d08d4537','My 97 campaign','Description of 97 campaign in order to test.',9700,0,'active'),('228dd478ffa649e49929efadec305b2c','My 44 campaign','Description of 44 campaign in order to test.',4400,4400,'successful'),('2435ce423e4646bd99a03b938d1a8dda','My 7 campaign','Description of 7 campaign in order to test.',700,0,'active'),('24803aea804d46aab54e3883fd1249e8','My 21 campaign','Description of 21 campaign in order to test.',2100,0,'fraud'),('24942a25265a46cfa55da648ba09459b','My 67 campaign','Description of 67 campaign in order to test.',6700,0,'active'),('25d10bc8486e45738f48ac90bd20ee8b','My 80 campaign','Description of 80 campaign in order to test.',8000,8000,'successful'),('2610f490eae745a1ac81a576697971d1','My 86 campaign','Description of 86 campaign in order to test.',8600,8600,'successful'),('2c4474ce88c44a568c126dfbdd5ee009','My 19 campaign','Description of 19 campaign in order to test.',1900,0,'active'),('31e01ba8aecd4a7d8ffb730e8a16e5f7','My 83 campaign','Description of 83 campaign in order to test.',8300,0,'active'),('31ef8e5bf7c14f7aaf5bf0008fc71d59','My 89 campaign','Description of 89 campaign in order to test.',8900,0,'active'),('32c47bab45e041e98eb84f38920a40b1','My 28 campaign','Description of 28 campaign in order to test.',2800,2800,'successful'),('334e0dba2b9a4e0cb501da77025a0f18','My 15 campaign','Description of 15 campaign in order to test.',1500,0,'fraud'),('34a5c357441549ba9b8bba087072f2aa','My 52 campaign','Description of 52 campaign in order to test.',5200,5200,'successful'),('34ed4998fd0340d9a1a275f9115c81d6','My 24 campaign','Description of 24 campaign in order to test.',2400,0,'fraud'),('37d801f89c454393bf6c4d58aefd3e29','My 40 campaign','Description of 40 campaign in order to test.',4000,4000,'successful'),('39ffc9cc0980467a99c62b2ab8f208c5','My 49 campaign','Description of 49 campaign in order to test.',4900,0,'active'),('3aa3825a988b4e658f93346234e3af60','My 8 campaign','Description of 8 campaign in order to test.',800,800,'successful'),('3cf94747da0249ee8ed02e7fd175f471','My 10 campaign','Description of 10 campaign in order to test.',1000,1000,'successful'),('3d59fc48fb244ff6a063dc4d6adafad0','My 30 campaign','Description of 30 campaign in order to test.',3000,0,'fraud'),('4c12ee4d760b4d47a85e3f3b1ca88c41','My 2 campaign','Description of 2 campaign in order to test.',200,200,'successful'),('4e6f8fc6f58d4185a6e09b2f1ec2123e','My 72 campaign','Description of 72 campaign in order to test.',7200,0,'fraud'),('511adbbea95543bc8a33dcf12195ecec','My 79 campaign','Description of 79 campaign in order to test.',7900,0,'active'),('539a13f2174f4768ac9fb9b22838e352','My 94 campaign','Description of 94 campaign in order to test.',9400,9400,'successful'),('5ba55bc9a65241dea80cde44ee9da2b9','My 23 campaign','Description of 23 campaign in order to test.',2300,0,'active'),('5c2a7492314740348b6ebb080f5e2726','My 48 campaign','Description of 48 campaign in order to test.',4800,0,'fraud'),('5cc7b8dd7f9647b6be0b6efd7af9d670','My 6 campaign','Description of 6 campaign in order to test.',600,0,'fraud'),('64bb05a1dc0e49ebb3386e632a3b83a4','My 50 campaign','Description of 50 campaign in order to test.',5000,5000,'successful'),('653ccd2b6d874dc4a3fd9fc339ca5c49','My 32 campaign','Description of 32 campaign in order to test.',3200,3200,'successful'),('670a515acbf44bdd8627ba5876b8e5cd','My 90 campaign','Description of 90 campaign in order to test.',9000,0,'fraud'),('6cc241ba0d7b4297a7709fc626fe5910','My 78 campaign','Description of 78 campaign in order to test.',7800,0,'fraud'),('6fc81784fecc4bb9bc610e37e87fda01','My 29 campaign','Description of 29 campaign in order to test.',2900,0,'active'),('7144cee15d784bd9a85d085e57934028','My 5 campaign','Description of 5 campaign in order to test.',500,0,'active'),('723cfb1510e44d97abad2d1635bb977a','My 17 campaign','Description of 17 campaign in order to test.',1700,0,'active'),('7463d674a61f446aa2c7c182abfc043a','My 3 campaign','Description of 3 campaign in order to test.',300,0,'fraud'),('777d32d787e3469da864dfb38210e865','My 9 campaign','Description of 9 campaign in order to test.',900,0,'fraud'),('78ad9bc44a5e46ad80a6d4c3e9f3a46c','My 45 campaign','Description of 45 campaign in order to test.',4500,0,'fraud'),('90de02aeec424844b69d6df2301ec855','My 75 campaign','Description of 75 campaign in order to test.',7500,0,'fraud'),('926af6dde3b446bf8be688d1fe746a4e','My 18 campaign','Description of 18 campaign in order to test.',1800,0,'fraud'),('9300ef1e052f4b44a9de747177af482e','My 39 campaign','Description of 39 campaign in order to test.',3900,0,'fraud'),('94aed8058caa4842add215973597fd5f','My 22 campaign','Description of 22 campaign in order to test.',2200,2200,'successful'),('958b6fdb3288476e96841fccf4f65a57','My 82 campaign','Description of 82 campaign in order to test.',8200,8200,'successful'),('95fdcc4ff6434e6cb9a17ef63f0ed1f9','My 76 campaign','Description of 76 campaign in order to test.',7600,7600,'successful'),('9b1f3a249732493493ae78c75617307a','My 33 campaign','Description of 33 campaign in order to test.',3300,0,'fraud'),('9faaf27f89984765ac073629db51e177','My 95 campaign','Description of 95 campaign in order to test.',9500,0,'active'),('a251611aa2384c939a56dec4ef13190f','My 43 campaign','Description of 43 campaign in order to test.',4300,0,'active'),('a2f0236f9f9b43c88116110204ae559f','My 61 campaign','Description of 61 campaign in order to test.',6100,0,'active'),('a40f5ae285804946b18683910ec7c5d3','My 57 campaign','Description of 57 campaign in order to test.',5700,0,'fraud'),('a5d14e680f1647cca4fa256aa2200ff5','My 64 campaign','Description of 64 campaign in order to test.',6400,6400,'successful'),('a9628a8be6064eeaaa37eec06cf69442','My 73 campaign','Description of 73 campaign in order to test.',7300,0,'active'),('a9d8a61a541b41bb8ba86d353723caaf','My 35 campaign','Description of 35 campaign in order to test.',3500,0,'active'),('ac7052132a17404e90635666f8213cea','My 51 campaign','Description of 51 campaign in order to test.',5100,0,'fraud'),('acd0cf91d5b24d948b8cbd1f3f667e36','My 36 campaign','Description of 36 campaign in order to test.',3600,0,'fraud'),('b3160334f36e4b678be2687327b33d62','My 58 campaign','Description of 58 campaign in order to test.',5800,5800,'successful'),('b632578378c04e95a49d6d91b513da4f','My 96 campaign','Description of 96 campaign in order to test.',9600,0,'fraud'),('b963631072e6416b9e94f29b0935180d','My 27 campaign','Description of 27 campaign in order to test.',2700,0,'fraud'),('b9eb66acb6a148998441f3c7b399071e','My 87 campaign','Description of 87 campaign in order to test.',8700,0,'fraud'),('b9ec3c194fd9436db07c0fb0c71db13a','My 69 campaign','Description of 69 campaign in order to test.',6900,0,'fraud'),('bee9ca21f6844ad99c2eabced219b21b','My 46 campaign','Description of 46 campaign in order to test.',4600,4600,'successful'),('bf5bf8391dea40809d53cf6937cc2332','My 14 campaign','Description of 14 campaign in order to test.',1400,1400,'successful'),('c1a294a6b9054c7b954aab10d32c2ef2','My 98 campaign','Description of 98 campaign in order to test.',9800,9800,'successful'),('c9b2aa43e9c0498d824eb456d37f7feb','My 85 campaign','Description of 85 campaign in order to test.',8500,0,'active'),('ce83d55ecd6143648ecd7d3068290b52','My 81 campaign','Description of 81 campaign in order to test.',8100,0,'fraud'),('d41d76ff222b47cb82e7539c33d23261','My 63 campaign','Description of 63 campaign in order to test.',6300,0,'fraud'),('d43093f712704de1bd515e88984f612d','My 20 campaign','Description of 20 campaign in order to test.',2000,2000,'successful'),('d6f2e9c33a5743438b23b83135bd9924','My 91 campaign','Description of 91 campaign in order to test.',9100,0,'active'),('d93e629c7df84da2a2ca30ae1bee2a6a','My 53 campaign','Description of 53 campaign in order to test.',5300,0,'active'),('d9df91026a7c4ad1b79f77e182563404','My 70 campaign','Description of 70 campaign in order to test.',7000,7000,'successful'),('dc76cf82900c4ad78c2d6d7764d51a1c','My 11 campaign','Description of 11 campaign in order to test.',1100,0,'active'),('dcceb640f9d54f73a1f5163de021a386','My 42 campaign','Description of 42 campaign in order to test.',4200,0,'fraud'),('e21021384d6545b9bb4df038e82e72fc','My 62 campaign','Description of 62 campaign in order to test.',6200,6200,'successful'),('e2d2ad4510814aa59557d585faa5c657','My 74 campaign','Description of 74 campaign in order to test.',7400,7400,'successful'),('e43515ea3b4949e392271b46cb782a09','My 99 campaign','Description of 99 campaign in order to test.',9900,0,'fraud'),('e71c575b1b1e4ee08db1ce9fb9be5b84','My 93 campaign','Description of 93 campaign in order to test.',9300,0,'fraud'),('e80eec614cb54a899ac63d94eda61bc3','My 88 campaign','Description of 88 campaign in order to test.',8800,8800,'successful'),('ebba14b305924d7bb775287e19a05f17','My 13 campaign','Description of 13 campaign in order to test.',1300,0,'active'),('ebe9b00aaf4b400db6af5ac61dff4178','My 26 campaign','Description of 26 campaign in order to test.',2600,2600,'successful'),('ec73662159584abd8d1eaa56ff441946','My 66 campaign','Description of 66 campaign in order to test.',6600,0,'fraud'),('ed63a1df91f24dc3bdca2275f021baf5','My 92 campaign','Description of 92 campaign in order to test.',9200,9200,'successful'),('ef5eb717383f4ae79d2eac25402c63b5','My 56 campaign','Description of 56 campaign in order to test.',5600,5600,'successful'),('f17b8d9c33474e1ea226cb7233bd3786','My 65 campaign','Description of 65 campaign in order to test.',6500,0,'active'),('f1fe085a048244b79f57a5b82494a28a','My 68 campaign','Description of 68 campaign in order to test.',6800,6800,'successful'),('f60bc7ce429e40aa9b69a70eb6dbeb98','My 60 campaign','Description of 60 campaign in order to test.',6000,0,'fraud'),('f78b67f758b84f5cb660c6b98cf439e4','My 34 campaign','Description of 34 campaign in order to test.',3400,3400,'successful'),('f95ff9a06baa41c5babe211c8048bd47','My 55 campaign','Description of 55 campaign in order to test.',5500,0,'active'),('fc4d2d00597943828f533147ddf93dd9','My 31 campaign','Description of 31 campaign in order to test.',3100,0,'active');
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation` (
  `donation_id` varchar(36) NOT NULL,
  `campaign_id` varchar(36) NOT NULL,
  `amount` int NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `state` varchar(5) NOT NULL,
  PRIMARY KEY (`donation_id`,`campaign_id`),
  KEY `campaign_id_idx` (`campaign_id`),
  CONSTRAINT `campaign_id` FOREIGN KEY (`campaign_id`) REFERENCES `campaign` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation`
--

LOCK TABLES `donation` WRITE;
/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
INSERT INTO `donation` VALUES ('132c53dcae5b4c2cb594967f439dd2b7','0ed5233a35c644999d60c70bc19866a0',10,'Nikola','fraud'),('1c364d1b641a46aa9f22f736ac4cb848','051e6073bcec45bb804d0f9d581e2125',1,'ddadsasdassdassdada','fraud'),('462b18a74433441abeadb472ed3648f3','051e6073bcec45bb804d0f9d581e2125',10,'Nikola','fraud'),('ac525a029a15441eba165734f2dca3c8','051e6073bcec45bb804d0f9d581e2125',100,'Dimitar','fraud'),('ee5c0d28a85e4f8cb59cda0cd5ef6910','051e6073bcec45bb804d0f9d581e2125',33,'Pece','fraud');
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'my_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `markFraud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `markFraud`(IN nicknm varchar(50))
BEGIN
DECLARE finished INTEGER DEFAULT 0;
DECLARE campId VARCHAR(36) DEFAULT "";
DECLARE DonationsCursor CURSOR FOR SELECT campaign_id FROM donation where nickname = nicknm;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;
OPEN DonationsCursor;
addCampaign: LOOP
   FETCH DonationsCursor INTO campId;
   IF finished = 1 THEN 
      LEAVE addCampaign;
   END IF;
Update campaign Set status="fraud" Where id=campId;
Update donation Set state="fraud" Where campaign_id=campId;
END LOOP addCampaign;
CLOSE DonationsCursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-14  1:14:36
