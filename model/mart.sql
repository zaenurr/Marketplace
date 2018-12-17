-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 17, 2018 at 03:00 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mart`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `company` varchar(30) NOT NULL,
  `made_in` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `company`, `made_in`, `created_at`, `updated_at`) VALUES
(1, 'Aqua', 'Danone, tbk', 'Indonesia', '2018-12-02 14:29:45', '2018-12-02 14:29:45'),
(2, 'Le Mineral', 'PT. Tirta Fresindo Jaya', 'Indonesia', '2018-12-02 14:29:45', '2018-12-02 14:29:45'),
(3, 'Pota Bee', 'Calbe Wings Food, tbk', 'Indonesia', '2018-12-02 14:29:45', '2018-12-02 14:29:45'),
(4, 'Choco Chips', 'PT. Simba Indosnack Makmur', 'Indonesia', '2018-12-02 14:29:45', '2018-12-02 14:29:45'),
(5, 'White Coffe', 'PT. Javaprima Abadi', 'Indonesia', '2018-12-02 14:29:45', '2018-12-02 14:29:45'),
(6, 'Adem Sari', 'PT. Hokkan Indonesia', 'Indonesia', '2018-12-02 14:29:45', '2018-12-02 14:29:45'),
(7, 'Rinso', 'Bersinar Jaya, tbk', 'Indonesia', '2018-12-02 14:29:45', '2018-12-02 14:29:45'),
(8, 'Mamy Popo', 'Diapampers Makmur, tbk', 'Indonesia', '2018-12-02 14:29:45', '2018-12-02 14:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_cashier` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `id_customer`, `id_cashier`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2018-12-06 14:20:04', '2018-12-06 14:20:04'),
(2, 2, 4, '2018-12-14 16:18:40', '2018-12-14 16:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `cashiers`
--

CREATE TABLE `cashiers` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `id_store` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashiers`
--

INSERT INTO `cashiers` (`id`, `name`, `id_store`, `created_at`, `updated_at`) VALUES
(3, 'Asep', 1, '2018-12-06 14:19:05', '2018-12-06 14:19:05'),
(4, 'Sarah', 1, '2018-12-06 14:19:05', '2018-12-06 14:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Food', '2018-12-02 14:22:32', '2018-12-02 14:22:32'),
(2, 'Drink', '2018-12-02 14:22:32', '2018-12-02 14:22:32'),
(3, 'Detergent', '2018-12-02 14:22:32', '2018-12-02 14:22:32'),
(4, 'Diaper', '2018-12-02 14:22:32', '2018-12-02 14:22:32'),
(5, 'Cigarette ', '2018-12-02 14:22:32', '2018-12-02 14:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT 'Anonymous',
  `phone_number` int(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone_number`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Anonymous', NULL, NULL, '2018-12-06 14:17:33', '2018-12-06 14:17:33'),
(2, 'Andy', NULL, NULL, '2018-12-06 14:17:33', '2018-12-06 14:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_cart`, `id_product`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 2, '2018-12-06 14:22:18', '2018-12-06 14:22:18'),
(2, 1, 3, 1, '2018-12-06 14:22:18', '2018-12-06 14:22:18'),
(3, 1, 13, 2, '2018-12-06 14:22:18', '2018-12-06 14:22:18'),
(4, 1, 8, 1, '2018-12-06 14:22:18', '2018-12-06 14:22:18'),
(5, 1, 1, 5, '2018-12-06 14:22:18', '2018-12-06 14:22:18'),
(6, 2, 13, 2, '2018-12-14 16:20:12', '2018-12-14 16:20:12'),
(7, 2, 3, 1, '2018-12-14 16:20:12', '2018-12-14 16:20:12'),
(8, 2, 8, 1, '2018-12-14 16:20:12', '2018-12-14 16:20:12'),
(9, 2, 10, 4, '2018-12-14 16:20:12', '2018-12-14 16:20:12'),
(10, 2, 1, 4, '2018-12-14 16:20:12', '2018-12-14 16:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `detail` text,
  `price` int(11) NOT NULL,
  `discount` tinyint(4) DEFAULT '0',
  `id_category` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `discount`, `id_category`, `id_brand`, `created_at`, `updated_at`) VALUES
(1, 'Pota Bee Original', '', 2000, 0, 1, 3, '2018-12-02 14:53:39', '2018-12-02 14:53:39'),
(2, 'Simba Choco Chips', '', 0, 0, 1, 4, '2018-12-02 14:53:39', '2018-12-02 14:54:05'),
(3, 'Aqua Galon', '', 15000, 0, 2, 1, '2018-12-02 14:53:39', '2018-12-02 14:53:39'),
(4, 'Lemineral Botol', '', 6000, 0, 2, 2, '2018-12-02 14:53:39', '2018-12-02 14:53:39'),
(5, 'Simba Choco Chips Bucket ', '', 25000, 0, 1, 4, '2018-12-02 14:53:39', '2018-12-02 14:53:39'),
(6, 'Luwak White Coffe', '', 4500, 0, 2, 5, '2018-12-02 14:53:39', '2018-12-02 14:53:39'),
(7, 'Adem Sari Chin Ku', '', 5500, 0, 2, 6, '2018-12-02 14:53:39', '2018-12-02 14:53:39'),
(8, 'Rinso Detergent Bubuk Bucket', '', 45000, 0, 3, 7, '2018-12-02 14:53:39', '2018-12-02 14:53:39'),
(9, 'Mamy Popo Small', '', 13500, 10, 4, 8, '2018-12-02 14:53:39', '2018-12-02 19:43:31'),
(10, 'Adem Sari Sachet', '', 1000, 0, 2, 6, '2018-12-02 21:36:39', '2018-12-02 21:36:39'),
(11, 'Simba Corn Choco Chips Bucket', '', 50000, 5, 1, 4, '2018-12-02 21:41:00', '2018-12-02 21:41:00'),
(13, 'Corn Choco Chips Bucket', '', 50000, 5, 1, 4, '2018-12-02 21:41:42', '2018-12-02 21:41:42'),
(15, 'Corn Choco Chips Small', '', 50000, 5, 1, 4, '2018-12-02 21:43:07', '2018-12-02 21:43:07'),
(17, 'Corn Choco Chips Medium', '', 50000, 5, 1, 4, '2018-12-02 21:45:55', '2018-12-02 21:45:55'),
(19, 'Test Aqua Drink 3', '', 40000, 4, 2, 1, '2018-12-02 21:49:51', '2018-12-02 21:49:51'),
(21, 'T4', '', 1000, 65, 2, 3, '2018-12-02 21:54:33', '2018-12-02 21:54:33'),
(23, 'T2', '', 1000, 65, 2, 3, '2018-12-02 21:55:22', '2018-12-02 21:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `products_test`
--

CREATE TABLE `products_test` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `detail` text,
  `price` int(11) NOT NULL,
  `discount` tinyint(4) DEFAULT '0',
  `id_category` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_test`
--

INSERT INTO `products_test` (`id`, `name`, `detail`, `price`, `discount`, `id_category`, `id_brand`, `created_at`, `updated_at`) VALUES
(0, 'B', '', 5000, 0, 2, 4, '2018-12-02 22:22:13', '2018-12-02 22:22:13'),
(0, 'B', '', 5000, 0, 2, 4, '2018-12-02 22:22:13', '2018-12-02 22:22:13'),
(0, 'D', '', 5000, 0, 2, 4, '2018-12-02 22:23:06', '2018-12-02 22:23:06'),
(0, 'D', '', 5000, 0, 2, 4, '2018-12-02 22:23:06', '2018-12-02 22:23:06'),
(0, 'Array', 'Array', 0, 0, 0, 0, '2018-12-02 23:22:26', '2018-12-02 23:22:26'),
(0, 'Array', 'Array', 0, 0, 0, 0, '2018-12-02 23:22:26', '2018-12-02 23:22:26'),
(0, 'Array', 'Array', 0, 0, 0, 0, '2018-12-02 23:25:08', '2018-12-02 23:25:08'),
(0, 'Array', 'Array', 0, 0, 0, 0, '2018-12-02 23:25:08', '2018-12-02 23:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `quantity` tinyint(4) DEFAULT '0',
  `id_product` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `quantity`, `id_product`, `created_at`, `updated_at`) VALUES
(1, 100, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 100, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 100, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 100, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 100, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `zip_code` varchar(5) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `address`, `zip_code`, `created_at`, `updated_at`) VALUES
(1, 'President Cafe', '', '17540', '2018-12-06 14:18:45', '2018-12-06 14:18:45'),
(2, 'Harvard Cafe', '', '10000', '2018-12-06 14:18:45', '2018-12-06 14:18:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_caser` (`id_cashier`);

--
-- Indexes for table `cashiers`
--
ALTER TABLE `cashiers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_store` (`id_store`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number` (`phone_number`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_brand` (`id_brand`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cashiers`
--
ALTER TABLE `cashiers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`id_cashier`) REFERENCES `cashiers` (`id`);

--
-- Constraints for table `cashiers`
--
ALTER TABLE `cashiers`
  ADD CONSTRAINT `cashiers_ibfk_1` FOREIGN KEY (`id_store`) REFERENCES `stores` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_cart`) REFERENCES `carts` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`);

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
