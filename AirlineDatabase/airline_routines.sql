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
-- Temporary view structure for view `ffc_plane`
--

DROP TABLE IF EXISTS `ffc_plane`;
/*!50001 DROP VIEW IF EXISTS `ffc_plane`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ffc_plane` AS SELECT 
 1 AS `Passport_number`,
 1 AS `Flight_number`,
 1 AS `Leg_number`,
 1 AS `Date`,
 1 AS `Airplane_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avaible_seat`
--

DROP TABLE IF EXISTS `avaible_seat`;
/*!50001 DROP VIEW IF EXISTS `avaible_seat`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avaible_seat` AS SELECT 
 1 AS `Flight_number`,
 1 AS `Leg_number`,
 1 AS `Date`,
 1 AS `avaible_seat_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customer_leg`
--

DROP TABLE IF EXISTS `customer_leg`;
/*!50001 DROP VIEW IF EXISTS `customer_leg`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_leg` AS SELECT 
 1 AS `Flight_number`,
 1 AS `Leg_number`,
 1 AS `Musteri_sayısı`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `security_ffc`
--

DROP TABLE IF EXISTS `security_ffc`;
/*!50001 DROP VIEW IF EXISTS `security_ffc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `security_ffc` AS SELECT 
 1 AS `Name`,
 1 AS `Flight_number`,
 1 AS `Leg_number`,
 1 AS `Date`,
 1 AS `Mil`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customer_mil`
--

DROP TABLE IF EXISTS `customer_mil`;
/*!50001 DROP VIEW IF EXISTS `customer_mil`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_mil` AS SELECT 
 1 AS `passport_number`,
 1 AS `gidilen_mil`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!50001 DROP VIEW IF EXISTS `reservation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reservation` AS SELECT 
 1 AS `Flight_number`,
 1 AS `Leg_number`,
 1 AS `Date`,
 1 AS `Seat_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `time_airport`
--

DROP TABLE IF EXISTS `time_airport`;
/*!50001 DROP VIEW IF EXISTS `time_airport`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `time_airport` AS SELECT 
 1 AS `Flight_number`,
 1 AS `Leg_number`,
 1 AS `Date`,
 1 AS `Departure_airport_code`,
 1 AS `Sdeparture_airport_code`,
 1 AS `Arrival_airport_code`,
 1 AS `Sarrival_airport_code`,
 1 AS `Departure_time`,
 1 AS `Scheduled_departure_time`,
 1 AS `Arrival_time`,
 1 AS `Scheduled_arrival_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `ffc_plane`
--

/*!50001 DROP VIEW IF EXISTS `ffc_plane`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ffc_plane` AS select `ffc`.`Passport_number` AS `Passport_number`,`ffc`.`Flight_number` AS `Flight_number`,`ffc`.`Leg_number` AS `Leg_number`,`ffc`.`Date` AS `Date`,`airplane`.`Airplane_type` AS `Airplane_type` from ((`ffc` join `leg_instance`) join `airplane`) where ((`ffc`.`Flight_number` = `leg_instance`.`Flight_number`) and (`ffc`.`Leg_number` = `leg_instance`.`Leg_number`) and (`ffc`.`Date` = `leg_instance`.`Date`) and (`leg_instance`.`Airplane_id` = `airplane`.`Airplane_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avaible_seat`
--

/*!50001 DROP VIEW IF EXISTS `avaible_seat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avaible_seat` AS select `leg_instance`.`Flight_number` AS `Flight_number`,`leg_instance`.`Leg_number` AS `Leg_number`,`leg_instance`.`Date` AS `Date`,count(0) AS `avaible_seat_number` from (`seat` join `leg_instance`) where ((`seat`.`Passport_number` is null) and (`leg_instance`.`Flight_number` = `seat`.`Flight_number`) and (`leg_instance`.`Leg_number` = `seat`.`Leg_number`) and (`leg_instance`.`Date` = `seat`.`Date`)) group by `leg_instance`.`Flight_number`,`leg_instance`.`Leg_number`,`leg_instance`.`Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_leg`
--

/*!50001 DROP VIEW IF EXISTS `customer_leg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_leg` AS select `ffc`.`Flight_number` AS `Flight_number`,`ffc`.`Leg_number` AS `Leg_number`,count(0) AS `Musteri_sayısı` from `ffc` group by `ffc`.`Flight_number`,`ffc`.`Leg_number` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `security_ffc`
--

/*!50001 DROP VIEW IF EXISTS `security_ffc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `security_ffc` AS select `customer`.`Name` AS `Name`,`ffc`.`Flight_number` AS `Flight_number`,`ffc`.`Leg_number` AS `Leg_number`,`ffc`.`Date` AS `Date`,`ffc`.`Mil` AS `Mil` from (`ffc` join `customer`) where (`ffc`.`Passport_number` = `customer`.`Passport_number`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_mil`
--

/*!50001 DROP VIEW IF EXISTS `customer_mil`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_mil` AS select `ffc`.`Passport_number` AS `passport_number`,sum(`ffc`.`Mil`) AS `gidilen_mil` from `ffc` group by `ffc`.`Passport_number` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reservation`
--

/*!50001 DROP VIEW IF EXISTS `reservation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reservation` AS select `seat`.`Flight_number` AS `Flight_number`,`seat`.`Leg_number` AS `Leg_number`,`seat`.`Date` AS `Date`,`seat`.`Seat_number` AS `Seat_number` from `seat` where (`seat`.`Passport_number` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `time_airport`
--

/*!50001 DROP VIEW IF EXISTS `time_airport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `time_airport` AS select `leg_instance`.`Flight_number` AS `Flight_number`,`leg_instance`.`Leg_number` AS `Leg_number`,`leg_instance`.`Date` AS `Date`,`leg_instance`.`Departure_airport_code` AS `Departure_airport_code`,`flight_leg`.`Sdeparture_airport_code` AS `Sdeparture_airport_code`,`leg_instance`.`Arrival_airport_code` AS `Arrival_airport_code`,`flight_leg`.`Sarrival_airport_code` AS `Sarrival_airport_code`,`leg_instance`.`Departure_time` AS `Departure_time`,`flight_leg`.`Scheduled_departure_time` AS `Scheduled_departure_time`,`leg_instance`.`Arrival_time` AS `Arrival_time`,`flight_leg`.`Scheduled_arrival_time` AS `Scheduled_arrival_time` from (`leg_instance` join `flight_leg`) where ((`leg_instance`.`Flight_number` = `flight_leg`.`Flight_number`) and (`leg_instance`.`Leg_number` = `flight_leg`.`Leg_number`)) */;
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

-- Dump completed on 2021-03-05 12:35:17
