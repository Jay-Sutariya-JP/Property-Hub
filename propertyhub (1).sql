-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 09:13 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `propertyhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `Password`) VALUES
(1, 'ashish233@gmail.com', 'ashish'),
(2, 'dhruvin12@gmail.com', 'dhruvin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_phone` int(11) NOT NULL,
  `contact_message` text NOT NULL,
  `contact_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_id`, `contact_name`, `contact_email`, `contact_phone`, `contact_message`, `contact_date`) VALUES
(1, 'janki', 'jankikathrotiya69@gmail.com', 2147483647, 'i contact with the properties owner.', '2020-06-01'),
(2, 'ertryrey', 'ryrur@gmailcom', 0, 'deyhrhyr', '2024-04-15'),
(3, 'ashish', 'ashishdhameliya9925@gmail.com', 2147483647, 'hey', '2024-04-15'),
(4, 'okok', 'ok@gmail.com', 2147483647, 'okokokokokoko', '2024-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `card_name` varchar(255) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `exp_month` varchar(50) NOT NULL,
  `exp_year` int(11) NOT NULL,
  `cvv` int(11) NOT NULL,
  `amount` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `transaction_id`, `first_name`, `last_name`, `card_name`, `card_number`, `exp_month`, `exp_year`, `cvv`, `amount`, `user_id`, `property_id`, `created_at`) VALUES
(13, '65eac97ee1c23', 'Ashish', 'Patel', 'credit card', '9562-8486-2954-4649', '01', 2030, 856, 11160, 10, 7, '2024-03-08 09:17:02'),
(14, '65eacb2146d0d', 'Pal', 'Patel', 'credit card', '7856-9588-5445-8885', '01', 2031, 528, 12650, 12, 3, '2024-03-08 09:24:01'),
(15, '65eacbebbb6f2', 'Kunjit', 'Patel', 'smart card', '9554-6184-4646-4646', '01', 2031, 856, 12000, 13, 36, '2024-03-08 09:27:23'),
(16, '65ead3707e87a', 'Ashish', 'Patel', 'smart card', '8564-5148-4545-4844', '01', 2030, 568, 8800000, 10, 42, '2024-03-08 09:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_property`
--

CREATE TABLE `tbl_property` (
  `property_id` int(11) NOT NULL,
  `property_name` text NOT NULL,
  `property_type` text NOT NULL,
  `property_address` text NOT NULL,
  `property_sqfeet` text DEFAULT NULL,
  `property_price` int(100) NOT NULL,
  `property_image` text NOT NULL,
  `property_description` text DEFAULT NULL,
  `property_totalbeds` int(11) NOT NULL,
  `property_totalbaths` int(11) NOT NULL,
  `property_state` text DEFAULT NULL,
  `property_city` text DEFAULT NULL,
  `property_status` int(11) NOT NULL COMMENT '0=rent 1=sell',
  `deposite` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `live_status` int(10) NOT NULL COMMENT '0=pending,1=approved,2=sold,3=rent',
  `buyer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_property`
--

INSERT INTO `tbl_property` (`property_id`, `property_name`, `property_type`, `property_address`, `property_sqfeet`, `property_price`, `property_image`, `property_description`, `property_totalbeds`, `property_totalbaths`, `property_state`, `property_city`, `property_status`, `deposite`, `user_id`, `live_status`, `buyer_id`) VALUES
(1, 'madhuvan', 'Bungalow', 'a-11,sarthana, Jakatnaka, Surat', '100', 4000000, '2020-03-20-12-12-36-0.jpg,2020-03-20-12-12-36-1.jpg,2020-03-20-12-12-36-2.jpg,2020-03-20-12-12-36-3.jpg,2020-03-20-12-12-36-4.jpg', 'Madhuvan Bungalows is one of the residential developments of Madhuvan Developers, located in Surat. It offers spacious skillfully designed 4BHK and 5BHK villas. The project is well equipped with all the amenities to facilitate the needs of the residents.', 3, 4, 'Gujarat', 'Surat', 1, 0, 4, 1, 0),
(2, 'sondarya', 'Flat', 'B-23, sondarya Residency, ahemdabad', '80', 3000000, '2020-03-20-12-21-38-0.jpg,2020-03-20-12-21-38-1.jpg,2020-03-20-12-21-38-2.jpg,2020-03-20-12-21-38-3.jpg,2020-03-20-12-21-38-4.jpg', 'sondarya flat is one of the residential developments of Sondarya Developers, located in Ahemdabad. It offers spacious skillfully designed 3BHK and 2BHK villas. The project is well equipped with all the amenities to facilitate the needs of the residents.', 3, 3, 'Gujarat', 'Ahemdabad', 1, 0, 5, 1, 0),
(3, 'shiv-pooja', 'Row-house', 'a-431,Shiv-pooja Row-House, Vadodara', '120', 850, '2020-03-20-12-27-45-0.jpg,2020-03-20-12-27-45-1.jpg,2020-03-20-12-27-45-2.jpg,2020-03-20-12-27-45-3.jpg', 'shiv-pooja row-house is one of the residential developments of shiv-pooja Developers, located in Vadodara. It offers spacious skillfully designed 4BHK  villa. The project is well equipped with all the amenities to facilitate the needs of the residents.', 4, 4, 'Gujarat', 'Vadodara', 0, 5000, 6, 3, 12),
(4, 'aanand villa', 'Farm-house', 'aanad villa rajkot', '4000', 2000000, '2020-04-05-12-54-55-0.jpg,2020-04-05-12-54-55-1.jpg,2020-04-05-12-54-55-2.jpg,2020-04-05-12-54-55-3.jpg', 'aanand farm-House is one of the residential developments of  aanad Developers, located in Rajkot. It offers spacious skillfully designed 1BHK  villas. The project is well equipped with all the amenities to facilitate the needs of the residents.', 1, 2, 'Gujarat', 'Rajkot', 1, 0, 4, 1, 0),
(5, 'Saptansh Bungalow', 'Bungalow', 'Saptansh Bungalow, bhavnagar', '2500', 300, '2020-04-05-01-08-37-0.jpg,2020-04-05-01-08-37-1.jpg,2020-04-05-01-08-37-2.jpg,2020-04-05-01-08-37-3.jpg', 'Saptansh Bungalow is one of the residential developments of Saptansh Developers. It offers spacious and skilfully designed 4BHK villas. The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 4, 5, 'Gujarat', 'Bhavnagar', 0, 5000, 5, 1, 0),
(6, 'krishna flat', 'Flat', 'krishna flat, anand', '490', 5000000, '2020-04-05-01-18-25-0.jpg,2020-04-05-01-18-25-1.jpg,2020-04-05-01-18-25-2.jpg,2020-04-05-01-18-25-3.jpg,2020-04-05-01-18-25-4.jpg', 'krishna flat is one of the residential developments of Krishna Developers. It offers spacious and skilfully designed 3BHK villas. The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 3, 4, 'Gujarat', 'Anand', 1, 0, 6, 1, 0),
(7, 'Tulsi row-house', 'Row-house', 'tulsi row-house,navsari', '300', 560, '2020-04-06-01-26-01-0.jpg,2020-04-06-01-26-01-1.jpg,2020-04-06-01-26-01-2.jpg,2020-04-06-01-26-01-3.jpg', 'Tulsi row-house is one of the residential developments of Tulsi Developers. It offers spacious and skilfully designed 2BHK villas. The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 2, 3, 'Gujarat', 'Navsari', 0, 5000, 4, 3, 10),
(8, 'Unnati farm', 'Farm-house', 'Unnati  Farm-house,Morbi', '4500', 10000000, '2020-04-06-01-35-46-0.jpg,2020-04-06-01-35-46-1.jpg,2020-04-06-01-35-46-2.jpg,2020-04-06-01-35-46-3.jpg', 'Unnati farm is one of the residential developments of Unnati Developers. It offers spacious and skilfully designed 1BHK villas. The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 1, 3, 'Gujarat', 'Morbi', 1, 0, 5, 1, 0),
(9, 'Shreeji Bungalow', 'Bungalow', 'Shreeji Bungalow, Bharuch', '5000', 500, '2020-04-06-01-45-05-0.jpg,2020-04-06-01-45-05-1.jpg,2020-04-06-01-45-05-2.jpg,2020-04-06-01-45-05-3.jpg,2020-04-06-01-45-05-4.jpg', 'Shreeji Bungalow in Baruch,Shreeji Group is a residential project. The project offers Apartment with perfect combination of contemporary architecture and features to provide comfortable living.', 5, 6, 'Gujarat', 'Bharuch', 0, 5000, 6, 1, 0),
(10, 'Shivangi Flat', 'Flat', 'Shivangi Flat,Amreli', '3500', 4000000, '2020-04-06-02-00-32-0.jpg,2020-04-06-02-00-32-1.jpg,2020-04-06-02-00-32-2.jpg', 'Shivangi Flat is one of the residential developments of Shivangi Developers, located in Amreli. The project is well equipped with all the amenities to facilitate the needs of the residents.', 3, 3, 'Gujarat', 'Amreli', 1, 0, 4, 1, 0),
(11, 'Tirupati row-house', 'Row-house', 'Tirupati row-house, Yogichowk, Surat', '3500', 300, '2020-04-06-02-19-35-0.jpg,2020-04-06-02-19-35-1.jpg,2020-04-06-02-19-35-2.jpg,2020-04-06-02-19-35-3.jpg', 'Tirupati row-house in Yogichowk, tirupati Group is a residential project. The project offers Apartment with perfect combination of contemporary architecture and features to provide comfortable living.', 3, 4, 'Gujarat', 'Surat', 0, 5000, 5, 1, 0),
(12, 'Nevia farm', 'Farm-house', 'Nevia farm-house,Bhavnagar', '2500', 6000000, '2020-04-06-02-29-41-0.jpg,2020-04-06-02-29-41-1.jpg,2020-04-06-02-29-41-2.jpg', 'Nevia farm in Bhavnagar,Shreepad Group is a residential project. The project offers Apartment with perfect combination of contemporary architecture and features to provide comfortable living.', 1, 2, 'Gujarat', 'Bhavnagar', 1, 0, 6, 1, 0),
(13, 'Avantis Bungalows', 'Bungalow', 'Avantis Bungalows,ahemdabad', '3500', 650, '2020-04-06-02-37-11-0.jpg,2020-04-06-02-37-11-1.jpg,2020-04-06-02-37-11-2.jpg,2020-04-06-02-37-11-3.jpg', 'Avantis Bungalows builds with a view to bring up new and innovative ideas and creativity in the living style.Avantis is a new and fast developing locality and can provide you with a comfortable life whilst enjoying the benefits of the city.', 2, 3, 'Gujarat', 'Ahemdabad', 0, 5000, 4, 1, 0),
(14, 'Rajhans  flat', 'Flat', 'Rajhans  flat,Vadodara', '4500', 4000000, '2020-04-06-03-08-57-0.jpg,2020-04-06-03-08-57-1.jpg', 'Rajhans  flat builds with a view to bring up new and innovative ideas and creativity in the living style.Rajhans is a new and fast developing locality and can provide you with a comfortable life whilst enjoying the benefits of the city.', 2, 3, 'Gujarat', 'Vadodara', 1, 0, 5, 1, 0),
(15, 'sangna row-house', 'Row-house', 'sangna row-house, rajkot', '3500', 400, '2020-04-08-01-30-27-0.jpg,2020-04-08-01-30-27-1.jpg,2020-04-08-01-30-27-2.jpg,2020-04-08-01-30-27-3.jpg', 'sangna row-house is a residential complex which offers refined luxurious bungalows to reside. This is the perfect place for families to make memories. ', 2, 2, 'Gujarat', 'Rajkot', 0, 5000, 6, 1, 0),
(16, 'Madhu sudan palace', 'Flat', 'Madhu sudan palace flat, Navsari', '4500', 5500000, '2020-04-06-03-38-14-0.jpg,2020-04-06-03-38-14-1.jpg', 'Madhu sudan palace flat is a plan magnum opus! Lovely teakwood joglo house with three single beds - sweet little occasion home for good companions. The floor-to-roof windows are neglecting the pool and pull in the daylight into the room.', 3, 4, 'Gujarat', 'Navsari', 1, 0, 4, 1, 0),
(17, 'Madhav farm', 'Farm-house', 'Madhav farm-house,Anand', '4000', 600, '2020-04-06-03-46-01-0.jpg,2020-04-06-03-46-01-1.jpg', 'Madhav farm is a residential complex which offers refined luxurious bungalows to reside. This is the perfect place for families to make memories. ', 1, 2, 'Gujarat', 'Anand', 0, 5000, 5, 1, 0),
(18, 'Radhe Bungalow', 'Bungalow', 'Radhe Bungalow,Morbi', '3000', 30000000, '2020-04-06-03-53-54-0.jpg,2020-04-06-03-53-54-1.jpg,2020-04-06-03-53-54-2.jpg,2020-04-06-03-53-54-3.jpg,2020-04-06-03-53-54-4.jpg', 'Radhe Bungalow is spread over 0.66 acres and offers apartments with features and comfortable amenities such as 247 security, car parking, boundary with compound walls and 24 hours water-supply. As the project is under construction, you need to contact us for the carpet area of apartments and you can design it too.', 5, 5, 'Gujarat', 'Morbi', 1, 0, 6, 1, 0),
(19, 'Mahalaxmi row-house', 'Row-house', 'Mahalaxmi row-house, Morbi', '5000', 400, '2020-04-08-07-32-37-0.jpg,2020-04-08-07-32-37-1.jpg,2020-04-08-07-32-37-2.jpg,2020-04-08-07-32-37-3.jpg', 'Mahalaxmi row-house is spread over 0.66 acres and offers apartments with features and comfortable amenities such as car parking, boundary with compound walls and 24 hours water-supply. As the project is under construction, you need to contact us for the carpet area of apartments and you can design it too.', 3, 3, 'Gujarat', 'Morbi', 0, 5000, 4, 1, 0),
(20, 'Gajanand row-house', 'Row-house', 'Gajanand row-house,Bharuch', '4500', 9000000, '2020-04-08-07-39-25-0.jpg,2020-04-08-07-39-25-1.jpg,2020-04-08-07-39-25-2.jpg,2020-04-08-07-39-25-3.jpg', 'Gajanand row-house is a township developed with all the modern facilities. The amazing infrastructure of the entire township has been carefully developed by specialists to develop the living spaces elegantly. The project promises to provide you with best quality homes according to your requirements. ', 3, 4, 'Gujarat', 'Bharuch', 1, 0, 5, 1, 0),
(21, 'Kiran Farm', 'Farm-house', 'Kiran Farm,Amreli', '3500', 500, '2020-04-08-07-48-20-0.jpg,2020-04-08-07-48-20-1.jpg', 'Kiran Farm is one of the residential developments of Kiran Developers. The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 2, 2, 'Gujarat', 'Amreli', 0, 5000, 6, 1, 0),
(22, 'Vrundavan Farm', 'Farm-house', 'Vrundavan Farm, Surat', '5500', 9000000, '2020-04-08-07-57-19-0.jpg,2020-04-08-07-57-19-1.jpg', 'vrundavan farm in Bardoli by SNS Developers is a residential project. Highlights of project:Bardoli\'s 1st Smart Home Concept. IP Cameras to Monitor Infant/Elderly.', 2, 3, 'Gujarat', 'Surat', 1, 0, 4, 1, 0),
(23, 'Gaytri Bungalow', 'Bungalow', 'Gaytri Bungalow, Vadodara', '5000', 500, '2020-04-08-10-56-31-0.jpg,2020-04-08-10-56-31-1.jpg,2020-04-08-10-56-31-2.jpg,2020-04-08-10-56-31-3.jpg,2020-04-08-10-28-23-0.jpg,2020-04-08-10-28-23-1.jpg,2020-04-08-10-28-23-2.jpg,2020-04-08-10-28-23-3.jpg', 'Gaytri Bungalow is one of the residential developments of Gaytri Developers. It offers spacious and skilfully designed 3BHK villas. The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 3, 4, 'Gujarat', 'Vadodara', 0, 5000, 5, 1, 0),
(24, 'Marvel luxriya', 'Flat', 'Marvel luxriya, Rajkot', '3500', 7000000, '2020-04-08-01-32-22-0.jpg,2020-04-08-01-32-22-1.jpg,2020-04-08-01-32-22-2.jpg,2020-04-08-01-32-22-3.jpg,2020-04-08-01-23-55-0.jpg,2020-04-08-01-23-55-1.jpg,2020-04-08-01-23-55-2.jpg,2020-04-08-01-23-55-3.jpg', 'Marvel luxriya Flat is an excellent choice for rest and rejuvenation. Well-known for its proximity to great restaurants and attractions, Marvel luxriya Flat makes it easy to enjoy the best of Rajkot. ', 3, 4, 'Gujarat', 'Rajkot', 1, 0, 6, 1, 0),
(25, 'Avadh Shangrila Bungalow', 'Bungalow', 'Avadh Shangrila Bungalow, Anand', '3300', 400, '2020-04-08-02-31-43-0.jpg,2020-04-08-02-31-43-1.jpg,2020-04-08-02-31-43-2.jpg,2020-04-08-02-31-43-3.jpg', 'Avadh Shangrila Bungalow is a township developed with all the modern facilities. The amazing infrastructure of the entire township has been carefully developed by specialists to develop the living spaces elegantly. The project promises to provide you with best quality homes according to your requirements. ', 3, 3, 'Gujarat', 'Anand', 0, 5000, 4, 1, 0),
(26, 'Orange farm', 'Farm-house', 'Orange farm, Navsari', '4500', 8000000, '2020-04-08-02-57-16-0.jpg,2020-04-08-02-57-16-1.jpg', 'Orange farm is one of the residential developments of Orange Developers. The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 1, 2, 'Gujarat', 'Navsari', 1, 0, 5, 1, 0),
(27, 'Ashvini row-house', 'Row-house', 'Ashvini row-house, Bhavnagar', '4300', 330, '2020-04-08-03-08-57-0.jpg,2020-04-08-03-08-57-1.jpg,2020-04-08-03-08-57-2.jpg,2020-04-08-03-08-57-3.jpg', 'Ashvini row-house is an excellent choice for rest and rejuvenation. Well-known for its proximity to great restaurants and attractions. ', 2, 3, 'Gujarat', 'Bhavnagar', 0, 5000, 6, 1, 0),
(28, 'Mira Avenue Flat ', 'Flat', 'Mira-Avenue Flat, Bharuch ', '3700', 5000000, '2020-04-08-04-05-57-0.jpg,2020-04-08-04-05-57-1.jpg,2020-04-08-04-05-57-2.jpg,2020-04-08-04-05-57-3.jpg', 'Mira Avenue Flat  is spread over 0.66 acres and offers apartments with features and comfortable amenities such as car parking, boundary with compound walls and 24 hours water-supply. As the project is under construction, you need to contact us for the carpet area of apartments and you can design it too.', 2, 3, 'Gujarat', 'Bharuch', 1, 0, 4, 1, 0),
(29, 'Ratanji Row-house', 'Row-house', 'Ratanji Row-house, Amreli', '3700', 400, '2020-04-08-04-16-44-0.jpg,2020-04-08-04-16-44-1.jpg,2020-04-08-04-16-44-2.jpg,2020-04-08-04-16-44-3.jpg', 'Ratanji Row-house is a township developed with all the modern facilities. The amazing infrastructure of the entire township has been carefully developed by specialists to develop the living spaces elegantly. The project promises to provide you with best quality homes according to your requirements. ', 2, 3, 'Gujarat', 'Amreli', 0, 5000, 5, 3, 1),
(30, 'Chandanbag Bungalow', 'Bungalow', 'Chandanbag Bungalow, Bapunagar, Ahemdabad', '4700', 9000000, '2020-04-09-01-45-42-0.jpg,2020-04-09-01-45-42-1.jpg,2020-04-09-01-45-42-2.jpg,2020-04-09-01-45-42-3.jpg,2020-04-09-01-45-42-4.jpg', 'Chandanbag Bungalow in Bapunagar,Ahemdabad by SNS Developers is a residential project. Highlights of project:Ahemdabad\'s 1st Smart Home Concept. IP Cameras to Monitor Infant/Elderly.', 5, 6, 'Gujarat', 'Ahemdabad', 1, 0, 6, 1, 0),
(31, 'Sweta Aparment', 'Flat', 'Sweta Aparment, Surat', '3500', 400, '2020-04-12-08-19-24-0.jpg,2020-04-12-08-19-24-1.jpg', 'Sweta Aparment flat is one of the residential developments of Sweta Developers, located in Surat. It offers spacious skillfully designed 2BHK  villas. The project is well equipped with all the amenities to facilitate the needs of the residents.', 2, 3, 'Gujarat', 'Surat', 0, 5000, 7, 1, 0),
(32, 'Pam villa Farm', 'Farm-house', 'Pam villa Farm-house, Ahemdabad', '5700', 8000000, '2020-04-13-07-12-41-0.jpg,2020-04-13-07-12-41-1.jpg', 'Pam villa Farm is one of the residential developments of Pam villa Developers.  The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 1, 2, 'Gujarat', 'Ahemdabad', 1, 0, 8, 1, 0),
(33, 'Narved sagar Row-house', 'Row-house', 'Narved sagar Row-house, Vadodara', '4400', 7000000, '2020-04-13-07-26-00-0.jpg,2020-04-13-07-26-00-1.jpg,2020-04-13-07-26-00-2.jpg,2020-04-13-07-26-00-3.jpg', 'Narved sagar Row-house is one of the residential developments of Saptansh Developers. It offers spacious and skilfully designed 4BHK villas. The project is well equipped with all the basic amenities to facilitate the needs of the residents.\r\n', 4, 5, 'Gujarat', 'Vadodara', 1, 0, 7, 1, 0),
(34, 'Nandigram Bungalow', 'Bungalow', 'Nandigram Bungalow, Rajkot', '4500', 500, '2020-04-13-07-29-58-0.jpg,2020-04-13-07-29-58-1.jpg,2020-04-13-07-29-58-2.jpg,2020-04-13-07-29-58-3.jpg', 'Nandigram Bungalows  Company is offering premium apartments in a project which is situated in the Althan region of Rajkot. The project is all set for moving in purpose. Different regular necessities like school, bank, hospital, petrol pump, bus station etc.,', 3, 4, 'Gujarat', 'Rajkot', 0, 5000, 7, 1, 0),
(35, 'Daisy Villa', 'Farm-house', 'Daisy Villa Farm-house, Amreli', '5200', 9000000, '2020-04-13-07-34-33-0.jpg,2020-04-13-07-34-33-1.jpg', 'Daisy Villa Farm is a residential complex which offers refined luxurious bungalows to reside. This is the perfect place for families to make memories. Shivangi Bungalows will become an episode of your life which will be unforgettable as the residencies here are very cosy, lavish and classy. ', 2, 3, 'Gujarat', 'Amreli', 1, 0, 7, 1, 0),
(36, 'Sahjanand Flat', 'Flat', 'Sahjanand Flat, Ahemdabad', '3400', 350, '2020-04-13-07-51-45-0.jpg,2020-04-13-07-51-45-1.jpg,2020-04-13-07-51-45-2.jpg,2020-04-13-07-51-45-3.jpg', 'Sahjanand Flat is an excellent choice for rest and rejuvenation. Well-known for its proximity to great restaurants and attractions.', 3, 4, 'Gujarat', 'Ahemdabad', 0, 5000, 8, 3, 13),
(37, 'Devi Bungalow', 'Bungalow', 'Devi Bungalow, Bhavnagar', '5600', 7700000, '2020-04-13-07-57-35-0.jpeg,2020-04-13-07-57-35-1.jpeg,2020-04-13-07-57-35-2.jpeg,2020-04-13-07-57-35-3.jpeg', 'Devi Bungalow is a township developed with all the modern facilities. The amazing infrastructure of the entire township has been carefully developed by specialists to develop the living spaces elegantly. The project promises to provide you with best quality homes according to your requirements. ', 5, 6, 'Gujarat', 'Bhavnagar', 1, 0, 8, 1, 0),
(38, 'Yogeswar Row-house', 'Row-house', 'Yogeswar Row-house, Anand ', '5300', 550, '2020-04-13-08-07-38-0.jpg,2020-04-13-08-07-38-1.jpg,2020-04-13-08-07-38-2.jpg,2020-04-13-08-07-38-3.jpg', 'Yogeswar Row-house is a township developed with all the modern facilities. The amazing infrastructure of the entire township has been carefully developed by specialists to develop the living spaces elegantly. The project promises to provide you with best quality homes according to your requirements. ', 4, 5, 'Gujarat', 'Anand', 0, 5000, 8, 1, 0),
(39, 'Balaji Bungalow', 'Bungalow', 'Balaji Bungalow, Navsari', '4400', 450, '2020-04-24-03-19-54-0.jpg,2020-04-24-03-19-54-1.jpg,2020-04-24-03-19-54-2.jpg,2020-04-24-03-19-54-3.jpg', 'Balaji Bungalow is one of the residential developments of Balaji  Developers.  The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 4, 5, 'Gujarat', 'Navsari', 0, 5000, 7, 1, 0),
(40, 'Sardar Flat', 'Flat', 'Sardar Flat, Morbi', '4800', 700000, '2020-04-24-03-31-39-0.jpg,2020-04-24-03-31-39-1.jpg,2020-04-24-03-31-39-2.jpg', 'Sardar Flat is spread over 0.66 acres and offers apartments with features and comfortable amenities such as 247 security, car parking, boundary with compound walls and 24 hours water-supply. As the project is under construction, you need to contact us for the carpet area of apartments and you can design it too.\r\n', 3, 4, 'Gujarat', 'Morbi', 1, 0, 7, 1, 0),
(41, 'Kashiba Farm', 'Farm-house', 'Kashiba Farm-house, bharuch', '4900', 550, '2020-04-24-03-40-14-0.jpg,2020-04-24-03-40-14-1.jpg', 'Kashiba Farm is one of the residential developments of Kashiba Developers. The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 1, 2, 'Gujarat', 'Bharuch', 0, 5000, 7, 1, 0),
(42, 'Ratnamani Row-house', 'Row-house', 'Ratnamani Row-house, Anand', '5400', 8800000, '2020-04-24-03-52-37-0.png,2020-04-24-03-52-37-1.png,2020-04-24-03-52-37-2.png,2020-04-24-03-52-37-3.png', 'Ratnamani Row-house is offering premium apartments in a project which is situated in the region of Anand. The project is all set for moving in purpose. Different regular necessities like school, bank, hospital, petrol pump, bus station etc.,', 4, 5, 'Gujarat', 'Anand', 1, 0, 7, 2, 10),
(43, 'Maharaja Farm', 'Farm-house', 'Maharaja Farm, Vadodara', '5800', 6600000, '2020-04-24-04-12-42-0.jpeg,2020-04-24-04-12-42-1.jpeg', 'Maharaja Farm builds with a view to bring up new and innovative ideas and creativity in the living style.', 1, 2, 'Gujarat', 'Vadodara', 1, 0, 8, 1, 0),
(44, 'Shanti Row-house', 'Row-house', 'Shanti Row-house, Navsari', '5700', 9000000, '2020-04-27-03-01-51-0.jpg,2020-04-27-03-01-51-1.jpg,2020-04-27-03-01-51-2.jpg,2020-04-27-03-01-51-3.jpg', 'Shanti Row-house is a residential complex which offers refined luxurious bungalows to reside. This is the perfect place for families to make memories. ', 3, 4, 'Gujarat', 'Navsari', 1, 0, 8, 1, 0),
(45, 'Kala-Kunj Bungalow', 'Bungalow', 'Kala-Kunj Bungalow, Rajkot', '5600', 6500000, '2020-04-27-03-07-11-0.jpg,2020-04-27-03-07-11-1.jpg,2020-04-27-03-07-11-2.jpg,2020-04-27-03-07-11-3.jpg', 'Kala-Kunj Bungalows is one of the residential developments of Kala-Kunj Developers, located in Rajkot. It offers spacious skillfully designed 4BHK villas. The project is well equipped with all the amenities to facilitate the needs of the residents.', 4, 5, 'Gujarat', 'Rajkot', 1, 0, 8, 1, 0),
(46, 'Vraj-vatika Flat', 'Flat', 'Vraj-vatika Flat, Morbi', '4900', 380, '2020-04-27-03-12-01-0.jpg,2020-04-27-03-12-01-1.jpg,2020-04-27-03-12-01-2.jpg', 'Vraj-vatika Flat is one of the residential developments of vraj-vatika Developers. The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 2, 3, 'Gujarat', 'Morbi', 0, 5000, 8, 1, 0),
(47, 'Golden Farm', 'Farm-house', 'Golden Farm-house, Bhavnagar', '5800', 500, '2020-04-27-03-37-25-0.jpg,2020-04-27-03-37-25-1.jpg,2020-04-27-03-37-25-2.jpg,2020-04-27-03-37-25-3.jpg,2020-04-27-03-37-25-4.jpg', 'Golden Farm is one of the residential developments of Golden Developers. The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 2, 3, 'Gujarat', 'Bhavnagar', 0, 5000, 7, 1, 0),
(48, 'Dharam Bungalow', 'Bungalow', 'Dharam Bungalow, Anand', '5900', 6000000, '2020-04-27-03-42-03-0.png,2020-04-27-03-42-03-1.png,2020-04-27-03-42-03-2.png,2020-04-27-03-42-03-3.png', 'Dharam Bungalow is a township developed with all the modern facilities. The amazing infrastructure of the entire township has been carefully developed by specialists to develop the living spaces elegantly. The project promises to provide you with best quality homes according to your requirements. ', 3, 4, 'Gujarat', 'Anand', 1, 0, 7, 1, 0),
(49, 'Tejendra Row-house', 'Row-house', 'Tejendra Row-house, Surat', '6200', 5500000, '2020-04-27-04-02-13-0.jpg,2020-04-27-04-02-13-1.jpg', 'Tejendra Row-house is one of the residential developments of Tejendra Developers, located in Surat. It offers spacious skillfully designed 2BHK  villas. The project is well equipped with all the amenities to facilitate the needs of the residents.', 2, 3, 'Gujarat', 'Surat', 1, 0, 7, 1, 0),
(50, 'Silver Flat', 'Flat', 'Silver Flat, vadodara', '5400', 350, '2020-04-27-04-09-10-0.jpg,2020-04-27-04-09-10-1.jpg,2020-04-27-04-09-10-2.jpg', 'Silver flat is one of the residential developments of Silver Developers, located in Vadodara. The project is well equipped with all the amenities to facilitate the needs of the residents.', 2, 3, 'Gujarat', 'Vadodara', 0, 5000, 7, 1, 0),
(51, 'Sukan Row-house', 'Row-house', 'Sukan Row-house, Ahemdabad', '5800', 9000000, '2020-04-28-03-37-03-0.jpg,2020-04-28-03-37-03-1.jpg,2020-04-28-03-37-03-2.jpg,2020-04-28-03-37-03-3.jpg', 'Sukan Row-house is one of the residential developments of Sukan Developers. It offers spacious and skilfully designed 4BHK villas. The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 4, 4, 'Gujarat', 'Ahemdabad', 1, 0, 8, 1, 0),
(52, 'Pushpak Bungalow', 'Bungalow', 'Pushpak Bungalow, Surat', '5700', 450, '2020-04-28-03-44-59-0.jpeg,2020-04-28-03-44-59-1.jpeg,2020-04-28-03-44-59-2.jpeg', 'Pushpak Bungalow is one of the residential developments of Pushpak  Developers. It offers spacious and skilfully designed 3BHK villas. The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 3, 3, 'Gujarat', 'Surat', 0, 5000, 8, 1, 0),
(53, 'Suryoday Flat', 'Flat', 'Suryoday Flat, Rajkot', '4800', 300, '2020-04-28-03-48-21-0.jpg,2020-04-28-03-48-21-1.jpg', 'Suryoday Flat builds with a view to bring up new and innovative ideas and creativity in the living style. Suryoday Flat is a new and fast developing locality and can provide you with a comfortable life whilst enjoying the benefits of the city.', 2, 3, 'Gujarat', 'Rajkot', 0, 5000, 8, 1, 0),
(54, 'Ridhi-Sidhi Farm', 'Farm-house', 'Ridhi-Sidhi Farm-house, Morbi', '5500', 600, '2020-04-28-03-52-52-0.jpg,2020-04-28-03-52-52-1.jpg,2020-04-28-03-52-52-2.jpg,2020-04-28-03-52-52-3.jpg', 'Ridhi-Sidhi Farm is spread over 0.66 acres and offers apartments with features and comfortable amenities such as 24 security, car parking, boundary with compound walls and 24 hours water-supply. As the project is under construction, you need to contact us for the carpet area of apartments and you can design it too.', 2, 3, 'Gujarat', 'Morbi', 0, 5000, 8, 1, 0),
(55, 'Ashirvad Flat', 'Flat', 'Ashirvad Flat, vesu Road, Surat', '4800', 6000000, '2020-05-01-03-40-12-0.jpg,2020-05-01-03-40-12-1.jpg', 'Ashirvad Flat is a township developed with all the modern facilities. The amazing infrastructure of the entire township has been carefully developed by specialists to develop the living spaces elegantly. The project promises to provide you with best quality homes according to your requirements.', 2, 3, 'Gujarat', 'Surat', 1, 0, 7, 1, 0),
(56, 'Kailash Farm', 'Farm-house', 'Kailash Farm-house, Ahemdabad', '5500', 500, '2020-05-01-03-43-28-0.jpg,2020-05-01-03-43-28-1.jpg,2020-05-01-03-43-28-2.jpg,2020-05-01-03-43-28-3.jpg', 'Kailash Farm builds with a view to bring up new and innovative ideas and creativity in the living style.It is a new and fast developing locality and can provide you with a comfortable life whilst enjoying the benefits of the city.', 2, 3, 'Gujarat', 'Ahemdabad', 0, 5000, 7, 1, 0),
(57, 'Satadhar Row-house', 'Row-house', 'Satadhar Row-house, Rajkot', '5900', 9000000, '2020-05-01-03-46-22-0.jpg,2020-05-01-03-46-22-1.jpg,2020-05-01-03-46-22-2.jpg', 'Satadhar Row-house in Rajkot, Satadhar Group is a residential project. The project offers Apartment with perfect combination of contemporary architecture and features to provide comfortable living.', 3, 4, 'Gujarat', 'Rajkot', 1, 0, 7, 1, 0),
(58, 'Dayalji Bungalow', 'Bungalow', 'Dayalji Bungalow, Morbi', '4700', 400, '2020-05-01-03-50-56-0.jpg,2020-05-01-03-50-56-1.jpg,2020-05-01-03-50-56-2.jpg,2020-05-01-03-50-56-3.jpg', 'Dayalji Bungalow is a township developed with all the modern facilities. The amazing infrastructure of the entire township has been carefully developed by specialists to develop the living spaces elegantly. The project promises to provide you with best quality homes according to your requirements. ', 4, 4, 'Gujarat', 'Morbi', 0, 5000, 7, 1, 0),
(59, 'Happy-Home Flat', 'Flat', 'Happy-Home Flat, Bhavnagar', '5400', 4000000, '2020-05-01-03-59-39-0.jpeg,2020-05-01-03-59-39-1.jpeg,2020-05-01-03-59-39-2.jpeg', 'Happy-Home Flat is an excellent choice for rest and rejuvenation. Well-known for its proximity to great restaurants and attractions. You can also take advantage of some of the amenities offered by the cottage, including a 24 hour front desk, 24 hour security and baggage storage.', 3, 3, 'Gujarat', 'Bhavnagar', 1, 0, 8, 1, 0),
(60, 'Shankar Row-house', 'Row-house', 'Shankar Row-house, Bharuch', '4900', 450, '2020-05-01-04-04-24-0.jpg,2020-05-01-04-04-24-1.jpg,2020-05-01-04-04-24-2.jpg,2020-05-01-04-04-24-3.jpg', 'Shankar Row-house is spread over 0.55 acres and offers apartments with features and comfortable amenities such as 20 security, car parking, boundary with compound walls and 24 hours water-supply. As the project is under construction, you need to contact us for the carpet area of apartments and you can design it too.', 3, 3, 'Gujarat', 'Bharuch', 0, 5000, 8, 1, 0),
(61, 'Raghuvir Bungalow', 'Bungalow', 'Raghuvir Bungalow, Vadodara', '5300', 6000000, '2020-05-01-04-09-56-0.jpg,2020-05-01-04-09-56-1.jpg,2020-05-01-04-09-56-2.jpg,2020-05-01-04-09-56-3.jpg', 'Raghuvir Bungalow is one of the residential developments of Raghuvir  Developers, located in Vadodara. It offers spacious skillfully designed 3BHK villas. The project is well equipped with all the amenities to facilitate the needs of the residents.', 3, 3, 'Gujarat', 'Vadodara', 1, 0, 8, 1, 0),
(62, 'Ganesh Farm', 'Farm-house', 'Ganesh Farm, Navsari', '5600', 400, '2020-05-01-04-13-16-0.jpg,2020-05-01-04-13-16-1.jpg,2020-05-01-04-13-16-2.jpg,2020-05-01-04-13-16-3.jpg', 'Ganesh Farm is offering premium apartments in a project which is situated in the Navsari. The project is all set for moving in purpose. Different regular necessities like school, bank, hospital, petrol pump, bus station etc.,', 2, 3, 'Gujarat', 'Navsari', 0, 5000, 8, 1, 0),
(63, 'Ramji-Krupa Row-house', 'Row-house', 'Ramji-Krupa Row-house, Bhavanagr', '5700', 4000000, '2020-05-05-08-24-45-0.jpg,2020-05-05-08-24-45-1.jpg,2020-05-05-08-24-45-2.jpg', 'Ramji-Krupa Row-house builds with a view to bring up new and innovative ideas and creativity in the living style. It is a new and fast developing locality and can provide you with a comfortable life whilst enjoying the benefits of the city.', 2, 3, 'Gujarat', 'Bhavnagar', 1, 0, 7, 1, 0),
(64, 'Anandvatika', 'Flat', 'Anandvatika Flat, Amreli', '4800', 350, '2020-05-05-08-47-21-0.jpeg,2020-05-05-08-47-21-1.jpeg,2020-05-05-08-47-21-2.jpeg', 'Anandvatika Flat is one of the residential developments of Anand Developers. It offers spacious and skilfully designed 2BHK villas. The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 2, 3, 'Gujarat', 'Amreli', 0, 5000, 7, 1, 0),
(65, 'Royal Farm', 'Farm-house', 'Royal Farm,Anand', '6500', 7000000, '2020-05-05-08-51-00-0.jpg,2020-05-05-08-51-00-1.jpg,2020-05-05-08-51-00-2.jpg,2020-05-05-08-51-00-3.jpg,2020-05-05-08-51-00-4.jpg', 'Royal Farm is spread over 0.66 acres and offers apartments with features and comfortable amenities such as 24 security, car parking, boundary with compound walls and 24 hours water-supply. As the project is under construction, you need to contact us for the carpet area of apartments and you can design it too.', 2, 3, 'Gujarat', 'Anand', 1, 0, 7, 1, 0),
(66, 'Nilam Bungalow', 'Bungalow', 'Nilam Bungalow, Bharuch', '5900', 6000000, '2020-05-05-08-53-56-0.jpg,2020-05-05-08-53-56-1.jpg,2020-05-05-08-53-56-2.jpg,2020-05-05-08-53-56-3.jpg,2020-05-05-08-53-56-4.jpg', 'Nilam  Bungalows is one of the residential developments of Nilam Developers, located in Bharuch. It offers spacious skillfully designed 3BHK villas. The project is well equipped with all the amenities to facilitate the needs of the residents.', 3, 4, 'Gujarat', 'Bharuch', 1, 0, 7, 1, 0),
(67, 'Ganga Jamuna Saraswati', 'Bungalow', 'Ganga Jamuna Saraswati Bungalow, Amreli', '5600', 4000000, '2020-05-05-09-05-25-0.jpg,2020-05-05-09-05-25-1.jpg,2020-05-05-09-05-25-2.jpg,2020-05-05-09-05-25-3.jpg', 'Ganga Jamuna Saraswati  Bungalows builds with a view to bring up new and innovative ideas and creativity in the living style. It is a new and fast developing locality and can provide you with a comfortable life whilst enjoying the benefits of the city.', 3, 3, 'Gujarat', 'Amreli', 1, 0, 8, 1, 0),
(68, 'Narmada Row-house', 'Row-house', 'Narmada Row-house, Ahemdabad', '5800', 400, '2020-05-05-09-08-17-0.jpg,2020-05-05-09-08-17-1.jpg,2020-05-05-09-08-17-2.jpg', 'Narmada Row-house is offering premium apartments in a project which is situated in the region of Ahemdabad. The project is all set for moving in purpose. Different regular necessities like school, bank, hospital, petrol pump, bus station etc.,', 3, 3, 'Gujarat', 'Ahemdabad', 0, 5000, 8, 1, 0),
(69, 'Siromani Farm', 'Farm-house', 'Siromani Farm-house, Bharuch', '5800', 1000000, '2020-05-31-03-14-43-0.jpg,2020-05-31-03-14-43-1.jpg,2020-05-31-03-14-43-2.jpg,2020-05-31-03-14-43-3.jpg,2020-05-31-03-14-43-4.jpg', 'Siromani Farm is a township developed with all the modern facilities. The amazing infrastructure of the entire township has been carefully developed by specialists to develop the living spaces elegantly. The project promises to provide you with best quality homes according to your requirements. ', 2, 3, 'Gujarat', 'Bharuch', 1, 0, 8, 1, 0),
(70, 'Rameswar Flat', 'Flat', 'Rameswar Flat, Navsari', '5200', 700, '2020-05-31-09-00-05-0.jpeg,2020-05-31-09-00-05-1.jpeg', 'Rameswar Flat is one of the residential developments of Rameswar Developers. It offers spacious and skilfully designed 1BHK villas. The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 1, 1, 'Gujarat', 'Navsari', 0, 5000, 8, 1, 0),
(71, 'Radhe-Krishna Farm', 'Farm-house', 'Radhe-Krishna Farm, Surat', '5400', 600, '2020-05-31-02-05-52-0.jpg,2020-05-31-02-05-52-1.jpg,2020-05-31-02-05-52-2.jpg,2020-05-31-02-05-52-3.jpg,2020-05-31-02-05-52-4.jpg', 'Radhe-Krishna Farm builds with a view to bring up new and innovative ideas and creativity in the living style. Radhe-Krishna Farm is a new and fast developing locality and can provide you with a comfortable life whilst enjoying the benefits of the city.', 2, 3, 'Gujarat', 'Surat', 0, 5000, 7, 1, 0),
(72, 'Shiv Bungalow', 'Bungalow', 'Shiv Bungalow, Navsari', '5300', 800000, '2020-05-31-02-10-03-0.jpg,2020-05-31-02-10-03-1.jpg,2020-05-31-02-10-03-2.jpg,2020-05-31-02-10-03-3.jpg', 'Shiv Bungalow is a township developed with all the modern facilities. The amazing infrastructure of the entire township has been carefully developed by specialists to develop the living spaces elegantly. The project promises to provide you with best quality homes according to your requirements. ', 2, 2, 'Gujarat', 'Navsari', 1, 0, 7, 1, 0),
(73, 'Khodiyar Flat', 'Flat', 'Khodiyar Flat, Bhavnagar', '4500', 300, '2020-05-31-02-16-28-0.jpeg,2020-05-31-02-16-28-1.jpeg', 'Khodiyar Flat is one of the residential developments of Khodiyar  Developers, located in Bhavnagar. It offers spacious skillfully designed 1BHK villas. The project is well equipped with all the amenities to facilitate the needs of the residents.', 1, 2, 'Gujarat', 'Bhavnagar', 0, 5000, 7, 1, 0),
(74, 'Lakshmi Row-house', 'Row-house', 'Lakshmi Row-house, Amreli', '5600', 900000, '2020-05-31-02-23-32-0.jpg,2020-05-31-02-23-32-1.jpg,2020-05-31-02-23-32-2.jpg,2020-05-31-02-23-32-3.jpg', 'Lakshmi Row-house is a residential complex which offers refined luxurious bungalows to reside. This is the perfect place for families to make memories. Lakshmi Row-house will become an episode of your life which will be unforgettable as the residencies here are very cosy, lavish and classy. All these factors are a hard-to-find-combination in homes today.', 3, 3, 'Gujarat', 'Amreli', 1, 0, 7, 1, 0),
(75, 'Punam Farm', 'Farm-house', 'Punam Farm-house, Vadodara', '5500', 550, '2020-05-31-02-35-27-0.jpeg,2020-05-31-02-35-27-1.jpeg', 'Punam Farm-house is one of the residential developments of Punam Developers, located in Vadodara. The project is well equipped with all the amenities to facilitate the needs of the residents.', 1, 2, 'Gujarat', 'Vadodara', 0, 5000, 8, 1, 0),
(76, 'Ashmita Bungalow', 'Bungalow', 'Ashmita Bungalow, Amreli', '5200', 600, '2020-05-31-02-38-59-0.jpg,2020-05-31-02-38-59-1.jpg,2020-05-31-02-38-59-2.jpg,2020-05-31-02-38-59-3.jpg', 'Ashmita Bungalow is one of the residential developments of Ashmita Developers. It offers spacious and skilfully designed 3BHK villas. The project is well equipped with all the basic amenities to facilitate the needs of the residents.', 3, 4, 'Gujarat', 'Amreli', 0, 5000, 8, 1, 0),
(77, 'Yogi-Krupa Row-house', 'Row-house', 'Yogi-Krupa Row-house, Morbi', '5800', 5000000, '2020-05-31-02-41-51-0.jpg,2020-05-31-02-41-51-1.jpg,2020-05-31-02-41-51-2.jpg,2020-05-31-02-41-51-3.jpg', 'Yogi-Krupa Row-house is a township developed with all the modern facilities. The amazing infrastructure of the entire township has been carefully developed by specialists to develop the living spaces elegantly. The project promises to provide you with best quality homes according to your requirements. ', 2, 3, 'Gujarat', 'Morbi', 1, 0, 8, 1, 0),
(78, 'Raj Flat', 'Flat', 'Raj Flat, Anand', '4800', 400, '2020-05-31-02-52-45-0.jpeg,2020-05-31-02-52-45-1.jpeg,2020-05-31-02-52-45-2.jpeg', 'Raj Flat is one of the residential developments of Raj Developers, located in Surat. It offers spacious skillfully designed 2BHK villas. The project is well equipped with all the amenities to facilitate the needs of the residents.', 2, 2, 'Gujarat', 'Anand', 0, 5000, 8, 1, 0),
(79, 'Chandani Flat', 'Flat', 'Chandani Flat, Bharuch', '4500', 350, '2020-05-31-03-37-47-0.jpg,2020-05-31-03-37-47-1.jpg,2020-05-31-03-37-47-2.jpg', 'Chandani Developer Flat Company is offering premium apartments in a project which is situated in region of Bharuch. The project is all set for moving in purpose. Different regular necessities like school, bank, hospital, petrol pump, bus station etc.,', 2, 2, 'Gujarat', 'Bharuch', 0, 5000, 7, 1, 0),
(80, 'Puja Farm', 'Farm-house', 'Puja Farm-house, Rajkot', '5200', 450, '2020-05-31-03-46-54-0.jpg,2020-05-31-03-46-54-1.jpg,2020-05-31-03-46-54-2.jpg,2020-05-31-03-46-54-3.jpg', 'Puja Farm-house is one of the residential developments of Puja Developers, located in Rajkot. The project is well equipped with all the amenities to facilitate the needs of the residents.', 2, 3, 'Gujarat', 'Rajkot', 0, 5000, 8, 1, 0),
(81, 'Arjun Row-house', 'Row-house', 'Arjun Row-house, Surat', '5200', 500, '2020-06-01-02-33-56-0.jpg,2020-06-01-02-33-56-1.jpg,2020-06-01-02-33-56-2.jpg', 'Arjun Row-house is a plan magnum opus! Lovely teakwood joglo house with two single beds - sweet little occasion home for good companions.The floor-to-roof windows are neglecting the pool and pull in the daylight into the room.', 2, 3, 'Gujarat', 'Surat', 0, 5000, 4, 3, 2),
(82, 'Sita Bungalow', 'Bungalow', 'Sita Bungalow, Ahemdabad', '5600', 7500000, '2020-06-01-03-02-55-0.jpg,2020-06-01-03-02-56-1.jpg,2020-06-01-03-02-56-2.jpg,2020-06-01-03-02-56-3.jpg', 'Sita Bungalow is a residential complex which offers refined luxurious bungalows to reside. This is the perfect place for families to make memories. Sita Bungalow will become an episode of your life which will be unforgettable as the residencies here are very cosy, lavish and classy. All these factors are a hard-to-find-combination in homes today, but at Sita Bungalow it is possible since the designing of the homes have been done keeping in mind the Indian families. The ambience of this residential abode is full of serenity, tranquility and purity.', 3, 3, 'Gujarat', 'Ahemdabad', 1, 0, 5, 2, 3),
(83, 'Vandna Flat', 'Flat', 'Vandna Flat, Vadodara', '5400', 4000000, '2020-06-01-03-07-01-0.jpg,2020-06-01-03-07-01-1.jpg,2020-06-01-03-07-01-2.jpg', 'Vandna Flat in Vadodara,Vandna Group is a residential project. The project offers Apartment with perfect combination of contemporary architecture and features to provide comfortable living.', 2, 2, 'Gujarat', 'Vadodara', 1, 0, 6, 2, 1),
(84, 'Saraswati Farm', 'Farm-house', 'Saraswati Farm-house, Rajkot', '6500', 8000000, '2020-06-01-03-11-28-0.jpg,2020-06-01-03-11-28-1.jpg,2020-06-01-03-11-28-2.jpg,2020-06-01-03-11-28-3.jpg,2020-06-01-03-11-28-4.jpg', 'Saraswati Farm is spread over 0.66 acres and offers apartments with features and comfortable amenities such as 20 security, car parking, boundary with compound walls and 24 hours water-supply. As the project is under construction, you need to contact us for the carpet area of apartments and you can design it too.', 3, 3, 'Gujarat', 'Rajkot', 1, 0, 7, 2, 3),
(85, 'Paramhansh Row-house', 'Row-house', 'Paramhansh Row-house, Bhavnagar', '5900', 10000000, '2020-06-01-03-15-24-0.jpg,2020-06-01-03-15-24-1.jpg,2020-06-01-03-15-24-2.jpg,2020-06-01-03-15-24-3.jpg', 'Paramhansh Row-house is an excellent choice for rest and rejuvenation. Well-known for its proximity to great restaurants and attractions, You can also take advantage of some of the amenities offered by the cottage, including a 24 hour front desk, 24 hour security and baggage storage.', 3, 4, 'Gujarat', 'Bhavnagar', 1, 0, 8, 2, 1),
(86, 'Ridham bungalow', 'Bungalow', 'Ridham bungalow, Surat', '5200', 400, '2020-06-02-02-27-19-0.jpg,2020-06-02-02-27-19-1.jpg,2020-06-02-02-27-19-2.jpg', 'sjehgorhahdouwfuwehofeshofvheoyfuagtdgqwlt', 2, 2, 'Gujarat', 'Surat', 0, 5000, 8, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rent`
--

CREATE TABLE `tbl_rent` (
  `rent_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `starting_date` datetime NOT NULL,
  `ending_date` datetime NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rent`
--

INSERT INTO `tbl_rent` (`rent_id`, `property_id`, `starting_date`, `ending_date`, `user_name`, `user_id`) VALUES
(7, 29, '2020-08-07 00:00:00', '2020-09-17 00:00:00', 'Priyansa', 1),
(8, 3, '2024-02-15 00:00:00', '2024-02-20 00:00:00', 'Ashish', 10),
(9, 7, '2024-03-09 00:00:00', '2024-03-20 00:00:00', 'Ashish', 10),
(10, 3, '2024-03-22 00:00:00', '2024-03-31 00:00:00', 'Pal', 12),
(11, 36, '2024-04-11 00:00:00', '2024-05-01 00:00:00', 'Kunjit', 13);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `review_id` int(10) NOT NULL,
  `property_id` int(10) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `review` text NOT NULL,
  `r_date` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_mobile` varchar(11) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL COMMENT '0=user 1=owner'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_mobile`, `user_password`, `user_address`, `user_type`) VALUES
(2, 'janki', 'jankikathrotiya69@gmail.com', '99247-63203', 'janki', 'yoginagar soci, yogichowk, surat', 0),
(3, 'ravina', 'savaliyaravina5@gmail.com', '94290-89905', 'ravina', 'patelpark soci, simada surat', 0),
(4, 'priyansa', 'priyansaitaliya20@gmail.com', '63524-54827', 'priyansa', 'pramukhchhaya soci, yogichowk, surat', 1),
(5, 'janki', 'jankikathrotiya69@gmail.com', '99247-63203', 'janki', 'yoginagar soci, yogichowk, surat', 1),
(6, 'ravina', 'savaliyaravina5@gmail.com', '94290-89905', 'ravina', 'patelpark soci, simada, surat', 1),
(7, 'dhara', 'dhara@gmail.com', '12345-67890', 'dhara', 'b-135, yogiraj soci, bapunagar, ahemdabad ', 1),
(8, 'bansi', 'bansi@gmail.com', '23456-7892', 'bansi', 'a-24, Patelpark soci, Surat', 1),
(9, 'ridham', 'ridhamkathrotiya09@gmail.com', '99015-15441', 'ridham', 'b-17, yoginagar soci, yogichowk, surat', 0),
(10, 'ashish', 'ashishdhameliya9925@gmail.com', '87996-83656', 'ashish@123', 'vaghavadi road bhavnagar', 0),
(11, 'dhruvin', 'dhruvin123@gmail.com', '87996-83656', 'dhruvin@123', 'bhavnagar', 1),
(12, 'pal', 'pal123@gmail.com', '99256-01534', 'pal@123', 'bhavnagar', 0),
(13, 'kunjit', 'kunjit123@gmail.com', '87965-52445', 'kunjit@123', 'bhavnagar', 0),
(14, 'ashish', 'ashish123@gmail.com', '99256-01534', 'ashish@123', 'bhavnagar', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_property`
--
ALTER TABLE `tbl_property`
  ADD PRIMARY KEY (`property_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_rent`
--
ALTER TABLE `tbl_rent`
  ADD PRIMARY KEY (`rent_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_property`
--
ALTER TABLE `tbl_property`
  MODIFY `property_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_rent`
--
ALTER TABLE `tbl_rent`
  MODIFY `rent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD CONSTRAINT `tbl_payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_property`
--
ALTER TABLE `tbl_property`
  ADD CONSTRAINT `tbl_property_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_rent`
--
ALTER TABLE `tbl_rent`
  ADD CONSTRAINT `tbl_rent_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `tbl_property` (`property_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD CONSTRAINT `tbl_review_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `tbl_property` (`property_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
