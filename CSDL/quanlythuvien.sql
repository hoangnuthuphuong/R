CREATE TABLE `Sinhvien` (
  `Ma_SV` varchar(10) PRIMARY KEY,
  `ho_ten` varchar(50),
  `sdt` varchar(10),
  `email` varchar(30)
);

CREATE TABLE `PhieuMuon` (
  `id_phieumuon` varchar(255) PRIMARY KEY NOT NULL,
  `Ma_SV` varchar(10) NOT NULL,
  `Ma_NV` varchar(10) NOT NULL,
  `ngay_muon` date,
  `ngay_tra` date,
  `tinh_trang` varchar(20)
);

CREATE TABLE `Nhan_vien` (
  `Ma_NV` varchar(10) PRIMARY KEY,
  `ho_ten` varchar(50),
  `sdt` varchar(10),
  `email` varchar(30),
  `luong` int
);

CREATE TABLE `ChitietPhieumuon` (
  `id_phieumuon` varchar(255) NOT NULL,
  `Ma_sach` varchar(255) NOT NULL,
  `soluong` int NOT NULL,
  PRIMARY KEY (`id_phieumuon`, `Ma_sach`)
);

CREATE TABLE `KhoSach` (
  `Ma_sach` varchar(255) PRIMARY KEY,
  `vitri` varchar(10),
  `soluong` int,
  `trangthai` varchar(20)
);

CREATE TABLE `Sach` (
  `Ma_sach` varchar(10) PRIMARY KEY,
  `Ma_NXB` varchar(10) NOT NULL,
  `tua_de` varchar(50) NOT NULL,
  `tac_gia` set NOT NULL,
  `the_loai` set NOT NULL,
  `nam_xuat_ban` int,
  `gia_bia` int
);

CREATE TABLE `NXB` (
  `Ma_NXB` varchar(10) PRIMARY KEY,
  `Ten_NXB` varchar(50),
  `sdt` varchar(10),
  `email` varchar(30),
  `dia_chi` varchar(100)
);

CREATE TABLE `NhapSach` (
  `id_phieunhap` varchar(10) PRIMARY KEY,
  `Ma_NXB` varchar(10) NOT NULL,
  `Ma_NV` varchar(10),
  `ngay_nhap` date
);

CREATE TABLE `ChitietNhapsach` (
  `id_phieunhap` varchar(10),
  `Ma_sach` varchar(10) NOT NULL,
  `soluong` int,
  PRIMARY KEY (`id_phieunhap`, `Ma_sach`)
);

ALTER TABLE `PhieuMuon` ADD FOREIGN KEY (`Ma_NV`) REFERENCES `Nhan_vien` (`Ma_NV`);

ALTER TABLE `NhapSach` ADD FOREIGN KEY (`Ma_NV`) REFERENCES `Nhan_vien` (`Ma_NV`);

ALTER TABLE `PhieuMuon` ADD FOREIGN KEY (`Ma_SV`) REFERENCES `Sinhvien` (`Ma_SV`);

ALTER TABLE `ChitietPhieumuon` ADD FOREIGN KEY (`id_phieumuon`) REFERENCES `PhieuMuon` (`id_phieumuon`);

ALTER TABLE `ChitietNhapsach` ADD FOREIGN KEY (`id_phieunhap`) REFERENCES `NhapSach` (`id_phieunhap`);

ALTER TABLE `NhapSach` ADD FOREIGN KEY (`Ma_NXB`) REFERENCES `NXB` (`Ma_NXB`);

ALTER TABLE `Sach` ADD FOREIGN KEY (`Ma_NXB`) REFERENCES `NXB` (`Ma_NXB`);

ALTER TABLE `KhoSach` ADD FOREIGN KEY (`Ma_sach`) REFERENCES `Sach` (`Ma_sach`);

ALTER TABLE `ChitietPhieumuon` ADD FOREIGN KEY (`Ma_sach`) REFERENCES `KhoSach` (`Ma_sach`);

ALTER TABLE `ChitietNhapsach` ADD FOREIGN KEY (`Ma_sach`) REFERENCES `KhoSach` (`Ma_sach`);
