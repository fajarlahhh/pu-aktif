/*
 Navicat Premium Data Transfer

 Source Server         : Localhost 57
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : aktif

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 25/06/2020 07:55:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kabupaten_kota
-- ----------------------------
DROP TABLE IF EXISTS `kabupaten_kota`;
CREATE TABLE `kabupaten_kota`  (
  `kabupaten_kota_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kabupaten_kota_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`kabupaten_kota_id`) USING BTREE,
  INDEX `kabupaten_kota_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  CONSTRAINT `kabupaten_kota_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kabupaten_kota
-- ----------------------------
INSERT INTO `kabupaten_kota` VALUES (2, 'Kabupaten Bima', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (3, 'Kabupaten Dompu', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (4, 'Kabupaten Lombok Barat', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (5, 'Kabupaten Lombok Tengah', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (6, 'Kabupaten Lombok Timur', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (7, 'Kabupaten Lombok Utara', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (8, 'Kabupaten Sumbawa', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (9, 'Kabupaten Sumbawa Barat', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (10, 'Kota Bima', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (11, 'Kota Mataram', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');

-- ----------------------------
-- Table structure for kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `kecamatan`;
CREATE TABLE `kecamatan`  (
  `kecamatan_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kecamatan_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kabupaten_kota_id` bigint(20) UNSIGNED NOT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`kecamatan_id`) USING BTREE,
  INDEX `kecamatan_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `kecamatan_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  CONSTRAINT `kecamatan_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `kecamatan_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 143 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kecamatan
-- ----------------------------
INSERT INTO `kecamatan` VALUES (1, 'Ambalawi', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (2, 'Belo', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (3, 'Bolo', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (4, 'Donggo', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (7, 'Lambitu', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (10, 'Lambu', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (13, 'Langgudu', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (16, 'Mada Pangga', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (19, 'Monta', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (22, 'Palibelo', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (25, 'Parado', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (28, 'Sanggar', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (31, 'Sape', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (34, 'Soromandi', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (37, 'Tambora', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (40, 'Wawo', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (43, 'Wera', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (46, 'Woha', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (50, 'Dompu', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (51, 'Kempo', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (64, 'Hu\'u', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (77, 'Kilo', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (88, 'Woja', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (108, 'Pekat', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (125, 'Manggelewa', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (142, 'Pajo', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');

-- ----------------------------
-- Table structure for kelurahan_desa
-- ----------------------------
DROP TABLE IF EXISTS `kelurahan_desa`;
CREATE TABLE `kelurahan_desa`  (
  `kelurahan_desa_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kelurahan_desa_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NOT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`kelurahan_desa_id`) USING BTREE,
  INDEX `kelurahan_desa_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `kelurahan_desa_kecamatan_id_foreign`(`kecamatan_id`) USING BTREE,
  CONSTRAINT `kelurahan_desa_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`kecamatan_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `kelurahan_desa_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 386 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kelurahan_desa
-- ----------------------------
INSERT INTO `kelurahan_desa` VALUES (114, 'Kole', 1, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (115, 'Mawu', 1, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (116, 'Nipa', 1, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (117, 'Rite', 1, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (118, 'Talapiti', 1, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (119, 'Tolowata', 1, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (120, 'Diha', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (121, 'Cenggu', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (122, 'Lido', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (123, 'Ncera', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (124, 'Ngali', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (125, 'Renda', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (126, 'Roka', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (127, 'Runggu', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (128, 'Soki', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (129, 'Bontokape', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (130, 'Darussalam', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (131, 'Kananga', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (132, 'Kara', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (133, 'Leu', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (134, 'Nggembe', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (135, 'Rada', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (136, 'Rasabau', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (137, 'Rato', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (138, 'Sanolo', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (139, 'Sondosia', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (140, 'Tambe', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (141, 'Timu', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (142, 'Tumpu', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (143, 'Bumi Pajo', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (144, 'Doridungga', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (145, 'Kala', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (146, 'Mbawa', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (147, 'Mpili', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (148, 'Ndano Na\'e', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (149, 'O\'o', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (150, 'Palama', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (151, 'Rora', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (152, 'Kaboro', 7, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (153, 'Kaowa', 7, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (154, 'Kuta', 7, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (155, 'Londu', 7, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (156, 'Sambori', 7, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (157, 'Teta', 7, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (158, 'Hidirasa', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (159, 'Kaleo', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (160, 'Lambu', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (161, 'Lanta', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (162, 'Lanta Barat', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (163, 'Mangge', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (164, 'Melayu', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (165, 'Monta Baru', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (166, 'Nggelu', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (167, 'Rato', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (168, 'Sangga', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (169, 'Simpasai', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (170, 'Soro', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (171, 'Sumi', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (172, 'Doro O\'o', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (173, 'Dumu', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (174, 'Kalodu', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (175, 'Kangga', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (176, 'Karampi', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (177, 'Karumbu', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (178, 'Kawuwu', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (179, 'Laju', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (180, 'Pusu', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (181, 'Rompo', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (182, 'Rupe', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (183, 'Sambane', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (184, 'Sarae Ruma', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (185, 'Wadu Ruka', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (186, 'Waworada', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (187, 'Bolo', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (188, 'Campa', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (189, 'Dena', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (190, 'Mandawau', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (191, 'Monggo', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (192, 'Mpuri', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (193, 'Ncandi', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (194, 'Ndano', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (195, 'Rade', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (196, 'Tonda', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (197, 'Woro', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (198, 'Baralau', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (199, 'Monta', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (200, 'Nontotera', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (201, 'Pela', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (202, 'Sekuru', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (203, 'Sie', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (204, 'Simpasai', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (205, 'Sondo', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (206, 'Tangga', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (207, 'Tangga Baru', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (208, 'Tolotangga', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (209, 'Tolouwi', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (210, 'Waro', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (211, 'Willamaci', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (212, 'Belo', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (213, 'Bre', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (214, 'Dore', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (215, 'Nata', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (216, 'Ntonggu', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (217, 'Panda', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (218, 'Padolo', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (219, 'Ragi', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (220, 'Roi', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (221, 'Teke', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (222, 'Tolongondoa', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (223, 'Tonggorisa', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (224, 'Kanca', 25, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (225, 'Kuta', 25, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (226, 'Lere', 25, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (227, 'Paradorato', 25, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (228, 'Paradowane', 25, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (229, 'Boro', 28, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (230, 'Kore', 28, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (231, 'Oi Saro', 28, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (232, 'Piong', 28, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (233, 'Sandue', 28, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (234, 'Taloko', 28, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (235, 'Bajo Pulau', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (236, 'Boke', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (237, 'Bugis', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (238, 'Buncu', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (239, 'Jia', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (240, 'Kowo', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (241, 'Lamere', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (242, 'Nae', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (243, 'Naru Barat', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (244, 'Naru Timur', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (245, 'Oi Maci', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (246, 'Parangina', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (247, 'Poja', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (248, 'Rai Oi', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (249, 'Rasabou', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (250, 'Sangia', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (251, 'Sari', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (252, 'Tanah Putih', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (253, 'Bajo', 34, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (254, 'Kananta', 34, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (255, 'Lewintana', 34, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (256, 'Punti', 34, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (257, 'Sai', 34, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (258, 'Sampungu', 34, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (259, 'Wadukopa', 34, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (260, 'Kawinda Nae', 37, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (261, 'Kawinda Toi', 37, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (262, 'Labuhan Kananga', 37, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (263, 'Oi Bura', 37, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (264, 'Oi Katupa', 37, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (265, 'Oi Panihi', 37, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (266, 'Rasabou', 37, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (267, 'Kambilo', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (268, 'Kombo', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (269, 'Maria', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (270, 'Maria Utara', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (271, 'Ntori', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (272, 'Pesa', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (273, 'Raba', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (274, 'Riamau', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (275, 'Tarlawi', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (276, 'Bala', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (277, 'Hidirasa', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (278, 'Kalajena', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (279, 'Mandala', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (280, 'Nanga Wera', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (281, 'Ntoke', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (282, 'Nunggi', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (283, 'Oitui', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (284, 'Pai', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (285, 'Ranggasolo', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (286, 'Sangiang', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (287, 'Tadewa', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (288, 'Tawali', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (289, 'Wora', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (290, 'Dadibou', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (291, 'Donggobolo', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (292, 'Kalampa', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (293, 'Keli', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (294, 'Naru', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (295, 'Nisa', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (296, 'Pandai', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (297, 'Penapali', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (298, 'Rabakodo', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (299, 'Risa', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (300, 'Samili', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (301, 'Talabiu', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (302, 'Tenga', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (303, 'Tente', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (304, 'Waduwani', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (305, 'Dore Bara', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (306, 'Katua', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (307, 'Karamabura', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (308, 'Kareke', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (309, 'Mangge Nae', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (310, 'Manggeasi', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (311, 'Mbawi', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (312, 'O\'o', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (313, 'Sori Sakolo', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (314, 'Bada', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (315, 'Bali', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (316, 'Karijawa', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (317, 'Potu', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (318, 'Dora Tangga', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (319, 'Kandai I', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (320, 'Doro Kobo', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (321, 'Kempo', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (322, 'Konte', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (323, 'Songgaja', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (324, 'Soro', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (325, 'Soro Barat', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (326, 'Ta\'a', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (327, 'Tolo Kalo', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (328, 'Adu', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (329, 'Cempi Jaya', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (330, 'Daha', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (331, 'Hu\'u', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (332, 'Jala', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (333, 'Merada', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (334, 'Rasa Bou', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (335, 'Sawe', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (336, 'Kiwu', 77, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (337, 'Kramat', 77, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (338, 'Lasi', 77, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (339, 'Malaju', 77, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (340, 'Mbuju', 77, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (341, 'Taropo', 77, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (342, 'Baka Jaya', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (343, 'Bara', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (344, 'Mada Prama', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (345, 'Matua', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (346, 'Nowa', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (347, 'Mumbu', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (348, 'Raba Baka', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (349, 'Riwo', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (350, 'Saneo', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (351, 'Sera Kapi', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (352, 'Wawonduru', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (353, 'Kandai II', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (354, 'Monta Baru', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (355, 'Simpasai', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (356, 'Beringin Jaya', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (357, 'Calabai', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (358, 'Doro Peti', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (359, 'Pekat', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (360, 'Kadindi', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (361, 'Kadindi Barat', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (362, 'Karombo', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (363, 'Nangakara', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (364, 'Nangamiro', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (365, 'Sori Nomo', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (366, 'Sori Tatanga', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (367, 'Tambora', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (368, 'Anamina', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (369, 'Banggo', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (370, 'Doromelo', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (371, 'Kampasi Meci', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (372, 'Kwangko', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (373, 'Lanci Jaya', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (374, 'Nangatumpu', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (375, 'Nusa Jaya', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (376, 'Soriutu', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (377, 'Suka Damai', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (378, 'Tanju', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (379, 'Teka Sire', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (380, 'Jambu', 142, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (381, 'Lepadi', 142, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (382, 'Lune', 142, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (383, 'Ranggo', 142, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (384, 'Temba Lae', 142, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (385, 'UPT. Woko', 142, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
