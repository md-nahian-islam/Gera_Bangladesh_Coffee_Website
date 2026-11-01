-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2026 at 08:34 PM
-- Server version: 10.11.16-MariaDB
-- PHP Version: 8.3.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gera`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `catrgory_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `catrgory_name`, `description`, `product_id`) VALUES
(1, 'Whole beans', 'Whole beans', 0),
(2, 'Ground coffee', 'Ground coffee', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_number` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `payment_status` enum('Cash On Delivary','Bkash','Nagad','Debit/Credit Card') NOT NULL,
  `sub_total` decimal(10,0) NOT NULL,
  `delivery_charge` decimal(10,0) NOT NULL,
  `total_price` decimal(10,0) NOT NULL,
  `ordered_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `catergory_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `packet_size` decimal(10,0) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `catergory_id`, `product_name`, `description`, `packet_size`, `price`, `image`, `quantity`, `created_at`, `status`) VALUES
(1, 0, 'Arabica Classic Whole Beans', 'A simple place to begin. Whole-bean Ethiopian Arabica for the pleasure of grinding, brewing, and taking a moment of your own.', 100, 300, NULL, NULL, '2026-11-02', 1),
(2, 0, 'Arabica Classic Ground', NULL, 100, 300, NULL, NULL, '2026-11-02', 1),
(3, 0, 'Arabica Classic Whole Beans', NULL, 250, 650, NULL, NULL, '2026-11-02', 1),
(4, 0, 'Arabica Classic Ground', NULL, 250, 650, NULL, NULL, '2026-11-02', 1),
(5, 0, 'Signature Roast Whole Beans', NULL, NULL, 750, NULL, 250, '2026-11-02', 1),
(6, 0, 'Signature Roast Ground', NULL, 250, 750, NULL, NULL, '2026-11-02', 1),
(7, 0, 'Arabica Whole Beans', NULL, 500, 1200, NULL, NULL, '2026-11-02', 1),
(8, 0, 'Arabica Ground', NULL, 500, 1200, NULL, NULL, '2026-11-02', 1),
(9, 0, 'Arabica Whole Beans', NULL, 1000, 2250, NULL, NULL, '2026-11-02', 1),
(10, 0, 'Espresso Grind', NULL, 250, 700, NULL, NULL, '2026-11-02', 1),
(11, 0, 'Café Pack Whole Beans', NULL, 1000, 2250, NULL, NULL, '2026-11-02', 1),
(12, 0, 'Café Pack Ground', NULL, 1000, 2250, NULL, NULL, '2026-11-02', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
