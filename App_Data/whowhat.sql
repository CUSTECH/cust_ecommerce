-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 192.192.230.161    Database: whowhat
-- ------------------------------------------------------
-- Server version	5.1.73

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `Oid` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '編號',
  `order_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '訂購者',
  `order_detail` text COLLATE utf8_unicode_ci COMMENT '訂單內容',
  `order_date` datetime DEFAULT NULL COMMENT '訂單日期',
  `order_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '訂單狀態',
  PRIMARY KEY (`Oid`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (17,'Order_94301413','訂購者','\r\n 商品名稱 安堤天然柑橘糖  商品編號 R00000002  商品售價 NT$50.00  商品數量 1 \r\n\r\n 商品名稱 天然無患子淨化洗髮露  商品編號 R00000007  商品售價 NT$300.00  商品數量 1 \r\n\r\n 商品名稱 中華古坑濾掛式咖啡  商品編號 R00000009  商品售價 NT$299.00  商品數量 1 \r\n \r\n 消費總金額 = NT$649.00 付款方式 : 貨到付款 物流方式 : 快遞 購買者電話號碼 : 0953603835 購買者地址 : 123 ','2017-03-06 00:00:00','訂單收到'),(18,'Order_35259541','訂購者','\r\n 商品名稱 植萃亮妍淨白凍膜  商品編號 R00000005  商品售價 NT$299.00  商品數量 1 \r\n \r\n 消費總金額 = NT$299.00 付款方式 : 貨到付款 物流方式 : 快遞 購買者電話號碼 : 0988776655 購買者地址 : Rew 訂單編號 Order_35259541','2017-05-08 00:00:00','訂單收到'),(19,'Order_33520560','訂購者','\r\n 商品名稱 植萃亮妍淨白凍膜  商品編號 R00000005  商品售價 NT$299.00  商品數量 1 \r\n \r\n 消費總金額 = NT$299.00 付款方式 : 貨到付款 物流方式 : 快遞 購買者電話號碼 : 0988776655 購買者地址 : Rew 訂單編號 Order_33520560','2017-05-08 00:00:00','訂單收到'),(20,'Order_91302052','訂購者','\r\n 商品名稱 植萃亮妍淨白凍膜  商品編號 R00000005  商品售價 NT$299.00  商品數量 1 \r\n \r\n 消費總金額 = NT$299.00 付款方式 : 貨到付款 物流方式 : 快遞 購買者電話號碼 : 0988776655 購買者地址 : Rew 訂單編號 Order_91302052','2017-05-08 00:00:00','訂單收到'),(21,'Order_21200079','訂購者','\r\n 商品名稱 安堤天然柑橘糖  商品編號 R00000002  商品售價 NT$50.00  商品數量 1 \r\n \r\n 消費總金額 = NT$50.00 付款方式 : 貨到付款 物流方式 : 自行取貨 購買者電話號碼 : 27864458 購買者地址 : Www 訂單編號 Order_21200079','2017-05-08 00:00:00','訂單收到'),(22,'Order_08497486','訂購者','\r\n 商品名稱 安堤天然柑橘糖  商品編號 R00000002  商品售價 NT$50.00  商品數量 1 \r\n \r\n 消費總金額 = NT$50.00 付款方式 : 貨到付款 物流方式 : 自行取貨 購買者電話號碼 : 27864458 購買者地址 : Www 訂單編號 Order_08497486','2017-05-08 00:00:00','訂單收到'),(23,'Order_35928392','訂購者','\r\n 商品名稱 安堤天然柑橘糖  商品編號 R00000002  商品售價 NT$50.00  商品數量 1 \r\n \r\n 消費總金額 = NT$50.00 付款方式 : 轉帳 物流方式 : 超商取貨 購買者電話號碼 : 27864458 購買者地址 : Fgg 訂單編號 Order_35928392','2017-05-08 00:00:00','訂單收到'),(24,'Order_13249491','訂購者','\r\n 商品名稱 安堤天然柑橘糖  商品編號 R00000002  商品售價 NT$50.00  商品數量 1 \r\n\r\n 商品名稱 中華古坑咖啡豆  商品編號 R00000010  商品售價 NT$599.00  商品數量 1 \r\n \r\n 消費總金額 = NT$649.00 付款方式 : 貨到付款 物流方式 : 快遞 購買者電話號碼 : 123456787 購買者地址 : 111 訂單編號 Order_13249491','2017-05-09 00:00:00','訂單收到'),(25,'Order_68758636','訂購者','\r\n 商品名稱 安堤天然柑橘糖  商品編號 R00000002  商品售價 NT$50.00  商品數量 1 \r\n\r\n 商品名稱 中華古坑咖啡豆  商品編號 R00000010  商品售價 NT$599.00  商品數量 1 \r\n \r\n 消費總金額 = NT$649.00 付款方式 : 貨到付款 物流方式 : 快遞 購買者電話號碼 : 11111111 購買者地址 : 111 訂單編號 Order_68758636','2017-05-09 00:00:00','訂單收到'),(16,'order_1','孫建仁','\r\n 商品名稱 安堤天然柑橘糖  商品編號 R00000002  商品售價 NT$50.00  商品數量 1 \r\n\r\n 商品名稱 中華古坑濾掛式咖啡  商品編號 R00000009  商品售價 NT$299.00  商品數量 1 \r\n \r\n 消費總金額 = NT$349.00 付款方式 : 貨到付款 物流方式 : 快遞 購買者電話號碼 : 0953603835 購買者地址 : 123456 訂單編號 Order_wuzLZsYe','2017-02-24 00:00:00','訂單收到'),(26,'Order_86668449','訂購者','\r\n 商品名稱 安堤天然柑橘糖  商品編號 R00000002  商品售價 NT$50.00  商品數量 1 \r\n\r\n 商品名稱 中華古坑咖啡豆  商品編號 R00000010  商品售價 NT$599.00  商品數量 1 \r\n \r\n 消費總金額 = NT$649.00 付款方式 : 貨到付款 物流方式 : 快遞 購買者電話號碼 : 0987109182 購買者地址 : 中華科大 訂單編號 Order_86668449','2017-05-16 00:00:00','訂單收到'),(27,'Order_70694201','訂購者','\r\n 商品名稱 植萃亮妍淨白凍膜  商品編號 R00000005  商品售價 NT$299.00  商品數量 1 \r\n\r\n 商品名稱 天然無患子淨化洗髮露  商品編號 R00000007  商品售價 NT$300.00  商品數量 2 \r\n \r\n 消費總金額 = NT$899.00 付款方式 : 貨到付款 物流方式 : 自行取貨 購買者電話號碼 : 7894656131 購買者地址 : 新北市汐止區 訂單編號 Order_70694201','2017-05-16 00:00:00','訂單收到'),(28,'Order_34489997','訂購者','\r\n 商品名稱 安堤天然柑橘糖  商品編號 R00000002  商品售價 NT$50.00  商品數量 1 \r\n \r\n 消費總金額 = NT$50.00 付款方式 : 貨到付款 物流方式 : 快遞 購買者電話號碼 : 0987109182 購買者地址 : 1234 訂單編號 Order_34489997','2017-05-16 00:00:00','訂單收到'),(29,'Order_98558764','訂購者','\r\n 商品名稱 安堤天然柑橘糖  商品編號 R00000002  商品售價 NT$50.00  商品數量 1 \r\n\r\n 商品名稱 植萃亮妍淨白凍膜  商品編號 R00000005  商品售價 NT$299.00  商品數量 1 \r\n \r\n 消費總金額 = NT$349.00 付款方式 : 信用卡支付 物流方式 : 自行取貨 購買者電話號碼 : 0123456 購買者地址 : 桃園市八德區 訂單編號 Order_98558764','2017-05-16 00:00:00','訂單收到'),(30,'Order_25437143','訂購者','\r\n 商品名稱 安堤低糖綜合蔬果酵素  商品編號 R00000001  商品售價 NT$990.00  商品數量 2 \r\n\r\n 商品名稱 安堤天然柑橘糖  商品編號 R00000002  商品售價 NT$50.00  商品數量 1 \r\n \r\n 消費總金額 = NT$2,030.00 付款方式 : 貨到付款 物流方式 : 快遞 購買者電話號碼 : 0988856397 購買者地址 : 11 22 33 Taiwan 訂單編號 Order_25437143','2017-05-24 00:00:00','訂單收到'),(31,'Order_08949289','訂購者','\r\n 商品名稱 安堤低糖綜合蔬果酵素  商品編號 R00000001  商品售價 NT$990.00  商品數量 2 \r\n\r\n 商品名稱 安堤天然柑橘糖  商品編號 R00000002  商品售價 NT$50.00  商品數量 1 \r\n \r\n 消費總金額 = NT$2,030.00 付款方式 : 貨到付款 物流方式 : 快遞 購買者電話號碼 : 0988856397 購買者地址 : 123 TTT 訂單編號 Order_08949289','2017-05-24 00:00:00','訂單收到'),(32,'Order_30020185','訂購者','\r\n 商品名稱 安堤天然柑橘糖  商品編號 R00000002  商品售價 NT$50.00  商品數量 1 \r\n \r\n 消費總金額 = NT$50.00 付款方式 : 貨到付款 物流方式 : 郵寄 購買者電話號碼 : 02365987 購買者地址 : eew 訂單編號 Order_30020185','2017-06-07 00:00:00','訂單收到');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `Oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '識別碼',
  `category_id` int(11) DEFAULT NULL COMMENT '主鍵 (類別關連code_category)',
  `Oid_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '編號',
  `supplier` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品廠商',
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品類別',
  `product_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品編號',
  `category_id_2` int(11) DEFAULT NULL COMMENT '類別主鍵',
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品名稱',
  `create_date` datetime DEFAULT NULL COMMENT '登錄日期',
  `price` int(11) DEFAULT NULL COMMENT '商品售價',
  `price_discount rate` int(3) DEFAULT NULL COMMENT '商品折數',
  `descript` text COLLATE utf8_unicode_ci COMMENT '商品描述',
  `disabled` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否刪除',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最後更新時間',
  `program` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '程式',
  `cost` int(11) DEFAULT NULL COMMENT '商品成本價',
  `unit_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品單位',
  `video_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品影像名稱',
  `stock_count` int(11) DEFAULT NULL COMMENT '商品庫存量',
  `stock_safe` int(11) DEFAULT NULL COMMENT '商品安全庫存量',
  `price_original` int(11) DEFAULT NULL COMMENT '商品原價',
  PRIMARY KEY (`Oid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'1','瑞和','保健食品','R00000001',1,'安堤低糖綜合蔬果酵素','2017-02-07 00:00:00',990,50,'保健食品','No','2017-02-06 16:00:00','N/A',600,'瓶','安堤低糖綜合蔬果酵素001',60,15,890),(2,1,'2','瑞和','保健食品','R00000002',1,'安堤天然柑橘糖','2017-02-07 00:00:00',50,0,'保健食品','No','2017-02-06 16:00:00','N/A',30,'包','安堤天然柑橘糖001',100,30,50),(3,2,'3','瑞和','臉部保養','R00000003',2,'逆齡奇肌植萃精華組','2017-02-07 00:00:00',1280,0,'保養品','No','2017-02-06 16:00:00','N/A',600,'盒','逆齡奇肌植萃精華組001',100,20,1280),(4,2,'4','瑞和','臉部保養','R00000004',2,'逆齡喚妍植萃霜膜組','2017-02-07 00:00:00',1280,80,'保養品','No','2017-02-06 16:00:00','N/A',600,'盒','逆齡喚妍植萃霜膜組001',100,20,1280),(5,2,'5','瑞和','臉部保養','R00000005',2,'植萃亮妍淨白凍膜','2017-02-07 00:00:00',299,0,'保養品','No','2017-02-06 16:00:00','N/A',150,'組(10片入)','植萃亮妍淨白凍膜001',100,20,299),(6,3,'6','瑞和','洗沐用品','R00000006',3,'天然無患子潔淨組','2017-02-07 00:00:00',599,0,'洗沐用品','No','2017-02-06 16:00:00','N/A',300,'組','天然無患子潔淨組001',0,20,599),(7,3,'7','瑞和','洗沐用品','R00000007',3,'天然無患子淨化洗髮露','2017-02-07 00:00:00',300,0,'洗沐用品','No','2017-02-06 16:00:00','N/A',100,'瓶','天然無患子淨化洗髮露001',100,20,300),(8,3,'8','瑞和','洗沐用品','R00000008',3,'天然無患子淨化沐浴露','2017-02-07 00:00:00',300,60,'洗沐用品','No','2017-02-06 16:00:00','N/A',200,'瓶','天然無患子淨化沐浴露001',0,20,300),(9,4,'9','瑞和','咖啡產品','R00000009',4,'中華古坑濾掛式咖啡','2017-02-07 00:00:00',299,0,'濾掛式咖啡/盒/10包入','No','2017-02-06 16:00:00','N/A',200,'盒(10包入)','中華古坑濾掛式咖啡001',50,10,299),(10,4,'10','瑞和','咖啡產品','R00000010',4,'中華古坑咖啡豆','2017-02-07 00:00:00',599,0,'咖啡豆/半磅','No','2017-02-06 16:00:00','N/A',300,'包(半磅)','中華古坑咖啡豆001',50,10,599),(11,1,'11','中華','保健品','R00000011',1,'保健品009','2017-06-14 00:00:00',500,80,'保健品','No','2017-06-13 16:00:00','N/A',300,'瓶','保健品009',20,10,600),(12,1,'12','中華','保健品','R00000012',1,'保健品008','2017-06-14 00:00:00',450,50,'保健品','No','2017-06-13 16:00:00','N/A',300,'瓶','保健品008',60,10,500),(13,1,'13','中華','保健品','R00000013',1,'保健品007','2017-06-14 00:00:00',800,20,'保健品','No','2017-06-13 16:00:00','N/A',400,'瓶','保健品007',80,20,1000),(14,1,'14','中華','保健品','R00000014',1,'保健品006','2017-06-14 00:00:00',450,0,'保健品','No','2017-06-13 16:00:00','N/A',100,'瓶','保健品006',20,10,500);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-15 10:18:54
