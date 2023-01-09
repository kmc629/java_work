-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: fboard
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `freeboard`
--

DROP TABLE IF EXISTS `freeboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freeboard` (
  `id` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subject` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `inputdate` varchar(50) NOT NULL,
  `masterid` int DEFAULT NULL,
  `readcount` int DEFAULT NULL,
  `replynum` int DEFAULT NULL,
  `step` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freeboard`
--

LOCK TABLES `freeboard` WRITE;
/*!40000 ALTER TABLE `freeboard` DISABLE KEYS */;
INSERT INTO `freeboard` VALUES (3,'qwe','qwe','wqe','qwe','qwe','22-12-30 3:47 오후',3,18,0,0),(4,'fsdf','sfd','sdf','sdf','sdf','22-12-30 3:52 오후',4,33,0,0),(5,'qwewef','sdf','sdf','sdf','sdf','22-12-30 3:54 오후',5,71,0,0),(6,'qwe','qwe','qwe','Re:sdf','----------------------------------------------------------------------->sdf>qwe','23-01-2 3:18 오후',5,10,1,1),(7,'rty','rty','rty','Re:qwe','----------------------------------------------------------------------->qwe>rty','23-01-2 4:05 오후',3,4,1,1),(8,'kmc','kmc','kmc','Re:qwe','----------------------------------------------------------------------->qwe>kmc','23-01-2 4:47 오후',3,3,2,1),(9,'qwe','qwe','qwe','Re:qwe','----------------------------------------------------------------------->qwe>qwe','23-01-3 9:37 오전',3,3,3,1),(11,'iop','iop','iop','iop','iop','23-01-3 3:25 오후',11,15,0,0),(12,'iop1','iop','iop1','iop1','iop1','23-01-3 3:33 오후',12,14,0,0),(19,'ㅁㄴㅇ','','ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇ','23-01-5 5:29 오후',19,14,0,0),(20,'qwe','qwe','qwe','Re:iop','----------------------------------------------------------------------->iop>qwe','23-01-6 9:31 오전',11,1,1,1),(21,'qwer','qwer','qwer','qwer','qwre','23-01-6 10:08 오전',21,11,0,0),(22,'qwe','qwe','qwwqe','Re:Re:qwe','----------------------------------------------------------------------->----------------------------------------------------------------------->qwe>qwe>qwe','23-01-9 9:29 오전',3,2,3,2),(23,'qwe','qwe','wqe','Re:Re:Re:qwe','----------------------------------------------------------------------->----------------------------------------------------------------------->----------------------------------------------------------------------->qwe>qwe>qwe>qwe','23-01-9 9:29 오전',3,2,3,3),(24,'qwe','qwe','qwe','Re:Re:Re:Re:qwe','----------------------------------------------------------------------->----------------------------------------------------------------------->----------------------------------------------------------------------->----------------------------------------------------------------------->qwe>qwe>qwe>qwe>qwe','23-01-9 9:29 오전',3,2,3,4);
/*!40000 ALTER TABLE `freeboard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-09 11:41:31
