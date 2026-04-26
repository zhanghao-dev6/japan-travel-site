/*
 Navicat Premium Data Transfer

 Source Server         : dev
 Source Server Type    : MySQL
 Source Server Version : 80046 (8.0.46)
 Source Host           : localhost:3306
 Source Schema         : jp_travel_db

 Target Server Type    : MySQL
 Target Server Version : 80046 (8.0.46)
 File Encoding         : 65001

 Date: 26/04/2026 19:23:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for travel_spots
-- ----------------------------
DROP TABLE IF EXISTS `travel_spots`;
CREATE TABLE `travel_spots`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_zh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name_jp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `reading` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `rating` decimal(2, 1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `anime_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `anime_intro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `lat` double NULL DEFAULT NULL,
  `lng` double NULL DEFAULT NULL,
  `city_en` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市英文名',
  `ticket_link` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机票/新干线购买跳转链接',
  `min_price` int NULL DEFAULT NULL COMMENT '机票往返参考最低价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_spots
-- ----------------------------
INSERT INTO `travel_spots` VALUES (1, '新宿御苑', '新宿御苑', 'しんじゅくぎょえん', '东京', '公园', '新海诚《言叶之庭》取景地，避世圣地。', 4.8, '2026-04-25 13:44:28', '言叶之庭', '新海诚名作。在新宿御苑的凉亭里，制鞋少年与女教师相遇。', NULL, NULL, 'Tokyo', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
