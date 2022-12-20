CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `slot`
--

DROP TABLE IF EXISTS `slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slot` (
  `day` varchar(45) DEFAULT NULL,
  `freeslot` varchar(45) DEFAULT NULL,
  `slotid` varchar(45) NOT NULL,
  `status` tinyint DEFAULT '0',
  PRIMARY KEY (`slotid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slot`
--

LOCK TABLES `slot` WRITE;
/*!40000 ALTER TABLE `slot` DISABLE KEYS */;
INSERT INTO `slot` VALUES ('Sunday','12am-2am','1',0),('Sunday','6pm-8pm','10',0),('Sunday','8pm-10pm','11',0),('Sunday','10pm-11:59pm','12',0),('Monday','12am-2am','13',0),('Monday','2am-4am','14',0),('Monday','4am-6am','15',0),('Monday','6am-8am','16',0),('Monday','8am-10pm','17',0),('Monday','10am-12pm','18',0),('Monday','12pm-2pm','19',0),('Sunday','2am-4am','2',0),('Monday','2pm-4pm','20',0),('Monday','4pm-6pm','21',0),('Monday','6pm-8pm','22',0),('Monday','8pm-10pm','23',0),('Monday','10pm-11.59pm','24',0),('Tuesday','12am-2am','25',0),('Tuesday','2am-4am','26',0),('Tuesday','4am-6am','27',0),('Tuesday','6am-8am','28',0),('Tuesday','8am-10pm','29',0),('Sunday','4am-6am','3',0),('Tuesday','10am-12pm','30',0),('Tuesday','12pm-2pm','31',0),('Tuesday','2pm-4pm','32',0),('Tuesday','4pm-6pm','33',0),('Tuesday','6pm-8pm','34',0),('Tuesday','8pm-10pm','35',0),('Tuesday','10pm-11.59pm','36',0),('Wednesday','12am-2am','37',0),('Wednesday','2am-4am','38',0),('Wednesday','4am-6am','39',0),('Sunday','6am-8am','4',0),('Wednesday','6am-8am','40',0),('Wednesday','8am-10pm','41',0),('Wednesday','10am-12pm','42',0),('Wednesday','12pm-2pm','43',0),('Wednesday','2pm-4pm','44',0),('Wednesday','4pm-6pm','45',0),('Wednesday','6pm-8pm','46',0),('Wednesday','8pm-10pm','47',0),('Wednesday','10pm-11.59pm','48',0),('Thursday','12am-2am','49',0),('Sunday','8am-10pm','5',0),('Thursday','2am-4am','50',0),('Thursday','4am-6am','51',0),('Thursday','6am-8am','52',0),('Thursday','8am-10pm','53',0),('Thursday','10am-12pm','54',0),('Thursday','12pm-2pm','55',0),('Thursday','2pm-4pm','56',0),('Thursday','4pm-6pm','57',0),('Thursday','6pm-8pm','58',0),('Thursday','8pm-10pm','59',0),('Sunday','10am-12pm','6',0),('Thursday','10pm-11.59pm','60',0),('Friday','12am-2am','61',0),('Friday','2am-4am','62',0),('Friday','4am-6am','63',0),('Friday','6am-8am','64',0),('Friday','8am-10pm','65',0),('Friday','10am-12pm','66',0),('Friday','12pm-2pm','67',0),('Friday','2pm-4pm','68',0),('Friday','4pm-6pm','69',0),('Sunday','12pm-2pm','7',0),('Friday','6pm-8pm','70',0),('Friday','8pm-10pm','71',0),('Friday','10pm-11.59pm','72',0),('Saturday','12am-2am','73',0),('Saturday','2am-4am','74',0),('Saturday','4am-6am','75',0),('Saturday','6am-8am','76',0),('Saturday','8am-10pm','77',0),('Saturday','10am-12pm','78',0),('Saturday','12pm-2pm','79',0),('Sunday','2pm-4pm','8',0),('Saturday','2pm-4pm','80',0),('Saturday','4pm-6pm','81',0),('Saturday','6pm-8pm','82',0),('Saturday','8pm-10pm','83',0),('Saturday','10pm-11.59pm','84',0),('Sunday','4pm-6pm','9',0);
/*!40000 ALTER TABLE `slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertable` (
  `name` varchar(45) DEFAULT NULL,
  `lastanme` varchar(45) DEFAULT NULL,
  `aptid` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `slot_slotid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`aptid`),
  KEY `fk_user_slot_idx` (`slot_slotid`),
  CONSTRAINT `fk_user_slot` FOREIGN KEY (`slot_slotid`) REFERENCES `slot` (`slotid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertable`
--

LOCK TABLES `usertable` WRITE;
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
INSERT INTO `usertable` VALUES ('luka','razmadze','test','asdasd',NULL);
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
create event reset
on schedule every 1 week
starts '2022-12-18 23:59:59'
do
 update usertable set slot_slotid = null;
 create event reset1
on schedule every 1 week
starts '2022-12-18 23:59:59'
do
 update slot set status = false;
-- Dump completed on 2022-12-18 19:55:52
