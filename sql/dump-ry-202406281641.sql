-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ry
-- ------------------------------------------------------
-- Server version	5.7.31-log

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
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `form_col_num` int(1) DEFAULT '1' COMMENT '表单布局（单列 双列 三列）',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (1,'product','商品管理','',NULL,'Product','crud','com.ruoyi.product','product','product-manage','商品管理','ruoyi',1,'0','/','{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"商品管理\",\"treeCode\":\"\"}','admin','2024-06-25 15:36:55','','2024-06-25 15:38:27','');
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (1,1,'product_id','商品主键','bigint(20)','Long','productId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-06-25 15:36:55',NULL,'2024-06-25 18:02:42'),(2,1,'product_name','商品名称','varchar(100)','String','productName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2024-06-25 15:36:55',NULL,'2024-06-25 18:02:42'),(3,1,'product_type','商品类型','int(2)','Integer','productType','0','0','1','1','1','1','1','EQ','select','',3,'admin','2024-06-25 15:36:55',NULL,'2024-06-25 18:02:42'),(4,1,'product_price','商品价格','varchar(100)','String','productPrice','0','0','1','1','1','1','1','EQ','input','',4,'admin','2024-06-25 15:36:55',NULL,'2024-06-25 18:02:42'),(5,1,'status','商品状态','int(1)','Integer','status','0','0','1','1','1','1','1','EQ','radio','',5,'admin','2024-06-25 15:36:55',NULL,'2024-06-25 18:02:42'),(6,1,'del_flag','删除标志（0代表存在 2代表删除）','char(1)','Integer','delFlag','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',6,'admin','2024-06-25 15:36:55',NULL,'2024-06-25 18:02:42'),(7,1,'create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',7,'admin','2024-06-25 15:36:55',NULL,'2024-06-25 18:02:42'),(8,1,'create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',8,'admin','2024-06-25 15:36:55',NULL,'2024-06-25 18:02:42'),(9,1,'update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',9,'admin','2024-06-25 15:36:55',NULL,'2024-06-25 18:02:42'),(10,1,'update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',10,'admin','2024-06-25 15:36:55',NULL,'2024-06-25 18:02:42');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品主键',
  `product_name` varchar(100) NOT NULL COMMENT '商品名称',
  `product_type` int(2) NOT NULL COMMENT '商品类型',
  `product_price` varchar(100) NOT NULL COMMENT '商品价格',
  `status` int(1) NOT NULL COMMENT '商品状态',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'ceshi',1,'20',0,0,'1','2012-01-12 00:00:00','1','2012-01-12 00:00:00');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2024-06-24 12:38:51','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2024-06-24 12:38:51','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2024-06-24 12:38:51','',NULL,'深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue'),(4,'账号自助-是否开启用户注册功能','sys.account.registerUser','true','Y','admin','2024-06-24 12:38:51','',NULL,'是否开启注册用户功能（true开启，false关闭）'),(5,'用户管理-密码字符范围','sys.account.chrtype','0','Y','admin','2024-06-24 12:38:51','',NULL,'默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）'),(6,'用户管理-初始密码修改策略','sys.account.initPasswordModify','1','Y','admin','2024-06-24 12:38:52','',NULL,'0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框'),(7,'用户管理-账号密码更新周期','sys.account.passwordValidateDays','0','Y','admin','2024-06-24 12:38:52','',NULL,'密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框'),(8,'主框架页-菜单导航显示风格','sys.index.menuStyle','default','Y','admin','2024-06-24 12:38:52','',NULL,'菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）'),(9,'主框架页-是否开启页脚','sys.index.footer','true','Y','admin','2024-06-24 12:38:52','',NULL,'是否开启底部页脚显示（true显示，false隐藏）'),(10,'主框架页-是否开启页签','sys.index.tagsView','true','Y','admin','2024-06-24 12:38:52','',NULL,'是否开启菜单多页签显示（true显示，false隐藏）'),(11,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2024-06-24 12:38:52','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2024-06-24 12:38:41','',NULL),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2024-06-24 12:38:41','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2024-06-24 12:38:41','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2024-06-24 12:38:41','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2024-06-24 12:38:41','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2024-06-24 12:38:41','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2024-06-24 12:38:41','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2024-06-24 12:38:41','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2024-06-24 12:38:41','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2024-06-24 12:38:41','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2024-06-24 12:38:50','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2024-06-24 12:38:50','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2024-06-24 12:38:50','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2024-06-24 12:38:50','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2024-06-24 12:38:50','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2024-06-24 12:38:50','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2024-06-24 12:38:50','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2024-06-24 12:38:50','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2024-06-24 12:38:50','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2024-06-24 12:38:50','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2024-06-24 12:38:50','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2024-06-24 12:38:51','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2024-06-24 12:38:51','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2024-06-24 12:38:51','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2024-06-24 12:38:51','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2024-06-24 12:38:51','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2024-06-24 12:38:51','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2024-06-24 12:38:51','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2024-06-24 12:38:51','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2024-06-24 12:38:51','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2024-06-24 12:38:51','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2024-06-24 12:38:51','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2024-06-24 12:38:51','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2024-06-24 12:38:51','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2024-06-24 12:38:51','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2024-06-24 12:38:51','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2024-06-24 12:38:51','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2024-06-24 12:38:51','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2024-06-24 12:38:51','',NULL,'停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2024-06-24 12:38:49','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2024-06-24 12:38:49','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2024-06-24 12:38:49','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2024-06-24 12:38:49','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2024-06-24 12:38:49','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2024-06-24 12:38:49','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2024-06-24 12:38:49','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2024-06-24 12:38:50','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2024-06-24 12:38:50','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2024-06-24 12:38:50','',NULL,'登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-24 12:40:55'),(101,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-24 17:08:01'),(102,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-24 17:11:46'),(103,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-24 17:17:51'),(104,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-24 17:17:55'),(105,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-24 17:18:01'),(106,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-24 17:19:52'),(107,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-24 17:20:04'),(108,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误1次','2024-06-24 17:29:36'),(109,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-24 17:30:15'),(110,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-24 17:41:58'),(111,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-24 17:42:03'),(112,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-25 11:07:56'),(113,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-25 11:10:50'),(114,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误1次','2024-06-25 11:11:01'),(115,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-25 11:11:21'),(116,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-25 11:11:24'),(117,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-25 11:12:33'),(118,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-25 11:12:39'),(119,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-25 11:13:11'),(120,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-25 11:13:22'),(121,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-25 11:58:52'),(122,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-25 11:58:57'),(123,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-25 15:36:27'),(124,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-25 17:58:24'),(125,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-25 18:06:50'),(126,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-25 18:06:54'),(127,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-25 18:06:58'),(128,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-26 12:44:39'),(129,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-26 15:45:32'),(130,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-26 19:04:13'),(131,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-26 19:10:43'),(132,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 12:49:53'),(133,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 15:47:12'),(134,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 15:54:58'),(135,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 15:55:19'),(136,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 15:55:30'),(137,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 15:56:03'),(138,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 15:56:06'),(139,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 15:56:43'),(140,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 15:56:55'),(141,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 15:57:41'),(142,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 15:57:47'),(143,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 15:58:43'),(144,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 15:58:53'),(145,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 15:59:03'),(146,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-27 15:59:10'),(147,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 15:59:15'),(148,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 16:00:03'),(149,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 16:00:15'),(150,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 16:00:59'),(151,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 20:06:36'),(152,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 20:15:48'),(153,'ry','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误1次','2024-06-27 20:16:03'),(154,'ry','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误2次','2024-06-27 20:16:13'),(155,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误1次','2024-06-27 20:16:23'),(156,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误1次','2024-06-27 20:16:50'),(157,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误2次','2024-06-27 20:16:59'),(158,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误3次','2024-06-27 20:18:04'),(159,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 20:18:41'),(160,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 20:18:58'),(161,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误4次','2024-06-27 20:19:06'),(162,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误5次','2024-06-27 20:19:34'),(163,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-27 20:20:24'),(164,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误1次','2024-06-27 20:20:27'),(165,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误2次','2024-06-27 20:20:39'),(166,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-27 20:22:57'),(167,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误1次','2024-06-27 20:23:35'),(168,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-27 20:24:42'),(169,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误2次','2024-06-27 20:24:46'),(170,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误1次','2024-06-27 20:26:37'),(171,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误1次','2024-06-27 20:30:57'),(172,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 20:32:38'),(173,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 20:35:48'),(174,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 20:36:14'),(175,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 20:36:23'),(176,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 20:37:50'),(177,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-27 20:37:59'),(178,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 20:38:28'),(179,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 20:41:48'),(180,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 20:42:02'),(181,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 20:43:38'),(182,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 20:44:13'),(183,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 20:44:20'),(184,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 20:44:26'),(185,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 20:45:19'),(186,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 20:45:29'),(187,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 20:45:36'),(188,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 20:45:53'),(189,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 20:46:39'),(190,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 20:46:48'),(191,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 20:47:20'),(192,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 20:47:27'),(193,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-27 20:48:17'),(194,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-27 20:48:22'),(195,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-28 12:49:50'),(196,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-28 12:53:08'),(197,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-28 12:59:43'),(198,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-28 16:26:41'),(199,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-28 16:28:51'),(200,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-28 16:30:53'),(201,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-28 16:31:16'),(202,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-28 16:31:20'),(203,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-28 16:31:26'),(204,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-28 16:37:20'),(205,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-28 16:37:33'),(206,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-28 16:37:50'),(207,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-28 16:38:18'),(208,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-28 16:40:42'),(209,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-06-28 16:40:55'),(210,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-28 16:41:05'),(211,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-28 16:41:09');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2007 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'#','','M','0','1','','fa fa-gear','admin','2024-06-24 12:38:43','',NULL,'系统管理目录'),(2,'系统监控',0,2,'#','menuItem','M','0','1','','fa fa-video-camera','admin','2024-06-24 12:38:43','admin','2024-06-26 12:45:01','系统监控目录'),(3,'系统工具',0,3,'#','menuItem','M','0','1','','fa fa-bars','admin','2024-06-24 12:38:43','admin','2024-06-25 15:36:40','系统工具目录'),(100,'用户管理',1,1,'/system/user','','C','0','1','system:user:view','fa fa-user-o','admin','2024-06-24 12:38:43','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'/system/role','','C','0','1','system:role:view','fa fa-user-secret','admin','2024-06-24 12:38:43','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','','C','0','1','system:menu:view','fa fa-th-list','admin','2024-06-24 12:38:43','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'/system/dept','','C','0','1','system:dept:view','fa fa-outdent','admin','2024-06-24 12:38:43','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'/system/post','','C','0','1','system:post:view','fa fa-address-card-o','admin','2024-06-24 12:38:43','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'/system/dict','','C','0','1','system:dict:view','fa fa-bookmark-o','admin','2024-06-24 12:38:43','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'/system/config','menuItem','C','1','1','system:config:view','fa fa-sun-o','admin','2024-06-24 12:38:43','test','2024-06-24 17:23:56','参数设置菜单'),(107,'通知公告',1,8,'/system/notice','','C','0','1','system:notice:view','fa fa-bullhorn','admin','2024-06-24 12:38:43','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'#','','M','0','1','','fa fa-pencil-square-o','admin','2024-06-24 12:38:43','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'/monitor/online','','C','0','1','monitor:online:view','fa fa-user-circle','admin','2024-06-24 12:38:43','',NULL,'在线用户菜单'),(111,'数据监控',2,3,'/monitor/data','menuItem','C','1','1','monitor:data:view','fa fa-bug','admin','2024-06-24 12:38:43','admin','2024-06-26 19:16:27','数据监控菜单'),(112,'服务监控',2,4,'/monitor/server','','C','0','1','monitor:server:view','fa fa-server','admin','2024-06-24 12:38:43','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'/monitor/cache','','C','0','1','monitor:cache:view','fa fa-cube','admin','2024-06-24 12:38:43','',NULL,'缓存监控菜单'),(114,'表单构建',3,1,'/tool/build','','C','0','1','tool:build:view','fa fa-wpforms','admin','2024-06-24 12:38:43','',NULL,'表单构建菜单'),(115,'代码生成',3,2,'/tool/gen','','C','0','1','tool:gen:view','fa fa-code','admin','2024-06-24 12:38:43','',NULL,'代码生成菜单'),(116,'系统接口',3,3,'/tool/swagger','menuItem','C','1','1','tool:swagger:view','fa fa-gg','admin','2024-06-24 12:38:43','admin','2024-06-27 12:51:51','系统接口菜单'),(500,'操作日志',108,1,'/monitor/operlog','','C','0','1','monitor:operlog:view','fa fa-address-book','admin','2024-06-24 12:38:43','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'/monitor/logininfor','','C','0','1','monitor:logininfor:view','fa fa-file-image-o','admin','2024-06-24 12:38:43','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'#','','F','0','1','system:user:list','#','admin','2024-06-24 12:38:44','',NULL,''),(1001,'用户新增',100,2,'#','','F','0','1','system:user:add','#','admin','2024-06-24 12:38:44','',NULL,''),(1002,'用户修改',100,3,'#','','F','0','1','system:user:edit','#','admin','2024-06-24 12:38:44','',NULL,''),(1003,'用户删除',100,4,'#','','F','0','1','system:user:remove','#','admin','2024-06-24 12:38:44','',NULL,''),(1004,'用户导出',100,5,'#','','F','0','1','system:user:export','#','admin','2024-06-24 12:38:44','',NULL,''),(1005,'用户导入',100,6,'#','','F','0','1','system:user:import','#','admin','2024-06-24 12:38:44','',NULL,''),(1006,'重置密码',100,7,'#','','F','0','1','system:user:resetPwd','#','admin','2024-06-24 12:38:44','',NULL,''),(1007,'角色查询',101,1,'#','','F','0','1','system:role:list','#','admin','2024-06-24 12:38:44','',NULL,''),(1008,'角色新增',101,2,'#','','F','0','1','system:role:add','#','admin','2024-06-24 12:38:44','',NULL,''),(1009,'角色修改',101,3,'#','','F','0','1','system:role:edit','#','admin','2024-06-24 12:38:44','',NULL,''),(1010,'角色删除',101,4,'#','','F','0','1','system:role:remove','#','admin','2024-06-24 12:38:44','',NULL,''),(1011,'角色导出',101,5,'#','','F','0','1','system:role:export','#','admin','2024-06-24 12:38:44','',NULL,''),(1012,'菜单查询',102,1,'#','','F','0','1','system:menu:list','#','admin','2024-06-24 12:38:44','',NULL,''),(1013,'菜单新增',102,2,'#','','F','0','1','system:menu:add','#','admin','2024-06-24 12:38:44','',NULL,''),(1014,'菜单修改',102,3,'#','','F','0','1','system:menu:edit','#','admin','2024-06-24 12:38:44','',NULL,''),(1015,'菜单删除',102,4,'#','','F','0','1','system:menu:remove','#','admin','2024-06-24 12:38:44','',NULL,''),(1016,'部门查询',103,1,'#','','F','0','1','system:dept:list','#','admin','2024-06-24 12:38:44','',NULL,''),(1017,'部门新增',103,2,'#','','F','0','1','system:dept:add','#','admin','2024-06-24 12:38:44','',NULL,''),(1018,'部门修改',103,3,'#','','F','0','1','system:dept:edit','#','admin','2024-06-24 12:38:44','',NULL,''),(1019,'部门删除',103,4,'#','','F','0','1','system:dept:remove','#','admin','2024-06-24 12:38:44','',NULL,''),(1020,'岗位查询',104,1,'#','','F','0','1','system:post:list','#','admin','2024-06-24 12:38:44','',NULL,''),(1021,'岗位新增',104,2,'#','','F','0','1','system:post:add','#','admin','2024-06-24 12:38:44','',NULL,''),(1022,'岗位修改',104,3,'#','','F','0','1','system:post:edit','#','admin','2024-06-24 12:38:44','',NULL,''),(1023,'岗位删除',104,4,'#','','F','0','1','system:post:remove','#','admin','2024-06-24 12:38:44','',NULL,''),(1024,'岗位导出',104,5,'#','','F','0','1','system:post:export','#','admin','2024-06-24 12:38:44','',NULL,''),(1025,'字典查询',105,1,'#','','F','0','1','system:dict:list','#','admin','2024-06-24 12:38:44','',NULL,''),(1026,'字典新增',105,2,'#','','F','0','1','system:dict:add','#','admin','2024-06-24 12:38:44','',NULL,''),(1027,'字典修改',105,3,'#','','F','0','1','system:dict:edit','#','admin','2024-06-24 12:38:44','',NULL,''),(1028,'字典删除',105,4,'#','','F','0','1','system:dict:remove','#','admin','2024-06-24 12:38:44','',NULL,''),(1029,'字典导出',105,5,'#','','F','0','1','system:dict:export','#','admin','2024-06-24 12:38:44','',NULL,''),(1030,'参数查询',106,1,'#','','F','0','1','system:config:list','#','admin','2024-06-24 12:38:44','',NULL,''),(1031,'参数新增',106,2,'#','','F','0','1','system:config:add','#','admin','2024-06-24 12:38:44','',NULL,''),(1032,'参数修改',106,3,'#','','F','0','1','system:config:edit','#','admin','2024-06-24 12:38:44','',NULL,''),(1033,'参数删除',106,4,'#','','F','0','1','system:config:remove','#','admin','2024-06-24 12:38:44','',NULL,''),(1034,'参数导出',106,5,'#','','F','0','1','system:config:export','#','admin','2024-06-24 12:38:44','',NULL,''),(1035,'公告查询',107,1,'#','','F','0','1','system:notice:list','#','admin','2024-06-24 12:38:44','',NULL,''),(1036,'公告新增',107,2,'#','','F','0','1','system:notice:add','#','admin','2024-06-24 12:38:44','',NULL,''),(1037,'公告修改',107,3,'#','','F','0','1','system:notice:edit','#','admin','2024-06-24 12:38:45','',NULL,''),(1038,'公告删除',107,4,'#','','F','0','1','system:notice:remove','#','admin','2024-06-24 12:38:45','',NULL,''),(1039,'操作查询',500,1,'#','','F','0','1','monitor:operlog:list','#','admin','2024-06-24 12:38:45','',NULL,''),(1040,'操作删除',500,2,'#','','F','0','1','monitor:operlog:remove','#','admin','2024-06-24 12:38:45','',NULL,''),(1041,'详细信息',500,3,'#','','F','0','1','monitor:operlog:detail','#','admin','2024-06-24 12:38:45','',NULL,''),(1042,'日志导出',500,4,'#','','F','0','1','monitor:operlog:export','#','admin','2024-06-24 12:38:45','',NULL,''),(1043,'登录查询',501,1,'#','','F','0','1','monitor:logininfor:list','#','admin','2024-06-24 12:38:45','',NULL,''),(1044,'登录删除',501,2,'#','','F','0','1','monitor:logininfor:remove','#','admin','2024-06-24 12:38:45','',NULL,''),(1045,'日志导出',501,3,'#','','F','0','1','monitor:logininfor:export','#','admin','2024-06-24 12:38:45','',NULL,''),(1046,'账户解锁',501,4,'#','','F','0','1','monitor:logininfor:unlock','#','admin','2024-06-24 12:38:45','',NULL,''),(1047,'在线查询',109,1,'#','','F','0','1','monitor:online:list','#','admin','2024-06-24 12:38:45','',NULL,''),(1048,'批量强退',109,2,'#','','F','0','1','monitor:online:batchForceLogout','#','admin','2024-06-24 12:38:45','',NULL,''),(1049,'单条强退',109,3,'#','','F','0','1','monitor:online:forceLogout','#','admin','2024-06-24 12:38:45','',NULL,''),(1057,'生成查询',115,1,'#','','F','0','1','tool:gen:list','#','admin','2024-06-24 12:38:45','',NULL,''),(1058,'生成修改',115,2,'#','','F','0','1','tool:gen:edit','#','admin','2024-06-24 12:38:45','',NULL,''),(1059,'生成删除',115,3,'#','','F','0','1','tool:gen:remove','#','admin','2024-06-24 12:38:45','',NULL,''),(1060,'预览代码',115,4,'#','','F','0','1','tool:gen:preview','#','admin','2024-06-24 12:38:45','',NULL,''),(1061,'生成代码',115,5,'#','','F','0','1','tool:gen:code','#','admin','2024-06-24 12:38:45','',NULL,''),(2001,'商品管理',0,5,'/product/product-manage','menuItem','C','0','0','product:product-manage:view','fa fa-briefcase','admin','2024-06-27 20:43:29','admin','2024-06-28 16:29:52','商品管理菜单'),(2002,'商品管理查询',2001,1,'#','menuItem','F','0','1','product:product-manage:list','#','admin','2024-06-27 20:43:29','admin','2024-06-27 20:47:55',''),(2003,'商品管理新增',2001,2,'#','','F','0','1','product:product-manage:add','#','admin','2024-06-27 20:43:29','',NULL,''),(2004,'商品管理修改',2001,3,'#','','F','0','1','product:product-manage:edit','#','admin','2024-06-27 20:43:29','',NULL,''),(2005,'商品管理删除',2001,4,'#','','F','0','1','product:product-manage:remove','#','admin','2024-06-27 20:43:29','',NULL,''),(2006,'商品管理导出',2001,5,'#','','F','0','1','product:product-manage:export','#','admin','2024-06-27 20:43:29','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2',_binary '新版本内容','0','admin','2024-06-24 12:38:53','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1',_binary '维护内容','0','admin','2024-06-24 12:38:53','',NULL,'管理员'),(3,'若依开源框架介绍','1',_binary '<p><span style=\"color: rgb(230, 0, 0);\">项目介绍</span></p><p><font color=\"#333333\">RuoYi开源项目是为企业用户定制的后台脚手架框架，为企业打造的一站式解决方案，降低企业开发成本，提升开发效率。主要包括用户管理、角色管理、部门管理、菜单管理、参数管理、字典管理、</font><span style=\"color: rgb(51, 51, 51);\">岗位管理</span><span style=\"color: rgb(51, 51, 51);\">、定时任务</span><span style=\"color: rgb(51, 51, 51);\">、</span><span style=\"color: rgb(51, 51, 51);\">服务监控、登录日志、操作日志、代码生成等功能。其中，还支持多数据源、数据权限、国际化、Redis缓存、Docker部署、滑动验证码、第三方认证登录、分布式事务、</span><font color=\"#333333\">分布式文件存储</font><span style=\"color: rgb(51, 51, 51);\">、分库分表处理等技术特点。</span></p><p><img src=\"https://foruda.gitee.com/images/1705030583977401651/5ed5db6a_1151004.png\" style=\"width: 64px;\"><br></p><p><span style=\"color: rgb(230, 0, 0);\">官网及演示</span></p><p><span style=\"color: rgb(51, 51, 51);\">若依官网地址：&nbsp;</span><a href=\"http://ruoyi.vip\" target=\"_blank\">http://ruoyi.vip</a><a href=\"http://ruoyi.vip\" target=\"_blank\"></a></p><p><span style=\"color: rgb(51, 51, 51);\">若依文档地址：&nbsp;</span><a href=\"http://doc.ruoyi.vip\" target=\"_blank\">http://doc.ruoyi.vip</a><br></p><p><span style=\"color: rgb(51, 51, 51);\">演示地址【不分离版】：&nbsp;</span><a href=\"http://demo.ruoyi.vip\" target=\"_blank\">http://demo.ruoyi.vip</a></p><p><span style=\"color: rgb(51, 51, 51);\">演示地址【分离版本】：&nbsp;</span><a href=\"http://vue.ruoyi.vip\" target=\"_blank\">http://vue.ruoyi.vip</a></p><p><span style=\"color: rgb(51, 51, 51);\">演示地址【微服务版】：&nbsp;</span><a href=\"http://cloud.ruoyi.vip\" target=\"_blank\">http://cloud.ruoyi.vip</a></p><p><span style=\"color: rgb(51, 51, 51);\">演示地址【移动端版】：&nbsp;</span><a href=\"http://h5.ruoyi.vip\" target=\"_blank\">http://h5.ruoyi.vip</a></p><p><br style=\"color: rgb(48, 49, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 12px;\"></p>','0','admin','2024-06-24 12:38:53','',NULL,'管理员'),(10,'关于系统提升的公告','1',_binary '<p>测试</p>','0','admin','2024-06-26 19:15:38','admin','2024-06-26 19:15:51',NULL);
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"http://ruoyi.vip\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-24 12:42:11',160),(101,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()','POST',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\"deptId\":[\"103\"],\"userName\":[\"test\"],\"deptName\":[\"研发部门\"],\"phonenumber\":[\"18896735464\"],\"email\":[\"123456@qq.com\"],\"loginName\":[\"test\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-24 17:19:47',160),(102,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'test','研发部门','/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"商品管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-cubes\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-24 17:22:18',42),(103,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'test','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"106\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"参数设置\"],\"url\":[\"/system/config\"],\"target\":[\"menuItem\"],\"perms\":[\"system:config:view\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-sun-o\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-24 17:23:56',41),(104,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'test','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-24 17:26:21',32),(105,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'test','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-24 17:27:10',40),(106,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,113,3,114,115,1057,1058,1059,1060,1061,116,4,2000\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-25 11:13:02',270),(107,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"商品管理\"],\"url\":[\"/system/role\"],\"target\":[\"menuItem\"],\"perms\":[\"product:view\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-cubes\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-25 12:00:19',62),(108,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"商品管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"product:view\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-cubes\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-25 12:00:29',42),(109,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-25 15:36:40',43),(110,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"product\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-25 15:36:55',106),(111,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"1\"],\"tableName\":[\"product\"],\"tableComment\":[\"商品管理\"],\"className\":[\"Product\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"商品主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"productId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"商品名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"productName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"商品类型\"],\"columns[2].javaType\":[\"Integer\"],\"columns[2].javaField\":[\"productType\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"商品价格\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"productPrice\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"商品状态\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"status\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-25 15:38:27',67),(112,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/product','127.0.0.1','内网IP','\"product\"',NULL,0,NULL,'2024-06-25 15:38:54',241),(113,'代码生成',2,'com.ruoyi.generator.controller.GenController.synchDb()','GET',1,'admin','研发部门','/tool/gen/synchDb/product','127.0.0.1','内网IP','\"product\"','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-25 15:39:17',85),(114,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":[\"product\"]}',NULL,0,NULL,'2024-06-25 15:39:40',39),(115,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"商品管理\"],\"url\":[\"/product/product-manage\"],\"target\":[\"menuItem\"],\"perms\":[\"product:view\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-cubes\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-25 18:00:21',105),(116,'商品管理',1,'com.ruoyi.web.controller.product.ProductController.addSave()','POST',1,'admin','研发部门','/product/product-manage/add','127.0.0.1','内网IP','{\"productName\":[\"测试\"],\"productPrice\":[\"20\"],\"delFlag\":[\"0\"]}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'product_type\' doesn\'t have a default value\r\n### The error may exist in file [E:\\gitProject\\MY\\sprinboot-th\\ruoyi-product\\target\\classes\\mapper\\product\\ProductMapper.xml]\r\n### The error may involve com.ruoyi.product.mapper.ProductMapper.insertProduct-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into product          ( product_name,                          product_price,                          del_flag,                          create_time )           values ( ?,                          ?,                          ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'product_type\' doesn\'t have a default value\n; Field \'product_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'product_type\' doesn\'t have a default value','2024-06-25 18:00:54',111),(117,'商品管理',1,'com.ruoyi.web.controller.product.ProductController.addSave()','POST',1,'admin','研发部门','/product/product-manage/add','127.0.0.1','内网IP','{\"productName\":[\"测试\"],\"productPrice\":[\"20\"],\"delFlag\":[\"1\"]}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'product_type\' doesn\'t have a default value\r\n### The error may exist in file [E:\\gitProject\\MY\\sprinboot-th\\ruoyi-product\\target\\classes\\mapper\\product\\ProductMapper.xml]\r\n### The error may involve com.ruoyi.product.mapper.ProductMapper.insertProduct-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into product          ( product_name,                          product_price,                          del_flag,                          create_time )           values ( ?,                          ?,                          ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'product_type\' doesn\'t have a default value\n; Field \'product_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'product_type\' doesn\'t have a default value','2024-06-25 18:01:00',3),(118,'商品管理',1,'com.ruoyi.web.controller.product.ProductController.addSave()','POST',1,'admin','研发部门','/product/product-manage/add','127.0.0.1','内网IP','{\"productName\":[\"测试\"],\"productPrice\":[\"20\"],\"delFlag\":[\"‘1’\"]}',NULL,1,'\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'del_flag\' at row 1\r\n### The error may exist in file [E:\\gitProject\\MY\\sprinboot-th\\ruoyi-product\\target\\classes\\mapper\\product\\ProductMapper.xml]\r\n### The error may involve com.ruoyi.product.mapper.ProductMapper.insertProduct-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into product          ( product_name,                          product_price,                          del_flag,                          create_time )           values ( ?,                          ?,                          ?,                          ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'del_flag\' at row 1\n; Data truncation: Data too long for column \'del_flag\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'del_flag\' at row 1','2024-06-25 18:01:15',3),(119,'代码生成',2,'com.ruoyi.generator.controller.GenController.synchDb()','GET',1,'admin','研发部门','/tool/gen/synchDb/product','127.0.0.1','内网IP','\"product\"','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-25 18:02:42',94),(120,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/product','127.0.0.1','内网IP','\"product\"',NULL,0,NULL,'2024-06-25 18:02:58',187),(121,'商品管理',1,'com.ruoyi.web.controller.product.ProductController.addSave()','POST',1,'admin','研发部门','/product/product-manage/add','127.0.0.1','内网IP','{\"productName\":[\"测试\"],\"productPrice\":[\"20\"],\"delFlag\":[\"1\"]}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'product_type\' doesn\'t have a default value\r\n### The error may exist in file [E:\\gitProject\\MY\\sprinboot-th\\ruoyi-product\\target\\classes\\mapper\\product\\ProductMapper.xml]\r\n### The error may involve com.ruoyi.product.mapper.ProductMapper.insertProduct-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into product          ( product_name,                          product_price,                          del_flag,                          create_time )           values ( ?,                          ?,                          ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'product_type\' doesn\'t have a default value\n; Field \'product_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'product_type\' doesn\'t have a default value','2024-06-25 18:07:10',116),(122,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 12:45:01',102),(123,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/110','127.0.0.1','内网IP','110','{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}',0,NULL,'2024-06-26 12:47:02',5),(124,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/1050','127.0.0.1','内网IP','1050','{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}',0,NULL,'2024-06-26 12:47:14',5),(125,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"1050\"],\"parentId\":[\"110\"],\"menuType\":[\"F\"],\"menuName\":[\"任务查询\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"monitor:job:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 12:51:14',57),(126,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/110','127.0.0.1','内网IP','110','{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}',0,NULL,'2024-06-26 12:51:34',3),(127,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/110','127.0.0.1','内网IP','110','{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}',0,NULL,'2024-06-26 12:52:53',2),(128,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/1050','127.0.0.1','内网IP','1050','{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}',0,NULL,'2024-06-26 12:53:02',4),(129,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"1050\"],\"parentId\":[\"110\"],\"menuType\":[\"F\"],\"menuName\":[\"任务查询\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"monitor:job:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 12:53:12',52),(130,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/1050','127.0.0.1','内网IP','1050','{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}',0,NULL,'2024-06-26 12:53:24',4),(131,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"1050\"],\"parentId\":[\"110\"],\"menuType\":[\"F\"],\"menuName\":[\"任务查询\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"monitor:job:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 12:53:31',51),(132,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/1050','127.0.0.1','内网IP','1050','{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}',0,NULL,'2024-06-26 12:53:37',4),(133,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,111,112,113,3,114,115,1057,1058,1059,1060,1061,116,4,2000\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 12:54:40',150),(134,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/1050','127.0.0.1','内网IP','1050','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 12:54:48',74),(135,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/1051','127.0.0.1','内网IP','1051','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 12:54:59',52),(136,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/1052','127.0.0.1','内网IP','1052','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 12:55:06',41),(137,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/1053','127.0.0.1','内网IP','1053','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 12:55:12',36),(138,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/1054','127.0.0.1','内网IP','1054','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 12:55:18',52),(139,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/1055','127.0.0.1','内网IP','1055','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 12:55:23',59),(140,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/1056','127.0.0.1','内网IP','1056','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 12:55:28',34),(141,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/110','127.0.0.1','内网IP','110','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 12:55:33',61),(142,'通知公告',1,'com.ruoyi.web.controller.system.SysNoticeController.addSave()','POST',1,'admin','研发部门','/system/notice/add','127.0.0.1','内网IP','{\"noticeTitle\":[\"关于系统提升的公告\"],\"noticeType\":[\"2\"],\"noticeContent\":[\"<p>测试</p>\"],\"status\":[\"0\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 19:15:38',118),(143,'通知公告',2,'com.ruoyi.web.controller.system.SysNoticeController.editSave()','POST',1,'admin','研发部门','/system/notice/edit','127.0.0.1','内网IP','{\"noticeId\":[\"10\"],\"noticeTitle\":[\"关于系统提升的公告\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<p>测试</p>\"],\"status\":[\"0\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 19:15:51',50),(144,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"111\"],\"parentId\":[\"2\"],\"menuType\":[\"C\"],\"menuName\":[\"数据监控\"],\"url\":[\"/monitor/data\"],\"target\":[\"menuItem\"],\"perms\":[\"monitor:data:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bug\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 19:16:27',47),(145,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2000\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 19:17:15',94),(146,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/4','127.0.0.1','内网IP','4','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-26 19:18:02',51),(147,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"116\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"系统接口\"],\"url\":[\"/tool/swagger\"],\"target\":[\"menuItem\"],\"perms\":[\"tool:swagger:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-gg\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-27 12:51:51',126),(148,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2000\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-27 15:56:26',172),(149,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"商品管理\"],\"url\":[\"/product/product-manage\"],\"target\":[\"menuItem\"],\"perms\":[\"product:view\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-cubes\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-27 15:56:36',41),(150,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()','POST',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\"userId\":[\"100\"],\"deptId\":[\"103\"],\"userName\":[\"test\"],\"dept.deptName\":[\"研发部门\"],\"phonenumber\":[\"18896735464\"],\"email\":[\"123456@qq.com\"],\"loginName\":[\"test\"],\"sex\":[\"0\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"4\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-27 15:58:21',65),(151,'用户管理',4,'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()','POST',1,'admin','研发部门','/system/user/authRole/insertAuthRole','127.0.0.1','内网IP','{\"userId\":[\"100\"],\"roleIds\":[\"2\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-27 15:59:34',81),(152,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2000\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-27 15:59:51',61),(153,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2000\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-27 20:15:42',120),(154,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2001,2002,2003,2004,2005,2006\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-27 20:44:41',170),(155,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2001,2002,2003,2004,2005,2006\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-27 20:46:18',122),(156,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()','POST',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\"userId\":[\"100\"],\"deptId\":[\"103\"],\"userName\":[\"test\"],\"dept.deptName\":[\"研发部门\"],\"phonenumber\":[\"18896735464\"],\"email\":[\"123456@qq.com\"],\"loginName\":[\"test\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-27 20:46:36',70),(157,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"商品管理\"],\"url\":[\"/product/product-manage\"],\"target\":[\"menuItem\"],\"perms\":[\"product:product-manage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-27 20:47:47',44),(158,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2002\"],\"parentId\":[\"2001\"],\"menuType\":[\"F\"],\"menuName\":[\"商品管理查询\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"product:product-manage:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-27 20:47:55',44),(159,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"商品管理\"],\"url\":[\"/product/product-manage\"],\"target\":[\"menuItem\"],\"perms\":[\"product:product-manage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-27 20:48:14',48),(160,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"商品管理\"],\"url\":[\"/product/product-manage\"],\"target\":[\"menuItem\"],\"perms\":[\"product:product-manage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"1\"],\"isRefresh\":[\"0\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-28 12:50:04',129),(161,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"商品管理\"],\"url\":[\"/product/product-manage\"],\"target\":[\"menuItem\"],\"perms\":[\"product:product-manage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-28 12:50:10',49),(162,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"商品管理\"],\"url\":[\"/product/product-manage\"],\"target\":[\"menuItem\"],\"perms\":[\"product:product-manage:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-28 12:50:28',54),(163,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"商品管理\"],\"url\":[\"/product/product-manage\"],\"target\":[\"menuItem\"],\"perms\":[\"product:product-manage:view\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-briefcase\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-28 16:29:52',161),(164,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2001,2002,2003,2004,2005,2006\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-06-28 16:39:04',195);
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2024-06-24 12:38:42','',NULL,''),(2,'se','项目经理',2,'0','admin','2024-06-24 12:38:42','',NULL,''),(3,'hr','人力资源',3,'0','admin','2024-06-24 12:38:42','',NULL,''),(4,'user','普通员工',4,'0','admin','2024-06-24 12:38:42','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1','0','0','admin','2024-06-24 12:38:42','',NULL,'超级管理员'),(2,'普通角色','common',2,'2','0','0','admin','2024-06-24 12:38:42','admin','2024-06-28 16:39:03','普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,2001),(2,2002),(2,2003),(2,2004),(2,2005),(2,2006);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','','29c67a30398638269fe600f73a054934','111111','0','0','127.0.0.1','2024-06-28 16:40:43',NULL,'admin','2024-06-27 20:25:49','','2024-06-28 16:40:42','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','8e6d98b90472783cc73c17047ddccf36','222222','0','0','127.0.0.1',NULL,NULL,'admin','2024-06-27 20:25:49','',NULL,'测试员'),(100,103,'test','test','00','123456@qq.com','18896735464','0','','ccc62dcff01dee328e0083f4db55fee7','f89202','0','0','127.0.0.1','2024-06-28 16:41:09','2024-06-24 17:19:47','admin','2024-06-24 17:19:47','admin','2024-06-28 16:41:09','');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` VALUES ('b758dcc6-a055-418c-a134-489c99ceb71b','test','研发部门','127.0.0.1','内网IP','Chrome 12','Windows 10','on_line','2024-06-28 16:40:56','2024-06-28 16:41:09',1800000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2),(100,4);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2),(100,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ry'
--

--
-- Dumping routines for database 'ry'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-28 16:41:46
