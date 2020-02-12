-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Feb 2020 pada 04.49
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kereta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gerbong`
--

CREATE TABLE `gerbong` (
  `id` int(11) NOT NULL,
  `nama_gerbong` varchar(255) NOT NULL,
  `jumlah_kursi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `nama_kereta` varchar(255) NOT NULL,
  `asal` int(11) NOT NULL,
  `tujuan` int(11) NOT NULL,
  `tgl_berangkat` datetime NOT NULL,
  `tgl_sampai` datetime NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `nama_kereta`, `asal`, `tujuan`, `tgl_berangkat`, `tgl_sampai`, `kelas`, `harga`, `status`) VALUES
(2, 'MLIKA', 1, 2, '2020-02-04 03:10:00', '2020-02-04 03:10:00', 'EKONOMI', '500000', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursi`
--

CREATE TABLE `kursi` (
  `id` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `kursi` int(11) NOT NULL,
  `bagian` varchar(5) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kursi`
--

INSERT INTO `kursi` (`id`, `id_jadwal`, `kursi`, `bagian`, `status`) VALUES
(1, 1, 1, 'a', 1),
(2, 1, 2, 'a', 0),
(3, 1, 3, 'a', 0),
(4, 1, 4, 'a', 1),
(5, 1, 5, 'a', 0),
(6, 1, 6, 'a', 0),
(7, 1, 7, 'a', 0),
(8, 1, 8, 'a', 0),
(9, 1, 9, 'a', 0),
(10, 1, 10, 'a', 0),
(11, 2, 1, 'a', 0),
(12, 2, 2, 'a', 0),
(13, 2, 3, 'a', 1),
(14, 2, 4, 'a', 0),
(15, 2, 5, 'a', 0),
(16, 2, 6, 'a', 0),
(17, 2, 7, 'a', 1),
(18, 2, 8, 'a', 1),
(19, 2, 9, 'a', 0),
(20, 2, 10, 'a', 0),
(21, 2, 11, 'a', 0),
(22, 2, 12, 'a', 0),
(23, 2, 13, 'a', 0),
(24, 2, 14, 'a', 1),
(25, 2, 15, 'a', 0),
(26, 2, 16, 'a', 1),
(27, 2, 17, 'a', 0),
(28, 2, 18, 'a', 0),
(29, 2, 19, 'a', 1),
(30, 2, 20, 'a', 0),
(31, 2, 21, 'a', 0),
(32, 2, 22, 'a', 0),
(33, 2, 23, 'a', 0),
(34, 2, 24, 'a', 0),
(35, 2, 25, 'a', 0),
(36, 2, 26, 'a', 0),
(37, 2, 27, 'a', 0),
(38, 2, 28, 'a', 0),
(39, 2, 29, 'a', 0),
(40, 2, 30, 'a', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `no_pembayaran` varchar(255) NOT NULL,
  `no_tiket` varchar(100) NOT NULL,
  `total_pembayaran` varchar(255) NOT NULL,
  `bukti` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `no_pembayaran`, `no_tiket`, `total_pembayaran`, `bukti`, `status`) VALUES
(1, 'AC2461', 'T001', '600000', NULL, 0),
(2, 'AC2462', 'T002', '300000', NULL, 0),
(3, 'AC2463', 'T003', '300000', 'pool.jpg', 2),
(4, 'AC2464', 'T004', '1000000', NULL, 0),
(5, 'AC2465', 'T005', '1000000', NULL, 0),
(6, 'AC2466', 'T006', '1000000', 'abc.png', 2),
(7, 'AC2467', 'T007', '500000', NULL, 0),
(8, 'AC2468', 'T008', '500000', 'ayam.png', 2),
(9, 'AC2469', 'T009', '500000', NULL, 0),
(10, 'AC24610', 'T0010', '500000', 'aaaaaaaaaaaa.png', 1),
(11, 'AC24611', 'T0011', '1000000', NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penumpang`
--

CREATE TABLE `penumpang` (
  `id` int(11) NOT NULL,
  `nomor_tiket` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_identitas` varchar(255) NOT NULL,
  `gerbong` int(11) DEFAULT NULL,
  `bagian` varchar(5) DEFAULT NULL,
  `kursi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penumpang`
--

INSERT INTO `penumpang` (`id`, `nomor_tiket`, `nama`, `no_identitas`, `gerbong`, `bagian`, `kursi`) VALUES
(14, 'T0010', 'mona', '089765432134', 1, 'a', 1),
(15, 'T0011', 'MELLY', '089765432134', NULL, NULL, NULL),
(16, 'T0011', 'bambang', '0989874651', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stasiun`
--

CREATE TABLE `stasiun` (
  `id` int(11) NOT NULL,
  `nama_stasiun` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stasiun`
--

INSERT INTO `stasiun` (`id`, `nama_stasiun`) VALUES
(1, 'CIREBON'),
(2, 'BANDUNG'),
(3, 'SEMARANG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket`
--

CREATE TABLE `tiket` (
  `id` int(11) NOT NULL,
  `nomor_tiket` varchar(255) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `nama_pemesan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tiket`
--

INSERT INTO `tiket` (`id`, `nomor_tiket`, `id_jadwal`, `nama_pemesan`, `email`, `no_telepon`, `alamat`, `tanggal`) VALUES
(1, 'T001', 1, 'soleh', 'soleh@gmail.com', '089768965456', 'Jl. inaja', '2020-01-19 02:18:31'),
(2, 'T002', 1, 'fagrur nur admad qitum', 'soleh@gmail.com', '089768965456', 'aswdefrgth', '2020-01-21 02:41:16'),
(3, 'T003', 1, 'soleh', 'soleh@gmail.com', '089768965456', 'Jl. kljkh', '2020-01-21 06:50:46'),
(4, 'T004', 2, 'mona', 'mona@gmail.com', '012154512154', 'tubanan jaya', '2020-01-30 03:12:23'),
(5, 'T005', 2, 'mona', 'mona@gmail.com', '012154512154', 'tubanan jaya', '2020-01-30 03:12:24'),
(6, 'T006', 2, 'mona', 'rama12441@hotmail.com', '012154512154', 'hfi', '2020-02-04 02:36:53'),
(7, 'T007', 2, 'lala', 'mona@gmail.com', '012154512154', 'asdfgb', '2020-02-04 02:43:44'),
(8, 'T008', 2, 'graha', 'mona@gmail.com', '012154512154', ';;', '2020-02-04 02:45:11'),
(9, 'T009', 2, 'lala', 'rama12441@hotmail.com', '848084', 'rtyiujokl', '2020-02-04 02:50:36'),
(10, 'T0010', 2, 'mona', 'mona@gmail.com', '012154512154', 'tubanan jaya', '2020-02-04 03:03:47'),
(11, 'T0011', 2, 'graha', 'mona@gmail.com', '848084', 'asdfg', '2020-02-04 03:08:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gerbong`
--
ALTER TABLE `gerbong`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kursi`
--
ALTER TABLE `kursi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stasiun`
--
ALTER TABLE `stasiun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `gerbong`
--
ALTER TABLE `gerbong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kursi`
--
ALTER TABLE `kursi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `penumpang`
--
ALTER TABLE `penumpang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `stasiun`
--
ALTER TABLE `stasiun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
