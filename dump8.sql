-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: artall_db
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `artisan_craft`
--

DROP TABLE IF EXISTS `artisan_craft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artisan_craft` (
  `artisan_id` varchar(60) NOT NULL,
  `craft_id` varchar(60) NOT NULL,
  PRIMARY KEY (`artisan_id`,`craft_id`),
  KEY `craft_id` (`craft_id`),
  CONSTRAINT `artisan_craft_ibfk_1` FOREIGN KEY (`artisan_id`) REFERENCES `artisans` (`id`),
  CONSTRAINT `artisan_craft_ibfk_2` FOREIGN KEY (`craft_id`) REFERENCES `crafts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_craft`
--

LOCK TABLES `artisan_craft` WRITE;
/*!40000 ALTER TABLE `artisan_craft` DISABLE KEYS */;
INSERT INTO `artisan_craft` VALUES ('1f564af8-0d6d-46a7-b165-29cee42d7b4f','0051a8b8-16d0-4885-a178-62b5831580b1'),('8e684a01-414d-4a84-be98-c21eaa7c577a','00fda986-6a31-44b6-a961-71db53773463'),('d3f0aa64-8943-4243-8466-5d6e7928d01f','00fda986-6a31-44b6-a961-71db53773463'),('6cdd92ce-f41a-424d-9de0-c4140f63b46a','17d4ef96-6c85-4d43-984a-40c5b0ce5bd2'),('7a4467f8-3893-4ce0-aac3-97bd98375f07','240926f6-6a04-4861-8a5e-c816e1ab4320'),('97efb064-0ee5-4a39-ada5-9a26e139e9ed','240926f6-6a04-4861-8a5e-c816e1ab4320'),('ac76e6e1-239e-4219-9604-3bd68f8c4ff2','30cc3964-6fd7-4eec-9bd1-5479ceaf1171'),('ac76e6e1-239e-4219-9604-3bd68f8c4ff2','343afe6d-b2c7-4e14-8c4e-f18057f7f889'),('7a4467f8-3893-4ce0-aac3-97bd98375f07','36a26a9f-5268-4eb5-b86f-92aba8b75c50'),('97efb064-0ee5-4a39-ada5-9a26e139e9ed','36a26a9f-5268-4eb5-b86f-92aba8b75c50'),('8e684a01-414d-4a84-be98-c21eaa7c577a','3875683a-1a49-4acd-b18d-f95d48fb16d9'),('2123a875-aaa6-4426-8035-e1ad43eaf4d2','56ad7717-32e0-4e4a-b3f5-3028fa7d9af7'),('375cb751-9e3c-4e15-a239-e8cd8d9fdec7','583f4c79-375d-49dd-9f5e-2f5420d7b28e'),('c950fc36-88f1-473c-916b-0965c17f7c65','583f4c79-375d-49dd-9f5e-2f5420d7b28e'),('7a4467f8-3893-4ce0-aac3-97bd98375f07','6ffef803-451c-4b19-83ef-d2f734cd3af7'),('8e684a01-414d-4a84-be98-c21eaa7c577a','6ffef803-451c-4b19-83ef-d2f734cd3af7'),('375cb751-9e3c-4e15-a239-e8cd8d9fdec7','706b238d-1285-41df-a001-29c78a9b5748'),('375cb751-9e3c-4e15-a239-e8cd8d9fdec7','70ef70a7-5423-4bf1-ac29-84d059414cf9'),('97efb064-0ee5-4a39-ada5-9a26e139e9ed','af23023e-7899-4f6d-b64b-f3e2d2565427'),('a281e736-240d-47d4-b900-1817e062f12f','af23023e-7899-4f6d-b64b-f3e2d2565427'),('c950fc36-88f1-473c-916b-0965c17f7c65','af23023e-7899-4f6d-b64b-f3e2d2565427'),('d3f0aa64-8943-4243-8466-5d6e7928d01f','af23023e-7899-4f6d-b64b-f3e2d2565427'),('1f564af8-0d6d-46a7-b165-29cee42d7b4f','b9beb029-76f9-42ef-be91-410f70654e35'),('1f564af8-0d6d-46a7-b165-29cee42d7b4f','c2f56ac1-c076-4ee2-bedb-37c211855224'),('6cdd92ce-f41a-424d-9de0-c4140f63b46a','c2f56ac1-c076-4ee2-bedb-37c211855224'),('2123a875-aaa6-4426-8035-e1ad43eaf4d2','d6e5aed1-7fbd-4349-90a6-d540f3d3f136'),('c950fc36-88f1-473c-916b-0965c17f7c65','d6e5aed1-7fbd-4349-90a6-d540f3d3f136');
/*!40000 ALTER TABLE `artisan_craft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisans`
--

DROP TABLE IF EXISTS `artisans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artisans` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password_hash` varchar(128) NOT NULL,
  `picture` varchar(1000) NOT NULL,
  `city_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `artisans_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisans`
--

LOCK TABLES `artisans` WRITE;
/*!40000 ALTER TABLE `artisans` DISABLE KEYS */;
INSERT INTO `artisans` VALUES ('1f564af8-0d6d-46a7-b165-29cee42d7b4f','2024-04-29 13:54:40','2024-04-29 13:54:40','Hassan Ibrahim','Artisan with a keen eye for detail and a love for creativity','hassan@example.com','$2b$12$02O1jvX9eLeVdQJ5khkUA.uZsVjKrzxGj5SASvWhAbmK7SoDW.Lz.','../static/images/avatar.png','932115ba-c4aa-4096-ae64-a164f5d32a39'),('2123a875-aaa6-4426-8035-e1ad43eaf4d2','2024-04-29 13:54:29','2024-04-29 13:54:29','Ali Hassan','Skilled artisan with a passion for traditional craftsmanship','ali@example.com','$2b$12$hWlQl9eaavqkTemVYfC/meVXMQF29SbbC5Q1KD6aGhucVMiAgkvFu','../static/images/avatar.png','09097e6d-d139-4f6c-8f4a-a1be527cb721'),('375cb751-9e3c-4e15-a239-e8cd8d9fdec7','2024-04-29 13:54:43','2024-04-29 13:54:43','Aisha Kareem','Skilled maker dedicated to producing high-quality works of art','aisha@example.com','$2b$12$h5aAGFkegyLObAiUOMKpCOl9y8SUbgeQEMPPiLTTdSOchxKca8K0O','../static/images/avatar.png','1828048f-1b9b-4777-887b-d381c32242cb'),('6cdd92ce-f41a-424d-9de0-c4140f63b46a','2024-04-29 13:54:48','2024-04-29 13:54:48','Nadia khalfaoui','Skilled artisan dedicated to producing quality handmade goods','nadia@example.com','$2b$12$RwcmtO1wwkuQ43wFCZJi0uIQ9eKAfNaED.be5ySycLwQqQwL3z2wy','../static/images/avatar.png','41e5eda6-49fa-4369-9cb1-37f99ddc9e9f'),('7a4467f8-3893-4ce0-aac3-97bd98375f07','2024-04-29 13:54:35','2024-04-29 13:54:35','Mohammed Khalil','Passionate craftsperson committed to the art of creation','mohammed@example.com','$2b$12$nyYmT3CUptgnyp3Yzml1NukOkNn/HBHpYnPRyFkhrwA0u6mcupC66','../static/images/avatar.png','c1266439-d4c9-4acc-bdb3-8ec597f33918'),('8e684a01-414d-4a84-be98-c21eaa7c577a','2024-04-29 13:54:46','2024-04-29 13:54:46','Youssef Nasser','Craftsman committed to craftsmanship and creativity','youssef@example.com','$2b$12$6isKeru/xRFay0NZwzHpy.VdsYIjRHIijXelYmB9cC6AefjVu2gCS','../static/images/avatar.png','e1b0f667-7ca6-4804-84af-1ef48ca5b4da'),('97efb064-0ee5-4a39-ada5-9a26e139e9ed','2024-04-29 13:54:56','2024-04-29 13:54:56','Ahmed Taha','Artist full of passion and skill','ahmedt@example.com','$2b$12$FKqNzdF19Cll3g7CFBi16OGci3iuz3ebGbNk/ONIXOs5fylyn.wmO','../static/images/avatar.png','af7bbc4d-2a50-4792-81d3-e4b67d366e1f'),('a281e736-240d-47d4-b900-1817e062f12f','2024-04-29 13:54:51','2024-04-29 13:54:51','Khaled Farouk','Passionate creator known for their dedication to their craft','khaled@example.com','$2b$12$La47/g85CgUMsUiKDnkRpeU9LleciRTOopEdD83yFlPJZQ2dxyrSO','../static/images/avatar.png','0a82a595-5eca-47d8-af18-3e087db457ef'),('ac76e6e1-239e-4219-9604-3bd68f8c4ff2','2024-04-29 13:54:37','2024-04-29 13:54:37','Layla Abbas','Master artisan known for their dedication to craftsmanship','layla@example.com','$2b$12$pZaR.yd2XzHIjlPCB4J8uOj.g75iPd2qxa.K3sll9ObVFYNMwrAvq','../static/images/avatar.png','27bf789e-ba61-494c-9684-cdf726d372ac'),('c950fc36-88f1-473c-916b-0965c17f7c65','2024-04-29 13:54:54','2024-04-29 13:54:54','Sara Mansour','Versatile artisan dedicated to excellence in their work','sara@example.com','$2b$12$7lEjbFZ30/Cegp8Fhu2eG.1hlV7MaRja/wghkKSkj/61MK.T5VqO6','../static/images/avatar.png','c7dde81c-a51a-4c10-a29b-e35c61a3a5fb'),('d3f0aa64-8943-4243-8466-5d6e7928d01f','2024-04-29 13:54:32','2024-04-29 13:54:32','Fatima Ahmed','Experienced artisan dedicated to creating unique works','fatima@example.com','$2b$12$f8kQqFdoESIfP0z/AIgubuFJuloLBy0GOXLZn0ii.GRHT3wckNe6u','../static/images/avatar.png','949c579c-e274-4c10-a792-95da5715dcb3');
/*!40000 ALTER TABLE `artisans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(128) NOT NULL,
  `country_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('01c40445-ab45-4905-a121-3f15bf88d159','2024-04-29 13:54:23','2024-04-29 13:54:23','Tunis','03d494e6-7a8e-45e5-a371-0ebba9973431'),('05bf2eb7-2965-4ba2-a3d6-0ab7dcccca11','2024-04-29 13:54:23','2024-04-29 13:54:23','Luxor','91e6c023-1309-4c2b-bedb-d65f8fcafa87'),('09097e6d-d139-4f6c-8f4a-a1be527cb721','2024-04-29 13:54:23','2024-04-29 13:54:23','Gabès','03d494e6-7a8e-45e5-a371-0ebba9973431'),('0938fe21-2955-4aaf-889d-3de6556e2b7e','2024-04-29 13:54:22','2024-04-29 13:54:22','Abu Dhabi','cb408ece-9777-4564-8247-6aa34e4585f3'),('0a82a595-5eca-47d8-af18-3e087db457ef','2024-04-29 13:54:23','2024-04-29 13:54:23','Aleppo','2dec7ed7-f582-429c-aeae-30c1c66a3185'),('0b3dd709-40a3-4c49-9e1a-335133cd7dd6','2024-04-29 13:54:22','2024-04-29 13:54:22','Riffa','f561d4b2-5541-42e9-8244-4342304c07ab'),('0badd0d6-4c27-48f2-a193-d8c23864536f','2024-04-29 13:54:23','2024-04-29 13:54:23','Sohar','ec575060-b53e-4133-a1a1-b302dc7b8d11'),('0cca3a7f-cefb-438f-a5a0-706d16b1ebd1','2024-04-29 13:54:23','2024-04-29 13:54:23','Nizwa','ec575060-b53e-4133-a1a1-b302dc7b8d11'),('0e91447b-83a2-4288-acf6-372afe584056','2024-04-29 13:54:22','2024-04-29 13:54:22','Salmiya','ed5e60de-61fb-4b0a-a7ad-2976972c9f1a'),('126505f6-9e2d-4a8c-9441-3e220656542d','2024-04-29 13:54:23','2024-04-29 13:54:23','Hama','2dec7ed7-f582-429c-aeae-30c1c66a3185'),('1828048f-1b9b-4777-887b-d381c32242cb','2024-04-29 13:54:22','2024-04-29 13:54:22','Doha','42a40bc7-d79e-4d3d-90a3-5dd698837119'),('19c1a3fe-b112-4a0f-89b9-2c33f51dde27','2024-04-29 13:54:23','2024-04-29 13:54:23','Oran','4b9e01ef-0942-445d-93f4-a2d2d341666e'),('1ae918e4-ff88-4caa-a692-e3734cc534f2','2024-04-29 13:54:23','2024-04-29 13:54:23','Fez','09107879-b31b-41de-837e-13a5d7155063'),('1bc1e485-f0bf-4c50-9d3a-e2e3e0527a89','2024-04-29 13:54:22','2024-04-29 13:54:22','Riyadh','9044378c-2871-42c7-b549-b7031b5a58b9'),('1c0cfb27-bf98-4cc4-98af-1efb150fb2c4','2024-04-29 13:54:22','2024-04-29 13:54:22','Salalah','ec575060-b53e-4133-a1a1-b302dc7b8d11'),('1fee9fbe-5125-49bd-9ec2-77ae7ccf57ad','2024-04-29 13:54:23','2024-04-29 13:54:23','Erbil','d1db7c5e-9a2f-416d-8ede-40b5d5649122'),('224a189e-b816-47e9-b35c-d1e6a583a31f','2024-04-29 13:54:23','2024-04-29 13:54:23','Damascus','2dec7ed7-f582-429c-aeae-30c1c66a3185'),('27bf789e-ba61-494c-9684-cdf726d372ac','2024-04-29 13:54:22','2024-04-29 13:54:22','Muscat','ec575060-b53e-4133-a1a1-b302dc7b8d11'),('28d5443a-9956-4c75-8ebf-bfb43e2bc40e','2024-04-29 13:54:22','2024-04-29 13:54:22','Ajman','cb408ece-9777-4564-8247-6aa34e4585f3'),('2ba27272-63fb-4f2e-8120-4eb5e5b1f4ba','2024-04-29 13:54:23','2024-04-29 13:54:23','Zarqa','86dc4158-10ef-4114-9798-37f2b3e79dc5'),('2c07acfa-dcee-4cab-8268-98f1c6da5e27','2024-04-29 13:54:23','2024-04-29 13:54:23','Sfax','03d494e6-7a8e-45e5-a371-0ebba9973431'),('2d24b6d2-9c29-4cce-bab3-aa5d6ef036f4','2024-04-29 13:54:23','2024-04-29 13:54:23','Aden','4588b365-a80b-402b-b580-3fbfdf66e49e'),('2e625a75-594e-488e-9b11-12fdef509d78','2024-04-29 13:54:23','2024-04-29 13:54:23','Omdurman','0bdcbe64-2710-4bc2-8a02-77085177c12f'),('2fc0db95-dfa7-4216-84e3-f87d93a2c7de','2024-04-29 13:54:23','2024-04-29 13:54:23','Alexandria','91e6c023-1309-4c2b-bedb-d65f8fcafa87'),('352becc3-c38f-403c-b5e5-86a0239f5187','2024-04-29 13:54:23','2024-04-29 13:54:23','Sousse','03d494e6-7a8e-45e5-a371-0ebba9973431'),('360f8b11-fd5a-4be2-8270-b1aaaa59556a','2024-04-29 13:54:22','2024-04-29 13:54:22','Manama','f561d4b2-5541-42e9-8244-4342304c07ab'),('38c9112a-5204-4d0f-9603-cad281fd20f0','2024-04-29 13:54:24','2024-04-29 13:54:24','Hargeisa','deca4c52-6e2e-430b-a599-c048fca4f175'),('3918f816-75ba-4128-a51c-d07a942e34e5','2024-04-29 13:54:22','2024-04-29 13:54:22','Kuwait City','ed5e60de-61fb-4b0a-a7ad-2976972c9f1a'),('3af5aac6-9cfe-4b77-b13e-89810e682bd7','2024-04-29 13:54:23','2024-04-29 13:54:23','Khartoum','0bdcbe64-2710-4bc2-8a02-77085177c12f'),('3fbd0cbe-d5f3-4127-b68c-2fe251439806','2024-04-29 13:54:23','2024-04-29 13:54:23','Amman','86dc4158-10ef-4114-9798-37f2b3e79dc5'),('41562eec-0b99-4684-9796-ae0f744534cb','2024-04-29 13:54:23','2024-04-29 13:54:23','Taiz','4588b365-a80b-402b-b580-3fbfdf66e49e'),('41cd3ca7-8686-4948-894d-2a9724ef0eef','2024-04-29 13:54:22','2024-04-29 13:54:22','Muharraq','f561d4b2-5541-42e9-8244-4342304c07ab'),('41e5eda6-49fa-4369-9cb1-37f99ddc9e9f','2024-04-29 13:54:23','2024-04-29 13:54:23','Aqaba','86dc4158-10ef-4114-9798-37f2b3e79dc5'),('45136e5e-f29f-4d2e-bd82-82149bd6e8d9','2024-04-29 13:54:22','2024-04-29 13:54:22','Sharjah','cb408ece-9777-4564-8247-6aa34e4585f3'),('48abe02f-df44-4137-bca6-75f1e99a6f66','2024-04-29 13:54:23','2024-04-29 13:54:23','Hebron','225c98d6-f155-4aca-9e08-1042dccc7d78'),('4c9bed15-aac1-4142-9de5-fca3299ac9d2','2024-04-29 13:54:22','2024-04-29 13:54:22','Hawalli','ed5e60de-61fb-4b0a-a7ad-2976972c9f1a'),('4f374124-9680-4540-9d77-c8e8f4a0fd21','2024-04-29 13:54:22','2024-04-29 13:54:22','Dammam','9044378c-2871-42c7-b549-b7031b5a58b9'),('511973e5-3522-48e2-af8e-5300b522bd01','2024-04-29 13:54:22','2024-04-29 13:54:22','Medina','9044378c-2871-42c7-b549-b7031b5a58b9'),('5366f260-d780-4cfc-bc78-532f70e07a8f','2024-04-29 13:54:22','2024-04-29 13:54:22','Fujairah','cb408ece-9777-4564-8247-6aa34e4585f3'),('53fadf9c-ec20-46fe-b29c-ceb2449b0884','2024-04-29 13:54:24','2024-04-29 13:54:24','Obock','24cca2a1-920d-4a78-baee-9ed9054d18cb'),('5c7c1d7d-9dc0-4648-a365-6e84abdc281f','2024-04-29 13:54:22','2024-04-29 13:54:22','Al Khor','42a40bc7-d79e-4d3d-90a3-5dd698837119'),('63479f0b-fa6e-48e3-a90d-9574a950d3f4','2024-04-29 13:54:22','2024-04-29 13:54:22','Mecca','9044378c-2871-42c7-b549-b7031b5a58b9'),('65d9eb45-91db-48cf-86f2-24d86f5e95c8','2024-04-29 13:54:23','2024-04-29 13:54:23','Irbid','86dc4158-10ef-4114-9798-37f2b3e79dc5'),('66970ca8-1d40-4842-a587-49ff8ca7d6db','2024-04-29 13:54:23','2024-04-29 13:54:23','Marrakesh','09107879-b31b-41de-837e-13a5d7155063'),('6d9c4684-f255-4f60-b971-cc3611fdd2f7','2024-04-29 13:54:23','2024-04-29 13:54:23','Constantine','4b9e01ef-0942-445d-93f4-a2d2d341666e'),('6ed24efa-f11a-4d02-90ca-d485f63fb439','2024-04-29 13:54:24','2024-04-29 13:54:24','Kassala','0bdcbe64-2710-4bc2-8a02-77085177c12f'),('760e6419-ec9c-45e9-aa67-92bbbd5fb225','2024-04-29 13:54:22','2024-04-29 13:54:22','Umm Salal','42a40bc7-d79e-4d3d-90a3-5dd698837119'),('796a66b2-52f0-4624-9770-fb716ef88c34','2024-04-29 13:54:23','2024-04-29 13:54:23','Sana\'a','4588b365-a80b-402b-b580-3fbfdf66e49e'),('8a859eaf-bed6-4c3f-a478-b39d28dc5e2e','2024-04-29 13:54:22','2024-04-29 13:54:22','Dubai','cb408ece-9777-4564-8247-6aa34e4585f3'),('8b2f4e03-4b4b-4c57-b5b8-42d30d0a2a91','2024-04-29 13:54:23','2024-04-29 13:54:23','Benghazi','95312cc8-d73b-4ce4-a990-c933e508cfd5'),('91eb27e7-2788-4b99-9c07-80d6e9fd8bd5','2024-04-29 13:54:23','2024-04-29 13:54:23','Baghdad','d1db7c5e-9a2f-416d-8ede-40b5d5649122'),('932115ba-c4aa-4096-ae64-a164f5d32a39','2024-04-29 13:54:23','2024-04-29 13:54:23','Ramallah','225c98d6-f155-4aca-9e08-1042dccc7d78'),('949c579c-e274-4c10-a792-95da5715dcb3','2024-04-29 13:54:22','2024-04-29 13:54:22','Al Wakrah','42a40bc7-d79e-4d3d-90a3-5dd698837119'),('95b31279-8027-4694-8315-35e794f3f11d','2024-04-29 13:54:23','2024-04-29 13:54:23','Tyre','39755762-6778-4c95-b835-239bb8e279e8'),('9bfb839c-dcf5-4a80-989c-e71b96b2a163','2024-04-29 13:54:23','2024-04-29 13:54:23','Gaza','225c98d6-f155-4aca-9e08-1042dccc7d78'),('9d199036-e896-4ab9-8763-97f408fa31d1','2024-04-29 13:54:24','2024-04-29 13:54:24','Kismayo','deca4c52-6e2e-430b-a599-c048fca4f175'),('a22431f5-44b7-475b-8c37-ca0da6f11caf','2024-04-29 13:54:23','2024-04-29 13:54:23','Basra','d1db7c5e-9a2f-416d-8ede-40b5d5649122'),('a4ec8ac2-9bbe-4e93-89bb-079de3363ef9','2024-04-29 13:54:23','2024-04-29 13:54:23','Port Sudan','0bdcbe64-2710-4bc2-8a02-77085177c12f'),('a63322ce-6f49-41a6-bf49-e36d17565917','2024-04-29 13:54:24','2024-04-29 13:54:24','Mogadishu','deca4c52-6e2e-430b-a599-c048fca4f175'),('a7aec1c4-6ff8-466b-ac41-b4d1f07412c6','2024-04-29 13:54:23','2024-04-29 13:54:23','Sidon','39755762-6778-4c95-b835-239bb8e279e8'),('a886ebed-f19e-4cac-b5e6-14d3dcc9b6ff','2024-04-29 13:54:24','2024-04-29 13:54:24','Bosaso','deca4c52-6e2e-430b-a599-c048fca4f175'),('af7bbc4d-2a50-4792-81d3-e4b67d366e1f','2024-04-29 13:54:23','2024-04-29 13:54:23','Sirte','95312cc8-d73b-4ce4-a990-c933e508cfd5'),('b0669d95-6571-4bba-b23f-24e3bf4ba56c','2024-04-29 13:54:23','2024-04-29 13:54:23','Mosul','d1db7c5e-9a2f-416d-8ede-40b5d5649122'),('b302ee50-7cd3-42db-9438-0010e56b11f7','2024-04-29 13:54:23','2024-04-29 13:54:23','Algiers','4b9e01ef-0942-445d-93f4-a2d2d341666e'),('b5fdbf1b-6b2f-4921-9002-a7e286c8b6e7','2024-04-29 13:54:23','2024-04-29 13:54:23','Casablanca','09107879-b31b-41de-837e-13a5d7155063'),('c1266439-d4c9-4acc-bdb3-8ec597f33918','2024-04-29 13:54:22','2024-04-29 13:54:22','Jeddah','9044378c-2871-42c7-b549-b7031b5a58b9'),('c48cb324-b373-423f-a9cf-2a81d7e8b23d','2024-04-29 13:54:23','2024-04-29 13:54:23','Rabat','09107879-b31b-41de-837e-13a5d7155063'),('c7dde81c-a51a-4c10-a29b-e35c61a3a5fb','2024-04-29 13:54:23','2024-04-29 13:54:23','Tripoli','95312cc8-d73b-4ce4-a990-c933e508cfd5'),('cdc610ac-9a89-4a93-87de-ca2e8e5dbc91','2024-04-29 13:54:23','2024-04-29 13:54:23','Tripoli','39755762-6778-4c95-b835-239bb8e279e8'),('d3355ef4-7350-4d2f-a002-0ad24ce9091e','2024-04-29 13:54:23','2024-04-29 13:54:23','Homs','2dec7ed7-f582-429c-aeae-30c1c66a3185'),('d3e3cfd5-422a-4975-91c6-804f18acedaa','2024-04-29 13:54:23','2024-04-29 13:54:23','Misrata','95312cc8-d73b-4ce4-a990-c933e508cfd5'),('d441a2f3-881e-40a9-a4a3-a636f10f047f','2024-04-29 13:54:23','2024-04-29 13:54:23','Giza','91e6c023-1309-4c2b-bedb-d65f8fcafa87'),('e06b1dc5-395e-4fd8-96cd-db65343e3519','2024-04-29 13:54:23','2024-04-29 13:54:23','Beirut','39755762-6778-4c95-b835-239bb8e279e8'),('e1b0f667-7ca6-4804-84af-1ef48ca5b4da','2024-04-29 13:54:22','2024-04-29 13:54:22','Hamad Town','f561d4b2-5541-42e9-8244-4342304c07ab'),('e261688d-dd8f-47e3-aac2-c0714ddf305b','2024-04-29 13:54:23','2024-04-29 13:54:23','Cairo','91e6c023-1309-4c2b-bedb-d65f8fcafa87'),('e82b0b2b-5dce-4d81-90f9-6c1435a86826','2024-04-29 13:54:22','2024-04-29 13:54:22','Jabriya','ed5e60de-61fb-4b0a-a7ad-2976972c9f1a'),('f5e917f3-1d95-4918-b9d5-935b4b849e8b','2024-04-29 13:54:24','2024-04-29 13:54:24','Ali Sabieh','24cca2a1-920d-4a78-baee-9ed9054d18cb'),('f848702d-4b2b-4299-8d33-55eb4601cadd','2024-04-29 13:54:24','2024-04-29 13:54:24','Tadjoura','24cca2a1-920d-4a78-baee-9ed9054d18cb'),('fa304bb0-f970-494d-bdb3-b831b1892ebe','2024-04-29 13:54:24','2024-04-29 13:54:24','Djibouti City','24cca2a1-920d-4a78-baee-9ed9054d18cb'),('fbd2466a-9c0c-4051-8d33-d3980db504dc','2024-04-29 13:54:23','2024-04-29 13:54:23','Jerusalem','225c98d6-f155-4aca-9e08-1042dccc7d78'),('fcd7b0aa-8ea7-47ef-877e-2f0eed6c07a3','2024-04-29 13:54:23','2024-04-29 13:54:23','Al Hudaydah','4588b365-a80b-402b-b580-3fbfdf66e49e'),('fd88f5b4-3ca0-4080-b734-abfd4c243d48','2024-04-29 13:54:23','2024-04-29 13:54:23','Annaba','4b9e01ef-0942-445d-93f4-a2d2d341666e');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('03d494e6-7a8e-45e5-a371-0ebba9973431','2024-04-29 13:54:23','2024-04-29 13:54:23','Tunisia'),('09107879-b31b-41de-837e-13a5d7155063','2024-04-29 13:54:23','2024-04-29 13:54:23','Morocco'),('0bdcbe64-2710-4bc2-8a02-77085177c12f','2024-04-29 13:54:23','2024-04-29 13:54:23','Sudan'),('225c98d6-f155-4aca-9e08-1042dccc7d78','2024-04-29 13:54:23','2024-04-29 13:54:23','Palestine'),('24cca2a1-920d-4a78-baee-9ed9054d18cb','2024-04-29 13:54:24','2024-04-29 13:54:24','Djibouti'),('2dec7ed7-f582-429c-aeae-30c1c66a3185','2024-04-29 13:54:23','2024-04-29 13:54:23','Syria'),('39755762-6778-4c95-b835-239bb8e279e8','2024-04-29 13:54:23','2024-04-29 13:54:23','Lebanon'),('42a40bc7-d79e-4d3d-90a3-5dd698837119','2024-04-29 13:54:22','2024-04-29 13:54:22','Qatar'),('4588b365-a80b-402b-b580-3fbfdf66e49e','2024-04-29 13:54:23','2024-04-29 13:54:23','Yemen'),('4b9e01ef-0942-445d-93f4-a2d2d341666e','2024-04-29 13:54:23','2024-04-29 13:54:23','Algeria'),('86dc4158-10ef-4114-9798-37f2b3e79dc5','2024-04-29 13:54:23','2024-04-29 13:54:23','Jordan'),('9044378c-2871-42c7-b549-b7031b5a58b9','2024-04-29 13:54:22','2024-04-29 13:54:22','Saudi Arabia'),('91e6c023-1309-4c2b-bedb-d65f8fcafa87','2024-04-29 13:54:23','2024-04-29 13:54:23','Egypt'),('95312cc8-d73b-4ce4-a990-c933e508cfd5','2024-04-29 13:54:23','2024-04-29 13:54:23','Libya'),('cb408ece-9777-4564-8247-6aa34e4585f3','2024-04-29 13:54:22','2024-04-29 13:54:22','United Arab Emirates'),('d1db7c5e-9a2f-416d-8ede-40b5d5649122','2024-04-29 13:54:23','2024-04-29 13:54:23','Iraq'),('deca4c52-6e2e-430b-a599-c048fca4f175','2024-04-29 13:54:24','2024-04-29 13:54:24','Somalia'),('ec575060-b53e-4133-a1a1-b302dc7b8d11','2024-04-29 13:54:22','2024-04-29 13:54:22','Oman'),('ed5e60de-61fb-4b0a-a7ad-2976972c9f1a','2024-04-29 13:54:22','2024-04-29 13:54:22','Kuwait'),('f561d4b2-5541-42e9-8244-4342304c07ab','2024-04-29 13:54:22','2024-04-29 13:54:22','Bahrain');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crafts`
--

DROP TABLE IF EXISTS `crafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crafts` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crafts`
--

LOCK TABLES `crafts` WRITE;
/*!40000 ALTER TABLE `crafts` DISABLE KEYS */;
INSERT INTO `crafts` VALUES ('0051a8b8-16d0-4885-a178-62b5831580b1','2024-04-29 13:54:24','2024-04-29 13:54:24','Basketry'),('00fda986-6a31-44b6-a961-71db53773463','2024-04-29 13:54:24','2024-04-29 13:54:24','Weaving'),('17d4ef96-6c85-4d43-984a-40c5b0ce5bd2','2024-04-29 13:54:24','2024-04-29 13:54:24','Rugs'),('240926f6-6a04-4861-8a5e-c816e1ab4320','2024-04-29 13:54:24','2024-04-29 13:54:24','Ceramics'),('30cc3964-6fd7-4eec-9bd1-5479ceaf1171','2024-04-29 13:54:24','2024-04-29 13:54:24','Jewelry'),('343afe6d-b2c7-4e14-8c4e-f18057f7f889','2024-04-29 13:54:24','2024-04-29 13:54:24','Metalwork'),('36a26a9f-5268-4eb5-b86f-92aba8b75c50','2024-04-29 13:54:24','2024-04-29 13:54:24','Leatherworking'),('3875683a-1a49-4acd-b18d-f95d48fb16d9','2024-04-29 13:54:24','2024-04-29 13:54:24','Engraving'),('56ad7717-32e0-4e4a-b3f5-3028fa7d9af7','2024-04-29 13:54:24','2024-04-29 13:54:24','Weaving'),('583f4c79-375d-49dd-9f5e-2f5420d7b28e','2024-04-29 13:54:24','2024-04-29 13:54:24','Calligraphy'),('6ffef803-451c-4b19-83ef-d2f734cd3af7','2024-04-29 13:54:24','2024-04-29 13:54:24','Pottery'),('706b238d-1285-41df-a001-29c78a9b5748','2024-04-29 13:54:24','2024-04-29 13:54:24','Sculpting'),('70ef70a7-5423-4bf1-ac29-84d059414cf9','2024-04-29 13:54:24','2024-04-29 13:54:24','Painting'),('af23023e-7899-4f6d-b64b-f3e2d2565427','2024-04-29 13:54:24','2024-04-29 13:54:24','Woodwork'),('b9beb029-76f9-42ef-be91-410f70654e35','2024-04-29 13:54:24','2024-04-29 13:54:24','Glass'),('c2f56ac1-c076-4ee2-bedb-37c211855224','2024-04-29 13:54:24','2024-04-29 13:54:24','Furniture'),('d6e5aed1-7fbd-4349-90a6-d540f3d3f136','2024-04-29 13:54:24','2024-04-29 13:54:24','Tiles');
/*!40000 ALTER TABLE `crafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `password_hash` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product` (
  `order_id` varchar(60) NOT NULL,
  `product_id` varchar(60) NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `customer_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `price` int NOT NULL,
  `picture` varchar(1000) NOT NULL,
  `artisan_id` varchar(60) NOT NULL,
  `craft_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `artisan_id` (`artisan_id`),
  KEY `craft_id` (`craft_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`artisan_id`) REFERENCES `artisans` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`craft_id`) REFERENCES `crafts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('0c30a7f9-0fb9-4ca6-9bef-0615e7876074','2024-04-29 13:54:57','2024-04-29 13:54:57','Hand-carved Wooden Serving Tray','Elegant hand-carved wooden serving tray with intricate floral design',40,'../static/images/popular-1.jpg','a281e736-240d-47d4-b900-1817e062f12f','af23023e-7899-4f6d-b64b-f3e2d2565427'),('1672599a-b8a1-4b28-8ed3-99fb6cf87356','2024-04-29 13:54:57','2024-04-29 13:54:57','Hand-forged Iron Candle Holder','Hand-forged iron candle holder with intricate scrollwork',80,'../static/images/popular-1.jpg','ac76e6e1-239e-4219-9604-3bd68f8c4ff2','343afe6d-b2c7-4e14-8c4e-f18057f7f889'),('2cb2bd23-ce01-464b-8d01-849cfb6e3597','2024-04-29 13:54:57','2024-04-29 13:54:57','Custom Arabic Calligraphy Canvas','Personalized Arabic calligraphy canvas with name or phrase of choice',80,'../static/images/popular-1.jpg','c950fc36-88f1-473c-916b-0965c17f7c65','583f4c79-375d-49dd-9f5e-2f5420d7b28e'),('2fe59ff3-2591-4d05-a16e-21eb1e1d66d5','2024-04-29 13:54:57','2024-04-29 13:54:57','Handwoven Cotton Hammock','Comfortable handwoven cotton hammock with fringe detailing',35,'../static/images/popular-1.jpg','8e684a01-414d-4a84-be98-c21eaa7c577a','00fda986-6a31-44b6-a961-71db53773463'),('351bbadc-b52a-489c-8692-059146e9815a','2024-04-29 13:54:57','2024-04-29 13:54:57','Handcrafted Leather Journal','High-quality handcrafted leather journal with embossed cover',120,'../static/images/popular-1.jpg','6cdd92ce-f41a-424d-9de0-c4140f63b46a','c2f56ac1-c076-4ee2-bedb-37c211855224'),('41231654-bdff-4d3f-acab-00037d87460e','2024-04-29 13:54:56','2024-04-29 13:54:56','Handwoven Wool Rug','Traditional handwoven wool rug with geometric patterns',200,'../static/images/popular-1.jpg','2123a875-aaa6-4426-8035-e1ad43eaf4d2','56ad7717-32e0-4e4a-b3f5-3028fa7d9af7'),('49e72e20-bdc9-48b0-9d16-797da66e3fff','2024-04-29 13:54:57','2024-04-29 13:54:57','Hand-tooled Leather Keychain','Stylish hand-tooled leather keychain with durable metal hardware',20,'../static/images/popular-1.jpg','97efb064-0ee5-4a39-ada5-9a26e139e9ed','36a26a9f-5268-4eb5-b86f-92aba8b75c50'),('5b34ded2-9688-43ae-ab7d-5bc621d7c876','2024-04-29 13:54:57','2024-04-29 13:54:57','Islamic Calligraphy Art','Elegant Islamic calligraphy artwork with gold leaf accents',150,'../static/images/popular-1.jpg','375cb751-9e3c-4e15-a239-e8cd8d9fdec7','583f4c79-375d-49dd-9f5e-2f5420d7b28e'),('62615695-15aa-4dfe-b821-002b830060f5','2024-04-29 13:54:57','2024-04-29 13:54:57','Hand-engraved Metal Flask','Custom hand-engraved stainless steel flask with intricate design',50,'../static/images/popular-1.jpg','8e684a01-414d-4a84-be98-c21eaa7c577a','3875683a-1a49-4acd-b18d-f95d48fb16d9'),('6f691f53-0f4b-4b7d-81b2-02aa0e61529b','2024-04-29 13:54:57','2024-04-29 13:54:57','Hand-carved Wooden Jewelry Box','Exquisite hand-carved wooden jewelry box with floral motifs',60,'../static/images/popular-1.jpg','c950fc36-88f1-473c-916b-0965c17f7c65','af23023e-7899-4f6d-b64b-f3e2d2565427'),('91846a8e-2add-4fff-b2be-fe67e548a12c','2024-04-29 13:54:57','2024-04-29 13:54:57','Hand-carved Stone Sculpture','Intricately hand-carved stone sculpture of a lion',300,'../static/images/popular-1.jpg','375cb751-9e3c-4e15-a239-e8cd8d9fdec7','706b238d-1285-41df-a001-29c78a9b5748'),('a1e526f3-7ca5-40a6-81b7-edefdb2128bb','2024-04-29 13:54:57','2024-04-29 13:54:57','Sterling Silver Pendant Necklace','Elegant sterling silver pendant necklace with natural gemstone',120,'../static/images/popular-1.jpg','ac76e6e1-239e-4219-9604-3bd68f8c4ff2','30cc3964-6fd7-4eec-9bd1-5479ceaf1171'),('a7f10619-b9a7-4a0f-9b81-b08736630c72','2024-04-29 13:54:57','2024-04-29 13:54:57','Hand-carved Wooden Bowl','Beautifully hand-carved wooden bowl made from sustainable teak wood',50,'../static/images/popular-1.jpg','d3f0aa64-8943-4243-8466-5d6e7928d01f','af23023e-7899-4f6d-b64b-f3e2d2565427'),('a9986609-768d-44f2-85b5-7103c64e66bc','2024-04-29 13:54:57','2024-04-29 13:54:57','Persian Rug','Beautiful Persian that adds warmth in your house charm',250,'../static/images/popular-1.jpg','6cdd92ce-f41a-424d-9de0-c4140f63b46a','17d4ef96-6c85-4d43-984a-40c5b0ce5bd2'),('ad0e96e0-b1a9-4d3e-8f13-9893f59d09be','2024-04-29 13:54:57','2024-04-29 13:54:57','Hand-tooled Leather Belt','Stylish hand-tooled leather belt with floral patterns',60,'../static/images/popular-1.jpg','7a4467f8-3893-4ce0-aac3-97bd98375f07','36a26a9f-5268-4eb5-b86f-92aba8b75c50'),('ea2e0fcf-330e-42ed-af3f-de3295d93be2','2024-04-29 13:54:57','2024-04-29 13:54:57','Tea Cups','A beautiful set of handmade tea cups',40,'../static/images/popular-1.jpg','7a4467f8-3893-4ce0-aac3-97bd98375f07','6ffef803-451c-4b19-83ef-d2f734cd3af7'),('eede25e2-c425-44fd-927f-b32b058051d8','2024-04-29 13:54:57','2024-04-29 13:54:57','Handwoven Seagrass Basket','Handwoven seagrass basket with lid, perfect for storage',50,'../static/images/popular-1.jpg','1f564af8-0d6d-46a7-b165-29cee42d7b4f','0051a8b8-16d0-4885-a178-62b5831580b1'),('ef41a070-eba3-4612-bac6-e1efdda4f73d','2024-04-29 13:54:57','2024-04-29 13:54:57','Handcrafted Ceramic Vase','Elegant handcrafted ceramic vase with intricate blue glaze',80,'../static/images/popular-1.jpg','7a4467f8-3893-4ce0-aac3-97bd98375f07','240926f6-6a04-4861-8a5e-c816e1ab4320'),('ef5b7e92-bd88-4e4c-bce7-244a45fe44ca','2024-04-29 13:54:57','2024-04-29 13:54:57','Stained Glass Window Panel','Colorful stained glass window panel with floral design',180,'../static/images/popular-1.jpg','1f564af8-0d6d-46a7-b165-29cee42d7b4f','b9beb029-76f9-42ef-be91-410f70654e35'),('f63bcd97-89d3-4537-a720-6c32a35c41ca','2024-04-29 13:54:57','2024-04-29 13:54:57','Hand-painted Ceramic Tile','Handcrafted ceramic tile painted with intricate floral motifs',15,'../static/images/popular-1.jpg','2123a875-aaa6-4426-8035-e1ad43eaf4d2','d6e5aed1-7fbd-4349-90a6-d540f3d3f136'),('fc5340e4-712f-438d-85db-a18d673b9bec','2024-04-29 13:54:57','2024-04-29 13:54:57','Handcrafted Wooden Serving Platter','Beautiful handcrafted wooden serving platter with natural wood grain',50,'../static/images/popular-1.jpg','97efb064-0ee5-4a39-ada5-9a26e139e9ed','af23023e-7899-4f6d-b64b-f3e2d2565427');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `text` varchar(1024) NOT NULL,
  `customer_id` varchar(60) NOT NULL,
  `product_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-29 13:57:02
