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
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `Flight_number` char(3) NOT NULL,
  `Leg_number` varchar(3) NOT NULL,
  `Date` date NOT NULL,
  `Seat_number` varchar(4) NOT NULL,
  `Passport_number` char(7) DEFAULT NULL,
  `Checked` varchar(3) NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Flight_number`,`Leg_number`,`Date`,`Seat_number`),
  KEY `Passport_number` (`Passport_number`),
  CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`Flight_number`, `Leg_number`, `Date`) REFERENCES `leg_instance` (`Flight_number`, `Leg_number`, `Date`) ON DELETE CASCADE,
  CONSTRAINT `seat_ibfk_2` FOREIGN KEY (`Passport_number`) REFERENCES `customer` (`Passport_number`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES ('100','1','2020-02-19','10A','1231234','No'),('100','1','2020-02-19','11C','7654321','No'),('100','1','2020-02-19','13C','1234567','No'),('100','1','2020-02-19','14C','1231234','No'),('100','1','2020-02-19','15C',NULL,'No'),('100','1','2020-02-19','22A','1234567','No'),('100','1','2020-02-19','22B','1234567','No'),('100','1','2020-02-20','22A','1234567','No'),('100','1','2020-02-20','23A',NULL,'No'),('100','1','2020-02-20','24A',NULL,'No'),('100','1','2020-02-20','25A',NULL,'No'),('101','1','2017-03-11','17A',NULL,'No'),('101','1','2017-03-11','17C','3213215','No'),('101','1','2017-03-11','18B',NULL,'No'),('101','1','2017-03-11','19A',NULL,'No'),('101','1','2017-03-11','20C',NULL,'No'),('101','1','2018-02-10','10C','3213215','No'),('101','1','2018-02-10','11A','3213215','No'),('101','1','2018-02-10','12A',NULL,'No'),('101','1','2018-02-10','12B','7654321','No'),('101','1','2018-02-10','14C',NULL,'No'),('101','1','2018-02-10','15A',NULL,'No'),('101','1','2018-02-10','16A',NULL,'No'),('101','1','2018-02-10','18A','3453456','No'),('101','1','2018-02-10','20A',NULL,'No'),('102','1','2018-12-20','15B','3453456','No'),('102','1','2018-12-20','15C','3453456','No'),('102','1','2018-12-20','16C','3213215','No'),('102','1','2018-12-20','18C','3453456','No'),('102','1','2018-12-20','20A',NULL,'No'),('102','1','2018-12-20','20B','3453456','No'),('102','1','2018-12-20','20C',NULL,'No'),('102','1','2018-12-20','21B',NULL,'No'),('102','1','2018-12-20','22B',NULL,'No'),('102','1','2018-12-20','23B',NULL,'No'),('103','1','2021-02-03','10A','5671234','No'),('103','1','2021-02-03','12C',NULL,'No'),('103','1','2021-02-03','13A',NULL,'No'),('103','1','2021-02-03','14B',NULL,'No'),('103','1','2021-02-03','16A',NULL,'No'),('103','1','2021-02-03','9B',NULL,'No'),('103','1','2021-02-03','9C','3453456','No'),('103','2','2021-02-03','10A','5671234','No'),('103','2','2021-02-03','12C',NULL,'No'),('103','2','2021-02-03','13A',NULL,'No'),('103','2','2021-02-03','14B',NULL,'No'),('103','2','2021-02-03','16A',NULL,'No'),('103','2','2021-02-03','9B',NULL,'No'),('103','2','2021-02-03','9C','3453456','No'),('104','1','2020-06-14','22A',NULL,'No'),('104','1','2020-06-14','23C',NULL,'No'),('104','1','2020-06-14','24B',NULL,'No'),('104','1','2020-06-14','27B',NULL,'No'),('104','1','2020-06-14','28A',NULL,'No'),('104','1','2020-06-14','30A','1231234','No'),('104','2','2020-06-14','22A',NULL,'No'),('104','2','2020-06-14','23C',NULL,'No'),('104','2','2020-06-14','24B',NULL,'No'),('104','2','2020-06-14','27B',NULL,'No'),('104','2','2020-06-14','28A',NULL,'No'),('104','2','2020-06-14','30A','1231234','No'),('104','3','2020-06-14','22A',NULL,'No'),('104','3','2020-06-14','23C',NULL,'No'),('104','3','2020-06-14','24B',NULL,'No'),('104','3','2020-06-14','27B',NULL,'No'),('104','3','2020-06-14','28A',NULL,'No'),('104','3','2020-06-14','30A','1231234','No');
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-05 12:35:13
