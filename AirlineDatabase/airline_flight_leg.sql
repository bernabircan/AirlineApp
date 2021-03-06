-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: airline
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `flight_leg`
--

DROP TABLE IF EXISTS `flight_leg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_leg` (
  `Flight_number` char(3) NOT NULL,
  `Leg_number` varchar(3) NOT NULL,
  `Sdeparture_airport_code` char(3) NOT NULL,
  `Sarrival_airport_code` char(3) NOT NULL,
  `Scheduled_departure_time` time(4) NOT NULL,
  `Scheduled_arrival_time` time(4) NOT NULL,
  `Leg_mil` int NOT NULL,
  PRIMARY KEY (`Flight_number`,`Leg_number`),
  KEY `Sdeparture_airport_code` (`Sdeparture_airport_code`),
  KEY `Sarrival_airport_code` (`Sarrival_airport_code`),
  CONSTRAINT `flight_leg_ibfk_1` FOREIGN KEY (`Flight_number`) REFERENCES `flight` (`Flight_number`) ON DELETE CASCADE,
  CONSTRAINT `flight_leg_ibfk_2` FOREIGN KEY (`Sdeparture_airport_code`) REFERENCES `airport` (`Airport_code`),
  CONSTRAINT `flight_leg_ibfk_3` FOREIGN KEY (`Sarrival_airport_code`) REFERENCES `airport` (`Airport_code`),
  CONSTRAINT `CHK_Legmil` CHECK ((`Leg_mil` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_leg`
--

LOCK TABLES `flight_leg` WRITE;
/*!40000 ALTER TABLE `flight_leg` DISABLE KEYS */;
INSERT INTO `flight_leg` VALUES ('100','1','BOS','JFK','08:00:00.0000','23:00:00.0000',2983),('101','1','JFK','ORD','08:00:00.0000','19:00:00.0000',789),('102','1','ATL','SAT','07:00:00.0000','20:00:00.0000',988),('103','1','SFO','LAX','11:00:00.0000','16:00:00.0000',381),('103','2','LAX','PHX','16:30:00.0000','20:00:00.0000',373),('104','1','PHL','CLT','06:00:00.0000','09:00:00.0000',540),('104','2','CLT','MIA','09:30:00.0000','13:30:00.0000',729),('104','3','MIA','SAT','14:00:00.0000','20:00:00.0000',1382);
/*!40000 ALTER TABLE `flight_leg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-05 12:35:16
