/*
 Navicat Premium Data Transfer

 Source Server         : Localhost 57
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : klinik_rafael

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 23/06/2020 09:21:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_pemeriksaan_tindakan
-- ----------------------------
DROP TABLE IF EXISTS `t_pemeriksaan_tindakan`;
CREATE TABLE `t_pemeriksaan_tindakan`  (
  `idPendaftaran` int(10) NOT NULL,
  `urutanPembayaranTindakan` int(3) NOT NULL,
  `idTindakan` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `namaTindakan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diskonTindakan` double NULL DEFAULT 0,
  `qtyTindakan` double NULL DEFAULT NULL,
  `biayaTindakan` decimal(15, 2) NULL DEFAULT NULL,
  `bagianKlinik` double(255, 0) NULL DEFAULT NULL,
  `bagianPetugas` double(255, 0) NULL DEFAULT NULL,
  `namaPetugas` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`urutanPembayaranTindakan`, `idTindakan`, `idPendaftaran`) USING BTREE,
  INDEX `pembayaran_tindakan_data_idx`(`idTindakan`) USING BTREE,
  INDEX `pembayaran_tindakan_detail_idx`(`idPendaftaran`) USING BTREE,
  CONSTRAINT `t_pemeriksaan_tindakan_ibfk_1` FOREIGN KEY (`idTindakan`) REFERENCES `m_tindakan` (`idTindakan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_pemeriksaan_tindakan_ibfk_2` FOREIGN KEY (`idPendaftaran`) REFERENCES `t_pemeriksaan` (`idPendaftaran`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Triggers structure for table t_pemeriksaan_tindakan
-- ----------------------------
DROP TRIGGER IF EXISTS `t_pembayaran_tindakan_BEFORE_INSERT_copy1`;
delimiter ;;
CREATE TRIGGER `t_pembayaran_tindakan_BEFORE_INSERT_copy1` BEFORE INSERT ON `t_pemeriksaan_tindakan` FOR EACH ROW BEGIN
	if new.namaPetugas = '-' then
		select namaDokter into @dokter from t_pendaftaran 
        where idPendaftaran = new.idPendaftaran;
		set new.namaPetugas = @dokter;
	end if;
    select namaTindakan into @nama from m_tindakan where idTindakan=new.idTindakan;
	select bagianKlinik into @klinik from m_tindakan where idTindakan=new.idTindakan;
	select bagianPetugas into @petugas from m_tindakan where idTindakan=new.idTindakan;
    set new.namaTindakan = @nama;
    set new.bagianKlinik = @klinik;
    set new.bagianPetugas = @petugas;
    
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
