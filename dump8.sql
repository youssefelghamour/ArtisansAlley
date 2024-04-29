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
INSERT INTO `artisan_craft` VALUES ('74878a16-2765-4f38-a1dc-451dfae93c2c','09204bf9-f5d6-4ec3-990e-d90b6c4241e9'),('1b57959d-e95a-4dbb-b91c-9ebeb346ed90','1eed785b-7481-44bb-b058-062898c208ff'),('b7360e9b-ff9c-435b-9433-9df1a72f095f','1eed785b-7481-44bb-b058-062898c208ff'),('d1227352-e6c8-47c8-951c-681cfdf7d043','1eed785b-7481-44bb-b058-062898c208ff'),('d7067905-6652-4515-96bd-6d30a125c869','1eed785b-7481-44bb-b058-062898c208ff'),('6a3c5ea1-56dd-4699-935e-cce1dc3e504d','2c874d36-35a2-4bda-8173-4f47a696ca34'),('74878a16-2765-4f38-a1dc-451dfae93c2c','2c874d36-35a2-4bda-8173-4f47a696ca34'),('74878a16-2765-4f38-a1dc-451dfae93c2c','45245b52-820d-4576-a218-3b9424459b5d'),('d7067905-6652-4515-96bd-6d30a125c869','45245b52-820d-4576-a218-3b9424459b5d'),('83e053b3-b096-4bae-93f6-4c4204b0175d','4d9f9c91-2f44-43f6-a038-3911be78504b'),('b7360e9b-ff9c-435b-9433-9df1a72f095f','4d9f9c91-2f44-43f6-a038-3911be78504b'),('f73917bd-43ed-42b9-b120-a5471f6cf629','5389bca3-73e8-4e2d-a6b4-301bea17d7ad'),('c41372bb-49ca-41dc-9eac-ca53a7fdb738','5caa2b78-5e6c-4694-a90e-cc13f457341a'),('1b57959d-e95a-4dbb-b91c-9ebeb346ed90','64282592-5e1f-4a7a-9eba-ddac4a7fc47c'),('6a3c5ea1-56dd-4699-935e-cce1dc3e504d','64282592-5e1f-4a7a-9eba-ddac4a7fc47c'),('2f28751e-6c9c-4059-91a9-0d20b690cc74','8a89149a-d002-443b-8bb8-8e9991445384'),('83e053b3-b096-4bae-93f6-4c4204b0175d','991cfd99-1923-4bcb-861a-4e7f57741c46'),('84fc8388-82f5-49b4-b418-379476a1ed0e','9dc9c537-f0ae-4237-9163-21c13d0c5599'),('1b57959d-e95a-4dbb-b91c-9ebeb346ed90','d9dc1adc-53ce-45bc-8b5f-64a9ea165608'),('6a3c5ea1-56dd-4699-935e-cce1dc3e504d','d9dc1adc-53ce-45bc-8b5f-64a9ea165608'),('83e053b3-b096-4bae-93f6-4c4204b0175d','e163fe54-b105-4be3-b179-ffae49d03d92'),('2f28751e-6c9c-4059-91a9-0d20b690cc74','e38f79a5-d656-4631-b174-a4d71215671d'),('84fc8388-82f5-49b4-b418-379476a1ed0e','ebd2dd22-953c-4364-8a0e-c6869ab7b792'),('b7360e9b-ff9c-435b-9433-9df1a72f095f','f5ffaa1b-7ea4-4201-ad51-ef159ff8d155'),('f73917bd-43ed-42b9-b120-a5471f6cf629','f5ffaa1b-7ea4-4201-ad51-ef159ff8d155'),('84fc8388-82f5-49b4-b418-379476a1ed0e','fa479cbe-6408-4bf6-b075-aca656788488'),('c41372bb-49ca-41dc-9eac-ca53a7fdb738','fa479cbe-6408-4bf6-b075-aca656788488');
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
INSERT INTO `artisans` VALUES ('1b57959d-e95a-4dbb-b91c-9ebeb346ed90','2024-04-29 09:52:16','2024-04-29 09:52:16','Ahmed Taha','Artist full of passion and skill','ahmedt@example.com','$2b$12$D375wtCUpTYkoRhVF6bA7eZEVyyg/uVW9mI9A7h/qhGIjOMHyXhoq','../static/images/avatar.png','1a9429c1-5a01-45d5-8499-35f5b6755d66'),('2f28751e-6c9c-4059-91a9-0d20b690cc74','2024-04-29 09:51:57','2024-04-29 09:51:57','Layla Abbas','Master artisan known for their dedication to craftsmanship','layla@example.com','$2b$12$LHWy6zaNljFWbDfU/7NbR.psIyjKFwxLiQLHTaVsY8JDu6BQRUhfO','../static/images/avatar.png','29baa903-24f0-4c4e-b3c8-acf02780c26e'),('6a3c5ea1-56dd-4699-935e-cce1dc3e504d','2024-04-29 09:51:54','2024-04-29 09:51:54','Mohammed Khalil','Passionate craftsperson committed to the art of creation','mohammed@example.com','$2b$12$6L7lx2n0OnQNYrbk4z1C0OdVQlaZnQLzu3hBsGX6Y8xL9noRv9iX.','../static/images/avatar.png','3da3a2ff-f758-424d-8259-aa450203e3ec'),('74878a16-2765-4f38-a1dc-451dfae93c2c','2024-04-29 09:52:05','2024-04-29 09:52:05','Youssef Nasser','Craftsman committed to craftsmanship and creativity','youssef@example.com','$2b$12$GDvotNZyW.R/qZcEqLZKbu8csEEopttrnlD2UpQchULmh1us4Efv2','../static/images/avatar.png','ee588d0c-37d0-453e-960c-c7acd8308298'),('83e053b3-b096-4bae-93f6-4c4204b0175d','2024-04-29 09:52:02','2024-04-29 09:52:02','Aisha Kareem','Skilled maker dedicated to producing high-quality works of art','aisha@example.com','$2b$12$cF989OVhp9O.vFJvOY7YEOaPmD5sboRFmmOyF1yyt5rz5AxK1v9gi','../static/images/avatar.png','29b72b64-c40d-44ca-8ecc-8d1633155c47'),('84fc8388-82f5-49b4-b418-379476a1ed0e','2024-04-29 09:52:00','2024-04-29 09:52:00','Hassan Ibrahim','Artisan with a keen eye for detail and a love for creativity','hassan@example.com','$2b$12$UH7ongeHG1PpCFhcAaJLQO/eZcVzJ9wypS25n49dvOlyTZXdMTCT.','../static/images/avatar.png','ecaf9fcb-bb12-4642-85ab-465ca59562ad'),('b7360e9b-ff9c-435b-9433-9df1a72f095f','2024-04-29 09:52:13','2024-04-29 09:52:13','Sara Mansour','Versatile artisan dedicated to excellence in their work','sara@example.com','$2b$12$riCG0VmMfqU9FbAbwGTnreoUgimvHKDpTaeYNRqB4UMpc4QkzCO96','../static/images/avatar.png','de7afd05-0f69-44ea-a3eb-91195e3f19a7'),('c41372bb-49ca-41dc-9eac-ca53a7fdb738','2024-04-29 09:52:08','2024-04-29 09:52:08','Nadia khalfaoui','Skilled artisan dedicated to producing quality handmade goods','nadia@example.com','$2b$12$ZX/K4ouZcpB9whHJD4dFr.tt0S4RiO84TqrILW5TJ4onVCdS4MvSm','../static/images/avatar.png','20ddc4d4-130f-415f-b4f3-3fd747bc61f2'),('d1227352-e6c8-47c8-951c-681cfdf7d043','2024-04-29 09:52:10','2024-04-29 09:52:10','Khaled Farouk','Passionate creator known for their dedication to their craft','khaled@example.com','$2b$12$x09aMm8va686foXjBJuSm.SYAuUfeHGD/c22McHHdLvABV/nxXx0y','../static/images/avatar.png','ffb42680-5111-47cd-97e2-b295b86115bb'),('d7067905-6652-4515-96bd-6d30a125c869','2024-04-29 09:51:51','2024-04-29 09:51:51','Fatima Ahmed','Experienced artisan dedicated to creating unique works','fatima@example.com','$2b$12$XkHJyTPdMsHm0C8zYWaa/.xFS4YRsUcheMEBRmZrWk1UUsvdORLPK','../static/images/avatar.png','0996202e-9189-4e4c-94d5-03f7ce035360'),('f73917bd-43ed-42b9-b120-a5471f6cf629','2024-04-29 09:51:48','2024-04-29 09:51:48','Ali Hassan','Skilled artisan with a passion for traditional craftsmanship','ali@example.com','$2b$12$8559hJFdmZOE1YwGRv02ker7vHL3vPlhUiqIdGN2FCcNPgATAgG6e','../static/images/avatar.png','24469ad1-a1f7-447a-b2b4-6c57536e2316');
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
INSERT INTO `cities` VALUES ('01328b2b-048f-4697-b903-2751be670167','2024-04-29 09:51:43','2024-04-29 09:51:43','Djibouti City','797ff922-4c60-4ab4-af4a-7e995b953346'),('021ce47e-63f6-4689-b1fc-4137b99f4f26','2024-04-29 09:51:42','2024-04-29 09:51:42','Tripoli','d9e0a6fd-3f0d-4646-b9d2-078bac7a18c8'),('048a9233-cd13-47d0-a1fd-c30a5a60d62e','2024-04-29 09:51:42','2024-04-29 09:51:42','Sidon','d9e0a6fd-3f0d-4646-b9d2-078bac7a18c8'),('0996202e-9189-4e4c-94d5-03f7ce035360','2024-04-29 09:51:42','2024-04-29 09:51:42','Al Wakrah','fcf3adad-363a-454d-bd59-8da766bfb39a'),('11f4dbf8-f607-4f3e-973b-3addb798b80c','2024-04-29 09:51:43','2024-04-29 09:51:43','Constantine','fbeed95c-d2dd-4a06-88d1-14bf1c556f32'),('12bd2b0d-923e-43a7-a032-0db360e38b0a','2024-04-29 09:51:42','2024-04-29 09:51:42','Al Hudaydah','3652109c-6d50-4d4a-b5b4-f9373ec523a3'),('15a2f7e3-80d9-40f0-9cd2-0f384c28a82a','2024-04-29 09:51:43','2024-04-29 09:51:43','Annaba','fbeed95c-d2dd-4a06-88d1-14bf1c556f32'),('19dcb5db-f3b1-4aac-b845-a99c93d0a80a','2024-04-29 09:51:43','2024-04-29 09:51:43','Kassala','c340c042-6012-4353-b246-84edcf014885'),('1a9429c1-5a01-45d5-8499-35f5b6755d66','2024-04-29 09:51:43','2024-04-29 09:51:43','Sirte','c23da3b6-8947-4dee-bf10-7bfa246271a2'),('1b42d658-97de-4b99-abbe-b91d6d33a548','2024-04-29 09:51:43','2024-04-29 09:51:43','Jerusalem','f69542dc-8c4f-4a92-8889-d8cfeeae3d44'),('1c55dee3-4e78-46da-964a-e560d80a5d9a','2024-04-29 09:51:43','2024-04-29 09:51:43','Fez','250e3ac5-fee0-4f2b-a4ec-5136d7d2c031'),('1cae0e71-9d78-487f-9588-38d2aa19a939','2024-04-29 09:51:43','2024-04-29 09:51:43','Mogadishu','a8f133cd-dbde-458e-bd0d-6395e8bfc0be'),('2017949f-4176-4458-8974-1be2dd9cf208','2024-04-29 09:51:43','2024-04-29 09:51:43','Marrakesh','250e3ac5-fee0-4f2b-a4ec-5136d7d2c031'),('20ddc4d4-130f-415f-b4f3-3fd747bc61f2','2024-04-29 09:51:42','2024-04-29 09:51:42','Aqaba','3406ea02-f61e-4fca-a5d1-684774c3004e'),('22e9ff7e-4860-413e-9be3-f78568da4d53','2024-04-29 09:51:42','2024-04-29 09:51:42','Salmiya','de17e8aa-9288-46b4-9597-15d98e5c0d95'),('24469ad1-a1f7-447a-b2b4-6c57536e2316','2024-04-29 09:51:43','2024-04-29 09:51:43','Gabès','db342e12-572d-4c3a-aff7-7f31d88015fe'),('29b72b64-c40d-44ca-8ecc-8d1633155c47','2024-04-29 09:51:42','2024-04-29 09:51:42','Doha','fcf3adad-363a-454d-bd59-8da766bfb39a'),('29baa903-24f0-4c4e-b3c8-acf02780c26e','2024-04-29 09:51:42','2024-04-29 09:51:42','Muscat','0548b3e7-e972-40bf-b73e-670b299d1bb5'),('2bfab8fe-ce34-4c15-ad46-97683b0bff65','2024-04-29 09:51:43','2024-04-29 09:51:43','Ali Sabieh','797ff922-4c60-4ab4-af4a-7e995b953346'),('2c62e59e-4b58-4cf0-9bdc-8c11dbc24808','2024-04-29 09:51:42','2024-04-29 09:51:42','Taiz','3652109c-6d50-4d4a-b5b4-f9373ec523a3'),('38a8096e-3f23-4a64-af41-4265136f72cc','2024-04-29 09:51:43','2024-04-29 09:51:43','Gaza','f69542dc-8c4f-4a92-8889-d8cfeeae3d44'),('38c9f359-e9c4-48ec-a9b5-c8583eccb638','2024-04-29 09:51:43','2024-04-29 09:51:43','Sousse','db342e12-572d-4c3a-aff7-7f31d88015fe'),('3aec9a63-f606-4263-b03b-2c781e9c7b94','2024-04-29 09:51:43','2024-04-29 09:51:43','Tadjoura','797ff922-4c60-4ab4-af4a-7e995b953346'),('3da3a2ff-f758-424d-8259-aa450203e3ec','2024-04-29 09:51:42','2024-04-29 09:51:42','Jeddah','239c587d-3244-419c-9f4d-484b7b51800d'),('4024418c-6e84-4e00-b6da-d859b4c0fe5a','2024-04-29 09:51:43','2024-04-29 09:51:43','Obock','797ff922-4c60-4ab4-af4a-7e995b953346'),('4839914d-0f31-45cc-85f6-6e16d83ea761','2024-04-29 09:51:43','2024-04-29 09:51:43','Tunis','db342e12-572d-4c3a-aff7-7f31d88015fe'),('4f037b5b-2644-4917-bf8e-c4a9f7b896e4','2024-04-29 09:51:42','2024-04-29 09:51:42','Dubai','e47e2a75-341b-43f5-a982-5e660ca0c630'),('5792398d-925f-4de9-95a4-ca88a582c24f','2024-04-29 09:51:43','2024-04-29 09:51:43','Hebron','f69542dc-8c4f-4a92-8889-d8cfeeae3d44'),('57fccf59-7048-4cba-85c3-013dbfb0d0f2','2024-04-29 09:51:43','2024-04-29 09:51:43','Misrata','c23da3b6-8947-4dee-bf10-7bfa246271a2'),('5a6ed558-3469-4a6f-9f81-b991a9aa93cb','2024-04-29 09:51:43','2024-04-29 09:51:43','Luxor','9331c296-73bb-455a-a9f8-dcbd620089f1'),('5ac4bf42-158a-4c75-ad89-6f4cb32da2f8','2024-04-29 09:51:42','2024-04-29 09:51:42','Riffa','2a4f3365-1ba7-4f00-9b1c-c18c5ab27ccc'),('5e807ee5-7461-4389-8016-df17b3adfc32','2024-04-29 09:51:42','2024-04-29 09:51:42','Riyadh','239c587d-3244-419c-9f4d-484b7b51800d'),('62dc4cc0-7ddd-4ff1-8877-925015033bd0','2024-04-29 09:51:42','2024-04-29 09:51:42','Aden','3652109c-6d50-4d4a-b5b4-f9373ec523a3'),('6a475f69-1b99-48c0-84d2-5ede9f737cf9','2024-04-29 09:51:43','2024-04-29 09:51:43','Rabat','250e3ac5-fee0-4f2b-a4ec-5136d7d2c031'),('6b54ec51-9a16-46fe-a71e-32d905ada49c','2024-04-29 09:51:43','2024-04-29 09:51:43','Giza','9331c296-73bb-455a-a9f8-dcbd620089f1'),('6cf0d206-5de8-4388-b6cd-c4ea1ff80b35','2024-04-29 09:51:42','2024-04-29 09:51:42','Hawalli','de17e8aa-9288-46b4-9597-15d98e5c0d95'),('6d090a94-db0c-466b-af23-cb8fe0da8f57','2024-04-29 09:51:42','2024-04-29 09:51:42','Sharjah','e47e2a75-341b-43f5-a982-5e660ca0c630'),('76f82358-6104-4cab-ba5a-fbcd9e09ff39','2024-04-29 09:51:43','2024-04-29 09:51:43','Omdurman','c340c042-6012-4353-b246-84edcf014885'),('7704138a-b8f6-4b2a-95e8-eeca46d3dcac','2024-04-29 09:51:43','2024-04-29 09:51:43','Bosaso','a8f133cd-dbde-458e-bd0d-6395e8bfc0be'),('77fdcd56-1c9c-4f01-af87-c39b8307e48c','2024-04-29 09:51:42','2024-04-29 09:51:42','Nizwa','0548b3e7-e972-40bf-b73e-670b299d1bb5'),('784e2686-c865-4ed2-a5dd-95319c817167','2024-04-29 09:51:43','2024-04-29 09:51:43','Kismayo','a8f133cd-dbde-458e-bd0d-6395e8bfc0be'),('78d96060-44f0-4421-98a8-5e11601be793','2024-04-29 09:51:42','2024-04-29 09:51:42','Irbid','3406ea02-f61e-4fca-a5d1-684774c3004e'),('83163f9f-ff55-4bf4-8e2b-88b8ce09f369','2024-04-29 09:51:42','2024-04-29 09:51:42','Sana\'a','3652109c-6d50-4d4a-b5b4-f9373ec523a3'),('8393e057-46f3-4662-af12-4fd7a541bdbc','2024-04-29 09:51:42','2024-04-29 09:51:42','Jabriya','de17e8aa-9288-46b4-9597-15d98e5c0d95'),('8399fe26-c183-4077-8618-50ffa33d94a1','2024-04-29 09:51:42','2024-04-29 09:51:42','Mosul','550583c9-d9f1-4c03-9495-1503f24c93b1'),('8795d17e-28be-4fd6-98c3-3420dfdd3bc8','2024-04-29 09:51:42','2024-04-29 09:51:42','Fujairah','e47e2a75-341b-43f5-a982-5e660ca0c630'),('87c2863a-75af-43ab-9a5a-2fd28dce76af','2024-04-29 09:51:43','2024-04-29 09:51:43','Alexandria','9331c296-73bb-455a-a9f8-dcbd620089f1'),('88773719-00b6-4c24-8054-716a01e44a29','2024-04-29 09:51:43','2024-04-29 09:51:43','Hama','815023c6-d0a4-4d3e-8425-cb45e92b97c5'),('8f6bcad6-24d3-49d3-9401-19f1fe03b871','2024-04-29 09:51:42','2024-04-29 09:51:42','Al Khor','fcf3adad-363a-454d-bd59-8da766bfb39a'),('931aa877-508f-470f-813e-b113b90c08a8','2024-04-29 09:51:42','2024-04-29 09:51:42','Baghdad','550583c9-d9f1-4c03-9495-1503f24c93b1'),('989401d1-0521-43e8-a59d-8f50eac50c0a','2024-04-29 09:51:43','2024-04-29 09:51:43','Cairo','9331c296-73bb-455a-a9f8-dcbd620089f1'),('9b55a9a0-9a3f-427a-8b0a-038ffef219b0','2024-04-29 09:51:42','2024-04-29 09:51:42','Medina','239c587d-3244-419c-9f4d-484b7b51800d'),('a108ca4f-905d-4d85-bec9-be1972aee89c','2024-04-29 09:51:42','2024-04-29 09:51:42','Umm Salal','fcf3adad-363a-454d-bd59-8da766bfb39a'),('a3ee4f31-1815-4413-bb7d-5262a0fa7cbd','2024-04-29 09:51:43','2024-04-29 09:51:43','Port Sudan','c340c042-6012-4353-b246-84edcf014885'),('a8c2f443-ccf2-4191-9de3-f256eb67ebe9','2024-04-29 09:51:42','2024-04-29 09:51:42','Dammam','239c587d-3244-419c-9f4d-484b7b51800d'),('acd27db1-6dd3-4e98-a0d6-446673c0863d','2024-04-29 09:51:42','2024-04-29 09:51:42','Abu Dhabi','e47e2a75-341b-43f5-a982-5e660ca0c630'),('ade47f4b-85aa-40d1-83e8-a3f45273b23f','2024-04-29 09:51:42','2024-04-29 09:51:42','Salalah','0548b3e7-e972-40bf-b73e-670b299d1bb5'),('ae5a88bc-7d5a-4d35-b7ce-92b83bfa26e2','2024-04-29 09:51:42','2024-04-29 09:51:42','Beirut','d9e0a6fd-3f0d-4646-b9d2-078bac7a18c8'),('b3cf7c53-6318-4232-803a-18dc5c553606','2024-04-29 09:51:43','2024-04-29 09:51:43','Casablanca','250e3ac5-fee0-4f2b-a4ec-5136d7d2c031'),('bc69dd03-64f4-457c-960c-619feab971f1','2024-04-29 09:51:42','2024-04-29 09:51:42','Homs','815023c6-d0a4-4d3e-8425-cb45e92b97c5'),('c2012cb1-e2b2-4479-9fc3-b2c4cf07c072','2024-04-29 09:51:42','2024-04-29 09:51:42','Mecca','239c587d-3244-419c-9f4d-484b7b51800d'),('c20c610e-c218-4802-89eb-f22dda35502b','2024-04-29 09:51:43','2024-04-29 09:51:43','Benghazi','c23da3b6-8947-4dee-bf10-7bfa246271a2'),('c55f1001-86a6-4d8c-b942-21b3214ce31b','2024-04-29 09:51:43','2024-04-29 09:51:43','Oran','fbeed95c-d2dd-4a06-88d1-14bf1c556f32'),('c8639c70-0616-4e98-9057-8f036415b795','2024-04-29 09:51:42','2024-04-29 09:51:42','Damascus','815023c6-d0a4-4d3e-8425-cb45e92b97c5'),('c95b370c-3fbc-4e2f-9f0d-f57cfaaf2b2a','2024-04-29 09:51:43','2024-04-29 09:51:43','Hargeisa','a8f133cd-dbde-458e-bd0d-6395e8bfc0be'),('d06ca94d-cdc9-4267-9558-0988abcf5535','2024-04-29 09:51:42','2024-04-29 09:51:42','Amman','3406ea02-f61e-4fca-a5d1-684774c3004e'),('de7afd05-0f69-44ea-a3eb-91195e3f19a7','2024-04-29 09:51:43','2024-04-29 09:51:43','Tripoli','c23da3b6-8947-4dee-bf10-7bfa246271a2'),('e47684dd-c1ca-474b-a5a0-69100ae67645','2024-04-29 09:51:42','2024-04-29 09:51:42','Muharraq','2a4f3365-1ba7-4f00-9b1c-c18c5ab27ccc'),('e8512dc7-0dff-4bea-9765-34b7ff66e118','2024-04-29 09:51:42','2024-04-29 09:51:42','Basra','550583c9-d9f1-4c03-9495-1503f24c93b1'),('ecaf9fcb-bb12-4642-85ab-465ca59562ad','2024-04-29 09:51:43','2024-04-29 09:51:43','Ramallah','f69542dc-8c4f-4a92-8889-d8cfeeae3d44'),('ee588d0c-37d0-453e-960c-c7acd8308298','2024-04-29 09:51:42','2024-04-29 09:51:42','Hamad Town','2a4f3365-1ba7-4f00-9b1c-c18c5ab27ccc'),('f2085ec4-9e2c-498a-a31a-f9378aeb4458','2024-04-29 09:51:43','2024-04-29 09:51:43','Sfax','db342e12-572d-4c3a-aff7-7f31d88015fe'),('f496c18d-cd77-4363-95ef-afde6478f411','2024-04-29 09:51:43','2024-04-29 09:51:43','Algiers','fbeed95c-d2dd-4a06-88d1-14bf1c556f32'),('f8de760f-7fba-4d6d-b514-cc78fe239a37','2024-04-29 09:51:42','2024-04-29 09:51:42','Manama','2a4f3365-1ba7-4f00-9b1c-c18c5ab27ccc'),('f8e099d3-25d8-4971-bbad-177e2bd917ac','2024-04-29 09:51:42','2024-04-29 09:51:42','Kuwait City','de17e8aa-9288-46b4-9597-15d98e5c0d95'),('f8ed98c9-905b-425c-ba6c-135ffba6e3e0','2024-04-29 09:51:42','2024-04-29 09:51:42','Sohar','0548b3e7-e972-40bf-b73e-670b299d1bb5'),('f96347f4-54b0-4c15-897e-389976ef1185','2024-04-29 09:51:42','2024-04-29 09:51:42','Ajman','e47e2a75-341b-43f5-a982-5e660ca0c630'),('f9681a08-d1b5-4de8-88db-c58b9a31c79c','2024-04-29 09:51:43','2024-04-29 09:51:43','Khartoum','c340c042-6012-4353-b246-84edcf014885'),('fbdb793d-8902-4e7f-af62-12722e218a62','2024-04-29 09:51:42','2024-04-29 09:51:42','Zarqa','3406ea02-f61e-4fca-a5d1-684774c3004e'),('fd3c7a9a-0ba3-4d43-92d7-ef231d2ac5c3','2024-04-29 09:51:42','2024-04-29 09:51:42','Erbil','550583c9-d9f1-4c03-9495-1503f24c93b1'),('fe4d072b-2a7d-4f7a-80db-4c685017b914','2024-04-29 09:51:42','2024-04-29 09:51:42','Tyre','d9e0a6fd-3f0d-4646-b9d2-078bac7a18c8'),('ffb42680-5111-47cd-97e2-b295b86115bb','2024-04-29 09:51:42','2024-04-29 09:51:42','Aleppo','815023c6-d0a4-4d3e-8425-cb45e92b97c5');
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
INSERT INTO `countries` VALUES ('0548b3e7-e972-40bf-b73e-670b299d1bb5','2024-04-29 09:51:42','2024-04-29 09:51:42','Oman'),('239c587d-3244-419c-9f4d-484b7b51800d','2024-04-29 09:51:41','2024-04-29 09:51:41','Saudi Arabia'),('250e3ac5-fee0-4f2b-a4ec-5136d7d2c031','2024-04-29 09:51:43','2024-04-29 09:51:43','Morocco'),('2a4f3365-1ba7-4f00-9b1c-c18c5ab27ccc','2024-04-29 09:51:42','2024-04-29 09:51:42','Bahrain'),('3406ea02-f61e-4fca-a5d1-684774c3004e','2024-04-29 09:51:42','2024-04-29 09:51:42','Jordan'),('3652109c-6d50-4d4a-b5b4-f9373ec523a3','2024-04-29 09:51:42','2024-04-29 09:51:42','Yemen'),('550583c9-d9f1-4c03-9495-1503f24c93b1','2024-04-29 09:51:42','2024-04-29 09:51:42','Iraq'),('797ff922-4c60-4ab4-af4a-7e995b953346','2024-04-29 09:51:43','2024-04-29 09:51:43','Djibouti'),('815023c6-d0a4-4d3e-8425-cb45e92b97c5','2024-04-29 09:51:42','2024-04-29 09:51:42','Syria'),('9331c296-73bb-455a-a9f8-dcbd620089f1','2024-04-29 09:51:43','2024-04-29 09:51:43','Egypt'),('a8f133cd-dbde-458e-bd0d-6395e8bfc0be','2024-04-29 09:51:43','2024-04-29 09:51:43','Somalia'),('c23da3b6-8947-4dee-bf10-7bfa246271a2','2024-04-29 09:51:43','2024-04-29 09:51:43','Libya'),('c340c042-6012-4353-b246-84edcf014885','2024-04-29 09:51:43','2024-04-29 09:51:43','Sudan'),('d9e0a6fd-3f0d-4646-b9d2-078bac7a18c8','2024-04-29 09:51:42','2024-04-29 09:51:42','Lebanon'),('db342e12-572d-4c3a-aff7-7f31d88015fe','2024-04-29 09:51:43','2024-04-29 09:51:43','Tunisia'),('de17e8aa-9288-46b4-9597-15d98e5c0d95','2024-04-29 09:51:42','2024-04-29 09:51:42','Kuwait'),('e47e2a75-341b-43f5-a982-5e660ca0c630','2024-04-29 09:51:42','2024-04-29 09:51:42','United Arab Emirates'),('f69542dc-8c4f-4a92-8889-d8cfeeae3d44','2024-04-29 09:51:43','2024-04-29 09:51:43','Palestine'),('fbeed95c-d2dd-4a06-88d1-14bf1c556f32','2024-04-29 09:51:43','2024-04-29 09:51:43','Algeria'),('fcf3adad-363a-454d-bd59-8da766bfb39a','2024-04-29 09:51:42','2024-04-29 09:51:42','Qatar');
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
INSERT INTO `crafts` VALUES ('09204bf9-f5d6-4ec3-990e-d90b6c4241e9','2024-04-29 09:51:43','2024-04-29 09:51:43','Engraving'),('1eed785b-7481-44bb-b058-062898c208ff','2024-04-29 09:51:43','2024-04-29 09:51:43','Woodwork'),('2c874d36-35a2-4bda-8173-4f47a696ca34','2024-04-29 09:51:43','2024-04-29 09:51:43','Pottery'),('45245b52-820d-4576-a218-3b9424459b5d','2024-04-29 09:51:44','2024-04-29 09:51:44','Weaving'),('4d9f9c91-2f44-43f6-a038-3911be78504b','2024-04-29 09:51:43','2024-04-29 09:51:43','Calligraphy'),('5389bca3-73e8-4e2d-a6b4-301bea17d7ad','2024-04-29 09:51:43','2024-04-29 09:51:43','Weaving'),('5caa2b78-5e6c-4694-a90e-cc13f457341a','2024-04-29 09:51:44','2024-04-29 09:51:44','Rugs'),('64282592-5e1f-4a7a-9eba-ddac4a7fc47c','2024-04-29 09:51:43','2024-04-29 09:51:43','Ceramics'),('8a89149a-d002-443b-8bb8-8e9991445384','2024-04-29 09:51:43','2024-04-29 09:51:43','Jewelry'),('991cfd99-1923-4bcb-861a-4e7f57741c46','2024-04-29 09:51:43','2024-04-29 09:51:43','Sculpting'),('9dc9c537-f0ae-4237-9163-21c13d0c5599','2024-04-29 09:51:43','2024-04-29 09:51:43','Glass'),('d9dc1adc-53ce-45bc-8b5f-64a9ea165608','2024-04-29 09:51:43','2024-04-29 09:51:43','Leatherworking'),('e163fe54-b105-4be3-b179-ffae49d03d92','2024-04-29 09:51:43','2024-04-29 09:51:43','Painting'),('e38f79a5-d656-4631-b174-a4d71215671d','2024-04-29 09:51:43','2024-04-29 09:51:43','Metalwork'),('ebd2dd22-953c-4364-8a0e-c6869ab7b792','2024-04-29 09:51:43','2024-04-29 09:51:43','Basketry'),('f5ffaa1b-7ea4-4201-ad51-ef159ff8d155','2024-04-29 09:51:43','2024-04-29 09:51:43','Tiles'),('fa479cbe-6408-4bf6-b075-aca656788488','2024-04-29 09:51:44','2024-04-29 09:51:44','Furniture');
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
INSERT INTO `products` VALUES ('0285b7d7-b841-4c94-adfb-b75257c8f99c','2024-04-29 09:52:16','2024-04-29 09:52:16','Handcrafted Leather Journal','High-quality handcrafted leather journal with embossed cover',120,'../static/images/popular-1.jpg','c41372bb-49ca-41dc-9eac-ca53a7fdb738','fa479cbe-6408-4bf6-b075-aca656788488'),('0aa816ff-bdba-4f49-ac40-bdfd932b0ae0','2024-04-29 09:52:16','2024-04-29 09:52:16','Hand-carved Stone Sculpture','Intricately hand-carved stone sculpture of a lion',300,'../static/images/popular-1.jpg','83e053b3-b096-4bae-93f6-4c4204b0175d','991cfd99-1923-4bcb-861a-4e7f57741c46'),('0b712aaf-b708-4a1c-a74e-1736b11424a5','2024-04-29 09:52:16','2024-04-29 09:52:16','Hand-forged Iron Candle Holder','Hand-forged iron candle holder with intricate scrollwork',80,'../static/images/popular-1.jpg','2f28751e-6c9c-4059-91a9-0d20b690cc74','e38f79a5-d656-4631-b174-a4d71215671d'),('21e3113f-d72b-423a-b67a-838c3eeef7c0','2024-04-29 09:52:16','2024-04-29 09:52:16','Tea Cups','A beautiful set of handmade tea cups',40,'../static/images/popular-1.jpg','6a3c5ea1-56dd-4699-935e-cce1dc3e504d','2c874d36-35a2-4bda-8173-4f47a696ca34'),('3f6dad76-43b7-46ec-b98e-4f8e50f2efaa','2024-04-29 09:52:16','2024-04-29 09:52:16','Hand-carved Wooden Serving Tray','Elegant hand-carved wooden serving tray with intricate floral design',40,'../static/images/popular-1.jpg','d1227352-e6c8-47c8-951c-681cfdf7d043','1eed785b-7481-44bb-b058-062898c208ff'),('60391ae9-83a5-417e-ad5c-669d52b8c97b','2024-04-29 09:52:16','2024-04-29 09:52:16','Handwoven Wool Rug','Traditional handwoven wool rug with geometric patterns',200,'../static/images/popular-1.jpg','f73917bd-43ed-42b9-b120-a5471f6cf629','5389bca3-73e8-4e2d-a6b4-301bea17d7ad'),('7e3cc9d5-5b83-4389-98d2-8fa834245702','2024-04-29 09:52:16','2024-04-29 09:52:16','Hand-carved Wooden Bowl','Beautifully hand-carved wooden bowl made from sustainable teak wood',50,'../static/images/popular-1.jpg','d7067905-6652-4515-96bd-6d30a125c869','1eed785b-7481-44bb-b058-062898c208ff'),('86d527c1-a6a5-4a1c-bcfc-451f6a4b7809','2024-04-29 09:52:16','2024-04-29 09:52:16','Hand-tooled Leather Belt','Stylish hand-tooled leather belt with floral patterns',60,'../static/images/popular-1.jpg','6a3c5ea1-56dd-4699-935e-cce1dc3e504d','d9dc1adc-53ce-45bc-8b5f-64a9ea165608'),('8721e69d-bca3-4459-9eea-b7a48aaaaad6','2024-04-29 09:52:16','2024-04-29 09:52:16','Handwoven Seagrass Basket','Handwoven seagrass basket with lid, perfect for storage',50,'../static/images/popular-1.jpg','84fc8388-82f5-49b4-b418-379476a1ed0e','ebd2dd22-953c-4364-8a0e-c6869ab7b792'),('88ecf983-9e0d-44ac-8118-27851bde70a7','2024-04-29 09:52:16','2024-04-29 09:52:16','Hand-painted Ceramic Tile','Handcrafted ceramic tile painted with intricate floral motifs',15,'../static/images/popular-1.jpg','f73917bd-43ed-42b9-b120-a5471f6cf629','f5ffaa1b-7ea4-4201-ad51-ef159ff8d155'),('8b9b8844-ed5a-41ba-8ca3-51217145b8c3','2024-04-29 09:52:16','2024-04-29 09:52:16','Stained Glass Window Panel','Colorful stained glass window panel with floral design',180,'../static/images/popular-1.jpg','84fc8388-82f5-49b4-b418-379476a1ed0e','9dc9c537-f0ae-4237-9163-21c13d0c5599'),('928ba376-62d6-4c82-adc2-5396a78b65ec','2024-04-29 09:52:16','2024-04-29 09:52:16','Custom Arabic Calligraphy Canvas','Personalized Arabic calligraphy canvas with name or phrase of choice',80,'../static/images/popular-1.jpg','b7360e9b-ff9c-435b-9433-9df1a72f095f','4d9f9c91-2f44-43f6-a038-3911be78504b'),('929d807f-86e0-46a8-b748-98e602f133ba','2024-04-29 09:52:16','2024-04-29 09:52:16','Handcrafted Ceramic Vase','Elegant handcrafted ceramic vase with intricate blue glaze',80,'../static/images/popular-1.jpg','6a3c5ea1-56dd-4699-935e-cce1dc3e504d','64282592-5e1f-4a7a-9eba-ddac4a7fc47c'),('9a159ec5-ac33-47f7-9460-768b4e08d557','2024-04-29 09:52:16','2024-04-29 09:52:16','Handwoven Cotton Hammock','Comfortable handwoven cotton hammock with fringe detailing',35,'../static/images/popular-1.jpg','74878a16-2765-4f38-a1dc-451dfae93c2c','45245b52-820d-4576-a218-3b9424459b5d'),('a5d26a44-e827-4eb9-8a90-56e4c63d147f','2024-04-29 09:52:16','2024-04-29 09:52:16','Islamic Calligraphy Art','Elegant Islamic calligraphy artwork with gold leaf accents',150,'../static/images/popular-1.jpg','83e053b3-b096-4bae-93f6-4c4204b0175d','4d9f9c91-2f44-43f6-a038-3911be78504b'),('ae30bf19-785f-4eba-b8fb-44fce626fa54','2024-04-29 09:52:16','2024-04-29 09:52:16','Hand-engraved Metal Flask','Custom hand-engraved stainless steel flask with intricate design',50,'../static/images/popular-1.jpg','74878a16-2765-4f38-a1dc-451dfae93c2c','09204bf9-f5d6-4ec3-990e-d90b6c4241e9'),('c0a07418-1977-417a-91ce-51dacaca5ac2','2024-04-29 09:52:16','2024-04-29 09:52:16','Hand-tooled Leather Keychain','Stylish hand-tooled leather keychain with durable metal hardware',20,'../static/images/popular-1.jpg','1b57959d-e95a-4dbb-b91c-9ebeb346ed90','d9dc1adc-53ce-45bc-8b5f-64a9ea165608'),('cba6820f-bce6-48bd-81f7-52d5c2fe4f96','2024-04-29 09:52:16','2024-04-29 09:52:16','Hand-carved Wooden Jewelry Box','Exquisite hand-carved wooden jewelry box with floral motifs',60,'../static/images/popular-1.jpg','b7360e9b-ff9c-435b-9433-9df1a72f095f','1eed785b-7481-44bb-b058-062898c208ff'),('e867d59e-8f42-4cb8-b40c-2ae92b4a76f3','2024-04-29 09:52:16','2024-04-29 09:52:16','Handcrafted Wooden Serving Platter','Beautiful handcrafted wooden serving platter with natural wood grain',50,'../static/images/popular-1.jpg','1b57959d-e95a-4dbb-b91c-9ebeb346ed90','1eed785b-7481-44bb-b058-062898c208ff'),('e8e7afb6-bcb3-4e2a-be40-bc75ae5a171d','2024-04-29 09:52:16','2024-04-29 09:52:16','Sterling Silver Pendant Necklace','Elegant sterling silver pendant necklace with natural gemstone',120,'../static/images/popular-1.jpg','2f28751e-6c9c-4059-91a9-0d20b690cc74','8a89149a-d002-443b-8bb8-8e9991445384'),('ed5da840-57e2-4688-93f8-ec24d5614ed4','2024-04-29 09:52:16','2024-04-29 09:52:16','Persian Rug','Beautiful Persian that adds warmth in your house charm',250,'../static/images/popular-1.jpg','c41372bb-49ca-41dc-9eac-ca53a7fdb738','5caa2b78-5e6c-4694-a90e-cc13f457341a');
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

-- Dump completed on 2024-04-29  9:52:39
