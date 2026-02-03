-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: productsapplication
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `comment_id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `product_id` varchar(36) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES ('125bd33e-8150-4de1-90a3-380c2b814c82','g','ggg','rrrrga th qah jhaw','443c2488-21eb-4986-8e02-9a84ce7cf657'),('20d4daae-1b0d-4974-be56-62c08ae9e099','Евгений ','htr','thrt rtsuws stuwau 6uwq64u ','6f1a6b96-6cd2-439c-a648-88b9f287f7d2'),('2b2a69a0-e751-11ed-a05b-0242ac120003','et fugit eligendi deleniti quidem qui sint nihil autem','Presley.Mueller@myrl.com','doloribus at sed quis culpa deserunt consectetur qui praesentium\naccusamus fugiat dicta\nvoluptatem rerum ut voluptate autem\nvoluptatem repellendus aspernatur dolorem in','9b4d4a1a-5224-4ad4-b4e3-053dcbfa0f3c'),('2b2a6b1c-e751-11ed-a05b-0242ac120003','repellat consequatur praesentium vel minus molestias voluptatum','Dallas@ole.me','maiores sed dolores similique labore et inventore et\nquasi temporibus esse sunt id et\neos voluptatem aliquam\naliquid ratione corporis molestiae mollitia quia et magnam dolor','e144947e-3af7-4d3c-8327-ecf39255617d'),('2b2a6cac-e751-11ed-a05b-0242ac120003','et omnis dolorem','Mallory_Kunze@marie.org','ut voluptatem corrupti velit\nad voluptatem maiores\net nisi velit vero accusamus maiores\nvoluptates quia aliquid ullam eaque','e144947e-3af7-4d3c-8327-ecf39255617d'),('3cd5e9bd-0467-4768-97f6-6ee3f64a25f8','id labore ex et quam laborum','Eliffseo@gardner.biz','00000001111111111111laudanfvvvtium greniefgnm quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium','5c5f94eb-7e38-45e1-b7c9-57dfb7a2b93c'),('5df60120-cd02-4da9-b652-5bf978aac1e4','wedw','wdq','d','4f4b4f16-77cb-4c24-bcae-238cde406fb3'),('8bd349b8-d329-4fe4-a2ae-d612ae10e49e','q','qsq','werg ','443c2488-21eb-4986-8e02-9a84ce7cf657'),('a9ae2a60-97d5-4aed-93d6-ec2e085c11a5','id labore ex et quam laborum','Eliseo@gardner.biz','1111111111111laudantium greniefgnm quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium','5c5f94eb-7e38-45e1-b7c9-57dfb7a2b93c'),('cac1ae74-204d-453c-a395-032b0f7313e7','id labore ex et quam laborum','Eliseo@gardner.biz','laudantium greniefgnm quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium','5c5f94eb-7e38-45e1-b7c9-57dfb7a2b93c'),('d2b24f7d-64a3-44c9-83d3-dc145e7d9604','id labore ex et quam laborum','Eliseo@gardner.biz','laudantium grenignm quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium','5c5f94eb-7e38-45e1-b7c9-57dfb7a2b93c'),('dc698fee-e47b-11ed-b5ea-0242ac120002','id labore ex et quam laborum','Eliseo@gardner.biz','laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium','5c5f94eb-7e38-45e1-b7c9-57dfb7a2b93c'),('dc699412-e47b-11ed-b5ea-0242ac120002','quo vero reiciendis velit similique earum','Jayne_Kuhic@sydney.com','est natus enim nihil est dolore omnis voluptatem numquam\net omnis occaecati quod ullam at\nvoluptatem error expedita pariatur\nnihil sint nostrum voluptatem reiciendis et','5c5f94eb-7e38-45e1-b7c9-57dfb7a2b93c'),('dc69b7b2-e47b-11ed-b5ea-0242ac120002','eaque et deleniti atque tenetur ut quo ut','Carmen_Keeling@caroline.name','voluptate iusto quis nobis reprehenderit ipsum amet nulla\nquia quas dolores velit et non\naut quia necessitatibus\nnostrum quaerat nulla et accusamus nisi facilis','a3d0fa3b-8e2c-4d19-bf2a-950b8c998a58');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `image_id` varchar(36) NOT NULL,
  `url` text NOT NULL,
  `product_id` varchar(36) NOT NULL,
  `main` tinyint(1) NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES ('2010c73e-e446-11ed-b5ea-0242ac120002','https://via.placeholder.com/150/1fe46f','6f1a6b96-6cd2-439c-a648-88b9f287f7d2',0),('2010c964-e446-11ed-b5ea-0242ac120002','https://via.placeholder.com/150/56acb2','6f1a6b96-6cd2-439c-a648-88b9f287f7d2',0),('2010cc20-e446-11ed-b5ea-0242ac120002','https://via.placeholder.com/150/8985dc','6f1a6b96-6cd2-439c-a648-88b9f287f7d2',1),('26c35029-ecf9-4953-bc3e-4b37dd63cc40','sc','efd82d85-8dd6-4979-bf5c-96933d9c2f7d',1),('26f7c8d2-10f9-49d0-9fee-c72af490c2a9','dvv','9b4d4a1a-5224-4ad4-b4e3-053dcbfa0f3c',1),('3c074bbb-94ee-43be-a37d-32ba3b9f74f1','dfbdfb.ccx','ad84766c-a2b7-4510-87d7-ff4141135164',0),('708886dc-e45b-11ed-b5ea-0242ac120002','https://via.placeholder.com/150/f66b97','a3d0fa3b-8e2c-4d19-bf2a-950b8c998a58',0),('708889f2-e45b-11ed-b5ea-0242ac120002','https://via.placeholder.com/150/56a8c2','a3d0fa3b-8e2c-4d19-bf2a-950b8c998a58',0),('70888b46-e45b-11ed-b5ea-0242ac120002','https://via.placeholder.com/150/b0f7cc','a3d0fa3b-8e2c-4d19-bf2a-950b8c998a58',0),('70888c90-e45b-11ed-b5ea-0242ac120002','https://via.placeholder.com/150/54176f','a3d0fa3b-8e2c-4d19-bf2a-950b8c998a58',1),('a0f2a9a6-e45b-11ed-b5ea-0242ac120002','https://via.placeholder.com/150/51aa97','9b4d4a1a-5224-4ad4-b4e3-053dcbfa0f3c',0),('a0f2ae9c-e45b-11ed-b5ea-0242ac120002','https://via.placeholder.com/150/810b14','9b4d4a1a-5224-4ad4-b4e3-053dcbfa0f3c',0),('a2612b6b-e5c6-4e30-b088-cd16efdf7e8b','2','443c2488-21eb-4986-8e02-9a84ce7cf657',0),('af73205c-f06c-43f4-90f0-192cdddea623','22','443c2488-21eb-4986-8e02-9a84ce7cf657',1),('b1fd06af-8dbd-47ba-95ea-ae19f0263d2b','dvvvv','9b4d4a1a-5224-4ad4-b4e3-053dcbfa0f3c',1),('b2e0a99d-eaf3-462b-a470-18885ae6e5ed','edfef.yyu','ad84766c-a2b7-4510-87d7-ff4141135164',0),('c65bc984-e45b-11ed-b5ea-0242ac120002','https://via.placeholder.com/150/61a65','efd82d85-8dd6-4979-bf5c-96933d9c2f7d',0),('c65bd136-e45b-11ed-b5ea-0242ac120002','https://via.placeholder.com/150/f9cee5','efd82d85-8dd6-4979-bf5c-96933d9c2f7d',0),('c65bd316-e45b-11ed-b5ea-0242ac120002','https://via.placeholder.com/150/fdf73e','efd82d85-8dd6-4979-bf5c-96933d9c2f7d',0),('ca84686e-e45b-11ed-b5ea-0242ac120002','https://via.placeholder.com/150/92c952','5c5f94eb-7e38-45e1-b7c9-57dfb7a2b93c',0),('d524e09b-13ee-4d27-8e42-74771fd258cf','122','ad84766c-a2b7-4510-87d7-ff4141135164',0);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` varchar(36) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('443c2488-21eb-4986-8e02-9a84ce7cf657','Galaxy A52','            A mid-range smartphone with a large battery and display.',17999.25),('4f4b4f16-77cb-4c24-bcae-238cde406fb3','Reno6','A stylish smartphone with advanced camera capabilities.',25999.50),('59ef6c67-69d5-4d50-b1b3-8cee7762938e','wrwrwrwr','arga arth t hah ',111.00),('5c5f94eb-7e38-45e1-b7c9-57dfb7a2b93c','Nova 8i7','                                    A mid-range smartphone with a large display and great camera.',12000.99),('6f1a6b96-6cd2-439c-a648-88b9f287f7d2','Moto G60','                                                                                                                                                            A reliable and durable smartphone with a long-lasting battery.',15999.00),('7a5403f0-d2e3-4aef-81a5-fb97e3409cb0','12','22344',56999.00),('88a3f826-9c3d-4f7c-a56e-156d7c3f3b28','Phone X','A sleek and powerful smartphone with the latest features.',8499.99),('9b4d4a1a-5224-4ad4-b4e3-053dcbfa0f3c','iPhone SE','                                                                                                                                                            A compact and affordable iPhone with great performance.',38999.50),('a3d0fa3b-8e2c-4d19-bf2a-950b8c998a58','Galaxy Z Flip 38','                                                            A foldable smartphone with a unique design.',79999.00),('ad84766c-a2b7-4510-87d7-ff4141135164','Siemens A50',NULL,NULL),('ba50f14e-da5f-43fc-a977-33b3ac56c736','Galaxy A52','                        A mid-range smartphone with a large battery and display.',27999.25),('bd58d392-a589-4bc2-9b73-6da91540f60d','qqqq','rrrr',112.00),('e144947e-3af7-4d3c-8327-ecf39255617d','Zenfone 8','A compact smartphone with premium features.',25999.75),('e7ab72e8-ff36-47a0-b8b8-688703d0aa41','wwwwwwww','sgbsrnbsh  f j hg dhn snh',1111.00),('efd82d85-8dd6-4979-bf5c-96933d9c2f7d','Redmi Note 11a','                                                                                                                                                                                                A budget-friendly smartphone with a powerful processor.',79990.00),('f6838232-b43d-45aa-9083-fbe7280be64e','herheehe','hmdhg srj arstjasrej',2223.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `similar_products`
--

DROP TABLE IF EXISTS `similar_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `similar_products` (
  `reference_product` varchar(36) NOT NULL,
  `similar_product` varchar(36) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `first_product` (`reference_product`),
  KEY `second_product` (`similar_product`),
  CONSTRAINT `similar_products_ibfk_1` FOREIGN KEY (`reference_product`) REFERENCES `products` (`product_id`),
  CONSTRAINT `similar_products_ibfk_2` FOREIGN KEY (`similar_product`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `similar_products`
--

LOCK TABLES `similar_products` WRITE;
/*!40000 ALTER TABLE `similar_products` DISABLE KEYS */;
INSERT INTO `similar_products` VALUES ('efd82d85-8dd6-4979-bf5c-96933d9c2f7d','e144947e-3af7-4d3c-8327-ecf39255617d',2),('a3d0fa3b-8e2c-4d19-bf2a-950b8c998a58','9b4d4a1a-5224-4ad4-b4e3-053dcbfa0f3c',3),('ba50f14e-da5f-43fc-a977-33b3ac56c736','a3d0fa3b-8e2c-4d19-bf2a-950b8c998a58',8),('4f4b4f16-77cb-4c24-bcae-238cde406fb3','a3d0fa3b-8e2c-4d19-bf2a-950b8c998a58',13),('e7ab72e8-ff36-47a0-b8b8-688703d0aa41','443c2488-21eb-4986-8e02-9a84ce7cf657',26),('e7ab72e8-ff36-47a0-b8b8-688703d0aa41','ad84766c-a2b7-4510-87d7-ff4141135164',27),('f6838232-b43d-45aa-9083-fbe7280be64e','443c2488-21eb-4986-8e02-9a84ce7cf657',28),('f6838232-b43d-45aa-9083-fbe7280be64e','ad84766c-a2b7-4510-87d7-ff4141135164',29),('7a5403f0-d2e3-4aef-81a5-fb97e3409cb0','4f4b4f16-77cb-4c24-bcae-238cde406fb3',30),('59ef6c67-69d5-4d50-b1b3-8cee7762938e','443c2488-21eb-4986-8e02-9a84ce7cf657',32),('59ef6c67-69d5-4d50-b1b3-8cee7762938e','9b4d4a1a-5224-4ad4-b4e3-053dcbfa0f3c',33),('4f4b4f16-77cb-4c24-bcae-238cde406fb3','4f4b4f16-77cb-4c24-bcae-238cde406fb3',34),('4f4b4f16-77cb-4c24-bcae-238cde406fb3','59ef6c67-69d5-4d50-b1b3-8cee7762938e',35),('443c2488-21eb-4986-8e02-9a84ce7cf657','443c2488-21eb-4986-8e02-9a84ce7cf657',36),('6f1a6b96-6cd2-439c-a648-88b9f287f7d2','4f4b4f16-77cb-4c24-bcae-238cde406fb3',37),('6f1a6b96-6cd2-439c-a648-88b9f287f7d2','59ef6c67-69d5-4d50-b1b3-8cee7762938e',38);
/*!40000 ALTER TABLE `similar_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'editor','editor1'),(2,'admin','admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-03 20:28:21
