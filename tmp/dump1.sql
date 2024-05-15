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
INSERT INTO `artisan_craft` VALUES ('bd10e6e1-cacf-4f24-b47c-564e4182f39f','09f27de5-39ca-4f7c-91cf-1e1911698748'),('18f8732e-c136-46fd-93c1-895f67e77603','18556bff-561d-468c-b899-6846576d4d1a'),('6edb2ddd-d86f-4e3d-b19e-fd9359096c51','18556bff-561d-468c-b899-6846576d4d1a'),('c07e2d59-259f-4343-953a-beeca473316d','18556bff-561d-468c-b899-6846576d4d1a'),('f5456cb1-a5a5-4a83-a7d1-32a5f4386440','18556bff-561d-468c-b899-6846576d4d1a'),('515c3226-4b68-4a3c-8d67-903e5395e817','208f7dbf-05d4-4346-87b7-ee3dc0573920'),('6edb2ddd-d86f-4e3d-b19e-fd9359096c51','208f7dbf-05d4-4346-87b7-ee3dc0573920'),('8d67f67a-a1c6-4b5b-acab-94380b3b02c1','32af2fcb-2e71-4add-ab5f-370b9f4d1d74'),('bd10e6e1-cacf-4f24-b47c-564e4182f39f','32af2fcb-2e71-4add-ab5f-370b9f4d1d74'),('e8ec0470-8014-419b-9fd3-dbfcf7c74d83','3509d73f-970a-445d-8ba9-a79241753b9a'),('8d67f67a-a1c6-4b5b-acab-94380b3b02c1','50290aae-c19f-4b66-addc-3d28e9232d6f'),('626ceb20-3327-4d0e-b39a-22f95134358d','550fe8ac-db86-4288-b927-a272bc4e876b'),('e8ec0470-8014-419b-9fd3-dbfcf7c74d83','59e32611-0c48-45fa-af68-1f6352391ae2'),('f5456cb1-a5a5-4a83-a7d1-32a5f4386440','59e32611-0c48-45fa-af68-1f6352391ae2'),('18f8732e-c136-46fd-93c1-895f67e77603','5ef0bb50-871b-427a-af57-ffa1a80b395b'),('49004b6a-07e6-4781-94d7-009d78ec361f','5ef0bb50-871b-427a-af57-ffa1a80b395b'),('a2138e82-0936-4ec3-9422-6523e5f12747','7d0d4440-fc27-4943-8254-39b144fe7455'),('f5456cb1-a5a5-4a83-a7d1-32a5f4386440','7d0d4440-fc27-4943-8254-39b144fe7455'),('e8ec0470-8014-419b-9fd3-dbfcf7c74d83','96f2d8a8-8135-4223-acec-692059e14ee2'),('515c3226-4b68-4a3c-8d67-903e5395e817','a572099c-f523-474c-9cd9-371117093cb7'),('6edb2ddd-d86f-4e3d-b19e-fd9359096c51','a572099c-f523-474c-9cd9-371117093cb7'),('a2138e82-0936-4ec3-9422-6523e5f12747','ad10ab90-566e-4966-8322-ea1a2d64a814'),('bd10e6e1-cacf-4f24-b47c-564e4182f39f','bb750c04-890f-4e3d-b348-dbcdd7727aad'),('49004b6a-07e6-4781-94d7-009d78ec361f','e8965501-cf75-4ec0-bf4e-61f7a529aa90'),('49004b6a-07e6-4781-94d7-009d78ec361f','f03be120-bf77-423e-8313-b8d1de385452'),('515c3226-4b68-4a3c-8d67-903e5395e817','f03be120-bf77-423e-8313-b8d1de385452'),('626ceb20-3327-4d0e-b39a-22f95134358d','fae456d5-4657-49fd-9d0b-56d3ad58546d');
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
INSERT INTO `artisans` VALUES ('18f8732e-c136-46fd-93c1-895f67e77603','2024-04-28 14:39:40','2024-04-28 14:39:40','Fatima Ahmed','Experienced artisan dedicated to creating unique works','fatima@example.com','password2','ce1f6e3b-0e12-4ed8-b13e-8c21a35ae581'),('49004b6a-07e6-4781-94d7-009d78ec361f','2024-04-28 14:39:41','2024-04-28 14:39:41','Youssef Nasser','Craftsman committed to craftsmanship and creativity','youssef@example.com','password7','5c6ff5fa-fd43-4929-a074-b773febb6a6e'),('515c3226-4b68-4a3c-8d67-903e5395e817','2024-04-28 14:39:40','2024-04-28 14:39:40','Mohammed Khalil','Passionate craftsperson committed to the art of creation','mohammed@example.com','password3','67fc1c07-4294-46f4-ada6-6bb72db64dca'),('626ceb20-3327-4d0e-b39a-22f95134358d','2024-04-28 14:39:40','2024-04-28 14:39:40','Layla Abbas','Master artisan known for their dedication to craftsmanship','layla@example.com','password4','3a285043-3cf6-45b7-8ce0-f7a16f0a79c7'),('6edb2ddd-d86f-4e3d-b19e-fd9359096c51','2024-04-28 14:39:41','2024-04-28 14:39:41','Ahmed Taha','Artist full of passion and skill','ahmedt@example.com','password11','5a8b0f7c-b6e2-42ab-beec-b544f7ee838d'),('8d67f67a-a1c6-4b5b-acab-94380b3b02c1','2024-04-28 14:39:41','2024-04-28 14:39:41','Nadia khalfaoui','Skilled artisan dedicated to producing quality handmade goods','nadia@example.com','password8','7503baa6-73a7-49c2-b891-35acbec3416f'),('a2138e82-0936-4ec3-9422-6523e5f12747','2024-04-28 14:39:40','2024-04-28 14:39:40','Ali Hassan','Skilled artisan with a passion for traditional craftsmanship','ali@example.com','password1','2614c6fc-49b8-4743-a50a-dc379726f38c'),('bd10e6e1-cacf-4f24-b47c-564e4182f39f','2024-04-28 14:39:40','2024-04-28 14:39:40','Hassan Ibrahim','Artisan with a keen eye for detail and a love for creativity','hassan@example.com','password5','3f78c8a6-fc17-46ca-b77d-85660727bd58'),('c07e2d59-259f-4343-953a-beeca473316d','2024-04-28 14:39:41','2024-04-28 14:39:41','Khaled Farouk','Passionate creator known for their dedication to their craft','khaled@example.com','password9','afdb7b13-169f-4da3-add8-83038bfa79db'),('e8ec0470-8014-419b-9fd3-dbfcf7c74d83','2024-04-28 14:39:41','2024-04-28 14:39:41','Aisha Kareem','Skilled maker dedicated to producing high-quality works of art','aisha@example.com','password6','cf3d092f-5fa4-4cca-9ccb-286d381a7bae'),('f5456cb1-a5a5-4a83-a7d1-32a5f4386440','2024-04-28 14:39:41','2024-04-28 14:39:41','Sara Mansour','Versatile artisan dedicated to excellence in their work','sara@example.com','password10','28697339-645c-4a00-bd35-ec785dafcf2d');
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
INSERT INTO `cities` VALUES ('025d5673-e66f-4e01-946e-8fdb88697d58','2024-04-28 14:39:40','2024-04-28 14:39:40','Marrakesh','4395a135-a037-4650-89d9-0171c0a3efbf'),('07798612-c6c3-4c26-9b0d-a8a5883fb906','2024-04-28 14:39:39','2024-04-28 14:39:39','Muharraq','c1508f23-03a4-42ad-b42f-317381576448'),('088bbdec-b88b-4015-9e76-4221bf823329','2024-04-28 14:39:38','2024-04-28 14:39:38','Mecca','543f97c6-45db-48e7-a32b-92fe66bc8e60'),('097b13d3-374c-44fd-a34c-697ab5ced283','2024-04-28 14:39:39','2024-04-28 14:39:39','Luxor','6cf8ec80-0798-4ca7-b2af-bfa4e7fbed9b'),('0b092a65-0cb8-41ea-929c-d5ad8ac01748','2024-04-28 14:39:39','2024-04-28 14:39:39','Hawalli','841ef482-1e32-4295-adb2-059cf34e8c08'),('0bcb35ef-812a-4f0d-8c5e-02dc62adc978','2024-04-28 14:39:39','2024-04-28 14:39:39','Mosul','c2d53f7a-a8bb-4fbe-b4ad-49c09937f4d7'),('11b08c4c-a86c-4943-bff7-6fd2bfb7aa0a','2024-04-28 14:39:39','2024-04-28 14:39:39','Irbid','c5029986-63ad-44d7-969e-c55aa412874f'),('172d24de-b0ce-4bb0-9515-c553a451f606','2024-04-28 14:39:39','2024-04-28 14:39:39','Damascus','b8f93efe-72ac-488b-8081-c95da44cae48'),('1eadfdd5-fc11-4489-9a84-0f3c5f4a580a','2024-04-28 14:39:38','2024-04-28 14:39:38','Sharjah','ed068139-a157-462f-9dc0-369ba006cf0d'),('2614c6fc-49b8-4743-a50a-dc379726f38c','2024-04-28 14:39:40','2024-04-28 14:39:40','Gabès','585dc878-789c-484e-ab9b-2d73addfdc17'),('28355e5d-8887-40bc-80a7-6877264e8134','2024-04-28 14:39:39','2024-04-28 14:39:39','Hebron','4864ec3a-5741-48a1-8698-be4009b2a5c6'),('28697339-645c-4a00-bd35-ec785dafcf2d','2024-04-28 14:39:39','2024-04-28 14:39:39','Tripoli','d7d927cc-baa5-4d1b-b50e-7187874ad1d3'),('29e5a474-b22c-464b-ad19-fee741a53ab8','2024-04-28 14:39:39','2024-04-28 14:39:39','Nizwa','15f91e2a-a581-44fe-b424-81542b7902c9'),('2a781d46-d8e7-4e03-8a06-6242e981d2c4','2024-04-28 14:39:40','2024-04-28 14:39:40','Bosaso','968319ce-b197-4264-8652-ef1242de5f1e'),('2b1285db-2157-430f-aa52-bc856768a4c4','2024-04-28 14:39:40','2024-04-28 14:39:40','Tadjoura','f3bbfc98-37e1-462d-ae66-d53b8a33b224'),('36b5c3f3-fdb5-412c-8f4a-765f0db053bb','2024-04-28 14:39:40','2024-04-28 14:39:40','Port Sudan','c92bf6a8-16c6-488a-b1a5-708b2d3c0b51'),('388c175b-75d9-4201-af24-b37a42094bc7','2024-04-28 14:39:39','2024-04-28 14:39:39','Salalah','15f91e2a-a581-44fe-b424-81542b7902c9'),('39bccee4-bc94-400d-ab1d-ab722a7aa41e','2024-04-28 14:39:40','2024-04-28 14:39:40','Hargeisa','968319ce-b197-4264-8652-ef1242de5f1e'),('3a285043-3cf6-45b7-8ce0-f7a16f0a79c7','2024-04-28 14:39:39','2024-04-28 14:39:39','Muscat','15f91e2a-a581-44fe-b424-81542b7902c9'),('3b826173-3ff0-44c2-b0ca-15193aaacd57','2024-04-28 14:39:40','2024-04-28 14:39:40','Sousse','585dc878-789c-484e-ab9b-2d73addfdc17'),('3f78c8a6-fc17-46ca-b77d-85660727bd58','2024-04-28 14:39:39','2024-04-28 14:39:39','Ramallah','4864ec3a-5741-48a1-8698-be4009b2a5c6'),('42ad70b0-bdbd-4c7c-b9d6-ffa3bd0894cb','2024-04-28 14:39:39','2024-04-28 14:39:39','Taiz','706bee2a-9819-4827-8b6a-c699649dec3b'),('4a7a7f81-31dc-4819-bcf2-64398e806201','2024-04-28 14:39:39','2024-04-28 14:39:39','Al Hudaydah','706bee2a-9819-4827-8b6a-c699649dec3b'),('4a89322c-88cb-474d-ac2e-7b5141c17552','2024-04-28 14:39:39','2024-04-28 14:39:39','Sohar','15f91e2a-a581-44fe-b424-81542b7902c9'),('4d9705c5-c8dc-4bad-ae64-dc401b6eea31','2024-04-28 14:39:38','2024-04-28 14:39:38','Riyadh','543f97c6-45db-48e7-a32b-92fe66bc8e60'),('547c4c29-c6bc-493e-bc5d-17c2d07408a2','2024-04-28 14:39:39','2024-04-28 14:39:39','Misrata','d7d927cc-baa5-4d1b-b50e-7187874ad1d3'),('559caabf-2217-456f-9f0b-305ee81b2c5e','2024-04-28 14:39:39','2024-04-28 14:39:39','Aden','706bee2a-9819-4827-8b6a-c699649dec3b'),('57953cff-b10e-4009-822c-bba61a8100cd','2024-04-28 14:39:40','2024-04-28 14:39:40','Ali Sabieh','f3bbfc98-37e1-462d-ae66-d53b8a33b224'),('59f26237-c761-4e9c-b3be-b052d8a348c0','2024-04-28 14:39:39','2024-04-28 14:39:39','Amman','c5029986-63ad-44d7-969e-c55aa412874f'),('5a8b0f7c-b6e2-42ab-beec-b544f7ee838d','2024-04-28 14:39:39','2024-04-28 14:39:39','Sirte','d7d927cc-baa5-4d1b-b50e-7187874ad1d3'),('5c6ff5fa-fd43-4929-a074-b773febb6a6e','2024-04-28 14:39:39','2024-04-28 14:39:39','Hamad Town','c1508f23-03a4-42ad-b42f-317381576448'),('5de2ee9c-3002-4716-9189-a0ee8fdff256','2024-04-28 14:39:39','2024-04-28 14:39:39','Gaza','4864ec3a-5741-48a1-8698-be4009b2a5c6'),('5e447e22-d1f2-4196-b125-73ffb98f568e','2024-04-28 14:39:39','2024-04-28 14:39:39','Jabriya','841ef482-1e32-4295-adb2-059cf34e8c08'),('5ee7e2fb-5f08-43bb-bbea-add5fdb125f9','2024-04-28 14:39:40','2024-04-28 14:39:40','Kassala','c92bf6a8-16c6-488a-b1a5-708b2d3c0b51'),('6032722e-505e-44ae-8bdd-3189d5500ccc','2024-04-28 14:39:40','2024-04-28 14:39:40','Constantine','c1a2e9a8-9f7e-4857-ba85-a193bc98ee68'),('605d4525-ee80-444b-8a46-805f04a3aad2','2024-04-28 14:39:40','2024-04-28 14:39:40','Obock','f3bbfc98-37e1-462d-ae66-d53b8a33b224'),('638fff77-21df-47c0-bb05-d416c11a4c8b','2024-04-28 14:39:40','2024-04-28 14:39:40','Djibouti City','f3bbfc98-37e1-462d-ae66-d53b8a33b224'),('667cdf8e-6759-4281-bee2-68d079aa4f87','2024-04-28 14:39:40','2024-04-28 14:39:40','Algiers','c1a2e9a8-9f7e-4857-ba85-a193bc98ee68'),('67fc1c07-4294-46f4-ada6-6bb72db64dca','2024-04-28 14:39:38','2024-04-28 14:39:38','Jeddah','543f97c6-45db-48e7-a32b-92fe66bc8e60'),('6c0e0b90-828a-4e9a-891f-68da6585d681','2024-04-28 14:39:39','2024-04-28 14:39:39','Erbil','c2d53f7a-a8bb-4fbe-b4ad-49c09937f4d7'),('6fdb12e3-9655-4e06-8edb-63a490c466ab','2024-04-28 14:39:39','2024-04-28 14:39:39','Homs','b8f93efe-72ac-488b-8081-c95da44cae48'),('715d8056-6f9b-4acc-ace7-9529b510d755','2024-04-28 14:39:39','2024-04-28 14:39:39','Jerusalem','4864ec3a-5741-48a1-8698-be4009b2a5c6'),('7503baa6-73a7-49c2-b891-35acbec3416f','2024-04-28 14:39:39','2024-04-28 14:39:39','Aqaba','c5029986-63ad-44d7-969e-c55aa412874f'),('7897c289-88eb-4252-a526-0b45e245f646','2024-04-28 14:39:39','2024-04-28 14:39:39','Salmiya','841ef482-1e32-4295-adb2-059cf34e8c08'),('7c1ce68a-9f2f-40f9-9de1-e85ed611a6cf','2024-04-28 14:39:39','2024-04-28 14:39:39','Beirut','d45c53cf-541e-4239-84fc-7c09ff7c6423'),('7e582d3f-8995-458e-b838-3150f438fbea','2024-04-28 14:39:39','2024-04-28 14:39:39','Hama','b8f93efe-72ac-488b-8081-c95da44cae48'),('7f6495d4-fde0-47c2-8a17-79cfb6f8aa36','2024-04-28 14:39:38','2024-04-28 14:39:38','Medina','543f97c6-45db-48e7-a32b-92fe66bc8e60'),('80c14c33-d0dd-4756-a649-76626a525657','2024-04-28 14:39:40','2024-04-28 14:39:40','Tunis','585dc878-789c-484e-ab9b-2d73addfdc17'),('837c9f5b-eb77-4216-973b-ec8486b11e6c','2024-04-28 14:39:39','2024-04-28 14:39:39','Giza','6cf8ec80-0798-4ca7-b2af-bfa4e7fbed9b'),('86350624-e9d5-4e1b-87fd-98ff7d0f464c','2024-04-28 14:39:40','2024-04-28 14:39:40','Mogadishu','968319ce-b197-4264-8652-ef1242de5f1e'),('866340a1-9bb0-4f73-9dd8-c9d7d5dc7e5b','2024-04-28 14:39:40','2024-04-28 14:39:40','Annaba','c1a2e9a8-9f7e-4857-ba85-a193bc98ee68'),('866e10c2-6bd4-4ab3-8ad7-dc169f5d8646','2024-04-28 14:39:39','2024-04-28 14:39:39','Baghdad','c2d53f7a-a8bb-4fbe-b4ad-49c09937f4d7'),('8a1fca93-f66d-46d3-9bcd-8d6f75f0309c','2024-04-28 14:39:39','2024-04-28 14:39:39','Tripoli','d45c53cf-541e-4239-84fc-7c09ff7c6423'),('8b8969e2-1309-4786-b756-dc65f4d4cd62','2024-04-28 14:39:39','2024-04-28 14:39:39','Al Khor','03753f8c-5a38-4a54-b282-5903d1655b68'),('8c404178-a183-4e1e-924f-2df16abf302b','2024-04-28 14:39:40','2024-04-28 14:39:40','Oran','c1a2e9a8-9f7e-4857-ba85-a193bc98ee68'),('8e69f714-eb6e-4fb9-9550-b7f340d0ad55','2024-04-28 14:39:40','2024-04-28 14:39:40','Fez','4395a135-a037-4650-89d9-0171c0a3efbf'),('8f0701e8-4b61-47eb-bd21-ea5f9523e7f4','2024-04-28 14:39:39','2024-04-28 14:39:39','Sidon','d45c53cf-541e-4239-84fc-7c09ff7c6423'),('938ac7a9-5fb8-44ac-a4d5-0847d4c0c122','2024-04-28 14:39:38','2024-04-28 14:39:38','Dammam','543f97c6-45db-48e7-a32b-92fe66bc8e60'),('99ba3fa6-39cd-4117-a568-86dd5be946a3','2024-04-28 14:39:39','2024-04-28 14:39:39','Alexandria','6cf8ec80-0798-4ca7-b2af-bfa4e7fbed9b'),('99c38ba2-def2-4a17-ab8f-3d66fccbda8e','2024-04-28 14:39:40','2024-04-28 14:39:40','Casablanca','4395a135-a037-4650-89d9-0171c0a3efbf'),('a7653440-b471-4583-bcb7-3bbb261a6e46','2024-04-28 14:39:39','2024-04-28 14:39:39','Sana\'a','706bee2a-9819-4827-8b6a-c699649dec3b'),('afdb7b13-169f-4da3-add8-83038bfa79db','2024-04-28 14:39:39','2024-04-28 14:39:39','Aleppo','b8f93efe-72ac-488b-8081-c95da44cae48'),('b09b8ae8-a579-4f29-b4e4-e2d12d134989','2024-04-28 14:39:39','2024-04-28 14:39:39','Kuwait City','841ef482-1e32-4295-adb2-059cf34e8c08'),('b18744ad-8f19-47aa-ab25-1f8fbb0742e1','2024-04-28 14:39:39','2024-04-28 14:39:39','Manama','c1508f23-03a4-42ad-b42f-317381576448'),('b25386eb-7f5a-49eb-b5fd-74918948a7ad','2024-04-28 14:39:40','2024-04-28 14:39:40','Rabat','4395a135-a037-4650-89d9-0171c0a3efbf'),('b4645310-2800-4ff8-9b6e-e4e5894d2a04','2024-04-28 14:39:39','2024-04-28 14:39:39','Zarqa','c5029986-63ad-44d7-969e-c55aa412874f'),('c1604947-bd02-4a3d-9a3e-c34376315b5d','2024-04-28 14:39:39','2024-04-28 14:39:39','Cairo','6cf8ec80-0798-4ca7-b2af-bfa4e7fbed9b'),('ce1f6e3b-0e12-4ed8-b13e-8c21a35ae581','2024-04-28 14:39:38','2024-04-28 14:39:38','Al Wakrah','03753f8c-5a38-4a54-b282-5903d1655b68'),('cf3d092f-5fa4-4cca-9ccb-286d381a7bae','2024-04-28 14:39:38','2024-04-28 14:39:38','Doha','03753f8c-5a38-4a54-b282-5903d1655b68'),('d02e9c15-e0a0-494e-aa85-26efad5c75a4','2024-04-28 14:39:40','2024-04-28 14:39:40','Khartoum','c92bf6a8-16c6-488a-b1a5-708b2d3c0b51'),('d0e0302a-38a2-49ac-a357-fa18dc127db9','2024-04-28 14:39:40','2024-04-28 14:39:40','Kismayo','968319ce-b197-4264-8652-ef1242de5f1e'),('d631825a-674d-4dff-8438-c1e2c431b29e','2024-04-28 14:39:38','2024-04-28 14:39:38','Dubai','ed068139-a157-462f-9dc0-369ba006cf0d'),('dca34dd3-d984-4f75-ad7f-0fae17720b6e','2024-04-28 14:39:39','2024-04-28 14:39:39','Basra','c2d53f7a-a8bb-4fbe-b4ad-49c09937f4d7'),('dd79a057-6196-41b0-817e-eda81505eb7c','2024-04-28 14:39:39','2024-04-28 14:39:39','Tyre','d45c53cf-541e-4239-84fc-7c09ff7c6423'),('e02da7c7-831b-4401-b933-c73633172cfc','2024-04-28 14:39:40','2024-04-28 14:39:40','Omdurman','c92bf6a8-16c6-488a-b1a5-708b2d3c0b51'),('e625b2d6-b8e2-4843-a1f8-d808d097af39','2024-04-28 14:39:39','2024-04-28 14:39:39','Umm Salal','03753f8c-5a38-4a54-b282-5903d1655b68'),('e91e541e-9a57-4bc7-901a-9a57171bfa62','2024-04-28 14:39:38','2024-04-28 14:39:38','Fujairah','ed068139-a157-462f-9dc0-369ba006cf0d'),('eac0f368-c1c3-468e-b0f4-950d783c7776','2024-04-28 14:39:39','2024-04-28 14:39:39','Riffa','c1508f23-03a4-42ad-b42f-317381576448'),('eb0b04c3-3732-46c2-aa15-867fd670a5e4','2024-04-28 14:39:39','2024-04-28 14:39:39','Benghazi','d7d927cc-baa5-4d1b-b50e-7187874ad1d3'),('ec2212cb-dbc2-4061-a504-eaaec0c3a871','2024-04-28 14:39:38','2024-04-28 14:39:38','Abu Dhabi','ed068139-a157-462f-9dc0-369ba006cf0d'),('ede50f70-bb37-44a1-99f5-9a7ea72f7f03','2024-04-28 14:39:40','2024-04-28 14:39:40','Sfax','585dc878-789c-484e-ab9b-2d73addfdc17'),('ff129113-8cba-4019-a4ab-8891b56843ad','2024-04-28 14:39:38','2024-04-28 14:39:38','Ajman','ed068139-a157-462f-9dc0-369ba006cf0d');
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
INSERT INTO `countries` VALUES ('03753f8c-5a38-4a54-b282-5903d1655b68','2024-04-28 14:39:38','2024-04-28 14:39:38','Qatar'),('15f91e2a-a581-44fe-b424-81542b7902c9','2024-04-28 14:39:39','2024-04-28 14:39:39','Oman'),('4395a135-a037-4650-89d9-0171c0a3efbf','2024-04-28 14:39:40','2024-04-28 14:39:40','Morocco'),('4864ec3a-5741-48a1-8698-be4009b2a5c6','2024-04-28 14:39:39','2024-04-28 14:39:39','Palestine'),('543f97c6-45db-48e7-a32b-92fe66bc8e60','2024-04-28 14:39:38','2024-04-28 14:39:38','Saudi Arabia'),('585dc878-789c-484e-ab9b-2d73addfdc17','2024-04-28 14:39:39','2024-04-28 14:39:39','Tunisia'),('6cf8ec80-0798-4ca7-b2af-bfa4e7fbed9b','2024-04-28 14:39:39','2024-04-28 14:39:39','Egypt'),('706bee2a-9819-4827-8b6a-c699649dec3b','2024-04-28 14:39:39','2024-04-28 14:39:39','Yemen'),('841ef482-1e32-4295-adb2-059cf34e8c08','2024-04-28 14:39:39','2024-04-28 14:39:39','Kuwait'),('968319ce-b197-4264-8652-ef1242de5f1e','2024-04-28 14:39:40','2024-04-28 14:39:40','Somalia'),('b8f93efe-72ac-488b-8081-c95da44cae48','2024-04-28 14:39:39','2024-04-28 14:39:39','Syria'),('c1508f23-03a4-42ad-b42f-317381576448','2024-04-28 14:39:39','2024-04-28 14:39:39','Bahrain'),('c1a2e9a8-9f7e-4857-ba85-a193bc98ee68','2024-04-28 14:39:40','2024-04-28 14:39:40','Algeria'),('c2d53f7a-a8bb-4fbe-b4ad-49c09937f4d7','2024-04-28 14:39:39','2024-04-28 14:39:39','Iraq'),('c5029986-63ad-44d7-969e-c55aa412874f','2024-04-28 14:39:39','2024-04-28 14:39:39','Jordan'),('c92bf6a8-16c6-488a-b1a5-708b2d3c0b51','2024-04-28 14:39:40','2024-04-28 14:39:40','Sudan'),('d45c53cf-541e-4239-84fc-7c09ff7c6423','2024-04-28 14:39:39','2024-04-28 14:39:39','Lebanon'),('d7d927cc-baa5-4d1b-b50e-7187874ad1d3','2024-04-28 14:39:39','2024-04-28 14:39:39','Libya'),('ed068139-a157-462f-9dc0-369ba006cf0d','2024-04-28 14:39:38','2024-04-28 14:39:38','United Arab Emirates'),('f3bbfc98-37e1-462d-ae66-d53b8a33b224','2024-04-28 14:39:40','2024-04-28 14:39:40','Djibouti');
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
INSERT INTO `crafts` VALUES ('09f27de5-39ca-4f7c-91cf-1e1911698748','2024-04-28 14:39:40','2024-04-28 14:39:40','Basketry'),('18556bff-561d-468c-b899-6846576d4d1a','2024-04-28 14:39:40','2024-04-28 14:39:40','Woodwork'),('208f7dbf-05d4-4346-87b7-ee3dc0573920','2024-04-28 14:39:40','2024-04-28 14:39:40','Ceramics'),('32af2fcb-2e71-4add-ab5f-370b9f4d1d74','2024-04-28 14:39:40','2024-04-28 14:39:40','Furniture'),('3509d73f-970a-445d-8ba9-a79241753b9a','2024-04-28 14:39:40','2024-04-28 14:39:40','Painting'),('50290aae-c19f-4b66-addc-3d28e9232d6f','2024-04-28 14:39:40','2024-04-28 14:39:40','Rugs'),('550fe8ac-db86-4288-b927-a272bc4e876b','2024-04-28 14:39:40','2024-04-28 14:39:40','Jewelry'),('59e32611-0c48-45fa-af68-1f6352391ae2','2024-04-28 14:39:40','2024-04-28 14:39:40','Calligraphy'),('5ef0bb50-871b-427a-af57-ffa1a80b395b','2024-04-28 14:39:40','2024-04-28 14:39:40','Weaving'),('7d0d4440-fc27-4943-8254-39b144fe7455','2024-04-28 14:39:40','2024-04-28 14:39:40','Tiles'),('96f2d8a8-8135-4223-acec-692059e14ee2','2024-04-28 14:39:40','2024-04-28 14:39:40','Sculpting'),('a572099c-f523-474c-9cd9-371117093cb7','2024-04-28 14:39:40','2024-04-28 14:39:40','Leatherworking'),('ad10ab90-566e-4966-8322-ea1a2d64a814','2024-04-28 14:39:40','2024-04-28 14:39:40','Weaving'),('bb750c04-890f-4e3d-b348-dbcdd7727aad','2024-04-28 14:39:40','2024-04-28 14:39:40','Glass'),('e8965501-cf75-4ec0-bf4e-61f7a529aa90','2024-04-28 14:39:40','2024-04-28 14:39:40','Engraving'),('f03be120-bf77-423e-8313-b8d1de385452','2024-04-28 14:39:40','2024-04-28 14:39:40','Pottery'),('fae456d5-4657-49fd-9d0b-56d3ad58546d','2024-04-28 14:39:40','2024-04-28 14:39:40','Metalwork');
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
INSERT INTO `products` VALUES ('0cbc80eb-22a2-4eca-af34-568a84af7734','2024-04-28 14:39:41','2024-04-28 14:39:41','Custom Arabic Calligraphy Canvas','Personalized Arabic calligraphy canvas with name or phrase of choice',80,'f5456cb1-a5a5-4a83-a7d1-32a5f4386440','59e32611-0c48-45fa-af68-1f6352391ae2'),('0e5870dd-5798-461c-8ec2-4e2303662fa2','2024-04-28 14:39:41','2024-04-28 14:39:41','Islamic Calligraphy Art','Elegant Islamic calligraphy artwork with gold leaf accents',150,'e8ec0470-8014-419b-9fd3-dbfcf7c74d83','59e32611-0c48-45fa-af68-1f6352391ae2'),('2d0816a2-f1d0-4587-b864-3f1a7a7176c3','2024-04-28 14:39:41','2024-04-28 14:39:41','Handcrafted Ceramic Vase','Elegant handcrafted ceramic vase with intricate blue glaze',80,'515c3226-4b68-4a3c-8d67-903e5395e817','208f7dbf-05d4-4346-87b7-ee3dc0573920'),('4172ae49-d0e9-4726-ae35-47f593062d89','2024-04-28 14:39:41','2024-04-28 14:39:41','Hand-carved Wooden Serving Tray','Elegant hand-carved wooden serving tray with intricate floral design',40,'c07e2d59-259f-4343-953a-beeca473316d','18556bff-561d-468c-b899-6846576d4d1a'),('489f750c-069b-4a32-af60-2d1857bcab96','2024-04-28 14:39:41','2024-04-28 14:39:41','Hand-carved Wooden Bowl','Beautifully hand-carved wooden bowl made from sustainable teak wood',50,'18f8732e-c136-46fd-93c1-895f67e77603','18556bff-561d-468c-b899-6846576d4d1a'),('4a30dabb-e1dc-41dc-93a5-75592c45a8c2','2024-04-28 14:39:41','2024-04-28 14:39:41','Handcrafted Wooden Serving Platter','Beautiful handcrafted wooden serving platter with natural wood grain',50,'6edb2ddd-d86f-4e3d-b19e-fd9359096c51','18556bff-561d-468c-b899-6846576d4d1a'),('5b0b9552-9e1c-46f9-967b-513093092ea7','2024-04-28 14:39:41','2024-04-28 14:39:41','Tea Cups','A beautiful set of handmade tea cups',40,'515c3226-4b68-4a3c-8d67-903e5395e817','f03be120-bf77-423e-8313-b8d1de385452'),('612dba0e-05f8-4132-bb8e-f9f32f9fda8c','2024-04-28 14:39:41','2024-04-28 14:39:41','Sterling Silver Pendant Necklace','Elegant sterling silver pendant necklace with natural gemstone',120,'626ceb20-3327-4d0e-b39a-22f95134358d','550fe8ac-db86-4288-b927-a272bc4e876b'),('84c49b9a-6141-4e08-adc7-e2ef7ca57df2','2024-04-28 14:39:41','2024-04-28 14:39:41','Hand-carved Stone Sculpture','Intricately hand-carved stone sculpture of a lion',300,'e8ec0470-8014-419b-9fd3-dbfcf7c74d83','96f2d8a8-8135-4223-acec-692059e14ee2'),('855d7288-1911-416a-84ae-d0692e8be8cd','2024-04-28 14:39:41','2024-04-28 14:39:41','Handcrafted Leather Journal','High-quality handcrafted leather journal with embossed cover',120,'8d67f67a-a1c6-4b5b-acab-94380b3b02c1','32af2fcb-2e71-4add-ab5f-370b9f4d1d74'),('85bb6426-0fae-45df-abd9-5b6ed7064fac','2024-04-28 14:39:41','2024-04-28 14:39:41','Hand-tooled Leather Keychain','Stylish hand-tooled leather keychain with durable metal hardware',20,'6edb2ddd-d86f-4e3d-b19e-fd9359096c51','a572099c-f523-474c-9cd9-371117093cb7'),('909ae12d-2941-4d00-bffa-a4f95b11a874','2024-04-28 14:39:41','2024-04-28 14:39:41','Handwoven Wool Rug','Traditional handwoven wool rug with geometric patterns',200,'a2138e82-0936-4ec3-9422-6523e5f12747','ad10ab90-566e-4966-8322-ea1a2d64a814'),('94fffef8-b43e-4598-98e6-57fad2e4917a','2024-04-28 14:39:41','2024-04-28 14:39:41','Hand-forged Iron Candle Holder','Hand-forged iron candle holder with intricate scrollwork',80,'626ceb20-3327-4d0e-b39a-22f95134358d','fae456d5-4657-49fd-9d0b-56d3ad58546d'),('9a7a5e3b-73ff-44a8-9ae8-67812acf3eab','2024-04-28 14:39:41','2024-04-28 14:39:41','Hand-carved Wooden Jewelry Box','Exquisite hand-carved wooden jewelry box with floral motifs',60,'f5456cb1-a5a5-4a83-a7d1-32a5f4386440','18556bff-561d-468c-b899-6846576d4d1a'),('a1851bae-460a-4b73-b66b-9c28ac04510a','2024-04-28 14:39:41','2024-04-28 14:39:41','Hand-painted Ceramic Tile','Handcrafted ceramic tile painted with intricate floral motifs',15,'a2138e82-0936-4ec3-9422-6523e5f12747','7d0d4440-fc27-4943-8254-39b144fe7455'),('a74bdb21-0a0c-431a-81ea-a00d86a2bc92','2024-04-28 14:39:41','2024-04-28 14:39:41','Handwoven Cotton Hammock','Comfortable handwoven cotton hammock with fringe detailing',35,'49004b6a-07e6-4781-94d7-009d78ec361f','5ef0bb50-871b-427a-af57-ffa1a80b395b'),('ae1447f5-3cc3-4090-ab56-52ba762c54a3','2024-04-28 14:39:41','2024-04-28 14:39:41','Handwoven Seagrass Basket','Handwoven seagrass basket with lid, perfect for storage',50,'bd10e6e1-cacf-4f24-b47c-564e4182f39f','09f27de5-39ca-4f7c-91cf-1e1911698748'),('b48131ff-e76c-40ad-8e7a-a89ca2dd7d3e','2024-04-28 14:39:41','2024-04-28 14:39:41','Persian Rug','Beautiful Persian that adds warmth in your house charm',250,'8d67f67a-a1c6-4b5b-acab-94380b3b02c1','50290aae-c19f-4b66-addc-3d28e9232d6f'),('bcc99f65-b47f-4602-876d-dcca2742d51d','2024-04-28 14:39:41','2024-04-28 14:39:41','Stained Glass Window Panel','Colorful stained glass window panel with floral design',180,'bd10e6e1-cacf-4f24-b47c-564e4182f39f','bb750c04-890f-4e3d-b348-dbcdd7727aad'),('cf9e769d-1e73-489a-9459-380151060914','2024-04-28 14:39:41','2024-04-28 14:39:41','Hand-engraved Metal Flask','Custom hand-engraved stainless steel flask with intricate design',50,'49004b6a-07e6-4781-94d7-009d78ec361f','e8965501-cf75-4ec0-bf4e-61f7a529aa90'),('ea30f2e0-8037-436f-bd1c-5f15828dd472','2024-04-28 14:39:41','2024-04-28 14:39:41','Hand-tooled Leather Belt','Stylish hand-tooled leather belt with floral patterns',60,'515c3226-4b68-4a3c-8d67-903e5395e817','a572099c-f523-474c-9cd9-371117093cb7');
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

-- Dump completed on 2024-04-28 14:39:50
