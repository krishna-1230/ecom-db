-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: outfits_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `admin_supervisors`
--

DROP TABLE IF EXISTS `admin_supervisors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_supervisors` (
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_supervisors`
--

LOCK TABLES `admin_supervisors` WRITE;
/*!40000 ALTER TABLE `admin_supervisors` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_supervisors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_admins_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `merchant_id` varchar(255) DEFAULT NULL,
  `total_price` int unsigned DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cart_items_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (129,'2024-12-15 19:39:35','2024-12-15 20:13:10',NULL,1,'7c45e4d6-329b-4bf2-94ce-d857b4c5b406','P001','M1009',4200,'mens formal','blue','M'),(130,'2024-12-15 19:39:37','2024-12-15 19:39:37',NULL,1,'7c45e4d6-329b-4bf2-94ce-d857b4c5b406','P002','M1009',4200,'women formal','blue','S');
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_requests`
--

DROP TABLE IF EXISTS `merchant_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_requests` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `merchant_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `merchant_id` (`merchant_id`),
  KEY `idx_merchant_requests_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_requests`
--

LOCK TABLES `merchant_requests` WRITE;
/*!40000 ALTER TABLE `merchant_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchant_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchants`
--

DROP TABLE IF EXISTS `merchants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchants` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `merchant_id` varchar(255) NOT NULL,
  `merchant_name` varchar(255) NOT NULL,
  `merchant_email` varchar(255) NOT NULL,
  `merchant_password` varchar(255) NOT NULL,
  `merchant_phone` varchar(255) NOT NULL,
  `merchant_address` varchar(255) NOT NULL,
  `gstin` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `merchant_id` (`merchant_id`),
  UNIQUE KEY `gstin` (`gstin`),
  KEY `idx_merchants_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchants`
--

LOCK TABLES `merchants` WRITE;
/*!40000 ALTER TABLE `merchants` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `invoice_id` varchar(255) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_quantity` int DEFAULT NULL,
  `merchant_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `order_track_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  KEY `idx_orders_deleted_at` (`deleted_at`)
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
-- Table structure for table `product_inventories`
--

DROP TABLE IF EXISTS `product_inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_inventories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `threshold` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id` (`product_id`),
  KEY `idx_product_inventories_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_inventories`
--

LOCK TABLES `product_inventories` WRITE;
/*!40000 ALTER TABLE `product_inventories` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_media`
--

DROP TABLE IF EXISTS `product_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_product_media_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_media`
--

LOCK TABLES `product_media` WRITE;
/*!40000 ALTER TABLE `product_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_requests`
--

DROP TABLE IF EXISTS `product_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_requests` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `additional_info` varchar(255) DEFAULT NULL,
  `merchant_id` varchar(255) DEFAULT NULL,
  `merchant_price` int unsigned DEFAULT NULL,
  `margin` int unsigned DEFAULT NULL,
  `tax` int unsigned DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `product_image` text,
  PRIMARY KEY (`id`),
  KEY `idx_product_requests_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_requests`
--

LOCK TABLES `product_requests` WRITE;
/*!40000 ALTER TABLE `product_requests` DISABLE KEYS */;
INSERT INTO `product_requests` VALUES (1,'2024-12-14 11:53:25','2024-12-14 12:14:56',NULL,'P001','mens formal','this is mens casual clothing','Lightweight and breathable dress and fashionable','S,M,L,XL,XXL','blue,red,black,white','HDY-BLK-XL','Formal','Formal','wash gently','M1009',2500,50,18,'approved','Male','Puma','http://localhost:3000/CoverImages/a7db42168a6441bba226d025dc14d5f6.jpg,http://localhost:3000/CoverImages/84102f60d0794bdfa345e96f42cbea17.jpg,http://localhost:3000/CoverImages/93b3f70ce611431fb268240fd02236e1.jpg,http://localhost:3000/CoverImages/0e3ab50fdcad4484b4c6e5204c2021d2.jpg'),(2,'2024-12-14 11:55:57','2024-12-14 12:15:01',NULL,'P002','women formal','this is women formal clothing','Lightweight and breathable dress and fashionable','S,M,L,XL,XXL','blue,red,black,white,yellow','HDY-BLK-XL','Formal','Formal','wash gently','M1009',2500,50,18,'approved','Female','Puma','http://localhost:3000/CoverImages/e7d9c1cb1f024523b3b16ada642defcf.jpg,http://localhost:3000/CoverImages/7fc137c0c5ea4cb1af696312b77830ba.jpg,http://localhost:3000/CoverImages/004bcb12cec84e6c8ba78900b8e949d3.jpeg,http://localhost:3000/CoverImages/8a1e3d9cf460456f8c7dbdaaa8f410f2.jpg'),(3,'2024-12-14 11:58:38','2024-12-14 12:15:05',NULL,'P003','women casual','this is women casual clothing','Lightweight and breathable dress and fashionable','S,M,L,XL,XXL','blue,red,black,yellow','HDY-BLK-XL','Casual','Casual','wash gently','M1009',1500,50,18,'approved','Female','Puma','http://localhost:3000/CoverImages/5e53430c7a014d3b8a9fe8580b013642.jpg,http://localhost:3000/CoverImages/9e22319571f248f784ecf61e7a66a684.jpg,http://localhost:3000/CoverImages/6b2ec32bbe214cdfa3e7d54a9faad7a6.jpg,http://localhost:3000/CoverImages/d1f9f782c5ee400d82f2deddff857871.jpg'),(4,'2024-12-14 11:59:21','2024-12-14 12:15:09',NULL,'P004','mens casual','this is mens casual clothing','Lightweight and breathable dress and fashionable','S,M,L,XL,XXL','blue,red,black,yellow','HDY-BLK-XL','Casual','Casual','wash gently','M1009',1500,50,18,'approved','Male','Puma','http://localhost:3000/CoverImages/104b14f7d32f49b9b169fce4ed43b0d2.jpg,http://localhost:3000/CoverImages/38e6a95f35644fbd94e7ef398c34a70f.jpg,http://localhost:3000/CoverImages/5d3674fa010e490da2e94b9611c9e52d.jpg,http://localhost:3000/CoverImages/35e338d918dd465f9c5bb4aa57ad2b77.jpg'),(5,'2024-12-14 12:01:31','2024-12-14 12:15:15',NULL,'P005','mens sports','this is mens sports','Lightweight and breathable dress and fashionable','S,M,L,XL,XXL','blue,red,black,yellow','HDY-BLK-XL','Sportswear','Sportswear','wash gently','M1009',2000,50,18,'approved','Male','Puma','http://localhost:3000/CoverImages/b2353fedd0994942be4de54e2d5599fa.jpg,http://localhost:3000/CoverImages/2aa5ee2503194a5d87fce797ea3f3273.jpg,http://localhost:3000/CoverImages/829e7b0b04c849c5b4ed418cb7472c0f.jpg,http://localhost:3000/CoverImages/d0f4cc9c1c7046d8a4917a6de9e5eadd.jpg'),(6,'2024-12-14 12:02:29','2024-12-14 12:15:21',NULL,'P006','women sports','this is women sports','Lightweight and breathable dress and fashionable','S,M,L,XL,XXL','blue,red,black,yellow','HDY-BLK-XL','Sportswear','Sportswear','wash gently','M1009',2000,50,18,'approved','Female','Puma','http://localhost:3000/CoverImages/81be8dd7a2d14a69b6dd88514883229f.jpg,http://localhost:3000/CoverImages/3de2910d8aa74588a3319407b69083e2.jpg,http://localhost:3000/CoverImages/d383732cb70743bb9528687df27d5034.jpg,http://localhost:3000/CoverImages/a0613f37954d4260a90ed496316758bd.jpg'),(7,'2024-12-14 12:04:14','2024-12-14 12:15:27',NULL,'P007','Unisex footwear','Unisex footwear','Unisex footwear, shoes, accessories','S,M,L,XL,XXL','blue,red,black,yellow','HDY-BLK-XL','Footwear','Footwear','wash gently','M1009',2700,50,18,'approved','Unisex','Puma','http://localhost:3000/CoverImages/da36c22c5d9642a481652e5f6b829b52.jpg,http://localhost:3000/CoverImages/66f5ddaa13bb4416a5c357a83e9637a5.jpg'),(8,'2024-12-14 12:10:54','2024-12-14 12:15:32',NULL,'P008','Unisex Accessories','Unisex Accessories','Unisex footwear, shoes, accessories','S,M,L,XL,XXL','blue,red,black,yellow','HDY-BLK-XL','Accessories','Accessories','wash gently','M1009',400,50,18,'approved','Unisex','Puma','http://localhost:3000/CoverImages/ea2720d3cbe44ccf8034c75339112235.jpg,http://localhost:3000/CoverImages/452688a90916450bb387cba35fb1370c.jpg');
/*!40000 ALTER TABLE `product_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `additional_info` varchar(255) DEFAULT NULL,
  `product_image` text,
  `merchant_id` varchar(255) DEFAULT NULL,
  `merchant_price` int unsigned DEFAULT NULL,
  `margin` int unsigned DEFAULT NULL,
  `tax` int unsigned DEFAULT NULL,
  `final_price` int DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_products_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2024-12-14 12:14:56','2024-12-14 12:14:56',NULL,'P001','mens formal','this is mens casual clothing','Lightweight and breathable dress and fashionable','M,L,XL,XXL','blue,red,black,white','HDY-BLK-XL','Formal','Formal','wash gently','http://localhost:3000/CoverImages/a7db42168a6441bba226d025dc14d5f6.jpg,http://localhost:3000/CoverImages/84102f60d0794bdfa345e96f42cbea17.jpg,http://localhost:3000/CoverImages/93b3f70ce611431fb268240fd02236e1.jpg,http://localhost:3000/CoverImages/0e3ab50fdcad4484b4c6e5204c2021d2.jpg','M1009',2500,50,18,4200,'Male','Puma'),(2,'2024-12-14 12:15:01','2024-12-14 12:15:01',NULL,'P002','women formal','this is women formal clothing','Lightweight and breathable dress and fashionable','S,M,L,XL','blue,red,black,white,yellow','HDY-BLK-XL','Formal','Formal','wash gently','http://localhost:3000/CoverImages/e7d9c1cb1f024523b3b16ada642defcf.jpg,http://localhost:3000/CoverImages/7fc137c0c5ea4cb1af696312b77830ba.jpg,http://localhost:3000/CoverImages/004bcb12cec84e6c8ba78900b8e949d3.jpeg,http://localhost:3000/CoverImages/8a1e3d9cf460456f8c7dbdaaa8f410f2.jpg','M1009',2500,50,18,4200,'Female','Puma'),(3,'2024-12-14 12:15:05','2024-12-14 12:15:05',NULL,'P003','women casual','this is women casual clothing','Lightweight and breathable dress and fashionable','S,M,L,XL','blue,red,black,yellow','HDY-BLK-XL','Casual','Casual','wash gently','http://localhost:3000/CoverImages/5e53430c7a014d3b8a9fe8580b013642.jpg,http://localhost:3000/CoverImages/9e22319571f248f784ecf61e7a66a684.jpg,http://localhost:3000/CoverImages/6b2ec32bbe214cdfa3e7d54a9faad7a6.jpg,http://localhost:3000/CoverImages/d1f9f782c5ee400d82f2deddff857871.jpg','M1009',1500,50,18,2520,'Female','Puma'),(4,'2024-12-14 12:15:09','2024-12-14 12:15:09',NULL,'P004','mens casual','this is mens casual clothing','Lightweight and breathable dress and fashionable','M,L,XL,XXL','blue,red,black,yellow','HDY-BLK-XL','Casual','Casual','wash gently','http://localhost:3000/CoverImages/104b14f7d32f49b9b169fce4ed43b0d2.jpg,http://localhost:3000/CoverImages/38e6a95f35644fbd94e7ef398c34a70f.jpg,http://localhost:3000/CoverImages/5d3674fa010e490da2e94b9611c9e52d.jpg,http://localhost:3000/CoverImages/35e338d918dd465f9c5bb4aa57ad2b77.jpg','M1009',1500,50,18,2520,'Male','Puma'),(5,'2024-12-14 12:15:15','2024-12-14 12:15:15',NULL,'P005','mens sports','this is mens sports','Lightweight and breathable dress and fashionable','M,L,XL,XXL','blue,red,black,yellow','HDY-BLK-XL','Sportswear','Sportswear','wash gently','http://localhost:3000/CoverImages/b2353fedd0994942be4de54e2d5599fa.jpg,http://localhost:3000/CoverImages/2aa5ee2503194a5d87fce797ea3f3273.jpg,http://localhost:3000/CoverImages/829e7b0b04c849c5b4ed418cb7472c0f.jpg,http://localhost:3000/CoverImages/d0f4cc9c1c7046d8a4917a6de9e5eadd.jpg','M1009',2000,50,18,3360,'Male','Puma'),(6,'2024-12-14 12:15:21','2024-12-14 12:15:21',NULL,'P006','women sports','this is women sports','Lightweight and breathable dress and fashionable','S,M,L,XL','blue,red,black,yellow','HDY-BLK-XL','Sportswear','Sportswear','wash gently','http://localhost:3000/CoverImages/81be8dd7a2d14a69b6dd88514883229f.jpg,http://localhost:3000/CoverImages/3de2910d8aa74588a3319407b69083e2.jpg,http://localhost:3000/CoverImages/d383732cb70743bb9528687df27d5034.jpg,http://localhost:3000/CoverImages/a0613f37954d4260a90ed496316758bd.jpg','M1009',2000,50,18,3360,'Female','Puma'),(7,'2024-12-14 12:15:27','2024-12-14 12:15:27',NULL,'P007','Unisex footwear','Unisex footwear','Unisex footwear, shoes, accessories','S,M,L,XL,XXL','blue,red,black,yellow','HDY-BLK-XL','Footwear','Footwear','wash gently','http://localhost:3000/CoverImages/da36c22c5d9642a481652e5f6b829b52.jpg,http://localhost:3000/CoverImages/66f5ddaa13bb4416a5c357a83e9637a5.jpg','M1009',2700,50,18,4536,'Unisex','Puma'),(8,'2024-12-14 12:15:32','2024-12-14 12:15:32',NULL,'P008','Unisex Accessories','Unisex Accessories','Unisex footwear, shoes, accessories','S,M,L,XL,XXL','blue,red,black,yellow','HDY-BLK-XL','Accessories','Accessories','wash gently','http://localhost:3000/CoverImages/ea2720d3cbe44ccf8034c75339112235.jpg,http://localhost:3000/CoverImages/452688a90916450bb387cba35fb1370c.jpg','M1009',400,50,18,672,'Unisex','Puma');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_media`
--

DROP TABLE IF EXISTS `request_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_product_media_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_media`
--

LOCK TABLES `request_media` WRITE;
/*!40000 ALTER TABLE `request_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_infos`
--

DROP TABLE IF EXISTS `shipping_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_infos` (
  `user_id` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `address_id` int NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `address_id` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_infos`
--

LOCK TABLES `shipping_infos` WRITE;
/*!40000 ALTER TABLE `shipping_infos` DISABLE KEYS */;
INSERT INTO `shipping_infos` VALUES ('7c45e4d6-329b-4bf2-94ce-d857b4c5b406','a','a','a','a','a','a','a',22),('7c45e4d6-329b-4bf2-94ce-d857b4c5b406','q','q','q','q','q','q','aq',23),('7c45e4d6-329b-4bf2-94ce-d857b4c5b406','q','q','q','q','q','q','q',24),('7c45e4d6-329b-4bf2-94ce-d857b4c5b406','s','s','s','s','s','s','s',25),('7c45e4d6-329b-4bf2-94ce-d857b4c5b406','sa','sa','sa','sa','sa','sa','sa',26);
/*!40000 ALTER TABLE `shipping_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_users_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-11-18 14:14:07','2024-11-18 14:14:07',NULL,'john_doe','john.doe@example.com','dda69783f28fdf6f1c5a83e8400f2472e9300887d1dffffe12a07b92a3d0aa25','836f82db99121b3481011f16b49dfa5fbc714a0d1b1b9f784a1ebbbf5b39577f'),(2,'2024-11-18 14:16:18','2024-11-18 14:16:18',NULL,'john1_doe','john1.doe@example.com','dda69783f28fdf6f1c5a83e8400f2472e9300887d1dffffe12a07b92a3d0aa25','4d77a88f6824c7e971b0aaf475d6e07b1e9719fb87a54436c0d094f52a843a59'),(3,'2024-11-19 15:28:48','2024-11-19 15:28:48',NULL,'gg','gg@gg.com','405199be295f1a1c532e6cb8154af39bdd0302b57a23c599af27d87173951ff3','5d3b74d96565c18d28fadf5909503c568f09580ac05c3bddfb46f2a3448f0b58'),(4,'2024-11-19 15:29:05','2024-11-19 15:29:05',NULL,'ggw','gg@gg.comw','da381791ca693564862b2368fe66be435a99a402604385f30312801b7b73ec5f','76bbae9dffb78f3216de667e5a68a1fce47394dadc3687c7f332e62534c1a4f8'),(5,'2024-11-19 15:29:27','2024-11-19 15:29:27',NULL,'aa','aa@aa','961b6dd3ede3cb8ecbaacbd68de040cd78eb2ed5889130cceb4c49268ea4d506','215f8022c42eccc635685ca09c19a52e75c22f87e0a1fd4458ee897a0d519f59'),(6,'2024-11-25 02:43:09','2024-11-25 02:43:09',NULL,'z','z@z','594e519ae499312b29433b7dd8a97ff068defcba9755b6d5d00e84c524d67b06','09db6341d724a7b3ab70a3e165135062fb6d0c9495145c5c6ed75f41640fe93d'),(7,'2024-11-25 02:45:34','2024-11-25 02:45:34',NULL,'x','x@x','2d711642b726b04401627ca9fbac32f5c8530fb1903cc4db02258717921a4881','68c3a2daf263c255b1d86c2027d4bbdf956324d7fb29b2441e4664e98bf9cbc5'),(8,'2024-11-25 03:05:02','2024-11-25 03:05:02',NULL,'a','a@a','ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb','51f18cabe58695595f6f02603dec1172b2126681f4b20098fec7ab760fe61d14'),(9,'2024-11-30 07:20:49','2024-11-30 07:20:49',NULL,'kg','kg@kg','f3308ddcc08db41f9a837b684224af05c28d9eadcbc655e23f105b56ae47425e','b96277ce4fa39e450392295b16eb46475fbcdc8bbe9bb83a6d2f938313c7f903'),(10,'2024-11-30 07:23:53','2024-11-30 07:23:53',NULL,'krishspyk1230@gmail.com','krishspyk1230@gmail.com','c450d2ca63cf72405f93a070aadf4042ef3d75e4eea413248cd490adc7ffa15b','1782869ac868585ba7adcbde7b446d2e7793e63507f422c4365d5ba89cbc7c21'),(11,'2024-11-30 07:46:11','2024-11-30 07:46:11',NULL,'krish','krish@a','c3a3f765526ccadf2a3c33aa4dca4eeb38005441030d622b380d55cc575a55d3','8e5a538f980682096560ea2315089c426c814e1212b4477219096b781b72605c'),(12,'2024-11-30 14:20:08','2024-11-30 14:20:08',NULL,'john','john@gmail.com','$2a$10$hs/o/HJIZtVvvMu6aYQ6yuK8w8HBMELOaGHu0Z1pdZuNF42B1pDX6','a1d84aed-0726-43ad-ba4a-3e77948c2e41'),(13,'2024-11-30 14:52:54','2024-11-30 14:52:54',NULL,'aa','aa@aa.com','$2a$10$hvfVYoUd2vHd40iNwzaO3OuwWDyBh9iKre4Zh2RtNQNguoRSuGCEC','550e26ed-a1af-4b8a-82fd-583c5b3e26b8'),(14,'2024-11-30 14:54:25','2024-11-30 14:54:25',NULL,'sab','sab@sab.com','$2a$10$pB9ioDLmaWVjC23lQRMayeYrT.5Y20JSX0nBkhOruS5v7hhnsw5nG','5e958e4f-5774-4de0-a132-e67285d06174'),(15,'2024-11-30 15:11:11','2024-12-12 14:47:15',NULL,'sa','sa@gmail.com','$2a$10$rJUMA2uWYzlRg0gv37/P5OgbN6nr9VBRR7es2/0sFycnh.6nPKygq','7c45e4d6-329b-4bf2-94ce-d857b4c5b406'),(16,'2024-11-30 16:33:44','2024-11-30 16:33:44',NULL,'zzz','zzz@zzz','$2a$10$Q2IRjzJkJC72FRlJZU3CfOFidlMX.90gPWc2ZsWhCkeDfBudNTmE.','b25836f7-bdb4-4502-a07c-018584203b25'),(17,'2024-12-01 09:15:13','2024-12-01 09:15:13',NULL,'andal','andal.s.gopal@gmail.com','$2a$10$f0qvAdLCjvHgYo09quLckeO1.968dWZ4PqU3tL9cAsNc9zNt7bPqu','9788987b-7db7-418e-a29f-12d70ee1d6d9'),(18,'2024-12-01 09:48:39','2024-12-01 09:48:39',NULL,'newuser','newuser@example.com','$2a$10$1Da0bjEqSIOiDjfa9EnDd.zcDnmBHPrYrMg3dF0pUztuy5xVeDrra','bbae1ab3-e8cd-431f-8430-5310a699b9de'),(19,'2024-12-01 09:49:56','2024-12-01 09:49:56',NULL,'newuser1','newuser1@example.com','$2a$10$ceVDWLpQoD6cArEE5kXE7.TsWcBhUIrTgd41XhTBBwkghzgdZSKvu','df2ba89e-e429-4e4b-9e94-bb1dd8dca603'),(20,'2024-12-01 09:50:41','2024-12-01 09:50:41',NULL,'newuser2','newuser2@example.com','$2a$10$MVfDDsdOd01ehBea/iNBFOyxmUtWujJxQmSyqJNS8EPSFZlALSmbe','b926576b-cdfe-4ad5-b032-e07873504ccc'),(21,'2024-12-01 09:52:23','2024-12-01 09:52:23',NULL,'newuser3','newuser3@example.com','$2a$10$6pGyEIOeCPlJMGmtz.spcOvEF8mygXjYxHXEXBNCt0dGEOrt0csp2','3ed6572c-46f3-4b0e-89d9-3bc2043a39ef'),(22,'2024-12-01 09:53:20','2024-12-01 09:53:20',NULL,'newuser4','newuser4@example.com','$2a$10$xELgGCDNF01fPoGggCsOD.QghtLlys8fLc7ktz2vzhsVMNQHDZt6e','fb29f1af-6a21-4bea-89a2-18a7294c30e7'),(23,'2024-12-01 09:54:26','2024-12-01 09:54:26',NULL,'newuser5','newuser5@example.com','$2a$10$PH5zkgI3VpagZoRVD6cub.GDX79kxPYJ63Yza.t4Y4ZhE0.nPRC.m','a3d0a5a4-9d38-4454-830a-a6d03a0e6e8a'),(24,'2024-12-01 09:55:00','2024-12-01 09:55:00',NULL,'newguy','new@new','$2a$10$gUnrdxpof3J2ieFTQOJ8wOKuvFzOoskXtuJae4gT4ht2Ao2EcNBUq','48061e08-e06f-4370-b67f-d789ffbd454d'),(25,'2024-12-10 11:22:14','2024-12-10 11:22:14',NULL,'bro','bro@gmail.com','$2a$10$NrI5HcN8K4gQYFCGDUVNM.FJgVMJlGd/WCmOwXF4UniVolby/jqOa','c1b61ec3-903a-4b91-a6db-041c2dfe733a');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist_items`
--

DROP TABLE IF EXISTS `wishlist_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `merchant_id` varchar(255) DEFAULT NULL,
  `total_price` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_wishlist_items_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist_items`
--

LOCK TABLES `wishlist_items` WRITE;
/*!40000 ALTER TABLE `wishlist_items` DISABLE KEYS */;
INSERT INTO `wishlist_items` VALUES (24,'2024-12-11 16:15:08','2024-12-11 16:15:08',NULL,'sweatshirt',0,'7c45e4d6-329b-4bf2-94ce-d857b4c5b406','P015','',1344),(25,'2024-12-11 18:29:42','2024-12-11 18:29:42',NULL,'sweater',0,'7c45e4d6-329b-4bf2-94ce-d857b4c5b406','P012','',1344),(26,'2024-12-11 18:36:42','2024-12-11 18:36:42',NULL,'sweatshirt',0,'7c45e4d6-329b-4bf2-94ce-d857b4c5b406','P015','',1344),(27,'2024-12-12 14:56:59','2024-12-12 14:56:59',NULL,'sweatshirt',0,'7c45e4d6-329b-4bf2-94ce-d857b4c5b406','P015','',1344),(37,'2024-12-15 03:00:30','2024-12-15 03:00:30',NULL,'mens formal',0,'7c45e4d6-329b-4bf2-94ce-d857b4c5b406','P001','M1009',4200),(38,'2024-12-15 03:00:31','2024-12-15 03:00:31',NULL,'mens formal',0,'7c45e4d6-329b-4bf2-94ce-d857b4c5b406','P001','M1009',4200),(39,'2024-12-15 05:02:40','2024-12-15 05:02:40',NULL,'mens formal',0,'7c45e4d6-329b-4bf2-94ce-d857b4c5b406','P001','M1009',4200);
/*!40000 ALTER TABLE `wishlist_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-16  1:50:34
