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
INSERT INTO `artisan_craft` VALUES ('82f1f16e-ceb7-4c1c-ba95-67df34d4b5c4','0793dbf7-332f-47ee-9eff-a1c3a4310bb0'),('8439d4ff-8c7a-4e2b-9a3e-0190e77365d8','0793dbf7-332f-47ee-9eff-a1c3a4310bb0'),('b0e14d91-98a0-42dd-937a-fc439a539ddd','0793dbf7-332f-47ee-9eff-a1c3a4310bb0'),('f2ace9e1-1fbb-458a-966c-4ca3abc5a61c','0793dbf7-332f-47ee-9eff-a1c3a4310bb0'),('081eb014-827e-40aa-9669-a02adffefe3f','0d383144-f8de-4c06-88ae-1c20abd40249'),('82f1f16e-ceb7-4c1c-ba95-67df34d4b5c4','0d383144-f8de-4c06-88ae-1c20abd40249'),('0aa58de0-883f-4718-928f-0d6101084fc6','2be1c05a-ff12-463a-863c-4905d3bfde18'),('b9ccf59f-2d9e-44aa-a5a7-87db296d0416','4b8d0592-0a85-4935-93fb-a7d530ff271b'),('71173e66-1d3e-435f-a23c-116b66ff3e24','617a80de-7ae8-4490-bf7f-21278ae8e6e9'),('b0e14d91-98a0-42dd-937a-fc439a539ddd','617a80de-7ae8-4490-bf7f-21278ae8e6e9'),('ccaf8828-b306-4225-a6d7-15835a54ac83','88a9f332-99a3-44a1-8f19-307bec10e2f3'),('f2ace9e1-1fbb-458a-966c-4ca3abc5a61c','88a9f332-99a3-44a1-8f19-307bec10e2f3'),('113c5834-7594-42ab-904e-7ac884183f42','89ca030e-e453-4ec5-8484-d2d1f6ec3774'),('f2ace9e1-1fbb-458a-966c-4ca3abc5a61c','8a639fc2-ca59-4bb9-ab20-a88bc043e954'),('f41544ff-da52-4a04-81c6-ef83766d9c68','8a639fc2-ca59-4bb9-ab20-a88bc043e954'),('113c5834-7594-42ab-904e-7ac884183f42','91814c9f-74dd-4b66-98d5-5ff49bd98bb0'),('b9ccf59f-2d9e-44aa-a5a7-87db296d0416','91814c9f-74dd-4b66-98d5-5ff49bd98bb0'),('0aa58de0-883f-4718-928f-0d6101084fc6','93988d77-2a2d-4de0-944d-b66ad89b20b9'),('ccaf8828-b306-4225-a6d7-15835a54ac83','9ad32113-e40e-41ec-be66-0efa279a06a5'),('113c5834-7594-42ab-904e-7ac884183f42','a1173cef-0fe6-4b40-abbc-d9be8bfb203e'),('71173e66-1d3e-435f-a23c-116b66ff3e24','b9de1bfc-50f4-42bc-b63d-b48b2e317d4b'),('ccaf8828-b306-4225-a6d7-15835a54ac83','c96984fa-c5d1-4ca5-a5cb-5a70e365b15b'),('081eb014-827e-40aa-9669-a02adffefe3f','e34ba60c-260d-4d69-8514-d97f26711495'),('82f1f16e-ceb7-4c1c-ba95-67df34d4b5c4','e34ba60c-260d-4d69-8514-d97f26711495'),('f41544ff-da52-4a04-81c6-ef83766d9c68','feab4afc-49de-48c5-b5c9-ee5e4c679a46'),('081eb014-827e-40aa-9669-a02adffefe3f','fff4f321-bb34-4bfc-8dea-889fc7e84881'),('71173e66-1d3e-435f-a23c-116b66ff3e24','fff4f321-bb34-4bfc-8dea-889fc7e84881');
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
  `password` varchar(128) NOT NULL,
  `city_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `artisans_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisans`
--

LOCK TABLES `artisans` WRITE;
/*!40000 ALTER TABLE `artisans` DISABLE KEYS */;
INSERT INTO `artisans` VALUES ('081eb014-827e-40aa-9669-a02adffefe3f','2024-04-27 10:43:49','2024-04-27 10:43:49','Mohammed Khalil','Passionate craftsperson committed to the art of creation','mohammed@example.com','password3','abb558a9-4b8b-46c0-8b70-b1d4416eaea9'),('0aa58de0-883f-4718-928f-0d6101084fc6','2024-04-27 10:43:49','2024-04-27 10:43:49','Layla Abbas','Master artisan known for their dedication to craftsmanship','layla@example.com','password4','75b84bb4-c2f4-456f-b1e8-2c161ccafb78'),('113c5834-7594-42ab-904e-7ac884183f42','2024-04-27 10:43:49','2024-04-27 10:43:49','Hassan Ibrahim','Artisan with a keen eye for detail and a love for creativity','hassan@example.com','password5','6b8927a8-4cf6-437d-89f2-218a99b1861b'),('71173e66-1d3e-435f-a23c-116b66ff3e24','2024-04-27 10:43:49','2024-04-27 10:43:49','Youssef Nasser','Craftsman committed to craftsmanship and creativity','youssef@example.com','password7','2f5b3932-b3a8-4123-8f4b-fb9eff82fe06'),('82f1f16e-ceb7-4c1c-ba95-67df34d4b5c4','2024-04-27 10:43:49','2024-04-27 10:43:49','Ahmed Taha','Artist full of passion and skill','ahmedt@example.com','password11','05e6a3ca-d7ec-4340-8357-987b80cb8c99'),('8439d4ff-8c7a-4e2b-9a3e-0190e77365d8','2024-04-27 10:43:49','2024-04-27 10:43:49','Khaled Farouk','Passionate creator known for their dedication to their craft','khaled@example.com','password9','065859f9-6e84-4760-ba99-ec537a64a1c9'),('b0e14d91-98a0-42dd-937a-fc439a539ddd','2024-04-27 10:43:49','2024-04-27 10:43:49','Fatima Ahmed','Experienced artisan dedicated to creating unique works','fatima@example.com','password2','17013b0c-aa96-4454-a41d-4706c19ce385'),('b9ccf59f-2d9e-44aa-a5a7-87db296d0416','2024-04-27 10:43:49','2024-04-27 10:43:49','Nadia khalfaoui','Skilled artisan dedicated to producing quality handmade goods','nadia@example.com','password8','f6aa0981-67f0-41be-9f56-ee980680fa6e'),('ccaf8828-b306-4225-a6d7-15835a54ac83','2024-04-27 10:43:49','2024-04-27 10:43:49','Aisha Kareem','Skilled maker dedicated to producing high-quality works of art','aisha@example.com','password6','40249226-db80-45c2-8adf-29b269778c76'),('f2ace9e1-1fbb-458a-966c-4ca3abc5a61c','2024-04-27 10:43:49','2024-04-27 10:43:49','Sara Mansour','Versatile artisan dedicated to excellence in their work','sara@example.com','password10','fea347cd-6f6b-459c-a8c2-8658a88c5373'),('f41544ff-da52-4a04-81c6-ef83766d9c68','2024-04-27 10:43:49','2024-04-27 10:43:49','Ali Hassan','Skilled artisan with a passion for traditional craftsmanship','ali@example.com','password1','5b15d7a4-de40-4f90-b714-a3624215c779');
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
INSERT INTO `cities` VALUES ('0043f2c2-019d-41ef-91ab-05c262f96c63','2024-04-27 10:43:47','2024-04-27 10:43:47','Homs','4006ace5-2d73-4675-b90b-ec8a434d0bf8'),('0248a74f-aa8b-48a7-b50c-f0e527652a9f','2024-04-27 10:43:47','2024-04-27 10:43:47','Basra','7890aaa5-28a6-4e97-8756-bff7878fc412'),('036e646d-a5be-4414-807d-50e667160545','2024-04-27 10:43:47','2024-04-27 10:43:47','Aden','d1056cb2-cb7b-443b-a1d5-66504a63d1aa'),('040fe2dd-5998-45b0-909a-eae15be67ae3','2024-04-27 10:43:46','2024-04-27 10:43:46','Medina','e5708e53-43f0-43b4-b7e2-35219cf00b0f'),('05e6a3ca-d7ec-4340-8357-987b80cb8c99','2024-04-27 10:43:47','2024-04-27 10:43:47','Sirte','4bc9e47d-f31f-4e7d-8a68-ae73b3ef0120'),('065859f9-6e84-4760-ba99-ec537a64a1c9','2024-04-27 10:43:47','2024-04-27 10:43:47','Aleppo','4006ace5-2d73-4675-b90b-ec8a434d0bf8'),('0b276e87-bfb1-4a52-b4c3-89746eb64d85','2024-04-27 10:43:48','2024-04-27 10:43:48','Oran','c0c13d1a-30f9-4354-8d00-9066ffd96ad3'),('0b652c6a-5d2e-4bb0-85cd-0eabe1b86b57','2024-04-27 10:43:46','2024-04-27 10:43:46','Kuwait City','a35a5986-b8d3-4c5e-89c3-046096b1abc3'),('17013b0c-aa96-4454-a41d-4706c19ce385','2024-04-27 10:43:46','2024-04-27 10:43:46','Al Wakrah','aa23157e-f994-4d9c-aba2-3a00356f0833'),('18858758-436e-44d5-8d3c-d41b72232c27','2024-04-27 10:43:48','2024-04-27 10:43:48','Sfax','53bcac58-8bd3-40c4-ab41-5b660ab1b4de'),('1a728dc7-9d17-41ee-b31d-c10844207287','2024-04-27 10:43:47','2024-04-27 10:43:47','Sana\'a','d1056cb2-cb7b-443b-a1d5-66504a63d1aa'),('1b6eaae8-01f7-4134-87ed-a2b4bf287735','2024-04-27 10:43:47','2024-04-27 10:43:47','Hama','4006ace5-2d73-4675-b90b-ec8a434d0bf8'),('22c3c913-2f22-495e-9696-d359499d30d6','2024-04-27 10:43:46','2024-04-27 10:43:46','Ajman','e8c932a5-1be7-4d0c-b10e-515347bfde29'),('28e1e69e-f0ea-48cf-bd1c-02186f42f95a','2024-04-27 10:43:47','2024-04-27 10:43:47','Beirut','43600811-617d-49fd-b086-c1f1396e5efd'),('2bb9a8b4-26f1-4921-bfb6-8bf01d2bea3b','2024-04-27 10:43:46','2024-04-27 10:43:46','Sharjah','e8c932a5-1be7-4d0c-b10e-515347bfde29'),('2cc88665-7009-453e-b0c2-fb68ac742996','2024-04-27 10:43:46','2024-04-27 10:43:46','Al Khor','aa23157e-f994-4d9c-aba2-3a00356f0833'),('2d213909-5296-4d75-80b5-a9a5125cafb8','2024-04-27 10:43:48','2024-04-27 10:43:48','Hargeisa','32061f24-e802-4624-b674-f8d7fc6eea3f'),('2eb5ebf2-85e7-4810-9cd3-f2656a1073ef','2024-04-27 10:43:47','2024-04-27 10:43:47','Al Hudaydah','d1056cb2-cb7b-443b-a1d5-66504a63d1aa'),('2f5b3932-b3a8-4123-8f4b-fb9eff82fe06','2024-04-27 10:43:46','2024-04-27 10:43:46','Hamad Town','24bfb7c3-ec82-4b1c-aff2-83e42ca71e39'),('2fbf1dbd-e321-4969-8b58-26f5735ba38e','2024-04-27 10:43:48','2024-04-27 10:43:48','Omdurman','0e511581-261c-4895-ae5a-48c42a35a29c'),('393beecc-1570-4d05-b98c-660c92e86ead','2024-04-27 10:43:47','2024-04-27 10:43:47','Luxor','c5d42a8e-97bb-4ce9-8596-8f9cd8bf47a6'),('3bdba99a-683d-4dfb-9759-6f1e21e465be','2024-04-27 10:43:47','2024-04-27 10:43:47','Erbil','7890aaa5-28a6-4e97-8756-bff7878fc412'),('3f0a97eb-7a14-4d98-9804-39853ff62907','2024-04-27 10:43:48','2024-04-27 10:43:48','Kassala','0e511581-261c-4895-ae5a-48c42a35a29c'),('3f0e7564-bda8-4845-86c6-bb42aaaa8152','2024-04-27 10:43:47','2024-04-27 10:43:47','Tyre','43600811-617d-49fd-b086-c1f1396e5efd'),('40249226-db80-45c2-8adf-29b269778c76','2024-04-27 10:43:46','2024-04-27 10:43:46','Doha','aa23157e-f994-4d9c-aba2-3a00356f0833'),('403ef0d9-7696-4450-aca9-5ecb0fcd4952','2024-04-27 10:43:47','2024-04-27 10:43:47','Damascus','4006ace5-2d73-4675-b90b-ec8a434d0bf8'),('44b715b0-1d0d-48fa-a1cb-7bcd5366c278','2024-04-27 10:43:47','2024-04-27 10:43:47','Baghdad','7890aaa5-28a6-4e97-8756-bff7878fc412'),('46ddd405-340c-4722-bf6d-2046c1417050','2024-04-27 10:43:47','2024-04-27 10:43:47','Sohar','2e5dc0be-2039-4e32-a83d-5e9a231cbe84'),('492ab22c-f06e-41ac-87d4-f230384ac2b3','2024-04-27 10:43:48','2024-04-27 10:43:48','Ali Sabieh','0b6c6bfb-a525-42b0-8432-1dab99cfbe64'),('493839c7-9f5f-4415-a734-2d35cbc9abe1','2024-04-27 10:43:48','2024-04-27 10:43:48','Djibouti City','0b6c6bfb-a525-42b0-8432-1dab99cfbe64'),('4e72c6ec-2910-4f69-a6e9-b5b58bb1f708','2024-04-27 10:43:46','2024-04-27 10:43:46','Jabriya','a35a5986-b8d3-4c5e-89c3-046096b1abc3'),('587893ba-4014-4d62-a748-bea898f042ea','2024-04-27 10:43:48','2024-04-27 10:43:48','Rabat','8289f8f9-9fef-4ac9-b70a-0baebbf06e08'),('58e4e66b-2102-4d3f-8784-7004a46155fd','2024-04-27 10:43:46','2024-04-27 10:43:46','Mecca','e5708e53-43f0-43b4-b7e2-35219cf00b0f'),('5b15d7a4-de40-4f90-b714-a3624215c779','2024-04-27 10:43:48','2024-04-27 10:43:48','Gabès','53bcac58-8bd3-40c4-ab41-5b660ab1b4de'),('5e5ec57e-d642-4d54-bc56-663a8254d8df','2024-04-27 10:43:46','2024-04-27 10:43:46','Manama','24bfb7c3-ec82-4b1c-aff2-83e42ca71e39'),('620a0b7e-24aa-4aa9-8a48-3710283f1b04','2024-04-27 10:43:48','2024-04-27 10:43:48','Sousse','53bcac58-8bd3-40c4-ab41-5b660ab1b4de'),('699134cb-4529-4704-8e4b-70b040e143d0','2024-04-27 10:43:48','2024-04-27 10:43:48','Tunis','53bcac58-8bd3-40c4-ab41-5b660ab1b4de'),('6b16f49e-7aa7-4e6e-beb1-32537d9751f8','2024-04-27 10:43:46','2024-04-27 10:43:46','Umm Salal','aa23157e-f994-4d9c-aba2-3a00356f0833'),('6b8927a8-4cf6-437d-89f2-218a99b1861b','2024-04-27 10:43:47','2024-04-27 10:43:47','Ramallah','c99af67c-d388-4b61-896f-06360eba4b24'),('6c3616ef-e118-43ac-a7a2-a668063d3fc0','2024-04-27 10:43:46','2024-04-27 10:43:46','Salmiya','a35a5986-b8d3-4c5e-89c3-046096b1abc3'),('6dc88ccf-4d5b-4671-8dd9-7cd95477a089','2024-04-27 10:43:47','2024-04-27 10:43:47','Jerusalem','c99af67c-d388-4b61-896f-06360eba4b24'),('6e761620-f0d7-4fd7-a6c4-37af8f948ffc','2024-04-27 10:43:48','2024-04-27 10:43:48','Fez','8289f8f9-9fef-4ac9-b70a-0baebbf06e08'),('724be4ed-bcd5-4284-a334-5b249cb2f09c','2024-04-27 10:43:48','2024-04-27 10:43:48','Mogadishu','32061f24-e802-4624-b674-f8d7fc6eea3f'),('72b35a7e-14e5-47b1-b1f0-1987472e7cee','2024-04-27 10:43:47','2024-04-27 10:43:47','Misrata','4bc9e47d-f31f-4e7d-8a68-ae73b3ef0120'),('73cf80f0-5a76-4e2e-b1b5-f0619b60cb2d','2024-04-27 10:43:47','2024-04-27 10:43:47','Amman','fd2af3ba-f3e6-4a12-82e7-f90f0da9bf04'),('75b84bb4-c2f4-456f-b1e8-2c161ccafb78','2024-04-27 10:43:46','2024-04-27 10:43:46','Muscat','2e5dc0be-2039-4e32-a83d-5e9a231cbe84'),('77299883-9339-4710-ac1d-0fff0e602b52','2024-04-27 10:43:47','2024-04-27 10:43:47','Benghazi','4bc9e47d-f31f-4e7d-8a68-ae73b3ef0120'),('78af9bd4-30ad-4868-9fdc-309caf74707e','2024-04-27 10:43:47','2024-04-27 10:43:47','Gaza','c99af67c-d388-4b61-896f-06360eba4b24'),('7d210ad3-d214-4e35-8dc9-78d65178cb7f','2024-04-27 10:43:47','2024-04-27 10:43:47','Nizwa','2e5dc0be-2039-4e32-a83d-5e9a231cbe84'),('7d326c55-46b3-4548-b6b0-be07d469d7ef','2024-04-27 10:43:48','2024-04-27 10:43:48','Casablanca','8289f8f9-9fef-4ac9-b70a-0baebbf06e08'),('857e141a-d071-426d-9ab6-9fee4af7d0c1','2024-04-27 10:43:48','2024-04-27 10:43:48','Marrakesh','8289f8f9-9fef-4ac9-b70a-0baebbf06e08'),('9163cd7a-96fa-4e6f-9849-70e6c22be6e2','2024-04-27 10:43:47','2024-04-27 10:43:47','Mosul','7890aaa5-28a6-4e97-8756-bff7878fc412'),('9483c124-c60e-4e1e-8acb-6cc999951a50','2024-04-27 10:43:47','2024-04-27 10:43:47','Cairo','c5d42a8e-97bb-4ce9-8596-8f9cd8bf47a6'),('960fc3b5-59ca-4288-b0f2-8bf028e1cbfd','2024-04-27 10:43:46','2024-04-27 10:43:46','Fujairah','e8c932a5-1be7-4d0c-b10e-515347bfde29'),('9b73616c-274a-4cdb-a40b-d20cf5ae96db','2024-04-27 10:43:46','2024-04-27 10:43:46','Hawalli','a35a5986-b8d3-4c5e-89c3-046096b1abc3'),('9dbf8cfc-c5fb-406f-84f4-f7c5b667a250','2024-04-27 10:43:46','2024-04-27 10:43:46','Muharraq','24bfb7c3-ec82-4b1c-aff2-83e42ca71e39'),('9fd61d77-d345-4cc0-bb0f-74219a0a09f2','2024-04-27 10:43:47','2024-04-27 10:43:47','Zarqa','fd2af3ba-f3e6-4a12-82e7-f90f0da9bf04'),('a4efeaf5-2f49-4e1a-8d13-81368c8457cb','2024-04-27 10:43:46','2024-04-27 10:43:46','Dubai','e8c932a5-1be7-4d0c-b10e-515347bfde29'),('a610f57a-aaed-4404-981d-6fc9556d2450','2024-04-27 10:43:48','2024-04-27 10:43:48','Algiers','c0c13d1a-30f9-4354-8d00-9066ffd96ad3'),('a9c3b906-0a10-4b41-b557-e94b216c6336','2024-04-27 10:43:46','2024-04-27 10:43:46','Dammam','e5708e53-43f0-43b4-b7e2-35219cf00b0f'),('ab4dffbc-0b88-4ef7-8f1e-d7ad7c98ad6e','2024-04-27 10:43:46','2024-04-27 10:43:46','Salalah','2e5dc0be-2039-4e32-a83d-5e9a231cbe84'),('abb558a9-4b8b-46c0-8b70-b1d4416eaea9','2024-04-27 10:43:46','2024-04-27 10:43:46','Jeddah','e5708e53-43f0-43b4-b7e2-35219cf00b0f'),('adc4ad6c-8303-45a9-ae77-9ee1fb473f32','2024-04-27 10:43:47','2024-04-27 10:43:47','Giza','c5d42a8e-97bb-4ce9-8596-8f9cd8bf47a6'),('b13d287e-571e-4bd6-bc91-8015b083347a','2024-04-27 10:43:46','2024-04-27 10:43:46','Riffa','24bfb7c3-ec82-4b1c-aff2-83e42ca71e39'),('b71a5095-6d49-4ed8-a03c-5f563a5692bf','2024-04-27 10:43:48','2024-04-27 10:43:48','Obock','0b6c6bfb-a525-42b0-8432-1dab99cfbe64'),('b7249288-1391-4dc1-a7eb-422b170f9f35','2024-04-27 10:43:46','2024-04-27 10:43:46','Riyadh','e5708e53-43f0-43b4-b7e2-35219cf00b0f'),('b8777084-b66b-4522-adcc-ef471d740194','2024-04-27 10:43:46','2024-04-27 10:43:46','Abu Dhabi','e8c932a5-1be7-4d0c-b10e-515347bfde29'),('bf7eeb3f-754b-4f39-bad6-8eaf05da1f68','2024-04-27 10:43:47','2024-04-27 10:43:47','Tripoli','43600811-617d-49fd-b086-c1f1396e5efd'),('c4d97423-f628-4392-b0e0-9528d23586a9','2024-04-27 10:43:48','2024-04-27 10:43:48','Constantine','c0c13d1a-30f9-4354-8d00-9066ffd96ad3'),('cfe0daea-cb6e-4a5e-9c3a-2d14af630a87','2024-04-27 10:43:48','2024-04-27 10:43:48','Kismayo','32061f24-e802-4624-b674-f8d7fc6eea3f'),('d1badf60-b01d-44d0-a713-5963acbae1bf','2024-04-27 10:43:48','2024-04-27 10:43:48','Bosaso','32061f24-e802-4624-b674-f8d7fc6eea3f'),('d739f914-08f8-4db1-95e0-c37922f7c7aa','2024-04-27 10:43:47','2024-04-27 10:43:47','Alexandria','c5d42a8e-97bb-4ce9-8596-8f9cd8bf47a6'),('d80b00e1-c233-4250-ab53-d1e7dbab652f','2024-04-27 10:43:48','2024-04-27 10:43:48','Port Sudan','0e511581-261c-4895-ae5a-48c42a35a29c'),('ddd130b6-bb26-4d09-af55-715939a00a15','2024-04-27 10:43:48','2024-04-27 10:43:48','Annaba','c0c13d1a-30f9-4354-8d00-9066ffd96ad3'),('e8b74f7b-b8d8-4e8c-9295-2052a28c988e','2024-04-27 10:43:47','2024-04-27 10:43:47','Sidon','43600811-617d-49fd-b086-c1f1396e5efd'),('eb65e57a-1efc-41d7-a7c3-e2e6ddeba9b6','2024-04-27 10:43:47','2024-04-27 10:43:47','Irbid','fd2af3ba-f3e6-4a12-82e7-f90f0da9bf04'),('f0558336-39c3-4b93-8780-9d3939485219','2024-04-27 10:43:48','2024-04-27 10:43:48','Khartoum','0e511581-261c-4895-ae5a-48c42a35a29c'),('f6aa0981-67f0-41be-9f56-ee980680fa6e','2024-04-27 10:43:47','2024-04-27 10:43:47','Aqaba','fd2af3ba-f3e6-4a12-82e7-f90f0da9bf04'),('fac7411d-3f9a-499f-9262-c7c68f96f92a','2024-04-27 10:43:47','2024-04-27 10:43:47','Taiz','d1056cb2-cb7b-443b-a1d5-66504a63d1aa'),('fbc3a2a4-7f53-44e7-856b-8796adbee1de','2024-04-27 10:43:47','2024-04-27 10:43:47','Hebron','c99af67c-d388-4b61-896f-06360eba4b24'),('fe9be8c5-f25f-4c56-9ab7-84ee4576da0a','2024-04-27 10:43:48','2024-04-27 10:43:48','Tadjoura','0b6c6bfb-a525-42b0-8432-1dab99cfbe64'),('fea347cd-6f6b-459c-a8c2-8658a88c5373','2024-04-27 10:43:47','2024-04-27 10:43:47','Tripoli','4bc9e47d-f31f-4e7d-8a68-ae73b3ef0120');
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
INSERT INTO `countries` VALUES ('0b6c6bfb-a525-42b0-8432-1dab99cfbe64','2024-04-27 10:43:48','2024-04-27 10:43:48','Djibouti'),('0e511581-261c-4895-ae5a-48c42a35a29c','2024-04-27 10:43:48','2024-04-27 10:43:48','Sudan'),('24bfb7c3-ec82-4b1c-aff2-83e42ca71e39','2024-04-27 10:43:46','2024-04-27 10:43:46','Bahrain'),('2e5dc0be-2039-4e32-a83d-5e9a231cbe84','2024-04-27 10:43:46','2024-04-27 10:43:46','Oman'),('32061f24-e802-4624-b674-f8d7fc6eea3f','2024-04-27 10:43:48','2024-04-27 10:43:48','Somalia'),('4006ace5-2d73-4675-b90b-ec8a434d0bf8','2024-04-27 10:43:47','2024-04-27 10:43:47','Syria'),('43600811-617d-49fd-b086-c1f1396e5efd','2024-04-27 10:43:47','2024-04-27 10:43:47','Lebanon'),('4bc9e47d-f31f-4e7d-8a68-ae73b3ef0120','2024-04-27 10:43:47','2024-04-27 10:43:47','Libya'),('53bcac58-8bd3-40c4-ab41-5b660ab1b4de','2024-04-27 10:43:47','2024-04-27 10:43:47','Tunisia'),('7890aaa5-28a6-4e97-8756-bff7878fc412','2024-04-27 10:43:47','2024-04-27 10:43:47','Iraq'),('8289f8f9-9fef-4ac9-b70a-0baebbf06e08','2024-04-27 10:43:48','2024-04-27 10:43:48','Morocco'),('a35a5986-b8d3-4c5e-89c3-046096b1abc3','2024-04-27 10:43:46','2024-04-27 10:43:46','Kuwait'),('aa23157e-f994-4d9c-aba2-3a00356f0833','2024-04-27 10:43:46','2024-04-27 10:43:46','Qatar'),('c0c13d1a-30f9-4354-8d00-9066ffd96ad3','2024-04-27 10:43:48','2024-04-27 10:43:48','Algeria'),('c5d42a8e-97bb-4ce9-8596-8f9cd8bf47a6','2024-04-27 10:43:47','2024-04-27 10:43:47','Egypt'),('c99af67c-d388-4b61-896f-06360eba4b24','2024-04-27 10:43:47','2024-04-27 10:43:47','Palestine'),('d1056cb2-cb7b-443b-a1d5-66504a63d1aa','2024-04-27 10:43:47','2024-04-27 10:43:47','Yemen'),('e5708e53-43f0-43b4-b7e2-35219cf00b0f','2024-04-27 10:43:46','2024-04-27 10:43:46','Saudi Arabia'),('e8c932a5-1be7-4d0c-b10e-515347bfde29','2024-04-27 10:43:46','2024-04-27 10:43:46','United Arab Emirates'),('fd2af3ba-f3e6-4a12-82e7-f90f0da9bf04','2024-04-27 10:43:47','2024-04-27 10:43:47','Jordan');
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
INSERT INTO `crafts` VALUES ('0793dbf7-332f-47ee-9eff-a1c3a4310bb0','2024-04-27 10:43:48','2024-04-27 10:43:48','Woodwork'),('0d383144-f8de-4c06-88ae-1c20abd40249','2024-04-27 10:43:48','2024-04-27 10:43:48','Leatherworking'),('2be1c05a-ff12-463a-863c-4905d3bfde18','2024-04-27 10:43:48','2024-04-27 10:43:48','Jewelry'),('4b8d0592-0a85-4935-93fb-a7d530ff271b','2024-04-27 10:43:49','2024-04-27 10:43:49','Rugs'),('617a80de-7ae8-4490-bf7f-21278ae8e6e9','2024-04-27 10:43:49','2024-04-27 10:43:49','Weaving'),('88a9f332-99a3-44a1-8f19-307bec10e2f3','2024-04-27 10:43:49','2024-04-27 10:43:49','Calligraphy'),('89ca030e-e453-4ec5-8484-d2d1f6ec3774','2024-04-27 10:43:48','2024-04-27 10:43:48','Glass'),('8a639fc2-ca59-4bb9-ab20-a88bc043e954','2024-04-27 10:43:49','2024-04-27 10:43:49','Tiles'),('91814c9f-74dd-4b66-98d5-5ff49bd98bb0','2024-04-27 10:43:49','2024-04-27 10:43:49','Furniture'),('93988d77-2a2d-4de0-944d-b66ad89b20b9','2024-04-27 10:43:48','2024-04-27 10:43:48','Metalwork'),('9ad32113-e40e-41ec-be66-0efa279a06a5','2024-04-27 10:43:49','2024-04-27 10:43:49','Sculpting'),('a1173cef-0fe6-4b40-abbc-d9be8bfb203e','2024-04-27 10:43:48','2024-04-27 10:43:48','Basketry'),('b9de1bfc-50f4-42bc-b63d-b48b2e317d4b','2024-04-27 10:43:49','2024-04-27 10:43:49','Engraving'),('c96984fa-c5d1-4ca5-a5cb-5a70e365b15b','2024-04-27 10:43:49','2024-04-27 10:43:49','Painting'),('e34ba60c-260d-4d69-8514-d97f26711495','2024-04-27 10:43:48','2024-04-27 10:43:48','Ceramics'),('feab4afc-49de-48c5-b5c9-ee5e4c679a46','2024-04-27 10:43:48','2024-04-27 10:43:48','Weaving'),('fff4f321-bb34-4bfc-8dea-889fc7e84881','2024-04-27 10:43:49','2024-04-27 10:43:49','Pottery');
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
  `password` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
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
INSERT INTO `products` VALUES ('1f3b9484-5762-4718-bb08-1f0b16b6c41c','2024-04-27 10:43:50','2024-04-27 10:43:50','Hand-carved Wooden Serving Tray','Elegant hand-carved wooden serving tray with intricate floral design',40,'8439d4ff-8c7a-4e2b-9a3e-0190e77365d8','0793dbf7-332f-47ee-9eff-a1c3a4310bb0'),('2267ea9b-8416-4c2d-a4d2-03abe23f89a3','2024-04-27 10:43:50','2024-04-27 10:43:50','Handcrafted Wooden Serving Platter','Beautiful handcrafted wooden serving platter with natural wood grain',50,'82f1f16e-ceb7-4c1c-ba95-67df34d4b5c4','0793dbf7-332f-47ee-9eff-a1c3a4310bb0'),('244df375-cd07-4a9f-9972-31a69822d68f','2024-04-27 10:43:49','2024-04-27 10:43:49','Stained Glass Window Panel','Colorful stained glass window panel with floral design',180,'113c5834-7594-42ab-904e-7ac884183f42','89ca030e-e453-4ec5-8484-d2d1f6ec3774'),('31fadc1a-9ee7-4527-9b39-8d9448f1e430','2024-04-27 10:43:50','2024-04-27 10:43:50','Persian Rug','Beautiful Persian that adds warmth in your house charm',250,'b9ccf59f-2d9e-44aa-a5a7-87db296d0416','4b8d0592-0a85-4935-93fb-a7d530ff271b'),('5280c70c-08ee-4fe7-8bc2-982ca23879ba','2024-04-27 10:43:49','2024-04-27 10:43:49','Tea Cups','A beautiful set of handmade tea cups',40,'081eb014-827e-40aa-9669-a02adffefe3f','fff4f321-bb34-4bfc-8dea-889fc7e84881'),('5a88a612-784e-4712-b9ad-e051e0b54b13','2024-04-27 10:43:49','2024-04-27 10:43:49','Handwoven Wool Rug','Traditional handwoven wool rug with geometric patterns',200,'f41544ff-da52-4a04-81c6-ef83766d9c68','feab4afc-49de-48c5-b5c9-ee5e4c679a46'),('660e8903-b0c1-4847-ba38-9de459aa8a19','2024-04-27 10:43:50','2024-04-27 10:43:50','Handcrafted Leather Journal','High-quality handcrafted leather journal with embossed cover',120,'b9ccf59f-2d9e-44aa-a5a7-87db296d0416','91814c9f-74dd-4b66-98d5-5ff49bd98bb0'),('6884ccdf-0355-4e34-886c-186c12423a03','2024-04-27 10:43:50','2024-04-27 10:43:50','Handwoven Cotton Hammock','Comfortable handwoven cotton hammock with fringe detailing',35,'71173e66-1d3e-435f-a23c-116b66ff3e24','617a80de-7ae8-4490-bf7f-21278ae8e6e9'),('6baba73c-33e7-49c1-abe1-507a94608211','2024-04-27 10:43:49','2024-04-27 10:43:49','Hand-painted Ceramic Tile','Handcrafted ceramic tile painted with intricate floral motifs',15,'f41544ff-da52-4a04-81c6-ef83766d9c68','8a639fc2-ca59-4bb9-ab20-a88bc043e954'),('8a34a0eb-40ad-41b8-bacd-843d9a635807','2024-04-27 10:43:50','2024-04-27 10:43:50','Custom Arabic Calligraphy Canvas','Personalized Arabic calligraphy canvas with name or phrase of choice',80,'f2ace9e1-1fbb-458a-966c-4ca3abc5a61c','88a9f332-99a3-44a1-8f19-307bec10e2f3'),('9295be1c-923e-42cb-baf1-c9847a114f39','2024-04-27 10:43:49','2024-04-27 10:43:49','Sterling Silver Pendant Necklace','Elegant sterling silver pendant necklace with natural gemstone',120,'0aa58de0-883f-4718-928f-0d6101084fc6','2be1c05a-ff12-463a-863c-4905d3bfde18'),('a89aefe6-4a12-4bad-b94a-4ab0caa937da','2024-04-27 10:43:50','2024-04-27 10:43:50','Hand-engraved Metal Flask','Custom hand-engraved stainless steel flask with intricate design',50,'71173e66-1d3e-435f-a23c-116b66ff3e24','b9de1bfc-50f4-42bc-b63d-b48b2e317d4b'),('ad2c2853-9ffa-43fd-b759-0f19914679b9','2024-04-27 10:43:50','2024-04-27 10:43:50','Islamic Calligraphy Art','Elegant Islamic calligraphy artwork with gold leaf accents',150,'ccaf8828-b306-4225-a6d7-15835a54ac83','88a9f332-99a3-44a1-8f19-307bec10e2f3'),('ae387b54-47c9-4b5b-ab8c-49bc363c95e4','2024-04-27 10:43:50','2024-04-27 10:43:50','Hand-carved Wooden Jewelry Box','Exquisite hand-carved wooden jewelry box with floral motifs',60,'f2ace9e1-1fbb-458a-966c-4ca3abc5a61c','0793dbf7-332f-47ee-9eff-a1c3a4310bb0'),('b6a3d4fb-04cd-40e2-9996-9bbd4e72ad09','2024-04-27 10:43:50','2024-04-27 10:43:50','Handwoven Seagrass Basket','Handwoven seagrass basket with lid, perfect for storage',50,'113c5834-7594-42ab-904e-7ac884183f42','a1173cef-0fe6-4b40-abbc-d9be8bfb203e'),('b949d8af-f253-4189-8a90-69991f119dfa','2024-04-27 10:43:50','2024-04-27 10:43:50','Hand-carved Stone Sculpture','Intricately hand-carved stone sculpture of a lion',300,'ccaf8828-b306-4225-a6d7-15835a54ac83','9ad32113-e40e-41ec-be66-0efa279a06a5'),('bbb09c7d-2d26-46e7-93c7-9689f310882a','2024-04-27 10:43:49','2024-04-27 10:43:49','Handcrafted Ceramic Vase','Elegant handcrafted ceramic vase with intricate blue glaze',80,'081eb014-827e-40aa-9669-a02adffefe3f','e34ba60c-260d-4d69-8514-d97f26711495'),('c2873372-6432-4a6b-b1aa-a0511939db36','2024-04-27 10:43:49','2024-04-27 10:43:49','Hand-forged Iron Candle Holder','Hand-forged iron candle holder with intricate scrollwork',80,'0aa58de0-883f-4718-928f-0d6101084fc6','93988d77-2a2d-4de0-944d-b66ad89b20b9'),('c8eae312-38c7-469a-9fa0-ea650564f151','2024-04-27 10:43:49','2024-04-27 10:43:49','Hand-carved Wooden Bowl','Beautifully hand-carved wooden bowl made from sustainable teak wood',50,'b0e14d91-98a0-42dd-937a-fc439a539ddd','0793dbf7-332f-47ee-9eff-a1c3a4310bb0'),('e0eff80f-8942-493b-a2e2-472a24e5f6d6','2024-04-27 10:43:50','2024-04-27 10:43:50','Hand-tooled Leather Keychain','Stylish hand-tooled leather keychain with durable metal hardware',20,'82f1f16e-ceb7-4c1c-ba95-67df34d4b5c4','0d383144-f8de-4c06-88ae-1c20abd40249'),('edee7e66-6cd3-47da-88a9-16832473e23c','2024-04-27 10:43:49','2024-04-27 10:43:49','Hand-tooled Leather Belt','Stylish hand-tooled leather belt with floral patterns',60,'081eb014-827e-40aa-9669-a02adffefe3f','0d383144-f8de-4c06-88ae-1c20abd40249');
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

-- Dump completed on 2024-04-27 10:46:11
