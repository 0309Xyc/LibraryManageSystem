/*
 Navicat Premium Data Transfer

 Source Server         : 111
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : localhost:3306
 Source Schema         : book_manager

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 10/01/2025 13:45:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `bookId` int NOT NULL AUTO_INCREMENT,
  `bookName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `bookAuthor` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `bookPrice` decimal(10, 2) NOT NULL,
  `bookTypeId` int NOT NULL,
  `bookDesc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '书籍描述',
  `isBorrowed` tinyint NOT NULL COMMENT '1表示借出，0表示已还',
  `bookImg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '书籍图片',
  PRIMARY KEY (`bookId`) USING BTREE,
  INDEX `fk_book_info_book_type_1`(`bookTypeId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES (1, '原神插画集', '原神项目组', 30.00, 4, '《原神》在2021-2022年度入选“国家文化出口重点项目名单”，是由“米哈游”制作发行的一款冒险游戏。', 1, '/files/7.jpg');
INSERT INTO `book_info` VALUES (2, '红高粱', '莫言', 15.00, 5, '本书描写了一个无名无姓的黑孩子, 他坚忍地活在苦痛的现实中, 以一种自虐的方式表示自己的强大, 作品成功写出了一个孩子的内心世界, 以及由此折射出来的外部世界。', 1, '/files/2.jpg');
INSERT INTO `book_info` VALUES (3, 'AIGC传播时代', '喻国明', 79.00, 3, '本书深入探讨了AIGC传播时代媒介的变化、人机互动的变化与人的变化。生成式AI的核心技术引发了内容生态、媒介行业的升级。在此情景下, 传播内容与形式的更新依托于生成式智能技术, 进而凸显了认知的重要性, 产生了新的认知竞争。认知成为衡量传播影响力的重要因素, 如何实现认知的“破圈”也成为了传播的关键点。', 0, '/files/3.jpg');
INSERT INTO `book_info` VALUES (4, '明朝那些事儿：第一部', '当年明月', 33.00, 2, '本书主要讲述了朱元璋一生建立及统治明朝七十年间的历史。朱元璋生于元末乱世之中，父母死于饥荒，他从赤贫起家，没有背景，没有后台，没有依靠，经历千辛万苦，无数次躲过死神的追逐，终于建立起朱姓江山，从一个衣衫褴褛、沿街乞讨的乞丐成为一个庞大帝国的最高统治者。', 1, '/files/4.jpg');
INSERT INTO `book_info` VALUES (5, '数字图像处理', '禹晶', 69.00, 1, '本书详细介绍数字图像处理的基本理论和主要技术，内容包括数字图像处理基础、空域图像增强、频域变换、频域图像增强、图像复原、彩色图像处理、数学形态学图像处理、图像分割、小波变换与多分辨率分析、图像压缩编码、表示与描述等。', 0, '/files/5.jpg');
INSERT INTO `book_info` VALUES (6, '活着', '余华', 13.00, 3, '福贵是一个嗜赌如命的纨绔子弟，把家底儿全输光了，老爹也气死了，怀孕的妻子家珍带着女儿凤霞离家出走，一年之后又带着新生的儿子有庆回来了。', 1, '/files/6.jpg');
INSERT INTO `book_info` VALUES (7, '红楼梦:演播版', '曹雪芹', 40.00, 3, '本书以贾宝玉、林黛玉的爱情悲剧为中心，着重描写了贾家荣、宁二府由盛到衰的过程，暴露了封建统治阶级的奢靡丑恶，揭示了封建社会必然崩溃的历史命运。', 0, '/files/1.jpg');
INSERT INTO `book_info` VALUES (8, '计算机系统结构', '胡越明', 32.00, 1, '本书主要介绍计算机系统结构方面的内容，包括计算机系统结构的基本概念、CPU设计原理和分析方法，以及多核和其他并行计算机系统的构成原理与软件平台技术。', 0, '/files/8.jpg');
INSERT INTO `book_info` VALUES (9, '公共管理能力与技巧探究 ', '洛桑曲杰', 99.00, 3, '本书系统阐述了公共管理的基础理论和主要内容，深入探究公共管理能力与培养技巧、公共管理人才创新培养路径，进而论述公共管理能力建设与中国化体系发展。', 0, '/files/9.jpg');
INSERT INTO `book_info` VALUES (10, '当代中国政府与政治', '陈明明', 36.00, 3, '本书从理解当代中国政府与政治的关键方面 —— 中国共产党领导的政治体制及中国共产党本身入手, 进而在横向维度上分别阐述作为最高权力机关和立法机关的人民代表大会、作为统一战线重要内容的多党合作和政治协商制度等。', 1, '/files/10.jpg');
INSERT INTO `book_info` VALUES (11, '线性代数解题指南', '田代军', 18.00, 1, '本书分为向量代数与空间解析几何、方阵的行列式、线性空间、线性方程组、线性变换等。', 0, '/files/11.jpg');
INSERT INTO `book_info` VALUES (12, 'Web技术', '杰克逊', 59.00, 1, '本书阐释了万维网的基本原理和技术，介绍了许多在其他计算机科学课程中很少讨论的Wed技术，包括HTTP、XHTML，CSS、JavaScript，DOM．Java，servlet、XML，XSLT、JSP、SOAP等。', 0, '/files/12.jpg');
INSERT INTO `book_info` VALUES (13, '编译原理', '张素琴', 35.00, 1, '主要介绍编译系统的构造原理、基本实现技术和自动构造工具，由语言基础知识、词法分析、语法分析、中间代码生成、代码优化、目标代码生成、符号表的构造和运行时存储空间的组织等部分组成。', 0, '/files/13.jpg');

-- ----------------------------
-- Table structure for book_type
-- ----------------------------
DROP TABLE IF EXISTS `book_type`;
CREATE TABLE `book_type`  (
  `bookTypeId` int NOT NULL AUTO_INCREMENT,
  `bookTypeName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `bookTypeDesc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '书籍类型描述',
  PRIMARY KEY (`bookTypeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book_type
-- ----------------------------
INSERT INTO `book_type` VALUES (1, '计算机', '计算机相关');
INSERT INTO `book_type` VALUES (2, '历史', '历史相关');
INSERT INTO `book_type` VALUES (3, '文学', '文学相关');
INSERT INTO `book_type` VALUES (4, '原神', '原神启动');
INSERT INTO `book_type` VALUES (5, '小说', '小说相关');

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `borrowId` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `bookId` int NOT NULL,
  `borrowTime` datetime NOT NULL,
  `returnTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`borrowId`) USING BTREE,
  INDEX `fk_borrow_user_1`(`userId` ASC) USING BTREE,
  INDEX `fk_borrow_book_info_1`(`bookId` ASC) USING BTREE,
  CONSTRAINT `borrow_ibfk_1` FOREIGN KEY (`bookId`) REFERENCES `book_info` (`bookId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `borrow_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (49, 2, 1, '2025-01-10 10:40:50', NULL);
INSERT INTO `borrow` VALUES (50, 2, 2, '2025-01-10 11:06:48', '2025-01-10 11:07:07');
INSERT INTO `borrow` VALUES (51, 2, 6, '2025-01-10 11:07:24', NULL);
INSERT INTO `borrow` VALUES (52, 17, 2, '2025-01-10 13:44:03', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userId` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `userPassword` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `isAdmin` tinyint NOT NULL COMMENT '1是管理员，0非管理员',
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', 1);
INSERT INTO `user` VALUES (2, '朱宇轩', '123456', 0);
INSERT INTO `user` VALUES (3, '付宇航', '123456', 0);
INSERT INTO `user` VALUES (4, '全铭宇', '123456', 0);
INSERT INTO `user` VALUES (15, 'test', '123456', 0);
INSERT INTO `user` VALUES (16, '123', '123456', 0);
INSERT INTO `user` VALUES (17, '1234', '123456', 0);

SET FOREIGN_KEY_CHECKS = 1;
