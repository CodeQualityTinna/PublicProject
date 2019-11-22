/*
 Navicat Premium Data Transfer

 Source Server         : localhost-root-root
 Source Server Type    : MySQL
 Source Server Version : 80014
 Source Host           : localhost:3306
 Source Schema         : edu_demo

 Target Server Type    : MySQL
 Target Server Version : 80014
 File Encoding         : 65001

 Date: 31/07/2019 19:49:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for edu_edmo_pms_user
-- ----------------------------
DROP TABLE IF EXISTS `edu_edmo_pms_user`;
CREATE TABLE `edu_edmo_pms_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT 'version',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户帐号',
  `user_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户类型（1:超级管理员，2:普通管理员，3:用户主帐号，4:用户子帐号）',
  `main_user_id` bigint(50) NULL DEFAULT 0 COMMENT '主帐号ID',
  `user_pwd` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录密码',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `mobile_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varbinary(100) NULL DEFAULT NULL COMMENT '邮箱',
  `status` int(11) NOT NULL COMMENT '状态(100:可用，101:不可用 )',
  `last_login_time` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `is_changed_pwd` int(11) NULL DEFAULT NULL COMMENT '是否更改过密码',
  `pwd_error_count` int(11) NOT NULL DEFAULT 0 COMMENT '连续输错密码次数',
  `pwd_error_time` datetime(0) NULL DEFAULT NULL COMMENT '最后输错密码时间',
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `AK_Key_2`(`user_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of edu_edmo_pms_user
-- ----------------------------
INSERT INTO `edu_edmo_pms_user` VALUES (1, 9, '2019-07-19 16:43:32', 'admin', '1', 0, '7c4a8d09ca3762af61e59520943dc26494f8941b', '超级管理员', '13800138000', NULL, 100, '2019-07-31 19:39:33', 0, 0, NULL, '超级管理员');

SET FOREIGN_KEY_CHECKS = 1;
