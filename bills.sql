/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100603 (10.6.3-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : bills

 Target Server Type    : MySQL
 Target Server Version : 100603 (10.6.3-MariaDB)
 File Encoding         : 65001

 Date: 19/09/2025 14:47:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bills
-- ----------------------------
DROP TABLE IF EXISTS `bills`;
CREATE TABLE `bills`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账单标题',
  `billtime` datetime NULL DEFAULT NULL COMMENT '账单时间',
  `typeid` int NULL DEFAULT NULL COMMENT '账单类型ID',
  `price` double(65, 2) NULL DEFAULT NULL COMMENT '金额',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bills
-- ----------------------------
INSERT INTO `bills` VALUES (1, '饭钱', '2025-08-15 04:25:21', 4, 22.00, '月底向小曹借钱买午饭');
INSERT INTO `bills` VALUES (2, '生活费', '2025-08-16 02:56:21', 2, 5000.00, '发生活费了');
INSERT INTO `bills` VALUES (3, '充话费', '2025-08-16 11:29:29', 3, 200.00, '帮小王充话费');
INSERT INTO `bills` VALUES (4, '团建', '2025-08-16 16:00:00', 1, 222.00, '部门团建请客');
INSERT INTO `bills` VALUES (5, '补习班', '2025-08-17 02:57:09', 1, 4500.00, '上补习班费用');

-- ----------------------------
-- Table structure for billtype
-- ----------------------------
DROP TABLE IF EXISTS `billtype`;
CREATE TABLE `billtype`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of billtype
-- ----------------------------
INSERT INTO `billtype` VALUES (1, '支出');
INSERT INTO `billtype` VALUES (2, '收入');
INSERT INTO `billtype` VALUES (3, '借出');
INSERT INTO `billtype` VALUES (4, '借入');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `loginname` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '登陆账号',
  `pwd` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `sex` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '小明', 'xiaoming', '123456', '男');
INSERT INTO `user` VALUES (2, '管理员', 'admin', '123456', '女');

SET FOREIGN_KEY_CHECKS = 1;
