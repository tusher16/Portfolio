-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: port_data
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

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
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add side_ profile',7,'add_side_profile'),(26,'Can change side_ profile',7,'change_side_profile'),(27,'Can delete side_ profile',7,'delete_side_profile'),(28,'Can view side_ profile',7,'view_side_profile'),(29,'Can add what_i_do',8,'add_what_i_do'),(30,'Can change what_i_do',8,'change_what_i_do'),(31,'Can delete what_i_do',8,'delete_what_i_do'),(32,'Can view what_i_do',8,'view_what_i_do'),(33,'Can add testiomonial',9,'add_testiomonial'),(34,'Can change testiomonial',9,'change_testiomonial'),(35,'Can delete testiomonial',9,'delete_testiomonial'),(36,'Can view testiomonial',9,'view_testiomonial'),(37,'Can add project',10,'add_project'),(38,'Can change project',10,'change_project'),(39,'Can delete project',10,'delete_project'),(40,'Can view project',10,'view_project');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$GGsIiKEFBuG4$Msv4E7dcciXT5YjePSpMu2sSB8WtYTG1026vwZp8kUs=','2021-01-09 07:27:22.064925',1,'admin','','','admin@tusher16.com',1,1,'2020-12-25 14:14:29.023130');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-12-25 14:15:16.623390','1','Mohammad Obaidullah Tusher',1,'[{\"added\": {}}]',7,1),(2,'2020-12-25 14:18:07.156122','1','Mohammad Obaidullah Tusher',2,'[{\"changed\": {\"fields\": [\"Main profile pic\"]}}]',7,1),(3,'2020-12-25 17:03:42.652863','1','I have more than 10 years\' experience building software for clients all over the world. Below is a quick overview of my main technical skill sets and technologies I use. Want to find out more about my',1,'[{\"added\": {}}]',8,1),(4,'2020-12-25 17:05:14.077777','1','Python & Django',3,'',8,1),(5,'2020-12-25 17:06:34.028983','2','Python & Django',1,'[{\"added\": {}}]',8,1),(6,'2020-12-25 17:06:39.134512','2','Python & Django',2,'[]',8,1),(7,'2020-12-25 17:07:58.674655','3','HTML & CSS',1,'[{\"added\": {}}]',8,1),(8,'2020-12-25 17:08:40.926895','4','Node.js',1,'[{\"added\": {}}]',8,1),(9,'2020-12-25 17:09:36.615850','5','npm, Gulp & Grunt',1,'[{\"added\": {}}]',8,1),(10,'2020-12-25 17:10:36.119950','1','Mohammad Obaidullah Tusher',2,'[{\"changed\": {\"fields\": [\"Wid Short intro\"]}}]',7,1),(11,'2020-12-25 18:53:44.432199','3','HTML & CSS',2,'[{\"changed\": {\"fields\": [\"Fab icon\"]}}]',8,1),(12,'2020-12-25 18:53:59.075158','3','HTML & CSS',2,'[{\"changed\": {\"fields\": [\"Fab icon\"]}}]',8,1),(13,'2020-12-26 17:30:28.978631','4','Node.js',2,'[{\"changed\": {\"fields\": [\"Wid details\"]}}]',8,1),(14,'2020-12-26 18:36:31.125002','1','Nafees Mansoor, PhD',1,'[{\"added\": {}}]',9,1),(15,'2020-12-26 18:39:27.130986','2','Samin Yasar',1,'[{\"added\": {}}]',9,1),(16,'2020-12-26 18:40:57.802860','3','Khaza Md. Anas Khan',1,'[{\"added\": {}}]',9,1),(17,'2020-12-26 18:42:41.179596','4','Shaikh MD Farabi',1,'[{\"added\": {}}]',9,1),(18,'2020-12-26 18:46:31.590104','5','Nabeel Mohammed',1,'[{\"added\": {}}]',9,1),(19,'2020-12-26 18:46:53.800020','6','Dr. Sifat Momen',1,'[{\"added\": {}}]',9,1),(20,'2020-12-26 18:50:38.915823','6','Dr. Sifat Momen',2,'[{\"changed\": {\"fields\": [\"Test profile pic\"]}}]',9,1),(21,'2021-01-07 21:00:40.216138','2','Project Clubg1IT',1,'[{\"added\": {}}]',10,1),(22,'2021-01-07 21:05:01.003378','3','Project Clubg1IT 02',1,'[{\"added\": {}}]',10,1),(23,'2021-01-07 21:05:08.384815','2','Project Clubg1IT',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',10,1),(24,'2021-01-07 21:05:13.060055','3','Project Clubg1IT 02',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',10,1),(25,'2021-01-09 18:44:55.276311','3','Project Clubg1IT 02',2,'[{\"changed\": {\"fields\": [\"Project main image\"]}}]',10,1),(26,'2021-01-09 19:33:37.688169','3','Project Clubg1IT 02',2,'[{\"changed\": {\"fields\": [\"Project requirement\"]}}]',10,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'main_home','side_profile'),(9,'main_home','testiomonial'),(8,'main_home','what_i_do'),(10,'portfolio','project'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-12-25 14:12:57.549340'),(2,'auth','0001_initial','2020-12-25 14:12:59.944193'),(3,'admin','0001_initial','2020-12-25 14:13:08.209871'),(4,'admin','0002_logentry_remove_auto_add','2020-12-25 14:13:09.939741'),(5,'admin','0003_logentry_add_action_flag_choices','2020-12-25 14:13:10.016102'),(6,'contenttypes','0002_remove_content_type_name','2020-12-25 14:13:11.659676'),(7,'auth','0002_alter_permission_name_max_length','2020-12-25 14:13:12.615252'),(8,'auth','0003_alter_user_email_max_length','2020-12-25 14:13:12.783757'),(9,'auth','0004_alter_user_username_opts','2020-12-25 14:13:12.830438'),(10,'auth','0005_alter_user_last_login_null','2020-12-25 14:13:13.521887'),(11,'auth','0006_require_contenttypes_0002','2020-12-25 14:13:13.568709'),(12,'auth','0007_alter_validators_add_error_messages','2020-12-25 14:13:13.620588'),(13,'auth','0008_alter_user_username_max_length','2020-12-25 14:13:14.504814'),(14,'auth','0009_alter_user_last_name_max_length','2020-12-25 14:13:15.390392'),(15,'auth','0010_alter_group_name_max_length','2020-12-25 14:13:15.571821'),(16,'auth','0011_update_proxy_permissions','2020-12-25 14:13:15.619142'),(17,'auth','0012_alter_user_first_name_max_length','2020-12-25 14:13:16.637367'),(18,'main_home','0001_initial','2020-12-25 14:13:17.603440'),(19,'sessions','0001_initial','2020-12-25 14:13:18.011947'),(20,'main_home','0002_side_profile_main_profile_pic','2020-12-25 14:16:26.202162'),(21,'main_home','0003_what_i_do','2020-12-25 17:01:37.044783'),(22,'main_home','0004_auto_20201225_1705','2020-12-25 17:06:05.713542'),(23,'main_home','0005_testiomonial','2020-12-26 17:58:33.806402'),(24,'portfolio','0001_initial','2021-01-07 20:37:34.251786');
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
INSERT INTO `django_session` VALUES ('gnv3crkshjvartpx5k9pgpt9vmp7tlh4','.eJxVjMsOwiAUBf-FtSFQedWle7-B3AeVqoGktCvjv0uTLnQ7M-e8RYRtzXFraYkzi4vQ4vTLEOiZyi74AeVeJdWyLjPKPZGHbfJWOb2uR_t3kKHlvjZBucE6nOyIlr3XoDg52xmdQXeUAk2knKXAhgFcMoP3o2cfEEmD-HwB3B04OQ:1ky8eg:juru50sl23YQ9pFd0rPzvWSNtVYxaNwX23bsRJ40ybA','2021-01-23 07:27:22.178217'),('pxsyqdb1s461bnmh84e7ojgojceensso','.eJxVjMsOwiAUBf-FtSFQedWle7-B3AeVqoGktCvjv0uTLnQ7M-e8RYRtzXFraYkzi4vQ4vTLEOiZyi74AeVeJdWyLjPKPZGHbfJWOb2uR_t3kKHlvjZBucE6nOyIlr3XoDg52xmdQXeUAk2knKXAhgFcMoP3o2cfEEmD-HwB3B04OQ:1ksnrc:hzi19EuQLv0gPhCqz7j9fp_I6Cxp7JJMsTSXXCB48IQ','2021-01-08 14:14:40.558264');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_home_side_profile`
--

DROP TABLE IF EXISTS `main_home_side_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_home_side_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `short_intro` varchar(200) DEFAULT NULL,
  `facebook_link` varchar(128) NOT NULL,
  `linkedin_link` varchar(128) NOT NULL,
  `github_link` varchar(128) NOT NULL,
  `researchgate_link` varchar(128) NOT NULL,
  `google_sch_link` varchar(128) NOT NULL,
  `my_website_link` varchar(128) NOT NULL,
  `side_profile_pic` varchar(100) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `job_status` varchar(100) DEFAULT NULL,
  `long_intro` longtext,
  `main_profile_pic` varchar(100) DEFAULT NULL,
  `Wid_Short_intro` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facebook_link` (`facebook_link`),
  UNIQUE KEY `linkedin_link` (`linkedin_link`),
  UNIQUE KEY `github_link` (`github_link`),
  UNIQUE KEY `researchgate_link` (`researchgate_link`),
  UNIQUE KEY `google_sch_link` (`google_sch_link`),
  UNIQUE KEY `my_website_link` (`my_website_link`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_home_side_profile`
--

LOCK TABLES `main_home_side_profile` WRITE;
/*!40000 ALTER TABLE `main_home_side_profile` DISABLE KEYS */;
INSERT INTO `main_home_side_profile` VALUES (1,'Mohammad Obaidullah Tusher','Hi, my name is Obaidullah Tusher and I\'m a Data Scientist. Welcome to my personal website!','https://www.facebook.com/tusher16','https://www.linkedin.com/in/tusher16/','https://github.com/tusher16','https://www.researchgate.net/profile/Mohammad_Tusher','https://scholar.google.ca/citations?hl=en&user=0A01B2UAAAAJ&fbclid=IwAR39XO9oYncZGVLvN-jU5CkStPc2zbrTorqcucivJuo5vtJeHW9lAqd3fBg','https://www.tusher16.com','Tusher.jpg','2020-12-25 14:15:16.622194','Data Scientist at GIGABYTE','I\'m a software engineer specialized in frontend and backend development for complex scalable web apps. I write about software development on my blog. Want to know how I may help your project? Check out my project portfolio and online resume.','tusher_main.jpg','I have more than 10 years\' experience building software for clients all over the world. Below is a quick overview of my main technical skill sets and technologies I use. Want to find out more about my experience? Check out my online resume and project portfolio.');
/*!40000 ALTER TABLE `main_home_side_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_home_testiomonial`
--

DROP TABLE IF EXISTS `main_home_testiomonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_home_testiomonial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_details` longtext,
  `test_name` varchar(100) DEFAULT NULL,
  `test_job_status` varchar(200) DEFAULT NULL,
  `test_profile_pic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_home_testiomonial`
--

LOCK TABLES `main_home_testiomonial` WRITE;
/*!40000 ALTER TABLE `main_home_testiomonial` DISABLE KEYS */;
INSERT INTO `main_home_testiomonial` VALUES (1,'Tusher is a brilliant software engineer! Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis.','Nafees Mansoor, PhD','Assistant Professor, University of Liberal Arts Bangladesh','nafees_sir.jpeg'),(2,'Tusher is a brilliant software engineer! Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis.','Samin Yasar','Development Team Lead, The SmartIdeas Group','samin_vai.jpeg'),(3,'Tusher is a brilliant software engineer! Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis.','Khaza Md. Anas Khan','Country Manger, GIGA-BYTE Technology Co., Ltd.','anas_sir.jpg'),(4,'Tusher is a brilliant software engineer! Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis.','Shaikh MD Farabi','Owner and CEO ,Amarpc.com','farabi_vai.jpg'),(5,'Tusher is a brilliant software engineer! Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis.','Nabeel Mohammed','Associate Professor, North South University','nabeel_sir.jpeg'),(6,'Tusher is a brilliant software engineer! Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis.','Dr. Sifat Momen','Associate Professor, North South University','sifat_sir.jpeg');
/*!40000 ALTER TABLE `main_home_testiomonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_home_what_i_do`
--

DROP TABLE IF EXISTS `main_home_what_i_do`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_home_what_i_do` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fab_icon` varchar(100) DEFAULT NULL,
  `wid_title` varchar(100) DEFAULT NULL,
  `wid_details` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_home_what_i_do`
--

LOCK TABLES `main_home_what_i_do` WRITE;
/*!40000 ALTER TABLE `main_home_what_i_do` DISABLE KEYS */;
INSERT INTO `main_home_what_i_do` VALUES (2,'fab fa-python','Python & Django','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut imperdiet sodales tellus sit amet eleifend. Phasellus at posuere sem. Fusce non est elit. Maecenas ultrices gravida urna a lacinia. Curabitur ut dignissim diam, gravida sagittis sapien.'),(3,'fab fa-html5 mr-2','HTML & CSS','Nulla semper pharetra est faucibus interdum. Quisque imperdiet volutpat auctor. Praesent et accumsan sem, ac tempor magna. Sed facilisis placerat nisi non dapibus. Nam dictum volutpat metus vel dapibus.'),(4,'fab fa-node-js','Node.js','Phasellus vel felis leo. Fusce tristique magna ligula. Phasellus ac sagittis nibh. Vestibulum ullamcorper aliquam lacus, id faucibus orci vestibulum a. Nunc eu tellus sit amet nisi dictum laoreet. Integer pulvinar purus non est sodales, sed vehicula nunc egestas.'),(5,'fab fa-npm mr-2','npm, Gulp & Grunt','Nunc vel laoreet nulla. Aliquam feugiat est sed elementum sollicitudin. Vivamus eu libero nisl. Donec laoreet gravida quam, non mattis ante scelerisque nec. Praesent molestie nisi a orci cursus, non auctor leo gravida. Aenean at ipsum mollis, feugiat lacus ut, tempor diam.');
/*!40000 ALTER TABLE `main_home_what_i_do` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_project`
--

DROP TABLE IF EXISTS `portfolio_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolio_project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `updated_on` datetime(6) NOT NULL,
  `project_discription` longtext,
  `project_main_image` varchar(100) DEFAULT NULL,
  `client_name` varchar(200) DEFAULT NULL,
  `technology_used` varchar(200) DEFAULT NULL,
  `company_size` varchar(200) DEFAULT NULL,
  `project_github_link` varchar(128) NOT NULL,
  `client_link` varchar(128) NOT NULL,
  `content` longtext NOT NULL,
  `project_requirement` longtext NOT NULL,
  `project_image_2` varchar(100) DEFAULT NULL,
  `project_image_3` varchar(100) DEFAULT NULL,
  `project_overview` longtext NOT NULL,
  `project_Challenge` longtext NOT NULL,
  `approach_Solution` longtext NOT NULL,
  `client_Testimonial` longtext NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `status` int NOT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_title` (`project_title`),
  UNIQUE KEY `slug` (`slug`),
  UNIQUE KEY `project_github_link` (`project_github_link`),
  UNIQUE KEY `client_link` (`client_link`),
  UNIQUE KEY `client_name` (`client_name`),
  UNIQUE KEY `technology_used` (`technology_used`),
  UNIQUE KEY `company_size` (`company_size`),
  KEY `portfolio_project_author_id_2d318685_fk_auth_user_id` (`author_id`),
  CONSTRAINT `portfolio_project_author_id_2d318685_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_project`
--

LOCK TABLES `portfolio_project` WRITE;
/*!40000 ALTER TABLE `portfolio_project` DISABLE KEYS */;
INSERT INTO `portfolio_project` VALUES (2,'Project Clubg1IT','Clubg1IT','2021-01-07 21:05:08.382367','The project intro goes here. In the intro, it\'s a good idea to answer a potential client\'s need/problem so it\'s more likely to land your next project or job.','porject_test_1_ZtQfC15.jpg','Clubg1IT','php, wordpress','10+','https://github.com/tusher16/','http://clubg1it.com/','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.','> Requirement lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n> Requirement donec pede justo, fringilla vel, aliquet nec.\r\n> Requirement phasellus ullamcorper ipsum rutrum nunc.','porject_test_2_jtUgwzX.jpg','porject_test_3_5wVN0J7.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.','Simon is a brilliant software engineer! Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis.','2021-01-07 21:00:40.212370',1,1),(3,'Project Clubg1IT 02','Clubg1IT2','2021-01-09 19:33:37.672660','Short description of the client and project requirements. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.','porject_test_1_2.jpg','Clubg1IT2','php, wordpress, mysql','20+','https://github.com/tusher16/clubg1it','http://cg1.com.bd/','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humor and the like).','> Requirement lorem ipsum dolor sit amet, consectetuer adipiscing elit 02.\r\n> Requirement donec pede justo, fringilla vel, aliquet nec 02.\r\n> Requirement phasellus ullamcorper ipsum rutrum nunc 02.','','','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.','Simon is a brilliant software engineer! Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis.','2021-01-07 21:05:01.002319',1,1);
/*!40000 ALTER TABLE `portfolio_project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-10 11:43:22
