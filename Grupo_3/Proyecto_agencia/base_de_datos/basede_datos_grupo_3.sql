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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$Je4TiOxcsMYFVkiOUOWQIM$N5lRfJOhYcmLfNV0E+aMWKJb4U6yZDGQDwnyeSra/NA=','2024-08-01 16:31:11.940029',1,'admin','','','ejemplo@gmail.com',1,1,'2024-07-30 16:11:17.060586'),(2,'pbkdf2_sha256$720000$Lqp1ZNpKxnkPykDNJgpl0x$jH2ThhEAKWIRt5HRNcjzEH4R8W/oBScI2x9JS8f0ais=','2024-08-05 16:38:14.397609',1,'YeinerProgramador','yeiner','cuesta','heinercusta@gmail.cm',1,1,'2024-08-01 16:29:11.000000');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-08-01 16:12:46.776394','1','Acomodacion object (1)',1,'[{\"added\": {}}]',7,1),(2,'2024-08-01 16:13:07.434002','2','Acomodacion object (2)',1,'[{\"added\": {}}]',7,1),(3,'2024-08-01 16:13:34.299164','3','Acomodacion object (3)',1,'[{\"added\": {}}]',7,1),(4,'2024-08-01 16:13:56.723896','4','Acomodacion object (4)',1,'[{\"added\": {}}]',7,1),(5,'2024-08-01 16:14:23.581687','5','Acomodacion object (5)',1,'[{\"added\": {}}]',7,1),(6,'2024-08-01 16:18:25.323879','1','Adicion object (1)',1,'[{\"added\": {}}]',8,1),(7,'2024-08-01 16:19:06.537922','2','Adicion object (2)',1,'[{\"added\": {}}]',8,1),(8,'2024-08-01 16:19:54.315143','3','Adicion object (3)',1,'[{\"added\": {}}]',8,1),(9,'2024-08-01 16:20:44.795201','4','Adicion object (4)',1,'[{\"added\": {}}]',8,1),(10,'2024-08-01 16:21:19.619751','5','Adicion object (5)',1,'[{\"added\": {}}]',8,1),(11,'2024-08-01 16:24:51.496415','1','Destino object (1)',1,'[{\"added\": {}}]',9,1),(12,'2024-08-01 16:25:14.974703','2','Destino object (2)',1,'[{\"added\": {}}]',9,1),(13,'2024-08-01 16:25:28.466065','2','Destino object (2)',2,'[]',9,1),(14,'2024-08-01 16:25:47.686899','3','Destino object (3)',1,'[{\"added\": {}}]',9,1),(15,'2024-08-01 16:26:01.739533','4','Destino object (4)',1,'[{\"added\": {}}]',9,1),(16,'2024-08-01 16:26:15.032259','5','Destino object (5)',1,'[{\"added\": {}}]',9,1),(17,'2024-08-01 16:29:12.315399','2','YeinerProgramador',1,'[{\"added\": {}}]',4,1),(18,'2024-08-01 16:30:03.146091','2','YeinerProgramador',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Superuser status\", \"Last login\"]}}]',4,1),(19,'2024-08-02 14:04:26.588355','6','Destino object (6)',1,'[{\"added\": {}}]',9,2),(20,'2024-08-02 14:04:29.793521','1','Cliente object (1)',1,'[{\"added\": {}}]',11,2),(21,'2024-08-02 14:05:03.427978','7','Destino object (7)',1,'[{\"added\": {}}]',9,2),(22,'2024-08-02 14:05:09.674325','2','Cliente object (2)',1,'[{\"added\": {}}]',11,2),(23,'2024-08-02 14:06:48.389875','8','Destino object (8)',1,'[{\"added\": {}}]',9,2),(24,'2024-08-02 14:07:00.364082','3','Cliente object (3)',1,'[{\"added\": {}}]',11,2),(25,'2024-08-02 14:08:26.290987','9','Destino object (9)',1,'[{\"added\": {}}]',9,2),(26,'2024-08-02 14:08:31.511394','4','Cliente object (4)',1,'[{\"added\": {}}]',11,2),(27,'2024-08-02 14:09:23.709759','10','Destino object (10)',1,'[{\"added\": {}}]',9,2),(28,'2024-08-02 14:09:27.267736','5','Cliente object (5)',1,'[{\"added\": {}}]',11,2),(29,'2024-08-02 14:12:14.604320','6','Acomodacion object (6)',1,'[{\"added\": {}}]',7,2),(30,'2024-08-02 15:44:35.531675','1','Hospedaje object (1)',1,'[{\"added\": {}}]',12,2),(31,'2024-08-02 15:48:22.021993','2','Hospedaje object (2)',1,'[{\"added\": {}}]',12,2),(32,'2024-08-02 15:51:12.578126','3','Hospedaje object (3)',1,'[{\"added\": {}}]',12,2),(33,'2024-08-02 15:53:10.602420','4','Hospedaje object (4)',1,'[{\"added\": {}}]',12,2),(34,'2024-08-02 15:54:48.549600','5','Hospedaje object (5)',1,'[{\"added\": {}}]',12,2),(35,'2024-08-02 16:00:01.774176','1','HospedajeAcomodacion object (1)',1,'[{\"added\": {}}]',13,2),(36,'2024-08-02 16:01:04.372036','2','HospedajeAcomodacion object (2)',1,'[{\"added\": {}}]',13,2),(37,'2024-08-02 16:01:57.451944','3','HospedajeAcomodacion object (3)',1,'[{\"added\": {}}]',13,2),(38,'2024-08-02 16:02:30.827080','4','HospedajeAcomodacion object (4)',1,'[{\"added\": {}}]',13,2),(39,'2024-08-02 16:03:18.065129','5','HospedajeAcomodacion object (5)',1,'[{\"added\": {}}]',13,2),(40,'2024-08-02 16:04:40.576976','1','Reserva object (1)',1,'[{\"added\": {}}]',15,2),(41,'2024-08-02 16:05:12.580927','2','Reserva object (2)',1,'[{\"added\": {}}]',15,2),(42,'2024-08-02 16:05:36.896902','3','Reserva object (3)',1,'[{\"added\": {}}]',15,2),(43,'2024-08-02 16:06:00.274414','4','Reserva object (4)',1,'[{\"added\": {}}]',15,2),(44,'2024-08-02 16:06:28.213764','5','Reserva object (5)',1,'[{\"added\": {}}]',15,2),(45,'2024-08-02 16:10:06.525919','1','Paquete object (1)',1,'[{\"added\": {}}]',10,2),(46,'2024-08-02 16:11:46.443691','2','Paquete object (2)',1,'[{\"added\": {}}]',10,2),(47,'2024-08-02 16:12:51.077212','3','Paquete object (3)',1,'[{\"added\": {}}]',10,2),(48,'2024-08-02 16:14:15.852197','4','Paquete object (4)',1,'[{\"added\": {}}]',10,2),(49,'2024-08-02 16:15:22.587566','5','Paquete object (5)',1,'[{\"added\": {}}]',10,2),(50,'2024-08-02 16:21:03.164965','1','Tour object (1)',1,'[{\"added\": {}}]',17,2),(51,'2024-08-02 16:22:12.568450','2','Tour object (2)',1,'[{\"added\": {}}]',17,2),(52,'2024-08-02 16:23:38.962580','3','Tour object (3)',1,'[{\"added\": {}}]',17,2),(53,'2024-08-02 16:25:13.505471','4','Tour object (4)',1,'[{\"added\": {}}]',17,2),(54,'2024-08-02 16:26:23.316087','5','Tour object (5)',1,'[{\"added\": {}}]',17,2),(55,'2024-08-02 16:26:25.957410','1','PaqueteTour object (1)',1,'[{\"added\": {}}]',14,2),(56,'2024-08-02 16:26:48.517024','2','PaqueteTour object (2)',1,'[{\"added\": {}}]',14,2),(57,'2024-08-02 16:29:36.839556','7','Acomodacion object (7)',1,'[{\"added\": {}}]',7,2),(58,'2024-08-02 16:31:25.543884','1','DetalleReserva object (1)',1,'[{\"added\": {}}]',16,2),(59,'2024-08-02 16:31:56.541457','3','PaqueteTour object (3)',1,'[{\"added\": {}}]',14,2),(60,'2024-08-02 16:32:30.651050','2','DetalleReserva object (2)',1,'[{\"added\": {}}]',16,2),(61,'2024-08-02 16:32:43.190354','4','PaqueteTour object (4)',1,'[{\"added\": {}}]',14,2),(62,'2024-08-02 16:33:08.878626','3','DetalleReserva object (3)',1,'[{\"added\": {}}]',16,2),(63,'2024-08-02 16:33:41.665584','4','DetalleReserva object (4)',1,'[{\"added\": {}}]',16,2),(64,'2024-08-02 16:33:55.701223','5','PaqueteTour object (5)',1,'[{\"added\": {}}]',14,2),(65,'2024-08-02 16:34:19.261500','5','DetalleReserva object (5)',1,'[{\"added\": {}}]',16,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-07-30 16:04:31.107442'),(2,'auth','0001_initial','2024-07-30 16:04:31.549595'),(3,'admin','0001_initial','2024-07-30 16:04:31.668250'),(4,'admin','0002_logentry_remove_auto_add','2024-07-30 16:04:31.678567'),(5,'admin','0003_logentry_add_action_flag_choices','2024-07-30 16:04:31.691571'),(6,'contenttypes','0002_remove_content_type_name','2024-07-30 16:04:31.788941'),(7,'auth','0002_alter_permission_name_max_length','2024-07-30 16:04:31.844269'),(8,'auth','0003_alter_user_email_max_length','2024-07-30 16:04:31.882933'),(9,'auth','0004_alter_user_username_opts','2024-07-30 16:04:31.892933'),(10,'auth','0005_alter_user_last_login_null','2024-07-30 16:04:31.951572'),(11,'auth','0006_require_contenttypes_0002','2024-07-30 16:04:31.954568'),(12,'auth','0007_alter_validators_add_error_messages','2024-07-30 16:04:31.966568'),(13,'auth','0008_alter_user_username_max_length','2024-07-30 16:04:32.028255'),(14,'auth','0009_alter_user_last_name_max_length','2024-07-30 16:04:32.075964'),(15,'auth','0010_alter_group_name_max_length','2024-07-30 16:04:32.116710'),(16,'auth','0011_update_proxy_permissions','2024-07-30 16:04:32.130106'),(17,'auth','0012_alter_user_first_name_max_length','2024-07-30 16:04:32.200632'),(18,'sessions','0001_initial','2024-07-30 16:04:32.240379'),(19,'viajes','0001_initial','2024-07-30 16:04:33.046957'),(20,'viajes','0002_alter_tour_duracion','2024-08-13 17:25:42.585665'),(21,'viajes','0003_hospedaje_telefono_and_more','2024-08-13 17:30:40.598050');
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
INSERT INTO `django_session` VALUES ('xwxnqobgq6qwi2j0ek9ptr4y17mb040g','.eJxVjEEOwiAQRe_C2pAGZobi0r1nIAMMUjU0Ke3KeHdt0oVu_3vvv1Tgba1h67KEKauzMur0u0VOD2k7yHdut1mnua3LFPWu6IN2fZ2zPC-H-3dQuddvHb23hYwDBGvBi_gkDolIRkvIIFBcHEYmsp6KiQ6TA0DDkQbELOr9AcBMNw0:1sb0is:0fHd-GvmSq5bFTfkiJ1DZ7gd7SAyBpXSOuRJVAA36d8','2024-08-19 16:38:14.400610');
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
  PRIMARY KEY (`id_acomodacion`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_acomodacion`
--

LOCK TABLES `viajes_acomodacion` WRITE;
/*!40000 ALTER TABLE `viajes_acomodacion` DISABLE KEYS */;
INSERT INTO `viajes_acomodacion` VALUES (1,'Hotel Oasis Tropical','Ubicado en la costa caribeña, el Hotel Oasis Tropical ofrece un refugio de lujo con vistas panorámicas al mar, una piscina infinita, y una variedad de restaurantes gourmet. Ideal para familias y parejas que buscan relajación y diversión bajo el sol.',1),(2,'Resort Montaña Serena','Enclavado en las montañas, el Resort Montaña Serena ofrece un entorno tranquilo con acceso a senderos para senderismo y actividades al aire libre. Cuenta con un spa de primera clase y cabañas privadas con chimeneas. Perfecto para los amantes de la naturaleza y el bienestar.',1),(3,'Apartamento Urbano Central','Situado en el corazón de la ciudad, el Apartamento Urbano Central proporciona comodidad y estilo con fácil acceso a atracciones turísticas, restaurantes y vida nocturna. Ideal para viajeros urbanos que buscan una experiencia auténtica y conveniente.',1),(4,'Vila Marina del Sol','Esta villa de lujo frente al mar ofrece una experiencia exclusiva con acceso directo a la playa, una terraza con jacuzzi, y un chef privado. Perfecta para celebraciones especiales y grupos que desean disfrutar de una estancia opulenta y privada.',1),(5,'Cabañas Bosque Encantado','Cabañas Bosque Encantado',1),(6,'carlos','Ubicado en la costa caribeña, el Hotel Oasis Tropical ofrece un refugio de lujo con vistas panorámicas al mar, una piscina infinita, y una variedad de restaurantes gourmet. Ideal para familias y parejas que buscan relajación y diversión bajo el sol.',1),(7,'Hotel Luxury Haven','Ubicado en el corazón de la ciudad, el Hotel Luxury Haven ofrece elegantes habitaciones con vistas panorámicas, un spa de lujo, y una piscina en la azotea. Ideal para aquellos que buscan una experiencia sofisticada y relajante en un entorno urbano. El hotel también cuenta con un restaurante gourmet',1);
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
INSERT INTO `viajes_destino` VALUES (1,'París, Francia',1),(2,'Kyoto, Japón',1),(3,'Nápoles, Italia',1),(4,'Cancún, México',1),(5,'Vancouver, Canadá',1),(6,'París, Francia',1),(7,'Kyoto, Japón',1),(8,'Nápoles, Italia',1),(9,'Nápoles, Italia',1),(10,'Cancún, México',1);
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
INSERT INTO `viajes_detallereserva` VALUES (1,1,1,1,'Tu estancia en el Hotel Luxury Haven está confirmada. La suite incluye acceso al spa y a la piscina en la azotea, así como desayuno buffet diario. Recuerda que el check-in es a partir de las 3:00 PM y el check-out antes de las 12:00 PM. Si necesitas servicios adicionales, no dudes en contactar con la recepción.',1,1,1,1),(2,2,2,1,'Tu experiencia en Eco-Lodge Serenidad está lista! La cabaña incluye todas las comidas orgánicas y una excursión guiada por la selva. La llegada se realiza entre las 2:00 PM y las 6:00 PM. Te recomendamos llevar ropa ligera y repelente de insectos para disfrutar plenamente de la naturaleza.',2,2,2,2),(3,2,1,1,'Tu reserva en el Resort Playa Dorada está confirmada. El paquete todo incluido cubre comidas, bebidas y actividades recreativas. La entrada al resort es a partir de las 3:00 PM y el horario de salida es a las 11:00 AM. ¡Prepárate para disfrutar de unas vacaciones sin preocupaciones junto al mar!',3,3,3,3),(4,1,1,1,'Tu estancia en el Hotel Boutique La Belleza está confirmada. La habitación incluye un desayuno gourmet diario y acceso a un tour cultural opcional. El check-in es a partir de las 2:00 PM y el check-out debe realizarse antes de las 12:00 PM. No dudes en consultar al personal sobre recomendaciones locales y actividades.',4,4,4,4),(5,1,2,1,'Tu reserva en Cabañas Rústicas El Refugio está confirmada. La cabaña cuenta con una cocina completa y una chimenea para mantener el ambiente acogedor. La llegada es posible entre las 3:00 PM y las 7:00 PM. No olvides traer ropa abrigadora y disfrutar de las actividades al aire libre disponibles en la zona.',5,5,5,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_hospedaje`
--

LOCK TABLES `viajes_hospedaje` WRITE;
/*!40000 ALTER TABLE `viajes_hospedaje` DISABLE KEYS */;
INSERT INTO `viajes_hospedaje` VALUES (1,'Hotel El Paraíso','Calle de la Luna, 45, Ciudad de México, México','ejemplo@gmail.com','Hotel de lujo','Hotel de 5 estrellas ubicado en el corazón de la ciudad. Ofrece spa, gimnasio, piscina en la azotea',200,1,'relative/to/upload/imagen.jfif',1,'312345689'),(2,'Posada La Roca','Dirección: Avenida de la Sierra, 10, San Sebastián','ejemplo@gmail.com','Hotel de lujo','Encantadora posada situada en las montañas. Ofrece habitaciones acogedoras con vistas panorámicas, d',80,1,'relative/to/upload/descarga_4.jfif',2,'312345689'),(3,'Hostal Sol y Mar','Playa de la Costa, 32, Cartagena, Colombia','ejemplo@gmail.com','Hotel de lujo','Hostal frente a la playa con un ambiente relajado. Ofrece camas en dormitorios compartidos y habita',30,1,'relative/to/upload/descarga_5.jfif',3,'312345689'),(4,'Boutique Hotel Jardín del Mar','Dirección: Calle del Viento, 8, Cancún, México','ejemplo@gmail.com','Hotel de lujo','Hotel boutique con estilo mediterráneo, ubicado cerca de la playa. Ofrece habitaciones elegantes, pi',150,1,'relative/to/upload/images_1.jfif',4,'312345689'),(5,'Albergue Aventurero','Dirección: Carretera de los Andes, Km 25, Mendoza,','ejemplo@gmail.com','Hotel de lujo','Albergue ideal para los amantes de la naturaleza y la aventura. Ofrece camas en dormitorios comparti',20,1,'relative/to/upload/descarga_6.jfif',5,'312345689');
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
  PRIMARY KEY (`id_hospedaje_acomodacion`),
  KEY `viajes_hospedajeacom_id_acomodacion_3167e57a_fk_viajes_ac` (`id_acomodacion`),
  KEY `viajes_hospedajeacom_id_hospedaje_5e6ec122_fk_viajes_ho` (`id_hospedaje`),
  CONSTRAINT `viajes_hospedajeacom_id_acomodacion_3167e57a_fk_viajes_ac` FOREIGN KEY (`id_acomodacion`) REFERENCES `viajes_acomodacion` (`id_acomodacion`),
  CONSTRAINT `viajes_hospedajeacom_id_hospedaje_5e6ec122_fk_viajes_ho` FOREIGN KEY (`id_hospedaje`) REFERENCES `viajes_hospedaje` (`id_hospedaje`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_hospedajeacomodacion`
--

LOCK TABLES `viajes_hospedajeacomodacion` WRITE;
/*!40000 ALTER TABLE `viajes_hospedajeacomodacion` DISABLE KEYS */;
INSERT INTO `viajes_hospedajeacomodacion` VALUES (1,'Alta (Junio - Agosto',80,120,'relative/to/upload/images_1_YXHYVxE.jfif',1,5),(2,'Alta (Julio - Agosto',150,200,'relative/to/upload/imagen_MNCfV7t.jfif',2,2),(3,'Alta (Semana Santa,',95,140,'relative/to/upload/descarga_6_PhyrNsp.jfif',3,3),(4,'Alta (Vacaciones de',70,100,'relative/to/upload/descarga_4_lBOYwHg.jfif',4,4),(5,'Alta',120,160,'relative/to/upload/descarga_5_dypYInJ.jfif',5,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_paquete`
--

LOCK TABLES `viajes_paquete` WRITE;
/*!40000 ALTER TABLE `viajes_paquete` DISABLE KEYS */;
INSERT INTO `viajes_paquete` VALUES (1,'Escapada Tropical en Cancún','Ubicado en la costa caribeña, el Hotel Oasis Tropical ofrece un refugio de lujo con vistas panorámicas al mar, una piscina infinita, y una variedad de restaurantes gourmet. Ideal para familias y parejas que buscan relajación y diversión bajo el sol.','2024-08-06','2024-08-13',1,'wifi','bar',120,'Todo el año, con excepciones en fechas festivas',1),(2,'Aventura en la Patagonia','Un emocionante viaje de 7 días explorando los paisajes impresionantes de la Patagonia chilena y argentina.','2024-08-01','2024-09-01',1,'Desayunos diarios','Pasajes aéreos',150,'Noviembre - Marzo',1),(3,'City Break en Barcelona','Explora la vibrante ciudad de Barcelona con un paquete de 4 días para disfrutar de su cultura, arquitectura y gastronomía.','2024-08-01','2024-08-31',3,'3 noches en hotel 4 estrellas','Almuerzos y cenas',100,'Todo el año',1),(4,'Rutas de Vino en Mendoza','Un paquete de 5 días para explorar las bodegas y viñedos de Mendoza, con degustaciones y experiencias enológicas.','2024-08-01','2024-08-05',5,'5 noches en hotel boutique','Cenas',200,'Marzo - Noviembre',1),(5,'Safari en Kenia y Tanzania','Un emocionante safari de 8 días visitando las reservas más famosas de Kenia y Tanzania para avistar la fauna africana.','2024-08-01','2024-08-23',2,'7 noches en lodges de safari','Propinas',500,'Junio - Octubre',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_paquetetour`
--

LOCK TABLES `viajes_paquetetour` WRITE;
/*!40000 ALTER TABLE `viajes_paquetetour` DISABLE KEYS */;
INSERT INTO `viajes_paquetetour` VALUES (1,5,5,1),(2,1,1,1),(3,2,2,1),(4,3,3,1),(5,5,5,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_tour`
--

LOCK TABLES `viajes_tour` WRITE;
/*!40000 ALTER TABLE `viajes_tour` DISABLE KEYS */;
INSERT INTO `viajes_tour` VALUES (1,'Tour Histórico en Roma','Explora la rica historia de la Ciudad Eterna en un tour guiado que incluye visitas al Coliseo, el Foro Romano y el Panteón. Sumérgete en la cultura y arquitectura antigua mientras disfrutas de un reco',120,6,1,'relative/to/upload/descarga_7_tour.jfif',1),(2,'Aventura en el Amazonas','Embárcate en una experiencia única de 4 días',120,4,1,'relative/to/upload/descarga_8_tour.jfif',2),(3,'Tour Gastronómico en Bangkok','Descubre los sabores exóticos de Tailandia en un tour gastronómico de medio día. Visita mercados locales, prueba una variedad de platos tradicionales y aprende sobre la cocina tailandesa con un chef l',100,4,1,'relative/to/upload/tour_3.jfif',3),(4,'Safari en el Parque Nacional Kruger','Vive la emoción de un safari en el famoso Parque Nacional Kruger. Este tour de 3 días te llevará a través del parque en vehículos 4x4 para observar la fauna africana, incluyendo los Cinco Grandes (leó',1.2,3,1,'relative/to/upload/images_4_tour.jfif',4),(5,'Crucero por los Fiordos Noruegos','Disfruta de un crucero de 5 días por los impresionantes fiordos noruegos. Navega por paisajes de montañas, cascadas y aguas cristalinas, y explora encantadoras ciudades costeras como Bergen y Ålesund',1500,4,1,'relative/to/upload/images_5tour.jfif',5);
/*!40000 ALTER TABLE `viajes_tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'agencia'
--

--
-- Dumping routines for database 'agencia'
--
/*!50003 DROP PROCEDURE IF EXISTS `cons_vides` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cons_vides`(in valor varchar(100))
BEGIN
select id_destino, destino from viajes_destino where destino like concat('%', valor ,'%') and estado= '1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `con_destino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `con_destino`(in ciud varchar(200))
BEGIN
insert into destino( destino, estado) values (ciud, '1');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `con_destinoo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `con_destinoo`(in ciud varchar(200))
BEGIN
insert into visjes_destino ( destino, estado) values (ciud, '1');
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

-- Dump completed on 2024-08-14  9:57:04
