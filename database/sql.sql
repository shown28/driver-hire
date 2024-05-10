/*
SQLyog Community
MySQL - 10.4.28-MariaDB : Database - python_driver_hiring
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`python_driver_hiring` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `python_driver_hiring`;

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `complaint` varchar(100) DEFAULT NULL,
  `reply` varchar(100) DEFAULT NULL,
  `com_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `complaint` */

insert  into `complaint`(`complaint_id`,`user_id`,`complaint`,`reply`,`com_date`) values 
(5,2,'tttfff','dmnfcvf','2023-12-20'),
(6,2,'hhyt','pending','2023-12-20');

/*Table structure for table `drivers` */

DROP TABLE IF EXISTS `drivers`;

CREATE TABLE `drivers` (
  `driver_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `d_fname` varchar(100) DEFAULT NULL,
  `d_lname` varchar(100) DEFAULT NULL,
  `d_place` varchar(100) DEFAULT NULL,
  `d_phone` varchar(100) DEFAULT NULL,
  `d_email` varchar(100) DEFAULT NULL,
  `d_license` varchar(100) DEFAULT NULL,
  `profile` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `drivers` */

insert  into `drivers`(`driver_id`,`login_id`,`d_fname`,`d_lname`,`d_place`,`d_phone`,`d_email`,`d_license`,`profile`) values 
(1,3,'shemeem','sh','kochi','9526610862','shemi96ven@gmail.com','7894561230','static/fc325cf7-4b11-439d-bc0a-8295d06c6e1d577560_1395859070657295_1212250457_n.jpg'),
(2,4,'sham','sm','kollam','98745461230','sh@gmail.com','1djfhbhd','static/fc325cf7-4b11-439d-bc0a-8295d06c6e1d577560_1395859070657295_1212250457_n.jpg');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`user_type`) values 
(1,'admin','admin','admin'),
(3,'d','d','driver'),
(4,'sh@gmail.com','cdc','driver'),
(5,'bcbcf','bvcggh','user'),
(8,'u','u','user');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pay_amount` varchar(100) DEFAULT NULL,
  `pay_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `payment` */

insert  into `payment`(`payment_id`,`request_id`,`user_id`,`pay_amount`,`pay_date`) values 
(3,9,2,'1500','2023-12-20');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `requestfor` varchar(100) DEFAULT NULL,
  `from_place` varchar(100) DEFAULT NULL,
  `to_place` varchar(100) DEFAULT NULL,
  `req_date` varchar(100) DEFAULT NULL,
  `req_status` varchar(100) DEFAULT NULL,
  `req_details` varchar(100) DEFAULT NULL,
  `req_amount` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `request` */

insert  into `request`(`request_id`,`driver_id`,`user_id`,`requestfor`,`from_place`,`to_place`,`req_date`,`req_status`,`req_details`,`req_amount`) values 
(9,1,2,'i need','kollam','kochi','21/12/2023','accept','4','500');

/*Table structure for table `request_amount` */

DROP TABLE IF EXISTS `request_amount`;

CREATE TABLE `request_amount` (
  `amount_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) DEFAULT NULL,
  `req_amount` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`amount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `request_amount` */

insert  into `request_amount`(`amount_id`,`request_id`,`req_amount`) values 
(2,1,'1500'),
(3,3,'800');

/*Table structure for table `review` */

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `review` varchar(100) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `rev_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `review` */

insert  into `review`(`review_id`,`request_id`,`user_id`,`review`,`rating`,`rev_date`) values 
(4,9,2,'good','3.0','2023-12-20');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `u_fname` varchar(100) DEFAULT NULL,
  `u_lname` varchar(100) DEFAULT NULL,
  `u_phone` varchar(100) DEFAULT NULL,
  `u_email` varchar(100) DEFAULT NULL,
  `u_address` varchar(100) DEFAULT NULL,
  `u_place` varchar(100) DEFAULT NULL,
  `u_pin` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `users` */

insert  into `users`(`user_id`,`login_id`,`u_fname`,`u_lname`,`u_phone`,`u_email`,`u_address`,`u_place`,`u_pin`) values 
(1,4,'sam','sam','7894561230','sam@gmail.com',NULL,NULL,NULL),
(2,8,'saran','thomas','8590472799','ngsneha2000@gmail.com','managlath','kochi','987456');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
