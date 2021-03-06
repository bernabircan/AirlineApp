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
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add airline company',7,'add_airlinecompany'),(26,'Can change airline company',7,'change_airlinecompany'),(27,'Can delete airline company',7,'delete_airlinecompany'),(28,'Can view airline company',7,'view_airlinecompany'),(29,'Can add airplane',8,'add_airplane'),(30,'Can change airplane',8,'change_airplane'),(31,'Can delete airplane',8,'delete_airplane'),(32,'Can view airplane',8,'view_airplane'),(33,'Can add airplane company',9,'add_airplanecompany'),(34,'Can change airplane company',9,'change_airplanecompany'),(35,'Can delete airplane company',9,'delete_airplanecompany'),(36,'Can view airplane company',9,'view_airplanecompany'),(37,'Can add airport',10,'add_airport'),(38,'Can change airport',10,'change_airport'),(39,'Can delete airport',10,'delete_airport'),(40,'Can view airport',10,'view_airport'),(41,'Can add auth group',11,'add_authgroup'),(42,'Can change auth group',11,'change_authgroup'),(43,'Can delete auth group',11,'delete_authgroup'),(44,'Can view auth group',11,'view_authgroup'),(45,'Can add auth group permissions',12,'add_authgrouppermissions'),(46,'Can change auth group permissions',12,'change_authgrouppermissions'),(47,'Can delete auth group permissions',12,'delete_authgrouppermissions'),(48,'Can view auth group permissions',12,'view_authgrouppermissions'),(49,'Can add auth permission',13,'add_authpermission'),(50,'Can change auth permission',13,'change_authpermission'),(51,'Can delete auth permission',13,'delete_authpermission'),(52,'Can view auth permission',13,'view_authpermission'),(53,'Can add auth user',14,'add_authuser'),(54,'Can change auth user',14,'change_authuser'),(55,'Can delete auth user',14,'delete_authuser'),(56,'Can view auth user',14,'view_authuser'),(57,'Can add auth user groups',15,'add_authusergroups'),(58,'Can change auth user groups',15,'change_authusergroups'),(59,'Can delete auth user groups',15,'delete_authusergroups'),(60,'Can view auth user groups',15,'view_authusergroups'),(61,'Can add auth user user permissions',16,'add_authuseruserpermissions'),(62,'Can change auth user user permissions',16,'change_authuseruserpermissions'),(63,'Can delete auth user user permissions',16,'delete_authuseruserpermissions'),(64,'Can view auth user user permissions',16,'view_authuseruserpermissions'),(65,'Can add django admin log',17,'add_djangoadminlog'),(66,'Can change django admin log',17,'change_djangoadminlog'),(67,'Can delete django admin log',17,'delete_djangoadminlog'),(68,'Can view django admin log',17,'view_djangoadminlog'),(69,'Can add django content type',18,'add_djangocontenttype'),(70,'Can change django content type',18,'change_djangocontenttype'),(71,'Can delete django content type',18,'delete_djangocontenttype'),(72,'Can view django content type',18,'view_djangocontenttype'),(73,'Can add django migrations',19,'add_djangomigrations'),(74,'Can change django migrations',19,'change_djangomigrations'),(75,'Can delete django migrations',19,'delete_djangomigrations'),(76,'Can view django migrations',19,'view_djangomigrations'),(77,'Can add django session',20,'add_djangosession'),(78,'Can change django session',20,'change_djangosession'),(79,'Can delete django session',20,'delete_djangosession'),(80,'Can view django session',20,'view_djangosession'),(81,'Can add airplane type',21,'add_airplanetype'),(82,'Can change airplane type',21,'change_airplanetype'),(83,'Can delete airplane type',21,'delete_airplanetype'),(84,'Can view airplane type',21,'view_airplanetype'),(85,'Can add can land',22,'add_canland'),(86,'Can change can land',22,'change_canland'),(87,'Can delete can land',22,'delete_canland'),(88,'Can view can land',22,'view_canland'),(89,'Can add customer',23,'add_customer'),(90,'Can change customer',23,'change_customer'),(91,'Can delete customer',23,'delete_customer'),(92,'Can view customer',23,'view_customer'),(93,'Can add reward',24,'add_reward'),(94,'Can change reward',24,'change_reward'),(95,'Can delete reward',24,'delete_reward'),(96,'Can view reward',24,'view_reward'),(97,'Can add flight',25,'add_flight'),(98,'Can change flight',25,'change_flight'),(99,'Can delete flight',25,'delete_flight'),(100,'Can view flight',25,'view_flight'),(101,'Can add seat',26,'add_seat'),(102,'Can change seat',26,'change_seat'),(103,'Can delete seat',26,'delete_seat'),(104,'Can view seat',26,'view_seat'),(105,'Can add fare',27,'add_fare'),(106,'Can change fare',27,'change_fare'),(107,'Can delete fare',27,'delete_fare'),(108,'Can view fare',27,'view_fare'),(109,'Can add ffc',28,'add_ffc'),(110,'Can change ffc',28,'change_ffc'),(111,'Can delete ffc',28,'delete_ffc'),(112,'Can view ffc',28,'view_ffc'),(113,'Can add flight leg',29,'add_flightleg'),(114,'Can change flight leg',29,'change_flightleg'),(115,'Can delete flight leg',29,'delete_flightleg'),(116,'Can view flight leg',29,'view_flightleg'),(117,'Can add leg instance',30,'add_leginstance'),(118,'Can change leg instance',30,'change_leginstance'),(119,'Can delete leg instance',30,'delete_leginstance'),(120,'Can view leg instance',30,'view_leginstance');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
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
