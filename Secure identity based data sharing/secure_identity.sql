/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - secure_identity
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`secure_identity` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `secure_identity`;

/*Table structure for table `attributereq` */

DROP TABLE IF EXISTS `attributereq`;

CREATE TABLE `attributereq` (
  `id` int(11) NOT NULL auto_increment,
  `fname` varchar(100) default NULL,
  `patient` text,
  `pid` text,
  `attribute1` text,
  `attribute2` text,
  `attribute3` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `attributereq` */

insert  into `attributereq`(`id`,`fname`,`patient`,`pid`,`attribute1`,`attribute2`,`attribute3`) values (1,'heart surgey','kishan','1','112','21','563');

/*Table structure for table `authority` */

DROP TABLE IF EXISTS `authority`;

CREATE TABLE `authority` (
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `authority` */

insert  into `authority`(`username`,`password`) values ('authority','authority');

/*Table structure for table `csp` */

DROP TABLE IF EXISTS `csp`;

CREATE TABLE `csp` (
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `csp` */

insert  into `csp`(`username`,`password`) values ('csp','csp');

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL auto_increment,
  `specialist` varchar(100) default NULL,
  `email` text,
  `mobile` text,
  `address` text,
  `username` text,
  `password` text,
  `dob` text,
  `gender` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `doctor` */

insert  into `doctor`(`id`,`specialist`,`email`,`mobile`,`address`,`username`,`password`,`dob`,`gender`) values (3,'cardiology','doctor@gmail.com','1234567890','hyd','doctor','123','2020-12-31','male');

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `id` int(11) NOT NULL auto_increment,
  `patient` varchar(100) default NULL,
  `pid` text,
  `type` text,
  `symptoms` text,
  `fname` text,
  `data` longtext,
  `cipher` longtext,
  `skey` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `files` */

insert  into `files`(`id`,`patient`,`pid`,`type`,`symptoms`,`fname`,`data`,`cipher`,`skey`) values (1,'kishan','1','cardiology','pain','Sample1.txt','this is the sample text file.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.',NULL,NULL);

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `id` int(11) NOT NULL auto_increment,
  `email` text,
  `mobile` text,
  `address` text,
  `username` text,
  `password` text,
  `dob` text,
  `gender` text,
  `status` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `patient` */

insert  into `patient`(`id`,`email`,`mobile`,`address`,`username`,`password`,`dob`,`gender`,`status`) values (1,'kishan@gmail.com','1234567890','hyd','kishan','123','2020-05-12','male','Authorized');

/*Table structure for table `reencrypt` */

DROP TABLE IF EXISTS `reencrypt`;

CREATE TABLE `reencrypt` (
  `id` int(11) NOT NULL auto_increment,
  `doctor` varchar(100) default NULL,
  `name` varchar(1000) default NULL,
  `data` longtext,
  `status1` text,
  `status2` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `reencrypt` */

insert  into `reencrypt`(`id`,`doctor`,`name`,`data`,`status1`,`status2`) values (1,'doctor','1','this is the sample text file.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.Java is a high-level programming language developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web applications. The Java syntax is similar to C++, but is strictly an object-oriented programming language.','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\r\nt+cPJ3Gc5g1lL0ne9kgtMXmK9fP+vQ==','Authorized');

/*Table structure for table `special` */

DROP TABLE IF EXISTS `special`;

CREATE TABLE `special` (
  `username` varchar(1000) default NULL,
  `password` varchar(1000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `special` */

insert  into `special`(`username`,`password`) values ('specialist','specialist');

/*Table structure for table `specialist` */

DROP TABLE IF EXISTS `specialist`;

CREATE TABLE `specialist` (
  `id` int(11) NOT NULL auto_increment,
  `specialist` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `specialist` */

insert  into `specialist`(`id`,`specialist`) values (1,'heart'),(2,'liver');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
