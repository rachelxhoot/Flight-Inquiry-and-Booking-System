-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: aviation
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add departure_airport',7,'add_departure_airport'),(26,'Can change departure_airport',7,'change_departure_airport'),(27,'Can delete departure_airport',7,'delete_departure_airport'),(28,'Can view departure_airport',7,'view_departure_airport'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user'),(33,'Can add flight',9,'add_flight'),(34,'Can change flight',9,'change_flight'),(35,'Can delete flight',9,'delete_flight'),(36,'Can view flight',9,'view_flight'),(37,'Can add flight_plan',10,'add_flight_plan'),(38,'Can change flight_plan',10,'change_flight_plan'),(39,'Can delete flight_plan',10,'delete_flight_plan'),(40,'Can view flight_plan',10,'view_flight_plan'),(41,'Can add trade',11,'add_trade'),(42,'Can change trade',11,'change_trade'),(43,'Can delete trade',11,'delete_trade'),(44,'Can view trade',11,'view_trade'),(45,'Can add seat',12,'add_seat'),(46,'Can change seat',12,'change_seat'),(47,'Can delete seat',12,'delete_seat'),(48,'Can view seat',12,'view_seat'),(49,'Can add count',13,'add_count'),(50,'Can change count',13,'change_count'),(51,'Can delete count',13,'delete_count'),(52,'Can view count',13,'view_count');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aviation_count`
--

DROP TABLE IF EXISTS `aviation_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aviation_count` (
  `count_name` varchar(10) DEFAULT NULL,
  `num` int DEFAULT '0',
  `f_update` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aviation_count`
--

LOCK TABLES `aviation_count` WRITE;
/*!40000 ALTER TABLE `aviation_count` DISABLE KEYS */;
INSERT INTO `aviation_count` VALUES ('flight',-5,5),('airport',13,0);
/*!40000 ALTER TABLE `aviation_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departure_airport`
--

DROP TABLE IF EXISTS `departure_airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departure_airport` (
  `airport_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  PRIMARY KEY (`airport_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departure_airport`
--

LOCK TABLES `departure_airport` WRITE;
/*!40000 ALTER TABLE `departure_airport` DISABLE KEYS */;
INSERT INTO `departure_airport` VALUES ('北京大兴机场','北京'),('北京首都机场','北京'),('太原武宿机场','太原'),('广州白云机场','广州'),('杭州萧山机场','杭州');
/*!40000 ALTER TABLE `departure_airport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `departure_flight_bjsd`
--

DROP TABLE IF EXISTS `departure_flight_bjsd`;
/*!50001 DROP VIEW IF EXISTS `departure_flight_bjsd`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `departure_flight_bjsd` AS SELECT 
 1 AS `flight_id`,
 1 AS `departure_time`,
 1 AS `destination_id`,
 1 AS `terminal`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(13,'web','count'),(7,'web','departure_airport'),(9,'web','flight'),(10,'web','flight_plan'),(12,'web','seat'),(11,'web','trade'),(8,'web','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-11-25 01:10:51.822801'),(2,'auth','0001_initial','2021-11-25 01:10:53.617909'),(3,'admin','0001_initial','2021-11-25 01:10:54.001719'),(4,'admin','0002_logentry_remove_auto_add','2021-11-25 01:10:54.037959'),(5,'admin','0003_logentry_add_action_flag_choices','2021-11-25 01:10:54.082037'),(6,'contenttypes','0002_remove_content_type_name','2021-11-25 01:10:54.414855'),(7,'auth','0002_alter_permission_name_max_length','2021-11-25 01:10:54.616816'),(8,'auth','0003_alter_user_email_max_length','2021-11-25 01:10:54.720991'),(9,'auth','0004_alter_user_username_opts','2021-11-25 01:10:54.751875'),(10,'auth','0005_alter_user_last_login_null','2021-11-25 01:10:54.902357'),(11,'auth','0006_require_contenttypes_0002','2021-11-25 01:10:54.913117'),(12,'auth','0007_alter_validators_add_error_messages','2021-11-25 01:10:54.948207'),(13,'auth','0008_alter_user_username_max_length','2021-11-25 01:10:55.139558'),(14,'auth','0009_alter_user_last_name_max_length','2021-11-25 01:10:55.339827'),(15,'auth','0010_alter_group_name_max_length','2021-11-25 01:10:55.420775'),(16,'auth','0011_update_proxy_permissions','2021-11-25 01:10:55.460913'),(17,'auth','0012_alter_user_first_name_max_length','2021-11-25 01:10:55.768403'),(18,'sessions','0001_initial','2021-11-25 01:10:55.820111'),(19,'web','0001_initial','2021-11-25 01:10:55.864226'),(20,'web','0002_auto_20211124_1805','2021-11-25 01:10:56.067697'),(21,'web','0003_flight_user','2021-11-25 01:10:56.493090'),(22,'web','0004_auto_20211218_1621','2021-12-18 08:22:27.542816'),(25,'web','0005_seat_trade','2021-12-24 08:37:05.339083'),(26,'web','0006_alter_seat_passenger_id','2021-12-24 08:37:05.666538'),(27,'web','0007_alter_seat_type','2021-12-24 08:37:05.883866'),(28,'web','0008_count','2021-12-30 12:29:11.883169');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight` (
  `flight_id` char(6) NOT NULL,
  `departure_time` datetime NOT NULL,
  `time_of_flight` time NOT NULL,
  `destination` varchar(50) NOT NULL,
  `type` char(1) NOT NULL,
  `airport_name` varchar(50) NOT NULL,
  `terminal` int DEFAULT NULL,
  PRIMARY KEY (`flight_id`),
  KEY `airport_flight` (`airport_name`),
  KEY `ftodes` (`destination`),
  KEY `time` (`departure_time`),
  CONSTRAINT `airport_flight` FOREIGN KEY (`airport_name`) REFERENCES `departure_airport` (`airport_name`),
  CONSTRAINT `ftodes` FOREIGN KEY (`destination`) REFERENCES `departure_airport` (`airport_name`),
  CONSTRAINT `tt` CHECK ((`type` between _gbk'A' and _gbk'C'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES ('as3345','2021-10-18 10:00:00','01:45:00','杭州萧山机场','A','北京首都机场',1),('ba2109','2021-12-01 19:30:00','02:30:00','广州白云机场','C','杭州萧山机场',2),('cn7781','2021-10-05 19:00:00','01:30:00','北京首都机场','B','广州白云机场',3),('nb0098','2021-10-01 07:00:00','02:00:00','太原武宿机场','A','北京首都机场',2);
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_plan`
--

DROP TABLE IF EXISTS `flight_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_plan` (
  `plan_id` char(3) NOT NULL,
  `seat_type` char(1) NOT NULL,
  `safe_type` char(2) DEFAULT NULL,
  `charge` int NOT NULL,
  `max_check` int DEFAULT NULL,
  PRIMARY KEY (`plan_id`),
  CONSTRAINT `typet` CHECK ((`seat_type` between _gbk'A' and _gbk'C'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_plan`
--

LOCK TABLES `flight_plan` WRITE;
/*!40000 ALTER TABLE `flight_plan` DISABLE KEYS */;
INSERT INTO `flight_plan` VALUES ('001','A','初级',1000,50),('002','B','中级',1200,80),('003','C','高级',1500,100),('004','A','中级',1100,60),('005','B','初级',1100,65),('006','C','中级',1300,80);
/*!40000 ALTER TABLE `flight_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `seat_id` char(3) NOT NULL,
  `type` char(1) NOT NULL,
  `state` char(1) NOT NULL DEFAULT '0',
  `flight_id` char(6) NOT NULL,
  `passenger_id` char(18) DEFAULT NULL,
  PRIMARY KEY (`seat_id`,`flight_id`),
  KEY `seat_to_flight` (`flight_id`),
  KEY `seat_to_passenger` (`passenger_id`),
  CONSTRAINT `seat_to_flight` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`),
  CONSTRAINT `seat_to_passenger` FOREIGN KEY (`passenger_id`) REFERENCES `user` (`card_id`),
  CONSTRAINT `numstate` CHECK ((`state` between _utf8mb3'0' and _utf8mb3'1')),
  CONSTRAINT `seatt` CHECK ((`type` between _utf8mb3'A' and _utf8mb3'C')),
  CONSTRAINT `sseat` CHECK (((`state` = _gbk'0') or (`passenger_id` <> NULL)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES ('A01','A','1','nb0098','140923199912120020'),('A02','A','0','nb0098',NULL),('A03','A','1','as3345','110000199811090020'),('B01','B','1','ba2109','110000199811090020'),('B01','B','0','cn7781',NULL),('B01','B','0','nb0098',NULL),('B02','B','0','cn7781',NULL),('B02','B','0','nb0098',NULL),('B03','B','1','cn7781','100000200101010010'),('B03','B','0','nb0098',NULL),('C01','C','0','cn7781',NULL);
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade`
--

DROP TABLE IF EXISTS `trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trade` (
  `passenger_id` char(18) NOT NULL,
  `flight_id` char(6) NOT NULL,
  `plan_id` char(3) NOT NULL,
  PRIMARY KEY (`passenger_id`,`flight_id`,`plan_id`),
  KEY `l` (`flight_id`),
  KEY `plan` (`plan_id`),
  CONSTRAINT `l` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`),
  CONSTRAINT `p` FOREIGN KEY (`passenger_id`) REFERENCES `user` (`card_id`),
  CONSTRAINT `plan` FOREIGN KEY (`plan_id`) REFERENCES `flight_plan` (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade`
--

LOCK TABLES `trade` WRITE;
/*!40000 ALTER TABLE `trade` DISABLE KEYS */;
INSERT INTO `trade` VALUES ('110000199811090020','as3345','001'),('140923199912120020','nb0098','001'),('100000200101010010','cn7781','002'),('110000199811090020','ba2109','002');
/*!40000 ALTER TABLE `trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `card_id` char(18) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `user_type` char(1) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`card_id`),
  UNIQUE KEY `person` (`name`),
  CONSTRAINT `gender` CHECK ((`sex` in (_utf8mb3'女',_utf8mb3'男')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('100000200101010010','小红','女',NULL,NULL),('110000199811090020','王小刚','男',NULL,NULL),('140923199912120020','小明','男',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_count`
--

DROP TABLE IF EXISTS `web_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_count` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `number` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `web_count_chk_1` CHECK ((`number` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_count`
--

LOCK TABLES `web_count` WRITE;
/*!40000 ALTER TABLE `web_count` DISABLE KEYS */;
INSERT INTO `web_count` VALUES (1,'usercount',11);
/*!40000 ALTER TABLE `web_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_departure_airport`
--

DROP TABLE IF EXISTS `web_departure_airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_departure_airport` (
  `airport_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  PRIMARY KEY (`airport_name`),
  UNIQUE KEY `web_departure_airport_airport_name_66a460f4_uniq` (`airport_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_departure_airport`
--

LOCK TABLES `web_departure_airport` WRITE;
/*!40000 ALTER TABLE `web_departure_airport` DISABLE KEYS */;
INSERT INTO `web_departure_airport` VALUES ('上海浦东机场','上海'),('上海虹桥机场','上海'),('北京大兴机场','北京'),('北京首都机场','北京'),('太原武宿机场','太原'),('广州白云机场','广州'),('杭州萧山机场','杭州');
/*!40000 ALTER TABLE `web_departure_airport` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = gbk */ ;
/*!50003 SET character_set_results = gbk */ ;
/*!50003 SET collation_connection  = gbk_chinese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_airport` AFTER INSERT ON `web_departure_airport` FOR EACH ROW begin
update aviation_count set num=num+1
where count_name="airport";
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `web_flight`
--

DROP TABLE IF EXISTS `web_flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_flight` (
  `flight_id` varchar(6) NOT NULL,
  `departure_time` datetime(6) NOT NULL,
  `time_of_flight` time(6) NOT NULL,
  `air_type` varchar(1) NOT NULL,
  `terminal` int NOT NULL,
  `departure_id` varchar(50) NOT NULL,
  `destination_id` varchar(50) NOT NULL,
  PRIMARY KEY (`flight_id`),
  KEY `web_flight_destination_id_7c382595_fk_web_depar` (`destination_id`),
  KEY `des` (`departure_id`),
  CONSTRAINT `web_flight_departure_id_d12e8411_fk_web_depar` FOREIGN KEY (`departure_id`) REFERENCES `web_departure_airport` (`airport_name`),
  CONSTRAINT `web_flight_destination_id_7c382595_fk_web_depar` FOREIGN KEY (`destination_id`) REFERENCES `web_departure_airport` (`airport_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_flight`
--

LOCK TABLES `web_flight` WRITE;
/*!40000 ALTER TABLE `web_flight` DISABLE KEYS */;
INSERT INTO `web_flight` VALUES ('aa1111','2021-11-02 00:00:00.000000','02:00:00.000000','A',2,'上海浦东机场','北京首都机场'),('kb1243','2021-11-01 07:00:00.000000','02:00:00.000000','B',1,'北京首都机场','上海浦东机场');
/*!40000 ALTER TABLE `web_flight` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = gbk */ ;
/*!50003 SET character_set_results = gbk */ ;
/*!50003 SET collation_connection  = gbk_chinese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `new_flight` AFTER UPDATE ON `web_flight` FOR EACH ROW begin
update aviation_count set f_update=f_update+1
where count_name="flight";
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = gbk */ ;
/*!50003 SET character_set_results = gbk */ ;
/*!50003 SET collation_connection  = gbk_chinese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `de_flight` AFTER DELETE ON `web_flight` FOR EACH ROW begin
update aviation_count set num=num-1
where count_name="flight";
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `web_flight_plan`
--

DROP TABLE IF EXISTS `web_flight_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_flight_plan` (
  `plan_id` varchar(3) NOT NULL,
  `seat_type` varchar(1) NOT NULL,
  `safe_type` varchar(1) NOT NULL,
  `charge` int NOT NULL,
  `max_check` int NOT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_flight_plan`
--

LOCK TABLES `web_flight_plan` WRITE;
/*!40000 ALTER TABLE `web_flight_plan` DISABLE KEYS */;
INSERT INTO `web_flight_plan` VALUES ('001','A','A',1000,50),('002','B','B',1200,80),('003','C','C',1500,100);
/*!40000 ALTER TABLE `web_flight_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_seat`
--

DROP TABLE IF EXISTS `web_seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_seat` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `seat_id` varchar(3) NOT NULL,
  `state` varchar(1) NOT NULL,
  `flight_id_id` varchar(6) NOT NULL,
  `passenger_id_id` varchar(18) DEFAULT NULL,
  `type` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_seat_seat_id_flight_id_id_733ef3f8_uniq` (`seat_id`,`flight_id_id`),
  KEY `web_seat_flight_id_id_88fc704b_fk_web_flight_flight_id` (`flight_id_id`),
  KEY `web_seat_passenger_id_id_b7b68abe_fk_web_user_card_id` (`passenger_id_id`),
  CONSTRAINT `web_seat_flight_id_id_88fc704b_fk_web_flight_flight_id` FOREIGN KEY (`flight_id_id`) REFERENCES `web_flight` (`flight_id`),
  CONSTRAINT `web_seat_passenger_id_id_b7b68abe_fk_web_user_card_id` FOREIGN KEY (`passenger_id_id`) REFERENCES `web_user` (`card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_seat`
--

LOCK TABLES `web_seat` WRITE;
/*!40000 ALTER TABLE `web_seat` DISABLE KEYS */;
INSERT INTO `web_seat` VALUES (1,'A01','1','aa1111','111111200108060023','A'),(2,'B01','1','aa1111','987654312098765565','B'),(3,'A02','0','aa1111',NULL,'A'),(4,'A03','1','aa1111','980092211298900034','A');
/*!40000 ALTER TABLE `web_seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_trade`
--

DROP TABLE IF EXISTS `web_trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_trade` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flight_id_id` varchar(6) NOT NULL,
  `passenger_id_id` varchar(18) NOT NULL,
  `plan_id_id` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_trade_passenger_id_id_flight_id_id_plan_id_id_27a9938d_uniq` (`passenger_id_id`,`flight_id_id`,`plan_id_id`),
  KEY `web_trade_flight_id_id_0f548bb0_fk_web_flight_flight_id` (`flight_id_id`),
  KEY `web_trade_plan_id_id_1038ab32_fk_web_flight_plan_plan_id` (`plan_id_id`),
  CONSTRAINT `web_trade_flight_id_id_0f548bb0_fk_web_flight_flight_id` FOREIGN KEY (`flight_id_id`) REFERENCES `web_flight` (`flight_id`),
  CONSTRAINT `web_trade_passenger_id_id_ec48347f_fk_web_user_card_id` FOREIGN KEY (`passenger_id_id`) REFERENCES `web_user` (`card_id`),
  CONSTRAINT `web_trade_plan_id_id_1038ab32_fk_web_flight_plan_plan_id` FOREIGN KEY (`plan_id_id`) REFERENCES `web_flight_plan` (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_trade`
--

LOCK TABLES `web_trade` WRITE;
/*!40000 ALTER TABLE `web_trade` DISABLE KEYS */;
INSERT INTO `web_trade` VALUES (4,'aa1111','111111200108060023','001'),(17,'kb1243','111111200108060023','001'),(10,'aa1111','140923200108060020','001'),(1,'aa1111','140923200108060098','001'),(3,'kb1243','140923200108060098','001'),(6,'aa1111','140923200108060099','001'),(11,'aa1111','140923200208060023','001'),(9,'aa1111','140923200208060024','001'),(13,'aa1111','980092211298900034','001'),(14,'aa1111','987654312098765565','001');
/*!40000 ALTER TABLE `web_trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_user`
--

DROP TABLE IF EXISTS `web_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_user` (
  `card_id` varchar(18) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `user_type` varchar(1) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_user`
--

LOCK TABLES `web_user` WRITE;
/*!40000 ALTER TABLE `web_user` DISABLE KEYS */;
INSERT INTO `web_user` VALUES ('009898666578909976','null','M','B','000'),('111111200108060023','null','M','B','111111'),('140923200108060020','null','M','A','010806'),('140923200108060023','null','M','A','010806'),('140923200108060098','null','M','A','010806'),('140923200108060099','null','M','A','010806'),('140923200208060023','null','M','C','111111'),('140923200208060024','null','M','A','111111'),('198872889087652234','null','M','A','09876'),('980092211298900034','null','M','A','000000'),('987654312098765565','null','M','A','000000');
/*!40000 ALTER TABLE `web_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = gbk */ ;
/*!50003 SET character_set_results = gbk */ ;
/*!50003 SET collation_connection  = gbk_chinese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `add_user` AFTER INSERT ON `web_user` FOR EACH ROW begin
update web_count set number=number+1
where name="usercount";
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `departure_flight_bjsd`
--

/*!50001 DROP VIEW IF EXISTS `departure_flight_bjsd`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = gbk */;
/*!50001 SET character_set_results     = gbk */;
/*!50001 SET collation_connection      = gbk_chinese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `departure_flight_bjsd` AS select `web_flight`.`flight_id` AS `flight_id`,`web_flight`.`departure_time` AS `departure_time`,`web_flight`.`destination_id` AS `destination_id`,`web_flight`.`terminal` AS `terminal` from `web_flight` where (`web_flight`.`departure_id` = '�����׶�����') */
/*!50002 WITH CASCADED CHECK OPTION */;
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

-- Dump completed on 2021-12-31 17:25:24
