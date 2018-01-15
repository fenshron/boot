/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost
 Source Database       : boot

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : utf-8

 Date: 01/15/2018 13:15:23 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `QRTZ_BLOB_TRIGGERS`
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Table structure for `QRTZ_CALENDARS`
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
CREATE TABLE `QRTZ_CALENDARS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR_NAME` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Table structure for `QRTZ_CRON_TRIGGERS`
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `CRON_EXPRESSION` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TIME_ZONE_ID` varchar(80) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Table structure for `QRTZ_FIRED_TRIGGERS`
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `ENTRY_ID` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `INSTANCE_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_GROUP` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Table structure for `QRTZ_JOB_DETAILS`
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `IS_DURABLE` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `IS_UPDATE_DATA` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Table structure for `QRTZ_LOCKS`
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_LOCKS`;
CREATE TABLE `QRTZ_LOCKS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `LOCK_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Records of `QRTZ_LOCKS`
-- ----------------------------
BEGIN;
INSERT INTO `QRTZ_LOCKS` VALUES ('adminQuartzScheduler', 'STATE_ACCESS');
COMMIT;

-- ----------------------------
--  Table structure for `QRTZ_PAUSED_TRIGGER_GRPS`
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Table structure for `QRTZ_SCHEDULER_STATE`
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `INSTANCE_NAME` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Records of `QRTZ_SCHEDULER_STATE`
-- ----------------------------
BEGIN;
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('adminQuartzScheduler', 'bogon1514049036347', '1514049099950', '15000');
COMMIT;

-- ----------------------------
--  Table structure for `QRTZ_SIMPLE_TRIGGERS`
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Table structure for `QRTZ_SIMPROP_TRIGGERS`
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `STR_PROP_1` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `STR_PROP_2` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `STR_PROP_3` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Table structure for `QRTZ_TRIGGERS`
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
CREATE TABLE `QRTZ_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_TYPE` varchar(8) COLLATE utf8mb4_bin NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Table structure for `file_info`
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info` (
  `id` varchar(32) NOT NULL COMMENT '文件md5',
  `contentType` varchar(128) NOT NULL,
  `size` int(11) NOT NULL,
  `path` varchar(255) NOT NULL COMMENT '物理路径',
  `url` varchar(1024) NOT NULL,
  `type` int(1) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `sys_logs`
-- ----------------------------
DROP TABLE IF EXISTS `sys_logs`;
CREATE TABLE `sys_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `module` varchar(50) DEFAULT NULL COMMENT '模块名',
  `flag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '成功失败',
  `remark` text COMMENT '备注',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `createTime` (`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `sys_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `css` varchar(30) DEFAULT NULL,
  `href` varchar(1000) DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `permission` varchar(50) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `sys_permission`
-- ----------------------------
BEGIN;
INSERT INTO `sys_permission` VALUES ('1', '0', '用户管理', 'fa-users', 'pages/user/userList.html', '1', '', '1'), ('2', '1', '用户查询', 'fa-user', 'pages/user/userList.html', '1', '', '2'), ('3', '2', '查询', '', '', '2', 'sys:user:query', '100'), ('4', '2', '新增', '', '', '2', 'sys:user:add', '100'), ('6', '0', '修改密码', 'fa-pencil-square-o', 'pages/user/changePassword.html', '1', 'sys:user:password', '4'), ('7', '0', '系统设置', 'fa-gears', '', '1', '', '5'), ('8', '7', '菜单', 'fa-cog', 'pages/menu/menuList.html', '1', '', '6'), ('9', '8', '查询', '', '', '2', 'sys:menu:query', '100'), ('10', '8', '新增', '', '', '2', 'sys:menu:add', '100'), ('11', '8', '删除', '', '', '2', 'sys:menu:del', '100'), ('12', '7', '角色', 'fa-user-secret', 'pages/role/roleList.html', '1', '', '7'), ('13', '12', '查询', '', '', '2', 'sys:role:query', '100'), ('14', '12', '新增', '', '', '2', 'sys:role:add', '100'), ('15', '12', '删除', '', '', '2', 'sys:role:del', '100'), ('16', '0', '文件管理', 'fa-folder-open', 'pages/file/fileList.html', '1', '', '8'), ('17', '16', '查询', '', '', '2', 'sys:file:query', '100'), ('18', '16', '删除', '', '', '2', 'sys:file:del', '100'), ('19', '0', '数据源监控', 'fa-eye', 'druid/index.html', '1', '', '9'), ('20', '0', '接口swagger', 'fa-file-pdf-o', 'swagger-ui.html', '1', '', '10'), ('21', '0', '代码生成', 'fa-wrench', 'pages/generate/edit.html', '1', 'generate:edit', '11'), ('22', '0', '公告管理', 'fa-book', 'pages/notice/noticeList.html', '1', '', '12'), ('23', '22', '查询', '', '', '2', 'notice:query', '100'), ('24', '22', '添加', '', '', '2', 'notice:add', '100'), ('25', '22', '删除', '', '', '2', 'notice:del', '100'), ('26', '0', '日志查询', 'fa-reorder', 'pages/log/logList.html', '1', 'sys:log:query', '13'), ('27', '0', '邮件管理', 'fa-envelope', 'pages/mail/mailList.html', '1', '', '14'), ('28', '27', '发送邮件', '', '', '2', 'mail:send', '100'), ('29', '27', '查询', '', '', '2', 'mail:all:query', '100'), ('30', '0', '定时任务管理', 'fa-tasks', 'pages/job/jobList.html', '1', '', '15'), ('31', '30', '查询', '', '', '2', 'job:query', '100'), ('32', '30', '新增', '', '', '2', 'job:add', '100'), ('33', '30', '删除', '', '', '2', 'job:del', '100'), ('34', '0', 'excel导出', 'fa-arrow-circle-down', 'pages/excel/sql.html', '1', '', '16'), ('35', '34', '导出', '', '', '2', 'excel:down', '100'), ('36', '34', '页面显示数据', '', '', '2', 'excel:show:datas', '100'), ('37', '0', '字典管理', 'fa-reddit', 'pages/dict/dictList.html', '1', '', '17'), ('38', '37', '查询', '', '', '2', 'dict:query', '100'), ('39', '37', '新增', '', '', '2', 'dict:add', '100'), ('40', '37', '删除', '', '', '2', 'dict:del', '100');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `sys_role`
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES ('1', 'ADMIN', '管理员', '2017-05-01 13:25:39', '2017-10-05 21:59:18'), ('2', 'USER', '', '2017-08-01 21:47:31', '2017-10-05 21:59:26');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `roleId` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`,`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `sys_role_permission`
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_permission` VALUES ('1', '1'), ('1', '2'), ('1', '3'), ('1', '4'), ('1', '6'), ('1', '7'), ('1', '8'), ('1', '9'), ('1', '10'), ('1', '11'), ('1', '12'), ('1', '13'), ('1', '14'), ('1', '15'), ('1', '16'), ('1', '17'), ('1', '18'), ('1', '19'), ('1', '20'), ('1', '21'), ('1', '22'), ('1', '23'), ('1', '24'), ('1', '25'), ('1', '26'), ('1', '27'), ('1', '28'), ('1', '29'), ('1', '30'), ('1', '31'), ('1', '32'), ('1', '33'), ('1', '34'), ('1', '35'), ('1', '36'), ('1', '37'), ('1', '38'), ('1', '39'), ('1', '40'), ('2', '1'), ('2', '2'), ('2', '3'), ('2', '4'), ('2', '6'), ('2', '7'), ('2', '8'), ('2', '9'), ('2', '10'), ('2', '11'), ('2', '12'), ('2', '13'), ('2', '14'), ('2', '15'), ('2', '16'), ('2', '17'), ('2', '18'), ('2', '19'), ('2', '20'), ('2', '21'), ('2', '22'), ('2', '23'), ('2', '24'), ('2', '25'), ('2', '30'), ('2', '31'), ('2', '34'), ('2', '36');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `sys_role_user`
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_user` VALUES ('1', '1'), ('2', '2');
COMMIT;

-- ----------------------------
--  Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `headImgUrl` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `sys_user`
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES ('1', 'admin', '$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK', '管理员', null, '', '', '', '1998-07-01', '0', '1', '2017-04-10 15:21:38', '2017-07-06 09:20:19'), ('2', 'user', '$2a$10$ooGb4wjT7Hg3zgU2RhZp6eVu3jvG29i/U4L6VRwiZZ4.DZ0OOEAHu', '用户', null, '', '', '', null, '1', '1', '2017-08-01 21:47:18', '2017-08-01 21:47:18');
COMMIT;

-- ----------------------------
--  Table structure for `t_dict`
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL,
  `k` varchar(16) NOT NULL,
  `val` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`k`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `t_dict`
-- ----------------------------
BEGIN;
INSERT INTO `t_dict` VALUES ('1', 'sex', '0', '女', '2017-11-17 09:58:24', '2017-11-18 14:21:05'), ('2', 'sex', '1', '男', '2017-11-17 10:03:46', '2017-11-17 10:03:46'), ('3', 'userStatus', '0', '无效', '2017-11-17 16:26:06', '2017-11-17 16:26:09'), ('4', 'userStatus', '1', '正常', '2017-11-17 16:26:06', '2017-11-17 16:26:09'), ('5', 'userStatus', '2', '锁定', '2017-11-17 16:26:06', '2017-11-17 16:26:09'), ('6', 'noticeStatus', '0', '草稿', '2017-11-17 16:26:06', '2017-11-17 16:26:09'), ('7', 'noticeStatus', '1', '发布', '2017-11-17 16:26:06', '2017-11-17 16:26:09'), ('8', 'isRead', '0', '未读', '2017-11-17 16:26:06', '2017-11-17 16:26:09'), ('9', 'isRead', '1', '已读', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
COMMIT;

-- ----------------------------
--  Table structure for `t_job`
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobName` varchar(64) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cron` varchar(64) NOT NULL,
  `springBeanName` varchar(64) NOT NULL COMMENT 'springBean名',
  `methodName` varchar(64) NOT NULL COMMENT '方法名',
  `isSysJob` tinyint(1) NOT NULL COMMENT '是否是系统job',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobName` (`jobName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `t_mail`
-- ----------------------------
DROP TABLE IF EXISTS `t_mail`;
CREATE TABLE `t_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL COMMENT '发送人',
  `subject` varchar(255) NOT NULL COMMENT '标题',
  `content` longtext NOT NULL COMMENT '正文',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `t_mail_to`
-- ----------------------------
DROP TABLE IF EXISTS `t_mail_to`;
CREATE TABLE `t_mail_to` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailId` int(11) NOT NULL,
  `toUser` varchar(128) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1成功，0失败',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `t_notice`
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `t_notice_read`
-- ----------------------------
DROP TABLE IF EXISTS `t_notice_read`;
CREATE TABLE `t_notice_read` (
  `noticeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`noticeId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
