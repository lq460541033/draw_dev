/*
 Navicat Premium Data Transfer

 Source Server         : v2测试数据库
 Source Server Type    : MySQL
 Source Server Version : 50713
 Source Host           : 192.168.0.248:3306
 Source Schema         : v2_funong_dealers

 Target Server Type    : MySQL
 Target Server Version : 50713
 File Encoding         : 65001

 Date: 29/12/2020 10:23:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fn_user
-- ----------------------------
DROP TABLE IF EXISTS `fn_user`;
CREATE TABLE `fn_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id自增',
  `customer_id` int(11) NULL DEFAULT NULL COMMENT '绑定customerId',
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `is_register` tinyint(4) NULL DEFAULT NULL COMMENT '是否已注册（0未注册1已注册）',
  `is_subscribe` tinyint(4) NULL DEFAULT NULL COMMENT '是否关注（0未关注,1已关注）',
  `identity_type` int(4) NULL DEFAULT 0 COMMENT '0表示个人，1表示企业',
  `enable` tinyint(4) NULL DEFAULT NULL COMMENT '0 禁用；1启用',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称别称',
  `open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信openid',
  `union_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信唯一unionid',
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公众号/App的AppID',
  `user_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '用户信息（微信等平台）',
  `source` tinyint(4) NULL DEFAULT NULL COMMENT '来源：1公众号 2app 3小程序',
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fn_user
-- ----------------------------
INSERT INTO `fn_user` VALUES (1, 4, '18574393577', 0, 0, 0, 1, 'Angus', 'ovX9Z428D_NzUCuh7rksRyZdOdKQ', 'o8Ur8ssCFHjELd-7pCrQdrtDcaAg', 'wx2a7fa3ab9283c556', '{\"country\":\"中国\",\"unionId\":\"o8Ur8ssCFHjELd-7pCrQdrtDcaAg\",\"gender\":1,\"city\":\"浦东新区\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0JnoAn2libyoW14zBTjkUVs3VMcYGGEfEibt4qE3ceh7zmkTKIyT5qZyI1Y2AwKWWx1AJe3fnH4XA/132\",\"nickName\":\"Angus\",\"openId\":\"ovX9Z428D_NzUCuh7rksRyZdOdKQ\",\"sex\":1,\"language\":\"zh_CN\",\"province\":\"上海\"}', 3, 'wefdsg', '2020-12-24 09:26:55', '2020-12-25 13:49:23');
INSERT INTO `fn_user` VALUES (12, 0, '188888888', 0, 0, 1, 1, 'Waiting For :hatching_chick::seedling::seedling:', 'oe0iJwq3K6QAIxxN6xAxLAcSM320', 'o8Ur8stuDzJ04T49fCJIXyxB2fpg', 'wx2a7fa3ab9283c556', '{\"city\":\"邯郸\",\"country\":\"中国\",\"groupId\":0,\"headImgUrl\":\"http://thirdwx.qlogo.cn/mmopen/KELL1rnnYicFRS2vbKxOooD7kBsGguRPcyFYYibLexWFlbP3Y1F4rT2hvlQC0Wu0NTPqC1VdVBfLFb6bE0d1QCQK2f8kgMpk4Y/132\",\"language\":\"zh_CN\",\"nickname\":\"Waiting For \",\"openId\":\"oe0iJwq3K6QAIxxN6xAxLAcSM320\",\"province\":\"河北\",\"qrScene\":\"0\",\"qrSceneStr\":\"\",\"remark\":\"\",\"sex\":2,\"sexDesc\":\"女\",\"subscribe\":true,\"subscribeScene\":\"ADD_SCENE_PROFILE_CARD\",\"subscribeTime\":1605173995,\"tagIds\":[],\"unionId\":\"o8Ur8stuDzJ04T49fCJIXyxB2fpg\"}', 1, 'zzz', '2020-11-12 17:52:29', '2020-12-23 13:06:43');
INSERT INTO `fn_user` VALUES (40, 0, '15638540968', 0, 0, 0, 1, '李永生', 'ovX9Z45yj3iv8dDXIJbeX9XWpi-g', 'o8Ur8sl5qBEGvot19dDwYuGmtz4U', 'wx2a7fa3ab9283c556', '{\"country\":\"中国\",\"unionId\":\"o8Ur8sl5qBEGvot19dDwYuGmtz4U\",\"gender\":1,\"city\":\"郑州\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJkSYJf8wnTqKA0XbwjLSfIzfAQzoiaqkZSYhBIIQUhdianYPXP39Fsy8QjWonxt60GrLsOpeyrSfUA/132\",\"nickName\":\"李永生\",\"openId\":\"ovX9Z45yj3iv8dDXIJbeX9XWpi-g\",\"sex\":1,\"language\":\"zh_CN\",\"province\":\"河南\"}', 3, NULL, '2020-12-21 15:43:19', '2020-12-24 13:52:46');
INSERT INTO `fn_user` VALUES (62, 0, '15675058165', 0, 0, 0, 1, 'lt', 'ovX9Z491EK6Bs5TuQy6XPYUzR1c8', NULL, 'wx2a7fa3ab9283c556', '{\"country\":\"安道尔\",\"unionId\":null,\"gender\":2,\"city\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/bnJibVcIsfwz6icHvKFvtbC6S95B7V3dmfAGgD1OuIGWjpO5iadq0QIySwvPcplBXRViacgSlEKuAPmW1egyDMm0Qw/132\",\"nickName\":\"lt\",\"openId\":\"ovX9Z491EK6Bs5TuQy6XPYUzR1c8\",\"sex\":2,\"language\":\"zh_CN\",\"province\":\"\"}', 3, NULL, '2020-12-24 16:23:04', '2020-12-24 09:34:22');
INSERT INTO `fn_user` VALUES (69, 0, '18856619168', 0, 0, 0, 1, '。', 'ovX9Z4w3PGiet27QEVKfy1mTCbtc', 'o8Ur8sljX-4uvDxFyhqBLiw7KfyY', 'wx2a7fa3ab9283c556', '{\"country\":\"中国\",\"unionId\":\"o8Ur8sljX-4uvDxFyhqBLiw7KfyY\",\"gender\":1,\"city\":\"阜阳\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eojLcS8j8F5QYxe2FcCuom7loI03Fuhp8vOJSeDwAz5z11Ciarxib7Evv5hibDsmhZyG5cNkTXIFQNpQ/132\",\"nickName\":\"。\",\"openId\":\"ovX9Z4w3PGiet27QEVKfy1mTCbtc\",\"sex\":1,\"language\":\"zh_CN\",\"province\":\"安徽\"}', 3, NULL, '2020-12-24 12:54:17', '2020-12-24 15:09:48');
INSERT INTO `fn_user` VALUES (70, 0, '13817188640', 0, 0, 0, 1, '美国队长的小迷弟', 'ovX9Z41ZJKbjG9qX0-8RPeTW1ZeY', 'o8Ur8sg0-yrAD1Fa9vvWyvrtoVtw', 'wx2a7fa3ab9283c556', '{\"country\":\"北马里亚纳群岛\",\"unionId\":\"o8Ur8sg0-yrAD1Fa9vvWyvrtoVtw\",\"gender\":1,\"city\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKahemMoF3WxeUQLRPHiaEMs9CzapxuOZ7rom6r6ia9mTO1OoN0DN4xJtJIqEfo3bKNHcgviaiaCgIyyw/132\",\"nickName\":\"美国队长的小迷弟\",\"openId\":\"ovX9Z41ZJKbjG9qX0-8RPeTW1ZeY\",\"sex\":1,\"language\":\"zh_CN\",\"province\":\"\"}', 3, NULL, '2020-12-23 20:17:37', '2020-12-24 10:08:50');
INSERT INTO `fn_user` VALUES (72, 0, '13671728589', 0, 0, 0, 1, 'Vincent', 'ovX9Z46JOHVGYbHdMIeO_2mUVsMQ', 'o8Ur8slGhv1BI9RcSRFwrHiRcq98', 'wx2a7fa3ab9283c556', '{\"country\":\"中国\",\"unionId\":\"o8Ur8slGhv1BI9RcSRFwrHiRcq98\",\"gender\":1,\"city\":\"浦东新区\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eo0mGhWdZVZMlgicWbCA8C87hUaHQwiaYo5bRfUeBGf1P77mf5cAhDLwcd88Toa6KKKfcoaJHUboTyQ/132\",\"nickName\":\"Vincent\",\"openId\":\"ovX9Z46JOHVGYbHdMIeO_2mUVsMQ\",\"sex\":1,\"language\":\"zh_CN\",\"province\":\"上海\"}', 3, NULL, '2020-12-24 10:12:41', '2020-12-24 15:23:27');
INSERT INTO `fn_user` VALUES (74, 0, '13696701453', 0, 0, 0, 1, '吴志超', 'ovX9Z47kgDAjHd1ihePcYf93KtAw', NULL, 'wx2a7fa3ab9283c556', '{\"country\":\"中国\",\"unionId\":null,\"gender\":1,\"city\":\"宿州\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/wvPo1fhBb4Gu8p45DEiaVPDGpI8Xd6pZ1j39amVEFMRpGJfgb3oCsHwFY7MQO6yyDZ96eXXaXqp4Yojic5UHPaLw/132\",\"nickName\":\"吴志超\",\"openId\":\"ovX9Z47kgDAjHd1ihePcYf93KtAw\",\"sex\":1,\"language\":\"zh_CN\",\"province\":\"安徽\"}', 3, NULL, '2020-12-24 15:12:18', '2020-12-24 15:12:47');

SET FOREIGN_KEY_CHECKS = 1;
