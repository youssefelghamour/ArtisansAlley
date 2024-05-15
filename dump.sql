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

use artall_db;

--
-- Table structure for table `archive_product`
--

DROP TABLE IF EXISTS `archive_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_product` (
  `archive_id` varchar(60) NOT NULL,
  `product_id` varchar(60) NOT NULL,
  PRIMARY KEY (`archive_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `archive_product_ibfk_1` FOREIGN KEY (`archive_id`) REFERENCES `archives` (`id`),
  CONSTRAINT `archive_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive_product`
--

LOCK TABLES `archive_product` WRITE;
/*!40000 ALTER TABLE `archive_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `archive_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archives`
--

DROP TABLE IF EXISTS `archives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archives` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `customer_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `archives_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archives`
--

LOCK TABLES `archives` WRITE;
/*!40000 ALTER TABLE `archives` DISABLE KEYS */;
/*!40000 ALTER TABLE `archives` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `artisan_craft` VALUES ('b3536a57-cc53-4001-bb95-22a19cff5235','2552e70a-143b-4baa-8264-f62759724729'),('99a9ee73-a657-44f2-a351-850d5b9bee04','4425a017-eeec-4288-9db1-2c51a3765380'),('cb3ff236-5dcb-4ac2-87ad-b10ee2923bd5','4425a017-eeec-4288-9db1-2c51a3765380'),('8483dc21-2b07-497c-add5-63234dd4a9c6','537103f6-d3c1-439b-8c18-6c57d4b06865'),('b3536a57-cc53-4001-bb95-22a19cff5235','53f38b43-f07e-4169-94f6-9b2a8d77c202'),('f044c6d9-e235-41d9-b730-5fae44b43569','53f38b43-f07e-4169-94f6-9b2a8d77c202'),('f044c6d9-e235-41d9-b730-5fae44b43569','57d3cd29-fd11-4908-8e4a-f8c52d32c505'),('ccee29fb-eb32-47ae-9598-b9bfd8e8611e','7b6e89d5-c5f9-45e1-bc57-209bd633296a'),('d9cbe14f-0a0e-4002-8711-9214529ba738','7b6e89d5-c5f9-45e1-bc57-209bd633296a'),('356cba70-1a98-48f5-9bee-bbf4044e740c','82ac45de-0719-4e27-a94e-8d11e9804afa'),('ccee29fb-eb32-47ae-9598-b9bfd8e8611e','82ac45de-0719-4e27-a94e-8d11e9804afa'),('e4176866-cfc7-4e42-9833-d75fadbc909f','86c8ff5c-7832-498d-b206-d58058631735'),('99a9ee73-a657-44f2-a351-850d5b9bee04','a1353a64-6f8c-4bb2-b1e6-b7433788e3a7'),('a4695e5b-181c-4b73-83dc-695d921325d8','a1353a64-6f8c-4bb2-b1e6-b7433788e3a7'),('cb973d2f-8cf8-4d9d-a353-b6473df36394','a1353a64-6f8c-4bb2-b1e6-b7433788e3a7'),('ccee29fb-eb32-47ae-9598-b9bfd8e8611e','a1353a64-6f8c-4bb2-b1e6-b7433788e3a7'),('99a9ee73-a657-44f2-a351-850d5b9bee04','a6eb5fb9-7280-466f-b0e8-b4b00fe3510a'),('cb3ff236-5dcb-4ac2-87ad-b10ee2923bd5','a6eb5fb9-7280-466f-b0e8-b4b00fe3510a'),('356cba70-1a98-48f5-9bee-bbf4044e740c','bc3a384e-b194-42b3-a969-983c3a09d3cc'),('8483dc21-2b07-497c-add5-63234dd4a9c6','d3f83ce3-eaf2-4470-8631-85c67c6deda5'),('a4695e5b-181c-4b73-83dc-695d921325d8','d3f83ce3-eaf2-4470-8631-85c67c6deda5'),('e4176866-cfc7-4e42-9833-d75fadbc909f','dfff48fa-7328-4807-84f7-b84e73138b91'),('8483dc21-2b07-497c-add5-63234dd4a9c6','e470ca0d-51fc-4f91-9c24-f4336d6cc1a0'),('cb3ff236-5dcb-4ac2-87ad-b10ee2923bd5','e470ca0d-51fc-4f91-9c24-f4336d6cc1a0'),('d9cbe14f-0a0e-4002-8711-9214529ba738','ec0a03fe-55eb-4ca5-8e3a-245600dd907f'),('b3536a57-cc53-4001-bb95-22a19cff5235','efbf2e3c-7eb5-4bf7-9fb7-6f2025bde60b'),('356cba70-1a98-48f5-9bee-bbf4044e740c','f46f9c77-6885-40f8-b4df-48b41238dda5');
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
INSERT INTO `artisans` VALUES ('356cba70-1a98-48f5-9bee-bbf4044e740c','2024-05-15 05:10:09','2024-05-15 05:10:09','Aisha Kareem','Skilled maker dedicated to producing high-quality works of art','aisha@example.com','$2b$12$taPURj.AJev6IeKV3TiFs.W5qeB0zTt8ERDBmGZeyoY4MsMKQi/UK','../static/images/avatar.png','650c073d-744b-4e76-91ae-141d32eaeb36'),('8483dc21-2b07-497c-add5-63234dd4a9c6','2024-05-15 05:10:11','2024-05-15 05:10:11','Youssef Nasser','Craftsman committed to craftsmanship and creativity','youssef@example.com','$2b$12$n1OArEvM3TyPCn2obzTQyuHZ/fmXswwARYuXoI9OAc2KzZXmEuZme','../static/images/avatar.png','57a8a13a-74f0-4dc8-bfb7-2201c9f5906e'),('99a9ee73-a657-44f2-a351-850d5b9bee04','2024-05-15 05:10:22','2024-05-15 05:10:22','Ahmed Taha','Artist full of passion and skill','ahmedt@example.com','$2b$12$naRQSAx09q8LiHdfxKRX3eJiW1nqWUJ.ojHLqozbpSuiuhtf/vr5.','../static/images/avatar.png','7bff0b3c-e848-4e6b-b1ea-f9aedec75627'),('a4695e5b-181c-4b73-83dc-695d921325d8','2024-05-15 05:09:58','2024-05-15 05:09:58','Fatima Ahmed','Experienced artisan dedicated to creating unique works','fatima@example.com','$2b$12$zbcozWGdhYjqvNoA3hHayO3K4EfsUA2YW2KTJ1rYVat.QQzz37fK6','../static/images/avatar.png','63333c47-ceef-4e3f-86c4-0b85b993723d'),('b3536a57-cc53-4001-bb95-22a19cff5235','2024-05-15 05:10:06','2024-05-15 05:10:06','Hassan Ibrahim','Artisan with a keen eye for detail and a love for creativity','hassan@example.com','$2b$12$BHNgOA8SM8pRGUyp2kQU7eFqpnDjdk6obP.m0sQ/UOg2WPJAc1AQO','../static/images/avatar.png','7b1079d8-09cc-429b-b8d7-1afb47a45d67'),('cb3ff236-5dcb-4ac2-87ad-b10ee2923bd5','2024-05-15 05:10:00','2024-05-15 05:10:00','Mohammed Khalil','Passionate craftsperson committed to the art of creation','mohammed@example.com','$2b$12$cXxCPmEl.JWQoI21IHN89ODsVuEWL/ATofkyCnb08biJE1Fz/kJkS','../static/images/avatar.png','49e50707-ed21-4961-a9b5-09eac3664874'),('cb973d2f-8cf8-4d9d-a353-b6473df36394','2024-05-15 05:10:17','2024-05-15 05:10:17','Khaled Farouk','Passionate creator known for their dedication to their craft','khaled@example.com','$2b$12$oMHo3ZR9FdKYfLcoHClc.Oi3H/Rgg/F5EMdWpNpOo4JYO043DulQy','../static/images/avatar.png','673df61d-a2d6-4823-b871-7ccabb853286'),('ccee29fb-eb32-47ae-9598-b9bfd8e8611e','2024-05-15 05:10:20','2024-05-15 05:10:20','Sara Mansour','Versatile artisan dedicated to excellence in their work','sara@example.com','$2b$12$iLv02fxuD/HAm7TfZT9EIOBr0lahAF2Fhlb2pN7Nt5RyzjhXcgwMq','../static/images/avatar.png','95257d2a-4af5-45f7-be3c-83f2edf74001'),('d9cbe14f-0a0e-4002-8711-9214529ba738','2024-05-15 05:09:55','2024-05-15 05:09:55','Ali Hassan','Skilled artisan with a passion for traditional craftsmanship','ali@example.com','$2b$12$SL5AOAtJRo0XMunOOwQmzuITxavMLIDCjg9qsgeJ501fYH.H7cpZG','../static/images/avatar.png','eaa64ef2-1377-41ba-a19b-42e654d0b981'),('e4176866-cfc7-4e42-9833-d75fadbc909f','2024-05-15 05:10:03','2024-05-15 05:10:03','Layla Abbas','Master artisan known for their dedication to craftsmanship','layla@example.com','$2b$12$5x2dbYT1nEZceNGnFkcH0ugNm.XRqbbD51rDOf5E6RN60W10hI2sq','../static/images/avatar.png','b9268c33-6615-4b31-94eb-f40ab61a6f82'),('f044c6d9-e235-41d9-b730-5fae44b43569','2024-05-15 05:10:14','2024-05-15 05:10:14','Nadia khalfaoui','Skilled artisan dedicated to producing quality handmade goods','nadia@example.com','$2b$12$Y9zQETJEordW0TU.fESfJe3GbQgBhfpVpsBtydGmm/oQjQW.zWRHK','../static/images/avatar.png','eaffb0b0-7d5c-40ec-8bcc-d948c4a31013');
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
INSERT INTO `cities` VALUES ('04d40ce1-6090-4d6c-8b5c-89d5012f7b73','2024-05-15 05:09:41','2024-05-15 05:09:41','Umm Salal','e0edc159-de2f-4fd3-a02e-478607e5880e'),('12ac6e48-7e5f-494c-9878-ffe1a773bfd1','2024-05-15 05:09:42','2024-05-15 05:09:42','Irbid','b9104aad-0f5c-40d7-84f7-69fc19c09920'),('1329f13b-3a2d-479b-a53f-8f3bc966bcc5','2024-05-15 05:09:42','2024-05-15 05:09:42','Port Sudan','54c2ebb5-d4fc-4f48-807e-c7e56d4a2b9b'),('1575bdd5-67a6-4559-99bb-4f47f745c95f','2024-05-15 05:09:43','2024-05-15 05:09:43','Tadjoura','4de71b35-1cc6-44f2-94bb-609e2f6cffe7'),('2765f352-3297-4ee7-af5e-56979f05f62a','2024-05-15 05:09:42','2024-05-15 05:09:42','Gaza','4ee6c10e-5be6-47f3-a063-421e3d543a89'),('288f5a8d-9220-4328-bd10-4e1ffb910eb0','2024-05-15 05:09:41','2024-05-15 05:09:41','Sharjah','59d9fcaa-3af0-4553-8a42-5b5a1aca3a1a'),('32471180-0f00-48aa-aa43-26b921aee874','2024-05-15 05:09:42','2024-05-15 05:09:42','Benghazi','d5ce61e2-902f-46e4-8f30-0b23bfd61440'),('35271e01-7def-4b35-b9bc-89e2ffd0fd45','2024-05-15 05:09:42','2024-05-15 05:09:42','Khartoum','54c2ebb5-d4fc-4f48-807e-c7e56d4a2b9b'),('37723aaa-bae1-4c4b-954f-7b37e6d1d566','2024-05-15 05:09:42','2024-05-15 05:09:42','Luxor','4e378759-6cf7-45b8-a461-b0feb45ca01e'),('461b92dd-6179-449c-b191-f14fa1fd786f','2024-05-15 05:09:42','2024-05-15 05:09:42','Cairo','4e378759-6cf7-45b8-a461-b0feb45ca01e'),('47d4674b-a750-4424-9483-a711508eb142','2024-05-15 05:09:41','2024-05-15 05:09:41','Aden','c28b6028-e8b3-4231-b120-3145e0d29bf2'),('495c5579-623f-4547-9a8b-69b9fd31f433','2024-05-15 05:09:42','2024-05-15 05:09:42','Al Hudaydah','c28b6028-e8b3-4231-b120-3145e0d29bf2'),('49e50707-ed21-4961-a9b5-09eac3664874','2024-05-15 05:09:41','2024-05-15 05:09:41','Jeddah','d25b2a1d-b795-42fc-a12f-863cf9c193e3'),('4a7b9d2d-5e99-4587-8179-b5ed7c5676c3','2024-05-15 05:09:42','2024-05-15 05:09:42','Beirut','183123c8-0af4-4c97-9ac8-88353fa81799'),('4af928f4-98c2-4c16-b28e-11eeff841135','2024-05-15 05:09:42','2024-05-15 05:09:42','Marrakesh','55fa9d0b-4334-48ec-8118-5cae55ddf5ff'),('4c877de7-a583-47bd-b2ad-a8d8c978a0fb','2024-05-15 05:09:42','2024-05-15 05:09:42','Algiers','c72e92c0-3639-4608-b0a4-76ffc05143b5'),('57a8a13a-74f0-4dc8-bfb7-2201c9f5906e','2024-05-15 05:09:41','2024-05-15 05:09:41','Hamad Town','dc267ebe-9231-442a-9a25-238388cec499'),('58555ec2-4236-4485-b222-d8d614dfcb08','2024-05-15 05:09:41','2024-05-15 05:09:41','Salalah','7bb3d8bd-b34c-4917-8081-b4bfb8c3f4e3'),('58fbe4a9-fe89-443b-82d3-ec10c8eb4e33','2024-05-15 05:09:42','2024-05-15 05:09:42','Sidon','183123c8-0af4-4c97-9ac8-88353fa81799'),('59f13008-548a-4c6a-977d-0aaaefe8e555','2024-05-15 05:09:41','2024-05-15 05:09:41','Abu Dhabi','59d9fcaa-3af0-4553-8a42-5b5a1aca3a1a'),('5a453eac-f269-4efe-bc80-5a5add96bf5b','2024-05-15 05:09:41','2024-05-15 05:09:41','Mecca','d25b2a1d-b795-42fc-a12f-863cf9c193e3'),('5bf680b8-4a01-4426-8d8a-1b9e209b9236','2024-05-15 05:09:41','2024-05-15 05:09:41','Sana\'a','c28b6028-e8b3-4231-b120-3145e0d29bf2'),('5ffd2d71-dd93-4c53-8c64-253ce297ee68','2024-05-15 05:09:41','2024-05-15 05:09:41','Taiz','c28b6028-e8b3-4231-b120-3145e0d29bf2'),('60051239-82cd-40a0-a8fc-5c4bee8f0259','2024-05-15 05:09:42','2024-05-15 05:09:42','Oran','c72e92c0-3639-4608-b0a4-76ffc05143b5'),('6062c125-d50c-45dd-be6d-a27e68c779db','2024-05-15 05:09:43','2024-05-15 05:09:43','Hargeisa','7042a165-3d70-4a65-9ddf-6450baa87693'),('63333c47-ceef-4e3f-86c4-0b85b993723d','2024-05-15 05:09:41','2024-05-15 05:09:41','Al Wakrah','e0edc159-de2f-4fd3-a02e-478607e5880e'),('650c073d-744b-4e76-91ae-141d32eaeb36','2024-05-15 05:09:41','2024-05-15 05:09:41','Doha','e0edc159-de2f-4fd3-a02e-478607e5880e'),('65505c1e-4b71-44ce-b371-e13f15b27b78','2024-05-15 05:09:41','2024-05-15 05:09:41','Dammam','d25b2a1d-b795-42fc-a12f-863cf9c193e3'),('6559e263-fb88-49c2-a543-ba2550f6e21d','2024-05-15 05:09:42','2024-05-15 05:09:42','Baghdad','2bc38323-b9c5-4258-b492-cec4ecd76a7c'),('673df61d-a2d6-4823-b871-7ccabb853286','2024-05-15 05:09:42','2024-05-15 05:09:42','Aleppo','30b1a4ec-060a-4429-9679-7a511d764583'),('67ff550e-93eb-4954-b1b5-4f8914c8b08a','2024-05-15 05:09:42','2024-05-15 05:09:42','Casablanca','55fa9d0b-4334-48ec-8118-5cae55ddf5ff'),('68439679-7f7a-40ed-b9d8-6f027be936ff','2024-05-15 05:09:42','2024-05-15 05:09:42','Jerusalem','4ee6c10e-5be6-47f3-a063-421e3d543a89'),('689153ec-718c-4ee5-9206-54f3df71c86a','2024-05-15 05:09:41','2024-05-15 05:09:41','Dubai','59d9fcaa-3af0-4553-8a42-5b5a1aca3a1a'),('6c9398ae-d101-4b1b-aa2e-70de009ef1f5','2024-05-15 05:09:43','2024-05-15 05:09:43','Obock','4de71b35-1cc6-44f2-94bb-609e2f6cffe7'),('6cc5fcf3-d646-402d-893a-a1eda1ca5c42','2024-05-15 05:09:42','2024-05-15 05:09:42','Alexandria','4e378759-6cf7-45b8-a461-b0feb45ca01e'),('7b1079d8-09cc-429b-b8d7-1afb47a45d67','2024-05-15 05:09:42','2024-05-15 05:09:42','Ramallah','4ee6c10e-5be6-47f3-a063-421e3d543a89'),('7bff0b3c-e848-4e6b-b1ea-f9aedec75627','2024-05-15 05:09:42','2024-05-15 05:09:42','Sirte','d5ce61e2-902f-46e4-8f30-0b23bfd61440'),('7c19dae8-b422-425d-a456-f6c84aa09208','2024-05-15 05:09:42','2024-05-15 05:09:42','Tripoli','183123c8-0af4-4c97-9ac8-88353fa81799'),('7e09124f-f84b-4060-bc38-ea6612e3b5e2','2024-05-15 05:09:41','2024-05-15 05:09:41','Riffa','dc267ebe-9231-442a-9a25-238388cec499'),('7fb190ee-16f4-4829-a523-9663979af73e','2024-05-15 05:09:41','2024-05-15 05:09:41','Sohar','7bb3d8bd-b34c-4917-8081-b4bfb8c3f4e3'),('82460d60-4b6b-4bae-bd98-dcff9babcffc','2024-05-15 05:09:42','2024-05-15 05:09:42','Hama','30b1a4ec-060a-4429-9679-7a511d764583'),('836a76f9-f7e8-49c0-b6df-cf8f87e6feab','2024-05-15 05:09:42','2024-05-15 05:09:42','Hebron','4ee6c10e-5be6-47f3-a063-421e3d543a89'),('8b65dfbb-4000-4fb5-8879-68e987d601ee','2024-05-15 05:09:41','2024-05-15 05:09:41','Nizwa','7bb3d8bd-b34c-4917-8081-b4bfb8c3f4e3'),('8fb045a2-fdd5-40e4-9125-f99f83995fbd','2024-05-15 05:09:42','2024-05-15 05:09:42','Rabat','55fa9d0b-4334-48ec-8118-5cae55ddf5ff'),('8fcc3942-dd87-4f67-b1ba-7bef61805224','2024-05-15 05:09:42','2024-05-15 05:09:42','Omdurman','54c2ebb5-d4fc-4f48-807e-c7e56d4a2b9b'),('95257d2a-4af5-45f7-be3c-83f2edf74001','2024-05-15 05:09:42','2024-05-15 05:09:42','Tripoli','d5ce61e2-902f-46e4-8f30-0b23bfd61440'),('9b3de3fb-8e60-4f90-92cf-efca13696029','2024-05-15 05:09:41','2024-05-15 05:09:41','Al Khor','e0edc159-de2f-4fd3-a02e-478607e5880e'),('a14e1403-60be-4161-822d-3a047440d3b2','2024-05-15 05:09:42','2024-05-15 05:09:42','Giza','4e378759-6cf7-45b8-a461-b0feb45ca01e'),('a381d143-d6f2-44a3-a135-44fe35a57c2d','2024-05-15 05:09:43','2024-05-15 05:09:43','Bosaso','7042a165-3d70-4a65-9ddf-6450baa87693'),('aa0a4f5a-7ebd-48d4-aa37-0d3c4dd86b0c','2024-05-15 05:09:41','2024-05-15 05:09:41','Muharraq','dc267ebe-9231-442a-9a25-238388cec499'),('b298068e-8369-4215-be82-40ceef99fb8d','2024-05-15 05:09:42','2024-05-15 05:09:42','Annaba','c72e92c0-3639-4608-b0a4-76ffc05143b5'),('b40f8135-218a-42b4-9aad-ba056443d94f','2024-05-15 05:09:41','2024-05-15 05:09:41','Riyadh','d25b2a1d-b795-42fc-a12f-863cf9c193e3'),('b52688d9-92ff-4c56-b050-336c812e848e','2024-05-15 05:09:43','2024-05-15 05:09:43','Kismayo','7042a165-3d70-4a65-9ddf-6450baa87693'),('b9268c33-6615-4b31-94eb-f40ab61a6f82','2024-05-15 05:09:41','2024-05-15 05:09:41','Muscat','7bb3d8bd-b34c-4917-8081-b4bfb8c3f4e3'),('ba150fad-c84d-47f1-96f4-4ee5356c5022','2024-05-15 05:09:41','2024-05-15 05:09:41','Jabriya','0028ffd6-068e-411b-97a6-076e1fb524c3'),('bce046cd-ab7b-4006-862a-1c2777b0da70','2024-05-15 05:09:42','2024-05-15 05:09:42','Constantine','c72e92c0-3639-4608-b0a4-76ffc05143b5'),('bf4c780d-27a4-48b1-a5ab-1d85c753e286','2024-05-15 05:09:42','2024-05-15 05:09:42','Misrata','d5ce61e2-902f-46e4-8f30-0b23bfd61440'),('c202065a-2576-4592-8bc0-0666d88eb27f','2024-05-15 05:09:43','2024-05-15 05:09:43','Ali Sabieh','4de71b35-1cc6-44f2-94bb-609e2f6cffe7'),('c21da140-e977-47b7-b32b-343739357ccc','2024-05-15 05:09:41','2024-05-15 05:09:41','Ajman','59d9fcaa-3af0-4553-8a42-5b5a1aca3a1a'),('c60accc1-8f46-49ff-ad10-8657cd794ede','2024-05-15 05:09:42','2024-05-15 05:09:42','Sousse','901e652b-8490-496f-9516-9e15d7a6dfb7'),('c9e9e6c9-a3de-40ea-828e-6a2b0836dc02','2024-05-15 05:09:43','2024-05-15 05:09:43','Djibouti City','4de71b35-1cc6-44f2-94bb-609e2f6cffe7'),('ca87f826-371c-47f9-b72a-33a6a826d085','2024-05-15 05:09:42','2024-05-15 05:09:42','Zarqa','b9104aad-0f5c-40d7-84f7-69fc19c09920'),('cc387f85-a764-46b4-a1dc-015198ce76d5','2024-05-15 05:09:42','2024-05-15 05:09:42','Sfax','901e652b-8490-496f-9516-9e15d7a6dfb7'),('cc84c2ae-f839-489c-80aa-4f28b7797bf4','2024-05-15 05:09:42','2024-05-15 05:09:42','Amman','b9104aad-0f5c-40d7-84f7-69fc19c09920'),('cd01d462-971d-45ca-ac95-4ac9b58ca360','2024-05-15 05:09:42','2024-05-15 05:09:42','Erbil','2bc38323-b9c5-4258-b492-cec4ecd76a7c'),('d271e3fb-1581-4740-a296-cc4551d25aba','2024-05-15 05:09:41','2024-05-15 05:09:41','Medina','d25b2a1d-b795-42fc-a12f-863cf9c193e3'),('dd82c318-4fe3-4490-85a6-68350b61de59','2024-05-15 05:09:42','2024-05-15 05:09:42','Homs','30b1a4ec-060a-4429-9679-7a511d764583'),('e043598c-7322-4336-8a48-145b38574374','2024-05-15 05:09:41','2024-05-15 05:09:41','Hawalli','0028ffd6-068e-411b-97a6-076e1fb524c3'),('e15b78e9-1471-404c-a119-8c3dc368c72b','2024-05-15 05:09:42','2024-05-15 05:09:42','Tyre','183123c8-0af4-4c97-9ac8-88353fa81799'),('e3ff7310-ce56-426c-9a1f-dd345a5d5f2d','2024-05-15 05:09:41','2024-05-15 05:09:41','Fujairah','59d9fcaa-3af0-4553-8a42-5b5a1aca3a1a'),('e71c80bb-6017-4ea0-abb9-87ce90139faf','2024-05-15 05:09:42','2024-05-15 05:09:42','Kassala','54c2ebb5-d4fc-4f48-807e-c7e56d4a2b9b'),('e854b329-0d6a-4b1c-b926-91d42de2263f','2024-05-15 05:09:42','2024-05-15 05:09:42','Damascus','30b1a4ec-060a-4429-9679-7a511d764583'),('e9a955cc-eaff-4a01-823f-59ce645158a7','2024-05-15 05:09:42','2024-05-15 05:09:42','Mosul','2bc38323-b9c5-4258-b492-cec4ecd76a7c'),('eaa64ef2-1377-41ba-a19b-42e654d0b981','2024-05-15 05:09:42','2024-05-15 05:09:42','Gabès','901e652b-8490-496f-9516-9e15d7a6dfb7'),('eaffb0b0-7d5c-40ec-8bcc-d948c4a31013','2024-05-15 05:09:42','2024-05-15 05:09:42','Aqaba','b9104aad-0f5c-40d7-84f7-69fc19c09920'),('edeaf799-70c6-407b-9985-8ce6e3333f45','2024-05-15 05:09:41','2024-05-15 05:09:41','Manama','dc267ebe-9231-442a-9a25-238388cec499'),('ee48d94b-97db-4d0d-b4d6-5569135acf2c','2024-05-15 05:09:42','2024-05-15 05:09:42','Tunis','901e652b-8490-496f-9516-9e15d7a6dfb7'),('f04ac035-fc3f-42f6-84ae-5a3ceb88c21c','2024-05-15 05:09:42','2024-05-15 05:09:42','Basra','2bc38323-b9c5-4258-b492-cec4ecd76a7c'),('f1355644-e3f8-4261-ae9d-ba750f05cee0','2024-05-15 05:09:42','2024-05-15 05:09:42','Fez','55fa9d0b-4334-48ec-8118-5cae55ddf5ff'),('f4630ce4-d61b-42df-b7a9-dad38ff9c902','2024-05-15 05:09:41','2024-05-15 05:09:41','Kuwait City','0028ffd6-068e-411b-97a6-076e1fb524c3'),('f61ae446-5ccb-4e06-871b-9401c441b694','2024-05-15 05:09:41','2024-05-15 05:09:41','Salmiya','0028ffd6-068e-411b-97a6-076e1fb524c3'),('fea1855f-eb6e-4878-adb6-86d9c807631e','2024-05-15 05:09:43','2024-05-15 05:09:43','Mogadishu','7042a165-3d70-4a65-9ddf-6450baa87693');
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
INSERT INTO `countries` VALUES ('0028ffd6-068e-411b-97a6-076e1fb524c3','2024-05-15 05:09:41','2024-05-15 05:09:41','Kuwait'),('183123c8-0af4-4c97-9ac8-88353fa81799','2024-05-15 05:09:42','2024-05-15 05:09:42','Lebanon'),('2bc38323-b9c5-4258-b492-cec4ecd76a7c','2024-05-15 05:09:42','2024-05-15 05:09:42','Iraq'),('30b1a4ec-060a-4429-9679-7a511d764583','2024-05-15 05:09:42','2024-05-15 05:09:42','Syria'),('4de71b35-1cc6-44f2-94bb-609e2f6cffe7','2024-05-15 05:09:43','2024-05-15 05:09:43','Djibouti'),('4e378759-6cf7-45b8-a461-b0feb45ca01e','2024-05-15 05:09:42','2024-05-15 05:09:42','Egypt'),('4ee6c10e-5be6-47f3-a063-421e3d543a89','2024-05-15 05:09:42','2024-05-15 05:09:42','Palestine'),('54c2ebb5-d4fc-4f48-807e-c7e56d4a2b9b','2024-05-15 05:09:42','2024-05-15 05:09:42','Sudan'),('55fa9d0b-4334-48ec-8118-5cae55ddf5ff','2024-05-15 05:09:42','2024-05-15 05:09:42','Morocco'),('59d9fcaa-3af0-4553-8a42-5b5a1aca3a1a','2024-05-15 05:09:41','2024-05-15 05:09:41','United Arab Emirates'),('7042a165-3d70-4a65-9ddf-6450baa87693','2024-05-15 05:09:43','2024-05-15 05:09:43','Somalia'),('7bb3d8bd-b34c-4917-8081-b4bfb8c3f4e3','2024-05-15 05:09:41','2024-05-15 05:09:41','Oman'),('901e652b-8490-496f-9516-9e15d7a6dfb7','2024-05-15 05:09:42','2024-05-15 05:09:42','Tunisia'),('b9104aad-0f5c-40d7-84f7-69fc19c09920','2024-05-15 05:09:42','2024-05-15 05:09:42','Jordan'),('c28b6028-e8b3-4231-b120-3145e0d29bf2','2024-05-15 05:09:41','2024-05-15 05:09:41','Yemen'),('c72e92c0-3639-4608-b0a4-76ffc05143b5','2024-05-15 05:09:42','2024-05-15 05:09:42','Algeria'),('d25b2a1d-b795-42fc-a12f-863cf9c193e3','2024-05-15 05:09:41','2024-05-15 05:09:41','Saudi Arabia'),('d5ce61e2-902f-46e4-8f30-0b23bfd61440','2024-05-15 05:09:42','2024-05-15 05:09:42','Libya'),('dc267ebe-9231-442a-9a25-238388cec499','2024-05-15 05:09:41','2024-05-15 05:09:41','Bahrain'),('e0edc159-de2f-4fd3-a02e-478607e5880e','2024-05-15 05:09:41','2024-05-15 05:09:41','Qatar');
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
INSERT INTO `crafts` VALUES ('2552e70a-143b-4baa-8264-f62759724729','2024-05-15 05:09:43','2024-05-15 05:09:43','Basketry'),('4425a017-eeec-4288-9db1-2c51a3765380','2024-05-15 05:09:43','2024-05-15 05:09:43','Leatherworking'),('537103f6-d3c1-439b-8c18-6c57d4b06865','2024-05-15 05:09:43','2024-05-15 05:09:43','Engraving'),('53f38b43-f07e-4169-94f6-9b2a8d77c202','2024-05-15 05:09:43','2024-05-15 05:09:43','Furniture'),('57d3cd29-fd11-4908-8e4a-f8c52d32c505','2024-05-15 05:09:43','2024-05-15 05:09:43','Rugs'),('7b6e89d5-c5f9-45e1-bc57-209bd633296a','2024-05-15 05:09:43','2024-05-15 05:09:43','Tiles'),('82ac45de-0719-4e27-a94e-8d11e9804afa','2024-05-15 05:09:43','2024-05-15 05:09:43','Calligraphy'),('86c8ff5c-7832-498d-b206-d58058631735','2024-05-15 05:09:43','2024-05-15 05:09:43','Jewelry'),('a1353a64-6f8c-4bb2-b1e6-b7433788e3a7','2024-05-15 05:09:43','2024-05-15 05:09:43','Woodwork'),('a6eb5fb9-7280-466f-b0e8-b4b00fe3510a','2024-05-15 05:09:43','2024-05-15 05:09:43','Ceramics'),('bc3a384e-b194-42b3-a969-983c3a09d3cc','2024-05-15 05:09:43','2024-05-15 05:09:43','Sculpting'),('d3f83ce3-eaf2-4470-8631-85c67c6deda5','2024-05-15 05:09:43','2024-05-15 05:09:43','Weaving'),('dfff48fa-7328-4807-84f7-b84e73138b91','2024-05-15 05:09:43','2024-05-15 05:09:43','Metalwork'),('e470ca0d-51fc-4f91-9c24-f4336d6cc1a0','2024-05-15 05:09:43','2024-05-15 05:09:43','Pottery'),('ec0a03fe-55eb-4ca5-8e3a-245600dd907f','2024-05-15 05:09:43','2024-05-15 05:09:43','Weaving'),('efbf2e3c-7eb5-4bf7-9fb7-6f2025bde60b','2024-05-15 05:09:43','2024-05-15 05:09:43','Glass'),('f46f9c77-6885-40f8-b4df-48b41238dda5','2024-05-15 05:09:43','2024-05-15 05:09:43','Painting');
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
INSERT INTO `products` VALUES ('141b6bb7-c34d-4da7-bade-b8e54d84810d','2024-05-15 05:10:23','2024-05-15 05:10:23','Hand-carved Stone Sculpture','Intricately hand-carved stone sculpture of a lion',300,'../static/images/popular-1.jpg','356cba70-1a98-48f5-9bee-bbf4044e740c','bc3a384e-b194-42b3-a969-983c3a09d3cc'),('39e0b32d-8c78-4758-8ff7-6b1132fb62fc','2024-05-15 05:10:23','2024-05-15 05:10:23','Stained Glass Window Panel','Colorful stained glass window panel with floral design',180,'../static/images/popular-1.jpg','b3536a57-cc53-4001-bb95-22a19cff5235','efbf2e3c-7eb5-4bf7-9fb7-6f2025bde60b'),('4f53f7f1-cc74-413d-84d5-72f552d083d4','2024-05-15 05:10:23','2024-05-15 05:10:23','Islamic Calligraphy Art','Elegant Islamic calligraphy artwork with gold leaf accents',150,'../static/images/popular-1.jpg','356cba70-1a98-48f5-9bee-bbf4044e740c','82ac45de-0719-4e27-a94e-8d11e9804afa'),('5e747103-f8a3-4902-b1ed-38d84311bd56','2024-05-15 05:10:23','2024-05-15 05:10:23','Hand-tooled Leather Belt','Stylish hand-tooled leather belt with floral patterns',60,'../static/images/popular-1.jpg','cb3ff236-5dcb-4ac2-87ad-b10ee2923bd5','4425a017-eeec-4288-9db1-2c51a3765380'),('5e796dc3-5f8d-4892-9516-ce7d237436d4','2024-05-15 05:10:23','2024-05-15 05:10:23','Hand-carved Wooden Jewelry Box','Exquisite hand-carved wooden jewelry box with floral motifs',60,'../static/images/popular-1.jpg','ccee29fb-eb32-47ae-9598-b9bfd8e8611e','a1353a64-6f8c-4bb2-b1e6-b7433788e3a7'),('82f93daf-bc38-476d-9f65-f8e9a20c38e6','2024-05-15 05:10:22','2024-05-15 05:10:22','Handwoven Wool Rug','Traditional handwoven wool rug with geometric patterns',200,'../static/images/popular-1.jpg','d9cbe14f-0a0e-4002-8711-9214529ba738','ec0a03fe-55eb-4ca5-8e3a-245600dd907f'),('8365922f-6055-48ed-94c3-2a926525b29d','2024-05-15 05:10:23','2024-05-15 05:10:23','Handwoven Cotton Hammock','Comfortable handwoven cotton hammock with fringe detailing',35,'../static/images/popular-1.jpg','8483dc21-2b07-497c-add5-63234dd4a9c6','d3f83ce3-eaf2-4470-8631-85c67c6deda5'),('86149228-dc9f-4342-b7dd-7041b1ec83a9','2024-05-15 05:10:23','2024-05-15 05:10:23','Handcrafted Leather Journal','High-quality handcrafted leather journal with embossed cover',120,'../static/images/popular-1.jpg','f044c6d9-e235-41d9-b730-5fae44b43569','53f38b43-f07e-4169-94f6-9b2a8d77c202'),('8d475105-b95d-4cf4-80bd-cbb4ad5b3dc1','2024-05-15 05:10:23','2024-05-15 05:10:23','Hand-carved Wooden Bowl','Beautifully hand-carved wooden bowl made from sustainable teak wood',50,'../static/images/popular-1.jpg','a4695e5b-181c-4b73-83dc-695d921325d8','a1353a64-6f8c-4bb2-b1e6-b7433788e3a7'),('9cae9c00-d3fa-4e6a-a4bb-fee139e01074','2024-05-15 05:10:23','2024-05-15 05:10:23','Sterling Silver Pendant Necklace','Elegant sterling silver pendant necklace with natural gemstone',120,'../static/images/popular-1.jpg','e4176866-cfc7-4e42-9833-d75fadbc909f','86c8ff5c-7832-498d-b206-d58058631735'),('aefe8bc9-f4b9-4c26-b28b-ea8f7de621c0','2024-05-15 05:10:23','2024-05-15 05:10:23','Hand-carved Wooden Serving Tray','Elegant hand-carved wooden serving tray with intricate floral design',40,'../static/images/popular-1.jpg','cb973d2f-8cf8-4d9d-a353-b6473df36394','a1353a64-6f8c-4bb2-b1e6-b7433788e3a7'),('c3e8768c-9e13-47e3-a166-d855107cab24','2024-05-15 05:10:23','2024-05-15 05:10:23','Hand-engraved Metal Flask','Custom hand-engraved stainless steel flask with intricate design',50,'../static/images/popular-1.jpg','8483dc21-2b07-497c-add5-63234dd4a9c6','537103f6-d3c1-439b-8c18-6c57d4b06865'),('c919c991-b720-4ce5-ada4-9571313f04ab','2024-05-15 05:10:23','2024-05-15 05:10:23','Persian Rug','Beautiful Persian that adds warmth in your house charm',250,'../static/images/popular-1.jpg','f044c6d9-e235-41d9-b730-5fae44b43569','57d3cd29-fd11-4908-8e4a-f8c52d32c505'),('ccb2c2c1-f71f-4e9d-a448-f72fe896c5dc','2024-05-15 05:10:23','2024-05-15 05:10:23','Hand-painted Ceramic Tile','Handcrafted ceramic tile painted with intricate floral motifs',15,'../static/images/popular-1.jpg','d9cbe14f-0a0e-4002-8711-9214529ba738','7b6e89d5-c5f9-45e1-bc57-209bd633296a'),('cf638573-dc92-471c-a737-3924e784b7ff','2024-05-15 05:10:23','2024-05-15 05:10:23','Hand-tooled Leather Keychain','Stylish hand-tooled leather keychain with durable metal hardware',20,'../static/images/popular-1.jpg','99a9ee73-a657-44f2-a351-850d5b9bee04','4425a017-eeec-4288-9db1-2c51a3765380'),('d1f9869a-e62f-40ab-a5c0-0a35ccd01bde','2024-05-15 05:10:23','2024-05-15 05:10:23','Handcrafted Ceramic Vase','Elegant handcrafted ceramic vase with intricate blue glaze',80,'../static/images/popular-1.jpg','cb3ff236-5dcb-4ac2-87ad-b10ee2923bd5','a6eb5fb9-7280-466f-b0e8-b4b00fe3510a'),('d489c756-4aad-4e1a-83dd-ffbad14e81f5','2024-05-15 05:10:23','2024-05-15 05:10:23','Custom Arabic Calligraphy Canvas','Personalized Arabic calligraphy canvas with name or phrase of choice',80,'../static/images/popular-1.jpg','ccee29fb-eb32-47ae-9598-b9bfd8e8611e','82ac45de-0719-4e27-a94e-8d11e9804afa'),('dc5f2f3e-740d-41eb-abe8-c142fee72bbc','2024-05-15 05:10:23','2024-05-15 05:10:23','Tea Cups','A beautiful set of handmade tea cups',40,'../static/images/popular-1.jpg','cb3ff236-5dcb-4ac2-87ad-b10ee2923bd5','e470ca0d-51fc-4f91-9c24-f4336d6cc1a0'),('df872624-3825-490a-9548-2c8ab2bb4435','2024-05-15 05:10:23','2024-05-15 05:10:23','Handcrafted Wooden Serving Platter','Beautiful handcrafted wooden serving platter with natural wood grain',50,'../static/images/popular-1.jpg','99a9ee73-a657-44f2-a351-850d5b9bee04','a1353a64-6f8c-4bb2-b1e6-b7433788e3a7'),('dfebe35f-d162-43a6-847f-08f61f49e634','2024-05-15 05:10:23','2024-05-15 05:10:23','Hand-forged Iron Candle Holder','Hand-forged iron candle holder with intricate scrollwork',80,'../static/images/popular-1.jpg','e4176866-cfc7-4e42-9833-d75fadbc909f','dfff48fa-7328-4807-84f7-b84e73138b91'),('e4d6ba1e-ea58-4f9c-ad9d-9b70ca122d42','2024-05-15 05:10:23','2024-05-15 05:10:23','Handwoven Seagrass Basket','Handwoven seagrass basket with lid, perfect for storage',50,'../static/images/popular-1.jpg','b3536a57-cc53-4001-bb95-22a19cff5235','2552e70a-143b-4baa-8264-f62759724729');
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

-- Dump completed on 2024-05-15  5:10:41
