-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Nov 2022 pada 02.51
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_bunga`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dibeli`
--

CREATE TABLE `dibeli` (
  `Id_tanaman` varchar(10) DEFAULT NULL,
  `Id_pembeli` varchar(10) DEFAULT NULL,
  `Tgl_trans` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dibeli`
--

INSERT INTO `dibeli` (`Id_tanaman`, `Id_pembeli`, `Tgl_trans`) VALUES
('T001', 'P001', '2022-11-17'),
('T002', 'P001', '2022-11-17'),
('T002', 'P002', '2022-11-17'),
('T003', 'P002', '2022-11-17'),
('T004', 'P002', '2022-11-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_panen`
--

CREATE TABLE `hasil_panen` (
  `Id_panen` varchar(10) NOT NULL,
  `Jenis_panen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hasil_panen`
--

INSERT INTO `hasil_panen` (`Id_panen`, `Jenis_panen`) VALUES
('A001', 'Tanaman Bunga'),
('A002', 'Tanaman Bumbu'),
('A003', 'Tanaman Umbi'),
('A004', 'Tanaman Obat'),
('A005', 'Bungan Taman'),
('A006', 'Tanaman Sayur'),
('A007', 'Tanaman Buah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mendapat`
--

CREATE TABLE `mendapat` (
  `Id_tanaman` varchar(10) DEFAULT NULL,
  `Id_perawatan` varchar(10) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Jam` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mendapat`
--

INSERT INTO `mendapat` (`Id_tanaman`, `Id_perawatan`, `Tanggal`, `Jam`) VALUES
('T001', 'R003', '2022-11-17', '9:30 AM'),
('T002', 'R002', '2022-11-17', '9:35 AM'),
('T005', 'R001', '2022-11-17', '9:35 AM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menghasilkan`
--

CREATE TABLE `menghasilkan` (
  `Id_tanaman` varchar(10) DEFAULT NULL,
  `Id_panen` varchar(10) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Jam` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menghasilkan`
--

INSERT INTO `menghasilkan` (`Id_tanaman`, `Id_panen`, `Tanggal`, `Jam`) VALUES
('T001', 'A006', '2002-11-17', '9:46 AM'),
('T002', 'A007', '2002-11-17', '9:46 AM'),
('T003', 'A007', '2002-11-17', '9:46 AM'),
('T004', 'A007', '2002-11-17', '9:46 AM'),
('T005', 'A007', '2002-11-17', '9:46 AM'),
('T006', 'A006', '2002-11-17', '9:46 AM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merawat`
--

CREATE TABLE `merawat` (
  `Id_tanaman` varchar(10) DEFAULT NULL,
  `Id_pegawai` varchar(10) DEFAULT NULL,
  `Perlakuan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `merawat`
--

INSERT INTO `merawat` (`Id_tanaman`, `Id_pegawai`, `Perlakuan`) VALUES
('T001', 'P001', 'Ditanam'),
('T001', 'P002', 'Ditanam'),
('T002', 'P002', 'Ditanam'),
('T003', 'P002', 'Ditanam'),
('T003', 'P003', 'Ditanam'),
('T001', 'P003', 'Ditanam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `Id_pegawai` varchar(10) NOT NULL,
  `Nm_pegawai` varchar(50) DEFAULT NULL,
  `Tgl_lahir` date DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  `No_hp` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`Id_pegawai`, `Nm_pegawai`, `Tgl_lahir`, `Alamat`, `No_hp`) VALUES
('P001', 'Farabi Busaeri', '2002-07-29', 'Pancor', '087882239023'),
('P002', 'Islah Taupik', '2000-09-01', 'Masbagik', '08509889453'),
('P003', 'Taqwan Haqiqi', '2001-08-05', 'Selong', '0830934093434');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` varchar(10) NOT NULL,
  `Nm_pembeli` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `Nm_pembeli`, `Status`) VALUES
('P001', 'Egy Nouvalis', 'Member'),
('P002', 'Egy Nouvalis', 'Member'),
('P003', 'Munawir Rasyid', 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perawatan`
--

CREATE TABLE `perawatan` (
  `Id_perawatan` varchar(10) NOT NULL,
  `Jenis_perawatan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perawatan`
--

INSERT INTO `perawatan` (`Id_perawatan`, `Jenis_perawatan`) VALUES
('R001', 'Insektisida'),
('R002', 'Fungisida'),
('R003', 'Pestisida'),
('R004', 'UREA'),
('R005', 'Pupuk Kompos'),
('R006', 'Kompos'),
('R007', 'Skam'),
('R008', 'Kawat Lilit'),
('R009', 'Matador'),
('R010', 'Filibeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanaman`
--

CREATE TABLE `tanaman` (
  `Id_tanaman` varchar(10) NOT NULL,
  `Nm_tanaman` varchar(50) DEFAULT NULL,
  `Jenis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tanaman`
--

INSERT INTO `tanaman` (`Id_tanaman`, `Nm_tanaman`, `Jenis`) VALUES
('T001', 'Cabai Keriting', 'Cabai'),
('T002', 'Apel', 'Buah'),
('T003', 'Jeruk', 'Buah'),
('T004', 'Semangka', 'Buah'),
('T005', 'Mangga', 'Buah'),
('T006', 'Tomat', 'Sayuran'),
('T007', 'Kangkung', 'Sayuran'),
('T008', 'Kol', 'Sayuran'),
('T009', 'Mawar', 'Bunga'),
('T010', 'Melati', 'Bunga');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dibeli`
--
ALTER TABLE `dibeli`
  ADD KEY `Id_tanaman` (`Id_tanaman`),
  ADD KEY `Id_pembeli` (`Id_pembeli`);

--
-- Indeks untuk tabel `hasil_panen`
--
ALTER TABLE `hasil_panen`
  ADD PRIMARY KEY (`Id_panen`);

--
-- Indeks untuk tabel `mendapat`
--
ALTER TABLE `mendapat`
  ADD KEY `Id_tanaman` (`Id_tanaman`),
  ADD KEY `Id_perawatan` (`Id_perawatan`);

--
-- Indeks untuk tabel `menghasilkan`
--
ALTER TABLE `menghasilkan`
  ADD KEY `Id_tanaman` (`Id_tanaman`),
  ADD KEY `Id_panen` (`Id_panen`);

--
-- Indeks untuk tabel `merawat`
--
ALTER TABLE `merawat`
  ADD KEY `Id_tanaman` (`Id_tanaman`),
  ADD KEY `Id_pegawai` (`Id_pegawai`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`Id_pegawai`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indeks untuk tabel `perawatan`
--
ALTER TABLE `perawatan`
  ADD PRIMARY KEY (`Id_perawatan`);

--
-- Indeks untuk tabel `tanaman`
--
ALTER TABLE `tanaman`
  ADD PRIMARY KEY (`Id_tanaman`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dibeli`
--
ALTER TABLE `dibeli`
  ADD CONSTRAINT `dibeli_ibfk_1` FOREIGN KEY (`Id_tanaman`) REFERENCES `tanaman` (`Id_tanaman`),
  ADD CONSTRAINT `dibeli_ibfk_2` FOREIGN KEY (`Id_pembeli`) REFERENCES `pembeli` (`id_pembeli`);

--
-- Ketidakleluasaan untuk tabel `mendapat`
--
ALTER TABLE `mendapat`
  ADD CONSTRAINT `mendapat_ibfk_1` FOREIGN KEY (`Id_tanaman`) REFERENCES `tanaman` (`Id_tanaman`),
  ADD CONSTRAINT `mendapat_ibfk_2` FOREIGN KEY (`Id_perawatan`) REFERENCES `perawatan` (`Id_perawatan`);

--
-- Ketidakleluasaan untuk tabel `menghasilkan`
--
ALTER TABLE `menghasilkan`
  ADD CONSTRAINT `menghasilkan_ibfk_1` FOREIGN KEY (`Id_tanaman`) REFERENCES `tanaman` (`Id_tanaman`),
  ADD CONSTRAINT `menghasilkan_ibfk_2` FOREIGN KEY (`Id_panen`) REFERENCES `hasil_panen` (`Id_panen`);

--
-- Ketidakleluasaan untuk tabel `merawat`
--
ALTER TABLE `merawat`
  ADD CONSTRAINT `merawat_ibfk_1` FOREIGN KEY (`Id_tanaman`) REFERENCES `tanaman` (`Id_tanaman`),
  ADD CONSTRAINT `merawat_ibfk_2` FOREIGN KEY (`Id_pegawai`) REFERENCES `pegawai` (`Id_pegawai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
