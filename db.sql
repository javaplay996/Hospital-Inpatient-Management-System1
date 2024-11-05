/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yiyuanzhuyuanchuguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yiyuanzhuyuanchuguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yiyuanzhuyuanchuguanli`;

/*Table structure for table `bingren` */

DROP TABLE IF EXISTS `bingren`;

CREATE TABLE `bingren` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bingren_name` varchar(200) DEFAULT NULL COMMENT '病人名称 Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `bingren_age` int(11) DEFAULT NULL COMMENT '年龄',
  `bingren_phone` varchar(200) DEFAULT NULL COMMENT '家属联系方式',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '检查医生',
  `huanbing_types` int(11) DEFAULT NULL COMMENT '患病类型 Search111',
  `bingren_content` varchar(200) DEFAULT NULL COMMENT '患病详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='病人管理';

/*Data for the table `bingren` */

insert  into `bingren`(`id`,`bingren_name`,`sex_types`,`bingren_age`,`bingren_phone`,`yisheng_id`,`huanbing_types`,`bingren_content`,`create_time`) values (22,'病人1',2,19,'17796687885',2,2,'患病详情 患病详情 患病详情 患病详情 患病详情 患病详情 患病详情 \r\n','2021-04-08 11:29:30'),(23,'病人2',1,20,'17796687352',1,2,'患病详情123123\r\n','2021-04-08 14:13:00'),(24,'病人3',1,21,'17796687332',1,3,'患病详情313123\r\n','2021-04-08 14:21:54');

/*Table structure for table `chuangwei` */

DROP TABLE IF EXISTS `chuangwei`;

CREATE TABLE `chuangwei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuangwei_name` varchar(200) DEFAULT NULL COMMENT '床位编号 Search111',
  `chuangwei_types` int(11) DEFAULT NULL COMMENT '床位状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='床位';

/*Data for the table `chuangwei` */

insert  into `chuangwei`(`id`,`chuangwei_name`,`chuangwei_types`,`create_time`) values (22,'001',1,'2021-04-08 11:21:48'),(23,'002',1,'2021-04-08 11:23:44'),(24,'003',1,'2021-04-08 11:23:48');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-08 10:37:04'),(2,'sex_types','性别',2,'女',NULL,'2021-04-08 10:37:04'),(3,'huanbing_types','患病类型名称',1,'患病类型1',NULL,'2021-04-08 10:37:04'),(4,'huanbing_types','患病类型名称',2,'患病类型2',NULL,'2021-04-08 10:37:04'),(5,'huanbing_types','患病类型名称',3,'患病类型3',NULL,'2021-04-08 10:37:04'),(6,'chuangwei_types','床位状态',1,'未使用',NULL,'2021-04-08 10:37:04'),(7,'chuangwei_types','床位状态',2,'正在使用',NULL,'2021-04-08 10:37:04'),(8,'yizhu_types','医嘱类型名称',1,'医嘱类型1',NULL,'2021-04-08 10:37:04'),(9,'yizhu_types','医嘱类型名称',2,'医嘱类型2',NULL,'2021-04-08 10:37:04'),(10,'yizhu_types','医嘱类型名称',3,'医嘱类型3',NULL,'2021-04-08 10:37:04'),(11,'yaopin_types','药品类型名称',1,'药品类型1',NULL,'2021-04-08 10:37:04'),(12,'yaopin_types','药品类型名称',2,'药品类型2',NULL,'2021-04-08 10:37:04'),(13,'yaopin_types','药品类型名称',3,'药品类型3',NULL,'2021-04-08 10:37:04');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','wn6aqxv0snftpnocztk95m9k0iz02qwr','2021-04-08 10:49:59','2021-04-08 16:01:41'),(2,1,'111','yisheng','医生','rabcfu56v2wj1g01g0tvz9q6culuwbch','2021-04-08 14:04:43','2021-04-08 15:20:43'),(3,1,'222','yonghu','护士','sts5ac90mgwul1jqxyg7r80m88nt1fa8','2021-04-08 14:23:59','2021-04-08 15:23:59'),(4,2,'444','yonghu','护士','8q7zguuupucs7ic5t2h6100qvak1nih5','2021-04-08 14:25:12','2021-04-08 15:25:12');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xiaofeijilu` */

DROP TABLE IF EXISTS `xiaofeijilu`;

CREATE TABLE `xiaofeijilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bingren_id` int(11) DEFAULT NULL COMMENT '发布医生',
  `xiaofeijilu_content` varchar(200) DEFAULT NULL COMMENT '消费原因',
  `xiaofeijilu_money` int(11) DEFAULT NULL COMMENT '消费金额',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '消费时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='消费记录';

/*Data for the table `xiaofeijilu` */

insert  into `xiaofeijilu`(`id`,`bingren_id`,`xiaofeijilu_content`,`xiaofeijilu_money`,`insert_time`,`create_time`) values (22,22,'消费1111111\r\n',1000,'2021-04-08 13:47:16','2021-04-08 13:47:16'),(23,22,'312123\r\n',1,'2021-04-08 13:47:33','2021-04-08 13:47:33'),(26,24,'132消费原因消费原因消费原因消费原因\r\n',20000,'2021-04-08 14:49:20','2021-04-08 14:49:20'),(27,24,'123消费原因消费原因123123123\r\n',33,'2021-04-08 14:49:35','2021-04-08 14:49:35');

/*Table structure for table `yaopin` */

DROP TABLE IF EXISTS `yaopin`;

CREATE TABLE `yaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名称 Search111',
  `yaopin_types` int(11) DEFAULT NULL COMMENT '药品类型名称 Search111',
  `yaopin_money` int(11) DEFAULT NULL COMMENT '药品价格',
  `yaopin_photo` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='药品';

/*Data for the table `yaopin` */

insert  into `yaopin`(`id`,`yaopin_name`,`yaopin_types`,`yaopin_money`,`yaopin_photo`,`create_time`) values (22,'药品1',1,100,'http://localhost:8080/yiyuanzhuyuanchuguanli/file/download?fileName=1617852691000.jpg','2021-04-08 11:31:31'),(23,'药品2',2,200,'http://localhost:8080/yiyuanzhuyuanchuguanli/file/download?fileName=1617852703627.jpg','2021-04-08 11:31:44'),(24,'药品3',3,300,'http://localhost:8080/yiyuanzhuyuanchuguanli/file/download?fileName=1617862949481.jpg','2021-04-08 14:22:30');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yisheng_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`username`,`password`,`yisheng_name`,`sex_types`,`yisheng_id_number`,`yisheng_phone`,`yisheng_photo`,`create_time`) values (1,'111','123456','医生1',2,'410882199902161244','13854499454','http://localhost:8080/yiyuanzhuyuanchuguanli/file/download?fileName=1617851992813.jpg','2021-04-08 11:19:46'),(2,'333','123456','医生2',1,'410882189802014455','13846477974','http://localhost:8080/yiyuanzhuyuanchuguanli/file/download?fileName=1617852090665.jpg','2021-04-08 11:21:31');

/*Table structure for table `yizhu` */

DROP TABLE IF EXISTS `yizhu`;

CREATE TABLE `yizhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '发布医生',
  `bingren_id` int(11) DEFAULT NULL COMMENT '接收病人',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '执行护士',
  `yizhu_types` int(11) DEFAULT NULL COMMENT '医嘱类型名称 Search111',
  `zhuyuanfeiyong_content` varchar(200) DEFAULT NULL COMMENT '医嘱内容',
  `zhuyuanfeiyong_money` int(11) DEFAULT NULL COMMENT '消费金额',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='医嘱';

/*Data for the table `yizhu` */

insert  into `yizhu`(`id`,`yisheng_id`,`bingren_id`,`yonghu_id`,`yizhu_types`,`zhuyuanfeiyong_content`,`zhuyuanfeiyong_money`,`insert_time`,`create_time`) values (22,2,22,1,3,'12312312医嘱内容医嘱内容医嘱内容医嘱内容医嘱内容医嘱内容医嘱内容医嘱内容医嘱内容医嘱内容\r\n',NULL,'2021-04-08 11:48:12','2021-04-08 11:48:12'),(23,2,22,2,1,'123123\r\n',NULL,'2021-04-08 11:56:30','2021-04-08 11:56:30'),(24,1,24,1,2,'12312321213213213231321312321321\r\n',NULL,'2021-04-08 14:22:42','2021-04-08 14:22:42');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='护士';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'222','123456','护士1',2,'410882200010151611','17754466854','http://localhost:8080/yiyuanzhuyuanchuguanli/file/download?fileName=1617852013521.jpg','2021-04-08 11:20:14'),(2,'444','123456','护士4',1,'410882200010151613','17754466832','http://localhost:8080/yiyuanzhuyuanchuguanli/file/download?fileName=1617852038303.jpg','2021-04-08 11:20:45');

/*Table structure for table `zhuyuan` */

DROP TABLE IF EXISTS `zhuyuan`;

CREATE TABLE `zhuyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bingren_id` int(11) DEFAULT NULL COMMENT '住院病人',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '住院时间',
  `chuangwei_id` int(11) DEFAULT NULL COMMENT '使用床位',
  `zhuyuan_money` int(11) DEFAULT NULL COMMENT '花费总金额',
  `zhuyuan_types` int(255) DEFAULT NULL COMMENT '住院状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='住院';

/*Data for the table `zhuyuan` */

insert  into `zhuyuan`(`id`,`bingren_id`,`insert_time`,`chuangwei_id`,`zhuyuan_money`,`zhuyuan_types`,`create_time`) values (22,22,'2021-04-08 13:38:20',24,1001,1,'2021-04-08 13:38:20'),(23,24,'2021-04-08 14:23:10',24,20033,1,'2021-04-08 14:23:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
