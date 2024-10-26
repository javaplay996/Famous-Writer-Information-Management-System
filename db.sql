/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhimingzuojiaguanlixit
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhimingzuojiaguanlixit` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhimingzuojiaguanlixit`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-02-24 13:42:03'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-02-24 13:42:03'),(3,'zuojia_types','获得的奖项',1,'诺奖',NULL,NULL,'2023-02-24 13:42:03'),(4,'zuojia_types','获得的奖项',2,'矛盾文学奖',NULL,NULL,'2023-02-24 13:42:03'),(5,'zuojia_types','获得的奖项',3,'人民文学奖',NULL,NULL,'2023-02-24 13:42:03'),(6,'zuojia_types','获得的奖项',4,'鲁迅文学奖',NULL,NULL,'2023-02-24 13:42:03'),(7,'zuopin_types','作品类型',1,'作品类型1',NULL,NULL,'2023-02-24 13:42:03'),(8,'zuopin_types','作品类型',2,'作品类型2',NULL,NULL,'2023-02-24 13:42:03'),(9,'zuopin_types','作品类型',3,'作品类型3',NULL,NULL,'2023-02-24 13:42:03'),(10,'zuopin_types','作品类型',4,'作品类型4',NULL,NULL,'2023-02-24 13:42:03'),(11,'zuojia_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-02-24 13:42:03'),(12,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-02-24 13:42:03'),(13,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-02-24 13:42:03'),(14,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-02-24 13:42:03'),(15,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-02-24 13:42:03');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',4,1,'2023-02-24 13:42:28','2023-02-24 13:42:28','2023-02-24 13:42:28'),(2,'帖子标题2',3,NULL,'发布内容2',279,1,'2023-02-24 13:42:28','2023-02-24 13:42:28','2023-02-24 13:42:28'),(3,'帖子标题3',3,NULL,'发布内容3',107,1,'2023-02-24 13:42:28','2023-02-24 13:42:28','2023-02-24 13:42:28'),(4,'帖子标题4',2,NULL,'发布内容4',423,1,'2023-02-24 13:42:28','2023-02-24 13:42:28','2023-02-24 13:42:28'),(5,'帖子标题5',2,NULL,'发布内容5',330,1,'2023-02-24 13:42:28','2023-02-24 13:42:28','2023-02-24 13:42:28'),(6,'帖子',1,NULL,'帖子',NULL,1,'2023-02-24 14:31:22',NULL,'2023-02-24 14:31:22');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-02-24 13:42:28','公告详情1','2023-02-24 13:42:28'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-02-24 13:42:28','公告详情2','2023-02-24 13:42:28'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-02-24 13:42:28','公告详情3','2023-02-24 13:42:28'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-02-24 13:42:28','公告详情4','2023-02-24 13:42:28'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-02-24 13:42:28','公告详情5','2023-02-24 13:42:28');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','jl5gr6wjp7y5do88g1w5er019iix7w55','2023-02-24 10:17:28','2023-02-24 16:07:30'),(2,1,'admin','users','管理员','aou572168urqzlfyf8tckkzjlo8wcz65','2023-02-24 10:40:05','2023-02-24 15:33:07');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-02-24 13:42:28'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-02-24 13:42:28'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-02-24 13:42:28');

/*Table structure for table `zuojia` */

DROP TABLE IF EXISTS `zuojia`;

CREATE TABLE `zuojia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zuojia_name` varchar(200) DEFAULT NULL COMMENT '作家姓名  Search111 ',
  `zuojia_uuid_number` varchar(200) DEFAULT NULL COMMENT '作家编号',
  `zuojia_photo` varchar(200) DEFAULT NULL COMMENT '作家照片',
  `zuojia_types` int(11) DEFAULT NULL COMMENT '获得的奖项 Search111',
  `zuojia_minzu` varchar(200) DEFAULT NULL COMMENT '民族',
  `zuojia_jiguan` varchar(200) DEFAULT NULL COMMENT '作家籍贯',
  `chusheng_time` timestamp NULL DEFAULT NULL COMMENT '出生年',
  `huojiang_time` timestamp NULL DEFAULT NULL COMMENT '获奖时间',
  `zuojia_daibia` varchar(200) DEFAULT NULL COMMENT '代表作',
  `zuojia_content` text COMMENT '作家介绍 ',
  `zuojia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='作家';

/*Data for the table `zuojia` */

insert  into `zuojia`(`id`,`zuojia_name`,`zuojia_uuid_number`,`zuojia_photo`,`zuojia_types`,`zuojia_minzu`,`zuojia_jiguan`,`chusheng_time`,`huojiang_time`,`zuojia_daibia`,`zuojia_content`,`zuojia_delete`,`insert_time`,`create_time`) values (1,'作家姓名1','1677217348995','/upload/1677219915240.jpg',4,'民族1','作家籍贯1','2023-02-24 13:42:28','2023-02-24 13:42:28','代表作1','<p>作家介绍1</p>',1,'2023-02-24 13:42:28','2023-02-24 13:42:28'),(2,'作家姓名2','1677217349069','/upload/1677219799195.jpg',1,'民族2','作家籍贯2','2023-02-24 13:42:28','2023-02-24 13:42:28','代表作2','<p>作家介绍2</p>',1,'2023-02-24 13:42:28','2023-02-24 13:42:28'),(3,'作家姓名3','1677217349015','/upload/1677219788911.jpeg',1,'民族3','作家籍贯3','2023-02-24 13:42:28','2023-02-24 13:42:28','代表作3','<p>作家介绍3</p>',1,'2023-02-24 13:42:28','2023-02-24 13:42:28'),(4,'作家姓名4','1677217349026','/upload/1677219778953.jpg',1,'民族4','作家籍贯4','2023-02-24 13:42:28','2023-02-24 13:42:28','代表作4','<p>作家介绍4</p>',1,'2023-02-24 13:42:28','2023-02-24 13:42:28'),(5,'作家姓名5','1677217349071','/upload/1677219768852.jpg',4,'民族5','作家籍贯5','2023-02-24 13:42:28','2023-02-24 13:42:28','代表作5','<p>作家介绍5</p>',1,'2023-02-24 13:42:28','2023-02-24 13:42:28'),(6,'啊啊啊','1677220419772','/upload/1677220442467.jpg',2,'汉','加','2023-02-24 14:33:55','2023-02-24 14:33:59','无','<p>好</p>',2,'2023-02-24 14:34:07','2023-02-24 14:34:07');

/*Table structure for table `zuojia_collection` */

DROP TABLE IF EXISTS `zuojia_collection`;

CREATE TABLE `zuojia_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuojia_id` int(11) DEFAULT NULL COMMENT '作家',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zuojia_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='作家收藏';

/*Data for the table `zuojia_collection` */

insert  into `zuojia_collection`(`id`,`zuojia_id`,`yonghu_id`,`zuojia_collection_types`,`insert_time`,`create_time`) values (2,2,2,1,'2023-02-24 13:42:28','2023-02-24 13:42:28'),(3,3,2,1,'2023-02-24 13:42:28','2023-02-24 13:42:28'),(11,5,1,1,'2023-02-24 14:32:07','2023-02-24 14:32:07');

/*Table structure for table `zuojia_liuyan` */

DROP TABLE IF EXISTS `zuojia_liuyan`;

CREATE TABLE `zuojia_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuojia_id` int(11) DEFAULT NULL COMMENT '作家',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zuojia_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `zuojia_liuyan` */

insert  into `zuojia_liuyan`(`id`,`zuojia_id`,`yonghu_id`,`zuojia_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-02-24 13:42:28','回复信息1','2023-02-24 13:42:28','2023-02-24 13:42:28'),(2,2,3,'留言内容2','2023-02-24 13:42:28','回复信息2','2023-02-24 13:42:28','2023-02-24 13:42:28'),(3,3,1,'留言内容3','2023-02-24 13:42:28','回复信息3','2023-02-24 13:42:28','2023-02-24 13:42:28'),(4,4,2,'留言内容4','2023-02-24 13:42:28','回复信息4','2023-02-24 13:42:28','2023-02-24 13:42:28'),(5,5,2,'留言内容5','2023-02-24 13:42:28','回复信息5','2023-02-24 13:42:28','2023-02-24 13:42:28');

/*Table structure for table `zuopin` */

DROP TABLE IF EXISTS `zuopin`;

CREATE TABLE `zuopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zuojia_id` int(11) DEFAULT NULL COMMENT '作家',
  `zuopin_name` varchar(200) DEFAULT NULL COMMENT '作品名称  Search111 ',
  `zuopin_uuid_number` varchar(200) DEFAULT NULL COMMENT '作品编号',
  `zuopin_photo` varchar(200) DEFAULT NULL COMMENT '作品封面',
  `zuopin_types` int(11) DEFAULT NULL COMMENT '作品类型 Search111',
  `fabu_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `zuopin_content` text COMMENT '作品介绍 ',
  `zuopin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='作品';

/*Data for the table `zuopin` */

insert  into `zuopin`(`id`,`zuojia_id`,`zuopin_name`,`zuopin_uuid_number`,`zuopin_photo`,`zuopin_types`,`fabu_time`,`zuopin_content`,`zuopin_delete`,`insert_time`,`create_time`) values (1,1,'作品名称1','1677217349056','/upload/1677219992890.jpg',2,'2023-02-24 13:42:28','<p>作品介绍1</p>',1,'2023-02-24 13:42:28','2023-02-24 13:42:28'),(2,2,'作品名称2','1677217349032','/upload/1677219982210.jpg',2,'2023-02-24 13:42:28','<p>作品介绍2</p>',1,'2023-02-24 13:42:28','2023-02-24 13:42:28'),(3,3,'作品名称3','1677217349083','/upload/1677219969027.jpg',1,'2023-02-24 13:42:28','<p>作品介绍3</p>',1,'2023-02-24 13:42:28','2023-02-24 13:42:28'),(4,4,'作品名称4','1677217349039','/upload/1677219948396.jpg',3,'2023-02-24 13:42:28','<p>作品介绍4</p>',1,'2023-02-24 13:42:28','2023-02-24 13:42:28'),(5,5,'作品名称5','1677217348996','/upload/1677219938684.jpg',3,'2023-02-24 13:42:28','<p>作品介绍5</p>',1,'2023-02-24 13:42:28','2023-02-24 13:42:28'),(6,1,'丫丫','1677220477590','/upload/1677220490887.jpg',2,'2023-02-24 14:34:47','<p>丫丫</p>',1,'2023-02-24 14:34:55','2023-02-24 14:34:55');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
