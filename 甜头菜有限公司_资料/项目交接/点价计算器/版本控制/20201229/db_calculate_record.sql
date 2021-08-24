/*
 Navicat Premium Data Transfer

 Source Server         : v2测试数据库
 Source Server Type    : MySQL
 Source Server Version : 50713
 Source Host           : 192.168.0.248:3306
 Source Schema         : xinke_price_calculator

 Target Server Type    : MySQL
 Target Server Version : 50713
 File Encoding         : 65001

 Date: 29/12/2020 10:22:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for db_calculate_record
-- ----------------------------
DROP TABLE IF EXISTS `db_calculate_record`;
CREATE TABLE `db_calculate_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `strategy_id` int(11) NOT NULL COMMENT '策略id',
  `strategy_detail_id` int(11) NOT NULL COMMENT '时期价格',
  `date_range` int(3) NOT NULL COMMENT '时期类型（0短期；1中期；2长期）',
  `amount` decimal(15, 2) NOT NULL COMMENT '合约量（吨）',
  `is_share` int(3) NULL DEFAULT 0 COMMENT '是否分享（0未分享；1分享）',
  `deadline` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '点价截止时间',
  `result_price` decimal(15, 2) NULL DEFAULT NULL COMMENT '计算结果',
  `is_good` int(3) NULL DEFAULT 0 COMMENT '是否好用（0未参与；1有用；2没用）',
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_calculate_record
-- ----------------------------
INSERT INTO `db_calculate_record` VALUES (1, 70, 4, 10, 0, 1000.00, 0, NULL, 111.00, 0, '2020-12-23 20:34:08', '2020-12-23 20:34:08', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (2, 70, 4, 11, 1, 1000.00, 0, NULL, 2222.00, 0, '2020-12-23 20:36:23', '2020-12-23 20:36:23', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (3, 70, 4, 12, 2, 1000.00, 0, NULL, 4444.00, 0, '2020-12-23 20:37:52', '2020-12-23 20:37:52', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (4, 70, 2, 6, 2, 1000.00, 0, NULL, 600.00, 0, '2020-12-23 20:39:35', '2020-12-23 20:39:35', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (5, 70, 3, 9, 2, 1000.00, 0, NULL, 3000.00, 0, '2020-12-23 20:41:06', '2020-12-23 20:41:06', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (6, 70, 3, 9, 2, 1000.00, 1, NULL, 3000.00, 0, '2020-12-23 20:42:08', '2020-12-23 20:42:09', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (7, 69, 4, 10, 0, 120.00, 0, NULL, 111.00, 0, '2020-12-23 20:46:28', '2020-12-23 20:46:28', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (8, 69, 4, 10, 0, 120.00, 0, NULL, 111.00, 0, '2020-12-23 20:46:57', '2020-12-23 20:46:57', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (9, 69, 4, 10, 0, 120.00, 0, NULL, 111.00, 0, '2020-12-23 20:48:04', '2020-12-23 20:48:04', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (10, 69, 2, 6, 2, 2000.00, 0, NULL, 600.00, 0, '2020-12-24 00:28:11', '2020-12-24 00:28:11', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (11, 69, 2, 6, 2, 2000.00, 0, NULL, 600.00, 0, '2020-12-24 00:28:36', '2020-12-24 00:28:36', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (12, 69, 3, 9, 2, 2000.00, 0, NULL, 3000.00, 0, '2020-12-24 00:28:51', '2020-12-24 00:28:51', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (13, 69, 3, 9, 2, 2000.00, 0, NULL, 3000.00, 0, '2020-12-24 00:28:59', '2020-12-24 00:28:59', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (14, 1, 4, 10, 0, 100.00, 0, NULL, 111.00, 0, '2020-12-24 09:30:50', '2020-12-24 09:30:50', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (15, 1, 2, 4, 0, 100.00, 0, NULL, 100.00, 0, '2020-12-24 09:30:55', '2020-12-24 09:30:55', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (16, 1, 3, 7, 0, 100.00, 0, NULL, 1000.00, 0, '2020-12-24 09:31:00', '2020-12-24 09:31:00', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (17, 1, 4, 10, 0, 100.00, 0, NULL, 11111.00, 0, '2020-12-24 09:43:04', '2020-12-24 09:43:04', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (18, 1, 4, 10, 0, 100.00, 1, NULL, 11111.00, 0, '2020-12-24 09:43:31', '2020-12-24 09:43:34', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (19, 1, 4, 10, 0, 100.00, 0, NULL, 1111.00, 0, '2020-12-24 09:59:20', '2020-12-24 09:59:20', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (20, 1, 2, 6, 2, 1000.00, 0, NULL, 600.00, 0, '2020-12-24 09:59:50', '2020-12-24 09:59:50', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (21, 1, 2, 6, 2, 1000.00, 0, NULL, 600.00, 0, '2020-12-24 10:00:10', '2020-12-24 10:00:10', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (22, 1, 2, 6, 2, 1000.00, 1, NULL, 600.00, 0, '2020-12-24 10:00:29', '2020-12-24 10:00:35', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (23, 1, 2, 6, 2, 1000.00, 0, NULL, 600.00, 0, '2020-12-24 10:00:55', '2020-12-24 10:00:55', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (24, 1, 2, 6, 2, 1000.00, 0, '2021-12-24', 600.00, 0, '2020-12-24 10:02:08', '2020-12-24 10:02:08', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (25, 69, 4, 10, 0, 1230.00, 0, '2020-12-24', 1111.00, 0, '2020-12-24 10:02:17', '2020-12-24 10:02:17', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (26, 1, 3, 8, 1, 100.00, 0, '2020-12-31', 2000.00, 0, '2020-12-24 10:08:39', '2020-12-24 10:08:39', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (27, 1, 3, 8, 1, 100.00, 0, '2020-12-31', 2000.00, 0, '2020-12-24 10:08:46', '2020-12-24 10:08:46', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (28, 70, 2, 4, 0, 100.00, 0, '2020-12-24', 1001.00, 0, '2020-12-24 10:23:53', '2020-12-24 10:23:53', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (29, 1, 4, 10, 0, 10.00, 0, '2020-12-24', 1111.00, 0, '2020-12-24 10:24:33', '2020-12-24 10:24:33', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (30, 1, 4, 10, 0, 100.00, 0, '2020-12-24', 1111.00, 0, '2020-12-24 10:25:24', '2020-12-24 10:25:24', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (31, 1, 4, 10, 0, 10.00, 0, '2020-12-24', 1111.00, 0, '2020-12-24 10:52:31', '2020-12-24 10:52:31', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (32, 1, 4, 10, 0, 10.00, 0, '2020-12-24', 1111.00, 0, '2020-12-24 10:53:47', '2020-12-24 10:53:47', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (33, 1, 4, 10, 0, 10.00, 0, '2020-12-24', 1111.00, 0, '2020-12-24 10:54:27', '2020-12-24 10:54:27', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (34, 69, 4, 10, 0, 100.00, 0, '2020-12-24', 1111.00, 0, '2020-12-24 11:20:19', '2020-12-24 11:20:19', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (35, 1, 3, 7, 0, 10.00, 1, '2020-12-24', 1000.00, 0, '2020-12-24 11:20:52', '2020-12-24 11:20:54', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (36, 69, 4, 10, 0, 1230.00, 0, '2020-12-24', 1111.00, 0, '2020-12-24 11:22:01', '2020-12-24 11:22:01', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (37, 69, 4, 10, 0, 20.00, 0, '2020-12-24', 100.00, 0, '2020-12-24 11:45:56', '2020-12-24 11:45:56', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (38, 1, 6, 13, 0, 100.00, 0, '2020-12-24', 2345.00, 0, '2020-12-24 12:16:37', '2020-12-24 12:16:37', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (39, 1, 2, 4, 0, 100.00, 0, '2020-12-24', 1001.00, 0, '2020-12-24 12:16:42', '2020-12-24 12:16:42', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (40, 69, 6, 13, 0, 1200.00, 0, '2020-12-24', 2345.00, 0, '2020-12-24 13:09:37', '2020-12-24 13:09:37', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (41, 69, 7, 16, 0, 1200.00, 1, '2020-12-24', 111.00, 0, '2020-12-24 13:11:56', '2020-12-24 13:11:59', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (42, 69, 3, 7, 0, 1200.00, 0, '2020-12-24', 1000.00, 0, '2020-12-24 14:02:54', '2020-12-24 14:02:54', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (43, 1, 6, 13, 0, 100.00, 0, '2020-12-24', 2345.00, 0, '2020-12-24 14:55:36', '2020-12-24 14:55:36', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (44, 1, 7, 16, 0, 100.00, 0, '2020-12-24', 111.00, 0, '2020-12-24 14:55:41', '2020-12-24 14:55:41', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (45, 1, 3, 7, 0, 100.00, 0, '2020-12-24', 1000.00, 0, '2020-12-24 14:55:46', '2020-12-24 14:55:46', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (46, 1, 3, 8, 1, 100.00, 0, '2020-12-28', 2000.00, 0, '2020-12-24 14:57:08', '2020-12-24 14:57:08', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (47, 1, 3, 8, 1, 100.00, 0, '2020-12-31', 2000.00, 0, '2020-12-24 14:57:19', '2020-12-24 14:57:19', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (48, 1, 3, 9, 2, 100.00, 0, '2021-01-01', 30004.00, 0, '2020-12-24 14:57:41', '2020-12-24 14:57:41', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (49, 1, 6, 13, 0, 100.00, 0, '2020-12-24', 2345.00, 0, '2020-12-24 15:25:47', '2020-12-24 15:25:47', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (50, 69, 8, 19, 0, 100.00, 0, '2020-12-24', 1111.00, 0, '2020-12-24 15:26:00', '2020-12-24 15:26:00', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (51, 1, 6, 13, 0, 100.00, 0, '2020-12-24', 2345.00, 0, '2020-12-24 15:26:05', '2020-12-24 15:26:05', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (52, 69, 7, 16, 0, 100.00, 0, '2020-12-24', 111.00, 0, '2020-12-24 15:26:07', '2020-12-24 15:26:07', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (53, 69, 6, 13, 0, 100.00, 1, '2020-12-24', 2345.00, 0, '2020-12-24 15:26:13', '2020-12-24 15:26:37', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (54, 72, 6, 13, 0, 200.00, 0, '2020-12-24', 2345.00, 0, '2020-12-24 15:27:18', '2020-12-24 15:27:18', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (55, 72, 6, 13, 0, 200.00, 0, '2020-12-24', 2345.00, 0, '2020-12-24 15:27:39', '2020-12-24 15:27:39', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (56, 74, 6, 13, 0, 200.00, 0, '2020-12-25', 2345.00, 0, '2020-12-24 15:27:42', '2020-12-24 15:27:42', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (57, 72, 6, 13, 0, 200.00, 1, '2020-12-24', 2345.00, 0, '2020-12-24 15:28:45', '2020-12-24 15:29:06', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (58, 72, 6, 13, 0, 200.00, 0, '2020-12-24', 2345.00, 0, '2020-12-24 15:29:35', '2020-12-24 15:29:35', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (59, 72, 6, 13, 0, 200.00, 0, '2020-12-24', 2345.00, 0, '2020-12-24 15:29:57', '2020-12-24 15:29:57', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (60, 1, 6, 13, 0, 100.00, 0, '2020-12-24', 2345.00, 0, '2020-12-24 15:29:59', '2020-12-24 15:29:59', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (61, 72, 6, 13, 0, 200.00, 0, '2020-12-24', 2345.00, 0, '2020-12-24 15:30:12', '2020-12-24 15:30:12', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (62, 72, 6, 13, 0, 200.00, 0, '2020-12-24', 2345.00, 0, '2020-12-24 15:30:45', '2020-12-24 15:30:45', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (63, 72, 6, 13, 0, 200.00, 0, '2020-12-25', 2345.00, 0, '2020-12-24 15:38:21', '2020-12-24 15:38:21', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (64, 69, 8, 19, 0, 620.00, 0, '2020-12-29', 1111.00, 0, '2020-12-29 10:16:06', '2020-12-29 10:16:06', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (65, 69, 8, 19, 0, 620.00, 0, '2020-12-29', 1112.00, 0, '2020-12-29 10:18:20', '2020-12-29 10:18:20', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (66, 69, 8, 19, 0, 620.00, 0, '2020-12-29', 1112.00, 0, '2020-12-29 10:18:52', '2020-12-29 10:18:52', NULL, NULL);
INSERT INTO `db_calculate_record` VALUES (67, 69, 8, 19, 0, 620.00, 0, '2020-12-29', 1112.00, 0, '2020-12-29 10:18:53', '2020-12-29 10:18:53', NULL, NULL);

-- ----------------------------
-- Table structure for db_strategy
-- ----------------------------
DROP TABLE IF EXISTS `db_strategy`;
CREATE TABLE `db_strategy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `dominant_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主力合约',
  `is_enable` int(3) NOT NULL DEFAULT 0 COMMENT '启用状态（0未启用；1启用）',
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_strategy
-- ----------------------------
INSERT INTO `db_strategy` VALUES (1, 'trade00001', NULL, NULL, 'M2101', 0, '2020-12-23 20:27:15', '2020-12-23 20:27:34', NULL, NULL);
INSERT INTO `db_strategy` VALUES (2, 'trade00002', NULL, NULL, 'M2105', 0, '2020-12-23 20:27:22', '2020-12-23 20:27:34', NULL, NULL);
INSERT INTO `db_strategy` VALUES (3, 'trade00003', NULL, NULL, 'M2109', 0, '2020-12-23 20:27:40', '2020-12-25 20:27:48', NULL, NULL);
INSERT INTO `db_strategy` VALUES (4, NULL, NULL, NULL, 'M2101', 0, '2020-12-23 20:15:35', '2020-12-24 11:56:49', NULL, NULL);
INSERT INTO `db_strategy` VALUES (6, 'CL202012240006', NULL, NULL, 'M2101', 1, '2020-12-24 11:47:37', '2020-12-24 12:02:29', NULL, NULL);
INSERT INTO `db_strategy` VALUES (7, 'CL202012240007', NULL, NULL, 'M2105', 1, '2020-12-24 12:56:33', '2020-12-24 13:11:24', NULL, NULL);
INSERT INTO `db_strategy` VALUES (8, 'CL202012240008', NULL, NULL, 'M2109', 1, '2020-12-24 14:54:08', '2020-12-24 15:08:59', NULL, NULL);

-- ----------------------------
-- Table structure for db_strategy_detail
-- ----------------------------
DROP TABLE IF EXISTS `db_strategy_detail`;
CREATE TABLE `db_strategy_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `strategy_id` int(11) NOT NULL COMMENT '策略id',
  `price` decimal(15, 2) NOT NULL COMMENT '价格',
  `date_range` int(3) NOT NULL COMMENT '时期类型（0短期；1中期；2长期）',
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_strategy_detail
-- ----------------------------
INSERT INTO `db_strategy_detail` VALUES (1, 1, 100.00, 0, '2020-12-23 20:28:31', '2020-12-23 20:28:31', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (2, 1, 200.00, 1, '2020-12-23 20:28:46', '2020-12-23 20:28:46', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (3, 1, 300.00, 2, '2020-12-23 20:28:56', '2020-12-23 20:28:56', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (4, 2, 100.00, 0, '2020-12-23 20:29:04', '2020-12-23 20:29:04', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (5, 2, 300.00, 1, '2020-12-23 20:29:15', '2020-12-23 20:29:15', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (6, 2, 600.00, 2, '2020-12-23 20:29:20', '2020-12-23 20:29:32', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (7, 3, 1000.00, 0, '2020-12-23 20:29:31', '2020-12-23 20:29:31', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (8, 3, 2000.00, 1, '2020-12-23 20:29:41', '2020-12-23 20:29:41', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (9, 3, 30004.00, 2, '2020-12-23 20:29:57', '2020-12-23 20:29:57', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (10, 4, 100.00, 0, '2020-12-23 20:15:35', '2020-12-23 20:30:28', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (11, 4, 2222.00, 1, '2020-12-23 20:15:35', '2020-12-23 20:30:28', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (12, 4, 4444.00, 2, '2020-12-23 20:15:35', '2020-12-23 20:30:28', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (13, 6, 2345.00, 0, '2020-12-24 11:47:37', '2020-12-24 12:02:38', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (14, 6, 4567.00, 1, '2020-12-24 11:47:37', '2020-12-24 12:02:38', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (15, 6, 56781.00, 2, '2020-12-24 11:47:37', '2020-12-24 12:02:38', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (16, 7, 111.00, 0, '2020-12-24 12:56:33', '2020-12-24 13:11:24', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (17, 7, 2222.00, 1, '2020-12-24 12:56:33', '2020-12-24 13:11:24', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (18, 7, 44444.00, 2, '2020-12-24 12:56:33', '2020-12-24 13:11:24', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (19, 8, 1112.00, 0, '2020-12-24 14:54:08', '2020-12-29 10:18:17', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (20, 8, 2222.00, 1, '2020-12-24 14:54:08', '2020-12-24 15:08:59', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (21, 8, 3333.00, 2, '2020-12-24 14:54:08', '2020-12-24 15:08:59', NULL, NULL);

-- ----------------------------
-- Table structure for db_trade_day
-- ----------------------------
DROP TABLE IF EXISTS `db_trade_day`;
CREATE TABLE `db_trade_day`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `day` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '日期',
  `is_holiday` int(3) NULL DEFAULT 0 COMMENT '是否是法定节假日（0非法定节假日；1法定节假日）',
  `is_weekend` int(3) NULL DEFAULT 0 COMMENT '是否为周末（0非周末；1周末）',
  `is_night_trading` int(3) NULL DEFAULT 0 COMMENT '是否夜盘（0没有夜盘；1夜盘）',
  `is_trade` int(3) NULL DEFAULT 0 COMMENT '是否为交易日（0否；1是）',
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
