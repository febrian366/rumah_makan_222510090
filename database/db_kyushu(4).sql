-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2024 pada 14.49
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kyushu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_order`
--

CREATE TABLE `tb_detail_order` (
  `id_dorder` int(11) NOT NULL,
  `check_available` int(11) NOT NULL,
  `id_order` varchar(50) NOT NULL,
  `id_masakan` int(11) NOT NULL,
  `keterangan_dorder` text DEFAULT NULL,
  `jumlah_dorder` int(11) NOT NULL,
  `hartot_dorder` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_dorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_detail_order`
--

INSERT INTO `tb_detail_order` (`id_dorder`, `check_available`, `id_order`, `id_masakan`, `keterangan_dorder`, `jumlah_dorder`, `hartot_dorder`, `id_user`, `status_dorder`) VALUES
(64, 1, 'ORD0001', 12, 'pedes', 8, 150000, 8, 1),
(65, 1, 'ORD0001', 16, '', 1, 9000, 8, 1),
(68, 2, 'ORD0002', 13, 'hkg', 2, 30000, 10, 1),
(69, 2, 'ORD0002', 18, '', 1, 5000, 10, 1),
(72, 2, 'ORD0002', 25, '', 3, 9000, 12, 1),
(73, 2, 'ORD0002', 15, '', 2, 15000, 12, 1),
(74, 2, 'ORD0002', 24, 'b', 1, 33000, 2, 1),
(75, 2, 'ORD0002', 22, '', 1, 35000, 2, 1),
(76, 1, 'ORD0001', 15, 'jj', 1, 15000, 9, 1),
(77, 1, 'ORD0001', 13, 'customer2', 2, 60000, 0, 1),
(78, 2, 'ORD0002', 20, 'customer3', 1, 8000, 0, 1),
(79, 3, 'ORD0003', 19, 'panas banget', 1, 5000, 0, 1),
(80, 4, 'ORD0004', 12, 'pedas', 1, 25000, 2, 1),
(81, 5, 'ORD0005', 20, 'dingin', 1, 8000, 2, 1),
(82, 6, 'ORD0006', 25, 'dingin', 1, 9000, 0, 1),
(83, 6, 'ORD0006', 18, 'dingin', 1, 5000, 0, 1),
(84, 7, 'ORD0007', 25, '', 1, 9000, 0, 1),
(85, 7, 'ORD0007', 15, '', 1, 15000, 0, 1),
(86, 7, 'ORD0007', 13, '', 1, 30000, 2, 1),
(87, 8, 'ORD0008', 16, '', 1, 9000, 2, 1),
(88, 9, 'ORD0009', 12, '', 1, 25000, 35, 1),
(89, 10, 'ORD00010', 27, '', 1, 10000, 37, 1),
(90, 11, 'ORD00011', 13, 'cpat', 1, 30000, 38, 1),
(92, 12, 'ORD00012', 12, 'pedas', 1, 25000, 0, 1),
(93, 13, 'ORD00013', 12, 'PEDAS YA AYAM NYA', 1, 25000, 41, 1),
(94, 13, 'ORD00013', 20, 'DINGIN', 1, 8000, 41, 1),
(95, 14, 'ORD00014', 12, 'pedas ya bang', 1, 25000, 2, 1),
(96, 14, 'ORD00014', 20, 'dingin', 1, 8000, 2, 1),
(97, 15, 'ORD00015', 12, 'PEDASS YA AYAM NYA', 1, 25000, 2, 1),
(98, 15, 'ORD00015', 20, 'DINGIN', 1, 8000, 2, 1),
(99, 16, 'ORD00016', 27, '', 1, 10000, 41, 1),
(100, 17, 'ORD00017', 16, 'dingin', 1, 9000, 42, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_level`
--

CREATE TABLE `tb_level` (
  `id_level` int(11) NOT NULL,
  `level` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `level`) VALUES
(1, 'Administrator'),
(3, 'Kasir'),
(4, 'Owner'),
(5, 'Pelanggan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_masakan`
--

CREATE TABLE `tb_masakan` (
  `id_masakan` int(11) NOT NULL,
  `kategori_masakan` varchar(128) NOT NULL,
  `nama_masakan` varchar(128) NOT NULL,
  `harga_masakan` int(128) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status_masakan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_masakan`
--

INSERT INTO `tb_masakan` (`id_masakan`, `kategori_masakan`, `nama_masakan`, `harga_masakan`, `foto`, `status_masakan`) VALUES
(12, 'Makanan', 'Ayam Geprek', 25000, '27022020052629yuk-buat-ayam-geprek-pedas-cocok-untuk-buka-puasa-bareng-keluarga-z1VHhnEl4n.jpg', 1),
(13, 'Makanan', 'Ayam Bakar', 30000, '27022020052639bakar.jpg', 1),
(14, 'Makanan', 'Ayam Betutu', 40000, '27022020052709vetutu.jpg', 0),
(15, 'Makanan', 'Ayam Goreng', 15000, '27022020052721goreng.png', 1),
(16, 'Minuman', 'Jus Mangga', 9000, '27022020052834mangga.jpg', 1),
(17, 'Minuman', 'Jus Alpukat', 10000, '27022020052842alpukat.webp', 0),
(18, 'Minuman', 'Es Teh ', 5000, '27022020052850esteh.png', 1),
(19, 'Minuman', 'Teh Panas', 5000, '27022020052903tehpanas.jpg', 1),
(20, 'Minuman', 'Jus Jeruk', 8000, '27022020052912jus-jeruk.jpg', 1),
(21, 'Makanan', 'Ayam Penyet', 25000, '27022020052734penyet.jpg', 0),
(22, 'Makanan', 'Ayam Taliwang', 35000, '29022020063639taliwang.jpg', 1),
(23, 'Makanan', 'Ayam Teriyaki', 30000, '29022020063702teriyaki.jpg', 0),
(24, 'Makanan', 'Ayam Rica-Rica', 33000, '29022020063741rica.jpg', 1),
(25, 'Minuman', 'Jus Jambu', 9000, '29022020064540jambu.jpg', 1),
(26, 'Minuman', 'Jus Strawberri', 8000, '29022020064611stro.jpg', 1),
(27, 'Minuman', 'Es Campur', 10000, '08062020122131campur.png', 1),
(28, 'Makanan', 'Chicken Holic', 15000, '16072024113149keramik2.JPG', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_meja`
--

CREATE TABLE `tb_meja` (
  `meja_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_meja`
--

INSERT INTO `tb_meja` (`meja_id`, `status`) VALUES
(1, 0),
(2, 1),
(3, 1),
(4, 1),
(5, 0),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_order`
--

CREATE TABLE `tb_order` (
  `id_order` varchar(50) NOT NULL,
  `meja_order` int(11) NOT NULL,
  `tanggal_order` int(11) NOT NULL,
  `aTanggal_order` varchar(128) NOT NULL,
  `id_user` int(11) NOT NULL,
  `keterangan_order` text DEFAULT NULL,
  `status_order` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `meja_order`, `tanggal_order`, `aTanggal_order`, `id_user`, `keterangan_order`, `status_order`) VALUES
('ORD0001', 8, 1719846542, '01-07-2024', 0, 'cepat ya', '1'),
('ORD00010', 2, 1720500861, '09-07-2024', 37, '', '0'),
('ORD00011', 7, 1720577625, '10-07-2024', 38, '', '0'),
('ORD00012', 1, 1721090724, '16-07-2024', 0, '', '1'),
('ORD00013', 8, 1721093308, '16-07-2024', 41, '', '0'),
('ORD00014', 7, 1721098756, '16-07-2024', 2, '', '0'),
('ORD00015', 1, 1721098885, '16-07-2024', 2, '', '1'),
('ORD00016', 1, 1721104140, '16-07-2024', 41, '', '1'),
('ORD00017', 4, 1721108584, '16-07-2024', 42, '', '0'),
('ORD0002', 7, 1719846807, '01-07-2024', 0, 'dingin bang', '1'),
('ORD0003', 2, 1719847128, '01-07-2024', 0, 'panas', '1'),
('ORD0004', 10, 1719880316, '02-07-2024', 2, '', '1'),
('ORD0005', 6, 1719884692, '02-07-2024', 2, 'cepat ya', '0'),
('ORD0006', 4, 1719888018, '02-07-2024', 0, 'cepat', '1'),
('ORD0007', 9, 1720434398, '08-07-2024', 2, '', '0'),
('ORD0008', 8, 1720434423, '08-07-2024', 2, '', '1'),
('ORD0009', 10, 1720497195, '09-07-2024', 35, '', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_order` varchar(50) NOT NULL,
  `tanggal_transaksi` int(11) NOT NULL,
  `aTanggal_transaksi` varchar(50) NOT NULL,
  `hartot_transaksi` int(11) NOT NULL,
  `diskon_transaksi` int(11) NOT NULL,
  `totbar_transaksi` int(11) NOT NULL,
  `uang_transaksi` int(11) NOT NULL,
  `kembalian_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `id_user`, `id_order`, `tanggal_transaksi`, `aTanggal_transaksi`, `hartot_transaksi`, `diskon_transaksi`, `totbar_transaksi`, `uang_transaksi`, `kembalian_transaksi`) VALUES
(27, 12, 'ORD0001', 1719846673, '01-07-2024', 234000, 0, 234000, 250000, 16000),
(28, 12, 'ORD0002', 1719846894, '01-07-2024', 135000, 0, 135000, 150000, 15000),
(29, 12, 'ORD0003', 1719847192, '01-07-2024', 5000, 0, 5000, 10000, 5000),
(30, 14, 'ORD0004', 1719880344, '02-07-2024', 25000, 0, 25000, 50000, 25000),
(31, 0, 'ORD0006', 1719888076, '02-07-2024', 14000, 0, 14000, 15000, 1000),
(32, 0, 'ORD0008', 1720434444, '08-07-2024', 9000, 0, 9000, 10000, 1000),
(33, 38, 'ORD0002', 1720577677, '10-07-2024', 135000, 0, 135000, 200000, 65000),
(34, 36, 'ORD00012', 1721091099, '16-07-2024', 25000, 0, 25000, 30000, 5000),
(35, 41, 'ORD00015', 1721099134, '16-07-2024', 33000, 0, 33000, 50000, 17000),
(36, 41, 'ORD00016', 1721104167, '16-07-2024', 10000, 0, 10000, 15000, 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nama_user` varchar(128) NOT NULL,
  `id_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `nama_user`, `id_level`) VALUES
(1, 'admin', '123', 'Febrian Valentino Sembiring', 1),
(2, 'kasir', '123', 'febrian', 3),
(6, 'owner', '123', 'Sembrena', 4),
(13, 'kasir2', '123', 'Winda Sari', 3),
(36, 'tigor', '123', 'tigor', 5),
(37, 'daniel', '123', 'daniel', 5),
(38, 'dodi', '123', 'dodi', 5),
(39, 'sj', '123', 'sj', 5),
(40, '', '', '', 5),
(41, 'user', 'user', 'user', 5),
(42, 'user', '123', 'user', 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_detail_order`
--
ALTER TABLE `tb_detail_order`
  ADD PRIMARY KEY (`id_dorder`);

--
-- Indeks untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `tb_masakan`
--
ALTER TABLE `tb_masakan`
  ADD PRIMARY KEY (`id_masakan`);

--
-- Indeks untuk tabel `tb_meja`
--
ALTER TABLE `tb_meja`
  ADD PRIMARY KEY (`meja_id`);

--
-- Indeks untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_detail_order`
--
ALTER TABLE `tb_detail_order`
  MODIFY `id_dorder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_masakan`
--
ALTER TABLE `tb_masakan`
  MODIFY `id_masakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `tb_meja`
--
ALTER TABLE `tb_meja`
  MODIFY `meja_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
