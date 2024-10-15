-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: agencia
-- ------------------------------------------------------
-- Server version	8.2.0

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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add acomodacion',7,'add_acomodacion'),(26,'Can change acomodacion',7,'change_acomodacion'),(27,'Can delete acomodacion',7,'delete_acomodacion'),(28,'Can view acomodacion',7,'view_acomodacion'),(29,'Can add adicion',8,'add_adicion'),(30,'Can change adicion',8,'change_adicion'),(31,'Can delete adicion',8,'delete_adicion'),(32,'Can view adicion',8,'view_adicion'),(33,'Can add destino',9,'add_destino'),(34,'Can change destino',9,'change_destino'),(35,'Can delete destino',9,'delete_destino'),(36,'Can view destino',9,'view_destino'),(37,'Can add paquete',10,'add_paquete'),(38,'Can change paquete',10,'change_paquete'),(39,'Can delete paquete',10,'delete_paquete'),(40,'Can view paquete',10,'view_paquete'),(41,'Can add cliente',11,'add_cliente'),(42,'Can change cliente',11,'change_cliente'),(43,'Can delete cliente',11,'delete_cliente'),(44,'Can view cliente',11,'view_cliente'),(45,'Can add hospedaje',12,'add_hospedaje'),(46,'Can change hospedaje',12,'change_hospedaje'),(47,'Can delete hospedaje',12,'delete_hospedaje'),(48,'Can view hospedaje',12,'view_hospedaje'),(49,'Can add hospedaje acomodacion',13,'add_hospedajeacomodacion'),(50,'Can change hospedaje acomodacion',13,'change_hospedajeacomodacion'),(51,'Can delete hospedaje acomodacion',13,'delete_hospedajeacomodacion'),(52,'Can view hospedaje acomodacion',13,'view_hospedajeacomodacion'),(53,'Can add paquete tour',14,'add_paquetetour'),(54,'Can change paquete tour',14,'change_paquetetour'),(55,'Can delete paquete tour',14,'delete_paquetetour'),(56,'Can view paquete tour',14,'view_paquetetour'),(57,'Can add reserva',15,'add_reserva'),(58,'Can change reserva',15,'change_reserva'),(59,'Can delete reserva',15,'delete_reserva'),(60,'Can view reserva',15,'view_reserva'),(61,'Can add detalle reserva',16,'add_detallereserva'),(62,'Can change detalle reserva',16,'change_detallereserva'),(63,'Can delete detalle reserva',16,'delete_detallereserva'),(64,'Can view detalle reserva',16,'view_detallereserva'),(65,'Can add tour',17,'add_tour'),(66,'Can change tour',17,'change_tour'),(67,'Can delete tour',17,'delete_tour'),(68,'Can view tour',17,'view_tour');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$Je4TiOxcsMYFVkiOUOWQIM$N5lRfJOhYcmLfNV0E+aMWKJb4U6yZDGQDwnyeSra/NA=','2024-09-17 13:46:08.685339',1,'admin','','','ejemplo@gmail.com',1,1,'2024-07-30 16:11:17.060586'),(2,'pbkdf2_sha256$720000$Lqp1ZNpKxnkPykDNJgpl0x$jH2ThhEAKWIRt5HRNcjzEH4R8W/oBScI2x9JS8f0ais=','2024-08-05 16:38:14.397609',1,'YeinerProgramador','yeiner','cuesta','heinercusta@gmail.cm',1,1,'2024-08-01 16:29:11.000000'),(3,'pbkdf2_sha256$720000$YqJItvHOCvYDn50IVbnf5p$/rZxHnJrOvHnjVEnXe6xpHNE43xBSipLfcfVnOEY8kY=','2024-10-03 15:10:51.984137',1,'romaña','jhon','romaña','jhonromana04@gmail.com',1,1,'2024-08-26 15:31:50.000000');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,3,1),(2,3,2),(3,3,3),(4,3,4),(5,3,5),(6,3,6),(7,3,7),(8,3,8),(9,3,9),(10,3,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,3,15),(16,3,16),(17,3,17),(18,3,18),(19,3,19),(20,3,20),(21,3,21),(22,3,22),(23,3,23),(24,3,24),(25,3,25),(26,3,26),(27,3,27),(28,3,28),(29,3,29),(30,3,30),(31,3,31),(32,3,32),(33,3,33),(34,3,34),(35,3,35),(36,3,36),(37,3,37),(38,3,38),(39,3,39),(40,3,40),(41,3,41),(42,3,42),(43,3,43),(44,3,44),(45,3,45),(46,3,46),(47,3,47),(48,3,48),(49,3,49),(50,3,50),(51,3,51),(52,3,52),(53,3,53),(54,3,54),(55,3,55),(56,3,56),(57,3,57),(58,3,58),(59,3,59),(60,3,60),(61,3,61),(62,3,62),(63,3,63),(64,3,64),(65,3,65),(66,3,66),(67,3,67),(68,3,68);
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
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-08-01 16:12:46.776394','1','Acomodacion object (1)',1,'[{\"added\": {}}]',7,1),(2,'2024-08-01 16:13:07.434002','2','Acomodacion object (2)',1,'[{\"added\": {}}]',7,1),(3,'2024-08-01 16:13:34.299164','3','Acomodacion object (3)',1,'[{\"added\": {}}]',7,1),(4,'2024-08-01 16:13:56.723896','4','Acomodacion object (4)',1,'[{\"added\": {}}]',7,1),(5,'2024-08-01 16:14:23.581687','5','Acomodacion object (5)',1,'[{\"added\": {}}]',7,1),(6,'2024-08-01 16:18:25.323879','1','Adicion object (1)',1,'[{\"added\": {}}]',8,1),(7,'2024-08-01 16:19:06.537922','2','Adicion object (2)',1,'[{\"added\": {}}]',8,1),(8,'2024-08-01 16:19:54.315143','3','Adicion object (3)',1,'[{\"added\": {}}]',8,1),(9,'2024-08-01 16:20:44.795201','4','Adicion object (4)',1,'[{\"added\": {}}]',8,1),(10,'2024-08-01 16:21:19.619751','5','Adicion object (5)',1,'[{\"added\": {}}]',8,1),(11,'2024-08-01 16:24:51.496415','1','Destino object (1)',1,'[{\"added\": {}}]',9,1),(12,'2024-08-01 16:25:14.974703','2','Destino object (2)',1,'[{\"added\": {}}]',9,1),(13,'2024-08-01 16:25:28.466065','2','Destino object (2)',2,'[]',9,1),(14,'2024-08-01 16:25:47.686899','3','Destino object (3)',1,'[{\"added\": {}}]',9,1),(15,'2024-08-01 16:26:01.739533','4','Destino object (4)',1,'[{\"added\": {}}]',9,1),(16,'2024-08-01 16:26:15.032259','5','Destino object (5)',1,'[{\"added\": {}}]',9,1),(17,'2024-08-01 16:29:12.315399','2','YeinerProgramador',1,'[{\"added\": {}}]',4,1),(18,'2024-08-01 16:30:03.146091','2','YeinerProgramador',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Superuser status\", \"Last login\"]}}]',4,1),(19,'2024-08-02 14:04:26.588355','6','Destino object (6)',1,'[{\"added\": {}}]',9,2),(20,'2024-08-02 14:04:29.793521','1','Cliente object (1)',1,'[{\"added\": {}}]',11,2),(21,'2024-08-02 14:05:03.427978','7','Destino object (7)',1,'[{\"added\": {}}]',9,2),(22,'2024-08-02 14:05:09.674325','2','Cliente object (2)',1,'[{\"added\": {}}]',11,2),(23,'2024-08-02 14:06:48.389875','8','Destino object (8)',1,'[{\"added\": {}}]',9,2),(24,'2024-08-02 14:07:00.364082','3','Cliente object (3)',1,'[{\"added\": {}}]',11,2),(25,'2024-08-02 14:08:26.290987','9','Destino object (9)',1,'[{\"added\": {}}]',9,2),(26,'2024-08-02 14:08:31.511394','4','Cliente object (4)',1,'[{\"added\": {}}]',11,2),(27,'2024-08-02 14:09:23.709759','10','Destino object (10)',1,'[{\"added\": {}}]',9,2),(28,'2024-08-02 14:09:27.267736','5','Cliente object (5)',1,'[{\"added\": {}}]',11,2),(29,'2024-08-02 14:12:14.604320','6','Acomodacion object (6)',1,'[{\"added\": {}}]',7,2),(30,'2024-08-02 15:44:35.531675','1','Hospedaje object (1)',1,'[{\"added\": {}}]',12,2),(31,'2024-08-02 15:48:22.021993','2','Hospedaje object (2)',1,'[{\"added\": {}}]',12,2),(32,'2024-08-02 15:51:12.578126','3','Hospedaje object (3)',1,'[{\"added\": {}}]',12,2),(33,'2024-08-02 15:53:10.602420','4','Hospedaje object (4)',1,'[{\"added\": {}}]',12,2),(34,'2024-08-02 15:54:48.549600','5','Hospedaje object (5)',1,'[{\"added\": {}}]',12,2),(35,'2024-08-02 16:00:01.774176','1','HospedajeAcomodacion object (1)',1,'[{\"added\": {}}]',13,2),(36,'2024-08-02 16:01:04.372036','2','HospedajeAcomodacion object (2)',1,'[{\"added\": {}}]',13,2),(37,'2024-08-02 16:01:57.451944','3','HospedajeAcomodacion object (3)',1,'[{\"added\": {}}]',13,2),(38,'2024-08-02 16:02:30.827080','4','HospedajeAcomodacion object (4)',1,'[{\"added\": {}}]',13,2),(39,'2024-08-02 16:03:18.065129','5','HospedajeAcomodacion object (5)',1,'[{\"added\": {}}]',13,2),(40,'2024-08-02 16:04:40.576976','1','Reserva object (1)',1,'[{\"added\": {}}]',15,2),(41,'2024-08-02 16:05:12.580927','2','Reserva object (2)',1,'[{\"added\": {}}]',15,2),(42,'2024-08-02 16:05:36.896902','3','Reserva object (3)',1,'[{\"added\": {}}]',15,2),(43,'2024-08-02 16:06:00.274414','4','Reserva object (4)',1,'[{\"added\": {}}]',15,2),(44,'2024-08-02 16:06:28.213764','5','Reserva object (5)',1,'[{\"added\": {}}]',15,2),(45,'2024-08-02 16:10:06.525919','1','Paquete object (1)',1,'[{\"added\": {}}]',10,2),(46,'2024-08-02 16:11:46.443691','2','Paquete object (2)',1,'[{\"added\": {}}]',10,2),(47,'2024-08-02 16:12:51.077212','3','Paquete object (3)',1,'[{\"added\": {}}]',10,2),(48,'2024-08-02 16:14:15.852197','4','Paquete object (4)',1,'[{\"added\": {}}]',10,2),(49,'2024-08-02 16:15:22.587566','5','Paquete object (5)',1,'[{\"added\": {}}]',10,2),(50,'2024-08-02 16:21:03.164965','1','Tour object (1)',1,'[{\"added\": {}}]',17,2),(51,'2024-08-02 16:22:12.568450','2','Tour object (2)',1,'[{\"added\": {}}]',17,2),(52,'2024-08-02 16:23:38.962580','3','Tour object (3)',1,'[{\"added\": {}}]',17,2),(53,'2024-08-02 16:25:13.505471','4','Tour object (4)',1,'[{\"added\": {}}]',17,2),(54,'2024-08-02 16:26:23.316087','5','Tour object (5)',1,'[{\"added\": {}}]',17,2),(55,'2024-08-02 16:26:25.957410','1','PaqueteTour object (1)',1,'[{\"added\": {}}]',14,2),(56,'2024-08-02 16:26:48.517024','2','PaqueteTour object (2)',1,'[{\"added\": {}}]',14,2),(57,'2024-08-02 16:29:36.839556','7','Acomodacion object (7)',1,'[{\"added\": {}}]',7,2),(58,'2024-08-02 16:31:25.543884','1','DetalleReserva object (1)',1,'[{\"added\": {}}]',16,2),(59,'2024-08-02 16:31:56.541457','3','PaqueteTour object (3)',1,'[{\"added\": {}}]',14,2),(60,'2024-08-02 16:32:30.651050','2','DetalleReserva object (2)',1,'[{\"added\": {}}]',16,2),(61,'2024-08-02 16:32:43.190354','4','PaqueteTour object (4)',1,'[{\"added\": {}}]',14,2),(62,'2024-08-02 16:33:08.878626','3','DetalleReserva object (3)',1,'[{\"added\": {}}]',16,2),(63,'2024-08-02 16:33:41.665584','4','DetalleReserva object (4)',1,'[{\"added\": {}}]',16,2),(64,'2024-08-02 16:33:55.701223','5','PaqueteTour object (5)',1,'[{\"added\": {}}]',14,2),(65,'2024-08-02 16:34:19.261500','5','DetalleReserva object (5)',1,'[{\"added\": {}}]',16,2),(66,'2024-08-26 13:37:56.198516','6','Tour Histórico',1,'[{\"added\": {}}]',10,1),(67,'2024-08-26 13:40:41.831627','7','Tour de Gastronomía',1,'[{\"added\": {}}]',10,1),(68,'2024-08-26 13:43:23.517326','8','Tour de Gastronomía',1,'[{\"added\": {}}]',10,1),(69,'2024-08-26 13:46:48.924768','8','Tour de Museos',2,'[{\"changed\": {\"fields\": [\"Nombre\"]}}]',10,1),(70,'2024-08-26 13:48:07.229577','9','Tour de la Ciudad',1,'[{\"added\": {}}]',10,1),(71,'2024-08-26 13:49:29.798419','10','Tour Nocturno',1,'[{\"added\": {}}]',10,1),(72,'2024-08-26 13:55:53.211307','11','Tour de la Basílica',1,'[{\"added\": {}}]',10,1),(73,'2024-08-26 13:57:31.665249','12','Tour de Xochimilco',1,'[{\"added\": {}}]',10,1),(74,'2024-08-26 13:58:34.190310','13','Tour de la UNAM',1,'[{\"added\": {}}]',10,1),(75,'2024-08-26 13:58:51.971055','13','Tour de la UNAM',2,'[]',10,1),(76,'2024-08-26 13:59:58.284883','14','Tour de la Ciudad de los Deportes',1,'[{\"added\": {}}]',10,1),(77,'2024-08-26 14:01:26.117783','15','Tour de la Zona Rosa',1,'[{\"added\": {}}]',10,1),(78,'2024-08-26 14:03:40.582622','16','Tour de la Condesa*:',1,'[{\"added\": {}}]',10,1),(79,'2024-08-26 14:04:46.380589','17','Tour de la Roma',1,'[{\"added\": {}}]',10,1),(80,'2024-08-26 14:05:48.383859','18','Tour de la Coyoacán',1,'[{\"added\": {}}]',10,1),(81,'2024-08-26 14:06:54.078716','19','Tour de la Xochimilco y Coyoacán',1,'[{\"added\": {}}]',10,1),(82,'2024-08-26 14:08:02.525477','20','Tour de la Ciudad y Xochimilco',1,'[{\"added\": {}}]',10,1),(83,'2024-08-26 14:10:00.901323','21','Tour de la Ciudad de los Palacios',1,'[{\"added\": {}}]',10,1),(84,'2024-08-26 14:11:43.965312','22','Tour de la Catedral y el Sagrario',1,'[{\"added\": {}}]',10,1),(85,'2024-08-26 14:12:43.462561','23','Tour de la Plaza Garibaldi',1,'[{\"added\": {}}]',10,1),(86,'2024-08-26 14:15:05.667269','24','tour de la Merced',1,'[{\"added\": {}}]',10,1),(87,'2024-08-26 14:16:05.139511','25','Tour de la Chapultepec',1,'[{\"added\": {}}]',10,1),(88,'2024-08-26 15:31:51.944674','3','romaña',1,'[{\"added\": {}}]',4,1),(89,'2024-08-26 15:32:10.839650','3','romaña',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Superuser status\", \"User permissions\"]}}]',4,1),(90,'2024-08-26 15:32:43.471462','10','Quibdo',2,'[{\"changed\": {\"fields\": [\"Destino\"]}}]',9,1),(91,'2024-08-26 15:33:11.131456','2','Medellin, Antioquia',2,'[{\"changed\": {\"fields\": [\"Destino\"]}}]',9,1),(92,'2024-08-26 15:33:27.311866','10','Quibdo, Choco',2,'[{\"changed\": {\"fields\": [\"Destino\"]}}]',9,1),(93,'2024-08-26 15:34:34.761088','9','Bogota',2,'[{\"changed\": {\"fields\": [\"Destino\"]}}]',9,1),(94,'2024-08-26 15:35:04.831436','3','San Andres',2,'[{\"changed\": {\"fields\": [\"Destino\"]}}]',9,1),(95,'2024-08-28 15:29:42.993805','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Id destino\", \"Imagen\"]}}]',12,1),(96,'2024-08-28 15:29:59.945948','4','Vancouver - temporada Boutique Hotel Jardín del Mar - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Id destino\", \"Imagen\"]}}]',12,1),(97,'2024-08-28 15:30:40.986167','4','Vancouver - temporada Boutique Hotel Jardín del Mar - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(98,'2024-08-28 15:33:12.687570','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(99,'2024-08-28 16:24:30.043784','4','Vila Marina del Sol Esta villa de lujo frente al mar ofrece una experiencia exclusiva con acceso directo a la playa, una terraza con jacuzzi, y un chef privado. Perfecta para celebraciones especiales ',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',13,1),(100,'2024-08-28 16:24:46.517542','5','Cabañas Bosque Encantado Cabañas Bosque Encantado en Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo - temporada Alta',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',13,1),(101,'2024-08-28 16:24:54.792442','3','Apartamento Urbano Central Situado en el corazón de la ciudad, el Apartamento Urbano Central proporciona comodidad y estilo con fácil acceso a atracciones turísticas, restaurantes y vida nocturna. Ide',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',13,1),(102,'2024-08-28 16:25:02.750995','2','Resort Montaña Serena Enclavado en las montañas, el Resort Montaña Serena ofrece un entorno tranquilo con acceso a senderos para senderismo y actividades al aire libre. Cuenta con un spa de primera cl',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',13,1),(103,'2024-08-28 16:25:09.342548','1','Hotel Oasis Tropical Ubicado en la costa caribeña, el Hotel Oasis Tropical ofrece un refugio de lujo con vistas panorámicas al mar, una piscina infinita, y una variedad de restaurantes gourmet. Ideal ',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',13,1),(104,'2024-08-28 16:25:20.599919','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(105,'2024-08-28 16:25:35.516381','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(106,'2024-08-28 16:25:52.484531','4','Vancouver - temporada Boutique Hotel Jardín del Mar - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(107,'2024-08-28 16:25:59.111253','3','San Andres - temporada Hostal Sol y Mar - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(108,'2024-08-28 16:26:12.615065','3','San Andres - temporada Hostal Sol y Mar - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(109,'2024-08-28 16:26:20.723783','2','Medellin - temporada Posada La Roca - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(110,'2024-08-28 16:26:33.827038','2','Medellin - temporada Posada La Roca - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(111,'2024-08-28 16:26:39.871028','1','cucuta - temporada Hotel El Paraíso - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(112,'2024-08-28 16:26:51.510253','1','cucuta - temporada Hotel El Paraíso - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(113,'2024-08-28 16:27:24.492324','5','Safari en Kenia y Tanzania en Medellin - nombre Aventura en el Amazonas en Hotel Oasis Tropical Ubicado en la costa caribeña, el Hotel Oasis Tropical ofrece un refugio de lujo con vistas panorámicas a',2,'[{\"changed\": {\"fields\": [\"Id tour\"]}}]',14,1),(114,'2024-08-28 16:28:14.000984','3','Aventura en la Patagonia en Vancouver - nombre Crucero por los Fiordos Noruegos en Hotel Oasis Tropical Ubicado en la costa caribeña, el Hotel Oasis Tropical ofrece un refugio de lujo con vistas panor',2,'[{\"changed\": {\"fields\": [\"Id tour\"]}}]',14,1),(115,'2024-08-28 16:28:28.730029','1','Safari en Kenia y Tanzania en Cancún - nombre Safari en el Parque Nacional Kruger en Hotel Oasis Tropical Ubicado en la costa caribeña, el Hotel Oasis Tropical ofrece un refugio de lujo con vistas pan',2,'[{\"changed\": {\"fields\": [\"Id tour\"]}}]',14,1),(116,'2024-08-28 16:28:44.214992','5','Tour de la Zona Rosa en Medellin - nombre Aventura en el Amazonas en Hotel Oasis Tropical Ubicado en la costa caribeña, el Hotel Oasis Tropical ofrece un refugio de lujo con vistas panorámicas al mar,',2,'[{\"changed\": {\"fields\": [\"Id paquete\"]}}]',14,1),(117,'2024-08-28 16:28:56.737998','4','Tour de la Plaza Garibaldi en San Andres - nombre Tour Gastronómico en Bangkok en Hotel Oasis Tropical Ubicado en la costa caribeña, el Hotel Oasis Tropical ofrece un refugio de lujo con vistas panorá',2,'[{\"changed\": {\"fields\": [\"Id paquete\"]}}]',14,1),(118,'2024-08-28 16:29:08.057778','3','Tour de la Chapultepec en Vancouver - nombre Crucero por los Fiordos Noruegos en Hotel Oasis Tropical Ubicado en la costa caribeña, el Hotel Oasis Tropical ofrece un refugio de lujo con vistas panorám',2,'[{\"changed\": {\"fields\": [\"Id paquete\"]}}]',14,1),(119,'2024-08-28 16:29:54.230100','1','Safari en Kenia y Tanzania en Cancún - nombre Safari en el Parque Nacional Kruger en Resort Montaña Serena Enclavado en las montañas, el Resort Montaña Serena ofrece un entorno tranquilo con acceso a ',2,'[{\"changed\": {\"fields\": [\"Id hospedaje acomodacion\"]}}]',14,1),(120,'2024-08-28 16:30:02.844088','2','Escapada Tropical en Cancún en cucuta - nombre Tour Histórico en Roma en Apartamento Urbano Central Situado en el corazón de la ciudad, el Apartamento Urbano Central proporciona comodidad y estilo con',2,'[{\"changed\": {\"fields\": [\"Id hospedaje acomodacion\"]}}]',14,1),(121,'2024-08-28 16:30:11.577043','4','Tour de la Plaza Garibaldi en San Andres - nombre Tour Gastronómico en Bangkok en Vila Marina del Sol Esta villa de lujo frente al mar ofrece una experiencia exclusiva con acceso directo a la playa, u',2,'[{\"changed\": {\"fields\": [\"Id hospedaje acomodacion\"]}}]',14,1),(122,'2024-08-28 16:31:30.066196','1','Quibdo - nombre Tour Histórico en Roma',2,'[{\"changed\": {\"fields\": [\"Id destino\"]}}]',17,1),(123,'2024-08-28 16:31:37.841850','1','Quibdo - nombre Tour Histórico en Roma',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(124,'2024-08-28 16:31:49.132522','1','Quibdo - nombre Tour Histórico en Roma',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(125,'2024-08-28 16:32:41.908042','5','Tour de la Zona Rosa en Quibdo - nombre Tour Histórico en Roma en Hotel Oasis Tropical Ubicado en la costa caribeña, el Hotel Oasis Tropical ofrece un refugio de lujo con vistas panorámicas al mar, un',2,'[{\"changed\": {\"fields\": [\"Id tour\"]}}]',14,1),(126,'2024-08-28 16:34:59.507790','3','Tour de la Chapultepec en Quibdo - nombre Tour Histórico en Roma en Hotel Oasis Tropical Ubicado en la costa caribeña, el Hotel Oasis Tropical ofrece un refugio de lujo con vistas panorámicas al mar, ',2,'[{\"changed\": {\"fields\": [\"Id tour\"]}}]',14,1),(127,'2024-08-28 16:36:22.274845','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Id destino\"]}}]',17,1),(128,'2024-08-28 16:50:22.559052','6','Aventura en la Patagonia en Quibdo - nombre Tour Histórico en Roma en Resort Montaña Serena Enclavado en las montañas, el Resort Montaña Serena ofrece un entorno tranquilo con acceso a senderos para s',1,'[{\"added\": {}}]',14,1),(129,'2024-08-28 16:50:39.659058','7','Tour de la Basílica en Quibdo - nombre Crucero por los Fiordos Noruegos en Vila Marina del Sol Esta villa de lujo frente al mar ofrece una experiencia exclusiva con acceso directo a la playa, una terr',1,'[{\"added\": {}}]',14,1),(130,'2024-08-28 16:50:52.935592','1','Vancouver - nombre Tour Histórico en Roma',2,'[{\"changed\": {\"fields\": [\"Id destino\"]}}]',17,1),(131,'2024-08-28 16:51:07.869124','8','Tour de Museos en Quibdo - nombre Crucero por los Fiordos Noruegos en Apartamento Urbano Central Situado en el corazón de la ciudad, el Apartamento Urbano Central proporciona comodidad y estilo con fá',1,'[{\"added\": {}}]',14,1),(132,'2024-08-28 16:51:53.818667','9','Tour de Museos en Quibdo - nombre Crucero por los Fiordos Noruegos en Apartamento Urbano Central Situado en el corazón de la ciudad, el Apartamento Urbano Central proporciona comodidad y estilo con fá',1,'[{\"added\": {}}]',14,1),(133,'2024-08-28 16:52:16.400485','10','Tour Nocturno en Quibdo - nombre Crucero por los Fiordos Noruegos en Resort Montaña Serena Enclavado en las montañas, el Resort Montaña Serena ofrece un entorno tranquilo con acceso a senderos para se',1,'[{\"added\": {}}]',14,1),(134,'2024-08-28 16:52:33.194250','11','Safari en Kenia y Tanzania en Quibdo - nombre Crucero por los Fiordos Noruegos en Cabañas Bosque Encantado Cabañas Bosque Encantado en Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de ',1,'[{\"added\": {}}]',14,1),(135,'2024-08-28 16:52:42.403838','12','Safari en Kenia y Tanzania en Vancouver - nombre Tour Histórico en Roma en Hotel Oasis Tropical Ubicado en la costa caribeña, el Hotel Oasis Tropical ofrece un refugio de lujo con vistas panorámicas a',1,'[{\"added\": {}}]',14,1),(136,'2024-08-29 01:42:38.471668','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(137,'2024-08-29 01:42:54.144943','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(138,'2024-09-17 13:46:32.577843','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(139,'2024-09-17 13:46:46.584586','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(140,'2024-09-17 13:51:01.715494','4','Quibdo - nombre Safari en el Parque Nacional Kruger',2,'[{\"changed\": {\"fields\": [\"Id destino\", \"Imagen\"]}}]',17,1),(141,'2024-09-17 13:51:15.577767','4','Quibdo - nombre Safari en el Parque Nacional Kruger',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(142,'2024-09-17 13:51:54.741223','3','Quibdo - nombre Tour Gastronómico en Bangkok',2,'[{\"changed\": {\"fields\": [\"Id destino\", \"Imagen\"]}}]',17,1),(143,'2024-09-17 13:52:17.298366','3','Quibdo - nombre Tour Gastronómico en Bangkok',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(144,'2024-09-17 13:55:04.003268','3','Quibdo - nombre Tour Gastronómico en Bangkok',2,'[]',17,1),(145,'2024-09-17 13:55:13.920556','2','Medellin - nombre Aventura en el Amazonas',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(146,'2024-09-17 13:55:28.778586','2','Quibdo - nombre Aventura en el Amazonas',2,'[{\"changed\": {\"fields\": [\"Id destino\", \"Imagen\"]}}]',17,1),(147,'2024-09-17 13:55:39.179647','1','Quibdo - nombre Tour Histórico en Roma',2,'[{\"changed\": {\"fields\": [\"Id destino\", \"Imagen\"]}}]',17,1),(148,'2024-09-17 13:55:53.037762','1','Quibdo - nombre Tour Histórico en Roma',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(149,'2024-09-17 13:59:42.058534','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(150,'2024-09-17 14:00:09.965932','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(151,'2024-09-17 14:01:05.827208','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(152,'2024-09-17 14:04:02.384886','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(153,'2024-09-17 14:04:18.531231','4','Quibdo - nombre Safari en el Parque Nacional Kruger',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(154,'2024-09-17 14:04:27.826457','4','Quibdo - nombre Safari en el Parque Nacional Kruger',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(155,'2024-09-17 14:04:39.699710','3','Quibdo - nombre Tour Gastronómico en Bangkok',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(156,'2024-09-17 14:04:53.284690','3','Quibdo - nombre Tour Gastronómico en Bangkok',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(157,'2024-09-17 14:06:08.476586','2','Quibdo - nombre Aventura en el Amazonas',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(158,'2024-09-17 14:06:25.289401','2','Quibdo - nombre Aventura en el Amazonas',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(159,'2024-09-17 14:06:48.553153','1','Quibdo - nombre Tour Histórico en Roma',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(160,'2024-09-17 14:06:57.411038','1','Quibdo - nombre Tour Histórico en Roma',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(161,'2024-09-19 15:25:14.620857','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(162,'2024-09-19 15:25:22.442752','1','Quibdo - nombre Tour Histórico en Roma',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(163,'2024-09-19 15:25:46.533783','2','Quibdo - nombre Aventura en el Amazonas',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(164,'2024-09-19 15:25:51.745128','3','Quibdo - nombre Tour Gastronómico en Bangkok',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(165,'2024-09-19 15:25:56.953493','4','Quibdo - nombre Safari en el Parque Nacional Kruger',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(166,'2024-09-19 15:27:09.639239','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(167,'2024-09-19 15:27:37.434069','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(168,'2024-09-19 15:28:21.707606','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(169,'2024-09-19 15:28:39.005566','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(170,'2024-09-19 15:34:17.546495','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(171,'2024-09-19 15:35:51.693025','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(172,'2024-09-19 15:47:13.425449','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(173,'2024-09-19 15:47:34.264404','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(174,'2024-09-19 15:51:37.454837','4','Vancouver - nombre Safari en el Parque Nacional Kruger',2,'[{\"changed\": {\"fields\": [\"Id destino\"]}}]',17,1),(175,'2024-09-19 15:51:43.289245','3','Bogota - nombre Tour Gastronómico en Bangkok',2,'[{\"changed\": {\"fields\": [\"Id destino\"]}}]',17,1),(176,'2024-09-19 15:51:51.811572','2','Kyoto - nombre Aventura en el Amazonas',2,'[{\"changed\": {\"fields\": [\"Id destino\"]}}]',17,1),(177,'2024-09-19 15:51:58.960519','1','Cancún - nombre Tour Histórico en Roma',2,'[{\"changed\": {\"fields\": [\"Id destino\"]}}]',17,1),(178,'2024-09-19 15:52:40.506071','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(179,'2024-09-19 15:53:09.466790','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(180,'2024-09-19 15:56:09.347266','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(181,'2024-09-19 15:57:31.256698','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(182,'2024-09-19 16:19:55.422911','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(183,'2024-09-19 16:26:08.573873','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(184,'2024-09-19 16:29:54.135208','4','Quibdo - nombre Safari en el Parque Nacional Kruger',2,'[{\"changed\": {\"fields\": [\"Id destino\", \"Imagen\"]}}]',17,1),(185,'2024-09-23 14:23:49.659797','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(186,'2024-09-23 14:23:58.999601','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(187,'2024-09-23 14:29:16.800865','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(188,'2024-09-23 15:24:19.898662','4','Quibdo - nombre Safari en el Parque Nacional Kruger',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(189,'2024-09-23 15:24:50.173921','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(190,'2024-09-23 15:27:35.613716','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(191,'2024-09-23 15:28:05.872108','3','Quibdo - nombre Tour Gastronómico en Bangkok',2,'[{\"changed\": {\"fields\": [\"Id destino\"]}}]',17,1),(192,'2024-09-23 15:28:11.001713','2','Quibdo - nombre Aventura en el Amazonas',2,'[{\"changed\": {\"fields\": [\"Id destino\"]}}]',17,1),(193,'2024-09-23 15:28:16.622346','1','Quibdo - nombre Tour Histórico en Roma',2,'[{\"changed\": {\"fields\": [\"Id destino\"]}}]',17,1),(194,'2024-09-23 15:44:45.552738','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(195,'2024-09-23 15:44:51.148092','2','Quibdo - nombre Aventura en el Amazonas',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(196,'2024-09-23 15:44:57.075759','3','Quibdo - nombre Tour Gastronómico en Bangkok',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(197,'2024-09-23 15:45:02.957521','4','Quibdo - nombre Safari en el Parque Nacional Kruger',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(198,'2024-09-23 15:45:13.583738','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(199,'2024-09-23 15:45:24.196455','4','Quibdo - nombre Safari en el Parque Nacional Kruger',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(200,'2024-09-23 15:45:37.272840','3','Quibdo - nombre Tour Gastronómico en Bangkok',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(201,'2024-09-23 15:45:48.621564','2','Quibdo - nombre Aventura en el Amazonas',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(202,'2024-09-23 15:45:55.391617','1','Quibdo - nombre Tour Histórico en Roma',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(203,'2024-09-23 15:46:05.739708','1','Quibdo - nombre Tour Histórico en Roma',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(204,'2024-09-23 16:30:19.939307','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(205,'2024-09-23 16:30:30.716206','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(206,'2024-09-23 16:31:48.483747','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(207,'2024-09-23 16:31:53.012246','4','Quibdo - nombre Safari en el Parque Nacional Kruger',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(208,'2024-09-23 16:31:57.577163','3','Quibdo - nombre Tour Gastronómico en Bangkok',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(209,'2024-09-23 16:32:02.522780','2','Quibdo - nombre Aventura en el Amazonas',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(210,'2024-09-23 16:32:08.095917','1','Quibdo - nombre Tour Histórico en Roma',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(211,'2024-09-24 13:51:14.125273','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(212,'2024-09-24 13:52:26.338953','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(213,'2024-09-24 13:52:40.359335','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(214,'2024-09-24 13:54:04.152972','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(215,'2024-09-24 13:54:46.401757','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(216,'2024-09-24 13:56:31.381078','4','Quibdo - nombre Safari en el Parque Nacional Kruger',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(217,'2024-09-24 13:56:58.723113','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(218,'2024-09-24 13:57:05.234425','4','Quibdo - nombre Safari en el Parque Nacional Kruger',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(219,'2024-09-24 13:57:17.757751','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(220,'2024-09-24 14:00:42.314723','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(221,'2024-09-24 14:01:07.356121','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(222,'2024-09-24 14:03:07.615529','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(223,'2024-09-24 14:07:38.752143','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(224,'2024-09-24 14:08:26.110309','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(225,'2024-09-24 14:09:48.807301','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(226,'2024-09-24 14:14:13.368578','5','Quibdo - nombre Crucero por los Fiordos Noruegos',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',17,1),(227,'2024-09-24 14:14:32.622041','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(228,'2024-09-24 14:46:30.555020','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(229,'2024-09-24 14:46:45.729854','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(230,'2024-09-24 15:20:47.403260','21','Tour de la Zona Rosa en Quibdo - nombre Safari en el Parque Nacional Kruger en Cabañas Bosque Encantado - temporada Alta',1,'[{\"added\": {}}]',14,1),(231,'2024-09-24 15:21:35.385938','5','Tour de la Zona Rosa en Quibdo - nombre Tour Gastronómico en Bangkok en Hotel Oasis Tropical - temporada Alta (Junio - Agosto',2,'[{\"changed\": {\"fields\": [\"Id tour\"]}}]',14,1),(232,'2024-09-24 15:21:42.831576','4','Tour de la Plaza Garibaldi en Quibdo - nombre Aventura en el Amazonas en Vila Marina del Sol - temporada Alta (Vacaciones de',2,'[{\"changed\": {\"fields\": [\"Id tour\"]}}]',14,1),(233,'2024-09-24 15:23:35.264013','3','Tour de la Chapultepec en Quibdo - nombre Tour Histórico en Roma en Hotel Oasis Tropical - temporada Alta (Junio - Agosto',2,'[]',14,1),(234,'2024-09-24 15:23:48.258847','3','Tour de la Chapultepec en Quibdo - nombre Aventura en el Amazonas en Hotel Oasis Tropical - temporada Alta (Junio - Agosto',2,'[{\"changed\": {\"fields\": [\"Id tour\"]}}]',14,1),(235,'2024-09-24 15:24:24.126648','3','Tour de la Chapultepec en Quibdo - nombre Safari en el Parque Nacional Kruger en Cabañas Bosque Encantado - temporada Alta',2,'[{\"changed\": {\"fields\": [\"Id tour\", \"Id hospedaje acomodacion\"]}}]',14,1),(236,'2024-09-24 15:24:43.957025','3','Tour de la Chapultepec en Quibdo - nombre Aventura en el Amazonas en Hotel Oasis Tropical - temporada Alta (Junio - Agosto',2,'[{\"changed\": {\"fields\": [\"Id tour\", \"Id hospedaje acomodacion\"]}}]',14,1),(237,'2024-09-24 15:25:15.780392','1','Medellin - nombre Tour Histórico en Roma',2,'[{\"changed\": {\"fields\": [\"Id destino\"]}}]',17,1),(238,'2024-09-24 15:25:28.629340','2','San Andres - nombre Aventura en el Amazonas',2,'[{\"changed\": {\"fields\": [\"Id destino\"]}}]',17,1),(239,'2024-09-24 15:25:50.718404','4','Tour de la Plaza Garibaldi en Quibdo - nombre Safari en el Parque Nacional Kruger en Vila Marina del Sol - temporada Alta (Vacaciones de',2,'[{\"changed\": {\"fields\": [\"Id tour\"]}}]',14,1),(240,'2024-09-24 15:26:58.160567','6','Quibdo - nombre wzrxtcfgik',1,'[{\"added\": {}}]',17,1),(241,'2024-09-24 15:27:38.244903','4','Tour Nocturno en Quibdo - nombre Safari en el Parque Nacional Kruger en Cabañas Bosque Encantado - temporada Alta',2,'[{\"changed\": {\"fields\": [\"Id paquete\", \"Id hospedaje acomodacion\"]}}]',14,1),(242,'2024-09-24 15:28:39.205452','3','Tour de la Chapultepec en Quibdo - nombre wzrxtcfgik en Cabañas Bosque Encantado - temporada Alta',2,'[{\"changed\": {\"fields\": [\"Id tour\", \"Id hospedaje acomodacion\"]}}]',14,1),(243,'2024-09-24 15:30:58.787156','6','Quibdo - temporada erstthdfj drdytud tfuy - tipo_hospedaje Hotel de lujo',1,'[{\"added\": {}}]',12,1),(244,'2024-09-24 15:31:30.859164','22','Aventura en la Patagonia en Quibdo - nombre wzrxtcfgik en Cabañas Bosque Encantado - temporada Alta',1,'[{\"added\": {}}]',14,1),(245,'2024-09-24 15:32:27.668502','5','Quibdo - temporada Albergue Aventurero - tipo_hospedaje Hotel de lujo',2,'[{\"added\": {\"name\": \"hospedaje acomodacion\", \"object\": \"carlos - temporada baja\"}}]',12,1),(246,'2024-09-24 15:33:10.522320','1','Safari en Kenia y Tanzania en Quibdo - nombre Tour Gastronómico en Bangkok en Resort Montaña Serena - temporada Alta (Julio - Agosto',2,'[]',14,1),(247,'2024-09-24 15:33:17.518759','3','Tour de la Chapultepec en Quibdo - nombre Crucero por los Fiordos Noruegos en Cabañas Bosque Encantado - temporada Alta',2,'[{\"changed\": {\"fields\": [\"Id tour\"]}}]',14,1),(248,'2024-09-24 15:41:50.225071','7','Quibdo - nombre x vmnbmv',1,'[{\"added\": {}}]',17,1),(249,'2024-09-24 15:42:58.840064','23','Tour de la Ciudad de los Deportes en Quibdo - nombre x vmnbmv en Resort Montaña Serena - temporada Alta (Julio - Agosto',1,'[{\"added\": {}}]',14,1),(250,'2024-09-24 15:43:40.964688','23','Tour de la Zona Rosa en Quibdo - nombre x vmnbmv en Resort Montaña Serena - temporada Alta (Julio - Agosto',2,'[{\"changed\": {\"fields\": [\"Id paquete\"]}}]',14,1),(251,'2024-09-24 15:43:53.162232','23','Tour de la Zona Rosa en Quibdo - nombre x vmnbmv en carlos - temporada baja',2,'[{\"changed\": {\"fields\": [\"Id hospedaje acomodacion\"]}}]',14,1),(252,'2024-09-24 15:45:56.413064','4','Tour de la Zona Rosa en Quibdo - nombre Safari en el Parque Nacional Kruger en Cabañas Bosque Encantado - temporada Alta',2,'[{\"changed\": {\"fields\": [\"Id paquete\"]}}]',14,1),(253,'2024-10-03 15:11:41.923875','25','Tour de la Chapultepec',2,'[{\"changed\": {\"fields\": [\"Vigencia inicio\", \"Vigencia fin\"]}}]',10,3),(254,'2024-10-03 15:12:31.519653','15','Tour de la Zona Rosa',2,'[{\"changed\": {\"fields\": [\"Vigencia inicio\", \"Vigencia fin\"]}}]',10,3),(255,'2024-10-03 16:50:11.070390','7','Hotel Luxury Haven',2,'[{\"changed\": {\"fields\": [\"Capacidad\"]}}]',7,3),(256,'2024-10-03 16:50:22.859717','6','carlos',2,'[{\"changed\": {\"fields\": [\"Capacidad\"]}}]',7,3),(257,'2024-10-10 23:27:03.531696','7','triple',2,'[{\"changed\": {\"fields\": [\"Nombre\", \"Descripcion\"]}}]',7,3),(258,'2024-10-10 23:39:57.023208','3','cecilla',2,'[{\"changed\": {\"fields\": [\"Descripcion\"]}}]',7,3),(259,'2024-10-10 23:40:08.566857','2','triple',2,'[{\"changed\": {\"fields\": [\"Descripcion\"]}}]',7,3),(260,'2024-10-10 23:40:22.608075','1','doble',2,'[{\"changed\": {\"fields\": [\"Descripcion\"]}}]',7,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'viajes','acomodacion'),(8,'viajes','adicion'),(11,'viajes','cliente'),(9,'viajes','destino'),(16,'viajes','detallereserva'),(12,'viajes','hospedaje'),(13,'viajes','hospedajeacomodacion'),(10,'viajes','paquete'),(14,'viajes','paquetetour'),(15,'viajes','reserva'),(17,'viajes','tour');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-07-30 16:04:31.107442'),(2,'auth','0001_initial','2024-07-30 16:04:31.549595'),(3,'admin','0001_initial','2024-07-30 16:04:31.668250'),(4,'admin','0002_logentry_remove_auto_add','2024-07-30 16:04:31.678567'),(5,'admin','0003_logentry_add_action_flag_choices','2024-07-30 16:04:31.691571'),(6,'contenttypes','0002_remove_content_type_name','2024-07-30 16:04:31.788941'),(7,'auth','0002_alter_permission_name_max_length','2024-07-30 16:04:31.844269'),(8,'auth','0003_alter_user_email_max_length','2024-07-30 16:04:31.882933'),(9,'auth','0004_alter_user_username_opts','2024-07-30 16:04:31.892933'),(10,'auth','0005_alter_user_last_login_null','2024-07-30 16:04:31.951572'),(11,'auth','0006_require_contenttypes_0002','2024-07-30 16:04:31.954568'),(12,'auth','0007_alter_validators_add_error_messages','2024-07-30 16:04:31.966568'),(13,'auth','0008_alter_user_username_max_length','2024-07-30 16:04:32.028255'),(14,'auth','0009_alter_user_last_name_max_length','2024-07-30 16:04:32.075964'),(15,'auth','0010_alter_group_name_max_length','2024-07-30 16:04:32.116710'),(16,'auth','0011_update_proxy_permissions','2024-07-30 16:04:32.130106'),(17,'auth','0012_alter_user_first_name_max_length','2024-07-30 16:04:32.200632'),(18,'sessions','0001_initial','2024-07-30 16:04:32.240379'),(19,'viajes','0001_initial','2024-07-30 16:04:33.046957'),(20,'viajes','0002_alter_tour_duracion','2024-08-13 17:25:42.585665'),(21,'viajes','0003_hospedaje_telefono_and_more','2024-08-13 17:30:40.598050'),(22,'viajes','0004_hospedajeacomodacion_fecha_fin_and_more','2024-10-03 16:49:36.311464'),(23,'viajes','0005_acomodacion_capacidad','2024-10-03 16:49:36.919162');
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
INSERT INTO `django_session` VALUES ('do1hjal2j0xx55wk020x93uoaa7d2ksa','.eJxVjMsOwiAQRf-FtSHMFAK4dO83kBkeUjWQlHZl_Hdt0oVu7znnvkSgba1hG3kJcxJnMYnT78YUH7ntIN2p3bqMva3LzHJX5EGHvPaUn5fD_TuoNOq3dp4LTAqtQ2JMGgpoyjlGraJx5BmLNSoBInBhSw60Lh505OyMIRTvD-SRN-0:1swNTg:ixv5xtxvqOm2Sro-R46A_O9PRkFusBfKU43LwP6_13Q','2024-10-17 15:10:52.056627'),('e2m33pjeo2u9wq2kewsl7gkfseboxofs','.eJxVjEEOwiAQRe_C2hCYAgWX7j0DgRlGqoYmpV0Z765NutDtf-_9l4hpW2vcelniROIstDj9bjnho7Qd0D212yxxbusyZbkr8qBdXmcqz8vh_h3U1Ou3NhoVkx49gTec1YjKuhwsEwbwDAgDO5tAFcPBIpGHweiCVLIDrY14fwDlljf9:1sl83j:WMmwGvFt0FizNsvWrXi7ukpsfXhP0UALBHrXePcfhhc','2024-09-16 14:29:35.483793'),('kxumcf1gxm3mtlpqlrnh4bckhm364trz','.eJxVjEEOwiAQRe_C2hCYAgWX7j0DgRlGqoYmpV0Z765NutDtf-_9l4hpW2vcelniROIstDj9bjnho7Qd0D212yxxbusyZbkr8qBdXmcqz8vh_h3U1Ou3NhoVkx49gTec1YjKuhwsEwbwDAgDO5tAFcPBIpGHweiCVLIDrY14fwDlljf9:1shXpw:3s7xyW3xM8nYSEBIArPsT5Ag-jk79bXhoXUdrlSatWo','2024-09-06 17:12:32.289890'),('u9xm186obpy4kf5cgq3n4hsa8dp1zn4b','.eJxVjEEOwiAQRe_C2hCYAgWX7j0DgRlGqoYmpV0Z765NutDtf-_9l4hpW2vcelniROIstDj9bjnho7Qd0D212yxxbusyZbkr8qBdXmcqz8vh_h3U1Ou3NhoVkx49gTec1YjKuhwsEwbwDAgDO5tAFcPBIpGHweiCVLIDrY14fwDlljf9:1sqYWu:F0LHemH0lR7yHHnMqzfIjQN11StuFjlZXJm1s3e8dzc','2024-10-01 13:46:08.703367'),('upvg0vb9279ncg8yjziatxgxddrln5ou','.eJxVjEEOwiAQRe_C2hCYAgWX7j0DgRlGqoYmpV0Z765NutDtf-_9l4hpW2vcelniROIstDj9bjnho7Qd0D212yxxbusyZbkr8qBdXmcqz8vh_h3U1Ou3NhoVkx49gTec1YjKuhwsEwbwDAgDO5tAFcPBIpGHweiCVLIDrY14fwDlljf9:1sibf9:v4Vr1suxJ1Znvw6NbcjnAYfZYkG7L_52qxB-CDFbOrg','2024-09-09 15:29:47.594127'),('wzye7dnhtlq7u8n41k3w93kwozlq6av5','.eJxVjEEOwiAQRe_C2hCYAgWX7j0DgRlGqoYmpV0Z765NutDtf-_9l4hpW2vcelniROIstDj9bjnho7Qd0D212yxxbusyZbkr8qBdXmcqz8vh_h3U1Ou3NhoVkx49gTec1YjKuhwsEwbwDAgDO5tAFcPBIpGHweiCVLIDrY14fwDlljf9:1siZhO:zWKq2u7Z0LxL3YJOaXSX6unWg-GOyTeQJbzRfkd3yjk','2024-09-09 13:23:58.163255'),('xwxnqobgq6qwi2j0ek9ptr4y17mb040g','.eJxVjEEOwiAQRe_C2pAGZobi0r1nIAMMUjU0Ke3KeHdt0oVu_3vvv1Tgba1h67KEKauzMur0u0VOD2k7yHdut1mnua3LFPWu6IN2fZ2zPC-H-3dQuddvHb23hYwDBGvBi_gkDolIRkvIIFBcHEYmsp6KiQ6TA0DDkQbELOr9AcBMNw0:1sb0is:0fHd-GvmSq5bFTfkiJ1DZ7gd7SAyBpXSOuRJVAA36d8','2024-08-19 16:38:14.400610');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_acomodacion`
--

DROP TABLE IF EXISTS `viajes_acomodacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_acomodacion` (
  `id_acomodacion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `estado` int NOT NULL,
  `capacidad` int NOT NULL,
  PRIMARY KEY (`id_acomodacion`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_acomodacion`
--

LOCK TABLES `viajes_acomodacion` WRITE;
/*!40000 ALTER TABLE `viajes_acomodacion` DISABLE KEYS */;
INSERT INTO `viajes_acomodacion` VALUES (1,'doble','dos habitaciones',1,2),(2,'triple','tres abitaciones',1,3),(3,'cecilla','una habitacion',1,1);
/*!40000 ALTER TABLE `viajes_acomodacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_adicion`
--

DROP TABLE IF EXISTS `viajes_adicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_adicion` (
  `id_adicion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL,
  `costo` double NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`id_adicion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_adicion`
--

LOCK TABLES `viajes_adicion` WRITE;
/*!40000 ALTER TABLE `viajes_adicion` DISABLE KEYS */;
INSERT INTO `viajes_adicion` VALUES (1,'Escapada a la Rivier','Paquete de 5 noches en un resort todo incluido en la Riviera Maya, con actividades acuáticas y excursiones a ruinas mayas.',1.2,1),(2,'Aventura en los Alpe','Viaje de 7 días que incluye hospedaje en un chalet en los Alpes, pases para esquiar y tours guiados por paisajes alpinos.',2.5,1),(3,'Tour Cultural por Ja','Paquete de 10 días que recorre Tokio, Kioto y Osaka, con visitas a templos, jardines y experiencias gastronómicas locales.',3,1),(4,'Crucero','Crucero de 7 noches visitando ciudades como Barcelona, Roma y Atenas, con todas las comidas incluidas y excursiones opcionales.',1.8,1),(5,'Retiro de Bienestar','Estancia de 6 noches en un resort de bienestar en Bali, con sesiones diarias de yoga, meditación y tratamientos de spa.',2.2,1);
/*!40000 ALTER TABLE `viajes_adicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_cliente`
--

DROP TABLE IF EXISTS `viajes_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `tipo_doc` varchar(20) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `estado` int NOT NULL,
  `id_destino` int NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `documento` (`documento`),
  KEY `viajes_cliente_id_destino_ebeaf204_fk_viajes_destino_id_destino` (`id_destino`),
  CONSTRAINT `viajes_cliente_id_destino_ebeaf204_fk_viajes_destino_id_destino` FOREIGN KEY (`id_destino`) REFERENCES `viajes_destino` (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_cliente`
--

LOCK TABLES `viajes_cliente` WRITE;
/*!40000 ALTER TABLE `viajes_cliente` DISABLE KEYS */;
INSERT INTO `viajes_cliente` VALUES (1,'Mena','C.C','098765','312345689','ejemplo@gmail.com','sur',1,6),(2,'carlos','C.C','87654','3123456','ejemplo@gmail.com','sur',1,7),(3,'Yeiner','C.C','0987654','3123456','ejemplo@gmail.com','sur',1,8),(4,'Cuesta','C.C','765432','3123456','ejemplo@gmail.com','sur',1,9),(5,'Palacios','C.C','876543','3123456','ejemplo@gmail.com','sur',1,10);
/*!40000 ALTER TABLE `viajes_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_destino`
--

DROP TABLE IF EXISTS `viajes_destino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_destino` (
  `id_destino` int NOT NULL AUTO_INCREMENT,
  `destino` varchar(200) NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_destino`
--

LOCK TABLES `viajes_destino` WRITE;
/*!40000 ALTER TABLE `viajes_destino` DISABLE KEYS */;
INSERT INTO `viajes_destino` VALUES (1,'cucuta',1),(2,'Medellin',1),(3,'San Andres',1),(4,'Cancún',1),(5,'Vancouver',1),(6,'París',1),(7,'Kyoto',1),(8,'Nápoles',1),(9,'Bogota',1),(10,'Quibdo',1);
/*!40000 ALTER TABLE `viajes_destino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_detallereserva`
--

DROP TABLE IF EXISTS `viajes_detallereserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_detallereserva` (
  `id_detalle_reserva` int NOT NULL AUTO_INCREMENT,
  `habitaciones` int NOT NULL,
  `adulto` int NOT NULL,
  `infante` int NOT NULL,
  `comentarios` varchar(500) DEFAULT NULL,
  `id_acomodacion` int DEFAULT NULL,
  `id_adicion` int DEFAULT NULL,
  `id_paquete_tour` int DEFAULT NULL,
  `id_reserva` int NOT NULL,
  PRIMARY KEY (`id_detalle_reserva`),
  KEY `viajes_detallereserv_id_acomodacion_0e9a628a_fk_viajes_ac` (`id_acomodacion`),
  KEY `viajes_detallereserv_id_adicion_490f61e4_fk_viajes_ad` (`id_adicion`),
  KEY `viajes_detallereserv_id_paquete_tour_723793a0_fk_viajes_pa` (`id_paquete_tour`),
  KEY `viajes_detallereserv_id_reserva_df9ffbc7_fk_viajes_re` (`id_reserva`),
  CONSTRAINT `viajes_detallereserv_id_acomodacion_0e9a628a_fk_viajes_ac` FOREIGN KEY (`id_acomodacion`) REFERENCES `viajes_acomodacion` (`id_acomodacion`),
  CONSTRAINT `viajes_detallereserv_id_adicion_490f61e4_fk_viajes_ad` FOREIGN KEY (`id_adicion`) REFERENCES `viajes_adicion` (`id_adicion`),
  CONSTRAINT `viajes_detallereserv_id_paquete_tour_723793a0_fk_viajes_pa` FOREIGN KEY (`id_paquete_tour`) REFERENCES `viajes_paquetetour` (`id_paquete_tour`),
  CONSTRAINT `viajes_detallereserv_id_reserva_df9ffbc7_fk_viajes_re` FOREIGN KEY (`id_reserva`) REFERENCES `viajes_reserva` (`id_reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_detallereserva`
--

LOCK TABLES `viajes_detallereserva` WRITE;
/*!40000 ALTER TABLE `viajes_detallereserva` DISABLE KEYS */;
INSERT INTO `viajes_detallereserva` VALUES (1,1,1,1,'Tu estancia en el Hotel Luxury Haven está confirmada. La suite incluye acceso al spa y a la piscina en la azotea, así como desayuno buffet diario. Recuerda que el check-in es a partir de las 3:00 PM y el check-out antes de las 12:00 PM. Si necesitas servicios adicionales, no dudes en contactar con la recepción.',1,1,1,1),(2,2,2,1,'Tu experiencia en Eco-Lodge Serenidad está lista! La cabaña incluye todas las comidas orgánicas y una excursión guiada por la selva. La llegada se realiza entre las 2:00 PM y las 6:00 PM. Te recomendamos llevar ropa ligera y repelente de insectos para disfrutar plenamente de la naturaleza.',2,2,2,2),(3,2,1,1,'Tu reserva en el Resort Playa Dorada está confirmada. El paquete todo incluido cubre comidas, bebidas y actividades recreativas. La entrada al resort es a partir de las 3:00 PM y el horario de salida es a las 11:00 AM. ¡Prepárate para disfrutar de unas vacaciones sin preocupaciones junto al mar!',3,3,3,3),(4,1,1,1,'Tu estancia en el Hotel Boutique La Belleza está confirmada. La habitación incluye un desayuno gourmet diario y acceso a un tour cultural opcional. El check-in es a partir de las 2:00 PM y el check-out debe realizarse antes de las 12:00 PM. No dudes en consultar al personal sobre recomendaciones locales y actividades.',3,4,4,4),(5,1,2,1,'Tu reserva en Cabañas Rústicas El Refugio está confirmada. La cabaña cuenta con una cocina completa y una chimenea para mantener el ambiente acogedor. La llegada es posible entre las 3:00 PM y las 7:00 PM. No olvides traer ropa abrigadora y disfrutar de las actividades al aire libre disponibles en la zona.',2,5,5,5);
/*!40000 ALTER TABLE `viajes_detallereserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_hospedaje`
--

DROP TABLE IF EXISTS `viajes_hospedaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_hospedaje` (
  `id_hospedaje` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `tipo_hospedaje` varchar(30) NOT NULL,
  `descripcion` longtext NOT NULL,
  `tarifa_base` double NOT NULL,
  `estado` int NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `id_destino` int NOT NULL,
  `telefono` varchar(50) NOT NULL,
  PRIMARY KEY (`id_hospedaje`),
  KEY `viajes_hospedaje_id_destino_70de6455_fk_viajes_de` (`id_destino`),
  CONSTRAINT `viajes_hospedaje_id_destino_70de6455_fk_viajes_de` FOREIGN KEY (`id_destino`) REFERENCES `viajes_destino` (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_hospedaje`
--

LOCK TABLES `viajes_hospedaje` WRITE;
/*!40000 ALTER TABLE `viajes_hospedaje` DISABLE KEYS */;
INSERT INTO `viajes_hospedaje` VALUES (1,'Hotel El Paraíso','Calle de la Luna, 45, Ciudad de México, México','ejemplo@gmail.com','Hotel de lujo','Hotel de 5 estrellas ubicado en el corazón de la ciudad. Ofrece spa, gimnasio, piscina en la azotea',200,1,'assets/img/1.jfif',1,'312345689'),(2,'Posada La Roca','Dirección: Avenida de la Sierra, 10, San Sebastián','ejemplo@gmail.com','Hotel de lujo','Encantadora posada situada en las montañas. Ofrece habitaciones acogedoras con vistas panorámicas, d',80,1,'assets/img/5.jfif',2,'312345689'),(3,'Hostal Sol y Mar','Playa de la Costa, 32, Cartagena, Colombia','ejemplo@gmail.com','Hotel de lujo','Hostal frente a la playa con un ambiente relajado. Ofrece camas en dormitorios compartidos y habita',30,1,'assets/img/4.jfif',3,'312345689'),(4,'Boutique Hotel Jardín del Mar','Dirección: Calle del Viento, 8, Cancún, México','ejemplo@gmail.com','Hotel de lujo','Hotel boutique con estilo mediterráneo, ubicado cerca de la playa. Ofrece habitaciones elegantes, pi',150,1,'assets/img/3.jfif',4,'312345689'),(5,'Albergue Aventurero','Dirección: Carretera de los Andes, Km 25, Mendoza,','ejemplo@gmail.com','Hotel de lujo','Albergue ideal para los amantes de la naturaleza y la aventura. Ofrece camas en dormitorios comparti',20,1,'assets/img/2.jfif',10,'312345689'),(6,'erstthdfj drdytud tfuy','Calle de la Luna, 45, Ciudad de México, México','ejemplo@gmail.com','Hotel de lujo','setrstyhbjuk,v',2,1,'',10,'3123456');
/*!40000 ALTER TABLE `viajes_hospedaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_hospedajeacomodacion`
--

DROP TABLE IF EXISTS `viajes_hospedajeacomodacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_hospedajeacomodacion` (
  `id_hospedaje_acomodacion` int NOT NULL AUTO_INCREMENT,
  `temporada` varchar(20) NOT NULL,
  `tarifa_agencia` double NOT NULL,
  `tarifa` double NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `id_acomodacion` int NOT NULL,
  `id_hospedaje` int NOT NULL,
  `fecha_fin` date NOT NULL,
  `fecha_inicio` date NOT NULL,
  PRIMARY KEY (`id_hospedaje_acomodacion`),
  KEY `viajes_hospedajeacom_id_acomodacion_3167e57a_fk_viajes_ac` (`id_acomodacion`),
  KEY `viajes_hospedajeacom_id_hospedaje_5e6ec122_fk_viajes_ho` (`id_hospedaje`),
  CONSTRAINT `viajes_hospedajeacom_id_acomodacion_3167e57a_fk_viajes_ac` FOREIGN KEY (`id_acomodacion`) REFERENCES `viajes_acomodacion` (`id_acomodacion`),
  CONSTRAINT `viajes_hospedajeacom_id_hospedaje_5e6ec122_fk_viajes_ho` FOREIGN KEY (`id_hospedaje`) REFERENCES `viajes_hospedaje` (`id_hospedaje`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_hospedajeacomodacion`
--

LOCK TABLES `viajes_hospedajeacomodacion` WRITE;
/*!40000 ALTER TABLE `viajes_hospedajeacomodacion` DISABLE KEYS */;
INSERT INTO `viajes_hospedajeacomodacion` VALUES (1,'Alta (Junio - Agosto',80,120,'',1,5,'2024-01-01','2024-01-01'),(2,'Alta (Julio - Agosto',150,200,'',2,2,'2024-01-01','2024-01-01'),(3,'Alta (Semana Santa,',95,140,'',3,3,'2024-01-01','2024-01-01'),(4,'Alta (Vacaciones de',70,100,'',1,4,'2024-01-01','2024-01-01'),(5,'Alta',120,160,'',2,5,'2024-01-01','2024-01-01'),(6,'baja',12345,14814,'',3,5,'2024-01-01','2024-01-01');
/*!40000 ALTER TABLE `viajes_hospedajeacomodacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_paquete`
--

DROP TABLE IF EXISTS `viajes_paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_paquete` (
  `id_paquete` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `vigencia_inicio` date NOT NULL,
  `vigencia_fin` date NOT NULL,
  `noche` int NOT NULL,
  `incluye` varchar(200) NOT NULL,
  `no_incluye` varchar(200) NOT NULL,
  `costo` double NOT NULL,
  `disponibilidad` varchar(50) NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`id_paquete`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_paquete`
--

LOCK TABLES `viajes_paquete` WRITE;
/*!40000 ALTER TABLE `viajes_paquete` DISABLE KEYS */;
INSERT INTO `viajes_paquete` VALUES (1,'Escapada Tropical en Cancún','Ubicado en la costa caribeña, el Hotel Oasis Tropical ofrece un refugio de lujo con vistas panorámicas al mar, una piscina infinita, y una variedad de restaurantes gourmet. Ideal para familias y parejas que buscan relajación y diversión bajo el sol.','2024-08-06','2024-08-13',1,'wifi','bar',120,'Todo el año, con excepciones en fechas festivas',1),(2,'Aventura en la Patagonia','Un emocionante viaje de 7 días explorando los paisajes impresionantes de la Patagonia chilena y argentina.','2024-08-01','2024-09-01',1,'Desayunos diarios','Pasajes aéreos',150,'Noviembre - Marzo',1),(3,'City Break en Barcelona','Explora la vibrante ciudad de Barcelona con un paquete de 4 días para disfrutar de su cultura, arquitectura y gastronomía.','2024-08-01','2024-08-31',3,'3 noches en hotel 4 estrellas','Almuerzos y cenas',100,'Todo el año',1),(4,'Rutas de Vino en Mendoza','Un paquete de 5 días para explorar las bodegas y viñedos de Mendoza, con degustaciones y experiencias enológicas.','2024-08-01','2024-08-05',5,'5 noches en hotel boutique','Cenas',200,'Marzo - Noviembre',1),(5,'Safari en Kenia y Tanzania','Un emocionante safari de 8 días visitando las reservas más famosas de Kenia y Tanzania para avistar la fauna africana.','2024-08-01','2024-08-23',2,'7 noches en lodges de safari','Propinas',500,'Junio - Octubre',1),(6,'Tour Histórico','Visita el Zócalo, Palacio de Bellas Artes y Catedral Metropolitana. Disponible todos los día','2024-08-01','2024-08-09',3,'comida y baño','piscina',10000,'Todo el año, con excepciones en fechas festivas',1),(7,'Tour de Gastronomía','Degusta la comida mexicana en mercados y restaurantes locales. Disponible los fines de semana.','2024-08-13','2024-08-22',3,'comida y baño','piscina',200000,'Noviembre - Marzo',1),(8,'Tour de Museos','Degusta la comida mexicana en mercados y restaurantes locales. Disponible los fines de semana.','2024-08-05','2024-08-09',5,'comida y baño','piscina',100000,'Junio - Octubre',1),(9,'Tour de la Ciudad','Visita los principales monumentos y barrios de la ciudad. Disponible todos los días.','2024-08-01','2024-08-09',3,'comida y baño','piscina',1000000,'enero-febrero',1),(10,'Tour Nocturno','Visita la ciudad iluminada y disfruta de la vida nocturna. Disponible los viernes y sábados','2024-08-05','2024-08-10',5,'comida y baño','piscina',10000,'Todo el año, con excepciones en fechas festivas',1),(11,'Tour de la Basílica','Visita la Basílica de Nuestra Señora de Guadalupe. Disponible todos los días.','2024-08-06','2024-08-20',4,'comida y baño','piscina',100000,'Todo el año, con excepciones en fechas festivas',1),(12,'Tour de Xochimilco','Pasea en trajinera por los canales de Xochimilco. Disponible todos los días.','2024-08-02','2024-08-15',3,'comida y baño','piscina',10000,'Junio - Octubre',1),(13,'Tour de la UNAM','Visita la Universidad Nacional Autónoma de México. Disponible los lunes a viernes','2024-08-01','2024-08-07',4,'comida y baño','piscina',10000,'Junio - Octubre',1),(14,'Tour de la Ciudad de los Deportes','Visita el Estadio Olímpico y el Palacio de los Deportes. Disponible los fines de semana.','2024-08-02','2024-08-14',6,'comida y baño','piscina',100000,'Noviembre - Marzo',1),(15,'Tour de la Zona Rosa','Visita la zona comercial y de entretenimiento de la Zona Rosa. Disponible todos los días.','2025-02-12','2025-05-15',4,'comida y baño','piscina',10000,'diciembre- enero',1),(16,'Tour de la Condesa*:','Visita el parque México y la zona de la Condesa. Disponible todos los días.','2024-08-01','2024-08-07',2,'comida y baño','piscina',100000,'Junio - Octubre',1),(17,'Tour de la Roma','Visita la zona artística y cultural de la Roma. Disponible todos los días.','2024-08-01','2024-08-06',4,'comida y baño','piscina',10000,'Todo el año, con excepciones en fechas festivas',1),(18,'Tour de la Coyoacán','Visita la zona histórica y cultural de Coyoacán. Disponible todos los días.','2024-08-05','2024-08-28',1,'comida y baño','piscina',10000,'enero-febrero',1),(19,'Tour de la Xochimilco y Coyoacán','Combina los tours de Xochimilco y Coyoacán. Disponible todos los días.','2024-08-06','2024-08-22',4,'comida y baño','piscina',10000,'Junio - Octubre',0),(20,'Tour de la Ciudad y Xochimilco','Combina los tours de la ciudad y Xochimilco. Dis ‎<Se editó este mensaje.','2024-08-01','2024-08-14',1,'comida y baño','piscina',10000,'enero-febrero',1),(21,'Tour de la Ciudad de los Palacios','Visita los palacios históricos de la ciudad. Disponible los fines de semana.','2024-08-20','2024-08-29',1,'comida y baño','piscina',1000,'Todo el año, con excepciones en fechas festivas',2),(22,'Tour de la Catedral y el Sagrario','Visita la Catedral Metropolitana y el Sagrario. Disponible todos los días.','2024-08-01','2024-08-08',3,'comida y baño','piscina',10000,'enero-febrero',1),(23,'Tour de la Plaza Garibaldi','Visita la plaza de mariachis y disfruta de la música en vivo. Disponible todos los días.','2024-08-05','2024-08-16',7,'comida y baño','piscina',10000,'enero-febrero',1),(24,'tour de la Merced','Visita el mercado de la Merced y degusta la comida local. Disponible los fines de semana','2024-08-12','2024-08-21',5,'comida y baño','piscina',10000,'Junio - Octubre',1),(25,'Tour de la Chapultepec','Visita el parque Chapultepec y el castillo. Disponible todos los días.','2025-05-08','2026-09-11',5,'comida y baño','piscina',100000,'enero-febrero',1);
/*!40000 ALTER TABLE `viajes_paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_paquetetour`
--

DROP TABLE IF EXISTS `viajes_paquetetour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_paquetetour` (
  `id_paquete_tour` int NOT NULL AUTO_INCREMENT,
  `id_paquete` int NOT NULL,
  `id_tour` int NOT NULL,
  `id_hospedaje_acomodacion` int NOT NULL,
  PRIMARY KEY (`id_paquete_tour`),
  KEY `viajes_paquetetour_id_tour_32cc1204_fk_viajes_tour_id_tour` (`id_tour`),
  KEY `viajes_paquetetour_id_paquete_11483777_fk_viajes_pa` (`id_paquete`),
  KEY `viajes_paquetetour_id_hospedaje_acomoda_e646b972_fk_viajes_ho` (`id_hospedaje_acomodacion`),
  CONSTRAINT `viajes_paquetetour_id_hospedaje_acomoda_e646b972_fk_viajes_ho` FOREIGN KEY (`id_hospedaje_acomodacion`) REFERENCES `viajes_hospedajeacomodacion` (`id_hospedaje_acomodacion`),
  CONSTRAINT `viajes_paquetetour_id_paquete_11483777_fk_viajes_pa` FOREIGN KEY (`id_paquete`) REFERENCES `viajes_paquete` (`id_paquete`),
  CONSTRAINT `viajes_paquetetour_id_tour_32cc1204_fk_viajes_tour_id_tour` FOREIGN KEY (`id_tour`) REFERENCES `viajes_tour` (`id_tour`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_paquetetour`
--

LOCK TABLES `viajes_paquetetour` WRITE;
/*!40000 ALTER TABLE `viajes_paquetetour` DISABLE KEYS */;
INSERT INTO `viajes_paquetetour` VALUES (1,5,3,2),(2,1,1,3),(3,25,5,5),(4,15,4,5),(5,15,3,1),(21,15,4,5),(22,2,6,5),(23,15,7,6);
/*!40000 ALTER TABLE `viajes_paquetetour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_reserva`
--

DROP TABLE IF EXISTS `viajes_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_reserva` (
  `id_reserva` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `cantidad` int NOT NULL,
  `total` double NOT NULL,
  `estado_reserva` varchar(20) NOT NULL,
  `metodo_pago` varchar(20) NOT NULL,
  `estado` int NOT NULL,
  `id_cliente` int NOT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `viajes_reserva_id_cliente_7981e356_fk_viajes_cliente_id_cliente` (`id_cliente`),
  CONSTRAINT `viajes_reserva_id_cliente_7981e356_fk_viajes_cliente_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `viajes_cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_reserva`
--

LOCK TABLES `viajes_reserva` WRITE;
/*!40000 ALTER TABLE `viajes_reserva` DISABLE KEYS */;
INSERT INTO `viajes_reserva` VALUES (1,'2024-08-01','2024-08-31','2024-08-06',5,160,'activa','ef',1,1),(2,'2024-08-28','2024-08-21','2024-08-08',1140,3,'activa','ef',1,2),(3,'2024-08-19','2024-08-24','2024-08-22',1,120,'activa','ef',1,3),(4,'2024-08-07','2024-08-17','2024-08-26',1,20,'activa','ef',1,4),(5,'2024-08-01','2024-08-23','2024-08-22',1,100,'activa','ef',1,5);
/*!40000 ALTER TABLE `viajes_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_tour`
--

DROP TABLE IF EXISTS `viajes_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_tour` (
  `id_tour` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` longtext,
  `valor` double DEFAULT NULL,
  `duracion` int DEFAULT NULL,
  `estado` int NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `id_destino` int NOT NULL,
  PRIMARY KEY (`id_tour`),
  KEY `viajes_tour_id_destino_7f7b6e4c_fk_viajes_destino_id_destino` (`id_destino`),
  CONSTRAINT `viajes_tour_id_destino_7f7b6e4c_fk_viajes_destino_id_destino` FOREIGN KEY (`id_destino`) REFERENCES `viajes_destino` (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_tour`
--

LOCK TABLES `viajes_tour` WRITE;
/*!40000 ALTER TABLE `viajes_tour` DISABLE KEYS */;
INSERT INTO `viajes_tour` VALUES (1,'Tour Histórico en Roma','Explora la rica historia de la Ciudad Eterna en un tour guiado que incluye visitas al Coliseo, el Foro Romano y el Panteón. Sumérgete en la cultura y arquitectura antigua mientras disfrutas de un reco',120,6,1,'assets/img/5.jfif',2),(2,'Aventura en el Amazonas','Embárcate en una experiencia única de 4 días',120,4,1,'assets/img/4.jfif',3),(3,'Tour Gastronómico en Bangkok','Descubre los sabores exóticos de Tailandia en un tour gastronómico de medio día. Visita mercados locales, prueba una variedad de platos tradicionales y aprende sobre la cocina tailandesa con un chef l',100,4,1,'assets/img/3.jfif',10),(4,'Safari en el Parque Nacional Kruger','Vive la emoción de un safari en el famoso Parque Nacional Kruger. Este tour de 3 días te llevará a través del parque en vehículos 4x4 para observar la fauna africana, incluyendo los Cinco Grandes (leó',1.2,3,1,'assets/img/2.jfif',10),(5,'Crucero por los Fiordos Noruegos','Disfruta de un crucero de 5 días por los impresionantes fiordos noruegos. Navega por paisajes de montañas, cascadas y aguas cristalinas, y explora encantadoras ciudades costeras como Bergen y Ålesund',1500,4,1,'assets/img/1.jfif',10),(6,'wzrxtcfgik','5sedryftgyuilñyfg',1324356,2,1,'assets/img/lus.jpeg',10),(7,'x vmnbmv','eefrgehrfmf',31244223,2,1,'assets/img/4.jfif',10);
/*!40000 ALTER TABLE `viajes_tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'agencia'
--

--
-- Dumping routines for database 'agencia'
--
/*!50003 DROP PROCEDURE IF EXISTS `buscar_hospedaje_acomodacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_hospedaje_acomodacion`(in valor int)
BEGIN
select vpt.id_paquete_tour 'id_paquete_tour', vha.id_hospedaje_acomodacion, vha.temporada, vh.id_hospedaje, va.id_acomodacion, va.nombre, vh.nombre'hospedaje' from viajes_hospedajeacomodacion vha inner join viajes_paquetetour vpt on vpt.id_hospedaje_acomodacion = vha.id_hospedaje_acomodacion join viajes_acomodacion va on vha.id_acomodacion=va.id_acomodacion inner join viajes_hospedaje vh on vha.id_hospedaje=vh.id_hospedaje WHERE vh.id_hospedaje=valor AND vh.estado = '1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_destino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_destino`(in valor int)
BEGIN
select viajes_paquetetour.id_paquete_tour 'ID_Paquete_Tour', concat(viajes_paquete.nombre ,'   ',viajes_tour.nombre, '   ', viajes_hospedaje.tipo_hospedaje, '   ', viajes_hospedaje.nombre, '   ') 'Informacion', viajes_paquete.descripcion 'Descripcion', viajes_paquete.vigencia_inicio 'Vigencia_Inicio', viajes_paquete.vigencia_fin 'Vigencia_Fin', viajes_paquete.noche 'Noches', viajes_paquete.noche + 1 'Dias',viajes_paquete.incluye 'Incluye', viajes_paquete.no_incluye  'No_Incluye', viajes_paquete.costo 'Costo', viajes_paquete.disponibilidad 'Disponibilidad', viajes_paquete.estado 'Estado', viajes_tour.nombre 'Nombre_Tour', viajes_tour.descripcion 'Tour_Descripcion', viajes_tour.valor 'Tour_Valor', viajes_tour.duracion'Tour_Duracion', viajes_tour.estado 'Estado_Tour', viajes_tour.imagen'Imagen_Tour', viajes_hospedaje.nombre 'Nombre_H', viajes_hospedaje.direccion'Direccion_H', viajes_hospedaje.correo'Correo_H',viajes_hospedaje.descripcion'Descripcion_Hospedaje',viajes_hospedaje.tarifa_base'Tarifa_Base_H', viajes_hospedaje.estado'Estado_Hospedaje',viajes_hospedaje.imagen'Imagen_Hospedaje',viajes_hospedaje.telefono'Telefono_Hospedaje',viajes_destino.destino'Destino_Del_Viaje',viajes_acomodacion.nombre'Nombre_Acomodacion',viajes_acomodacion.descripcion'Descripcion_Acomodacion',viajes_acomodacion.estado'Estado_Acomodacion' from viajes_paquetetour inner join viajes_paquete on viajes_paquete.id_paquete = viajes_paquetetour.id_paquete inner join viajes_tour on viajes_tour.id_tour = viajes_paquetetour.id_tour inner join viajes_hospedajeacomodacion on viajes_paquetetour.id_hospedaje_acomodacion = viajes_hospedajeacomodacion.id_hospedaje_acomodacion inner join viajes_hospedaje on viajes_hospedaje.id_hospedaje = viajes_hospedajeacomodacion.id_hospedaje inner join viajes_destino on viajes_destino.id_destino = viajes_tour.id_destino inner join viajes_acomodacion on viajes_acomodacion.id_acomodacion = viajes_hospedajeacomodacion.id_acomodacion WHERE viajes_paquetetour.id_paquete_tour LIKE CONCAT('%', valor, '%')  and viajes_tour.estado='1';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consulta_pa_tour` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta_pa_tour`(IN paquete_tour VARCHAR(100))
BEGIN
    select vpt.id_paquete_tour, concat(vp.nombre,' - ', vh.tipo_hospedaje,' ', vh.nombre)'nombre_paquete', vp.vigencia_inicio , vp.vigencia_fin ,vd.destino , (vp.noche + 1)'dias', vp.noche, vp.descripcion, vt.imagen, vp.costo  from viajes_paquetetour vpt inner join viajes_paquete vp on vpt.id_paquete = vp.id_paquete inner join viajes_hospedajeacomodacion vha on vha.id_hospedaje_acomodacion = vpt.id_hospedaje_acomodacion inner join viajes_hospedaje vh on vha.id_hospedaje=vh.id_hospedaje inner join viajes_destino vd on vh.id_destino = vd.id_destino inner join viajes_tour vt on vpt.id_tour =vt.id_tour 
WHERE vd.destino LIKE CONCAT('%', paquete_tour ,'%') AND vp.vigencia_inicio >= current_date()  AND  vp.estado = '1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cons_destino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cons_destino`(in valor varchar(100))
BEGIN
select id_destino, destino from viajes_destino where destino like concat('%', valor ,'%') and estado= '1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `detalle_paqute_tour` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detalle_paqute_tour`(in id_valor int)
BEGIN
SELECT 
    viajes_paquetetour.id_paquete_tour, CONCAT(viajes_paquete.nombre, ' ', viajes_tour.nombre, ' ', viajes_destino.destino, ' ', viajes_hospedaje.tipo_hospedaje, ' ', viajes_hospedaje.nombre ) AS 'nombre_detalles',viajes_paquete.descripcion,viajes_paquete.vigencia_inicio,viajes_paquete.vigencia_fin,viajes_paquete.noche + 1 'dia',viajes_paquete.noche,viajes_paquete.incluye ,viajes_paquete.no_incluye ,viajes_paquete.costo ,viajes_paquete.disponibilidad 'disponible',viajes_tour.valor, viajes_tour.duracion ,viajes_tour.imagen 'imagen_tour',viajes_hospedaje.tipo_hospedaje, viajes_hospedajeacomodacion.tarifa ,viajes_hospedaje.imagen 'imagen_hospedaje', viajes_destino.destino, viajes_acomodacion.nombre 'acomodacion',
viajes_acomodacion.capacidad
FROM 
    viajes_paquetetour
INNER JOIN 
    viajes_paquete ON viajes_paquete.id_paquete = viajes_paquetetour.id_paquete
INNER JOIN 
    viajes_tour ON viajes_tour.id_tour = viajes_paquetetour.id_tour
INNER JOIN 
    viajes_hospedajeacomodacion ON viajes_paquetetour.id_hospedaje_acomodacion = viajes_hospedajeacomodacion.id_hospedaje_acomodacion
INNER JOIN 
    viajes_hospedaje ON viajes_hospedaje.id_hospedaje = viajes_hospedajeacomodacion.id_hospedaje
INNER JOIN 
    viajes_destino ON viajes_destino.id_destino = viajes_tour.id_destino
INNER JOIN 
    viajes_acomodacion ON viajes_acomodacion.id_acomodacion = viajes_hospedajeacomodacion.id_acomodacion
WHERE 
    viajes_paquetetour.id_paquete_tour = id_valor
    AND viajes_tour.estado = 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-15  8:39:17
