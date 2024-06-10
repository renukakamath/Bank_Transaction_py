/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.9 : Database - bank_transaction
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bank_transaction` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bank_transaction`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  `balance` varchar(100) DEFAULT NULL,
  `date_time` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `qr` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `account` */

insert  into `account`(`account_id`,`customer_id`,`bank_id`,`account_number`,`balance`,`date_time`,`status`,`qr`) values 
(18,19,1,'12345678919','2231','2023-01-16 14:00:27','pending','static/qrcode/1e0d0713-9586-451b-ab60-caf8d6efb283.png'),
(19,20,1,'12345678919','2769','2023-01-16 14:00:51','pending','static/qrcode/fad82383-6b3d-46e3-93c3-1571abe2e941.png');

/*Table structure for table `bank` */

DROP TABLE IF EXISTS `bank`;

CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `Ifsc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `bank` */

insert  into `bank`(`bank_id`,`login_id`,`bank_name`,`place`,`phone`,`email`,`Ifsc`) values 
(1,2,'Axis','Alappuzha','9846354290','cus@gmail.com','Axis54237810');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

insert  into `chat`(`chat_id`,`sender_id`,`receiver_id`,`message`,`date`) values 
(1,21,2,'de','2023-01-16'),
(2,21,2,'hey','2023-01-16'),
(3,21,3,'hey','2023-01-16'),
(4,3,2,'da','2023-01-16'),
(5,3,21,'da','2023-01-16'),
(6,21,3,'mm','2023-01-16');

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `complaint` varchar(100) DEFAULT NULL,
  `replay` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`complaint_id`,`customer_id`,`complaint`,`replay`,`date`) values 
(1,19,'hi','ok','2023-01-17'),
(2,19,'doo','pending','2023-01-17');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `house_name` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`customer_id`,`login_id`,`f_name`,`l_name`,`house_name`,`place`,`pincode`,`phone`,`email`) values 
(19,21,'sunny','k','ross villa','Alappuzha','688523','9495795304','sunny@gmail.com'),
(20,22,'Arjun','Krishna','tiroor','Ernakulam','688523','6238526459','admin@gmail.com');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `house_name` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`employee_id`,`login_id`,`bank_id`,`first_name`,`last_name`,`house_name`,`place`,`gender`,`phone`,`email`,`qualification`) values 
(1,3,1,'cheecy','piza','tiroor','kochi','male','6238526459','admin@gmail.com','btech');

/*Table structure for table `loan` */

DROP TABLE IF EXISTS `loan`;

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` int(11) DEFAULT NULL,
  `loan_name` varchar(100) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  `interest_name` varchar(100) DEFAULT NULL,
  `max_amount` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `loan` */

insert  into `loan`(`loan_id`,`bank_id`,`loan_name`,`details`,`interest_name`,`max_amount`) values 
(1,1,'Normal Loan','for middleclass','sunil chethri','5000');

/*Table structure for table `loanrequest` */

DROP TABLE IF EXISTS `loanrequest`;

CREATE TABLE `loanrequest` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `loan_id` int(11) DEFAULT NULL,
  `date_time` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `loanrequest` */

insert  into `loanrequest`(`request_id`,`customer_id`,`loan_id`,`date_time`,`status`) values 
(1,19,1,'2023-01-16 16:50:23','accepted');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`usertype`) values 
(1,'admin','admin','admin'),
(2,'axis','axis','bank'),
(3,'emp','emp','employee'),
(21,'cus','cus','customer'),
(22,'cus2','cus2','customer');

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` int(11) DEFAULT NULL,
  `notification` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `notification` */

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `from_ac` varchar(100) DEFAULT NULL,
  `to_ac` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `date_time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `transaction` */

insert  into `transaction`(`transaction_id`,`from_ac`,`to_ac`,`amount`,`date_time`) values 
(4,'96992601039','96992601039','500','2023-01-16'),
(3,'96992601039','85790880845','500','2023-01-16'),
(5,'96992601039','96992601039','500','2023-01-16'),
(6,'96992601039','85790880845','208','2023-01-16'),
(7,'96992601039','85790880845','10','2023-01-16'),
(8,'96992601039','85790880845','12','2023-01-17'),
(9,'85790880845','96992601039','1','2023-01-17'),
(10,'96992601039','85790880845','20','2023-01-17'),
(11,'96992601039','85790880845','20','2023-01-17'),
(12,'12345678919','85790880845','1000','2023-01-17'),
(13,'12345678919','85790880845','1000','2023-01-17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
