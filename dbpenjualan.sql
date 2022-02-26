-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2022 at 08:02 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpenjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `ID_Barang` varchar(10) NOT NULL,
  `Nama_Barang` varchar(50) DEFAULT NULL,
  `Jenis` varchar(20) DEFAULT NULL,
  `Ukuran` varchar(5) DEFAULT NULL,
  `HargaBeli` decimal(10,0) DEFAULT NULL,
  `HargaJual` decimal(10,0) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`ID_Barang`, `Nama_Barang`, `Jenis`, `Ukuran`, `HargaBeli`, `HargaJual`, `Stok`) VALUES
('BR002', 'jeans', 'Celana', 'L', '75000', '150000', 20),
('BR003', 'T- shirt', 'Kemeja', 'XL', '50000', '75000', 15);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `NoFaktur` varchar(20) NOT NULL,
  `Tanggal` varchar(20) DEFAULT NULL,
  `ID_Customer` varchar(10) DEFAULT NULL,
  `TotalBeli` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`NoFaktur`, `Tanggal`, `ID_Customer`, `TotalBeli`) VALUES
('TR0001', '24-02-2022', '1', '40000'),
('TR0002', '24-02-2022', '2', '40000'),
('TR0003', '26-02-2022', '001', '300000'),
('TR0004', '26-02-2022', '002', '150000'),
('TR0005', '26-02-2022', '001', '225000');

-- --------------------------------------------------------

--
-- Table structure for table `penjualanrinci`
--

CREATE TABLE `penjualanrinci` (
  `NoFaktur` varchar(20) DEFAULT NULL,
  `Id_Barang` varchar(10) DEFAULT NULL,
  `Nama_Barang` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualanrinci`
--

INSERT INTO `penjualanrinci` (`NoFaktur`, `Id_Barang`, `Nama_Barang`, `jumlah`, `harga`, `total`) VALUES
('TR0001', '1001', 'rinso2', 2, '3000', '6000'),
('TR0001', '2', 'sabun', 2, '20000', '40000'),
('TR0002', '3', 'sabun', 2, '20000', '40000'),
('TR0003', '001', 'jeans', 2, '150000', '300000'),
('TR0004', '004', 'tshirt', 3, '50000', '150000'),
('TR0005', 'Br003', 'T-shirt', 3, '75000', '225000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`ID_Barang`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`NoFaktur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
