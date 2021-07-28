-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2021 at 03:18 PM
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
-- Database: `stok_barang`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('422sirhhni2skvbcqo3jp7kuru0b2r56', '::1', 1626958241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363935383234313b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('4r9vc5f4q77g5ebj6qmbrlrikqnd9jcb', '::1', 1626958608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363935383630383b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('2uu722of5jl3k92epbqd0fmgj1cobp1s', '::1', 1626958926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363935383932363b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('16266gpe3dbf284hkb39m4nkc66r1ts6', '::1', 1626959247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363935393234373b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('tlg7ecuvsr3bcpei2ptiqd66bii79joc', '::1', 1626960063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363936303036333b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('ooncav88u803jeturpgehjmalp25tgoo', '::1', 1626960506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363936303530363b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('fr1b11v6175trp2msc52d44t4do537e6', '::1', 1626960951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363936303935313b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('jjc4ahb1rugftfqnq8tokucv1661odbq', '::1', 1626961407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363936313430373b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('gmtbo993bkug8ihf07etlin5mffqsn6g', '::1', 1626961831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363936313833313b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('2t3p0eh2hvuioskqorl6e7n2kj148pjl', '::1', 1626962154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363936323135343b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('9fhevpmfmucscd37nne34dd8e9tbie13', '::1', 1626963183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363936333138333b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('s9k9bceftkbs6ngi2r2jfkvmdahhhv9n', '::1', 1626963738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363936333733383b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('ebcniuqcbsr66bqi834ioh8iaoj5qfu9', '::1', 1626963972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363936333733383b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('9vqoop6to3qpq3c051sf9a681kqghbah', '::1', 1627092023, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373039313738393b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('2vrei5g16jchk8ooedepgd7vfooqicuk', '::1', 1627344832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373334343833323b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('q97i1rvsbqt5ruil3racr1mcnthl3g2p', '::1', 1627345158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373334353135383b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('pn4qvktdjt6jjfuj37v3giqitq40v8qj', '::1', 1627347863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373334373836333b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('cepv83maq52mpu2382i8hu70t04c0gb7', '::1', 1627348174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373334383137343b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b),
('742fnt6g4cl5kht2d84uas8mijc9n01a', '::1', 1627348204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373334383137343b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313539363031373834372e706e67223b);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `kode_barang` varchar(6) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `jenis` varchar(256) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL DEFAULT 0,
  `harga_beli` double NOT NULL,
  `harga` double NOT NULL,
  `active` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`kode_barang`, `nama_barang`, `jenis`, `brand`, `stok`, `harga_beli`, `harga`, `active`) VALUES
('000711', 'Magnum Mild', 'Rokok', 'Sampoerna', 13, 20000, 22000, 'Y'),
('010567', 'Dji Sam Soe 16', 'Rokok\r\n', 'Sampoerna', 5, 0, 18000, 'Y'),
('100120', 'Gudang Garam Filter', 'Rokok', 'Surya', 8, 0, 20000, 'Y'),
('111111', 'daia', 'Detergen', 'daia', 5, 0, 1000, 'Y'),
('114348', 'Paseo Nice Fruit', '', 'Paseo', 31, 0, 10000, 'Y'),
('123456', 'Daia', '', 'cocacola', 12, 0, 2000, 'Y'),
('164539', 'NutriBoost', '', 'Coca-Cola', 24, 0, 6500, 'Y'),
('166038', 'Minute Maid Pulpy Orange', '', 'Coca-Cola', 22, 0, 6000, 'Y'),
('222222', 'rokok', '', 'sampoerna', 5, 0, 25000, 'Y'),
('234567', 'Minyak Goreng', '', 'Kunci Mas', 3, 0, 15000, 'Y'),
('300087', 'GG Mild', '', 'Surya', 7, 0, 22500, 'Y'),
('641045', 'Tisu Basah Baby', '', 'Paseo', 12, 0, 15000, 'Y'),
('6644', '5656', '', '5656', 6, 0, 56, 'Y'),
('666666', 'rokok', '', 'surya', 3, 0, 20000, 'Y'),
('777777', 'Cleo', '', 'Cleo', 5, 2000, 2500, 'Y'),
('888888', 'Narmada', '', 'Narmada', 3, 0, 2500, 'Y'),
('999999', 'rokok', '', 'djarum', 3, 0, 20000, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_costomer`
--

CREATE TABLE `tbl_costomer` (
  `id_costomer` varchar(15) NOT NULL,
  `nama_costomer` varchar(256) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_costomer`
--

INSERT INTO `tbl_costomer` (`id_costomer`, `nama_costomer`, `alamat`, `telp`) VALUES
('', 'indah', 'ampenan', '098765432345678');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_pembelian`
--

CREATE TABLE `tbl_detail_pembelian` (
  `id_pembelian` varchar(20) NOT NULL,
  `id_barang` varchar(6) NOT NULL,
  `qty` smallint(6) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_detail_pembelian`
--

INSERT INTO `tbl_detail_pembelian` (`id_pembelian`, `id_barang`, `qty`, `harga`) VALUES
('ID1624799561', '166038', 12, 6000),
('ID1626316160', '000711', 4, 22500),
('ID1626492874', '000711', 7, 22000),
('ID1626958782', '114348', 1, 20000);

--
-- Triggers `tbl_detail_pembelian`
--
DELIMITER $$
CREATE TRIGGER `pembelian_barang` AFTER INSERT ON `tbl_detail_pembelian` FOR EACH ROW BEGIN
	UPDATE tbl_barang b SET b.stok = b.stok + new.qty
    WHERE b.kode_barang = new.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_pembelian` AFTER DELETE ON `tbl_detail_pembelian` FOR EACH ROW BEGIN
	UPDATE tbl_barang b SET b.stok = b.stok - old.qty
    WHERE b.kode_barang = old.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_penjualan`
--

CREATE TABLE `tbl_detail_penjualan` (
  `id_penjualan` varchar(20) NOT NULL,
  `id_barang` varchar(6) NOT NULL,
  `qty` smallint(6) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_detail_penjualan`
--

INSERT INTO `tbl_detail_penjualan` (`id_penjualan`, `id_barang`, `qty`, `harga`) VALUES
('ID1624799640', '166038', 2, 6000),
('ID1626316220', '000711', 2, 22000);

--
-- Triggers `tbl_detail_penjualan`
--
DELIMITER $$
CREATE TRIGGER `penjualan_barang` AFTER INSERT ON `tbl_detail_penjualan` FOR EACH ROW BEGIN
	UPDATE tbl_barang b SET b.stok = b.stok - new.qty
    WHERE b.kode_barang = new.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_penjualan` AFTER DELETE ON `tbl_detail_penjualan` FOR EACH ROW BEGIN
	UPDATE tbl_barang b SET b.stok = b.stok + old.qty
    WHERE b.kode_barang = old.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembelian`
--

CREATE TABLE `tbl_pembelian` (
  `id_pembelian` varchar(20) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `id_supplier` varchar(15) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pembelian`
--

INSERT INTO `tbl_pembelian` (`id_pembelian`, `tgl_pembelian`, `id_supplier`, `id_user`) VALUES
('ID1624799561', '2021-06-27', 'ID1624722160', 1),
('ID1626316160', '2021-07-15', 'ID1624722231', 1),
('ID1626492874', '2021-07-17', 'ID1624722231', 1),
('ID1626958782', '2021-07-22', 'ID1624722160', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `id_penjualan` varchar(20) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`id_penjualan`, `nama_pembeli`, `tgl_penjualan`, `id_user`) VALUES
('ID1624799640', 'Nike', '2021-06-27', 1),
('ID1626316220', 'indah', '2021-07-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id_supplier` varchar(15) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id_supplier`, `nama_supplier`, `alamat`, `telp`) VALUES
('ID1624722160', 'PT. Coca Cola', 'Jln. Pendidikan', '08972689161'),
('ID1624722209', 'PT. Paseo', 'Jln. Energi', '08765778265'),
('ID1624722231', 'PT. Sampoerna', 'Jln. Amir Hamzah', '08972871371'),
('ID1624722279', 'PT. Surya', 'Jln. Langko', '089974818413');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `foto` varchar(50) NOT NULL DEFAULT 'default.jpg',
  `level` enum('admin','pegawai') NOT NULL,
  `active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `fullname`, `password`, `alamat`, `hp`, `foto`, `level`, `active`, `last_login`) VALUES
(1, 'admin', 'Administrator', '$2y$08$BO41OJFfhPPPzjKdWw2I6OyUElK1mkD43UVt1ss6J1xrVUExC1lRy', '', '', 'foto1596017847.png', 'admin', 'Y', '2021-07-17 10:41:37'),
(2, 'pegawai', 'Pegawai', '$2y$10$bZkYvXB4K93BWcR05e92r.Vcyq1PrnGFtzougX0LdN5bLaGY/1gPa', 'Jl. Semeru No.90', '085731109355', 'foto1596071469.png', 'pegawai', 'Y', '2021-07-17 10:46:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
