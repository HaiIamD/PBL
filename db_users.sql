-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Okt 2022 pada 03.12
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_users`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `logbook`
--

CREATE TABLE `logbook` (
  `namadestinasi` varchar(200) NOT NULL,
  `tabunganku` int(200) NOT NULL,
  `target` int(200) NOT NULL,
  `tanggalmenabung` varchar(200) NOT NULL,
  `status` text NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `logbook`
--

INSERT INTO `logbook` (`namadestinasi`, `tabunganku`, `target`, `tanggalmenabung`, `status`, `gambar`) VALUES
('dimas', 1000, 1000, '19 mei 2022', 'done', ''),
('dasd', 1, 1, '1s', '1', ''),
('dasd', 1, 1, '1s', '1', ''),
('1', 1, 1, '1', '1', 'galaxy.jpg'),
('12', 2, 2, '2', '2', '113-galaxy.jpg'),
('', 0, 0, '', '', ''),
('ads', 23132, 21321, '21321', 'weq', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logbook1`
--

CREATE TABLE `logbook1` (
  `namadestinasi` varchar(200) NOT NULL,
  `tabunganku` varchar(200) NOT NULL,
  `target` varchar(200) NOT NULL,
  `tanggalmenabung` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `logbook1`
--

INSERT INTO `logbook1` (`namadestinasi`, `tabunganku`, `target`, `tanggalmenabung`, `status`) VALUES
('Bali', 'Rp.900.000', 'Rp.1.500.000', '14 Januari 2023', 'On Going'),
('Batam', 'Rp.500.000', 'Rp.1.000.000', '23 Juni 2021', 'On Going'),
('Batu', 'Lima Puluh Ribu', 'Duaratus Ribu', '22 januari 2020', 'on goin'),
('Dimas', 'Dimas', 'Dimas', 'Dimas', 'Dimas'),
('Juanda', 'Lima Puluh Ribu', 'Seratus Ribu', '22 mei 2022', 'On Going');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`name`, `username`, `email`, `password`) VALUES
('', '', '', ''),
('aa', 'aa', 'a@gmail.com', 'a'),
('Dimas', 'dimm', 'd@gmail.com', 'd'),
('Dimas', 'Dimas', 'Dimas@gmail.com', 'Dimas'),
('Dimm', 'Dimm', 'dimmts19@gmail.com', 'Dimm'),
('Nama', 'nama', 'nama@gmail.com', 'nama'),
('root', 'root', 'root@gmail.com', 'root'),
('Toriq', 'Toriq', 'Toriq@gmail.com', 'Toriq');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `logbook1`
--
ALTER TABLE `logbook1`
  ADD PRIMARY KEY (`namadestinasi`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
