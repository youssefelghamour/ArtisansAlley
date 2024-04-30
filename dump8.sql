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
INSERT INTO `artisan_craft` VALUES ('6fd823cc-72b9-4d6b-becd-0a0c0b4047b8','02a94807-25b4-4b02-b621-d01e4ef8f571'),('272a53af-6ec8-4cdb-b8cb-e36163523ad2','11c03f12-a4a3-4cda-860d-5764cd699196'),('49170b93-fb45-4aad-ad7e-6e2de7c93db7','233610b8-a3bc-44da-90df-0f089fe0459d'),('279bfe78-2754-4788-8d98-952f7ec3cdb1','2af8a6f8-3add-4f9d-8251-a08385f04f1d'),('ff1da302-8e4c-4d1a-80a6-3142057eaaba','2af8a6f8-3add-4f9d-8251-a08385f04f1d'),('6fd823cc-72b9-4d6b-becd-0a0c0b4047b8','3f1b54b1-c20e-4aca-9a18-323456f1f467'),('d7360d40-e9f6-4907-97f9-26abb3682e46','3f1b54b1-c20e-4aca-9a18-323456f1f467'),('49170b93-fb45-4aad-ad7e-6e2de7c93db7','507486ba-cd8b-40be-be7d-35cc9a626736'),('a1cfe7b8-0090-42ee-9d04-e0bf2e320f4c','60b5b9d6-4822-4f66-87ed-7c01948052dc'),('0aed8128-b34e-4b5e-80fb-708149a2b3a0','646dd846-374a-40ba-801e-b2f4db440a0c'),('3ae95031-d54a-4521-94e1-5259388b1059','646dd846-374a-40ba-801e-b2f4db440a0c'),('42280fc7-2a36-481e-b580-c3c4947c9ed0','646dd846-374a-40ba-801e-b2f4db440a0c'),('d7360d40-e9f6-4907-97f9-26abb3682e46','646dd846-374a-40ba-801e-b2f4db440a0c'),('49170b93-fb45-4aad-ad7e-6e2de7c93db7','66193eb3-f64a-4514-8c09-24ebad971f8d'),('d7360d40-e9f6-4907-97f9-26abb3682e46','66193eb3-f64a-4514-8c09-24ebad971f8d'),('faee352b-3515-47d5-b241-36058113445b','6f497c1b-65b5-491e-a440-376aac2c0c27'),('272a53af-6ec8-4cdb-b8cb-e36163523ad2','7055f80a-07b8-4b5d-8e4b-cdadde1a397e'),('a1cfe7b8-0090-42ee-9d04-e0bf2e320f4c','7055f80a-07b8-4b5d-8e4b-cdadde1a397e'),('279bfe78-2754-4788-8d98-952f7ec3cdb1','7426f0c8-0614-4e71-a738-6716019dff61'),('a1cfe7b8-0090-42ee-9d04-e0bf2e320f4c','84b212b8-0817-4890-bb83-39f432c3387d'),('42280fc7-2a36-481e-b580-c3c4947c9ed0','8af04fdd-16d9-4dfe-865a-ba3407ce70e3'),('ff1da302-8e4c-4d1a-80a6-3142057eaaba','8af04fdd-16d9-4dfe-865a-ba3407ce70e3'),('0aed8128-b34e-4b5e-80fb-708149a2b3a0','9d97d306-381f-4f20-aa9f-bc6ba09c53f2'),('279bfe78-2754-4788-8d98-952f7ec3cdb1','9d97d306-381f-4f20-aa9f-bc6ba09c53f2'),('42280fc7-2a36-481e-b580-c3c4947c9ed0','c3be34d6-b0cd-4762-99a5-707a2540885b'),('ff1da302-8e4c-4d1a-80a6-3142057eaaba','c3be34d6-b0cd-4762-99a5-707a2540885b'),('faee352b-3515-47d5-b241-36058113445b','f84b48b2-4c5a-4cf7-843e-edeba8da76b1');
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
INSERT INTO `artisans` VALUES ('0aed8128-b34e-4b5e-80fb-708149a2b3a0','2024-04-30 03:37:23','2024-04-30 03:37:23','Fatima Ahmed','Experienced artisan dedicated to creating unique works','fatima@example.com','$2b$12$IkfsQMqyIlh5GhgCGxwdyu7U73bFPsbJgU.LBe864K9RLBcPQV9Ay','../static/images/avatar.png','2ed1eb1f-2a0c-4311-bf7d-64be9cdd5bfc'),('272a53af-6ec8-4cdb-b8cb-e36163523ad2','2024-04-30 03:37:39','2024-04-30 03:37:39','Nadia khalfaoui','Skilled artisan dedicated to producing quality handmade goods','nadia@example.com','$2b$12$nQFqEW5rtopfFFQxyHE5R.H.zXoPzvqAKxg4AsWZHVLvKIU8AVySu','../static/images/avatar.png','43ea0a48-7415-4d67-863f-df5b504d969a'),('279bfe78-2754-4788-8d98-952f7ec3cdb1','2024-04-30 03:37:36','2024-04-30 03:37:36','Youssef Nasser','Craftsman committed to craftsmanship and creativity','youssef@example.com','$2b$12$b5I9rNUNLIYuOjZk5wmTJeKVeW8kMUAwBmNFhCYR4RxO0nUDf09Wm','../static/images/avatar.png','5be54ce0-45cb-49a1-ad76-58ae1b72d390'),('3ae95031-d54a-4521-94e1-5259388b1059','2024-04-30 03:37:42','2024-04-30 03:37:42','Khaled Farouk','Passionate creator known for their dedication to their craft','khaled@example.com','$2b$12$SQp6ogFy9wsKntc3Z9PxMO/RjDHmzoQddtf3I1oJWMJ9TH42ilcCe','../static/images/avatar.png','dac42028-c5e3-48ea-90eb-d1bf61dbf7f3'),('42280fc7-2a36-481e-b580-c3c4947c9ed0','2024-04-30 03:37:47','2024-04-30 03:37:47','Ahmed Taha','Artist full of passion and skill','ahmedt@example.com','$2b$12$peObnx/qNs.W8G8/.l9uY.Txj9fiXk19SeHKFm6O/4MipiWVSphty','../static/images/avatar.png','b7e4ebcc-5b0a-49cf-9851-8e63d67a9ac6'),('49170b93-fb45-4aad-ad7e-6e2de7c93db7','2024-04-30 03:37:34','2024-04-30 03:37:34','Aisha Kareem','Skilled maker dedicated to producing high-quality works of art','aisha@example.com','$2b$12$joY1J/tDJMUJ87kB8wRHbOpGLMh8SqH4oAyDj8rZu0XaV.bYG04oy','../static/images/avatar.png','ba247397-c74b-407e-ba98-268095db7a08'),('6fd823cc-72b9-4d6b-becd-0a0c0b4047b8','2024-04-30 03:37:20','2024-04-30 03:37:20','Ali Hassan','Skilled artisan with a passion for traditional craftsmanship','ali@example.com','$2b$12$8sCqNS6UQT8wqYnCP22VMeEJNrRM7O1IhLDoVKms6MqB8cXPNr3O2','../static/images/avatar.png','519fc600-93a8-4773-8d10-b6dd03a4cd2c'),('a1cfe7b8-0090-42ee-9d04-e0bf2e320f4c','2024-04-30 03:37:31','2024-04-30 03:37:31','Hassan Ibrahim','Artisan with a keen eye for detail and a love for creativity','hassan@example.com','$2b$12$7/QOuIH8kk5Ld/N9d3YiOOwg52aFCwBjuN3v5apGL2erP7b4XLgwq','../static/images/avatar.png','67b030f1-a024-4b62-a49a-3371603e069b'),('d7360d40-e9f6-4907-97f9-26abb3682e46','2024-04-30 03:37:45','2024-04-30 03:37:45','Sara Mansour','Versatile artisan dedicated to excellence in their work','sara@example.com','$2b$12$6LtEz1I7bQ5YYGpoyEJA6uSnDFWc8YwPA6rXiUQBmTsy2qw76uyyW','../static/images/avatar.png','6b660159-abd4-4289-8a1d-ddba9151509f'),('faee352b-3515-47d5-b241-36058113445b','2024-04-30 03:37:28','2024-04-30 03:37:28','Layla Abbas','Master artisan known for their dedication to craftsmanship','layla@example.com','$2b$12$kB2hLNopOqL3X0iwmSfTBuSMikwTI3kuXPpNyCZuFcbUgegMvDz0.','../static/images/avatar.png','551ffd99-e019-4975-9663-d1831aa8e8e8'),('ff1da302-8e4c-4d1a-80a6-3142057eaaba','2024-04-30 03:37:25','2024-04-30 03:37:25','Mohammed Khalil','Passionate craftsperson committed to the art of creation','mohammed@example.com','$2b$12$16fRKlb4eZb3SwTcrxa7/ugI115a1/MDKfg6uR3wTUqs.e.CSlcL2','../static/images/avatar.png','bd36961b-9927-45df-bcab-ec2d8ddc7177');
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
INSERT INTO `cities` VALUES ('01a6cd61-aa3a-4836-908b-02ff69dc1eb7','2024-04-30 03:37:15','2024-04-30 03:37:15','Homs','012432b6-df96-432d-accf-7c63dfd5affa'),('03cddd73-ba9c-4d3e-b4c0-1d140ed8262b','2024-04-30 03:37:16','2024-04-30 03:37:16','Mogadishu','109ffc96-63da-44a6-aac7-e278c0b50d7d'),('048b6962-da15-4700-a4b6-52c3eb961339','2024-04-30 03:37:16','2024-04-30 03:37:16','Annaba','3671adaf-4dbf-4a85-8f40-16e516b438f8'),('06a5632a-f9a1-40d4-8856-6f8b6d35fca5','2024-04-30 03:37:16','2024-04-30 03:37:16','Khartoum','01f604a4-2bd6-49b9-a201-f71f9878d068'),('0faa215d-81eb-4477-8991-039c115d8058','2024-04-30 03:37:15','2024-04-30 03:37:15','Jerusalem','dcaf5f82-bba7-419d-a2aa-00bad91e2899'),('1400893e-9757-4c2e-94f1-9375e28e861e','2024-04-30 03:37:15','2024-04-30 03:37:15','Baghdad','9b7f5868-96f1-416f-9132-00897ab18fad'),('16a5ab03-978c-444c-80b2-022ede288297','2024-04-30 03:37:15','2024-04-30 03:37:15','Tyre','97bf915d-0e4f-48df-a118-2bb351e46acc'),('19d41bac-eff7-4170-aada-479b5ee4df58','2024-04-30 03:37:15','2024-04-30 03:37:15','Taiz','65dce4f1-be6c-4c3c-955f-5ac7adc76d05'),('1bc02b1f-923d-4913-a6a7-1b9ce4f57773','2024-04-30 03:37:15','2024-04-30 03:37:15','Umm Salal','c5e04eb2-3687-4c90-938e-c8af05142012'),('1fc0e3a7-b000-4c83-8016-97cd5569a1bd','2024-04-30 03:37:16','2024-04-30 03:37:16','Tunis','401aed31-7c60-4ac3-9b3b-1138051c9266'),('2051af39-97a9-49d2-bc2b-04b621c73659','2024-04-30 03:37:16','2024-04-30 03:37:16','Misrata','6cdc8527-3548-41e3-8d7b-80dab60b928a'),('254eb086-9cb1-4f0f-ba79-a946363424cb','2024-04-30 03:37:15','2024-04-30 03:37:15','Beirut','97bf915d-0e4f-48df-a118-2bb351e46acc'),('25dc1dc8-58f1-431f-bfbe-882b3845dd8e','2024-04-30 03:37:16','2024-04-30 03:37:16','Tadjoura','30a3fbaf-5e9f-490c-9c72-a428713e1145'),('26c8deb9-7937-44ab-a966-d9aef6f422f4','2024-04-30 03:37:16','2024-04-30 03:37:16','Ali Sabieh','30a3fbaf-5e9f-490c-9c72-a428713e1145'),('27afe9ae-df46-4396-91c9-83adae6bbd1a','2024-04-30 03:37:14','2024-04-30 03:37:14','Abu Dhabi','09b9189d-ac1f-47e7-8390-991710aeb32a'),('2a76de55-f524-4afc-82cc-c154f6afb1e3','2024-04-30 03:37:15','2024-04-30 03:37:15','Salmiya','d4ef5201-f5f8-4216-9805-58ac32153927'),('2c8b3d1d-aeac-4a38-99dc-86ee3f25f232','2024-04-30 03:37:15','2024-04-30 03:37:15','Nizwa','5927ec70-e6ff-4002-b797-8ebf77a0ee6f'),('2ec886dc-0159-4fb3-ae28-59a68a9ef029','2024-04-30 03:37:16','2024-04-30 03:37:16','Sousse','401aed31-7c60-4ac3-9b3b-1138051c9266'),('2ed1eb1f-2a0c-4311-bf7d-64be9cdd5bfc','2024-04-30 03:37:15','2024-04-30 03:37:15','Al Wakrah','c5e04eb2-3687-4c90-938e-c8af05142012'),('30f2071c-3558-416d-b226-d9020bfccbba','2024-04-30 03:37:15','2024-04-30 03:37:15','Fujairah','09b9189d-ac1f-47e7-8390-991710aeb32a'),('332e0c74-93d7-4882-b0bc-6f6cb316ceac','2024-04-30 03:37:15','2024-04-30 03:37:15','Ajman','09b9189d-ac1f-47e7-8390-991710aeb32a'),('3d3249e4-a60a-4aff-8099-7a335900aac4','2024-04-30 03:37:14','2024-04-30 03:37:14','Dubai','09b9189d-ac1f-47e7-8390-991710aeb32a'),('408a7550-2601-402c-aba7-6819673ec931','2024-04-30 03:37:16','2024-04-30 03:37:16','Fez','b3c18bb9-e121-4acb-98c3-80fa6a98040a'),('419e3da0-265e-47bd-9c2f-9f2e182d9b78','2024-04-30 03:37:16','2024-04-30 03:37:16','Marrakesh','b3c18bb9-e121-4acb-98c3-80fa6a98040a'),('421fbc15-ebc8-4631-bfae-7e976cf58b1f','2024-04-30 03:37:15','2024-04-30 03:37:15','Muharraq','1ff79dcf-eeca-4de3-bb3e-046cd2f1e89f'),('43ea0a48-7415-4d67-863f-df5b504d969a','2024-04-30 03:37:15','2024-04-30 03:37:15','Aqaba','54eece1a-ec64-4389-8d40-c99e167adcf2'),('5192dbe6-cbf2-4f9e-8a35-ca0a7de9701c','2024-04-30 03:37:15','2024-04-30 03:37:15','Gaza','dcaf5f82-bba7-419d-a2aa-00bad91e2899'),('519fc600-93a8-4773-8d10-b6dd03a4cd2c','2024-04-30 03:37:16','2024-04-30 03:37:16','Gabès','401aed31-7c60-4ac3-9b3b-1138051c9266'),('53c06bad-ee10-4093-ae04-728f1fb8eb73','2024-04-30 03:37:15','2024-04-30 03:37:15','Salalah','5927ec70-e6ff-4002-b797-8ebf77a0ee6f'),('551ffd99-e019-4975-9663-d1831aa8e8e8','2024-04-30 03:37:15','2024-04-30 03:37:15','Muscat','5927ec70-e6ff-4002-b797-8ebf77a0ee6f'),('5b61ccdf-5c9d-49fd-942f-a236e0e149ac','2024-04-30 03:37:15','2024-04-30 03:37:15','Irbid','54eece1a-ec64-4389-8d40-c99e167adcf2'),('5bdf96d9-bd1b-411b-9efb-e667d4a4b50a','2024-04-30 03:37:16','2024-04-30 03:37:16','Algiers','3671adaf-4dbf-4a85-8f40-16e516b438f8'),('5be54ce0-45cb-49a1-ad76-58ae1b72d390','2024-04-30 03:37:15','2024-04-30 03:37:15','Hamad Town','1ff79dcf-eeca-4de3-bb3e-046cd2f1e89f'),('5f7ec129-5ad0-4e40-8fd3-b9994a8f5d53','2024-04-30 03:37:16','2024-04-30 03:37:16','Sfax','401aed31-7c60-4ac3-9b3b-1138051c9266'),('67b030f1-a024-4b62-a49a-3371603e069b','2024-04-30 03:37:16','2024-04-30 03:37:16','Ramallah','dcaf5f82-bba7-419d-a2aa-00bad91e2899'),('69e5ab6d-2ce3-49cf-9e4f-84c8ba6e9e61','2024-04-30 03:37:16','2024-04-30 03:37:16','Hebron','dcaf5f82-bba7-419d-a2aa-00bad91e2899'),('6af04cac-ea03-4408-9de4-c8ee6e8a7bea','2024-04-30 03:37:16','2024-04-30 03:37:16','Giza','b5c662eb-ac61-4c5e-8ace-c95ebf996568'),('6b660159-abd4-4289-8a1d-ddba9151509f','2024-04-30 03:37:16','2024-04-30 03:37:16','Tripoli','6cdc8527-3548-41e3-8d7b-80dab60b928a'),('79e256ff-2cf5-4c9b-8252-b95c54dfad9f','2024-04-30 03:37:16','2024-04-30 03:37:16','Djibouti City','30a3fbaf-5e9f-490c-9c72-a428713e1145'),('7ee47a82-af4f-41a1-9ae7-34dd83a3a0f1','2024-04-30 03:37:16','2024-04-30 03:37:16','Omdurman','01f604a4-2bd6-49b9-a201-f71f9878d068'),('850c9c45-3e5e-4c4a-afc1-d6d67da7c6e9','2024-04-30 03:37:15','2024-04-30 03:37:15','Sohar','5927ec70-e6ff-4002-b797-8ebf77a0ee6f'),('88040daf-0780-4079-864f-06c4c722851c','2024-04-30 03:37:16','2024-04-30 03:37:16','Benghazi','6cdc8527-3548-41e3-8d7b-80dab60b928a'),('88fd16c4-2ca8-422b-9851-e623c00af7b1','2024-04-30 03:37:16','2024-04-30 03:37:16','Hargeisa','109ffc96-63da-44a6-aac7-e278c0b50d7d'),('8960367f-a539-402b-bae8-9204ebdc55f6','2024-04-30 03:37:16','2024-04-30 03:37:16','Luxor','b5c662eb-ac61-4c5e-8ace-c95ebf996568'),('8b33396b-34fa-4cac-81a9-8936fc0abf3e','2024-04-30 03:37:16','2024-04-30 03:37:16','Casablanca','b3c18bb9-e121-4acb-98c3-80fa6a98040a'),('8cdc5384-3147-4c29-920a-8d2e304411ab','2024-04-30 03:37:15','2024-04-30 03:37:15','Basra','9b7f5868-96f1-416f-9132-00897ab18fad'),('8f7111dd-2884-42e9-8e69-51277d2d1805','2024-04-30 03:37:15','2024-04-30 03:37:15','Manama','1ff79dcf-eeca-4de3-bb3e-046cd2f1e89f'),('94d37953-f374-4ca5-a9a9-e1a08a88c54b','2024-04-30 03:37:15','2024-04-30 03:37:15','Hawalli','d4ef5201-f5f8-4216-9805-58ac32153927'),('97c054ae-9a58-4793-89ad-8902ccd53843','2024-04-30 03:37:15','2024-04-30 03:37:15','Sana\'a','65dce4f1-be6c-4c3c-955f-5ac7adc76d05'),('97d009ed-480e-46ec-8ebf-80d39726c5e0','2024-04-30 03:37:16','2024-04-30 03:37:16','Rabat','b3c18bb9-e121-4acb-98c3-80fa6a98040a'),('9d17b893-a93e-4f3b-8cd5-a10827c2c371','2024-04-30 03:37:15','2024-04-30 03:37:15','Erbil','9b7f5868-96f1-416f-9132-00897ab18fad'),('a2ab049b-2393-4024-95a1-49663b1a01b1','2024-04-30 03:37:15','2024-04-30 03:37:15','Damascus','012432b6-df96-432d-accf-7c63dfd5affa'),('a4ff5797-598b-4982-b77a-e3b3692647a8','2024-04-30 03:37:15','2024-04-30 03:37:15','Jabriya','d4ef5201-f5f8-4216-9805-58ac32153927'),('a7bdb8d5-2632-4e7a-aefd-9cef91de5ecb','2024-04-30 03:37:16','2024-04-30 03:37:16','Cairo','b5c662eb-ac61-4c5e-8ace-c95ebf996568'),('a7d80d0e-ac30-49ee-be42-a0be76591ef8','2024-04-30 03:37:16','2024-04-30 03:37:16','Alexandria','b5c662eb-ac61-4c5e-8ace-c95ebf996568'),('b6c75361-8067-4320-af05-6300aa60b4db','2024-04-30 03:37:16','2024-04-30 03:37:16','Constantine','3671adaf-4dbf-4a85-8f40-16e516b438f8'),('b7e4ebcc-5b0a-49cf-9851-8e63d67a9ac6','2024-04-30 03:37:16','2024-04-30 03:37:16','Sirte','6cdc8527-3548-41e3-8d7b-80dab60b928a'),('ba247397-c74b-407e-ba98-268095db7a08','2024-04-30 03:37:15','2024-04-30 03:37:15','Doha','c5e04eb2-3687-4c90-938e-c8af05142012'),('bb58017a-f959-4627-a5d6-91334c63f31c','2024-04-30 03:37:16','2024-04-30 03:37:16','Bosaso','109ffc96-63da-44a6-aac7-e278c0b50d7d'),('bd36961b-9927-45df-bcab-ec2d8ddc7177','2024-04-30 03:37:14','2024-04-30 03:37:14','Jeddah','a9600a1f-04f4-45ba-b8d9-788272f4f580'),('bfc741ce-521d-40ce-963f-62d5446b3920','2024-04-30 03:37:15','2024-04-30 03:37:15','Zarqa','54eece1a-ec64-4389-8d40-c99e167adcf2'),('c39d45f8-ea49-4ddb-a4b4-9cf012dd9d03','2024-04-30 03:37:16','2024-04-30 03:37:16','Kismayo','109ffc96-63da-44a6-aac7-e278c0b50d7d'),('c3c81645-04b7-4da7-917b-15301b2d36fe','2024-04-30 03:37:16','2024-04-30 03:37:16','Oran','3671adaf-4dbf-4a85-8f40-16e516b438f8'),('c3db9bb4-a59e-4879-8f79-19b1f3595987','2024-04-30 03:37:14','2024-04-30 03:37:14','Riyadh','a9600a1f-04f4-45ba-b8d9-788272f4f580'),('c3e4e640-89bb-460b-b8d3-da85a01293eb','2024-04-30 03:37:15','2024-04-30 03:37:15','Al Khor','c5e04eb2-3687-4c90-938e-c8af05142012'),('c48aeafa-1608-4272-89bd-1f8d56d39b4d','2024-04-30 03:37:15','2024-04-30 03:37:15','Mosul','9b7f5868-96f1-416f-9132-00897ab18fad'),('cb96e94f-406e-4cb6-a3fd-7edbe66c9402','2024-04-30 03:37:16','2024-04-30 03:37:16','Port Sudan','01f604a4-2bd6-49b9-a201-f71f9878d068'),('d20fec96-8048-405b-aa08-5d96a0c9f708','2024-04-30 03:37:14','2024-04-30 03:37:14','Medina','a9600a1f-04f4-45ba-b8d9-788272f4f580'),('d59e6ce9-56e9-4f7b-bbdc-1d140ee63937','2024-04-30 03:37:15','2024-04-30 03:37:15','Sharjah','09b9189d-ac1f-47e7-8390-991710aeb32a'),('dac42028-c5e3-48ea-90eb-d1bf61dbf7f3','2024-04-30 03:37:15','2024-04-30 03:37:15','Aleppo','012432b6-df96-432d-accf-7c63dfd5affa'),('dbb64bd4-3e9e-418f-bfb9-7c56a541fc15','2024-04-30 03:37:15','2024-04-30 03:37:15','Riffa','1ff79dcf-eeca-4de3-bb3e-046cd2f1e89f'),('df0b69f7-082c-49ad-9211-d34d2c8db1a6','2024-04-30 03:37:15','2024-04-30 03:37:15','Hama','012432b6-df96-432d-accf-7c63dfd5affa'),('e026095f-09bd-44f1-a704-a6426bfdafe3','2024-04-30 03:37:15','2024-04-30 03:37:15','Sidon','97bf915d-0e4f-48df-a118-2bb351e46acc'),('e1981d21-b8b0-4f9d-939d-e1a5bc1ddaef','2024-04-30 03:37:15','2024-04-30 03:37:15','Aden','65dce4f1-be6c-4c3c-955f-5ac7adc76d05'),('e1deb140-1292-4a44-9191-ea988752f0fc','2024-04-30 03:37:14','2024-04-30 03:37:14','Mecca','a9600a1f-04f4-45ba-b8d9-788272f4f580'),('e3c315bb-2e4a-4c72-bd8f-45a23dca2492','2024-04-30 03:37:15','2024-04-30 03:37:15','Al Hudaydah','65dce4f1-be6c-4c3c-955f-5ac7adc76d05'),('e9523e1c-2290-48a9-8ce5-f4cd7cb1fc69','2024-04-30 03:37:15','2024-04-30 03:37:15','Kuwait City','d4ef5201-f5f8-4216-9805-58ac32153927'),('ee0f9e90-049f-45b9-b9b3-0bcf0d4093a5','2024-04-30 03:37:14','2024-04-30 03:37:14','Dammam','a9600a1f-04f4-45ba-b8d9-788272f4f580'),('f29f93f7-1513-4d4e-a333-4c4c7f4e0fc3','2024-04-30 03:37:16','2024-04-30 03:37:16','Kassala','01f604a4-2bd6-49b9-a201-f71f9878d068'),('f51a35a1-5929-427e-9b10-14482f5d543d','2024-04-30 03:37:15','2024-04-30 03:37:15','Tripoli','97bf915d-0e4f-48df-a118-2bb351e46acc'),('f78fe97b-89e7-4538-a8dd-e7a692c4a394','2024-04-30 03:37:16','2024-04-30 03:37:16','Obock','30a3fbaf-5e9f-490c-9c72-a428713e1145'),('fc71d796-7d63-454a-abf2-0b9f24dec86d','2024-04-30 03:37:15','2024-04-30 03:37:15','Amman','54eece1a-ec64-4389-8d40-c99e167adcf2');
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
INSERT INTO `countries` VALUES ('012432b6-df96-432d-accf-7c63dfd5affa','2024-04-30 03:37:15','2024-04-30 03:37:15','Syria'),('01f604a4-2bd6-49b9-a201-f71f9878d068','2024-04-30 03:37:16','2024-04-30 03:37:16','Sudan'),('09b9189d-ac1f-47e7-8390-991710aeb32a','2024-04-30 03:37:14','2024-04-30 03:37:14','United Arab Emirates'),('109ffc96-63da-44a6-aac7-e278c0b50d7d','2024-04-30 03:37:16','2024-04-30 03:37:16','Somalia'),('1ff79dcf-eeca-4de3-bb3e-046cd2f1e89f','2024-04-30 03:37:15','2024-04-30 03:37:15','Bahrain'),('30a3fbaf-5e9f-490c-9c72-a428713e1145','2024-04-30 03:37:16','2024-04-30 03:37:16','Djibouti'),('3671adaf-4dbf-4a85-8f40-16e516b438f8','2024-04-30 03:37:16','2024-04-30 03:37:16','Algeria'),('401aed31-7c60-4ac3-9b3b-1138051c9266','2024-04-30 03:37:16','2024-04-30 03:37:16','Tunisia'),('54eece1a-ec64-4389-8d40-c99e167adcf2','2024-04-30 03:37:15','2024-04-30 03:37:15','Jordan'),('5927ec70-e6ff-4002-b797-8ebf77a0ee6f','2024-04-30 03:37:15','2024-04-30 03:37:15','Oman'),('65dce4f1-be6c-4c3c-955f-5ac7adc76d05','2024-04-30 03:37:15','2024-04-30 03:37:15','Yemen'),('6cdc8527-3548-41e3-8d7b-80dab60b928a','2024-04-30 03:37:16','2024-04-30 03:37:16','Libya'),('97bf915d-0e4f-48df-a118-2bb351e46acc','2024-04-30 03:37:15','2024-04-30 03:37:15','Lebanon'),('9b7f5868-96f1-416f-9132-00897ab18fad','2024-04-30 03:37:15','2024-04-30 03:37:15','Iraq'),('a9600a1f-04f4-45ba-b8d9-788272f4f580','2024-04-30 03:37:14','2024-04-30 03:37:14','Saudi Arabia'),('b3c18bb9-e121-4acb-98c3-80fa6a98040a','2024-04-30 03:37:16','2024-04-30 03:37:16','Morocco'),('b5c662eb-ac61-4c5e-8ace-c95ebf996568','2024-04-30 03:37:16','2024-04-30 03:37:16','Egypt'),('c5e04eb2-3687-4c90-938e-c8af05142012','2024-04-30 03:37:15','2024-04-30 03:37:15','Qatar'),('d4ef5201-f5f8-4216-9805-58ac32153927','2024-04-30 03:37:15','2024-04-30 03:37:15','Kuwait'),('dcaf5f82-bba7-419d-a2aa-00bad91e2899','2024-04-30 03:37:15','2024-04-30 03:37:15','Palestine');
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
INSERT INTO `crafts` VALUES ('02a94807-25b4-4b02-b621-d01e4ef8f571','2024-04-30 03:37:17','2024-04-30 03:37:17','Weaving'),('11c03f12-a4a3-4cda-860d-5764cd699196','2024-04-30 03:37:17','2024-04-30 03:37:17','Rugs'),('233610b8-a3bc-44da-90df-0f089fe0459d','2024-04-30 03:37:17','2024-04-30 03:37:17','Sculpting'),('2af8a6f8-3add-4f9d-8251-a08385f04f1d','2024-04-30 03:37:17','2024-04-30 03:37:17','Pottery'),('3f1b54b1-c20e-4aca-9a18-323456f1f467','2024-04-30 03:37:17','2024-04-30 03:37:17','Tiles'),('507486ba-cd8b-40be-be7d-35cc9a626736','2024-04-30 03:37:17','2024-04-30 03:37:17','Painting'),('60b5b9d6-4822-4f66-87ed-7c01948052dc','2024-04-30 03:37:16','2024-04-30 03:37:16','Glass'),('646dd846-374a-40ba-801e-b2f4db440a0c','2024-04-30 03:37:16','2024-04-30 03:37:16','Woodwork'),('66193eb3-f64a-4514-8c09-24ebad971f8d','2024-04-30 03:37:17','2024-04-30 03:37:17','Calligraphy'),('6f497c1b-65b5-491e-a440-376aac2c0c27','2024-04-30 03:37:16','2024-04-30 03:37:16','Metalwork'),('7055f80a-07b8-4b5d-8e4b-cdadde1a397e','2024-04-30 03:37:17','2024-04-30 03:37:17','Furniture'),('7426f0c8-0614-4e71-a738-6716019dff61','2024-04-30 03:37:17','2024-04-30 03:37:17','Engraving'),('84b212b8-0817-4890-bb83-39f432c3387d','2024-04-30 03:37:17','2024-04-30 03:37:17','Basketry'),('8af04fdd-16d9-4dfe-865a-ba3407ce70e3','2024-04-30 03:37:17','2024-04-30 03:37:17','Leatherworking'),('9d97d306-381f-4f20-aa9f-bc6ba09c53f2','2024-04-30 03:37:17','2024-04-30 03:37:17','Weaving'),('c3be34d6-b0cd-4762-99a5-707a2540885b','2024-04-30 03:37:16','2024-04-30 03:37:16','Ceramics'),('f84b48b2-4c5a-4cf7-843e-edeba8da76b1','2024-04-30 03:37:16','2024-04-30 03:37:16','Jewelry');
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
INSERT INTO `products` VALUES ('0acb82a1-e29d-4d6e-a785-3b188b50ed7a','2024-04-30 03:37:48','2024-04-30 03:37:48','Hand-engraved Metal Flask','Custom hand-engraved stainless steel flask with intricate design',50,'../static/images/popular-1.jpg','279bfe78-2754-4788-8d98-952f7ec3cdb1','7426f0c8-0614-4e71-a738-6716019dff61'),('0bca504d-b8db-41be-96bb-d1343158fa49','2024-04-30 03:37:48','2024-04-30 03:37:48','Handwoven Seagrass Basket','Handwoven seagrass basket with lid, perfect for storage',50,'../static/images/popular-1.jpg','a1cfe7b8-0090-42ee-9d04-e0bf2e320f4c','84b212b8-0817-4890-bb83-39f432c3387d'),('17b0d21a-5e54-4d8f-9d32-d5ee98fa9451','2024-04-30 03:37:48','2024-04-30 03:37:48','Hand-forged Iron Candle Holder','Hand-forged iron candle holder with intricate scrollwork',80,'../static/images/popular-1.jpg','faee352b-3515-47d5-b241-36058113445b','6f497c1b-65b5-491e-a440-376aac2c0c27'),('1a2f1238-6740-486f-aee8-090fd3476a67','2024-04-30 03:37:48','2024-04-30 03:37:48','Hand-tooled Leather Keychain','Stylish hand-tooled leather keychain with durable metal hardware',20,'../static/images/popular-1.jpg','42280fc7-2a36-481e-b580-c3c4947c9ed0','8af04fdd-16d9-4dfe-865a-ba3407ce70e3'),('1faa5b40-0539-4bef-8ea4-89c3f4578b87','2024-04-30 03:37:48','2024-04-30 03:37:48','Hand-painted Ceramic Tile','Handcrafted ceramic tile painted with intricate floral motifs',15,'../static/images/popular-1.jpg','6fd823cc-72b9-4d6b-becd-0a0c0b4047b8','3f1b54b1-c20e-4aca-9a18-323456f1f467'),('291ac5f8-dad6-4421-8c85-f3641d71672b','2024-04-30 03:37:48','2024-04-30 03:37:48','Handcrafted Ceramic Vase','Elegant handcrafted ceramic vase with intricate blue glaze',80,'../static/images/popular-1.jpg','ff1da302-8e4c-4d1a-80a6-3142057eaaba','c3be34d6-b0cd-4762-99a5-707a2540885b'),('2ae7e313-7626-4f3e-b39b-79a86e55c1e6','2024-04-30 03:37:48','2024-04-30 03:37:48','Persian Rug','Beautiful Persian that adds warmth in your house charm',250,'../static/images/popular-1.jpg','272a53af-6ec8-4cdb-b8cb-e36163523ad2','11c03f12-a4a3-4cda-860d-5764cd699196'),('42da52dc-9c20-40f9-8708-0743c992eb37','2024-04-30 03:37:48','2024-04-30 03:37:48','Hand-tooled Leather Belt','Stylish hand-tooled leather belt with floral patterns',60,'../static/images/popular-1.jpg','ff1da302-8e4c-4d1a-80a6-3142057eaaba','8af04fdd-16d9-4dfe-865a-ba3407ce70e3'),('5ca5183b-48cb-4587-8de0-309f73bfa5ee','2024-04-30 03:37:48','2024-04-30 03:37:48','Handcrafted Leather Journal','High-quality handcrafted leather journal with embossed cover',120,'../static/images/popular-1.jpg','272a53af-6ec8-4cdb-b8cb-e36163523ad2','7055f80a-07b8-4b5d-8e4b-cdadde1a397e'),('5d11abb8-9143-4399-867c-e2fd1f83e83b','2024-04-30 03:37:48','2024-04-30 03:37:48','Handcrafted Wooden Serving Platter','Beautiful handcrafted wooden serving platter with natural wood grain',50,'../static/images/popular-1.jpg','42280fc7-2a36-481e-b580-c3c4947c9ed0','646dd846-374a-40ba-801e-b2f4db440a0c'),('766d9747-d3b8-45cf-952f-4b06cd8fc7d5','2024-04-30 03:37:48','2024-04-30 03:37:48','Hand-carved Wooden Serving Tray','Elegant hand-carved wooden serving tray with intricate floral design',40,'../static/images/popular-1.jpg','3ae95031-d54a-4521-94e1-5259388b1059','646dd846-374a-40ba-801e-b2f4db440a0c'),('8cc16ce0-3c31-4bd7-97fd-1142d1348ee0','2024-04-30 03:37:48','2024-04-30 03:37:48','Tea Cups','A beautiful set of handmade tea cups',40,'../static/images/popular-1.jpg','ff1da302-8e4c-4d1a-80a6-3142057eaaba','2af8a6f8-3add-4f9d-8251-a08385f04f1d'),('90c15dd0-29dd-4553-a86c-ef0bb4068a38','2024-04-30 03:37:48','2024-04-30 03:37:48','Custom Arabic Calligraphy Canvas','Personalized Arabic calligraphy canvas with name or phrase of choice',80,'../static/images/popular-1.jpg','d7360d40-e9f6-4907-97f9-26abb3682e46','66193eb3-f64a-4514-8c09-24ebad971f8d'),('98a876b6-dd63-498d-98ca-04483be462eb','2024-04-30 03:37:48','2024-04-30 03:37:48','Islamic Calligraphy Art','Elegant Islamic calligraphy artwork with gold leaf accents',150,'../static/images/popular-1.jpg','49170b93-fb45-4aad-ad7e-6e2de7c93db7','66193eb3-f64a-4514-8c09-24ebad971f8d'),('9a1aaea5-35f5-4437-99b6-7bbfb0a2e6a6','2024-04-30 03:37:48','2024-04-30 03:37:48','Sterling Silver Pendant Necklace','Elegant sterling silver pendant necklace with natural gemstone',120,'../static/images/popular-1.jpg','faee352b-3515-47d5-b241-36058113445b','f84b48b2-4c5a-4cf7-843e-edeba8da76b1'),('ad5848e5-6728-46ce-9799-653b8d9db89c','2024-04-30 03:37:48','2024-04-30 03:37:48','Handwoven Cotton Hammock','Comfortable handwoven cotton hammock with fringe detailing',35,'../static/images/popular-1.jpg','279bfe78-2754-4788-8d98-952f7ec3cdb1','9d97d306-381f-4f20-aa9f-bc6ba09c53f2'),('bd213826-e322-4850-9e4f-48316205db11','2024-04-30 03:37:48','2024-04-30 03:37:48','Hand-carved Wooden Bowl','Beautifully hand-carved wooden bowl made from sustainable teak wood',50,'../static/images/popular-1.jpg','0aed8128-b34e-4b5e-80fb-708149a2b3a0','646dd846-374a-40ba-801e-b2f4db440a0c'),('bd4dd0ad-c4d4-4b28-8961-fc85dc8a1a48','2024-04-30 03:37:48','2024-04-30 03:37:48','Hand-carved Stone Sculpture','Intricately hand-carved stone sculpture of a lion',300,'../static/images/popular-1.jpg','49170b93-fb45-4aad-ad7e-6e2de7c93db7','233610b8-a3bc-44da-90df-0f089fe0459d'),('c2d209a7-9906-4b6f-b10d-d50775b6ba8a','2024-04-30 03:37:48','2024-04-30 03:37:48','Handwoven Wool Rug','Traditional handwoven wool rug with geometric patterns',200,'../static/images/popular-1.jpg','6fd823cc-72b9-4d6b-becd-0a0c0b4047b8','02a94807-25b4-4b02-b621-d01e4ef8f571'),('db15dea2-2ff8-4380-96fa-f97911138ae9','2024-04-30 03:37:48','2024-04-30 03:37:48','Stained Glass Window Panel','Colorful stained glass window panel with floral design',180,'../static/images/popular-1.jpg','a1cfe7b8-0090-42ee-9d04-e0bf2e320f4c','60b5b9d6-4822-4f66-87ed-7c01948052dc'),('e0b56407-49db-4530-badb-afffe2c909cd','2024-04-30 03:37:48','2024-04-30 03:37:48','Hand-carved Wooden Jewelry Box','Exquisite hand-carved wooden jewelry box with floral motifs',60,'../static/images/popular-1.jpg','d7360d40-e9f6-4907-97f9-26abb3682e46','646dd846-374a-40ba-801e-b2f4db440a0c');
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

-- Dump completed on 2024-04-30  3:38:59
