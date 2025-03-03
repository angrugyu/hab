-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answers_tasks`
--

DROP TABLE IF EXISTS `answers_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers_tasks` (
  `id` tinyint(4) DEFAULT NULL,
  `task_id` tinyint(4) DEFAULT NULL,
  `answer_text` varchar(59) DEFAULT NULL,
  `answer_value` decimal(2,1) DEFAULT NULL,
  `answer` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers_tasks`
--

LOCK TABLES `answers_tasks` WRITE;
/*!40000 ALTER TABLE `answers_tasks` DISABLE KEYS */;
INSERT INTO `answers_tasks` VALUES (1,1,'Указан верный вариант ответа',1.0,'1:1'),(2,1,'Указан неверный ответ',0.0,'1:1'),(3,2,'Указан верный вариант ответа',1.0,'10'),(4,2,'Указан неверный ответ',0.0,'10'),(5,3,'Указан верный вариант ответа',1.0,'дополнительный вид'),(6,3,'Указан неверный ответ',0.0,'дополнительный вид'),(7,4,'Вид материала и марка указаны верно',1.0,'Сталь 45'),(8,4,'Вид материала указа верно, марка материала указана не верно',0.5,'Сталь 35 или Алюминий 45'),(9,4,'Вид материала и марка указаны верно',0.0,'');
/*!40000 ALTER TABLE `answers_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignments` (
  `id` varchar(0) DEFAULT NULL,
  `special_actions` varchar(0) DEFAULT NULL,
  `assessment_type` varchar(0) DEFAULT NULL,
  `result_description` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cycle_name`
--

DROP TABLE IF EXISTS `cycle_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cycle_name` (
  `id` varchar(0) DEFAULT NULL,
  `cycle_id` varchar(0) DEFAULT NULL,
  `discipline` varchar(0) DEFAULT NULL,
  `code_yz` varchar(0) DEFAULT NULL,
  `name_yz` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cycle_name`
--

LOCK TABLES `cycle_name` WRITE;
/*!40000 ALTER TABLE `cycle_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `cycle_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_and_tasks`
--

DROP TABLE IF EXISTS `students_and_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students_and_tasks` (
  `id` tinyint(4) DEFAULT NULL,
  `student_id` tinyint(4) DEFAULT NULL,
  `task_id` tinyint(4) DEFAULT NULL,
  `student_answer` varchar(24) DEFAULT NULL,
  `value` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_and_tasks`
--

LOCK TABLES `students_and_tasks` WRITE;
/*!40000 ALTER TABLE `students_and_tasks` DISABLE KEYS */;
INSERT INTO `students_and_tasks` VALUES (1,1,4,'Сталь 35 или Алюминий 45',0.5);
/*!40000 ALTER TABLE `students_and_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_disciplines`
--

DROP TABLE IF EXISTS `students_disciplines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students_disciplines` (
  `id` tinyint(4) DEFAULT NULL,
  `student_id` tinyint(4) DEFAULT NULL,
  `discipline` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_disciplines`
--

LOCK TABLES `students_disciplines` WRITE;
/*!40000 ALTER TABLE `students_disciplines` DISABLE KEYS */;
INSERT INTO `students_disciplines` VALUES (1,1,'Инженерная графика'),(2,1,'Инженерная графика');
/*!40000 ALTER TABLE `students_disciplines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` tinyint(4) DEFAULT NULL,
  `code` varchar(25) DEFAULT NULL,
  `discipline` varchar(18) DEFAULT NULL,
  `description` varchar(94) DEFAULT NULL,
  `task_details` varchar(65) DEFAULT NULL,
  `task` varchar(56) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'У14.ОП01.ВЫХОД/ВХОД ПМ.04','Инженерная графика','Согласно чертежа определять характеристики и основные параметры изготовления   простой детали ','Определите масштаб на чертеже ','Прочитайте текст и ответьте на вопрос'),(2,'У14.ОП01.ВЫХОД/ВХОД ПМ.04','Инженерная графика','Согласно чертежа определять характеристики и основные параметры изготовления   простой детали','Определите номинальный диаметр резьбы на чертеже ( в миллиметрах)','Прочитайте текст и ответьте на вопрос'),(3,'У14.ОП01.ВЫХОД/ВХОД ПМ.04','Инженерная графика','Согласно чертежа определять характеристики и основные параметры изготовления   простой детали ','Как назвается элемент, обозначеный буквой А','Прочитайте текст и ответьте на вопрос'),(4,'У14.ОП01.ВЫХОД/ВХОД ПМ.04','Инженерная графика','Согласно чертежа определять характеристики и основные параметры изготовления   простой детали','Определите  вид материала и марку','запишите вид материалов словами, марку материала цифрами');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` tinyint(4) DEFAULT NULL,
  `login` varchar(6) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `FIO` varchar(20) DEFAULT NULL,
  `identification_number` tinyint(4) DEFAULT NULL,
  `role` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'login','$2b$12$Nuq52ludf/WEsy/l3DDMrOOdC91QH4oBfbIGz0RLY5su.CA2jVAC2','Иванов Иван Иванович',0,'студент'),(2,'string','$2b$12$TjPBJyT0uNUubbvTTSenTO0JtAumfJ80sHUjFkOlybAj3YzECgdGW','string',0,'string'),(3,'test','$2b$12$TFC1brztukTX3U9Yttv2TeLOOCr.oSqYHWUQ2wvGFZsZTaSYY5hVe','test',0,'студент');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 16:42:43
