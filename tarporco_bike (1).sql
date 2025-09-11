-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 11, 2025 at 09:45 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tarporco_bike`
--

-- --------------------------------------------------------

--
-- Table structure for table `ospos_app_config`
--

CREATE TABLE `ospos_app_config` (
  `key` varchar(50) NOT NULL,
  `value` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_app_config`
--

INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
('address', 'Court Road, Netrokona'),
('allow_duplicate_barcodes', '0'),
('barcode_content', 'id'),
('barcode_first_row', 'category'),
('barcode_font', 'Arial'),
('barcode_font_size', '10'),
('barcode_formats', '[]'),
('barcode_generate_if_empty', '0'),
('barcode_height', '50'),
('barcode_num_in_row', '2'),
('barcode_page_cellspacing', '20'),
('barcode_page_width', '100'),
('barcode_second_row', 'item_code'),
('barcode_third_row', 'unit_price'),
('barcode_type', 'Code39'),
('barcode_width', '250'),
('cash_decimals', '2'),
('cash_rounding_code', '1'),
('company', 'Bajaj Utshob'),
('company_logo', 'company_logo.png'),
('country_codes', 'us'),
('currency_code', 'BDT'),
('currency_decimals', '2'),
('currency_symbol', '৳'),
('customer_reward_enable', '0'),
('dateformat', 'm/d/Y'),
('date_or_time_format', ''),
('default_receivings_discount', '0'),
('default_receivings_discount_type', '0'),
('default_register_mode', 'sale'),
('default_sales_discount', '0'),
('default_sales_discount_type', '0'),
('default_tax_1_name', ''),
('default_tax_1_rate', ''),
('default_tax_2_name', ''),
('default_tax_2_rate', ''),
('default_tax_category', 'Standard'),
('default_tax_code', ''),
('default_tax_jurisdiction', ''),
('default_tax_rate', '8'),
('derive_sale_quantity', '0'),
('dinner_table_enable', '0'),
('email', 'bajajutshob@gmail.com'),
('email_receipt_check_behaviour', 'last'),
('enforce_privacy', '0'),
('fax', ''),
('financial_year', '7'),
('gcaptcha_enable', '0'),
('gcaptcha_secret_key', ''),
('gcaptcha_site_key', ''),
('giftcard_number', 'series'),
('image_allowed_types', 'gif|jpg|png'),
('image_max_height', '480'),
('image_max_size', '128'),
('image_max_width', '640'),
('include_hsn', '0'),
('invoice_default_comments', 'This is a default comment'),
('invoice_email_message', 'Dear {CU}, In attachment the receipt for sale {ISEQ}'),
('invoice_enable', '1'),
('invoice_type', 'invoice'),
('language', 'english'),
('language_code', 'en-US'),
('last_used_invoice_number', '0'),
('last_used_quote_number', '0'),
('last_used_work_order_number', '0'),
('lines_per_page', '25'),
('line_sequence', '0'),
('login_form', 'floating_labels'),
('mailpath', '/usr/sbin/sendmail'),
('msg_msg', ''),
('msg_pwd', ''),
('msg_src', ''),
('msg_uid', ''),
('multi_pack_enabled', '0'),
('notify_horizontal_position', 'center'),
('notify_vertical_position', 'bottom'),
('number_locale', 'en_US'),
('payment_options_order', 'cashdebitcredit'),
('phone', '01711182755'),
('print_bottom_margin', '0'),
('print_delay_autoreturn', '0'),
('print_footer', '0'),
('print_header', '0'),
('print_left_margin', '0'),
('print_receipt_check_behaviour', 'last'),
('print_right_margin', '0'),
('print_silently', '1'),
('print_top_margin', '0'),
('protocol', 'mail'),
('quantity_decimals', '0'),
('quote_default_comments', 'This is a default quote comment'),
('receipt_font_size', '12'),
('receipt_show_company_name', '1'),
('receipt_show_description', '1'),
('receipt_show_serialnumber', '1'),
('receipt_show_taxes', '0'),
('receipt_show_tax_ind', '0'),
('receipt_show_total_discount', '1'),
('receipt_template', 'receipt_default'),
('receiving_calculate_average_price', '0'),
('recv_invoice_format', '{CO}'),
('return_policy', 'Return Policy Is Not Stated Yet'),
('sales_invoice_format', '{CO}'),
('sales_quote_format', 'Q%y{QSEQ:6}'),
('smtp_crypto', 'ssl'),
('smtp_host', ''),
('smtp_pass', ''),
('smtp_port', '465'),
('smtp_timeout', '5'),
('smtp_user', ''),
('suggestions_first_column', 'name'),
('suggestions_second_column', ''),
('suggestions_third_column', ''),
('tax_decimals', '2'),
('tax_id', ''),
('tax_included', '0'),
('theme', 'flatly'),
('thousands_separator', '1'),
('timeformat', 'H:i:s'),
('timezone', 'America/New_York'),
('use_destination_based_tax', '0'),
('website', ''),
('work_order_enable', '0'),
('work_order_format', 'W%y{WSEQ:6}');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_attribute_definitions`
--

CREATE TABLE `ospos_attribute_definitions` (
  `definition_id` int NOT NULL,
  `definition_name` varchar(255) NOT NULL,
  `definition_type` varchar(45) NOT NULL,
  `definition_unit` varchar(16) DEFAULT NULL,
  `definition_flags` tinyint(1) NOT NULL,
  `definition_fk` int DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_attribute_links`
--

CREATE TABLE `ospos_attribute_links` (
  `attribute_id` int DEFAULT NULL,
  `definition_id` int NOT NULL,
  `item_id` int DEFAULT NULL,
  `sale_id` int DEFAULT NULL,
  `receiving_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_attribute_values`
--

CREATE TABLE `ospos_attribute_values` (
  `attribute_id` int NOT NULL,
  `attribute_value` varchar(255) DEFAULT NULL,
  `attribute_date` date DEFAULT NULL,
  `attribute_decimal` decimal(7,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_cash_up`
--

CREATE TABLE `ospos_cash_up` (
  `cashup_id` int NOT NULL,
  `open_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `close_date` timestamp NULL DEFAULT NULL,
  `open_amount_cash` decimal(15,2) NOT NULL,
  `transfer_amount_cash` decimal(15,2) NOT NULL,
  `note` int NOT NULL,
  `closed_amount_cash` decimal(15,2) NOT NULL,
  `closed_amount_card` decimal(15,2) NOT NULL,
  `closed_amount_check` decimal(15,2) NOT NULL,
  `closed_amount_total` decimal(15,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `open_employee_id` int NOT NULL,
  `close_employee_id` int NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `closed_amount_due` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers`
--

CREATE TABLE `ospos_customers` (
  `person_id` int NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `taxable` tinyint(1) NOT NULL DEFAULT '1',
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `sales_tax_code_id` int DEFAULT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount_type` tinyint(1) NOT NULL DEFAULT '0',
  `package_id` int DEFAULT NULL,
  `points` int DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `employee_id` int NOT NULL,
  `consent` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_customers`
--

INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `tax_id`, `sales_tax_code_id`, `discount`, `discount_type`, `package_id`, `points`, `deleted`, `date`, `employee_id`, `consent`) VALUES
(6, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-03 05:44:40', 2, 1),
(7, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-04 06:30:50', 2, 1),
(8, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-04 09:40:26', 2, 1),
(9, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-04 09:43:51', 2, 1),
(10, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-04 09:46:31', 2, 1),
(11, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-04 12:15:55', 2, 1),
(12, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-06 12:01:59', 2, 1),
(13, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-06 12:17:05', 2, 1),
(14, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-06 12:26:19', 2, 1),
(15, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-06 14:53:48', 2, 1),
(16, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-08 13:09:30', 2, 1),
(17, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-08 13:11:37', 2, 1),
(18, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-09 12:43:21', 2, 1),
(19, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-09 13:36:13', 2, 1),
(20, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-10 05:51:00', 2, 1),
(21, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-10 10:34:47', 2, 1),
(22, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-10 13:24:06', 2, 1),
(23, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-11 11:34:44', 2, 1),
(24, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-11 11:40:02', 2, 1),
(25, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-11 11:50:28', 2, 1),
(26, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-11 11:56:04', 2, 1),
(27, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-11 12:01:26', 2, 1),
(28, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-11 12:05:09', 2, 1),
(29, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-11 12:57:49', 2, 1),
(30, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-13 13:05:56', 2, 1),
(31, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-15 12:47:05', 2, 1),
(32, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-15 12:49:25', 2, 1),
(33, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-15 12:51:02', 2, 1),
(34, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-16 10:28:58', 2, 1),
(35, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-16 10:42:35', 2, 1),
(36, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-16 10:45:37', 2, 1),
(37, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-17 12:23:38', 2, 1),
(38, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-17 12:25:17', 2, 1),
(39, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-17 12:27:34', 2, 1),
(40, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-18 13:12:49', 2, 1),
(41, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-18 13:14:11', 2, 1),
(42, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-18 13:15:40', 2, 1),
(43, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-20 04:46:51', 2, 1),
(44, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-20 11:48:58', 2, 1),
(45, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-21 12:57:54', 2, 1),
(46, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-21 13:02:22', 2, 1),
(47, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-22 13:07:03', 2, 1),
(48, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-23 13:00:00', 2, 1),
(49, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-23 13:02:39', 2, 1),
(50, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-23 13:05:26', 2, 1),
(51, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-23 13:07:06', 2, 1),
(52, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-25 04:41:37', 2, 1),
(53, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-27 13:39:47', 2, 1),
(54, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-31 12:35:04', 2, 1),
(55, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-01-31 12:41:13', 2, 1),
(56, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-03 04:13:07', 2, 1),
(57, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-03 04:16:08', 2, 1),
(58, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-03 09:55:13', 2, 1),
(59, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-04 04:37:27', 2, 1),
(60, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-04 04:43:19', 2, 1),
(61, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-04 04:47:24', 2, 1),
(62, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-04 04:51:53', 2, 1),
(63, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-04 04:57:04', 2, 1),
(64, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-04 05:00:16', 2, 1),
(65, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-05 12:44:10', 2, 1),
(66, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-06 12:33:27', 2, 1),
(67, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-07 13:34:50', 2, 1),
(68, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-08 13:39:58', 2, 1),
(69, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-08 13:44:19', 2, 1),
(70, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-08 13:47:40', 2, 1),
(71, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-08 13:53:05', 2, 1),
(72, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-10 13:14:08', 2, 1),
(73, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-10 13:21:42', 2, 1),
(74, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-10 13:28:42', 2, 1),
(75, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-10 13:32:14', 2, 1),
(76, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-10 14:47:33', 2, 1),
(77, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-11 12:50:47', 2, 1),
(78, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-13 12:56:22', 2, 1),
(79, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-13 13:01:28', 2, 1),
(80, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-14 13:01:16', 2, 1),
(81, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-14 13:05:00', 2, 1),
(82, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-14 13:11:43', 2, 1),
(83, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-15 13:20:36', 2, 1),
(84, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-15 13:23:44', 2, 1),
(85, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-15 13:27:28', 2, 1),
(86, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-15 13:30:49', 2, 1),
(87, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-17 12:11:31', 2, 1),
(88, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-18 13:48:07', 2, 1),
(89, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-18 13:52:05', 2, 1),
(90, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-19 13:09:43', 2, 1),
(91, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-19 13:12:54', 2, 1),
(92, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-19 13:17:24', 2, 1),
(93, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-19 13:20:39', 2, 1),
(94, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-19 13:23:15', 2, 1),
(95, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-19 13:29:02', 2, 1),
(96, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-19 13:40:19', 2, 1),
(97, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-20 12:46:00', 2, 1),
(98, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-20 12:48:41', 2, 1),
(99, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-20 12:52:30', 2, 1),
(100, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-21 12:52:52', 2, 1),
(101, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-22 13:01:50', 2, 1),
(102, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-22 13:05:02', 2, 1),
(103, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-24 12:19:41', 2, 1),
(104, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-24 12:23:32', 2, 1),
(105, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-25 13:00:31', 2, 1),
(106, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-25 13:04:10', 2, 1),
(107, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-26 13:14:23', 2, 1),
(108, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-28 12:36:52', 2, 1),
(109, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-28 12:41:58', 2, 1),
(110, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-28 12:44:59', 2, 1),
(111, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-02-29 14:06:28', 2, 1),
(112, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-04 13:48:42', 2, 1),
(113, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-05 05:28:30', 2, 1),
(114, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-05 05:33:10', 2, 1),
(115, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-05 12:03:25', 2, 1),
(116, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-05 12:05:51', 2, 1),
(117, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-05 12:08:40', 2, 1),
(118, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-05 12:11:54', 2, 1),
(119, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-06 11:59:44', 2, 1),
(120, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-06 12:03:02', 2, 1),
(121, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-06 12:05:49', 2, 1),
(122, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-06 12:09:39', 2, 1),
(123, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-07 12:53:47', 2, 1),
(124, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-07 12:57:47', 2, 1),
(125, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-13 08:45:41', 2, 1),
(126, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-13 08:55:26', 2, 1),
(127, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-17 05:31:07', 2, 1),
(128, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-17 05:34:51', 2, 1),
(129, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-19 10:25:18', 2, 1),
(130, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-19 10:29:31', 2, 1),
(131, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-21 13:27:50', 2, 1),
(132, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-23 10:43:17', 2, 1),
(133, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-23 10:46:36', 2, 1),
(134, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-24 13:12:28', 2, 1),
(135, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-25 12:50:25', 2, 1),
(136, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-25 12:53:21', 2, 1),
(137, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-26 13:13:17', 2, 1),
(138, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-26 13:16:22', 2, 1),
(139, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-26 13:19:48', 2, 1),
(140, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-26 13:23:10', 2, 1),
(141, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-27 13:17:13', 2, 1),
(142, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-28 12:59:44', 2, 1),
(143, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-28 13:07:39', 2, 1),
(144, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-30 13:09:56', 2, 1),
(145, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-30 13:15:04', 2, 1),
(146, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-30 13:17:09', 2, 1),
(147, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-30 13:20:38', 2, 1),
(148, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-30 13:26:01', 2, 1),
(149, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-03-30 13:29:27', 2, 1),
(150, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-01 15:24:07', 2, 1),
(151, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-02 13:08:03', 2, 1),
(152, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-02 13:10:33', 2, 1),
(153, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-02 13:13:30', 2, 1),
(154, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-03 13:18:51', 2, 1),
(155, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-03 13:22:08', 2, 1),
(156, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-03 13:32:18', 2, 1),
(157, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-03 13:34:59', 2, 1),
(158, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-04 14:24:18', 2, 1),
(159, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-04 14:28:23', 2, 1),
(160, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-04 14:32:37', 2, 1),
(161, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-04 14:35:16', 2, 1),
(162, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-04 14:37:44', 2, 1),
(163, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-05 09:11:35', 2, 1),
(164, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-06 05:20:20', 2, 1),
(165, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-07 12:55:18', 2, 1),
(166, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-07 13:05:11', 2, 1),
(167, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-07 13:09:16', 2, 1),
(168, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-07 13:12:19', 2, 1),
(169, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-07 13:40:33', 2, 1),
(170, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-07 14:48:41', 2, 1),
(171, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-08 11:46:20', 2, 1),
(172, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-08 11:48:53', 2, 1),
(173, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-08 11:53:04', 2, 1),
(174, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-08 11:57:59', 2, 1),
(175, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-08 12:01:36', 2, 1),
(176, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-08 13:30:05', 2, 1),
(177, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-09 04:48:50', 2, 1),
(178, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-09 13:07:33', 2, 1),
(179, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-09 13:10:09', 2, 1),
(180, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-09 13:12:48', 2, 1),
(181, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-09 13:16:15', 2, 1),
(182, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-09 13:18:52', 2, 1),
(183, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-09 13:21:49', 2, 1),
(184, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-09 13:24:42', 2, 1),
(185, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-13 12:25:58', 2, 1),
(186, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-13 12:28:42', 2, 1),
(187, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-13 12:31:36', 2, 1),
(188, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-13 12:34:17', 2, 1),
(189, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-13 12:36:23', 2, 1),
(190, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-13 12:38:26', 2, 1),
(191, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-13 12:40:37', 2, 1),
(192, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-13 12:43:01', 2, 1),
(193, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-13 12:45:25', 2, 1),
(194, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-14 04:38:27', 2, 1),
(195, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-14 04:41:08', 2, 1),
(196, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-14 04:44:08', 2, 1),
(197, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-14 11:49:15', 2, 1),
(198, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-14 11:52:02', 2, 1),
(199, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-14 11:55:02', 2, 1),
(200, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-14 11:58:11', 2, 1),
(201, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-15 12:35:02', 2, 1),
(202, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-15 12:37:40', 2, 1),
(203, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-15 12:40:47', 2, 1),
(204, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-15 12:43:32', 2, 1),
(205, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-15 12:45:56', 2, 1),
(206, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-16 13:22:46', 2, 1),
(207, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-16 13:31:16', 2, 1),
(208, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-04-28 14:09:16', 2, 1),
(209, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-05-02 13:07:52', 2, 1),
(210, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2024-05-02 13:11:05', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers_packages`
--

CREATE TABLE `ospos_customers_packages` (
  `package_id` int NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `points_percent` float NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_customers_packages`
--

INSERT INTO `ospos_customers_packages` (`package_id`, `package_name`, `points_percent`, `deleted`) VALUES
(1, 'Default', 0, 0),
(2, 'Bronze', 10, 0),
(3, 'Silver', 20, 0),
(4, 'Gold', 30, 0),
(5, 'Premium', 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers_points`
--

CREATE TABLE `ospos_customers_points` (
  `id` int NOT NULL,
  `person_id` int NOT NULL,
  `package_id` int NOT NULL,
  `sale_id` int NOT NULL,
  `points_earned` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_dinner_tables`
--

CREATE TABLE `ospos_dinner_tables` (
  `dinner_table_id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_dinner_tables`
--

INSERT INTO `ospos_dinner_tables` (`dinner_table_id`, `name`, `status`, `deleted`) VALUES
(1, 'Delivery', 0, 0),
(2, 'Take Away', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_employees`
--

CREATE TABLE `ospos_employees` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` int NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `hash_version` tinyint(1) NOT NULL DEFAULT '2',
  `language` varchar(48) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_employees`
--

INSERT INTO `ospos_employees` (`username`, `password`, `person_id`, `deleted`, `hash_version`, `language`, `language_code`) VALUES
('admin', '$2y$10$143JN0vuHz4ke9lRpdGoAumkFwT7kHonLGzKzvSY145qyLxmiMNGa', 1, 0, 2, NULL, NULL),
('jakir', '$2y$10$WONzn2SwoFzy8qQ1MfUc2ec30jPfLEpD9hy4hBLijkEiF/LoZgu9G', 2, 0, 2, '', ''),
('niloy', '$2y$10$m9UNIX6KW4nJGaLSP8OkeeKMLq9PW3tgdd/qUm8EV/zapySz54GZi', 3, 0, 2, '', ''),
('owner', '$2y$10$N1IKflmJLEn0rcD73.4hyOHKTTHZ.5UwmxSVP7bwiig0vvLXQt3x.', 5, 0, 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_expenses`
--

CREATE TABLE `ospos_expenses` (
  `expense_id` int NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` decimal(15,2) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `expense_category_id` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `employee_id` int NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `supplier_tax_code` varchar(255) DEFAULT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `supplier_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_expense_categories`
--

CREATE TABLE `ospos_expense_categories` (
  `expense_category_id` int NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_description` varchar(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_giftcards`
--

CREATE TABLE `ospos_giftcards` (
  `record_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `giftcard_id` int NOT NULL,
  `giftcard_number` varchar(255) DEFAULT NULL,
  `value` decimal(15,2) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `person_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_grants`
--

CREATE TABLE `ospos_grants` (
  `permission_id` varchar(255) NOT NULL,
  `person_id` int NOT NULL,
  `menu_group` varchar(32) DEFAULT 'home'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_grants`
--

INSERT INTO `ospos_grants` (`permission_id`, `person_id`, `menu_group`) VALUES
('attributes', 1, 'office'),
('attributes', 5, 'home'),
('cashups', 1, 'home'),
('cashups', 5, 'home'),
('config', 1, 'office'),
('config', 3, 'home'),
('config', 5, 'home'),
('customers', 1, 'home'),
('customers', 2, 'home'),
('customers', 3, 'home'),
('customers', 5, 'home'),
('employees', 1, 'office'),
('employees', 3, 'home'),
('employees', 5, 'home'),
('expenses', 1, 'home'),
('expenses', 5, 'home'),
('expenses_categories', 1, 'office'),
('expenses_categories', 5, 'home'),
('giftcards', 1, 'home'),
('giftcards', 5, 'home'),
('home', 1, 'office'),
('home', 2, 'home'),
('home', 3, 'home'),
('home', 5, 'home'),
('items', 1, 'home'),
('items', 2, 'home'),
('items', 3, 'home'),
('items', 5, 'home'),
('items_stock', 1, 'home'),
('items_stock', 2, '--'),
('items_stock', 3, '--'),
('items_stock', 5, '--'),
('item_kits', 1, 'home'),
('item_kits', 5, 'home'),
('messages', 1, 'home'),
('messages', 5, 'home'),
('office', 1, 'home'),
('office', 3, 'home'),
('office', 5, 'home'),
('receivings', 1, 'home'),
('receivings', 2, 'home'),
('receivings', 3, 'home'),
('receivings', 5, 'home'),
('receivings_stock', 1, 'home'),
('receivings_stock', 2, '--'),
('receivings_stock', 3, '--'),
('receivings_stock', 5, '--'),
('reports', 1, 'home'),
('reports', 2, 'home'),
('reports', 3, 'home'),
('reports', 5, 'home'),
('reports_categories', 1, 'home'),
('reports_categories', 2, '--'),
('reports_categories', 3, '--'),
('reports_categories', 5, '--'),
('reports_customers', 1, 'home'),
('reports_customers', 2, '--'),
('reports_customers', 3, '--'),
('reports_customers', 5, '--'),
('reports_discounts', 1, 'home'),
('reports_discounts', 2, '--'),
('reports_discounts', 3, '--'),
('reports_discounts', 5, '--'),
('reports_employees', 1, 'home'),
('reports_employees', 2, '--'),
('reports_employees', 3, '--'),
('reports_employees', 5, '--'),
('reports_expenses_categories', 1, 'home'),
('reports_expenses_categories', 2, '--'),
('reports_expenses_categories', 3, '--'),
('reports_expenses_categories', 5, '--'),
('reports_inventory', 1, 'home'),
('reports_inventory', 2, '--'),
('reports_inventory', 3, '--'),
('reports_inventory', 5, '--'),
('reports_items', 1, 'home'),
('reports_items', 2, '--'),
('reports_items', 3, '--'),
('reports_items', 5, '--'),
('reports_payments', 1, 'home'),
('reports_payments', 2, '--'),
('reports_payments', 3, '--'),
('reports_payments', 5, '--'),
('reports_receivings', 1, 'home'),
('reports_receivings', 2, '--'),
('reports_receivings', 3, '--'),
('reports_receivings', 5, '--'),
('reports_sales', 1, 'home'),
('reports_sales', 2, '--'),
('reports_sales', 3, '--'),
('reports_sales', 5, '--'),
('reports_sales_taxes', 1, 'home'),
('reports_sales_taxes', 2, '--'),
('reports_sales_taxes', 3, '--'),
('reports_sales_taxes', 5, '--'),
('reports_suppliers', 1, 'home'),
('reports_suppliers', 2, '--'),
('reports_suppliers', 3, '--'),
('reports_suppliers', 5, '--'),
('reports_taxes', 1, 'home'),
('reports_taxes', 2, '--'),
('reports_taxes', 3, '--'),
('reports_taxes', 5, '--'),
('sales', 1, 'home'),
('sales', 2, 'home'),
('sales', 3, 'home'),
('sales', 5, 'home'),
('sales_change_price', 1, '--'),
('sales_change_price', 2, '--'),
('sales_change_price', 3, '--'),
('sales_change_price', 5, '--'),
('sales_delete', 1, '--'),
('sales_delete', 3, '--'),
('sales_delete', 5, '--'),
('sales_stock', 1, 'home'),
('sales_stock', 2, '--'),
('sales_stock', 3, '--'),
('sales_stock', 5, '--'),
('suppliers', 1, 'home'),
('suppliers', 2, 'home'),
('suppliers', 3, 'home'),
('suppliers', 5, 'home'),
('taxes', 1, 'office'),
('taxes', 5, 'home');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_inventory`
--

CREATE TABLE `ospos_inventory` (
  `trans_id` int NOT NULL,
  `trans_items` int NOT NULL DEFAULT '0',
  `trans_user` int NOT NULL DEFAULT '0',
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trans_comment` text NOT NULL,
  `trans_location` int NOT NULL,
  `trans_inventory` decimal(15,3) NOT NULL DEFAULT '0.000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_inventory`
--

INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
(1, 1, 2, '2023-12-25 09:58:20', 'Manual Edit of Quantity', 1, 0.000),
(2, 2, 2, '2023-12-25 10:18:19', 'Manual Edit of Quantity', 1, 0.000),
(3, 3, 2, '2023-12-25 10:22:10', 'Manual Edit of Quantity', 1, 0.000),
(4, 4, 2, '2023-12-25 10:46:05', 'Manual Edit of Quantity', 1, 0.000),
(5, 5, 2, '2023-12-25 10:50:38', 'Manual Edit of Quantity', 1, 0.000),
(6, 6, 2, '2023-12-25 10:54:31', 'Manual Edit of Quantity', 1, 0.000),
(7, 7, 2, '2023-12-25 11:09:10', 'Manual Edit of Quantity', 1, 0.000),
(8, 8, 2, '2023-12-25 11:12:42', 'Manual Edit of Quantity', 1, 0.000),
(9, 9, 2, '2023-12-25 11:17:40', 'Manual Edit of Quantity', 1, 0.000),
(10, 10, 2, '2023-12-27 09:57:22', 'Manual Edit of Quantity', 1, 0.000),
(11, 11, 2, '2023-12-27 10:04:09', 'Manual Edit of Quantity', 1, 0.000),
(12, 12, 2, '2023-12-27 10:08:50', 'Manual Edit of Quantity', 1, 0.000),
(13, 13, 2, '2023-12-27 10:23:35', 'Manual Edit of Quantity', 1, 0.000),
(14, 14, 2, '2023-12-27 10:30:40', 'Manual Edit of Quantity', 1, 0.000),
(15, 15, 2, '2023-12-27 11:48:28', 'Manual Edit of Quantity', 1, 0.000),
(16, 16, 2, '2023-12-27 11:51:17', 'Manual Edit of Quantity', 1, 0.000),
(17, 17, 2, '2023-12-27 12:00:19', 'Manual Edit of Quantity', 1, 0.000),
(18, 18, 2, '2023-12-27 12:03:01', 'Manual Edit of Quantity', 1, 0.000),
(19, 19, 2, '2023-12-27 12:14:41', 'Manual Edit of Quantity', 1, 0.000),
(20, 20, 2, '2023-12-27 12:52:31', 'Manual Edit of Quantity', 1, 0.000),
(21, 1, 2, '2024-01-02 04:33:23', 'RECV 7', 1, 7.000),
(22, 2, 2, '2024-01-02 04:33:23', 'RECV 9', 1, 2.000),
(23, 16, 2, '2024-01-02 05:41:50', 'RECV 10', 1, 1.000),
(24, 15, 2, '2024-01-02 05:41:50', 'RECV 12', 1, 2.000),
(25, 13, 2, '2024-01-02 05:41:50', 'RECV 13', 1, 1.000),
(26, 14, 2, '2024-01-02 05:41:50', 'RECV 14', 1, 1.000),
(27, 20, 2, '2024-01-02 05:41:50', 'RECV 15', 1, 1.000),
(28, 19, 2, '2024-01-02 05:41:50', 'RECV 21', 1, 6.000),
(29, 17, 2, '2024-01-02 05:41:50', 'RECV 24', 1, 3.000),
(30, 8, 2, '2024-01-02 05:41:50', 'RECV 25', 1, 1.000),
(31, 12, 2, '2024-01-02 05:41:50', 'RECV 26', 1, 1.000),
(32, 10, 2, '2024-01-02 05:41:50', 'RECV 27', 1, 1.000),
(33, 1, 2, '2024-01-02 05:41:50', 'RECV 32', 1, 5.000),
(34, 2, 2, '2024-01-02 05:41:50', 'RECV 33', 1, 1.000),
(35, 3, 2, '2024-01-02 05:41:50', 'RECV 34', 1, 1.000),
(36, 5, 2, '2024-01-02 05:41:50', 'RECV 40', 1, 6.000),
(37, 6, 2, '2024-01-02 05:41:50', 'RECV 41', 1, 1.000),
(38, 4, 2, '2024-01-02 05:41:50', 'RECV 57', 1, 16.000),
(39, 16, 1, '2024-01-03 06:03:26', 'POS 6', 1, -1.000),
(40, 2, 2, '2024-01-04 09:41:56', 'POS 10', 1, -1.000),
(41, 3, 2, '2024-01-04 09:45:17', 'POS 11', 1, -1.000),
(42, 4, 2, '2024-01-04 09:48:17', 'POS 12', 1, -1.000),
(43, 19, 2, '2024-01-04 11:24:08', 'POS 13', 1, -1.000),
(44, 4, 2, '2024-01-04 12:18:09', 'POS 14', 1, -1.000),
(45, 4, 2, '2024-01-06 12:13:29', 'POS 15', 1, -1.000),
(46, 15, 2, '2024-01-06 12:24:37', 'POS 16', 1, -1.000),
(47, 4, 2, '2024-01-06 12:30:51', 'POS 17', 1, -1.000),
(48, 13, 2, '2024-01-06 14:57:06', 'POS 18', 1, -1.000),
(49, 19, 2, '2024-01-08 13:11:09', 'POS 19', 1, -1.000),
(50, 4, 2, '2024-01-08 13:13:38', 'POS 20', 1, -1.000),
(51, 2, 2, '2024-01-09 12:48:11', 'POS 22', 1, -1.000),
(52, 4, 2, '2024-01-09 13:38:30', 'POS 23', 1, -1.000),
(53, 13, 2, '2024-01-10 05:37:41', 'RECV 58', 1, 1.000),
(54, 2, 2, '2024-01-10 05:37:41', 'RECV 60', 1, 2.000),
(55, 1, 2, '2024-01-10 05:37:41', 'RECV 63', 1, 3.000),
(56, 15, 2, '2024-01-10 05:37:41', 'RECV 65', 1, 2.000),
(57, 21, 2, '2024-01-10 05:43:30', 'Manual Edit of Quantity', 1, 0.000),
(58, 21, 2, '2024-01-10 05:48:18', 'RECV 67', 1, 2.000),
(59, 19, 2, '2024-01-10 05:52:16', 'POS 24', 1, -1.000),
(60, 1, 2, '2024-01-10 10:37:26', 'POS 25', 1, -1.000),
(61, 1, 2, '2024-01-10 13:27:52', 'POS 27', 1, -1.000),
(62, 1, 1, '2024-01-10 13:57:39', 'Deleting sale 27', 1, 1.000),
(63, 15, 2, '2024-01-11 11:38:51', 'POS 28', 1, -1.000),
(64, 4, 2, '2024-01-11 11:45:34', 'POS 29', 1, -1.000),
(65, 5, 2, '2024-01-11 11:54:33', 'POS 30', 1, -1.000),
(66, 1, 2, '2024-01-11 12:00:21', 'POS 31', 1, -1.000),
(67, 1, 2, '2024-01-11 12:04:24', 'POS 32', 1, -1.000),
(68, 1, 2, '2024-01-11 12:07:29', 'POS 33', 1, -1.000),
(69, 20, 2, '2024-01-11 13:00:44', 'POS 34', 1, -1.000),
(70, 1, 2, '2024-01-13 13:07:18', 'POS 35', 1, -1.000),
(71, 22, 2, '2024-01-15 05:17:00', 'Manual Edit of Quantity', 1, 0.000),
(72, 23, 2, '2024-01-15 05:20:09', 'Manual Edit of Quantity', 1, 0.000),
(73, 16, 2, '2024-01-15 05:23:45', 'RECV 68', 1, 1.000),
(74, 15, 2, '2024-01-15 05:23:45', 'RECV 71', 1, 3.000),
(75, 7, 2, '2024-01-15 05:23:45', 'RECV 75', 1, 4.000),
(76, 23, 2, '2024-01-15 05:23:45', 'RECV 77', 1, 2.000),
(77, 1, 2, '2024-01-15 12:48:51', 'POS 36', 1, -1.000),
(78, 5, 2, '2024-01-15 12:50:36', 'POS 37', 1, -1.000),
(79, 4, 2, '2024-01-15 12:58:50', 'POS 38', 1, -1.000),
(80, 2, 2, '2024-01-16 10:30:51', 'POS 39', 1, -1.000),
(81, 19, 2, '2024-01-16 10:44:43', 'POS 40', 1, -1.000),
(82, 1, 2, '2024-01-16 10:47:29', 'POS 41', 1, -1.000),
(83, 4, 2, '2024-01-17 12:24:53', 'POS 42', 1, -1.000),
(84, 1, 2, '2024-01-17 12:27:08', 'POS 43', 1, -1.000),
(85, 4, 2, '2024-01-17 12:29:03', 'POS 44', 1, -1.000),
(86, 4, 2, '2024-01-18 13:13:44', 'POS 45', 1, -1.000),
(87, 19, 2, '2024-01-18 13:15:19', 'POS 46', 1, -1.000),
(88, 4, 2, '2024-01-18 13:17:02', 'POS 47', 1, -1.000),
(89, 1, 2, '2024-01-20 04:48:55', 'POS 48', 1, -1.000),
(90, 24, 2, '2024-01-20 05:03:40', 'Manual Edit of Quantity', 1, 0.000),
(91, 24, 2, '2024-01-20 05:20:27', 'RECV 78', 1, 1.000),
(92, 3, 2, '2024-01-20 05:20:27', 'RECV 79', 1, 1.000),
(93, 19, 2, '2024-01-20 05:20:27', 'RECV 81', 1, 2.000),
(94, 20, 2, '2024-01-20 05:20:27', 'RECV 82', 1, 1.000),
(95, 15, 2, '2024-01-20 05:20:27', 'RECV 85', 1, 3.000),
(96, 16, 2, '2024-01-20 05:20:27', 'RECV 86', 1, 1.000),
(97, 14, 2, '2024-01-20 05:20:27', 'RECV 87', 1, 1.000),
(98, 7, 2, '2024-01-20 11:50:01', 'POS 49', 1, -1.000),
(99, 1, 2, '2024-01-21 11:39:47', 'Manual Edit of Quantity', 1, -1.000),
(100, 7, 2, '2024-01-21 13:01:10', 'POS 50', 1, -1.000),
(101, 4, 2, '2024-01-21 13:04:42', 'POS 51', 1, -1.000),
(102, 2, 2, '2024-01-22 13:08:04', 'POS 52', 1, -1.000),
(103, 1, 2, '2024-01-23 13:01:31', 'POS 53', 1, -1.000),
(104, 2, 2, '2024-01-23 13:03:59', 'POS 54', 1, -1.000),
(105, 17, 2, '2024-01-23 13:06:48', 'POS 55', 1, -1.000),
(106, 1, 2, '2024-01-23 13:10:47', 'POS 56', 1, -1.000),
(107, 1, 2, '2024-01-25 04:39:41', 'RECV 91', 1, 4.000),
(108, 2, 2, '2024-01-25 04:39:41', 'RECV 93', 1, 2.000),
(109, 4, 2, '2024-01-25 04:39:41', 'RECV 96', 1, 3.000),
(110, 5, 2, '2024-01-25 04:39:41', 'RECV 97', 1, 1.000),
(111, 4, 2, '2024-01-25 04:43:03', 'POS 57', 1, -1.000),
(112, 17, 2, '2024-01-27 13:41:09', 'POS 58', 1, -1.000),
(113, 1, 2, '2024-01-31 04:45:00', 'RECV 105', 1, 8.000),
(114, 2, 2, '2024-01-31 04:45:00', 'RECV 107', 1, 2.000),
(115, 1, 2, '2024-01-31 12:40:07', 'POS 59', 1, -1.000),
(116, 4, 2, '2024-01-31 12:43:40', 'POS 60', 1, -1.000),
(117, 1, 2, '2024-02-03 04:15:21', 'POS 61', 1, -1.000),
(118, 5, 2, '2024-02-03 04:19:01', 'POS 62', 1, -1.000),
(119, 4, 2, '2024-02-03 09:56:40', 'POS 63', 1, -1.000),
(120, 2, 2, '2024-02-04 04:40:12', 'POS 64', 1, -1.000),
(121, 4, 2, '2024-02-04 04:46:01', 'POS 65', 1, -1.000),
(122, 4, 2, '2024-02-04 04:46:01', 'POS 65', 1, -1.000),
(123, 19, 2, '2024-02-04 04:50:12', 'POS 66', 1, -1.000),
(124, 7, 2, '2024-02-04 04:56:18', 'POS 67', 1, -1.000),
(125, 10, 2, '2024-02-04 04:59:42', 'POS 68', 1, -1.000),
(126, 4, 2, '2024-02-04 05:02:07', 'POS 69', 1, -1.000),
(127, 15, 2, '2024-02-05 12:47:45', 'POS 70', 1, -1.000),
(128, 4, 2, '2024-02-06 12:34:30', 'POS 71', 1, -1.000),
(129, 1, 2, '2024-02-07 13:40:04', 'POS 72', 1, -1.000),
(130, 2, 2, '2024-02-08 13:43:06', 'POS 73', 1, -1.000),
(131, 15, 2, '2024-02-08 13:46:59', 'POS 74', 1, -1.000),
(132, 2, 2, '2024-02-08 13:52:21', 'POS 75', 1, -1.000),
(133, 17, 2, '2024-02-08 13:55:24', 'POS 76', 1, -1.000),
(134, 4, 2, '2024-02-10 05:03:23', 'RECV 113', 1, 6.000),
(135, 7, 2, '2024-02-10 05:03:23', 'RECV 115', 1, 2.000),
(136, 18, 2, '2024-02-10 05:03:23', 'RECV 116', 1, 1.000),
(137, 17, 2, '2024-02-10 05:03:23', 'RECV 117', 1, 1.000),
(138, 4, 2, '2024-02-10 13:19:53', 'POS 77', 1, -1.000),
(139, 4, 2, '2024-02-10 13:24:39', 'POS 78', 1, -1.000),
(140, 1, 2, '2024-02-10 13:31:28', 'POS 79', 1, -1.000),
(141, 4, 2, '2024-02-10 13:35:18', 'POS 80', 1, -1.000),
(142, 4, 2, '2024-02-10 14:48:47', 'POS 81', 1, -1.000),
(143, 3, 2, '2024-02-11 12:54:04', 'POS 82', 1, -1.000),
(144, 4, 2, '2024-02-12 04:49:37', 'RECV 127', 1, 10.000),
(145, 7, 2, '2024-02-13 13:00:23', 'POS 83', 1, -1.000),
(146, 1, 2, '2024-02-13 13:00:23', 'POS 83', 1, -1.000),
(147, 1, 2, '2024-02-13 13:00:23', 'POS 83', 1, -1.000),
(148, 1, 2, '2024-02-13 13:04:02', 'POS 84', 1, -1.000),
(149, 1, 2, '2024-02-14 13:03:59', 'POS 85', 1, -1.000),
(150, 16, 2, '2024-02-14 13:10:06', 'POS 86', 1, -1.000),
(151, 1, 2, '2024-02-14 13:14:32', 'POS 87', 1, -1.000),
(152, 4, 2, '2024-02-15 13:22:47', 'POS 88', 1, -1.000),
(153, 1, 2, '2024-02-15 13:26:21', 'POS 89', 1, -1.000),
(154, 1, 2, '2024-02-15 13:29:19', 'POS 90', 1, -1.000),
(155, 1, 2, '2024-02-15 13:33:13', 'POS 91', 1, -1.000),
(156, 4, 2, '2024-02-17 12:13:57', 'POS 92', 1, -1.000),
(157, 4, 2, '2024-02-18 13:51:27', 'POS 93', 1, -1.000),
(158, 2, 2, '2024-02-18 13:54:30', 'POS 94', 1, -1.000),
(159, 1, 2, '2024-02-19 04:54:55', 'RECV 133', 1, 6.000),
(160, 2, 2, '2024-02-19 04:54:55', 'RECV 134', 1, 1.000),
(161, 7, 2, '2024-02-19 04:54:55', 'RECV 137', 1, 3.000),
(162, 1, 2, '2024-02-19 13:12:04', 'POS 95', 1, -1.000),
(163, 1, 2, '2024-02-19 13:15:27', 'POS 96', 1, -1.000),
(164, 4, 2, '2024-02-19 13:19:43', 'POS 97', 1, -1.000),
(165, 4, 2, '2024-02-19 13:22:27', 'POS 98', 1, -1.000),
(166, 1, 2, '2024-02-19 13:25:38', 'POS 99', 1, -1.000),
(167, 16, 2, '2024-02-19 13:31:46', 'POS 100', 1, -1.000),
(168, 1, 2, '2024-02-19 13:41:36', 'POS 101', 1, -1.000),
(169, 18, 2, '2024-02-20 12:48:07', 'POS 102', 1, -1.000),
(170, 17, 2, '2024-02-20 12:48:07', 'POS 102', 1, -1.000),
(171, 1, 2, '2024-02-20 12:51:40', 'POS 103', 1, -1.000),
(172, 4, 2, '2024-02-20 12:55:38', 'POS 104', 1, -1.000),
(173, 24, 2, '2024-02-21 12:54:02', 'POS 105', 1, -1.000),
(174, 2, 2, '2024-02-22 13:04:14', 'POS 106', 1, -1.000),
(175, 4, 2, '2024-02-22 13:08:22', 'POS 107', 1, -1.000),
(176, 1, 2, '2024-02-23 02:39:47', 'RECV 142', 1, 5.000),
(177, 5, 2, '2024-02-23 02:39:47', 'RECV 143', 1, 1.000),
(178, 4, 2, '2024-02-23 02:39:47', 'RECV 147', 1, 4.000),
(179, 7, 2, '2024-02-24 12:22:39', 'POS 108', 1, -1.000),
(180, 1, 2, '2024-02-24 12:25:46', 'POS 109', 1, -1.000),
(181, 1, 2, '2024-02-25 13:03:24', 'POS 110', 1, -1.000),
(182, 13, 2, '2024-02-25 13:06:22', 'POS 111', 1, -1.000),
(183, 17, 2, '2024-02-26 04:49:23', 'RECV 149', 1, 2.000),
(184, 1, 2, '2024-02-26 04:49:23', 'RECV 157', 1, 8.000),
(185, 17, 2, '2024-02-26 13:16:40', 'POS 112', 1, -1.000),
(186, 4, 2, '2024-02-28 12:39:10', 'POS 113', 1, -1.000),
(187, 4, 2, '2024-02-28 12:39:10', 'POS 113', 1, -1.000),
(188, 19, 2, '2024-02-28 12:39:10', 'POS 113', 1, -1.000),
(189, 4, 2, '2024-02-28 12:39:10', 'POS 113', 1, -1.000),
(190, 5, 2, '2024-02-28 12:43:55', 'POS 114', 1, -1.000),
(191, 1, 2, '2024-02-28 12:56:39', 'POS 115', 1, -1.000),
(192, 1, 2, '2024-02-29 14:08:53', 'POS 116', 1, -1.000),
(193, 7, 2, '2024-03-04 13:51:12', 'POS 117', 1, -1.000),
(194, 7, 2, '2024-03-04 13:51:12', 'POS 117', 1, -1.000),
(195, 19, 2, '2024-03-05 05:30:40', 'POS 118', 1, -1.000),
(196, 1, 2, '2024-03-05 05:36:02', 'POS 119', 1, -1.000),
(197, 1, 2, '2024-03-05 05:36:02', 'POS 119', 1, -1.000),
(198, 1, 2, '2024-03-05 12:05:07', 'POS 120', 1, -1.000),
(199, 19, 2, '2024-03-05 12:08:07', 'POS 121', 1, -1.000),
(200, 1, 2, '2024-03-05 12:11:05', 'POS 122', 1, -1.000),
(201, 20, 2, '2024-03-05 12:14:02', 'POS 123', 1, -1.000),
(202, 4, 2, '2024-03-06 12:02:23', 'POS 124', 1, -1.000),
(203, 4, 2, '2024-03-06 12:05:10', 'POS 125', 1, -1.000),
(204, 1, 2, '2024-03-06 12:08:56', 'POS 126', 1, -1.000),
(205, 1, 2, '2024-03-06 12:11:32', 'POS 127', 1, -1.000),
(206, 1, 2, '2024-03-07 12:56:01', 'POS 128', 1, -1.000),
(207, 21, 2, '2024-03-07 13:00:31', 'POS 129', 1, -1.000),
(208, 1, 2, '2024-03-13 08:49:22', 'POS 130', 1, -1.000),
(209, 7, 2, '2024-03-13 09:10:13', 'POS 131', 1, -1.000),
(210, 7, 2, '2024-03-13 09:10:13', 'POS 131', 1, -1.000),
(211, 1, 2, '2024-03-17 05:10:48', 'RECV 160', 1, 3.000),
(212, 17, 2, '2024-03-17 05:10:48', 'RECV 162', 1, 2.000),
(213, 18, 2, '2024-03-17 05:10:48', 'RECV 163', 1, 1.000),
(214, 19, 2, '2024-03-17 05:10:48', 'RECV 165', 1, 2.000),
(215, 4, 2, '2024-03-17 05:28:49', 'RECV 170', 1, 5.000),
(216, 1, 2, '2024-03-17 05:28:49', 'RECV 173', 1, 3.000),
(217, 2, 2, '2024-03-17 05:28:49', 'RECV 174', 1, 1.000),
(218, 3, 2, '2024-03-17 05:28:49', 'RECV 175', 1, 1.000),
(219, 17, 2, '2024-03-17 05:33:40', 'POS 132', 1, -1.000),
(220, 7, 2, '2024-03-17 05:40:07', 'POS 133', 1, -1.000),
(221, 1, 2, '2024-03-19 10:28:42', 'POS 134', 1, -1.000),
(222, 1, 2, '2024-03-19 10:31:57', 'POS 135', 1, -1.000),
(223, 1, 2, '2024-03-21 13:30:20', 'POS 136', 1, -1.000),
(224, 1, 2, '2024-03-23 10:45:46', 'POS 137', 1, -1.000),
(225, 4, 2, '2024-03-23 10:50:49', 'POS 138', 1, -1.000),
(226, 1, 2, '2024-03-24 13:14:35', 'POS 139', 1, -1.000),
(227, 1, 2, '2024-03-25 04:44:24', 'RECV 180', 1, 5.000),
(228, 17, 2, '2024-03-25 04:44:24', 'RECV 184', 1, 4.000),
(229, 13, 2, '2024-03-25 04:44:24', 'RECV 185', 1, 1.000),
(230, 4, 2, '2024-03-25 12:52:33', 'POS 140', 1, -1.000),
(231, 1, 2, '2024-03-25 13:00:22', 'POS 141', 1, -1.000),
(232, 1, 2, '2024-03-26 13:15:33', 'POS 142', 1, -1.000),
(233, 1, 2, '2024-03-26 13:18:50', 'POS 143', 1, -1.000),
(234, 15, 2, '2024-03-26 13:22:24', 'POS 144', 1, -1.000),
(235, 17, 2, '2024-03-26 13:25:38', 'POS 145', 1, -1.000),
(236, 19, 2, '2024-03-27 13:20:37', 'POS 146', 1, -1.000),
(237, 1, 2, '2024-03-28 11:09:40', 'RECV 191', 1, 6.000),
(238, 2, 2, '2024-03-28 11:09:40', 'RECV 194', 1, 3.000),
(239, 19, 2, '2024-03-28 11:09:40', 'RECV 195', 1, 1.000),
(240, 3, 2, '2024-03-28 13:02:54', 'POS 147', 1, -1.000),
(241, 7, 2, '2024-03-28 13:11:16', 'POS 148', 1, -1.000),
(242, 4, 2, '2024-03-30 09:36:45', 'RECV 199', 1, 4.000),
(243, 1, 2, '2024-03-30 09:36:45', 'RECV 202', 1, 3.000),
(244, 17, 2, '2024-03-30 09:36:45', 'RECV 204', 1, 2.000),
(245, 20, 2, '2024-03-30 09:36:45', 'RECV 205', 1, 1.000),
(246, 1, 2, '2024-03-30 13:12:58', 'POS 149', 1, -1.000),
(247, 12, 2, '2024-03-30 13:16:32', 'POS 150', 1, -1.000),
(248, 11, 2, '2024-03-30 13:16:32', 'POS 150', 1, -1.000),
(249, 1, 2, '2024-03-30 13:19:17', 'POS 151', 1, -1.000),
(250, 17, 2, '2024-03-30 13:22:47', 'POS 152', 1, -1.000),
(251, 8, 2, '2024-03-30 13:28:26', 'POS 153', 1, -1.000),
(252, 4, 2, '2024-03-30 13:31:41', 'POS 154', 1, -1.000),
(253, 10, 2, '2024-04-01 10:36:17', 'RECV 206', 1, 1.000),
(254, 4, 2, '2024-04-01 10:36:17', 'RECV 213', 1, 7.000),
(255, 1, 2, '2024-04-01 10:36:17', 'RECV 221', 1, 8.000),
(256, 7, 2, '2024-04-01 10:36:17', 'RECV 225', 1, 4.000),
(257, 1, 2, '2024-04-01 15:26:26', 'POS 155', 1, -1.000),
(258, 1, 2, '2024-04-02 13:10:03', 'POS 156', 1, -1.000),
(259, 5, 2, '2024-04-02 13:12:41', 'POS 157', 1, -1.000),
(260, 4, 2, '2024-04-02 13:15:55', 'POS 158', 1, -1.000),
(261, 7, 2, '2024-04-03 13:21:29', 'POS 159', 1, -1.000),
(262, 1, 2, '2024-04-03 13:24:19', 'POS 160', 1, -1.000),
(263, 15, 2, '2024-04-03 13:34:14', 'POS 161', 1, -1.000),
(264, 1, 2, '2024-04-03 13:36:52', 'POS 162', 1, -1.000),
(265, 14, 2, '2024-04-04 14:27:10', 'POS 163', 1, -1.000),
(266, 4, 2, '2024-04-04 14:32:09', 'POS 164', 1, -1.000),
(267, 7, 2, '2024-04-04 14:34:40', 'POS 165', 1, -1.000),
(268, 1, 2, '2024-04-04 14:37:10', 'POS 166', 1, -1.000),
(269, 4, 2, '2024-04-04 14:40:19', 'POS 167', 1, -1.000),
(270, 1, 2, '2024-04-05 09:14:12', 'POS 168', 1, -1.000),
(271, 1, 2, '2024-04-06 05:22:57', 'POS 169', 1, -1.000),
(272, 1, 2, '2024-04-07 05:28:52', 'RECV 229', 1, 4.000),
(273, 7, 2, '2024-04-07 05:28:52', 'RECV 231', 1, 2.000),
(274, 17, 2, '2024-04-07 05:28:52', 'RECV 233', 1, 2.000),
(275, 19, 2, '2024-04-07 05:28:52', 'RECV 235', 1, 2.000),
(276, 4, 2, '2024-04-07 13:04:21', 'POS 170', 1, -1.000),
(277, 5, 2, '2024-04-07 13:08:33', 'POS 171', 1, -1.000),
(278, 1, 2, '2024-04-07 13:11:43', 'POS 172', 1, -1.000),
(279, 1, 2, '2024-04-07 13:14:31', 'POS 173', 1, -1.000),
(280, 17, 2, '2024-04-07 13:43:33', 'POS 174', 1, -1.000),
(281, 7, 2, '2024-04-07 14:50:10', 'POS 175', 1, -1.000),
(282, 17, 2, '2024-04-08 11:48:10', 'POS 176', 1, -1.000),
(283, 17, 2, '2024-04-08 11:48:10', 'POS 176', 1, -1.000),
(284, 17, 2, '2024-04-08 11:48:10', 'POS 176', 1, -1.000),
(285, 17, 2, '2024-04-08 11:51:35', 'POS 177', 1, -1.000),
(286, 5, 2, '2024-04-08 11:56:49', 'POS 178', 1, -1.000),
(287, 1, 2, '2024-04-08 12:00:50', 'POS 179', 1, -1.000),
(288, 1, 2, '2024-04-08 12:03:39', 'POS 180', 1, -1.000),
(289, 2, 2, '2024-04-08 13:32:20', 'POS 181', 1, -1.000),
(290, 2, 2, '2024-04-08 13:32:20', 'POS 181', 1, -1.000),
(291, 4, 2, '2024-04-09 04:50:50', 'POS 182', 1, -1.000),
(292, 4, 2, '2024-04-09 13:09:24', 'POS 183', 1, -1.000),
(293, 17, 2, '2024-04-09 13:12:10', 'POS 184', 1, -1.000),
(294, 1, 2, '2024-04-09 13:15:36', 'POS 185', 1, -1.000),
(295, 1, 2, '2024-04-09 13:18:09', 'POS 186', 1, -1.000),
(296, 17, 2, '2024-04-09 13:20:46', 'POS 187', 1, -1.000),
(297, 4, 2, '2024-04-09 13:24:03', 'POS 188', 1, -1.000),
(298, 1, 2, '2024-04-09 13:26:34', 'POS 189', 1, -1.000),
(299, 1, 2, '2024-04-10 06:13:32', 'RECV 238', 1, 3.000),
(300, 2, 2, '2024-04-10 06:13:32', 'RECV 239', 1, 1.000),
(301, 3, 2, '2024-04-10 06:13:32', 'RECV 240', 1, 1.000),
(302, 17, 2, '2024-04-10 06:13:32', 'RECV 245', 1, 5.000),
(303, 4, 2, '2024-04-13 12:28:12', 'POS 190', 1, -1.000),
(304, 4, 2, '2024-04-13 12:30:40', 'POS 191', 1, -1.000),
(305, 20, 2, '2024-04-13 12:33:48', 'POS 192', 1, -1.000),
(306, 2, 2, '2024-04-13 12:35:52', 'POS 193', 1, -1.000),
(307, 4, 2, '2024-04-13 12:37:45', 'POS 194', 1, -1.000),
(308, 1, 2, '2024-04-13 12:40:14', 'POS 195', 1, -1.000),
(309, 1, 2, '2024-04-13 12:42:30', 'POS 196', 1, -1.000),
(310, 4, 2, '2024-04-13 12:45:00', 'POS 197', 1, -1.000),
(311, 1, 2, '2024-04-13 12:47:13', 'POS 198', 1, -1.000),
(312, 1, 2, '2024-04-14 04:40:32', 'POS 199', 1, -1.000),
(313, 4, 2, '2024-04-14 04:43:38', 'POS 200', 1, -1.000),
(314, 21, 2, '2024-04-14 04:45:43', 'POS 201', 1, -1.000),
(315, 1, 2, '2024-04-14 11:51:15', 'POS 202', 1, -1.000),
(316, 7, 2, '2024-04-14 11:54:21', 'POS 203', 1, -1.000),
(317, 4, 2, '2024-04-14 11:57:24', 'POS 204', 1, -1.000),
(318, 1, 2, '2024-04-14 12:01:50', 'POS 205', 1, -1.000),
(319, 1, 2, '2024-04-15 12:37:00', 'POS 206', 1, -1.000),
(320, 1, 2, '2024-04-15 12:40:09', 'POS 207', 1, -1.000),
(321, 1, 2, '2024-04-15 12:42:50', 'POS 208', 1, -1.000),
(322, 17, 2, '2024-04-15 12:45:16', 'POS 209', 1, -1.000),
(323, 4, 2, '2024-04-15 12:47:30', 'POS 210', 1, -1.000),
(324, 3, 2, '2024-04-16 13:25:12', 'POS 211', 1, -1.000),
(325, 2, 2, '2024-04-16 13:37:25', 'POS 212', 1, -1.000),
(326, 1, 2, '2024-04-25 06:01:19', 'RECV 250', 1, 5.000),
(327, 2, 2, '2024-04-25 06:01:19', 'RECV 251', 1, 1.000),
(328, 15, 2, '2024-04-25 06:01:19', 'RECV 255', 1, 4.000),
(329, 4, 2, '2024-04-28 05:42:50', 'RECV 259', 1, 4.000),
(330, 1, 2, '2024-04-28 05:42:50', 'RECV 265', 1, 6.000),
(331, 17, 2, '2024-04-28 05:42:50', 'RECV 275', 1, 10.000),
(332, 2, 2, '2024-04-28 14:11:46', 'POS 213', 1, -1.000),
(333, 4, 2, '2024-04-30 15:04:49', 'RECV 278', 1, 3.000),
(334, 1, 2, '2024-05-02 07:43:15', 'RECV 282', 1, 4.000),
(335, 2, 2, '2024-05-02 07:43:15', 'RECV 283', 1, 1.000),
(336, 17, 2, '2024-05-02 07:43:15', 'RECV 288', 1, 5.000),
(337, 1, 2, '2024-05-02 13:09:59', 'POS 214', 1, -1.000),
(338, 19, 2, '2024-05-02 13:13:21', 'POS 215', 1, -1.000);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items`
--

CREATE TABLE `ospos_items` (
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `supplier_id` int DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `reorder_level` decimal(15,3) NOT NULL DEFAULT '0.000',
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT '1.000',
  `item_id` int NOT NULL,
  `pic_filename` varchar(255) DEFAULT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `stock_type` tinyint(1) NOT NULL DEFAULT '0',
  `item_type` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `bike_level` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `manufacture` varchar(255) NOT NULL,
  `cylinder` varchar(255) NOT NULL,
  `fuel` varchar(255) NOT NULL,
  `horse_power` varchar(255) NOT NULL,
  `rpm` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `wheel_base` varchar(255) NOT NULL,
  `unladen_weight` varchar(255) NOT NULL,
  `mx_laden` varchar(255) NOT NULL,
  `size_tyre` varchar(255) NOT NULL,
  `tr_price` varchar(255) DEFAULT NULL,
  `custom2` varchar(255) DEFAULT NULL,
  `custom3` varchar(255) DEFAULT NULL,
  `custom4` varchar(255) DEFAULT NULL,
  `custom5` varchar(255) DEFAULT NULL,
  `custom6` varchar(255) DEFAULT NULL,
  `custom7` varchar(255) DEFAULT NULL,
  `custom8` varchar(255) DEFAULT NULL,
  `custom9` varchar(255) DEFAULT NULL,
  `custom10` varchar(255) DEFAULT NULL,
  `tax_category_id` int DEFAULT NULL,
  `qty_per_pack` decimal(15,3) NOT NULL DEFAULT '1.000',
  `pack_name` varchar(8) DEFAULT 'Each',
  `low_sell_item_id` int DEFAULT '0',
  `hsn_code` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_items`
--

INSERT INTO `ospos_items` (`name`, `category`, `type`, `supplier_id`, `item_number`, `description`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_filename`, `allow_alt_description`, `is_serialized`, `stock_type`, `item_type`, `deleted`, `bike_level`, `color`, `manufacture`, `cylinder`, `fuel`, `horse_power`, `rpm`, `capacity`, `wheel_base`, `unladen_weight`, `mx_laden`, `size_tyre`, `tr_price`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`, `tax_category_id`, `qty_per_pack`, `pack_name`, `low_sell_item_id`, `hsn_code`) VALUES
('Bajaj Discover  125CC Disc Black', 'Discover_125_Disc', 'Bike', 4, NULL, '', 154175.00, 160500.00, 1.000, 1.000, 1, NULL, 1, 1, 0, 0, 0, 'Discover_125_Disc', 'Black', '2023', 'Single', 'Petrol', '10.9', '8000', '125 cc', '1305', '122', '262', 'F-2.75-17 / R-100/90-17', '825', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 1, ''),
('Bajaj Discover  125CC Disc Blue', 'Discover_125_Disc', 'Bike', 4, NULL, '', 154175.00, 160500.00, 1.000, 1.000, 2, NULL, 1, 1, 0, 0, 0, 'Discover_125_Disc', 'Blue', '2023', 'Single', 'Petrol', '11', '7500', '125 cc', '1305', '122 ', '262', '2.75-17(f)3.00-17(r)', '825', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 2, ''),
('Bajaj Discover  125CC Disc Red', 'Discover_125_Disc', 'Bike', 4, NULL, '', 154175.00, 160500.00, 1.000, 1.000, 3, NULL, 1, 1, 0, 0, 0, 'Discover_125_Disc', 'Red', '2023', 'Single', 'Petrol', '11', '7500', '125 cc', '1305', '122', '262', '2.75-17(f)3.00-17(r)', '825', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 3, ''),
('Bajaj Discover 115CC Disc  Black', 'Discover_115_Disc', 'Bike', 4, NULL, '', 143250.00, 149000.00, 1.000, 1.000, 4, NULL, 1, 1, 0, 0, 0, 'Discover 115 CC Disc', 'Black', '2023', 'Single', 'Petrol', '8.6', '7000', '115 cc', '7000', '119', '259', '100/80-17(f)100/80-17(r)', '750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 4, ''),
('Bajaj Discover 115CC Disc  Blue', 'Discover_115_Disc', 'Bike', 4, NULL, '', 143250.00, 149000.00, 1.000, 1.000, 5, NULL, 1, 1, 0, 0, 0, 'Discover 115 CC DISC', 'Blue', '2023', 'Single', 'Petrol', '8.6', '7000', '115 cc', '1305', '119', '259', '100/80-17(f)100/80-17(r)', '750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 5, ''),
('Bajaj Discover 115CC Disc  Red', 'Discover_115_Disc', 'Bike', 4, NULL, '', 143250.00, 149000.00, 1.000, 1.000, 6, NULL, 1, 1, 0, 0, 0, 'Discover_115_Disc', 'Red', '2023', 'Single', 'Petrol', '8.6', '7000', '115 cc', '1305', '119 ', '259', '100/80-17(f)100/80-17(r)', '750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 6, ''),
('Bajaj Platina 102 ES  Black  Silver Gray', 'Platina_102_ES', 'Bike', 4, NULL, '', 122250.00, 128000.00, 1.000, 1.000, 7, NULL, 1, 1, 0, 0, 0, 'Platina_102 ES', 'Black  Silver Gray', '2023', 'Single', 'Petrol', '8.2', '7000', '102 cc', '1255', '113', '253', '2.75*17(f)3.00*17(r)', '750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 7, ''),
('Bajaj Platina 102 ES   Blue', 'Platina_102_ES', 'Bike', 4, NULL, '', 122250.00, 128000.00, 1.000, 1.000, 8, NULL, 1, 1, 0, 0, 0, 'Platina_102 ES', 'Blue', '2023', 'Single', 'Petrol', '8.6', '7000', '102 cc', '1255', '113', '253', '2.75*17(f)3.00*17(r)', '750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 8, ''),
('Bajaj Platina 102 ES   Red', 'Platina_102_ES', 'Bike', 4, NULL, '', 122250.00, 149000.00, 1.000, 1.000, 9, NULL, 1, 1, 0, 0, 0, 'Platina_102 ES', 'Red', '2023', 'Single', 'Petrol', '8.6', '7000', '102 cc', '1255', '113', '253', '2.75*17(f) 3.00*17(r)', '750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 9, ''),
('Bajaj CT 100 ES  Black/Red', 'Bajaj_CT_100_ES', 'Bike', 4, NULL, '', 114250.00, 120000.00, 1.000, 1.000, 10, NULL, 1, 1, 0, 0, 0, 'Bajaj CT 100 ES', 'Black/Red', '2023', 'Single', 'Petrol', '7.7', '7000', '102 cc', '1235', '111', '251', '2.75*17(F)3.00*17(r)', '750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 10, ''),
('Bajaj CT 100 ES BLUE', 'Bajaj_CT_100_ES', 'Bike', 4, NULL, '', 114250.00, 120000.00, 1.000, 1.000, 11, NULL, 1, 1, 0, 0, 0, 'Bajaj CT 100 ES', 'Blue', '2023', 'Single', 'Petrol', '7.7', '7000', '102 cc', '1235', '111 ', '251', '2.75*17(f)3.00*17(r)', '750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 11, ''),
('Bajaj CT 100 ES Red', 'Bajaj_CT_100_ES', 'Bike', 4, NULL, '', 114250.00, 120000.00, 1.000, 1.000, 12, NULL, 1, 1, 0, 0, 0, 'Bajaj CT 100 ES', 'Red', '2023', 'Single', 'Petrol', '7.7', '7000', '102 ', '1235', '111', '251', '2.75*17(F)3.00*17(r)', '750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 12, ''),
('Pulsar N-250 FI DC ABS', 'Pulsar_N_250', 'Bike', 4, NULL, '', 317999.00, 339999.00, 1.000, 1.000, 13, NULL, 1, 1, 0, 0, 0, 'Pulsar N-250', 'Black', '2023', 'Single', 'Petrol', '24', '8750', '250', '1351', '162', '262', ' 100/80-17(f)130/70 -17(r)', '1350', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 13, ''),
('Pulsar N-160 DC FI ABS', 'Pulsar_N_160', 'Bike', 4, NULL, '', 247900.00, 269900.00, 1.000, 1.000, 14, NULL, 1, 1, 0, 0, 0, 'Pulsar N-160', 'Black', '2023', 'Single', 'Petrol', '15', '8750', '160', '1358', '154', '254', ' 100/80-17(f)130/70 -17(r)', '1350', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 14, ''),
('Pulsar 150 Twin Disc Abs Black/Red', 'Pulsar_150_TD_ABS', 'Bike', 4, NULL, '', 216950.00, 225000.00, 1.000, 1.000, 15, NULL, 1, 1, 0, 0, 0, 'Pulsar 150 T/d abs', 'Black/Red', '2023', 'Single', 'Petrol', '14', '8000', '150 ', '1345', '144', '284', '90/90/-17(f)120/80-17(r)', '1050', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 15, ''),
('Pulsar 150 Twin Disc Abs Black/Blue', 'Pulsar_150_TD_ABS', 'Bike', 4, NULL, '', 216950.00, 225000.00, 1.000, 1.000, 16, NULL, 1, 1, 0, 0, 0, 'Pulsar 150 T/d abs', 'Black/Blue', '2023', 'Single', 'Petrol', '14', '8000', '150', '1345', '144', '284', '90/90-17(f)120/80-17(r)', '1050', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 16, ''),
('Pulsar 150 SD ABS Black/Red', 'Pulsar_150_SD_ABS', 'Bike', 4, NULL, '', 194775.00, 202750.00, 1.000, 1.000, 17, NULL, 1, 1, 0, 0, 0, 'Pulsar 150 SD ABS', 'Black/Red', '2023', 'Single', 'Petrol', '14', '8000', '150', '1320', '146', '286', '80/100-17(f)100/90-17(r)', '975', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 17, ''),
('Pulsar 150 SD  ABS Black/Blue', 'Pulsar_150_SD_ABS', 'Bike', 4, NULL, '', 194775.00, 202750.00, 1.000, 1.000, 18, NULL, 1, 1, 0, 0, 0, 'Pulsar 150 SD ABS', 'Black/Blue', '2023', 'Single', 'Petrol', '14', '8000', '150', '1320', '146', '286', '80/100-17(f)100/90-17(r)', '975', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 18, ''),
('Pulsar 150 Single Disc Black/Red', 'Pulsar_150_Single_Disc', 'Bike', 4, NULL, '', 184775.00, 192750.00, 1.000, 1.000, 19, NULL, 1, 1, 0, 0, 0, 'Pulsar 150 Single Disc', 'Black/Red', '2023', 'Single', 'Petrol', '14', '8000', '150', '1320', '144', '284', '80/100-17(f)100/90-17(r)', '975', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 19, ''),
('Pulsar 150 Single Disc Black/Blue', 'Pulsar_150_Single_Disc', 'Bike', 4, NULL, '', 184750.00, 192750.00, 1.000, 1.000, 20, NULL, 1, 1, 0, 0, 0, 'Pulsar 150 Single Disc', 'Blacl/Blue', '2023', 'Single', 'Petrol', '14', '8000', '150', '1320', '144', '284', '80/100-17(f)100/90-17(r)', '975', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 20, ''),
('Bajaj Pulsar T/D 150 Back/Red', 'Pulsar_T/D', 'Bike', 4, NULL, '', 208950.00, 217000.00, 1.000, 1.000, 21, NULL, 1, 1, 0, 0, 0, 'Pulsar_TD', 'Black/Red', '2024', 'Single', 'Petrol', '15', '8500', '150', '1320', '144', '284', '100/90-17 F   100/80-17 R', '1050', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 21, ''),
('Bajaj Platina -110 H  Gear Black/Blue', 'Platina_H_Gear', 'Bike', NULL, NULL, '', 134450.00, 140000.00, 1.000, 1.000, 22, NULL, 1, 1, 0, 0, 0, 'Platina_H_Gear', 'Black/Blue', '2024', '115 cc', 'Petrol', '9 ps', '7000', '115 ', '1255', '118', '258', 'f(80/100-17)r(80/100-17)', '750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 22, ''),
('Bajaj Platina-110 H  Gear Black/Red', 'Platina_H_Gear', 'Bike', 4, NULL, '', 134450.00, 140000.00, 1.000, 1.000, 23, NULL, 1, 1, 0, 0, 0, 'Platina_H_Gear', 'Black/Red', '2024', 'Single', 'Petrol', '9 PS', '7000', '115', '1255', '118 ', '258', 'F(80/100-17)R(80/100-17)', '750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 23, ''),
('Bajaj Discover 125Disc  Green', 'Discover_125_Disc', 'Bike', 4, NULL, '', 153175.00, 160500.00, 1.000, 1.000, 24, NULL, 1, 1, 0, 0, 0, 'Discover_125_Disc', 'Green', '2023', 'Single', 'Petrol', '11', '7500', '125 ', '1305', '122', '262', '2.75-17(F)3.00-17(R)', '825', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.000, 'Each', 24, '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items_taxes`
--

CREATE TABLE `ospos_items_taxes` (
  `item_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kits`
--

CREATE TABLE `ospos_item_kits` (
  `item_kit_id` int NOT NULL,
  `item_kit_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `item_id` int NOT NULL DEFAULT '0',
  `kit_discount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `kit_discount_type` tinyint(1) NOT NULL DEFAULT '0',
  `price_option` tinyint(1) NOT NULL DEFAULT '0',
  `print_option` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kit_items`
--

CREATE TABLE `ospos_item_kit_items` (
  `item_kit_id` int NOT NULL,
  `item_id` int NOT NULL,
  `quantity` decimal(15,3) NOT NULL,
  `kit_sequence` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_quantities`
--

CREATE TABLE `ospos_item_quantities` (
  `item_id` int NOT NULL,
  `location_id` int NOT NULL,
  `quantity` decimal(15,3) NOT NULL DEFAULT '0.000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_item_quantities`
--

INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
(1, 1, 21.000),
(2, 1, 2.000),
(3, 1, 0.000),
(4, 1, 9.000),
(5, 1, 1.000),
(6, 1, 1.000),
(7, 1, 0.000),
(8, 1, 0.000),
(9, 1, 0.000),
(10, 1, 1.000),
(11, 1, -1.000),
(12, 1, 0.000),
(13, 1, 1.000),
(14, 1, 1.000),
(15, 1, 8.000),
(16, 1, 0.000),
(17, 1, 20.000),
(18, 1, 1.000),
(19, 1, 2.000),
(20, 1, 0.000),
(21, 1, 0.000),
(22, 1, 0.000),
(23, 1, 2.000),
(24, 1, 0.000);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_migrations`
--

CREATE TABLE `ospos_migrations` (
  `id` bigint UNSIGNED NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ospos_migrations`
--

INSERT INTO `ospos_migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '20170501150000', 'App\\Database\\Migrations\\Migration_Upgrade_To_3_1_1', 'development', 'App', 1755411715, 1),
(2, '20170502221506', 'App\\Database\\Migrations\\Migration_Sales_Tax_Data', 'development', 'App', 1755411715, 1),
(3, '20180225100000', 'App\\Database\\Migrations\\Migration_Upgrade_To_3_2_0', 'development', 'App', 1755411715, 1),
(4, '20180501100000', 'App\\Database\\Migrations\\Migration_Upgrade_To_3_2_1', 'development', 'App', 1755411715, 1),
(5, '20181015100000', 'App\\Database\\Migrations\\Migration_Attributes', 'development', 'App', 1755411715, 1),
(6, '20190111270000', 'App\\Database\\Migrations\\Migration_Upgrade_To_3_3_0', 'development', 'App', 1755411715, 1),
(7, '20190129212600', 'App\\Database\\Migrations\\Migration_IndiaGST', 'development', 'App', 1755411715, 1),
(8, '20190213210000', 'App\\Database\\Migrations\\Migration_IndiaGST1', 'development', 'App', 1755411715, 1),
(9, '20190220210000', 'App\\Database\\Migrations\\Migration_IndiaGST2', 'development', 'App', 1755411715, 1),
(10, '20190301124900', 'App\\Database\\Migrations\\Migration_decimal_attribute_type', 'development', 'App', 1755411715, 1),
(11, '20190317102600', 'App\\Database\\Migrations\\Migration_add_iso_4217', 'development', 'App', 1755411715, 1),
(12, '20190427100000', 'App\\Database\\Migrations\\Migration_PaymentTracking', 'development', 'App', 1755411715, 1),
(13, '20190502100000', 'App\\Database\\Migrations\\Migration_RefundTracking', 'development', 'App', 1755411715, 1),
(14, '20190612100000', 'App\\Database\\Migrations\\Migration_DBFix', 'development', 'App', 1755411715, 1),
(15, '20190615100000', 'App\\Database\\Migrations\\Migration_fix_attribute_datetime', 'development', 'App', 1755411715, 1),
(16, '20190712150200', 'App\\Database\\Migrations\\Migration_fix_empty_reports', 'development', 'App', 1755411716, 1),
(17, '20191008100000', 'App\\Database\\Migrations\\Migration_receipttaxindicator', 'development', 'App', 1755411716, 1),
(18, '20191231100000', 'App\\Database\\Migrations\\Migration_PaymentDateFix', 'development', 'App', 1755411716, 1),
(19, '20200125100000', 'App\\Database\\Migrations\\Migration_SalesChangePrice', 'development', 'App', 1755411716, 1),
(20, '20200202000000', 'App\\Database\\Migrations\\Migration_TaxAmount', 'development', 'App', 1755411716, 1),
(21, '20200215100000', 'App\\Database\\Migrations\\Migration_taxgroupconstraint', 'development', 'App', 1755411716, 1),
(22, '20200508000000', 'App\\Database\\Migrations\\Migration_image_upload_defaults', 'development', 'App', 1755411716, 1),
(23, '20200819000000', 'App\\Database\\Migrations\\Migration_modify_attr_links_constraint', 'development', 'App', 1755411716, 1),
(24, '20201108100000', 'App\\Database\\Migrations\\Migration_cashrounding', 'development', 'App', 1755411716, 1),
(25, '20201110000000', 'App\\Database\\Migrations\\Migration_add_item_kit_number', 'development', 'App', 1755411716, 1),
(26, '20210103000000', 'App\\Database\\Migrations\\Migration_modify_session_datatype', 'development', 'App', 1755411716, 1),
(27, '20210422000000', 'App\\Database\\Migrations\\Migration_database_optimizations', 'development', 'App', 1755411716, 1),
(28, '20210422000001', 'App\\Database\\Migrations\\Migration_remove_duplicate_links', 'development', 'App', 1755411716, 1),
(29, '20210714140000', 'App\\Database\\Migrations\\Migration_move_expenses_categories', 'development', 'App', 1755411716, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_modules`
--

CREATE TABLE `ospos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int NOT NULL,
  `module_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_modules`
--

INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`) VALUES
('module_attributes', 'module_attributes_desc', 107, 'attributes'),
('module_cashups', 'module_cashups_desc', 110, 'cashups'),
('module_config', 'module_config_desc', 900, 'config'),
('module_customers', 'module_customers_desc', 10, 'customers'),
('module_employees', 'module_employees_desc', 80, 'employees'),
('module_expenses', 'module_expenses_desc', 108, 'expenses'),
('module_expenses_categories', 'module_expenses_categories_desc', 109, 'expenses_categories'),
('module_giftcards', 'module_giftcards_desc', 90, 'giftcards'),
('module_home', 'module_home_desc', 1, 'home'),
('module_items', 'module_items_desc', 20, 'items'),
('module_item_kits', 'module_item_kits_desc', 30, 'item_kits'),
('module_messages', 'module_messages_desc', 98, 'messages'),
('module_office', 'module_office_desc', 999, 'office'),
('module_receivings', 'module_receivings_desc', 60, 'receivings'),
('module_reports', 'module_reports_desc', 50, 'reports'),
('module_sales', 'module_sales_desc', 70, 'sales'),
('module_suppliers', 'module_suppliers_desc', 40, 'suppliers'),
('module_taxes', 'module_taxes_desc', 105, 'taxes');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_people`
--

CREATE TABLE `ospos_people` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `fh_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `nid` varchar(20) NOT NULL,
  `gender` int DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `alternative_phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `person_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_people`
--

INSERT INTO `ospos_people` (`first_name`, `last_name`, `fh_name`, `mother_name`, `date_of_birth`, `nid`, `gender`, `phone_number`, `alternative_phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
('Parvez', 'Ahmed', '', '', '0000-00-00 00:00:00', '', NULL, '01612233369', '', 'me.parvez@live.com', 'Address 1', '', '', '', '', '', '', 1),
('Md', 'Jakir', '', '', '0000-00-00 00:00:00', '', NULL, '01964368721', '', '', '', '', '', '', '', '', '', 2),
('Niloy', 'Mia', '', '', '0000-00-00 00:00:00', '', NULL, '01304035457', '', '', '', '', '', '', '', '', '', 3),
('Uttara', 'Motors', '', '', '0000-00-00 00:00:00', '', NULL, '', '', '', '', '', '', '', '', '', '', 4),
('Burhan', 'Mojnun', '', '', '0000-00-00 00:00:00', '', NULL, '01711182755', '', '', '', '', '', '', '', '', '', 5),
('Mamunur ', 'Rashid', 'Idrish Ali', '', '1989-12-20 00:00:00', '', 1, '01721289538', '', '', 'Montola', 'Lengura', 'Montola', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 6),
('Azharul Islam', 'Nworin', 'Saidur Rahman', '', '0000-00-00 00:00:00', '353890196', 1, '01725888373', '', '', '', 'Kendua', 'Hossainnagar', 'Bekhorhati', 'Kendua', 'Netrakona', '', 7),
('Monir Khan ', 'Pathan', 'Kazol Khan Pathan', '', '0000-00-00 00:00:00', '', 1, '01714362047', '', '', '', 'Atpara', 'Loxmipur', 'Dewgaon ', 'Atpara', 'Netrakona', '', 8),
('Md Asadujjaman', 'Forej', 'Late Mortuj Ali', '', '0000-00-00 00:00:00', '7210411509206', 1, '017211861755', '', '', '', 'Baniyajan', 'Baniyajan', 'Atpara', 'Atpara', 'Netrakona', '', 9),
('Md Habibur Rahman', 'Sojol', 'Md Alim Uddin', '', '0000-00-00 00:00:00', '', 1, '01305445583', '', '', 'Chondigor', 'Durgapur', 'Chondigor', 'Chondigar', 'Durgapur', 'Netrakona', '', 10),
('Azizul ', 'Islam', 'Kamruzzaman', 'Rukeya Begum', '2000-11-13 00:00:00', '4210765006', 1, '01753353678', '', '', 'Uttar Jogodispur', 'Mohonganj', 'Uttar Jogodispur', 'Uttar Jogodispur', 'Mohonganj', 'Netrakona', '', 11),
('Dustha Shasta Kendra', '(Dsk)', '', '', '0000-00-00 00:00:00', '', 3, '01928486480', '', '', '', '', 'Shibganj Branch', 'Durgapur', 'Durgapur', 'Netrakona 2420', '', 12),
('Md Ali', 'Ajgor', 'Md Abdul Hamid', '', '1992-08-15 00:00:00', '1992721471000185', 1, '01952626072', '', '', '', '', 'Nazirpur', 'Nazirpur', 'Kalmakanda', 'Netrakona 2420', '', 13),
('Safayet', 'Hosan', 'Md Khurshed Khan', '', '1998-08-10 00:00:00', '7805159535', 1, '01775037880', '', '', '', '', 'Raydum Ruhi', 'Kwe Amtula', 'Sadar', 'Netrakona 2400', '', 14),
(' Md. Dulal', 'Miah', 'Sirajul Islam', '', '1982-07-25 00:00:00', '2818033223', 1, '01787397598', '', '', '', '', 'Ramnathpur', 'Kalmakanda', 'Kalmakanda', 'Netrokona', '', 15),
('Amir', 'Siraji', 'Abdul Satter', '', '0000-00-00 00:00:00', '7215663752157', 1, '01719599510', '', '', 'Magan', 'Madan', 'Magan', 'Ranihala', 'Madan', 'Netrakona', '', 16),
('Md Abdul', 'Jalil', 'Late Nurul Islam', '', '0000-00-00 00:00:00', '6906482135', 1, '01946220553', '', '', '', 'Kalmakanda', 'Nagnipara', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 17),
('Jubayer ', 'Khondokar', 'Md Abdul Khalek', '', '0000-00-00 00:00:00', '6460262741', 1, '01718264570', '', '', 'Kalmakanda', 'Kalmakanda', 'Choitanagar', 'Lengura', 'Kalmakanda', 'Netrakona', '', 18),
('Noruttom Chandra ', 'Sarker', 'Zotindra Chandra Sarker', '', '1990-02-26 00:00:00', '7305592334', 1, '01911457977', '', '', 'Madan', 'Madan', 'Borichara', 'Borati', 'Madan', 'Netrakona', '', 19),
('Md Abdul', 'Musabbir', 'Abdus Samad', '', '0000-00-00 00:00:00', '1026495877', 1, '01780574333', '', '', 'Sadar', 'Rajur Bazar', 'Rajur Bazar', 'Sadar', 'Sadar', 'Netrakona', '', 20),
('Md Nazimul ', 'Haque', 'Md Abul Kalam', '', '1995-10-24 00:00:00', '7753594576', 1, '01767125797', '', '', '494', 'Barhatta', 'Bausi', '2440', 'Barhatta', 'Netrakona', '', 21),
('Md Ashik ', 'Fakir', 'Md Monir Uddin Fakir', '', '0000-00-00 00:00:00', '7210435463677', 1, '01789090958', '', '', 'Atpara', 'Dewgao', 'Loxmipur', 'Dewgao', 'Atpara', 'Netrakona', '', 22),
('Chandra Shekor ', 'Talukder', 'Borun Tqalukder', '', '2024-01-11 00:00:00', '50534506948', 1, '01797517789', '', '', '', '', 'Tatiur', 'Adompur', 'Khilijuri', 'Netrakona', '', 23),
('Moharof', 'Hossain', 'Md Bozlu Mia', '', '0000-00-00 00:00:00', '2404796639', 1, '01771948687', '', '', '', '', 'Pailati', 'Noyapara', 'Mohonganj', 'Netrakonaa', '', 24),
('Al Amin', 'Khan', 'Md Abdul Zobbar Khan', '', '0000-00-00 00:00:00', '1990901323000049', 1, '01714771181', '', '', '', '', 'Mohonganj', 'Mohonganj', 'Mohonganj', 'Netrakona', '', 25),
('Saddam', 'Hossain', 'Late Siraj Mia', '', '0000-00-00 00:00:00', '199390132380002772', 1, '016255708852', '', '', '', '', 'Mohonganj', 'Mohonganj', 'Mohonganj', 'Netrakona', '', 26),
('Md Shajan', 'Kabir', 'Md Robi Mia ', '', '0000-00-00 00:00:00', '2403991884', 1, '01613275894', '', '', '', '', 'Mouje Bali', 'Shehar Banu', 'Netrakona', 'Netrakona', '', 27),
('Md Gulam ', 'Mustofa', '', '', '0000-00-00 00:00:00', '7759432516', 1, '01717608892', '', '', '', '', 'Poschim Madanpur', 'Madanpur', 'Netrakona', 'Netrakona', '', 28),
('Raihan', 'Ulla', 'Hafiz Ulla', '', '0000-00-00 00:00:00', '4659868980', 1, '01717861742', '', '', '', '', 'Muktipur', 'Netrakona', 'Netrakona', 'Netrakona', '', 29),
('Md ', 'Masum', 'Md Tara Mia', '', '0000-00-00 00:00:00', '19897216363547971', 1, '01798252614', '', '', 'Pailati', 'Mohonganj', 'Pailati', 'Noyapara', 'Mohonganj', 'Netrakona', '', 30),
('Alimul ', 'Hasan', 'Md Islam Uddin', '', '0000-00-00 00:00:00', '', 1, '01406348441', '', '', 'Terupa', 'Kalmakanda', 'Choita', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 31),
('Md Akibur ', 'Rahman', 'Abdur Rahman', '', '0000-00-00 00:00:00', '', 1, '01954125823', '', '', 'Poschim Bazar', 'Kalmakanda', 'Kalmakanda', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 32),
('Md Rupsan ', 'Talukder', 'Md Hannan Talukder', '', '0000-00-00 00:00:00', '', 1, '01826328529', '', '', 'Barhatta', 'Barhatta', 'Demura', 'Demura', 'Barhatta', 'Netrakona', '', 33),
('Md Hanif ', 'Mia', 'Md Abdul Kadir', '', '1982-12-07 00:00:00', '19827214059444915', 1, '01788984718', '', '', 'Choita', 'Kalmakanda', 'Choitanagar', 'Lengura', 'Kalmakanda', 'Netrakona', '', 34),
('Momen ', 'Khan', 'Ahamed Ali Khan', '', '0000-00-00 00:00:00', '4974216367', 1, '01910841967', '', '', 'Bagsatra', 'Kalmakanda', 'Bagsatra', 'Bagsatra', 'Kalmakanda', 'Netrakona', '', 35),
('Md Sha ', 'Alam', 'Md Abdul Halim', '', '0000-00-00 00:00:00', '7807839266', 1, '01613644870', '', '', 'Jamati', 'Ishorganj', 'Maliati', 'Ishorganj', 'Mymenshingh', 'Mymenshingh', '', 36),
('Kobad', 'Mia', 'Motiuar Rahman', '', '0000-00-00 00:00:00', '', 1, '01933743191', '', '', 'Kalmakanda', 'Bishara', 'Bishara', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 37),
('Khaja ', 'Mia', 'Md Alom Mia', '', '0000-00-00 00:00:00', '', 1, '01709197239', '', '', '', 'Kolingka', 'Kolungka', 'Mohonganj', 'Mohonganj', 'Netrakona', '', 38),
('Tapash Kumar Vadury', 'Vadury', 'Bimolendu Vadury', '', '0000-00-00 00:00:00', '', 1, '01771554577', '', '', 'Nagergati', 'Durgapur', 'Nagergati', 'Kumudganj', 'Durgapur', 'Netrakona', '', 39),
('Md Habibur ', 'Rahman', 'Md Nastu Mia', '', '0000-00-00 00:00:00', '', 1, '01304253188', '', '', 'Sadar', 'Sadar', 'Uluati', '2400', 'Sadar', 'Netrakona', '', 40),
('Nurul Amin', 'Ridoy', 'Abdul Mozid', '', '0000-00-00 00:00:00', '', 1, '01716298631', '', '', 'Sadar', 'Sadar', 'Koera', 'Sadar', 'Sadar', 'Netrakona', '', 41),
('Md ', 'Sulayman', 'Md Arshad', '', '0000-00-00 00:00:00', '', 1, '01943892674', '', '', 'Gondaber', 'Durgapur', 'Gondaber', '2420', 'Durgapur', 'Netrakona', '', 42),
('Md  Jamir ', 'Hossain', 'Shajan Mia', '', '0000-00-00 00:00:00', '', 1, '01631646020', '', '', 'Haskuri Maddom ', 'Madan', 'Haskuri Maddom ', 'Jahangirpur', 'Madan', 'Netrakona', '', 43),
('Shafiq ', 'Mia', 'Late Rohim Mullah', '', '0000-00-00 00:00:00', '', 1, '01740372541', '', '', 'Jahangirpur', 'Madan', 'Jahangirpur', 'Jahangirpur', 'Madan', 'Netrakona', '', 44),
('Mosharof ', 'Hossen', 'Saiful Islam', '', '0000-00-00 00:00:00', '7810534847', 1, '0188545197', '', '', '', '', 'Nariapara', 'Sadar', 'Netrakona', 'Netrakona', '', 45),
('Buro ', 'Bangladesh', '', '', '0000-00-00 00:00:00', '', 3, '01744667311', '', '', '', '', 'Kalmakanda', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 46),
('Md Milon ', 'Mia', 'Abdul Gofur', '', '0000-00-00 00:00:00', '', 1, '01815340788', '', '', 'Bottula', 'Purbadhala', 'Purbadhala', '2412', 'Purbadhala', 'Netrakona', '', 47),
('Khurshed ', 'Alam', 'Nazim Uddin', '', '0000-00-00 00:00:00', '', 1, '01716126480', '', '', 'Uttor Ranipur', 'Uttor Ranipur', 'Saruyapara', 'Saruyapara', 'Dubayra', 'Mymenshingh', '', 48),
('Md Sukon ', 'Mia', 'Abdur Rashid', '', '0000-00-00 00:00:00', '', 1, '01737656571', '', '', 'Atkapara', 'Sadar', 'Atkapara', 'Loxmipur', 'Sadar', 'Netrakona', '', 49),
('Md Jewel', 'Rana', 'Md: Salam Mia', '', '0000-00-00 00:00:00', '', 1, '01722376392', '', '', 'Gangger Bera', 'Gangger Bera', 'Gangger Bera', 'Jaria ', 'Durgapur', 'Netrakona', '', 50),
('Samad ', 'Mia', 'Abdul  Kalek', '', '0000-00-00 00:00:00', '', 1, '019286670349', '', '', 'Gouripur', 'Lengura', 'Lengura', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 51),
('Mazharul ', 'Islam', 'Sabul Mia', '', '0000-00-00 00:00:00', '', 1, '01779912116', '', '', '', 'Kalmakanda', 'Khagajura', 'Bordol', 'Kalmakanda', 'Netrakona', '', 52),
('Md Mazharul Haque', 'Palash', 'Md Abdul Gofur', '', '0000-00-00 00:00:00', '', 1, '01712473707', '', '', 'Sadar', 'Sadar', 'Sadar', '2400', 'Sadar', 'Netrakona', '', 53),
('Md Shohel', 'Rana', 'Md Abdul Motin', '', '0000-00-00 00:00:00', '8660474704', 1, '01961754952', '', '', '', '', 'Ksoskhosia', 'Hironpur', 'Purbadhala', 'Netrakona', '', 54),
('Md Khairul', 'Islam', 'Md Abul Kalam', '', '0000-00-00 00:00:00', '', 1, '01617087514', '', '', '', '', 'Makril', 'Durgapur', 'Durgapur', 'Netrakona', '', 55),
('Md Hasibur', 'Rahaman', 'Late Rumali', '', '0000-00-00 00:00:00', '', 1, '01403761143', '', '', '', '', 'Paboi', 'Paboi', 'Purbadhala', 'Netrakona', '', 56),
('Mohammad Jakir', 'Hossen', 'Md Joynal Abdein Khan', '', '0000-00-00 00:00:00', '6861362371', 1, '01721575174', '', '', '', '', 'Muktarpara', 'Durgapur', 'Durgapur', 'Netrakona', '', 57),
('Md Saidul ', 'Islam', 'Md Ala Uddin', '', '0000-00-00 00:00:00', '', 1, ' 01711512363', '', '', 'Sadar', 'Sadar', 'Sadar', '2400', 'Sadar', 'Netrakona', '', 58),
('Md Rubel', 'Mia', 'Late Abdus Samad', '', '0000-00-00 00:00:00', '1992721403500049', 1, '01911814228', '', '', '', '', 'Chandail', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 59),
('Dustha Shasta Kendra', 'Dsk', 'N/A', '', '0000-00-00 00:00:00', '', 3, '01853373839', '', '', '', '', 'Kalmakanda Branch', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 60),
('Md Abdul', 'Awal', 'Md Alkas Ukkin', '', '0000-00-00 00:00:00', '19899013290449389', 1, '01721652060', '', '', '', '', 'Kalmakanda', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 61),
('Md Minar', 'Mia', 'Late Shohid Mia', '', '0000-00-00 00:00:00', '', 1, '01700801527', '', '', '', '', 'Fullbari', 'Lengura', 'Kalmakanda', 'Netrakona', '', 62),
('M/S  ', 'Shashi Mohon Roy', 'N/A', '', '0000-00-00 00:00:00', '', 3, '01711195203', '', '', '', '', 'Boro Bazar', 'Sadar Netrakona', 'Sadar Netrakona', 'Netrakona', '', 63),
('Md Rasel ', 'Mia', 'Abdul Salam', '', '0000-00-00 00:00:00', '', 1, '01718949704', '', '', '', '', 'Gobindhopur', 'Barhatta', 'Barhatta', 'Netrakona', '', 64),
('Dm Saidul', 'Islam', 'Late Mofiz Uddin', '', '0000-00-00 00:00:00', '', 1, '01718264175', '', '', '', '', 'Kalapani', 'Lengura', 'Kalmakanda', 'Netrakona', '', 65),
('Khairul ', 'Kobir', 'Mofiz Uddin', '', '0000-00-00 00:00:00', '', 1, '01608839351', '', '', 'Anondopur', 'Anondopur', 'Anondopur', 'Anondopur', 'Kalmakanda', 'Netrakona', '', 66),
('Ropuk Hasan ', 'Apu', 'Md Mofiz Uddin', '', '0000-00-00 00:00:00', '01999720818000162', 1, '01782844121', '', '', '', '', 'Rouha', 'Barhatta', 'Barhatta', 'Netrakona', '', 67),
('Mehedi', 'Hasan', 'Md Abdul Barek', '', '0000-00-00 00:00:00', '7358392889', 1, '01939118850', '', '', '', '', 'Ranigaw', 'Borkhopon', 'Kalmakanda', 'Netrakona', '', 68),
('Md Kamrul', 'Islam', 'Md Nurul Islam', '', '0000-00-00 00:00:00', '', 1, '01726206536', '', '', '', '', 'Kalenga', 'Biddabollob', 'Kendua', 'Netrakona', '', 69),
('Apu Chandra ', ' Sutradhar', 'Zotindra Sutradhar', '', '0000-00-00 00:00:00', '1958000083', 1, '01974362993', '', '', '', '', 'Sholpo Mongolsiddo', 'Mongolsiddo', 'Atpara', 'Netrakona', '', 70),
('Md Nazrul', 'Islam', 'Mazharul Islam', '', '0000-00-00 00:00:00', '19937214781000145', 1, '01737307037', '', '', '', '', 'Boirati', 'Boirati', 'Kendua', 'Netrakona', '', 71),
('Robioul', '.', 'Abdul Monnaf', '', '0000-00-00 00:00:00', '5569118911', 1, '01604843757', '', '', '', '', 'Kalmakanda', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 72),
('Sumon', '.', 'Md Abdul Khalem', '', '0000-00-00 00:00:00', '9154066746', 1, '01950328242', '', '', '', '', 'Koros', 'Durgapur', 'Durgapur', 'Netrakona', '', 73),
('Md Abduds', 'Salam', 'Late Abdul Kashem', '', '0000-00-00 00:00:00', '7364295050', 1, '01956035320', '', '', '', '', 'Ramnagar', 'Kumudganj', 'Durgapur', 'Netrakona', '', 74),
('Md Helim', 'Mia', 'Md Bozlu  Mia', '', '0000-00-00 00:00:00', '8705201203', 1, '01746621534', '', '', '', '', 'Donundho', 'Pachkata Bazar', 'Kalmakanda', 'Netrakona', '', 75),
('Md Mosarraf Hosain', 'Alam', 'Md Abdus Salam', '', '0000-00-00 00:00:00', '', 1, '01916129511', '', '', '', 'Tekuria', 'Mwodam Bazar', 'Mwodam Bazar', 'Purbadhala', 'Netrakona', '', 76),
('Imran ', 'Hasan', 'Kurshad Mia', '', '0000-00-00 00:00:00', '2397976230', 1, '01718270948', '', '', '', '', 'Dhwli', 'Kodom Dhwl', 'Barhatta', 'Netrakona', '', 77),
('Rasel ', 'Mia', 'Jonab Ali', '', '0000-00-00 00:00:00', '2856355884', 1, '01706416831', '', '', '', '', 'Choitanagar', 'Lengura ', 'Kolmakanda', 'Netrakona', '', 78),
('Juel', 'Sarker', 'Dhon Kumar Sarker', '', '0000-00-00 00:00:00', '', 1, '01607500898', '', '', '', '', 'Mollikpur', 'Mohonganj', 'Mohonganj', 'Netrakona', '', 79),
('Tufazzal', 'Hossain', 'Abdul Hasim', '', '0000-00-00 00:00:00', '', 1, '01911693306', '', '', '', '', 'Shonai', 'Mohonganj', 'Mohonganj', 'Netrakona', '', 80),
('Md Amirul', 'Islam', 'Md Hasen Mia', '', '0000-00-00 00:00:00', '2362882504', 1, '01772454451', '', '', '', '', 'Rohimpur', 'Bardal', 'Kalmakanda', 'Netrakona', '', 81),
('Md Royal', 'Mia', 'Md Shohid Mia', '', '0000-00-00 00:00:00', '5557989802', 1, '01611706827', '', '', '', '', 'Boro Gawa', 'Demura', 'Barhatta', 'Netrakona', '', 82),
('Oby Hajong', 'Hajong', 'Rupkumar Hajong', '', '0000-00-00 00:00:00', '', 1, '01776591803', '', '', '', '', 'Gupal Bari', 'Lengura', 'Kalmakanda', 'Netrakona', '', 83),
('Biddut', 'Talukder', 'Nirmol Talukder', '', '0000-00-00 00:00:00', '6469049750', 1, '01794225268', '', '', '', '', 'Roail Kadirpur', 'Kha;Iajuri', 'Kha;Iajuri', 'Netrakona', '', 84),
('Saddam Hossain', 'Sani', 'Late Babul Mia', '', '0000-00-00 00:00:00', '', 1, '01620321069', '', '', '', '', 'Mouja Bali', 'Shaerbanu', 'Netrakona', 'Netrakona', '', 85),
('Md Nurjjaman', 'Khan', 'Md Abdul Mojid Khan', '', '0000-00-00 00:00:00', '4629170566', 1, '01813006868', '', '', '', '', 'Kirishnopur', 'Sadar Netrakona', 'Netrakona', 'Netrakona', '', 86),
('Anwar', 'Hosain', 'Hafiz Uddin', '', '0000-00-00 00:00:00', '1940471665', 1, '01711452177', '', '', '', '', 'Tere Bazar', 'Durgapur', 'Durgapur', 'Netrakona', '', 87),
('Mozahidul', 'Islam', 'Asir Uddin', '', '0000-00-00 00:00:00', '2425281967', 1, '01824515004', '', '', '', '', 'Choita ', 'Choita', 'Kalmakanda', 'Netrakona', '', 88),
('Md', 'Rukunnazaman', 'Md Abdul Barek', '', '0000-00-00 00:00:00', '4180870489', 1, '01715103475', '', '', '', '', 'Shatnuridanda', 'Saherbanu', 'Netrakona', 'Netrakona', '', 89),
('Md Sakis', 'Mia', 'Md Abul Hosen', '', '0000-00-00 00:00:00', '6025252401', 1, '01911254392', '', '', '', '', 'Dugia', 'Dakkin Biusura', 'Netrakona', 'Netrakona', '', 90),
('Md', 'Safayet', 'Md Mojnu Mia', '', '0000-00-00 00:00:00', '5568308820', 1, '01906535633', '', '', '', '', 'Boro Katuri', 'Bakoljura', 'Sadar Netrakona', 'Netrakona', '', 91),
('Nurul', 'Amin', 'Abdul Mannan', '', '0000-00-00 00:00:00', '86614770784', 1, '01741337522', '', '', '', '', 'Balayngua', 'Netrakona', 'Netrakona', 'Netrakona', '', 92),
('Md Jahangir', 'Alam', 'Md Amir Chan', '', '0000-00-00 00:00:00', '', 1, '01830979455', '', '', '', '', 'Ulokanda', 'Najirpur', 'Kalmakanda', 'Netrakona', '', 93),
('Joynal', 'Abedin', 'Abdul Hekim', '', '0000-00-00 00:00:00', '5066066464', 1, '01732777688', '', '', '', '', 'Suknakuri', 'Jariya Janjail', 'Durfapur', 'Netrakona', '', 94),
('Md Ain ', 'Uddin', 'Late Abdul Hamid', '', '0000-00-00 00:00:00', '9013290452253', 1, '01781373857', '', '', '', '', 'Ramnatpur', 'Choita', 'Kalmakanda', 'Netrakona', '', 95),
('Biswajit', 'Roy', 'Ramandra Nath Roy', '', '0000-00-00 00:00:00', '', 1, '01721572165', '', '', 'Shatpai', 'Sadar', 'Sadar', 'Sadar', 'Sadar', 'Netrakona', '', 96),
('Shakil', 'Ahmed', 'Md Nurul Islam', '', '0000-00-00 00:00:00', '7302831206', 1, '01726668512', '', '', '', '', 'Soyal', 'Seram', 'Barhatta', 'Netrakona', '', 97),
('Md Riaz', 'Mia', 'Khairul Islam', '', '0000-00-00 00:00:00', '9160543022', 1, '01715715053', '', '', '', '', 'Gourakanda ', 'Magan', 'Mohonganj', 'Netrakona', '', 98),
('Kajal', 'Mia', 'Basir Uddin', '', '0000-00-00 00:00:00', '8253891546', 1, '01939191357', '', '', '', '', 'Dhoundho', 'Panchkata Bazar', 'Kalmakanda', 'Netrakona', '', 99),
('Md Shohel ', 'Fakir', 'Late Siraj Fakir', '', '0000-00-00 00:00:00', '', 1, '0779719058', '', '', 'Asdati', 'Asdati', 'Asdati', 'Sadar', 'Sadar', 'Netrakona', '', 100),
('Md Kamal ', 'Pasha', 'Md Shahab Uddin Bhuiyan', '', '0000-00-00 00:00:00', '7214059451454', 1, '01763889633', '', '', '', '', 'Taranagar ', 'Lengura', 'Kalmakanda', 'Netrakona', '', 101),
('Sohel', 'Mia', 'Md Dulal Mia', '', '0000-00-00 00:00:00', '42121662673', 1, '01618314757', '', '', '', '', 'Bade Amtoil', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 102),
('Saron', 'Mia', 'Md Sayed Miah', '', '0000-00-00 00:00:00', '6001962486', 1, '01778534560', '', '', '', '', 'Datyia', 'Sunamgonj', 'Sunamgonj', 'Sunamgonj', '', 103),
('Md Munna', 'Mia', 'Md Helal Uddin', '', '0000-00-00 00:00:00', '7365570261', 1, '01775138643', '', '', '', '', 'Borokaturi', 'Bakoljura', 'Netrakona', 'Netrakona', '', 104),
('Musaraf ', 'Hossen', 'Bachu Mia', '', '0000-00-00 00:00:00', '6891747955', 1, '01700871641', '', '', '', '', 'Binrikandi', 'Madan', 'Madan', 'Netrakona', '', 105),
('Md Shamim', 'Mia', 'Md Bashrul Alam', '', '0000-00-00 00:00:00', '6449070744', 1, '01313564898', '', '', '', '', 'Kurpar', 'Netrakona', 'Netrakona', 'Netrakona', '', 106),
('Md Khelon', 'Mia', 'Late Sipoth Ali', '', '0000-00-00 00:00:00', '9013290449338', 1, '01743157311', '', '', '', '', 'Kalmakanda', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 107),
('Atiqur Rahman', 'Khan', '', '', '0000-00-00 00:00:00', '', 1, '01935528714', '', '', '', '', 'Purbadhola', 'Purbadhola', 'Purbadhola', 'Netrakona', '', 108),
('Ruhul', 'Amin', 'Abdul Hakim', '', '0000-00-00 00:00:00', '3753887185', 1, '01793686713', '', '', '', '', 'Lengura ', 'Lengura ', 'Kalmakanda', 'Netrkona', '', 109),
('Hassan ', 'Kobir', 'Md Wahab Mia', '', '0000-00-00 00:00:00', '8712240889', 1, '01925032867', '', '', '', '', 'Gonokpunji', 'Dupapara', 'Kalmakanda', 'Netrakona', '', 110),
('Md Hasan', 'Mia', 'Md Abdul Hakim', '', '0000-00-00 00:00:00', '19907214774004013', 1, '01937734641', '', '', '', '', 'Pachar', 'Gogbazar', 'Kendua', 'Netrakona', '', 111),
('Md Shamim ', 'Mia', 'Ushuf Ali', '', '0000-00-00 00:00:00', '7776928082', 1, '01975185409', '', '', '', '', 'Agarpara', 'Durgapur', 'Durgapur', 'Netrakona', '', 112),
('Shamim', 'Mia', 'Md Habibur Rahman', '', '0000-00-00 00:00:00', '8256850069', 1, '01322139353', '', '', '', '', 'Kalikapur', 'Kalikapur', 'Durgapur', 'Netrakona', '', 113),
('Tajul Islam', 'Opul', 'Md Alal Mia', '', '0000-00-00 00:00:00', '9167050344', 1, '01327318651', '', '', '', '', 'Khabulia', 'Dolpa Rampur', 'Netrakona', 'Netrakona', '', 114),
('Md', 'Hridoy', 'Dudu Mia', '', '0000-00-00 00:00:00', '', NULL, '01910212357', '', '', '', '', 'Budi', 'Purbadhala', 'Purbadhala', 'Netrakona', '', 115),
('Md Jahedul Islam ', 'Talukder', 'Md Riaz Uddin Talukder', '', '0000-00-00 00:00:00', '1503926865', 1, '01710190701', '', '', '', '', 'Kuliati', 'Makan', 'Madan', 'Netrakona', '', 116),
('Md Munzur', 'Hosen', 'Md Belal Hosen', '', '0000-00-00 00:00:00', '8698648402', 1, '01726090762', '', '', '', '', 'Kalmakanda', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 117),
('Md Nuralom ', 'Shick', 'Late Tazzat Ali', '', '0000-00-00 00:00:00', '9167350298', 1, '01953593088', '', '', '', '', 'Shotrosi', 'Shotrosi', 'Netrakona', 'Netrakona', '', 118),
('Md Ripon ', 'Mia', 'Md Muslim Uddin', '', '0000-00-00 00:00:00', '', 1, '01777130144', '', '', '', '', 'Bakshtra', 'Borkhapon', 'Kalmakanda', 'Netrakona', '', 119),
('Md Saidul', 'Islam', 'Md Sabed Ali', '', '0000-00-00 00:00:00', '9575228854', 1, '01728784811', '', '', '', '', 'Alampur', 'Purbadhala', 'Purbadhala', 'Netrakona', '', 120),
('Md Rasal', 'Mia', 'Late Abdul Mojid', '', '0000-00-00 00:00:00', '7357934962', 1, '01757203127', '', '', '', '', 'Alokdiya Purbopara', 'C', 'Purbadhala', 'Netrakona', '', 121),
('Md Ariful', 'Islam', 'Md Tajul Islam', '', '0000-00-00 00:00:00', '8264146922', 1, '01616829917', '', '', '', '', 'Mow', 'Mow', 'Durgapur', 'Netrakona', '', 122),
('Md ', 'Nayem', '', '', '0000-00-00 00:00:00', '6465151949', 1, '01777348318', '', '', '', '', 'Satbarikanda', 'Netrakona', 'Netrakona', 'Netrakona', '', 123),
('Md Umar', 'Faruk', 'Md Imam Ali', '', '0000-00-00 00:00:00', '3772279125', 1, '01794368926', '', '', '', '', 'Banaiyapara', 'Durgapur', 'Durgapur', 'Netrakona', '', 124),
('Shimul', ' Mrong', 'Anondo Mrong', '', '0000-00-00 00:00:00', '01314564873', 1, '01314564873', '', '', '', '', 'Pachgaw', 'Choita', 'Kalmakanda', 'Netrakona', '', 125),
('Md Taijul', 'Islam', 'Md Ainul Haque', '', '0000-00-00 00:00:00', '7818338324', 1, '01600053951', '', '', '', '', 'Zigatula', 'Lengura', 'Kalmakanda', 'Netrakona', '', 126),
('Jahangir', 'Alom', 'Ansar Ali', '', '0000-00-00 00:00:00', '8704470833', 1, '01922139282', '', '', '', '', 'Bashankura', 'Hat Govibdopur', 'Kalmakanda', 'Netrakona', '', 127),
('Md Taijul', 'Islam', 'Md Ainul Haque', '', '0000-00-00 00:00:00', '7818338324', 1, '01600053952', '', '', '', '', 'Zigatula', 'Lengura', 'Kalmakanda', 'Netrakona', '', 128),
(' Johirul ', 'Islam', 'Md Mojibur Rahaman Talukder', '', '0000-00-00 00:00:00', '3763131266', 1, '01611842152', '', '', '', '', 'Jariya', 'Jariya', 'Purbadhala', 'Netrakona', '', 129),
('Isan', 'Ali', 'Abu Hanifa', '', '0000-00-00 00:00:00', '19897214035798375', 1, '019*25411643', '', '', '', '', 'Patimoji', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 130),
('Delowar ', 'Hossen', 'Uzzal Mia', '', '0000-00-00 00:00:00', '', 1, '01613180745', '', '', '', '', 'Noapara', 'Hatkhola', 'Netrakona', 'Netrakona', '', 131),
('Md', 'Abdullah', 'Late Asaduzzaman', '', '0000-00-00 00:00:00', '4205042478', 1, '01840737448', '', '', '', '', 'Barhatta', 'Barhatta', 'Barhatta', 'Netrakona', '', 132),
('Md Shah', 'Alom', 'Md Sukkor Ali', '', '0000-00-00 00:00:00', '2714023490651', 1, '01770222115', '', '', '', '', 'Harigati ', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 133),
('Md Jahangir', 'Alom', 'Md Abdul Monnaf', '', '0000-00-00 00:00:00', '8707950583', 1, '01732230211', '', '', '', '', 'Kunapara', 'Nariyapara', 'Netrakona', 'Netrakona', '', 134),
('Nokul Chandra', 'das', 'Bolai das', '', '0000-00-00 00:00:00', '5554419779', 1, '01905330793', '', '', '', '', 'Montula', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 135),
('Shomesh', 'Marak', 'Uttom  Sangma', '', '0000-00-00 00:00:00', '19877214047000063', 1, '01787048743', '', '', '', '', 'Kachugora', 'Gobindopur', 'Kalmakanda', 'Netrakona', '', 136),
('Egnoshus', 'Richil', 'Digneat Azim', '', '0000-00-00 00:00:00', '3303905578', 1, '01750437489', '', '', '', '', 'Pachgow', 'Choita', 'Kalmakanda', 'Netrakona', '', 137),
('Md Shamim', 'Mia', 'Md Nueul  Islam', '', '0000-00-00 00:00:00', '8267337937', 1, '01618532026', '', '', '', '', 'Choita ', 'Choita', 'Kalmakanda', 'Netrakona', '', 138),
('Dipok Ronjon ', 'Debnath', 'Kritish  Chandra Debnath', '', '0000-00-00 00:00:00', '19787210411507484', 1, '0171873189', '', '', '', '', 'Baniajan', 'Atpara', 'Atpara', 'Netrakona', '', 139),
('Md Khirul', 'Islam', 'Bahadur Mondol', '', '0000-00-00 00:00:00', '6406202900', 1, '01727977588', '', '', '', '', 'Kalmakanda', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 140),
('Md Helal ', 'Mia', 'la Te Nobbes Ali', '', '0000-00-00 00:00:00', '19799013290452165', 1, '01798477676', '', '', '', '', 'Kartikpur', 'Kartikpur', 'Dhormopasha', 'Sunamganj', '', 141),
('Md Rohis', 'Dewan', 'Md Azgor Ali', '', '0000-00-00 00:00:00', '19797214047000017', 1, '01741710882', '', '', '', '', 'Dewannari', 'Gobindopur', 'Kalmakanda', 'Netrakona', '', 142),
('M/S Shashi Mohon ', ' Ron', '', '', '0000-00-00 00:00:00', '', 3, '01711195204', '', '', '', '', 'Borobazar', 'Netrakona', 'Netrakona', 'Netrakona', '', 143),
('Md Masud', 'Mia', 'Md Ramjan Ali', '', '0000-00-00 00:00:00', '1954013569', 1, '01928347018', '', '', '', '', 'Tafrangor', 'Lengura', 'Kalmakanda', 'Netrakona', '', 144),
('M/S Shashi Mohon', 'Roy', '', '', '0000-00-00 00:00:00', '', 3, '01717338486', '', '', '', '', 'Boro Bazar', 'Netrakona', 'Netrakona', 'Netrakona', '', 145),
('Md Riferh', 'Mia', 'Let  Janu Mia', '', '0000-00-00 00:00:00', '19937210483000138', 1, '01780468557', '', '', '', '', 'Tengoa', 'Ramseddho', 'Atpara', 'Netrakona', '', 146),
('Hosaen', 'Ahamed', 'Tufazzal', '', '0000-00-00 00:00:00', '6006420829', 1, '01759947005', '', '', '', '', 'Zigatola', 'Lengura', 'Kalmakanda', '', '', 147),
('Barjon', 'Daowa', 'Albin Marak', '', '0000-00-00 00:00:00', '19737211851910220', 1, '01959664681', '', '', '', '', 'Bobanipur', 'Ranikhong', 'Durgapur', 'Netrakona', '', 148),
('Syed Atikur', 'Rahaman', 'Syed Hazi Motiur Rahman', '', '0000-00-00 00:00:00', '1973727408145811', 1, '01713560405', '', '', '', '', 'Sai Nari Road', 'Netrakona', 'Netrakona', 'Netrakona', '', 149),
('Md', 'Kaydobsd', 'Late Monir Uddin', '', '0000-00-00 00:00:00', '19879112713126975', 1, '01711278440', '', '', '', '', 'Moheshwar Khila', 'Chirigatia', 'Atpara', 'Netrakona', '', 150),
('Md', 'Rubel', 'Md Sohid Mia', '', '0000-00-00 00:00:00', '9164132160', 1, '01305377826', '', '', '', '', 'Kakrakanda', 'Birishiri', 'Durgapur', 'Netrakona', '', 151),
('Abdus', 'Samad', 'Abul Kalam', '', '0000-00-00 00:00:00', '6910993440', 1, '017374651043', '', '', '', '', 'Hat Govindopur', 'Hat Govindopur', 'Kalmakanda', 'Netrakona', '', 152),
('Md Ragiqul', 'Islam', 'Abul Hosen', '', '0000-00-00 00:00:00', '4607659986', 1, '01766813980', '', '', '', '', 'Mohishati  Bazar', 'Dakkin Besiura', 'Netrakona', 'Netrakona', '', 153),
('Md Nazmul Husan', 'Badon', 'Md Babul Mia', '', '0000-00-00 00:00:00', '8272068415', 1, '01762068415', '', '', '', '', 'Daupur', 'Hazigong', 'Barhatta', 'Netrakona', '', 154),
('Md', 'Jamal', 'Abdur Rohim', '', '0000-00-00 00:00:00', '', 1, '01780749434', '', '', '', '', 'Paolashati', 'Dakkin Busura', 'Sdar', 'Netrakona', '', 155),
('Md Suhag', 'Rana', 'Md Muhobbot Ali', '', '0000-00-00 00:00:00', '', 1, '01912404158', '', '', '', '', 'Birampur', 'Mohonganj', 'Mohonganj', 'Netrakona', '', 156),
('Amdadul ', 'Haque', 'Ibrahm', '', '0000-00-00 00:00:00', '3303974788', 1, '01925032673', '', '', '', '', 'Kocuyadohor', 'Mwo ', 'Durgapur', 'Netrakona', '', 157),
('Najim', 'Uddin', 'Md Hasim Uddin', '', '0000-00-00 00:00:00', '19917214047000138', 1, '01919522585', '', '', '', '', 'Boitakhali', 'Hatgonbindopur', 'Kalmakanda', 'Netrakona', '', 158),
('Md Rubel', 'Mia', 'Md Suruj Mia', '', '0000-00-00 00:00:00', '1943564904', 1, '01935524539', '', '', '', '', 'Khaunoi', 'Hatgobindopur', 'Kalmakanda', 'Netrakona', '', 159),
('Md Mahbubul ', 'Alom', 'Akkas', '', '0000-00-00 00:00:00', '2858355361', 1, '01726552511', '', '', '', '', 'Tenga', 'Poranparua', 'Kalmakanda', 'Netrakona', '', 160),
('Md Billal', 'Mia', 'Nazim Uddin', '', '0000-00-00 00:00:00', '6430952777', 1, '01929471550', '', '', '', '', 'Karli', 'Challisha', 'Netrakona', 'Netrakona', '', 161),
('Md Ariqul Islam', 'Rony', 'Md Saidul Islam', '', '0000-00-00 00:00:00', '19947214071000079', 1, '01753744440', '', '', '', '', 'Nolchapra', 'Balusora', 'Kalmakanda', 'Netrakona', '', 162),
('Tarikul', 'Islam', 'Thaher  Uddin', '', '0000-00-00 00:00:00', '8205979963', 1, '01936490491', '', '', '', '', 'Chtuya', 'Nilambrkila', 'Kendua', 'Netrakona', '', 163),
('Rakib', 'Shekh', 'Shekh Rastik Mia', '', '0000-00-00 00:00:00', '9156456601', 1, '01719625971', '', '', '', '', 'Mwutol', 'Poranparua', 'Kalmakanda', 'Netrakona', '', 164),
('Md Junaed', 'Islam', 'Md Abdur Rashid', '', '0000-00-00 00:00:00', '8264144687', 1, '01825524528', '', '', '', '', 'Charkuria', 'Mwo', 'Durgapur', 'Netrakona', '', 165),
('Polash', 'Ahamed', 'Md Dulal Kha', '', '0000-00-00 00:00:00', '7361599728', 1, '01715309275', '', '', '', '', 'Mohonganj', 'Mohonganj', 'Mohonganj', 'Netrakona', '', 166),
('Md Samal', 'Mia', 'Md Joynal Abedin', '', '0000-00-00 00:00:00', '19837210411563987', 1, '01920519029', '', '', '', '', 'Choiasa', 'Paharpur', 'Atpara', 'Netrakona', '', 167),
('Rohis', 'Mia', 'Abdul Monnan Tan', '', '0000-00-00 00:00:00', '19777213867413717', 1, '01734625652', '', '', '', '', 'Boluampur', 'Korachapur', 'Khaliajuri', 'Netrakona', '', 168),
('Md Raioj', 'Uddin', 'Abdul Korim', '', '0000-00-00 00:00:00', '19827214059449347', 1, '01729671780', '', '', '', '', 'Shibpur', 'Lengura', 'Kalmakanda', 'Netrakona', '', 169),
('Ainul', 'Haque', 'Zabu Mia', '', '0000-00-00 00:00:00', '6429010009', 1, '01576599992', '', '', '', '', 'Krishonopur', 'Bangla', 'Netrakona', 'Netrakona', '', 170),
('Md', 'Rafik', 'Roich Uddin', '', '0000-00-00 00:00:00', '19777214059450740', 1, '01753064531', '', '', '', '', 'Gouripur', 'Lengura', 'Kalmakanda', 'Netrakona', '', 171),
('Md Sabuj', 'Mia', 'Md Samsuddin', '', '0000-00-00 00:00:00', '5959318162', 1, '01990461654', '', '', '', '', 'Gouripur', 'Baluchora', 'Kalmakanda', 'Netrakona', '', 172),
('Yeamin ', 'Ansari', 'Abdul Malek', '', '0000-00-00 00:00:00', '3704964661', 1, '01601196770', '', '', '', '', 'Nwogaw', 'Fulpur', 'Durgapur', 'Netrakona', '', 173),
('Md Rieazul', 'Karim', 'Abkul Wahab', '', '0000-00-00 00:00:00', '3285177964', 1, '01745114563', '', '', '', '', 'Pajuhati', 'Mwoha', 'Gouripur', 'Mymenshingh', '', 174),
('Md Amirul', 'Islam', 'Md Nurul Islam', '', '0000-00-00 00:00:00', '6013718884', 1, '01770182489', '', '', '', '', 'Kobi Chondopur', 'Kocandara', 'Kendua', 'Netrakona', '', 175),
('Md Shamim', 'Ahamed', 'Md Kitab Ali', '', '0000-00-00 00:00:00', '8233012114', 1, '01763736747', '', '', '', '', 'Dharia', 'Netrakona', 'Netrakona', 'Netrakona', '', 176),
('Md Yrasin', 'Mia', 'Md Sha Alam', '', '0000-00-00 00:00:00', '', 1, '01953264756', '', '', '', '', 'Lokkipur', 'Kharnoi', 'Kalmakanda', 'Netrakona', '', 177),
('Dushtha Shasthya Kendra', 'Dsk', '', '', '0000-00-00 00:00:00', '', 3, '01631316722', '', '', '', '', 'Sadar Branch', 'Sadar ', 'Netrakona', 'Netrakona', '', 178),
('Jonayed', 'Mia', 'Thoyob Ali', '', '0000-00-00 00:00:00', '2424704431', 1, '01759644605', '', '', '', '', 'Latir Kanda', 'Purakandulia', 'Purbadhala', 'Netrakona', '', 179),
('Md Abdul Haque', 'Haque', 'Late Sirajul Islam', '', '0000-00-00 00:00:00', '19709013238472728', 1, '01793310601', '', '', '', '', 'Mohonganj', 'Mohonganj', 'Mohonganj', 'Netrakona', '', 180),
('Aktaruzzaman', 'Roni', 'Sadekul Islam', '', '0000-00-00 00:00:00', '4662139130', 1, '01942186213', '', '', '', '', 'Rupchandrapur', 'Shormusia', 'Atpara', 'Netrakona', '', 181),
('Md Rasel', 'Mia', 'Md Abdur Subhan', '', '0000-00-00 00:00:00', '9162884564', 1, '01778844267', '', '', '', '', 'Shaudpara', 'Jaknajabda', 'Jaknajabda', 'Netrakona', '', 182),
('Md Sahanur', 'Islam', 'Abdul Ahad Talukder', '', '0000-00-00 00:00:00', '8253924826', 1, '01775359515', '', '', '', '', 'Kuliati Maijpara ', 'Madan', 'Madan', 'Netrakona', '', 183),
('Md Ardhad', 'Mia', 'Md Raju Mia', '', '0000-00-00 00:00:00', '19867214047454214', 1, '01737595421', '', '', '', '', 'Kharnoi', 'Hat Gobindopur', 'Kalmakanda', 'Netrakona', '', 184),
('Sheikh Mohammad', 'Ahsan  Habib', 'Sheikh Mohammad Ajtab Uddin', '', '0000-00-00 00:00:00', '2617218754291', 1, '01712601566', '', '', '', '', 'Dakkin Katli', 'Sadar', 'Netrakona', 'Netrakona', '', 185),
('Md Wasim ', 'Uddin', 'Sahab Uddin', '', '0000-00-00 00:00:00', '5114060451', 1, '01939251757', '', '', '', '', 'Santipur', 'Kakoygora', 'Durgapur', 'Netrakona', '', 186),
('Md Abu ', 'Hanif', 'Md Rohmot Ali', '', '0000-00-00 00:00:00', '1954012124', 1, '01703763724', '', '', '', '', 'Shibpur', 'Lengura', 'Kalamkanda', 'Nbetrakona', '', 187),
('Md Alamgir', 'Mia', 'Md Motiur Rahaman', '', '0000-00-00 00:00:00', '', 1, '01718791124', '', '', '', '', 'Dhoulotpur', 'Mohonganj', 'Mohonganj', 'Netrakona', '', 188),
('Md Harun ', 'Mia', 'Md Dulal Mia', '', '0000-00-00 00:00:00', '', 1, '017704413702', '', '', '', '', 'Amgora', 'Choita', 'Kalmakanda', 'Netrakona', '', 189),
('Md Selim ', 'Mia', 'Md Dulal Mia', '', '0000-00-00 00:00:00', '5111057880', 1, '01781271818', '', '', '', '', 'Chisrakanda', 'Fokerer Bazar', 'Barhatta', 'Netrakona', '', 190),
('Al', 'Harun', 'Khokon Mia', '', '0000-00-00 00:00:00', '7354006277', NULL, '01918935354', '', '', '', '', 'Orongobad', 'Kailati', 'Netrakona', 'Netrakona', '', 191),
('Mohammad Yusuf ', 'Khan', 'Abdul Korim Khan', '', '0000-00-00 00:00:00', '5081885005', 1, '01717039860', '', '', '', '', 'Ahunhati', 'Sadar', 'Netrakona', 'Netrakona', '', 192),
('Mufazzol Hossen', 'Mufazzol Hosse', 'Giyes Uddin', '', '0000-00-00 00:00:00', '1503950501', 1, '01751770054', '', '', '', '', 'Dakkin Busura', 'Dakkin Busura', 'Netrakona', 'Netrakona', '', 193),
('Md ', 'Mohoshin', 'Muhammod Ali Musa', '', '0000-00-00 00:00:00', '19997231000168', 1, '01715722196', '', '', '', '', 'Kandi ', 'Onantopur', 'Netrakona', 'Netrakona', '', 194),
('Md Jamal', 'Uddin', 'Md Abul Hossen', '', '0000-00-00 00:00:00', '6872358442', 1, '01916706450', '', '', '', '', 'Menkikanda', 'Durgapur', 'Durgapur', 'Netrakona', '', 195),
('Md Anondo', 'Bhaian', 'Nazimuddin Bhaian', '', '0000-00-00 00:00:00', '', 1, '01708781891', '', '', '', '', 'Kurpar', 'Sadar', 'Netrakona', 'Netrakona', '', 196),
('Md Ripon', 'Mia', 'Md Amir Uddin', '', '0000-00-00 00:00:00', '2403993039', 1, '01734780510', '', '', '', '', 'Banipara', 'Chondigor', 'Durgapr', 'Netrakona', '', 197),
('Nur Zamal', 'Fakir', 'Md Abdus Samad Fakir', '', '0000-00-00 00:00:00', '8209683831', 1, '01760040328', '', '', '', '', 'Kurikunia', 'Dolamulgaw', 'Purbadhala', 'Netrakona', '', 198),
('Md Nur', 'Uddin', 'Joynal Abedin', '', '0000-00-00 00:00:00', '4661481319', 1, '01610965522', '', '', '', '', 'Munsipur', 'Boruakona', 'Kalmakanda', 'Netrakona', '', 199),
('Abkul ', ' Lotif', 'Abul Hosen', '', '0000-00-00 00:00:00', '8208700701', 1, '01962760807', '', '', '', '', 'Sakuakanda', 'Gojirkona', 'Durgapur', 'Netrakona', '', 200),
('Dm Salim ', 'Mia', 'Md Hasen Ali', '', '0000-00-00 00:00:00', '7214023493417', 1, '01745189697', '', '', '', '', 'Baniyapara', 'Bisompur', 'Kolmakanda', 'Netrakona', '', 201),
('Md Abdul ', 'Kasem', 'Late Mofiz Uddin', '', '0000-00-00 00:00:00', '19679013290454474', 1, '01738882749', '', '', '', '', 'Kalmakanda', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 202),
('Md Nur Hossain', 'Shohag', 'Ali Arshad', '', '0000-00-00 00:00:00', '2367520067', 1, '01717546540', '', '', '', '', 'Mohishasura', 'Bishompur', 'Kalmakanda', 'Netrakona', '', 203),
('Nazim Uddin', 'Uddin', 'Md Salam Mia', '', '0000-00-00 00:00:00', '8719177001', 1, '01763627395', '', '', '', '', 'Kalmakanda', 'Kalmakanda', 'Kalmakanda', 'Netrakona', '', 204),
('Walton Plaza', 'Walton Plaza', '', '', '0000-00-00 00:00:00', '', 3, '01678028852', '', '', '', '', 'Muktarpara', 'Netrakona', 'Netrakona', 'Netrakona', '', 205),
('Md Shakib Jilani', ' Jilani', 'Md Abdul Hamid', '', '0000-00-00 00:00:00', '19927225607000025', 1, '01784140690', '', '', '', '', 'Fahangirpur', 'Sadar', 'Netrakona', 'Netrakona', '', 206),
('Abdul', 'Quiyum', 'Abdul Malek', '', '0000-00-00 00:00:00', '5091184735', 1, '01916424575', '', '', '', '', 'Koilathi', 'Purbadhala', 'Purbadhala', 'Netrakona', '', 207),
('Abdus Salam', 'Salam', 'Anul Kalam', '', '0000-00-00 00:00:00', '6910993440', 1, '01737465143', '', '', '', '', 'Hat Gobindhopur', 'Hat Gobindhopur', 'Kalmakanda', 'Netrakona', '', 208),
('Ershad', 'Mia', 'Jonab Ali', '', '0000-00-00 00:00:00', '', 1, '01752257878', '', '', '', '', 'Kutubpur', 'Kolongka', 'Khaliajuri', 'Netrakona', '', 209),
('Md Rashid ', 'Alam', 'Md Abdul Motin', '', '0000-00-00 00:00:00', '9013257403830', NULL, '01716485287', '', '', '', '', 'Mohonganj', 'Mohonganj', 'Mohonganj', 'Netrakona', '', 210);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_permissions`
--

CREATE TABLE `ospos_permissions` (
  `permission_id` varchar(255) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `location_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_permissions`
--

INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
('attributes', 'attributes', NULL),
('cashups', 'cashups', NULL),
('config', 'config', NULL),
('customers', 'customers', NULL),
('employees', 'employees', NULL),
('expenses', 'expenses', NULL),
('expenses_categories', 'expenses_categories', NULL),
('giftcards', 'giftcards', NULL),
('home', 'home', NULL),
('items', 'items', NULL),
('items_stock', 'items', 1),
('item_kits', 'item_kits', NULL),
('messages', 'messages', NULL),
('office', 'office', NULL),
('receivings', 'receivings', NULL),
('receivings_stock', 'receivings', 1),
('reports', 'reports', NULL),
('reports_categories', 'reports', NULL),
('reports_customers', 'reports', NULL),
('reports_discounts', 'reports', NULL),
('reports_employees', 'reports', NULL),
('reports_expenses_categories', 'reports', NULL),
('reports_inventory', 'reports', NULL),
('reports_items', 'reports', NULL),
('reports_payments', 'reports', NULL),
('reports_receivings', 'reports', NULL),
('reports_sales', 'reports', NULL),
('reports_sales_taxes', 'reports', NULL),
('reports_suppliers', 'reports', NULL),
('reports_taxes', 'reports', NULL),
('sales', 'sales', NULL),
('sales_change_price', 'sales', NULL),
('sales_delete', 'sales', NULL),
('sales_stock', 'sales', 1),
('suppliers', 'suppliers', NULL),
('taxes', 'taxes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings`
--

CREATE TABLE `ospos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int DEFAULT NULL,
  `employee_id` int NOT NULL DEFAULT '0',
  `comment` text,
  `receiving_id` int NOT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `reference` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_receivings`
--

INSERT INTO `ospos_receivings` (`receiving_time`, `supplier_id`, `employee_id`, `comment`, `receiving_id`, `payment_type`, `reference`) VALUES
('2024-01-02 04:33:23', 4, 2, '', 1, 'Cash', NULL),
('2024-01-02 04:33:23', 4, 2, '', 2, 'Cash', NULL),
('2024-01-02 04:33:23', 4, 2, '', 3, 'Cash', NULL),
('2024-01-02 04:33:23', 4, 2, '', 4, 'Cash', NULL),
('2024-01-02 04:33:23', 4, 2, '', 5, 'Cash', NULL),
('2024-01-02 04:33:23', 4, 2, '', 6, 'Cash', NULL),
('2024-01-02 04:33:23', 4, 2, '', 7, 'Cash', NULL),
('2024-01-02 04:33:23', 4, 2, '', 8, 'Cash', NULL),
('2024-01-02 04:33:23', 4, 2, '', 9, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 10, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 11, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 12, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 13, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 14, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 15, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 16, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 17, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 18, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 19, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 20, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 21, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 22, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 23, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 24, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 25, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 26, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 27, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 28, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 29, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 30, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 31, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 32, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 33, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 34, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 35, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 36, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 37, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 38, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 39, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 40, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 41, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 42, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 43, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 44, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 45, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 46, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 47, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 48, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 49, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 50, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 51, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 52, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 53, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 54, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 55, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 56, 'Cash', NULL),
('2024-01-02 05:41:50', 4, 2, '', 57, 'Cash', NULL),
('2024-01-10 05:37:41', 4, 2, '', 58, 'Cash', NULL),
('2024-01-10 05:37:41', 4, 2, '', 59, 'Cash', NULL),
('2024-01-10 05:37:41', 4, 2, '', 60, 'Cash', NULL),
('2024-01-10 05:37:41', 4, 2, '', 61, 'Cash', NULL),
('2024-01-10 05:37:41', 4, 2, '', 62, 'Cash', NULL),
('2024-01-10 05:37:41', 4, 2, '', 63, 'Cash', NULL),
('2024-01-10 05:37:41', 4, 2, '', 64, 'Cash', NULL),
('2024-01-10 05:37:41', 4, 2, '', 65, 'Cash', NULL),
('2024-01-10 05:48:18', 4, 2, '', 66, 'Cash', NULL),
('2024-01-10 05:48:18', 4, 2, '', 67, 'Cash', NULL),
('2024-01-15 05:23:45', 4, 2, '', 68, 'Cash', NULL),
('2024-01-15 05:23:45', 4, 2, '', 69, 'Cash', NULL),
('2024-01-15 05:23:45', 4, 2, '', 70, 'Cash', NULL),
('2024-01-15 05:23:45', 4, 2, '', 71, 'Cash', NULL),
('2024-01-15 05:23:45', 4, 2, '', 72, 'Cash', NULL),
('2024-01-15 05:23:45', 4, 2, '', 73, 'Cash', NULL),
('2024-01-15 05:23:45', 4, 2, '', 74, 'Cash', NULL),
('2024-01-15 05:23:45', 4, 2, '', 75, 'Cash', NULL),
('2024-01-15 05:23:45', 4, 2, '', 76, 'Cash', NULL),
('2024-01-15 05:23:45', 4, 2, '', 77, 'Cash', NULL),
('2024-01-20 05:20:27', 4, 2, '', 78, 'Cash', NULL),
('2024-01-20 05:20:27', 4, 2, '', 79, 'Cash', NULL),
('2024-01-20 05:20:27', 4, 2, '', 80, 'Cash', NULL),
('2024-01-20 05:20:27', 4, 2, '', 81, 'Cash', NULL),
('2024-01-20 05:20:27', 4, 2, '', 82, 'Cash', NULL),
('2024-01-20 05:20:27', 4, 2, '', 83, 'Cash', NULL),
('2024-01-20 05:20:27', 4, 2, '', 84, 'Cash', NULL),
('2024-01-20 05:20:27', 4, 2, '', 85, 'Cash', NULL),
('2024-01-20 05:20:27', 4, 2, '', 86, 'Cash', NULL),
('2024-01-20 05:20:27', 4, 2, '', 87, 'Cash', NULL),
('2024-01-25 04:39:41', 4, 2, '', 88, 'Cash', NULL),
('2024-01-25 04:39:41', 4, 2, '', 89, 'Cash', NULL),
('2024-01-25 04:39:41', 4, 2, '', 90, 'Cash', NULL),
('2024-01-25 04:39:41', 4, 2, '', 91, 'Cash', NULL),
('2024-01-25 04:39:41', 4, 2, '', 92, 'Cash', NULL),
('2024-01-25 04:39:41', 4, 2, '', 93, 'Cash', NULL),
('2024-01-25 04:39:41', 4, 2, '', 94, 'Cash', NULL),
('2024-01-25 04:39:41', 4, 2, '', 95, 'Cash', NULL),
('2024-01-25 04:39:41', 4, 2, '', 96, 'Cash', NULL),
('2024-01-25 04:39:41', 4, 2, '', 97, 'Cash', NULL),
('2024-01-31 04:45:00', 4, 2, '', 98, 'Cash', NULL),
('2024-01-31 04:45:00', 4, 2, '', 99, 'Cash', NULL),
('2024-01-31 04:45:00', 4, 2, '', 100, 'Cash', NULL),
('2024-01-31 04:45:00', 4, 2, '', 101, 'Cash', NULL),
('2024-01-31 04:45:00', 4, 2, '', 102, 'Cash', NULL),
('2024-01-31 04:45:00', 4, 2, '', 103, 'Cash', NULL),
('2024-01-31 04:45:00', 4, 2, '', 104, 'Cash', NULL),
('2024-01-31 04:45:00', 4, 2, '', 105, 'Cash', NULL),
('2024-01-31 04:45:00', 4, 2, '', 106, 'Cash', NULL),
('2024-01-31 04:45:00', 4, 2, '', 107, 'Cash', NULL),
('2024-02-10 05:03:23', 4, 2, '', 108, 'Cash', NULL),
('2024-02-10 05:03:23', 4, 2, '', 109, 'Cash', NULL),
('2024-02-10 05:03:23', 4, 2, '', 110, 'Cash', NULL),
('2024-02-10 05:03:23', 4, 2, '', 111, 'Cash', NULL),
('2024-02-10 05:03:23', 4, 2, '', 112, 'Cash', NULL),
('2024-02-10 05:03:23', 4, 2, '', 113, 'Cash', NULL),
('2024-02-10 05:03:23', 4, 2, '', 114, 'Cash', NULL),
('2024-02-10 05:03:23', 4, 2, '', 115, 'Cash', NULL),
('2024-02-10 05:03:23', 4, 2, '', 116, 'Cash', NULL),
('2024-02-10 05:03:23', 4, 2, '', 117, 'Cash', NULL),
('2024-02-12 04:49:37', 4, 2, '', 118, 'Cash', NULL),
('2024-02-12 04:49:37', 4, 2, '', 119, 'Cash', NULL),
('2024-02-12 04:49:37', 4, 2, '', 120, 'Cash', NULL),
('2024-02-12 04:49:37', 4, 2, '', 121, 'Cash', NULL),
('2024-02-12 04:49:37', 4, 2, '', 122, 'Cash', NULL),
('2024-02-12 04:49:37', 4, 2, '', 123, 'Cash', NULL),
('2024-02-12 04:49:37', 4, 2, '', 124, 'Cash', NULL),
('2024-02-12 04:49:37', 4, 2, '', 125, 'Cash', NULL),
('2024-02-12 04:49:37', 4, 2, '', 126, 'Cash', NULL),
('2024-02-12 04:49:37', 4, 2, '', 127, 'Cash', NULL),
('2024-02-19 04:54:55', 4, 2, '', 128, 'Cash', NULL),
('2024-02-19 04:54:55', 4, 2, '', 129, 'Cash', NULL),
('2024-02-19 04:54:55', 4, 2, '', 130, 'Cash', NULL),
('2024-02-19 04:54:55', 4, 2, '', 131, 'Cash', NULL),
('2024-02-19 04:54:55', 4, 2, '', 132, 'Cash', NULL),
('2024-02-19 04:54:55', 4, 2, '', 133, 'Cash', NULL),
('2024-02-19 04:54:55', 4, 2, '', 134, 'Cash', NULL),
('2024-02-19 04:54:55', 4, 2, '', 135, 'Cash', NULL),
('2024-02-19 04:54:55', 4, 2, '', 136, 'Cash', NULL),
('2024-02-19 04:54:55', 4, 2, '', 137, 'Cash', NULL),
('2024-02-23 02:39:47', 4, 2, '', 138, 'Cash', NULL),
('2024-02-23 02:39:47', 4, 2, '', 139, 'Cash', NULL),
('2024-02-23 02:39:47', 4, 2, '', 140, 'Cash', NULL),
('2024-02-23 02:39:47', 4, 2, '', 141, 'Cash', NULL),
('2024-02-23 02:39:47', 4, 2, '', 142, 'Cash', NULL),
('2024-02-23 02:39:47', 4, 2, '', 143, 'Cash', NULL),
('2024-02-23 02:39:47', 4, 2, '', 144, 'Cash', NULL),
('2024-02-23 02:39:47', 4, 2, '', 145, 'Cash', NULL),
('2024-02-23 02:39:47', 4, 2, '', 146, 'Cash', NULL),
('2024-02-23 02:39:47', 4, 2, '', 147, 'Cash', NULL),
('2024-02-26 04:49:23', 4, 2, '', 148, 'Cash', NULL),
('2024-02-26 04:49:23', 4, 2, '', 149, 'Cash', NULL),
('2024-02-26 04:49:23', 4, 2, '', 150, 'Cash', NULL),
('2024-02-26 04:49:23', 4, 2, '', 151, 'Cash', NULL),
('2024-02-26 04:49:23', 4, 2, '', 152, 'Cash', NULL),
('2024-02-26 04:49:23', 4, 2, '', 153, 'Cash', NULL),
('2024-02-26 04:49:23', 4, 2, '', 154, 'Cash', NULL),
('2024-02-26 04:49:23', 4, 2, '', 155, 'Cash', NULL),
('2024-02-26 04:49:23', 4, 2, '', 156, 'Cash', NULL),
('2024-02-26 04:49:23', 4, 2, '', 157, 'Cash', NULL),
('2024-03-17 05:10:48', 4, 2, '', 158, 'Cash', NULL),
('2024-03-17 05:10:48', 4, 2, '', 159, 'Cash', NULL),
('2024-03-17 05:10:48', 4, 2, '', 160, 'Cash', NULL),
('2024-03-17 05:10:48', 4, 2, '', 161, 'Cash', NULL),
('2024-03-17 05:10:48', 4, 2, '', 162, 'Cash', NULL),
('2024-03-17 05:10:48', 4, 2, '', 163, 'Cash', NULL),
('2024-03-17 05:10:48', 4, 2, '', 164, 'Cash', NULL),
('2024-03-17 05:10:48', 4, 2, '', 165, 'Cash', NULL),
('2024-03-17 05:28:49', 4, 2, '', 166, 'Cash', NULL),
('2024-03-17 05:28:49', 4, 2, '', 167, 'Cash', NULL),
('2024-03-17 05:28:49', 4, 2, '', 168, 'Cash', NULL),
('2024-03-17 05:28:49', 4, 2, '', 169, 'Cash', NULL),
('2024-03-17 05:28:49', 4, 2, '', 170, 'Cash', NULL),
('2024-03-17 05:28:49', 4, 2, '', 171, 'Cash', NULL),
('2024-03-17 05:28:49', 4, 2, '', 172, 'Cash', NULL),
('2024-03-17 05:28:49', 4, 2, '', 173, 'Cash', NULL),
('2024-03-17 05:28:49', 4, 2, '', 174, 'Cash', NULL),
('2024-03-17 05:28:49', 4, 2, '', 175, 'Cash', NULL),
('2024-03-25 04:44:24', 4, 2, '', 176, 'Cash', NULL),
('2024-03-25 04:44:24', 4, 2, '', 177, 'Cash', NULL),
('2024-03-25 04:44:24', 4, 2, '', 178, 'Cash', NULL),
('2024-03-25 04:44:24', 4, 2, '', 179, 'Cash', NULL),
('2024-03-25 04:44:24', 4, 2, '', 180, 'Cash', NULL),
('2024-03-25 04:44:24', 4, 2, '', 181, 'Cash', NULL),
('2024-03-25 04:44:24', 4, 2, '', 182, 'Cash', NULL),
('2024-03-25 04:44:24', 4, 2, '', 183, 'Cash', NULL),
('2024-03-25 04:44:24', 4, 2, '', 184, 'Cash', NULL),
('2024-03-25 04:44:24', 4, 2, '', 185, 'Cash', NULL),
('2024-03-28 11:09:39', 4, 2, '', 186, 'Cash', NULL),
('2024-03-28 11:09:40', 4, 2, '', 187, 'Cash', NULL),
('2024-03-28 11:09:40', 4, 2, '', 188, 'Cash', NULL),
('2024-03-28 11:09:40', 4, 2, '', 189, 'Cash', NULL),
('2024-03-28 11:09:40', 4, 2, '', 190, 'Cash', NULL),
('2024-03-28 11:09:40', 4, 2, '', 191, 'Cash', NULL),
('2024-03-28 11:09:40', 4, 2, '', 192, 'Cash', NULL),
('2024-03-28 11:09:40', 4, 2, '', 193, 'Cash', NULL),
('2024-03-28 11:09:40', 4, 2, '', 194, 'Cash', NULL),
('2024-03-28 11:09:40', 4, 2, '', 195, 'Cash', NULL),
('2024-03-30 09:36:45', 4, 2, '', 196, 'Cash', NULL),
('2024-03-30 09:36:45', 4, 2, '', 197, 'Cash', NULL),
('2024-03-30 09:36:45', 4, 2, '', 198, 'Cash', NULL),
('2024-03-30 09:36:45', 4, 2, '', 199, 'Cash', NULL),
('2024-03-30 09:36:45', 4, 2, '', 200, 'Cash', NULL),
('2024-03-30 09:36:45', 4, 2, '', 201, 'Cash', NULL),
('2024-03-30 09:36:45', 4, 2, '', 202, 'Cash', NULL),
('2024-03-30 09:36:45', 4, 2, '', 203, 'Cash', NULL),
('2024-03-30 09:36:45', 4, 2, '', 204, 'Cash', NULL),
('2024-03-30 09:36:45', 4, 2, '', 205, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 206, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 207, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 208, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 209, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 210, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 211, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 212, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 213, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 214, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 215, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 216, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 217, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 218, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 219, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 220, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 221, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 222, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 223, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 224, 'Cash', NULL),
('2024-04-01 10:36:17', 4, 2, '', 225, 'Cash', NULL),
('2024-04-07 05:28:52', 4, 2, '', 226, 'Cash', NULL),
('2024-04-07 05:28:52', 4, 2, '', 227, 'Cash', NULL),
('2024-04-07 05:28:52', 4, 2, '', 228, 'Cash', NULL),
('2024-04-07 05:28:52', 4, 2, '', 229, 'Cash', NULL),
('2024-04-07 05:28:52', 4, 2, '', 230, 'Cash', NULL),
('2024-04-07 05:28:52', 4, 2, '', 231, 'Cash', NULL),
('2024-04-07 05:28:52', 4, 2, '', 232, 'Cash', NULL),
('2024-04-07 05:28:52', 4, 2, '', 233, 'Cash', NULL),
('2024-04-07 05:28:52', 4, 2, '', 234, 'Cash', NULL),
('2024-04-07 05:28:52', 4, 2, '', 235, 'Cash', NULL),
('2024-04-10 06:13:32', 4, 2, '', 236, 'Cash', NULL),
('2024-04-10 06:13:32', 4, 2, '', 237, 'Cash', NULL),
('2024-04-10 06:13:32', 4, 2, '', 238, 'Cash', NULL),
('2024-04-10 06:13:32', 4, 2, '', 239, 'Cash', NULL),
('2024-04-10 06:13:32', 4, 2, '', 240, 'Cash', NULL),
('2024-04-10 06:13:32', 4, 2, '', 241, 'Cash', NULL),
('2024-04-10 06:13:32', 4, 2, '', 242, 'Cash', NULL),
('2024-04-10 06:13:32', 4, 2, '', 243, 'Cash', NULL),
('2024-04-10 06:13:32', 4, 2, '', 244, 'Cash', NULL),
('2024-04-10 06:13:32', 4, 2, '', 245, 'Cash', NULL),
('2024-04-25 06:01:19', 4, 2, '', 246, 'Cash', NULL),
('2024-04-25 06:01:19', 4, 2, '', 247, 'Cash', NULL),
('2024-04-25 06:01:19', 4, 2, '', 248, 'Cash', NULL),
('2024-04-25 06:01:19', 4, 2, '', 249, 'Cash', NULL),
('2024-04-25 06:01:19', 4, 2, '', 250, 'Cash', NULL),
('2024-04-25 06:01:19', 4, 2, '', 251, 'Cash', NULL),
('2024-04-25 06:01:19', 4, 2, '', 252, 'Cash', NULL),
('2024-04-25 06:01:19', 4, 2, '', 253, 'Cash', NULL),
('2024-04-25 06:01:19', 4, 2, '', 254, 'Cash', NULL),
('2024-04-25 06:01:19', 4, 2, '', 255, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 256, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 257, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 258, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 259, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 260, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 261, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 262, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 263, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 264, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 265, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 266, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 267, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 268, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 269, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 270, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 271, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 272, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 273, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 274, 'Cash', NULL),
('2024-04-28 05:42:50', 4, 2, '', 275, 'Cash', NULL),
('2024-04-30 15:04:49', 4, 2, '', 276, 'Cash', NULL),
('2024-04-30 15:04:49', 4, 2, '', 277, 'Cash', NULL),
('2024-04-30 15:04:49', 4, 2, '', 278, 'Cash', NULL),
('2024-05-02 07:43:15', 4, 2, '', 279, 'Cash', NULL),
('2024-05-02 07:43:15', 4, 2, '', 280, 'Cash', NULL),
('2024-05-02 07:43:15', 4, 2, '', 281, 'Cash', NULL),
('2024-05-02 07:43:15', 4, 2, '', 282, 'Cash', NULL),
('2024-05-02 07:43:15', 4, 2, '', 283, 'Cash', NULL),
('2024-05-02 07:43:15', 4, 2, '', 284, 'Cash', NULL),
('2024-05-02 07:43:15', 4, 2, '', 285, 'Cash', NULL),
('2024-05-02 07:43:15', 4, 2, '', 286, 'Cash', NULL),
('2024-05-02 07:43:15', 4, 2, '', 287, 'Cash', NULL),
('2024-05-02 07:43:15', 4, 2, '', 288, 'Cash', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings_items`
--

CREATE TABLE `ospos_receivings_items` (
  `receiving_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int NOT NULL,
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT '0.000',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount_type` tinyint(1) NOT NULL DEFAULT '0',
  `item_location` int NOT NULL,
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT '1.000',
  `check_box` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_receivings_items`
--

INSERT INTO `ospos_receivings_items` (`receiving_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount`, `discount_type`, `item_location`, `receiving_quantity`, `check_box`) VALUES
(1, 1, 'PSUB44BYXPTJ95827', 'JZXPPH96847', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(2, 1, 'PSUB44BY7PTJ95834', 'JZXPPH96838', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(3, 1, 'PSUB44BY4PTJ95807', 'JZXPPH96265', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(4, 1, 'PSUB44BY1PTJ95828', 'JZXPPH96231', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(5, 1, 'PSUB44BY4PTJ95791', 'JZXPPH96561', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(6, 1, 'PSUB44BY5PTJ95802', 'JZXPPH96210', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(7, 1, 'PSUB44BY0PTJ95822', 'JZXPPH96713', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(8, 2, 'PSUB44BY4PTJ95600', 'JZXPPH96379', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(9, 2, 'PSUB44BY7PTJ95574', 'JZXPPH96743', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(10, 16, 'PSUA11CY0PTF18348', 'DHXPPD71789', 1, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(11, 15, 'PSUA11CY8PTF17898', 'DHXPPD71588', 2, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(12, 15, 'PSUA11CY0PTJ26970', 'DHXPPF53883', 2, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(13, 13, 'PSUB97FY7PTH00122', 'PDXCPM95061', 3, 1.000, 317999.00, 317999.00, 0.00, 0, 1, 1.000, 0),
(14, 14, 'MD2B54DX6PCA91242', 'PDXCPM99325', 4, 1.000, 247900.00, 247900.00, 0.00, 0, 1, 1.000, 0),
(15, 20, 'PSUA11CY6PTJ26732', 'DHXPPG73712', 5, 1.000, 184750.00, 184750.00, 0.00, 0, 1, 1.000, 0),
(16, 19, 'PSUA11CY4PTG22938', 'DHXPPD59638', 6, 1.000, 184775.00, 184775.00, 0.00, 0, 1, 1.000, 0),
(17, 19, 'PSUA11CY0PTJ27083', 'DHXPPG78409', 6, 1.000, 184775.00, 184775.00, 0.00, 0, 1, 1.000, 0),
(18, 19, 'PSUA11CY2PTJ27179', 'DHXPPG75307', 6, 1.000, 184775.00, 184775.00, 0.00, 0, 1, 1.000, 0),
(19, 19, 'PSUA11CY8PTJ27168', 'DHXPPG78569', 6, 1.000, 184775.00, 184775.00, 0.00, 0, 1, 1.000, 0),
(20, 19, 'PSUA11CY6PTJ27184', 'DHXPPG78569', 6, 1.000, 184775.00, 184775.00, 0.00, 0, 1, 1.000, 0),
(21, 19, 'PSUA11CY1PTJ27187', 'DHXPPG75364', 6, 1.000, 184775.00, 184775.00, 0.00, 0, 1, 1.000, 0),
(22, 17, 'PSUA11CY8PTH24453', 'DHXPPF66755', 7, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(23, 17, 'PSUA11CY5PTJ27337', 'DHXPPF81462', 7, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(24, 17, 'PSUA11CY8PTH24615', 'DHXPPF66815', 7, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(25, 8, 'PSUA76AY1PTG65052', 'PFXPPF93119', 8, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(26, 12, 'PSUB37AY2PTG11274', 'PFXWPF38927', 9, 1.000, 114250.00, 114250.00, 0.00, 0, 1, 1.000, 0),
(27, 10, 'PSUB37AY7PTG11061', 'PFXWPF42975', 10, 1.000, 114250.00, 114250.00, 0.00, 0, 1, 1.000, 0),
(28, 1, 'PSUB44BY3PTG91152', 'JZXPPE89824', 11, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(29, 1, 'PSUB44BYXPTH94326', 'JZXPPF92679', 11, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(30, 1, 'PSUB44BY3PTJ95409', 'JZXPPG93948', 11, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(31, 1, 'PSUB44BY5PTJ95430', 'JZXPPG94504', 11, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(32, 1, 'PSUB44BY4PTJ95449', 'JZXPPG94439', 11, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(33, 2, 'PSUB44BY2PTJ94509', 'JZXPPG93873', 12, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(34, 3, 'PSUB44BY2PTF89759', 'JZXPPE88699', 13, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(35, 5, 'PSUA15AZ5PTH12299', 'JBXPPF68012', 14, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(36, 5, 'PSUA15AZ9PTH13021', 'JBXPPF67177', 14, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(37, 5, 'PSUA15AZ8PTJ13393', 'JBXPPF68405', 14, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(38, 5, 'PSUA15AZXPTJ13394', 'JBXPPF68400', 14, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(39, 5, 'PSUA15AZ9PTJ13709', 'JBXPPF68791', 14, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(40, 5, 'PSUA15AZ9PTJ13712', 'JBXPPF68554', 14, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(41, 6, 'PSUA15AZ1PTF11614', 'JBXPPD66558', 15, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(42, 4, 'PSUA15AZ8PTE08965', 'JBXPPA63517', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(43, 4, 'PSUA15AZ2PTH12017', 'JBXPPF67394', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(44, 4, 'PSUA15AZ7PTH12031', 'JBXPPF68235', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(45, 4, 'PSUA15AZXPTH12945', 'JBXPPF67010', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(46, 4, 'PSUA15AZ9PTH12614', 'JBXPPF67566', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(47, 4, 'PSUA15AZ8PTH12927', 'JBXPPF67016', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(48, 4, 'PSUA15AZ6PTH12960', 'JBXPPF67664', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(49, 4, 'PSUA15AZ0PTJ13274', 'JBXPPF68219', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(50, 4, 'PSUA15AZ6PTJ13246', 'JBXPPF68373', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(51, 4, 'PSUA15AZ9PTJ13306', 'JBXPPF68435', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(52, 4, 'PSUA15AZ5PTJ13609', 'JBXPPF68810', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(53, 4, 'PSUA15AZ8PTH12409', 'JBXPPF67661', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(54, 4, 'PSUA15AZ1PTH12400', 'JBXPPF67667', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(55, 4, 'PSUA15AZ7PTH12398', 'JBXPPF67647', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(56, 4, 'PSUA15AZ6TH12392', 'JBXPPF67652', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(57, 4, 'PSUA15AZ7PTH12403', 'JBXPPF67600', 16, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(58, 13, 'PSUB97FY0PTH00141 ', 'PDXCPM94334', 1, 1.000, 317999.00, 317999.00, 0.00, 0, 1, 1.000, 0),
(59, 2, 'PSUB44BY3RTK96341 ', 'JZXPPG94693', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(60, 2, 'PSUB44BY8RTK96349 ', 'JZXPPG94618', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(61, 1, 'PSUB44BY9RTK95937 ', 'JZXPPG95258', 3, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(62, 1, 'PSUB44BY2RTK96041 ', 'JZXPPG95134', 3, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(63, 1, 'PSUB44BY3RTK95948 ', 'JZXPPG95270', 3, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(64, 15, 'PSUA11CY5PTJ26821 ', 'DHXPPF51972', 4, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(65, 15, 'PSUA11CY8PTH24274 ', 'DHXPPF53930', 4, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(66, 21, 'PSUA11CY6PTD14847', 'DHXPPB56288', 1, 1.000, 208950.00, 208950.00, 0.00, 0, 1, 1.000, 0),
(67, 21, 'PSUA11CY2PTD14862', 'DHXPPB56246', 1, 1.000, 208950.00, 208950.00, 0.00, 0, 1, 1.000, 0),
(68, 16, 'PSUA11CY8PTJ27008 ', 'DHXPPF52060', 2, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(69, 15, 'PSUA11CY3RTK29089 ', 'DHXPPF56282', 3, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(70, 15, 'PSUA11CY4RTK29067 ', 'DHXPPF52138', 3, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(71, 15, 'PSUA11CY9RTK29078 ', 'DHXPPF56276', 3, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(72, 7, 'PSUA76AY8RTK65277 ', 'PFXPPG46824', 4, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(73, 7, 'PSUA76AYXRTK65328 ', 'PFXPPG46831', 4, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(74, 7, 'PSUA76AY5RTK65317 ', 'PFXPPG46779', 4, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(75, 7, 'PSUA76AY2RTK65257 ', 'PFXPPG46731', 4, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(76, 23, 'PSUB77AZ5RTK10589', 'PFXPPG97928', 5, 1.000, 134450.00, 134450.00, 0.00, 0, 1, 1.000, 0),
(77, 23, 'PSUB77AZ6RTK10763', 'PFXPPG97820', 5, 1.000, 134450.00, 134450.00, 0.00, 0, 1, 1.000, 0),
(78, 24, 'PSUB44BY2PTC82602', 'JZXPNE63869', 1, 1.000, 153175.00, 153175.00, 0.00, 0, 1, 1.000, 0),
(79, 3, 'PSUB44BY4RTK97367', 'JXCPPG94930', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(80, 19, 'PSUA11CY0PTJ28055', 'DHXPPF50712', 3, 1.000, 184775.00, 184775.00, 0.00, 0, 1, 1.000, 0),
(81, 19, 'PSUA11CY9PTJ28054', 'DHXPPF51954', 3, 1.000, 184775.00, 184775.00, 0.00, 0, 1, 1.000, 0),
(82, 20, 'PSUA11CY4PTJ28186', 'DHXPPF51907', 4, 1.000, 184750.00, 184750.00, 0.00, 0, 1, 1.000, 0),
(83, 15, 'PSUA11CY6RTK29071', 'DHXPPF52256', 6, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(84, 15, 'PSUA11CY3RTK29092', 'DHXPPF53687', 6, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(85, 15, 'PSUA11CY9RTK29145', 'DHXPPF56161', 6, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(86, 16, 'PSUA11CYXPTJ27026', 'DHXPPF53849', 7, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(87, 14, 'MD2B54DX5PCA91507', 'PDXCPA54816', 8, 1.000, 247900.00, 247900.00, 0.00, 0, 1, 1.000, 0),
(88, 1, 'PSUB44BY0RTK97253 ', 'JZXPPH97160', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(89, 1, 'PSUB44BY0RTK97706 ', 'JZXPPG94978', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(90, 1, 'PSUB44BY0RTK97818 ', 'JZXPPH95858', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(91, 1, 'PSUB44BY0RTK97852 ', 'JZXPPH96141', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(92, 2, 'PSUB44BY1RTK97746 ', 'JZXPPH95795', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(93, 2, 'PSUB44BY3RTK97750 ', 'JZXPPH95816', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(94, 4, 'PSUA15AZ6RTK14287 ', 'JBXPPG81238', 3, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(95, 4, 'PSUA15AZ1RTK14181 ', 'JBXPPG81019', 3, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(96, 4, 'PSUA15AZ1RTK14388 ', 'JBXPPG81327', 3, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(97, 5, 'PSUA15AZ6RTK14449 ', 'JBXPPG81186', 4, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(98, 1, 'PSUB44BY7RTK98735 ', 'JZXPPH98106', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(99, 1, 'PSUB44BY9RTK98739 ', 'JZXPPH97912', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(100, 1, 'PSUB44BYXRTK98667 ', 'JZXPPH97919', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(101, 1, 'PSUB44BY3RTK98736 ', 'JZXPPH97850', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(102, 1, 'PSUB44BY3RTK98722 ', 'JZXPPH98046', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(103, 1, 'PSUB44BY0RTK98693 ', 'JZXPPH97940', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(104, 1, 'PSUB44BY5RTK98737 ', 'JZXPPH98102', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(105, 1, 'PSUB44BY3RTK98669 ', 'JZXPPH98130', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(106, 2, 'PSUB44BY5RTK97393 ', 'JZXPPG94251', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(107, 2, 'PSUB44BY2RTK98534 ', 'JZXPPH98135', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(108, 4, 'PSUA15AZ7RTL14494 ', 'JBXPPG80685', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(109, 4, 'PSUA15AZ3RTL14492 ', 'JBXPPG81480', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(110, 4, 'PSUA15AZ9RTL14531 ', 'JBXPPG81306', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(111, 4, 'PSUA15AZXRTL14568 ', 'JBXPPG80565', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(112, 4, 'PSUA15AZ7RTL14799 ', 'JBXPPG80135', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(113, 4, 'PSUA15AZ2RTL14516 ', 'JBXPPG80873', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(114, 7, 'PSUA76AY4RTK65230 ', 'PFXPPG46658', 2, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(115, 7, 'PSUA76AY5RTK65334 ', 'PFXPPG46821', 2, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(116, 18, 'PSUA11CY1RTL31622 ', 'DHXPPH34367', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(117, 17, 'PSUA11CY9RTK31056 ', 'DHXPPH38116', 4, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(118, 4, 'PSUA15AZ3RTL14766 ', 'JBXPPG80222', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(119, 4, 'PSUA15AZ2RTL14788 ', 'JBXPPG80132', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(120, 4, 'PSUA15AZ2RTL14774 ', 'JBXPPG80020', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(121, 4, 'PSUA15AZ7RTL14785 ', 'JBXPPG80766', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(122, 4, 'PSUA15AZ7RTL14771 ', 'JBXPPG80017', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(123, 4, 'PSUA15AZ1RTL14782 ', 'JBXPPG80271', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(124, 4, 'PSUA15AZ4RTL14789 ', 'JBXPPG80131', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(125, 4, 'PSUA15AZ8RTL14777 ', 'JBXPPG80688', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(126, 4, 'PSUA15AZ3RTL14752 ', 'JBXPPG69402', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(127, 4, 'PSUA15AZ6RTL14793 ', 'JBXPPG80101', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(128, 1, 'PSUB44BY9RTL00294 ', 'JZXPPH99227', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(129, 1, 'PSUB44BY3RTL00324 ', 'JZXPPH99318', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(130, 1, 'PSUB44BY4RTL00333 ', 'JZXPPH99324', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(131, 1, 'PSUB44BY4RTL00297 ', 'JZXPPH99381', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(132, 1, 'PSUB44BY5RTL00096 ', 'JZXPPH98252', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(133, 1, 'PSUB44BY1RTL00323 ', 'JZXPPH99394', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(134, 2, 'PSUB44BY0RTL00264 ', 'JZXPPH99394', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(135, 7, 'PSUA76AY0RTL65647 ', 'PFXPPG46681', 3, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(136, 7, 'PSUA76AY6RTL65636 ', 'PFXPPG48618', 3, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(137, 7, 'PSUA76AYXRTL65638 ', 'PFXPPG46927', 3, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(138, 1, 'PSUB44BY2RTL00220 ', 'JZXPPH98486', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(139, 1, 'PSUB44BY5RTL00220 ', 'JZXPPH98486', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(140, 1, 'PSUB44BY4RTL00350 ', 'JZXPPH99039', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(141, 1, 'PSUB44BY6RTL00365 ', 'JZXPPH99210', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(142, 1, 'PSUB44BY4RTL00364 ', 'JZXPPH98933', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(143, 5, 'PSUA15AZ0RTL14871 ', 'JBXPPG80986', 2, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(144, 4, 'PSUA15AZ1RTL14619 ', 'JBXPPG80889', 3, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(145, 4, 'PSUA15AZ1RTL14958 ', 'JBXPPG80879', 3, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(146, 4, 'PSUA15AZ7RTL14897 ', 'JBXPPG81134', 3, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(147, 4, 'PSUA15AZXRTL14957 ', 'JBXPPG80883', 3, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(148, 17, 'PSUA11CY6RTL33253 ', 'DHXPPJ78845', 1, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(149, 17, 'PSUA11CY2RTL33217 ', 'DHXPPJ73145', 1, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(150, 1, 'PSUB44BYXRTL00871 ', 'JZXPPH99886', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(151, 1, 'PSUB44BY9RTL00876 ', 'JZXPPH99729', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(152, 1, 'PSUB44BY2RTL00878 ', 'JZXPPH99734', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(153, 1, 'PSUB44BY8RTL00870 ', 'JZXPPH99862', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(154, 1, 'PSUB44BY1RTL00886 ', 'JZXPPH99809', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(155, 1, 'PSUB44BY3RTL00887 ', 'JZXPPH99813', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(156, 1, 'PSUB44BY4RTL00882 ', 'JZXPPH99735', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(157, 1, 'PSUB44BY5RTL00812 ', 'JZXPPH99470', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(158, 1, 'PSUB44BY9RTL02210', 'JZXPPJ52881', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(159, 1, 'PSUB44BY9RTL02403', 'JZXPPJ52744', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(160, 1, 'PSUB44BY8RTL02179', 'JZXPPJ51724', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(161, 17, 'PSUA11CY6RTM34258', 'DHXPPJ90802', 2, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(162, 17, 'PSUA11CY0RTM34272', 'DHXPPJ90734', 2, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(163, 18, 'PSUA11CY3RTK29044', 'DHXPPH31330', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(164, 19, 'PSUA11CY9RTM33993', 'DHXPPH19884', 4, 1.000, 184775.00, 184775.00, 0.00, 0, 1, 1.000, 0),
(165, 19, 'PSUA11CY2RTM34001', 'DHXPPH19874', 4, 1.000, 184775.00, 184775.00, 0.00, 0, 1, 1.000, 0),
(166, 4, 'PSUA15AZ1RTL14751', 'JBXPPG80100', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(167, 4, 'PSUA15AZ3RTL14797', 'JBXPPG80110', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(168, 4, 'PSUA15AZ5RTL14493', 'JBXPPG80767', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(169, 4, 'PSUA15AZ5RTL14770', 'JBXPPG80690', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(170, 4, 'PSUA15AZXRTL14554', 'JBXPPG81048', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(171, 1, 'PSUB44BY1RTM03533', 'JZXPPJ52043', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(172, 1, 'PSUB44BY2RTM03511', 'JZXPPJ52208', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(173, 1, 'PSUB44BY8RTM03531', 'JZXPPJ52040', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(174, 2, 'PSUB44BY6RTM03396', 'JZXPPJ50142', 3, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(175, 3, 'PSUB44BY6RTM03382', 'JZXPPJ50304', 4, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(176, 1, 'PSUB44BYXRTM04521', 'JZXPPJ52601', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(177, 1, 'PSUB44BY5RTM04409', 'JZXPPJ52490', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(178, 1, 'PSUB44BY6RTM04385', 'JZXPPJ52572', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(179, 1, 'PSUB44BY9RTM04395', 'JZXPPJ52574', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(180, 1, 'PSUB44BY8RTM04503', 'JZXPPJ52370', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(181, 17, 'PSUA11CY4RTM35019', 'DHXPPJ86806', 2, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(182, 17, 'PSUA11CYXRTM35008', 'DHXPPJ88586', 2, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(183, 17, 'PSUA11CY8RTM35072', 'DHXPPJ80924', 2, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(184, 17, 'PSUA11CY2RTM35231', 'DHXPPJ88435', 2, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(185, 13, 'PSUB97FY1RTM00826', 'PDXCPJ52496', 3, 1.000, 317999.00, 317999.00, 0.00, 0, 1, 1.000, 0),
(186, 1, 'PSUB44Y9RTM04655', 'JZXPPJ50678', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(187, 1, 'PSUB44Y0RTM04690', 'JZXPPJ50614', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(188, 1, 'PSUB44Y1RTM04598', 'JZXPPJ50118', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(189, 1, 'PSUB44Y1RTM04679', 'JZXPPJ50451', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(190, 1, 'PSUB44Y2RTM04688', 'JZXPPJ50727', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(191, 1, 'PSUB44Y8RTM04677', 'JZXPPJ50478', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(192, 2, 'PSUB44BY6RTM04855', 'JZXPPJ50226', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(193, 2, 'PSUB44BY1RTM04858', 'JZXPPJ50034', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(194, 2, 'PSUB44BY3RTM04859', 'JZXPPJ50244', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(195, 19, 'PSUA11CY1RTM36368', 'DHXPPH21620', 3, 1.000, 184775.00, 184775.00, 0.00, 0, 1, 1.000, 0),
(196, 4, 'PSUA15AZ0RTM16056', 'JBXPPG69539', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(197, 4, 'PSUA15AZ2RTM16432', 'JBXPPG81720', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(198, 4, 'PSUA15AZ5RTM16411', 'JBXPPG81740', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(199, 4, 'PSUA15AZ5RTM16105', 'JBXPPG69657', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(200, 1, 'PSUB44BY1RTM05007', 'JZXPPJ53906', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(201, 1, 'PSUB44BY7RTM04931', 'JZXPPJ53835', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(202, 1, 'PSUB44BY9RTM04946', 'JZXPPJ53568', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(203, 17, 'PSUA11CY3RTM36985', 'DHXPRK36601', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(204, 17, 'PSUA11CY0RTM36975', 'DHXPRK36598', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(205, 20, 'PSUA11CY0RTM37382', 'DHXPPG75326', 4, 1.000, 184750.00, 184750.00, 0.00, 0, 1, 1.000, 0),
(206, 10, 'PSUB37AY1PTG11041', 'PFXWPF42968', 1, 1.000, 114250.00, 114250.00, 0.00, 0, 1, 1.000, 0),
(207, 4, 'PSUA15AZ5RTM16344', 'JBXPPG80486', 2, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(208, 4, 'PSUA15AZ2RTM16186', 'JBXPPG69632', 2, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(209, 4, 'PSUA15AZ3RTM15998', 'JBXPPG69620', 2, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(210, 4, 'PSUA15AZ3RTM16195', 'JBXPPG69573', 2, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(211, 4, 'PSUA15AZ4RTM16058', 'JBXPPG69494', 2, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(212, 4, 'PSUA15AZ5RTM16165', 'JBXPPG69435', 2, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(213, 4, 'PSUA15AZ6RTM16434', 'JBXPPG81712', 2, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(214, 1, 'PSUB44BY6RTM05388', 'JZXPPJ99059', 3, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(215, 1, 'PSUB44BY8RTM05179', 'JZXPPJ53841', 3, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(216, 1, 'PSUB44BY2RTM05193', 'JZXPPJ53774', 3, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(217, 1, 'PSUB44BY3RTM05218', 'JZXPPJ53952', 3, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(218, 1, 'PSUB44BY4RTM05132', 'JZXPPJ53607', 3, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(219, 1, 'PSUB44BY4RTM05499', 'JZXPPH98548', 3, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(220, 1, 'PSUB44BY9RTM04560', 'JZXPPJ52407', 3, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(221, 1, 'PSUB44BY1RTM05279', 'JZXPPJ53591', 3, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(222, 7, 'PSUA76AY3RTM65905', 'PFXPPJ20352', 4, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(223, 7, 'PSUA76AY6RTM65803', 'PFXPPJ20369', 4, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(224, 7, 'PSUA76AY6RTM65879', 'PFXPPJ21018', 4, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(225, 7, 'PSUA76AY6RTM65896', 'PFXPPJ20348', 4, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(226, 1, 'PSUB44BY5RTM02711', 'JZXPPJ51258', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(227, 1, 'PSUB44BY2RTA05962', 'JZXPRL54979', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(228, 1, 'PSUB44BY5RTA06409', 'JZXWRL01874', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(229, 1, 'PSUB44BY3RTA06408', 'JZXWRL02552', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(230, 7, 'PSUA76AY7RTM65857', 'PFXPPH02787', 2, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(231, 7, 'PSUA76AY9RTM65858', 'PFXPPJ20399', 2, 1.000, 122250.00, 122250.00, 0.00, 0, 1, 1.000, 0),
(232, 17, 'PSUA11CY9RTM37980', 'DHXPRK31610', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(233, 17, 'PSUA11CY8RTM37968', 'DHXPRK31775', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(234, 19, 'PSUA11CY9RTM36733', 'DHXPPH23990', 4, 1.000, 184775.00, 184775.00, 0.00, 0, 1, 1.000, 0),
(235, 19, 'PSUA11CY8RTM37176', 'DHXPPG75270', 4, 1.000, 184775.00, 184775.00, 0.00, 0, 1, 1.000, 0),
(236, 1, 'PSUB44BY7RTA07318', 'FZXPRK54504', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(237, 1, 'PSUB44BY9RTA07286', 'FZXPRK54405', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(238, 1, 'PSUB44BY0RTA07127', 'FZXPRK54374', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(239, 2, 'PSUB44BYRTA07383', 'JZXPRK54602', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(240, 3, 'PSUB44BY1RTA07315', 'JZXPRK54462', 3, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(241, 17, 'PSUA11CY9RTA38070', 'DHXPPJ74172', 4, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(242, 17, 'PSUA11CY0RTA38071', 'DHXPPJ86894', 4, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(243, 17, 'PSUA11CY3RTA38078', 'DHXPPJ52382', 4, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(244, 17, 'PSUA11CY6RTA38074', 'DHXPPJ86708', 4, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(245, 17, 'PSUA11CY1RTA38080', 'DHXPPJ88116', 4, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(246, 1, 'PSUB44BY1RTA07895', 'JZXPRL55828', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(247, 1, 'PSUB44BY3RTA07896', 'JZXPRL55769', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(248, 1, 'PSUB44BY4RTA07907', 'JZXPRL55651', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(249, 1, 'PSUB44BY8RTA07859', 'JZXPRL55803', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(250, 1, 'PSUB44BY8RTA07909', 'JZXPRL55578', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(251, 2, 'PSUB44BY4RTA07759', 'JZXPRL54304', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(252, 15, 'PSUA11CY1RTA38824', 'DHXPRL74619', 3, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(253, 15, 'PSUA11CY4RTA38770', 'DHXPRL74758', 3, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(254, 15, 'PSUA11CY4RTA38817', 'DHXPRL74824', 3, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(255, 15, 'PSUA11CY8RTA38741', 'DHXPRL72271', 3, 1.000, 216950.00, 216950.00, 0.00, 0, 1, 1.000, 0),
(256, 4, 'PSUA15AZ1RTK14049', 'JBXPPG69148', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(257, 4, 'PSUA15AZ6RTK14130', 'JBXPPG81210', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(258, 4, 'PSUA15AZ9RTK14123', 'JBXPPG81352', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(259, 4, 'PSUA15AZ8RTL14603', 'JBXPPG80823', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(260, 1, 'PSUB44BYXRTA08401', 'JZXPRL56024', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(261, 1, 'PSUB44BY7RTA08386', 'JZXPRL55875', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(262, 1, 'PSUB44BY3RTA08420', 'JZXPRL56059', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(263, 1, 'PSUB44BY7RTA08419', 'JZXPRL55853', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(264, 1, 'PSUB44BY5RTA08404', 'JZXPRL55796', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(265, 1, 'PSUB44BY1RTA084397', 'JZXPRL55816', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(266, 17, 'PSUA11CY1RTA39519', 'DHXPRK33361', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(267, 17, 'PSUA11CY3RTA39523', 'DHXPRK33396', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(268, 17, 'PSUA11CY8RTA39470', 'DHXPRK19964', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(269, 17, 'PSUA11CY7RTA39525', 'DHXPRK33370', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(270, 17, 'PSUA11CY9RTA38974', 'DHXPRK74178', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(271, 17, 'PSUA11CY6RTA39595', 'DHXPRK34836', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(272, 17, 'PSUA11CY5RTA39670', 'DHXPRK86592', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(273, 17, 'PSUA11CYXRTA39664', 'DHXPRK20068', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(274, 17, 'PSUA11CY8RTA39551', 'DHXPRK19989', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(275, 17, 'PSUA11CY6RTA39662', 'DHXPRK20065', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(276, 4, 'PSUA15AZ0RTM16400', 'JBXPPG81767', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(277, 4, 'PSUA15AZ3RTM15984', 'JBXPPG69261', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(278, 4, 'PSUA15AZ1RTM16163', 'JBXPPG69439', 1, 1.000, 143250.00, 143250.00, 0.00, 0, 1, 1.000, 0),
(279, 1, 'PSUB44BY1RTA09260', 'JZXWRM81095', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(280, 1, 'PSUB44BY7RTA07996', 'JZXWRL55700', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(281, 1, 'PSUB44BY6RTA09271', 'JZXWRM06747', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(282, 1, 'PSUB44BY8RTA09286', 'JZXWRM07070', 1, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(283, 2, 'PSUB44BY8RTA09112', 'JZXWRM80176', 2, 1.000, 154175.00, 154175.00, 0.00, 0, 1, 1.000, 0),
(284, 17, 'PSUA11CY2RTA39559', 'DHXPPJ86577', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(285, 17, 'PSUA11CY3RTA39795', 'DHXPRK50594', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(286, 17, 'PSUA11CY5RTA39863', 'DHXPRK50663', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(287, 17, 'PSUA11CY5RTA38521', 'DHXPRK33272', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0),
(288, 17, 'PSUA11CY5RTA39801', 'DHXPRK50692', 3, 1.000, 194775.00, 194775.00, 0.00, 0, 1, 1.000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales`
--

CREATE TABLE `ospos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int DEFAULT NULL,
  `employee_id` int NOT NULL DEFAULT '0',
  `comment` text,
  `invoice_number` varchar(32) DEFAULT NULL,
  `quote_number` varchar(32) DEFAULT NULL,
  `sale_id` int NOT NULL,
  `sale_status` tinyint(1) NOT NULL DEFAULT '0',
  `dinner_table_id` int DEFAULT NULL,
  `work_order_number` varchar(32) DEFAULT NULL,
  `sale_type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_sales`
--

INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `comment`, `invoice_number`, `quote_number`, `sale_id`, `sale_status`, `dinner_table_id`, `work_order_number`, `sale_type`) VALUES
('2024-01-03 06:03:26', 6, 1, '', NULL, NULL, 6, 0, NULL, NULL, 0),
('2024-01-04 09:41:56', 8, 2, '', NULL, NULL, 10, 0, NULL, NULL, 0),
('2024-01-04 09:45:17', 9, 2, '', NULL, NULL, 11, 0, NULL, NULL, 0),
('2024-01-04 09:48:17', 10, 2, '', NULL, NULL, 12, 0, NULL, NULL, 0),
('2024-01-04 11:24:08', 7, 2, '', NULL, NULL, 13, 0, NULL, NULL, 0),
('2024-01-04 12:18:09', 11, 2, '', NULL, NULL, 14, 0, NULL, NULL, 0),
('2024-01-06 12:13:29', 12, 2, '', NULL, NULL, 15, 0, NULL, NULL, 0),
('2024-01-06 12:24:37', 13, 2, '', NULL, NULL, 16, 0, NULL, NULL, 0),
('2024-01-06 12:30:51', 14, 2, '', NULL, NULL, 17, 0, NULL, NULL, 0),
('2024-01-06 14:57:06', 15, 2, '', NULL, NULL, 18, 0, NULL, NULL, 0),
('2024-01-08 13:11:09', 16, 2, '', NULL, NULL, 19, 0, NULL, NULL, 0),
('2024-01-08 13:13:38', 17, 2, '', NULL, NULL, 20, 0, NULL, NULL, 0),
('2024-01-09 12:48:11', 18, 2, '', NULL, NULL, 22, 0, NULL, NULL, 0),
('2024-01-09 13:38:30', 19, 2, '', NULL, NULL, 23, 0, NULL, NULL, 0),
('2024-01-10 05:52:16', 20, 2, '', NULL, NULL, 24, 0, NULL, NULL, 0),
('2024-01-10 10:37:26', 21, 2, '', NULL, NULL, 25, 0, NULL, NULL, 0),
('2024-01-10 13:26:29', 22, 2, '', NULL, NULL, 26, 0, NULL, NULL, 0),
('2024-01-11 11:38:51', 23, 2, '', NULL, NULL, 28, 0, NULL, NULL, 0),
('2024-01-11 11:45:34', 24, 2, '', NULL, NULL, 29, 0, NULL, NULL, 0),
('2024-01-11 11:54:33', 25, 2, '', NULL, NULL, 30, 0, NULL, NULL, 0),
('2024-01-11 12:00:21', 26, 2, '', NULL, NULL, 31, 0, NULL, NULL, 0),
('2024-01-11 12:04:24', 27, 2, '', NULL, NULL, 32, 0, NULL, NULL, 0),
('2024-01-11 12:07:29', 28, 2, '', NULL, NULL, 33, 0, NULL, NULL, 0),
('2024-01-11 13:00:44', 29, 2, '', NULL, NULL, 34, 0, NULL, NULL, 0),
('2024-01-13 13:07:18', 30, 2, '', NULL, NULL, 35, 0, NULL, NULL, 0),
('2024-01-15 12:48:51', 31, 2, '', NULL, NULL, 36, 0, NULL, NULL, 0),
('2024-01-15 12:50:36', 32, 2, '', NULL, NULL, 37, 0, NULL, NULL, 0),
('2024-01-15 12:58:50', 33, 2, '', NULL, NULL, 38, 0, NULL, NULL, 0),
('2024-01-16 10:30:51', 34, 2, '', NULL, NULL, 39, 0, NULL, NULL, 0),
('2024-01-16 10:44:43', 35, 2, '', NULL, NULL, 40, 0, NULL, NULL, 0),
('2024-01-16 10:47:29', 36, 2, '', NULL, NULL, 41, 0, NULL, NULL, 0),
('2024-01-17 12:24:53', 37, 2, '', NULL, NULL, 42, 0, NULL, NULL, 0),
('2024-01-17 12:27:08', 38, 2, '', NULL, NULL, 43, 0, NULL, NULL, 0),
('2024-01-17 12:29:03', 39, 2, '', NULL, NULL, 44, 0, NULL, NULL, 0),
('2024-01-18 13:13:44', 40, 2, '', NULL, NULL, 45, 0, NULL, NULL, 0),
('2024-01-18 13:15:19', 41, 2, '', NULL, NULL, 46, 0, NULL, NULL, 0),
('2024-01-18 13:17:02', 42, 2, '', NULL, NULL, 47, 0, NULL, NULL, 0),
('2024-01-20 04:48:55', 43, 2, '', NULL, NULL, 48, 0, NULL, NULL, 0),
('2024-01-20 11:50:01', 44, 2, '', NULL, NULL, 49, 0, NULL, NULL, 0),
('2024-01-21 13:01:10', 45, 2, '', NULL, NULL, 50, 0, NULL, NULL, 0),
('2024-01-21 13:04:42', 46, 2, '', NULL, NULL, 51, 0, NULL, NULL, 0),
('2024-01-22 13:08:04', 47, 2, '', NULL, NULL, 52, 0, NULL, NULL, 0),
('2024-01-23 13:01:31', 48, 2, '', NULL, NULL, 53, 0, NULL, NULL, 0),
('2024-01-23 13:03:59', 49, 2, '', NULL, NULL, 54, 0, NULL, NULL, 0),
('2024-01-23 13:06:48', 50, 2, '', NULL, NULL, 55, 0, NULL, NULL, 0),
('2024-01-23 13:10:47', 51, 2, '', NULL, NULL, 56, 0, NULL, NULL, 0),
('2024-01-25 04:43:03', 52, 2, '', NULL, NULL, 57, 0, NULL, NULL, 0),
('2024-01-27 13:41:09', 53, 2, '', NULL, NULL, 58, 0, NULL, NULL, 0),
('2024-01-31 12:40:07', 54, 2, '', NULL, NULL, 59, 0, NULL, NULL, 0),
('2024-01-31 12:43:40', 55, 2, '', NULL, NULL, 60, 0, NULL, NULL, 0),
('2024-02-03 04:15:21', 56, 2, '', NULL, NULL, 61, 0, NULL, NULL, 0),
('2024-02-03 04:19:01', 57, 2, '', NULL, NULL, 62, 0, NULL, NULL, 0),
('2024-02-03 09:56:40', 58, 2, '', NULL, NULL, 63, 0, NULL, NULL, 0),
('2024-02-04 04:40:12', 59, 2, '', NULL, NULL, 64, 0, NULL, NULL, 0),
('2024-02-04 04:46:01', 60, 2, '', NULL, NULL, 65, 0, NULL, NULL, 0),
('2024-02-04 04:50:12', 61, 2, '', NULL, NULL, 66, 0, NULL, NULL, 0),
('2024-02-04 04:56:18', 62, 2, '', NULL, NULL, 67, 0, NULL, NULL, 0),
('2024-02-04 04:59:42', 63, 2, '', NULL, NULL, 68, 0, NULL, NULL, 0),
('2024-02-04 05:02:07', 64, 2, '', NULL, NULL, 69, 0, NULL, NULL, 0),
('2024-02-05 12:47:45', 65, 2, '', NULL, NULL, 70, 0, NULL, NULL, 0),
('2024-02-06 12:34:30', 66, 2, '', NULL, NULL, 71, 0, NULL, NULL, 0),
('2024-02-07 13:40:04', 67, 2, '', NULL, NULL, 72, 0, NULL, NULL, 0),
('2024-02-08 13:43:06', 68, 2, '', NULL, NULL, 73, 0, NULL, NULL, 0),
('2024-02-08 13:46:59', 69, 2, '', NULL, NULL, 74, 0, NULL, NULL, 0),
('2024-02-08 13:52:21', 70, 2, '', NULL, NULL, 75, 0, NULL, NULL, 0),
('2024-02-08 13:55:24', 71, 2, '', NULL, NULL, 76, 0, NULL, NULL, 0),
('2024-02-10 13:19:53', 72, 2, '', NULL, NULL, 77, 0, NULL, NULL, 0),
('2024-02-10 13:24:39', 73, 2, '', NULL, NULL, 78, 0, NULL, NULL, 0),
('2024-02-10 13:31:28', 74, 2, '', NULL, NULL, 79, 0, NULL, NULL, 0),
('2024-02-10 13:35:18', 75, 2, '', NULL, NULL, 80, 0, NULL, NULL, 0),
('2024-02-10 14:48:47', 76, 2, '', NULL, NULL, 81, 0, NULL, NULL, 0),
('2024-02-11 12:54:04', 77, 2, '', NULL, NULL, 82, 0, NULL, NULL, 0),
('2024-02-13 13:00:23', 78, 2, '', NULL, NULL, 83, 0, NULL, NULL, 0),
('2024-02-13 13:04:02', 79, 2, '', NULL, NULL, 84, 0, NULL, NULL, 0),
('2024-02-14 13:03:59', 80, 2, '', NULL, NULL, 85, 0, NULL, NULL, 0),
('2024-02-14 13:10:06', 81, 2, '', NULL, NULL, 86, 0, NULL, NULL, 0),
('2024-02-14 13:14:32', 82, 2, '', NULL, NULL, 87, 0, NULL, NULL, 0),
('2024-02-15 13:22:47', 83, 2, '', NULL, NULL, 88, 0, NULL, NULL, 0),
('2024-02-15 13:26:21', 84, 2, '', NULL, NULL, 89, 0, NULL, NULL, 0),
('2024-02-15 13:29:19', 85, 2, '', NULL, NULL, 90, 0, NULL, NULL, 0),
('2024-02-15 13:33:13', 86, 2, '', NULL, NULL, 91, 0, NULL, NULL, 0),
('2024-02-17 12:13:57', 87, 2, '', NULL, NULL, 92, 0, NULL, NULL, 0),
('2024-02-18 13:51:27', 88, 2, '', NULL, NULL, 93, 0, NULL, NULL, 0),
('2024-02-18 13:54:30', 89, 2, '', NULL, NULL, 94, 0, NULL, NULL, 0),
('2024-02-19 13:12:04', 90, 2, '', NULL, NULL, 95, 0, NULL, NULL, 0),
('2024-02-19 13:15:27', 91, 2, '', NULL, NULL, 96, 0, NULL, NULL, 0),
('2024-02-19 13:19:43', 92, 2, '', NULL, NULL, 97, 0, NULL, NULL, 0),
('2024-02-19 13:22:27', 93, 2, '', NULL, NULL, 98, 0, NULL, NULL, 0),
('2024-02-19 13:25:38', 94, 2, '', NULL, NULL, 99, 0, NULL, NULL, 0),
('2024-02-19 13:31:46', 95, 2, '', NULL, NULL, 100, 0, NULL, NULL, 0),
('2024-02-19 13:41:36', 96, 2, '', NULL, NULL, 101, 0, NULL, NULL, 0),
('2024-02-20 12:48:07', 97, 2, '', NULL, NULL, 102, 0, NULL, NULL, 0),
('2024-02-20 12:51:40', 98, 2, '', NULL, NULL, 103, 0, NULL, NULL, 0),
('2024-02-20 12:55:38', 99, 2, '', NULL, NULL, 104, 0, NULL, NULL, 0),
('2024-02-21 12:54:01', 100, 2, '', NULL, NULL, 105, 0, NULL, NULL, 0),
('2024-02-22 13:04:14', 101, 2, '', NULL, NULL, 106, 0, NULL, NULL, 0),
('2024-02-22 13:08:22', 102, 2, '', NULL, NULL, 107, 0, NULL, NULL, 0),
('2024-02-24 12:22:39', 103, 2, '', NULL, NULL, 108, 0, NULL, NULL, 0),
('2024-02-24 12:25:46', 104, 2, '', NULL, NULL, 109, 0, NULL, NULL, 0),
('2024-02-25 13:03:24', 105, 2, '', NULL, NULL, 110, 0, NULL, NULL, 0),
('2024-02-25 13:06:22', 106, 2, '', NULL, NULL, 111, 0, NULL, NULL, 0),
('2024-02-26 13:16:40', 107, 2, '', NULL, NULL, 112, 0, NULL, NULL, 0),
('2024-02-28 12:39:10', 108, 2, '', NULL, NULL, 113, 0, NULL, NULL, 0),
('2024-02-28 12:43:55', 109, 2, '', NULL, NULL, 114, 0, NULL, NULL, 0),
('2024-02-28 12:56:39', 110, 2, '', NULL, NULL, 115, 0, NULL, NULL, 0),
('2024-02-29 14:08:53', 111, 2, '', NULL, NULL, 116, 0, NULL, NULL, 0),
('2024-03-04 13:51:12', 112, 2, '', NULL, NULL, 117, 0, NULL, NULL, 0),
('2024-03-05 05:30:40', 113, 2, '', NULL, NULL, 118, 0, NULL, NULL, 0),
('2024-03-05 05:36:02', 114, 2, '', NULL, NULL, 119, 0, NULL, NULL, 0),
('2024-03-05 12:05:07', 115, 2, '', NULL, NULL, 120, 0, NULL, NULL, 0),
('2024-03-05 12:08:07', 116, 2, '', NULL, NULL, 121, 0, NULL, NULL, 0),
('2024-03-05 12:11:05', 117, 2, '', NULL, NULL, 122, 0, NULL, NULL, 0),
('2024-03-05 12:14:02', 118, 2, '', NULL, NULL, 123, 0, NULL, NULL, 0),
('2024-03-06 12:02:23', 119, 2, '', NULL, NULL, 124, 0, NULL, NULL, 0),
('2024-03-06 12:05:10', 120, 2, '', NULL, NULL, 125, 0, NULL, NULL, 0),
('2024-03-06 12:08:56', 121, 2, '', NULL, NULL, 126, 0, NULL, NULL, 0),
('2024-03-06 12:11:32', 122, 2, '', NULL, NULL, 127, 0, NULL, NULL, 0),
('2024-03-07 12:56:01', 123, 2, '', NULL, NULL, 128, 0, NULL, NULL, 0),
('2024-03-07 13:00:31', 124, 2, '', NULL, NULL, 129, 0, NULL, NULL, 0),
('2024-03-13 08:49:22', 125, 2, '', NULL, NULL, 130, 0, NULL, NULL, 0),
('2024-03-13 09:10:13', 126, 2, '', NULL, NULL, 131, 0, NULL, NULL, 0),
('2024-03-17 05:33:40', 127, 2, '', NULL, NULL, 132, 0, NULL, NULL, 0),
('2024-03-17 05:40:07', 128, 2, '', NULL, NULL, 133, 0, NULL, NULL, 0),
('2024-03-19 10:28:42', 129, 2, '', NULL, NULL, 134, 0, NULL, NULL, 0),
('2024-03-19 10:31:57', 130, 2, '', NULL, NULL, 135, 0, NULL, NULL, 0),
('2024-03-21 13:30:20', 131, 2, '', NULL, NULL, 136, 0, NULL, NULL, 0),
('2024-03-23 10:45:46', 132, 2, '', NULL, NULL, 137, 0, NULL, NULL, 0),
('2024-03-23 10:50:49', 133, 2, '', NULL, NULL, 138, 0, NULL, NULL, 0),
('2024-03-24 13:14:35', 134, 2, '', NULL, NULL, 139, 0, NULL, NULL, 0),
('2024-03-25 12:52:33', 135, 2, '', NULL, NULL, 140, 0, NULL, NULL, 0),
('2024-03-25 13:00:22', 136, 2, '', NULL, NULL, 141, 0, NULL, NULL, 0),
('2024-03-26 13:15:33', 137, 2, '', NULL, NULL, 142, 0, NULL, NULL, 0),
('2024-03-26 13:18:50', 138, 2, '', NULL, NULL, 143, 0, NULL, NULL, 0),
('2024-03-26 13:22:24', 139, 2, '', NULL, NULL, 144, 0, NULL, NULL, 0),
('2024-03-26 13:25:38', 140, 2, '', NULL, NULL, 145, 0, NULL, NULL, 0),
('2024-03-27 13:20:37', 141, 2, '', NULL, NULL, 146, 0, NULL, NULL, 0),
('2024-03-28 13:02:54', 142, 2, '', NULL, NULL, 147, 0, NULL, NULL, 0),
('2024-03-28 13:11:16', 143, 2, '', NULL, NULL, 148, 0, NULL, NULL, 0),
('2024-03-30 13:12:58', 144, 2, '', NULL, NULL, 149, 0, NULL, NULL, 0),
('2024-03-30 13:16:32', 145, 2, '', NULL, NULL, 150, 0, NULL, NULL, 0),
('2024-03-30 13:19:17', 146, 2, '', NULL, NULL, 151, 0, NULL, NULL, 0),
('2024-03-30 13:22:47', 147, 2, '', NULL, NULL, 152, 0, NULL, NULL, 0),
('2024-03-30 13:28:26', 148, 2, '', NULL, NULL, 153, 0, NULL, NULL, 0),
('2024-03-30 13:31:41', 149, 2, '', NULL, NULL, 154, 0, NULL, NULL, 0),
('2024-04-01 15:26:26', 150, 2, '', NULL, NULL, 155, 0, NULL, NULL, 0),
('2024-04-02 13:10:03', 151, 2, '', NULL, NULL, 156, 0, NULL, NULL, 0),
('2024-04-02 13:12:41', 152, 2, '', NULL, NULL, 157, 0, NULL, NULL, 0),
('2024-04-02 13:15:55', 153, 2, '', NULL, NULL, 158, 0, NULL, NULL, 0),
('2024-04-03 13:21:29', 154, 2, '', NULL, NULL, 159, 0, NULL, NULL, 0),
('2024-04-03 13:24:19', 155, 2, '', NULL, NULL, 160, 0, NULL, NULL, 0),
('2024-04-03 13:34:14', 156, 2, '', NULL, NULL, 161, 0, NULL, NULL, 0),
('2024-04-03 13:36:52', 157, 2, '', NULL, NULL, 162, 0, NULL, NULL, 0),
('2024-04-04 14:27:10', 158, 2, '', NULL, NULL, 163, 0, NULL, NULL, 0),
('2024-04-04 14:32:09', 159, 2, '', NULL, NULL, 164, 0, NULL, NULL, 0),
('2024-04-04 14:34:40', 160, 2, '', NULL, NULL, 165, 0, NULL, NULL, 0),
('2024-04-04 14:37:10', 161, 2, '', NULL, NULL, 166, 0, NULL, NULL, 0),
('2024-04-04 14:40:19', 162, 2, '', NULL, NULL, 167, 0, NULL, NULL, 0),
('2024-04-05 09:14:12', 163, 2, '', NULL, NULL, 168, 0, NULL, NULL, 0),
('2024-04-06 05:22:57', 164, 2, '', NULL, NULL, 169, 0, NULL, NULL, 0),
('2024-04-07 13:04:21', 165, 2, '', NULL, NULL, 170, 0, NULL, NULL, 0),
('2024-04-07 13:08:33', 166, 2, '', NULL, NULL, 171, 0, NULL, NULL, 0),
('2024-04-07 13:11:43', 167, 2, '', NULL, NULL, 172, 0, NULL, NULL, 0),
('2024-04-07 13:14:31', 168, 2, '', NULL, NULL, 173, 0, NULL, NULL, 0),
('2024-04-07 13:43:33', 169, 2, '', NULL, NULL, 174, 0, NULL, NULL, 0),
('2024-04-07 14:50:10', 170, 2, '', NULL, NULL, 175, 0, NULL, NULL, 0),
('2024-04-08 11:48:10', 171, 2, '', NULL, NULL, 176, 0, NULL, NULL, 0),
('2024-04-08 11:51:35', 172, 2, '', NULL, NULL, 177, 0, NULL, NULL, 0),
('2024-04-08 11:56:49', 173, 2, '', NULL, NULL, 178, 0, NULL, NULL, 0),
('2024-04-08 12:00:50', 174, 2, '', NULL, NULL, 179, 0, NULL, NULL, 0),
('2024-04-08 12:03:39', 175, 2, '', NULL, NULL, 180, 0, NULL, NULL, 0),
('2024-04-08 13:32:20', 176, 2, '', NULL, NULL, 181, 0, NULL, NULL, 0),
('2024-04-09 04:50:50', 177, 2, '', NULL, NULL, 182, 0, NULL, NULL, 0),
('2024-04-09 13:09:24', 178, 2, '', NULL, NULL, 183, 0, NULL, NULL, 0),
('2024-04-09 13:12:10', 179, 2, '', NULL, NULL, 184, 0, NULL, NULL, 0),
('2024-04-09 13:15:36', 180, 2, '', NULL, NULL, 185, 0, NULL, NULL, 0),
('2024-04-09 13:18:09', 181, 2, '', NULL, NULL, 186, 0, NULL, NULL, 0),
('2024-04-09 13:20:46', NULL, 2, '', NULL, NULL, 187, 0, NULL, NULL, 0),
('2024-04-09 13:24:03', 183, 2, '', NULL, NULL, 188, 0, NULL, NULL, 0),
('2024-04-09 13:26:34', 184, 2, '', NULL, NULL, 189, 0, NULL, NULL, 0),
('2024-04-13 12:28:12', 185, 2, '', NULL, NULL, 190, 0, NULL, NULL, 0),
('2024-04-13 12:30:40', 186, 2, '', NULL, NULL, 191, 0, NULL, NULL, 0),
('2024-04-13 12:33:48', 187, 2, '', NULL, NULL, 192, 0, NULL, NULL, 0),
('2024-04-13 12:35:52', 188, 2, '', NULL, NULL, 193, 0, NULL, NULL, 0),
('2024-04-13 12:37:45', 189, 2, '', NULL, NULL, 194, 0, NULL, NULL, 0),
('2024-04-13 12:40:14', 190, 2, '', NULL, NULL, 195, 0, NULL, NULL, 0),
('2024-04-13 12:42:30', 191, 2, '', NULL, NULL, 196, 0, NULL, NULL, 0),
('2024-04-13 12:45:00', 192, 2, '', NULL, NULL, 197, 0, NULL, NULL, 0),
('2024-04-13 12:47:13', 193, 2, '', NULL, NULL, 198, 0, NULL, NULL, 0),
('2024-04-14 04:40:32', 194, 2, '', NULL, NULL, 199, 0, NULL, NULL, 0),
('2024-04-14 04:43:38', 195, 2, '', NULL, NULL, 200, 0, NULL, NULL, 0),
('2024-04-14 04:45:43', 196, 2, '', NULL, NULL, 201, 0, NULL, NULL, 0),
('2024-04-14 11:51:15', 197, 2, '', NULL, NULL, 202, 0, NULL, NULL, 0),
('2024-04-14 11:54:21', 198, 2, '', NULL, NULL, 203, 0, NULL, NULL, 0),
('2024-04-14 11:57:24', 199, 2, '', NULL, NULL, 204, 0, NULL, NULL, 0),
('2024-04-14 12:01:50', 200, 2, '', NULL, NULL, 205, 0, NULL, NULL, 0),
('2024-04-15 12:37:00', 201, 2, '', NULL, NULL, 206, 0, NULL, NULL, 0),
('2024-04-15 12:40:09', 202, 2, '', NULL, NULL, 207, 0, NULL, NULL, 0),
('2024-04-15 12:42:50', 203, 2, '', NULL, NULL, 208, 0, NULL, NULL, 0),
('2024-04-15 12:45:16', 204, 2, '', NULL, NULL, 209, 0, NULL, NULL, 0),
('2024-04-15 12:47:30', 205, 2, '', NULL, NULL, 210, 0, NULL, NULL, 0),
('2024-04-16 13:25:12', 206, 2, '', NULL, NULL, 211, 0, NULL, NULL, 0),
('2024-04-16 13:37:25', 207, 2, '', NULL, NULL, 212, 0, NULL, NULL, 0),
('2024-04-28 14:11:46', 208, 2, '', NULL, NULL, 213, 0, NULL, NULL, 0),
('2024-05-02 13:09:59', 209, 2, '', NULL, NULL, 214, 0, NULL, NULL, 0),
('2024-05-02 13:13:21', 210, 2, '', NULL, NULL, 215, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items`
--

CREATE TABLE `ospos_sales_items` (
  `sale_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int NOT NULL DEFAULT '0',
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT '0.000',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount_type` tinyint(1) NOT NULL DEFAULT '0',
  `item_location` int NOT NULL,
  `print_option` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_sales_items`
--

INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount`, `discount_type`, `item_location`, `print_option`) VALUES
(6, 16, 'PSUA11CY0PTF18348', 'DHXPPD71789', 1, 1.000, 216950.00, 225000.00, 0.00, 0, 1, 0),
(10, 2, 'PSUB44BY4PTJ95600', 'JZXPPH96379', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(11, 3, 'PSUB44BY2PTF89759', 'JZXPPE88699', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(12, 4, 'PSUA15AZ6PTJ13246', 'JBXPPF68373', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(13, 19, 'PSUA11CY1PTJ27187', 'DHXPPG75364', 1, 1.000, 184775.00, 192750.00, 0.00, 0, 1, 0),
(14, 4, 'PSUA15AZ0PTJ13274', 'JBXPPF68219', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(15, 4, 'PSUA15AZ7PTH12398', 'JBXPPF67647', 1, 1.000, 143250.00, 149000.00, 1000.00, 1, 1, 0),
(16, 15, 'PSUA11CY0PTJ26970', 'DHXPPF53883', 1, 1.000, 216950.00, 225000.00, 2000.00, 1, 1, 0),
(17, 4, 'PSUA15AZ1PTH12400', 'JBXPPF67667', 1, 1.000, 143250.00, 149000.00, 1000.00, 1, 1, 0),
(18, 13, 'PSUB97FY7PTH00122', 'PDXCPM95061', 1, 1.000, 317999.00, 339999.00, 0.00, 0, 1, 0),
(19, 19, 'PSUA11CY4PTG22938', 'DHXPPD59638', 1, 1.000, 184775.00, 192750.00, 0.00, 0, 1, 0),
(20, 4, 'PSUA15AZ8PTH12409', 'JBXPPF67661', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(22, 2, 'PSUB44BY2PTJ94509', 'JZXPPG93873', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(23, 4, 'PSUA15AZ8PTH12927', 'JBXPPF67016', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(24, 19, 'PSUA11CY0PTJ27083', 'DHXPPG78409', 1, 1.000, 184775.00, 192750.00, 0.00, 0, 1, 0),
(25, 1, 'PSUB44BY5PTJ95802', 'JZXPPH96210', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(26, 1, 'PSUB44BY7PTJ95834', 'JZXPPH96838', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(28, 15, 'PSUA11CY5PTJ26821 ', 'DHXPPF51972', 1, 1.000, 216950.00, 225000.00, 0.00, 0, 1, 0),
(29, 4, 'PSUA15AZ7PTH12031', 'JBXPPF68235', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(30, 5, 'PSUA15AZ9PTJ13712', 'JBXPPF68554', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(31, 1, 'PSUB44BY4PTJ95449', 'JZXPPG94439', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(32, 1, 'PSUB44BY0PTJ95822', 'JZXPPH96713', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(33, 1, 'PSUB44BY2RTK96041 ', 'JZXPPG95134', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(34, 20, 'PSUA11CY6PTJ26732', 'DHXPPG73712', 1, 1.000, 184750.00, 192750.00, 0.00, 0, 1, 0),
(35, 1, 'PSUB44BY9RTK95937 ', 'JZXPPG95258', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(36, 1, 'PSUB44BYXPTJ95827', 'JZXPPH96847', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(37, 5, 'PSUA15AZ9PTJ13709', 'JBXPPF68791', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(38, 4, 'PSUA15AZ6TH12392', 'JBXPPF67652', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(39, 2, 'PSUB44BY7PTJ95574', 'JZXPPH96743', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(40, 19, 'PSUA11CY8PTJ27168', 'DHXPPG78569', 1, 1.000, 184775.00, 192750.00, 0.00, 0, 1, 0),
(41, 1, 'PSUB44BY1PTJ95828', 'JZXPPH96231', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(42, 4, 'PSUA15AZ6PTH12960', 'JBXPPF67664', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(43, 1, 'PSUB44BY3PTJ95409', 'JZXPPG93948', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(44, 4, 'PSUA15AZ2PTH12017', 'JBXPPF67394', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(45, 4, 'PSUA15AZXPTH12945', 'JBXPPF67010', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(46, 19, 'PSUA11CY6PTJ27184', 'DHXPPG78569', 1, 1.000, 184775.00, 192750.00, 0.00, 0, 1, 0),
(47, 4, 'PSUA15AZ9PTH12614', 'JBXPPF67566', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(48, 1, 'PSUB44BY3RTK95948 ', 'JZXPPG95270', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(49, 7, 'PSUA76AYXRTK65328 ', 'PFXPPG46831', 1, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(50, 7, 'PSUA76AY2RTK65257 ', 'PFXPPG46731', 1, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(51, 4, 'PSUA15AZ7PTH12403', 'JBXPPF67600', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(52, 2, 'PSUB44BY3RTK96341 ', 'JZXPPG94693', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(53, 1, 'PSUB44BY5PTJ95430', 'JZXPPG94504', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(54, 2, 'PSUB44BY8RTK96349 ', 'JZXPPG94618', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(55, 17, 'PSUA11CY8PTH24615', 'DHXPPF66815', 1, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(56, 1, 'PSUB44BY4PTJ95807', 'JZXPPH96265', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(57, 4, 'PSUA15AZ9PTJ13306', 'JBXPPF68435', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(58, 17, 'PSUA11CY8PTH24453', 'DHXPPF66755', 1, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(59, 1, 'PSUB44BY0RTK97253 ', 'JZXPPH97160', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(60, 4, 'PSUA15AZ6RTK14287 ', 'JBXPPG81238', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(61, 1, 'PSUB44BY0RTK97818 ', 'JZXPPH95858', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(62, 5, 'PSUA15AZ6RTK14449 ', 'JBXPPG81186', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(63, 4, 'PSUA15AZ1RTK14388 ', 'JBXPPG81327', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(64, 2, 'PSUB44BY3RTK97750 ', 'JZXPPH95816', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(65, 4, 'PSUA15AZ1RTK14181 ', 'JBXPPG81019', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(65, 4, '', '', 2, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(66, 19, 'PSUA11CY0PTJ28055', 'DHXPPF50712', 1, 1.000, 184775.00, 192750.00, 0.00, 0, 1, 0),
(67, 7, 'PSUA76AY5RTK65317 ', 'PFXPPG46779', 1, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(68, 10, 'PSUB37AY7PTG11061', 'PFXWPF42975', 1, 1.000, 114250.00, 120000.00, 0.00, 0, 1, 0),
(69, 4, 'PSUA15AZ5PTJ13609', 'JBXPPF68810', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(70, 15, 'PSUA11CY3RTK29089 ', 'DHXPPF56282', 1, 1.000, 216950.00, 225000.00, 0.00, 0, 1, 0),
(71, 4, 'PSUA15AZ8PTE08965', 'JBXPPA63517', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(72, 1, '', '', 3, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(73, 2, 'PSUB44BY2RTK98534 ', 'JZXPPH98135', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(74, 15, 'PSUA11CY9RTK29078 ', 'DHXPPF56276', 1, 1.000, 216950.00, 225000.00, 0.00, 0, 1, 0),
(75, 2, 'PSUB44BY5RTK97393 ', 'JZXPPG94251', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(76, 17, 'PSUA11CY5PTJ27337', 'DHXPPF81462', 1, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(77, 4, 'PSUA15AZXRTL14568 ', 'JBXPPG80565', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(78, 4, 'PSUA15AZ2RTL14516 ', 'JBXPPG80873', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(79, 1, 'PSUB44BY5RTK98737 ', 'JZXPPH98102', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(80, 4, 'PSUA15AZ7RTL14799 ', 'JBXPPG80135', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(81, 4, 'PSUA15AZ3RTL14492 ', 'JBXPPG81480', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(82, 3, 'PSUB44BY4RTK97367', 'JXCPPG94930', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(83, 1, '', '', 4, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(83, 1, '', '', 5, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(83, 7, '', '', 3, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(84, 1, 'PSUB44BY0RTK97706 ', 'JZXPPG94978', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(85, 1, 'PSUB44BY4PTJ95791', 'JZXPPH96561', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(86, 16, 'PSUA11CY8PTJ27008 ', 'DHXPPF52060', 1, 1.000, 216950.00, 225000.00, 0.00, 0, 1, 0),
(87, 1, 'PSUB44BY3RTK98722 ', 'JZXPPH98046', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(88, 4, 'PSUA15AZ4RTL14789 ', 'JBXPPG80131', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(89, 1, 'PSUB44BY9RTK98739 ', 'JZXPPH97912', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(90, 1, 'PSUB44BY0RTK98693 ', 'JZXPPH97940', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(91, 1, 'PSUB44BY3RTK98736 ', 'JZXPPH97850', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(92, 4, 'PSUA15AZ7RTL14785 ', 'JBXPPG80766', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(93, 4, 'PSUA15AZ8RTL14777 ', 'JBXPPG80688', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(94, 2, 'PSUB44BY1RTK97746 ', 'JZXPPH95795', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(95, 1, 'PSUB44BY9RTL00294 ', 'JZXPPH99227', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(96, 1, 'PSUB44BY5RTL00096 ', 'JZXPPH98252', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(97, 4, 'PSUA15AZ1RTL14782 ', 'JBXPPG80271', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(98, 4, 'PSUA15AZ3RTL14752 ', 'JBXPPG69402', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(99, 1, 'PSUB44BY4RTL00297 ', 'JZXPPH99381', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(100, 16, 'PSUA11CYXPTJ27026', 'DHXPPF53849', 1, 1.000, 216950.00, 225000.00, 0.00, 0, 1, 0),
(101, 1, 'PSUB44BY4RTL00333 ', 'JZXPPH99324', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(102, 17, '', '', 2, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(102, 18, 'PSUA11CY1RTL31622 ', 'DHXPPH34367', 1, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(103, 1, 'PSUB44BY1RTL00323 ', 'JZXPPH99394', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(104, 4, 'PSUA15AZ3RTL14766 ', 'JBXPPG80222', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(105, 24, 'PSUB44BY2PTC82602', 'JZXPNE63869', 1, 1.000, 153175.00, 160500.00, 0.00, 0, 1, 0),
(106, 2, 'PSUB44BY0RTL00264 ', 'JZXPPH99394', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(107, 4, 'PSUA15AZ9RTL14531 ', 'JBXPPG81306', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(108, 7, 'PSUA76AY6RTL65636 ', 'PFXPPG48618', 1, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(109, 1, 'PSUB44BY4RTL00350 ', 'JZXPPH99039', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(110, 1, 'PSUB44BY2RTL00220 ', 'JZXPPH98486', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(111, 13, 'PSUB97FY0PTH00141 ', 'PDXCPM94334', 1, 1.000, 317999.00, 339999.00, 0.00, 0, 1, 0),
(112, 17, 'PSUA11CY6RTL33253 ', 'DHXPPJ78845', 1, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(113, 4, '', '', 4, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(113, 4, '', '', 5, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(113, 4, '', '', 7, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(113, 19, '', '', 6, 1.000, 184775.00, 192750.00, 0.00, 0, 1, 0),
(114, 5, '', '', 2, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(115, 1, 'PSUB44BY9RTL00876 ', 'JZXPPH99729', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(116, 1, 'PSUB44BY3RTL00887 ', 'JZXPPH99813', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(117, 7, '', '', 3, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(117, 7, '', '', 4, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(118, 19, 'PSUA11CY9PTJ28054', 'DHXPPF51954', 1, 1.000, 184775.00, 192750.00, 0.00, 0, 1, 0),
(119, 1, '', '', 2, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(119, 1, '', '', 3, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(120, 1, 'PSUB44BY6RTL00365 ', 'JZXPPH99210', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(121, 19, 'PSUA11CY2PTJ27179', 'DHXPPG75307', 1, 1.000, 184775.00, 192750.00, 0.00, 0, 1, 0),
(122, 1, 'PSUB44BY5RTL00220 ', 'JZXPPH98486', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(123, 20, 'PSUA11CY4PTJ28186', 'DHXPPF51907', 1, 1.000, 184750.00, 192750.00, 0.00, 0, 1, 0),
(124, 4, 'PSUA15AZ2RTL14788 ', 'JBXPPG80132', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(125, 4, 'PSUA15AZ1RTL14958 ', 'JBXPPG80879', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(126, 1, 'PSUB44BY4RTL00882 ', 'JZXPPH99735', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(127, 1, 'PSUB44BY5RTL00812 ', 'JZXPPH99470', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(128, 1, 'PSUB44BY2RTL00878 ', 'JZXPPH99734', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(129, 21, 'PSUA11CY2PTD14862', 'DHXPPB56246', 1, 1.000, 208950.00, 217000.00, 0.00, 0, 1, 0),
(130, 1, 'PSUB44BY3RTL00324 ', 'JZXPPH99318', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(131, 7, '', '', 2, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(131, 7, '', '', 3, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(132, 17, 'PSUA11CY6RTM34258', 'DHXPPJ90802', 1, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(133, 7, 'PSUA76AYXRTL65638 ', 'PFXPPG46927', 1, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(134, 1, 'PSUB44BY9RTL02403', 'JZXPPJ52744', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(135, 1, 'PSUB44BY1RTM03533', 'JZXPPJ52043', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(136, 1, 'PSUB44BY1RTL00886 ', 'JZXPPH99809', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(137, 1, 'PSUB44BY2RTM03511', 'JZXPPJ52208', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(138, 4, 'PSUA15AZ1RTL14751', 'JBXPPG80100', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(139, 1, 'PSUB44BY8RTL00870 ', 'JZXPPH99862', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(140, 4, 'PSUA15AZ6RTL14793 ', 'JBXPPG80101', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(141, 1, 'PSUB44BY8RTM03531', 'JZXPPJ52040', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(142, 1, 'PSUB44BY0RTK97852 ', 'JZXPPH96141', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(143, 1, 'PSUB44BY5RTM04409', 'JZXPPJ52490', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(144, 15, 'PSUA11CY6RTK29071', 'DHXPPF52256', 1, 1.000, 216950.00, 225000.00, 0.00, 0, 1, 0),
(145, 17, 'PSUA11CY2RTM35231', 'DHXPPJ88435', 1, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(146, 19, 'PSUA11CY2RTM34001', 'DHXPPH19874', 1, 1.000, 184775.00, 192750.00, 0.00, 0, 1, 0),
(147, 3, 'PSUB44BY6RTM03382', 'JZXPPJ50304', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(148, 7, 'PSUA76AY4RTK65230 ', 'PFXPPG46658', 1, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(149, 1, 'PSUB44BY6RTM04385', 'JZXPPJ52572', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(150, 11, '', '', 4, 1.000, 114250.00, 120000.00, 0.00, 0, 1, 0),
(150, 12, '', '', 3, 1.000, 114250.00, 120000.00, 0.00, 0, 1, 0),
(151, 1, 'PSUB44Y1RTM04598', 'JZXPPJ50118', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(152, 17, 'PSUA11CY3RTM36985', 'DHXPRK36601', 1, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(153, 8, 'PSUA76AY1PTG65052', 'PFXPPF93119', 1, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(154, 4, 'PSUA15AZ2RTM16432', 'JBXPPG81720', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(155, 1, 'PSUB44BY4RTM05499', 'JZXPPH98548', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(156, 1, 'PSUB44BY9RTM04946', 'JZXPPJ53568', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(157, 5, 'PSUA15AZ5PTH12299', 'JBXPPF68012', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(158, 4, 'PSUA15AZ3RTM16195', 'JBXPPG69573', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(159, 7, 'PSUA76AY3RTM65905', 'PFXPPJ20352', 1, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(160, 1, 'PSUB44Y0RTM04690', 'JZXPPJ50614', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(161, 15, 'PSUA11CY9RTK29145', 'DHXPPF56161', 1, 1.000, 216950.00, 225000.00, 0.00, 0, 1, 0),
(162, 1, 'PSUB44BY1RTM05279', 'JZXPPJ53591', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(163, 14, 'MD2B54DX6PCA91242', 'PDXCPM99325', 1, 1.000, 247900.00, 269900.00, 0.00, 0, 1, 0),
(164, 4, 'PSUA15AZ5RTM16165', 'JBXPPG69435', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(165, 7, 'PSUA76AY6RTM65803', 'PFXPPJ20369', 1, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(166, 1, 'PSUB44BY9RTM04560', 'JZXPPJ52407', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(167, 4, 'PSUA15AZ2RTM16186', 'JBXPPG69632', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(168, 1, 'PSUB44BY6RTM05388', 'JZXPPJ99059', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(169, 1, 'PSUB44Y9RTM04655', 'JZXPPJ50678', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(170, 4, 'PSUA15AZ5RTM16344', 'JBXPPG80486', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(171, 5, 'PSUA15AZ8PTJ13393', 'JBXPPF68405', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(172, 1, 'PSUB44BY7RTM04931', 'JZXPPJ53835', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(173, 1, 'PSUB44BY2RTA05962', 'JZXPRL54979', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(174, 17, 'PSUA11CYXRTM35008', 'DHXPPJ88586', 1, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(175, 7, 'PSUA76AY0RTL65647 ', 'PFXPPG46681', 1, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(176, 17, '', '', 2, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(176, 17, '', '', 3, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(176, 17, '', '', 4, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(177, 17, 'PSUA11CY8RTM37968', 'DHXPRK31775', 1, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(178, 5, 'PSUA15AZXPTJ13394', 'JBXPPF68400', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(179, 1, 'PSUB44BY3RTA06408', 'JZXWRL02552', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(180, 1, 'PSUB44BY5RTM02711', 'JZXPPJ51258', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(181, 2, '', '', 2, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(181, 2, '', '', 3, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(182, 4, 'PSUA15AZ6RTM16434', 'JBXPPG81712', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(183, 4, 'PSUA15AZ4RTM16058', 'JBXPPG69494', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(184, 17, 'PSUA11CY8RTM35072', 'DHXPPJ80924', 1, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(185, 1, 'PSUB44BYXPTH94326', 'JZXPPF92679', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(186, 1, 'PSUB44BY9RTL02210', 'JZXPPJ52881', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(187, 17, 'PSUA11CY9RTM37980', 'DHXPRK31610', 1, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(188, 4, 'PSUA15AZXRTL14554', 'JBXPPG81048', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(189, 1, 'PSUB44BY3RTM05218', 'JZXPPJ53952', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(190, 4, 'PSUA15AZ5RTL14770', 'JBXPPG80690', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(191, 4, 'PSUA15AZ3RTM15998', 'JBXPPG69620', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(192, 20, 'PSUA11CY0RTM37382', 'DHXPPG75326', 1, 1.000, 184750.00, 192750.00, 0.00, 0, 1, 0),
(193, 2, 'PSUB44BYRTA07383', 'JZXPRK54602', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(194, 4, 'PSUA15AZ7RTL14897 ', 'JBXPPG81134', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(195, 1, 'PSUB44BY9RTA07286', 'FZXPRK54405', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(196, 1, 'PSUB44BY0RTA07127', 'FZXPRK54374', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(197, 4, 'PSUA15AZ2RTL14774 ', 'JBXPPG80020', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(198, 1, 'PSUB44BY7RTA07318', 'FZXPRK54504', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(199, 1, 'PSUB44BY8RTM05179', 'JZXPPJ53841', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(200, 4, 'PSUA15AZ5RTM16105', 'JBXPPG69657', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(201, 21, 'PSUA11CY6PTD14847', 'DHXPPB56288', 1, 1.000, 208950.00, 217000.00, 0.00, 0, 1, 0),
(202, 1, 'PSUB44BY4RTM05132', 'JZXPPJ53607', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(203, 7, 'PSUA76AY9RTM65858', 'PFXPPJ20399', 1, 1.000, 122250.00, 128000.00, 0.00, 0, 1, 0),
(204, 4, 'PSUA15AZ0RTM16056', 'JBXPPG69539', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(205, 1, 'PSUB44BY4RTL00364 ', 'JZXPPH98933', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(206, 1, 'PSUB44BY5RTA06409', 'JZXWRL01874', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(207, 1, 'PSUB44BY2RTM05193', 'JZXPPJ53774', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(208, 1, 'PSUB44BY3RTK98669 ', 'JZXPPH98130', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(209, 17, 'PSUA11CY4RTM35019', 'DHXPPJ86806', 1, 1.000, 194775.00, 202750.00, 0.00, 0, 1, 0),
(210, 4, 'PSUA15AZ1RTL14619 ', 'JBXPPG80889', 1, 1.000, 143250.00, 149000.00, 0.00, 0, 1, 0),
(211, 3, '', '', 2, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(212, 2, 'PSUB44BY3RTM04859', 'JZXPPJ50244', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(213, 2, 'PSUB44BY4RTA07759', 'JZXPRL54304', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(214, 1, 'PSUB44BY7RTA08386', 'JZXPRL55875', 1, 1.000, 154175.00, 160500.00, 0.00, 0, 1, 0),
(215, 19, 'PSUA11CY9RTM33993', 'DHXPPH19884', 1, 1.000, 184775.00, 192750.00, 0.00, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items_taxes`
--

CREATE TABLE `ospos_sales_items_taxes` (
  `sale_id` int NOT NULL,
  `item_id` int NOT NULL,
  `line` int NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax_type` tinyint(1) NOT NULL DEFAULT '0',
  `rounding_code` tinyint(1) NOT NULL DEFAULT '0',
  `cascade_sequence` tinyint(1) NOT NULL DEFAULT '0',
  `item_tax_amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sales_tax_code_id` int DEFAULT NULL,
  `jurisdiction_id` int DEFAULT NULL,
  `tax_category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_payments`
--

CREATE TABLE `ospos_sales_payments` (
  `payment_id` int NOT NULL,
  `sale_id` int NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL,
  `cash_refund` decimal(15,2) NOT NULL DEFAULT '0.00',
  `cash_adjustment` tinyint NOT NULL DEFAULT '0',
  `employee_id` int DEFAULT NULL,
  `payment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_code` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_sales_payments`
--

INSERT INTO `ospos_sales_payments` (`payment_id`, `sale_id`, `payment_type`, `payment_amount`, `cash_refund`, `cash_adjustment`, `employee_id`, `payment_time`, `reference_code`) VALUES
(6, 6, 'Cash', 225000.00, 0.00, 0, 1, '2024-01-03 06:03:26', ''),
(10, 10, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-04 09:41:56', ''),
(11, 11, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-04 09:45:17', ''),
(12, 12, 'Cash', 149000.00, 0.00, 0, 2, '2024-01-04 09:48:17', ''),
(13, 13, 'Cash', 192750.00, 0.00, 0, 2, '2024-01-04 11:24:08', ''),
(14, 14, 'Cash', 149000.00, 0.00, 0, 2, '2024-01-04 12:18:09', ''),
(15, 15, 'Cash', 148000.00, 0.00, 0, 2, '2024-01-06 12:13:29', ''),
(16, 16, 'Cash', 223000.00, 0.00, 0, 2, '2024-01-06 12:24:37', ''),
(17, 17, 'Cash', 148000.00, 0.00, 0, 2, '2024-01-06 12:30:51', ''),
(18, 18, 'Cash', 339999.00, 0.00, 0, 2, '2024-01-06 14:57:06', ''),
(19, 19, 'Cash', 192750.00, 0.00, 0, 2, '2024-01-08 13:11:09', ''),
(20, 20, 'Cash', 149000.00, 0.00, 0, 2, '2024-01-08 13:13:38', ''),
(21, 22, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-09 12:48:11', ''),
(22, 23, 'Cash', 149000.00, 0.00, 0, 2, '2024-01-09 13:38:30', ''),
(23, 24, 'Cash', 192750.00, 0.00, 0, 2, '2024-01-10 05:52:16', ''),
(24, 25, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-10 10:37:26', ''),
(25, 26, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-10 13:26:29', ''),
(27, 28, 'Cash', 225000.00, 0.00, 0, 2, '2024-01-11 11:38:51', ''),
(28, 29, 'Cash', 149000.00, 0.00, 0, 2, '2024-01-11 11:45:34', ''),
(29, 30, 'Cash', 149000.00, 0.00, 0, 2, '2024-01-11 11:54:33', ''),
(30, 31, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-11 12:00:21', ''),
(31, 32, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-11 12:04:24', ''),
(32, 33, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-11 12:07:29', ''),
(33, 34, 'Cash', 192750.00, 0.00, 0, 2, '2024-01-11 13:00:44', ''),
(34, 35, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-13 13:07:18', ''),
(35, 36, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-15 12:48:51', ''),
(36, 37, 'Cash', 149000.00, 0.00, 0, 2, '2024-01-15 12:50:36', ''),
(37, 38, 'Cash', 149000.00, 0.00, 0, 2, '2024-01-15 12:58:50', ''),
(38, 39, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-16 10:30:51', ''),
(39, 40, 'Cash', 192750.00, 0.00, 0, 2, '2024-01-16 10:44:43', ''),
(40, 41, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-16 10:47:29', ''),
(41, 42, 'Cash', 149000.00, 0.00, 0, 2, '2024-01-17 12:24:53', ''),
(42, 43, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-17 12:27:08', ''),
(43, 44, 'Cash', 149000.00, 0.00, 0, 2, '2024-01-17 12:29:03', ''),
(44, 45, 'Cash', 149000.00, 0.00, 0, 2, '2024-01-18 13:13:44', ''),
(45, 46, 'Cash', 192750.00, 0.00, 0, 2, '2024-01-18 13:15:19', ''),
(46, 47, 'Cash', 149000.00, 0.00, 0, 2, '2024-01-18 13:17:02', ''),
(47, 48, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-20 04:48:55', ''),
(48, 49, 'Cash', 128000.00, 0.00, 0, 2, '2024-01-20 11:50:01', ''),
(49, 50, 'Cash', 128000.00, 0.00, 0, 2, '2024-01-21 13:01:10', ''),
(50, 51, 'Cash', 149000.00, 0.00, 0, 2, '2024-01-21 13:04:42', ''),
(51, 52, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-22 13:08:04', ''),
(52, 53, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-23 13:01:31', ''),
(53, 54, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-23 13:03:59', ''),
(54, 55, 'Cash', 202750.00, 0.00, 0, 2, '2024-01-23 13:06:48', ''),
(55, 56, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-23 13:10:47', ''),
(56, 57, 'Cash', 149000.00, 0.00, 0, 2, '2024-01-25 04:43:03', ''),
(57, 58, 'Cash', 202750.00, 0.00, 0, 2, '2024-01-27 13:41:09', ''),
(58, 59, 'Cash', 160500.00, 0.00, 0, 2, '2024-01-31 12:40:07', ''),
(59, 60, 'Cash', 149000.00, 0.00, 0, 2, '2024-01-31 12:43:40', ''),
(60, 61, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-03 04:15:21', ''),
(61, 62, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-03 04:19:01', ''),
(62, 63, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-03 09:56:40', ''),
(63, 64, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-04 04:40:12', ''),
(64, 65, 'Cash', 298000.00, 0.00, 0, 2, '2024-02-04 04:46:01', ''),
(65, 66, 'Cash', 192750.00, 0.00, 0, 2, '2024-02-04 04:50:12', ''),
(66, 67, 'Cash', 128000.00, 0.00, 0, 2, '2024-02-04 04:56:18', ''),
(67, 68, 'Cash', 120000.00, 0.00, 0, 2, '2024-02-04 04:59:42', ''),
(68, 69, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-04 05:02:07', ''),
(69, 70, 'Cash', 225000.00, 0.00, 0, 2, '2024-02-05 12:47:45', ''),
(70, 71, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-06 12:34:30', ''),
(71, 72, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-07 13:40:04', ''),
(72, 73, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-08 13:43:06', ''),
(73, 74, 'Cash', 225000.00, 0.00, 0, 2, '2024-02-08 13:46:59', ''),
(74, 75, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-08 13:52:21', ''),
(75, 76, 'Cash', 202750.00, 0.00, 0, 2, '2024-02-08 13:55:24', ''),
(76, 77, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-10 13:19:53', ''),
(77, 78, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-10 13:24:39', ''),
(78, 79, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-10 13:31:28', ''),
(79, 80, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-10 13:35:18', ''),
(80, 81, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-10 14:48:47', ''),
(81, 82, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-11 12:54:04', ''),
(82, 83, 'Cash', 449000.00, 0.00, 0, 2, '2024-02-13 13:00:23', ''),
(83, 84, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-13 13:04:02', ''),
(84, 85, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-14 13:03:59', ''),
(85, 86, 'Cash', 225000.00, 0.00, 0, 2, '2024-02-14 13:10:06', ''),
(86, 87, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-14 13:14:32', ''),
(87, 88, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-15 13:22:47', ''),
(88, 89, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-15 13:26:21', ''),
(89, 90, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-15 13:29:19', ''),
(90, 91, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-15 13:33:13', ''),
(91, 92, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-17 12:13:57', ''),
(92, 93, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-18 13:51:27', ''),
(93, 94, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-18 13:54:30', ''),
(94, 95, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-19 13:12:04', ''),
(95, 96, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-19 13:15:27', ''),
(96, 97, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-19 13:19:43', ''),
(97, 98, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-19 13:22:27', ''),
(98, 99, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-19 13:25:38', ''),
(99, 100, 'Cash', 225000.00, 0.00, 0, 2, '2024-02-19 13:31:46', ''),
(100, 101, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-19 13:41:36', ''),
(101, 102, 'Cash', 405500.00, 0.00, 0, 2, '2024-02-20 12:48:07', ''),
(102, 103, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-20 12:51:40', ''),
(103, 104, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-20 12:55:38', ''),
(104, 105, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-21 12:54:01', ''),
(105, 106, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-22 13:04:14', ''),
(106, 107, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-22 13:08:22', ''),
(107, 108, 'Cash', 128000.00, 0.00, 0, 2, '2024-02-24 12:22:39', ''),
(108, 109, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-24 12:25:46', ''),
(109, 110, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-25 13:03:24', ''),
(110, 111, 'Cash', 339999.00, 0.00, 0, 2, '2024-02-25 13:06:22', ''),
(111, 112, 'Cash', 202750.00, 0.00, 0, 2, '2024-02-26 13:16:40', ''),
(112, 113, 'Cash', 639750.00, 0.00, 0, 2, '2024-02-28 12:39:10', ''),
(113, 114, 'Cash', 149000.00, 0.00, 0, 2, '2024-02-28 12:43:55', ''),
(114, 115, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-28 12:56:39', ''),
(115, 116, 'Cash', 160500.00, 0.00, 0, 2, '2024-02-29 14:08:53', ''),
(116, 117, 'Cash', 256000.00, 0.00, 0, 2, '2024-03-04 13:51:12', ''),
(117, 118, 'Cash', 192750.00, 0.00, 0, 2, '2024-03-05 05:30:40', ''),
(118, 119, 'Cash', 321000.00, 0.00, 0, 2, '2024-03-05 05:36:02', ''),
(119, 120, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-05 12:05:07', ''),
(120, 121, 'Cash', 192750.00, 0.00, 0, 2, '2024-03-05 12:08:07', ''),
(121, 122, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-05 12:11:05', ''),
(122, 123, 'Cash', 192750.00, 0.00, 0, 2, '2024-03-05 12:14:02', ''),
(123, 124, 'Cash', 149000.00, 0.00, 0, 2, '2024-03-06 12:02:23', ''),
(124, 125, 'Cash', 149000.00, 0.00, 0, 2, '2024-03-06 12:05:10', ''),
(125, 126, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-06 12:08:56', ''),
(126, 127, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-06 12:11:32', ''),
(127, 128, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-07 12:56:01', ''),
(128, 129, 'Cash', 217000.00, 0.00, 0, 2, '2024-03-07 13:00:31', ''),
(129, 130, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-13 08:49:22', ''),
(130, 131, 'Cash', 256000.00, 0.00, 0, 2, '2024-03-13 09:10:13', ''),
(131, 132, 'Cash', 202750.00, 0.00, 0, 2, '2024-03-17 05:33:40', ''),
(132, 133, 'Cash', 128000.00, 0.00, 0, 2, '2024-03-17 05:40:07', ''),
(133, 134, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-19 10:28:42', ''),
(134, 135, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-19 10:31:57', ''),
(135, 136, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-21 13:30:20', ''),
(136, 137, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-23 10:45:46', ''),
(137, 138, 'Cash', 149000.00, 0.00, 0, 2, '2024-03-23 10:50:49', ''),
(138, 139, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-24 13:14:35', ''),
(139, 140, 'Cash', 149000.00, 0.00, 0, 2, '2024-03-25 12:52:33', ''),
(140, 141, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-25 13:00:22', ''),
(141, 142, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-26 13:15:33', ''),
(142, 143, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-26 13:18:50', ''),
(143, 144, 'Cash', 225000.00, 0.00, 0, 2, '2024-03-26 13:22:24', ''),
(144, 145, 'Cash', 202750.00, 0.00, 0, 2, '2024-03-26 13:25:38', ''),
(145, 146, 'Cash', 192750.00, 0.00, 0, 2, '2024-03-27 13:20:37', ''),
(146, 147, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-28 13:02:54', ''),
(147, 148, 'Cash', 128000.00, 0.00, 0, 2, '2024-03-28 13:11:16', ''),
(148, 149, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-30 13:12:58', ''),
(149, 150, 'Cash', 240000.00, 0.00, 0, 2, '2024-03-30 13:16:32', ''),
(150, 151, 'Cash', 160500.00, 0.00, 0, 2, '2024-03-30 13:19:17', ''),
(151, 152, 'Cash', 202750.00, 0.00, 0, 2, '2024-03-30 13:22:47', ''),
(152, 153, 'Cash', 128000.00, 0.00, 0, 2, '2024-03-30 13:28:26', ''),
(153, 154, 'Cash', 149000.00, 0.00, 0, 2, '2024-03-30 13:31:41', ''),
(154, 155, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-01 15:26:26', ''),
(155, 156, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-02 13:10:03', ''),
(156, 157, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-02 13:12:41', ''),
(157, 158, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-02 13:15:55', ''),
(158, 159, 'Cash', 128000.00, 0.00, 0, 2, '2024-04-03 13:21:29', ''),
(159, 160, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-03 13:24:19', ''),
(160, 161, 'Cash', 225000.00, 0.00, 0, 2, '2024-04-03 13:34:14', ''),
(161, 162, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-03 13:36:52', ''),
(162, 163, 'Cash', 269900.00, 0.00, 0, 2, '2024-04-04 14:27:10', ''),
(163, 164, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-04 14:32:09', ''),
(164, 165, 'Cash', 128000.00, 0.00, 0, 2, '2024-04-04 14:34:40', ''),
(165, 166, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-04 14:37:10', ''),
(166, 167, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-04 14:40:19', ''),
(167, 168, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-05 09:14:12', ''),
(168, 169, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-06 05:22:57', ''),
(169, 170, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-07 13:04:21', ''),
(170, 171, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-07 13:08:33', ''),
(171, 172, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-07 13:11:43', ''),
(172, 173, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-07 13:14:31', ''),
(173, 174, 'Cash', 202750.00, 0.00, 0, 2, '2024-04-07 13:43:33', ''),
(174, 175, 'Cash', 128000.00, 0.00, 0, 2, '2024-04-07 14:50:10', ''),
(175, 176, 'Cash', 608250.00, 0.00, 0, 2, '2024-04-08 11:48:10', ''),
(176, 177, 'Cash', 202750.00, 0.00, 0, 2, '2024-04-08 11:51:35', ''),
(177, 178, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-08 11:56:49', ''),
(178, 179, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-08 12:00:50', ''),
(179, 180, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-08 12:03:39', ''),
(180, 181, 'Cash', 321000.00, 0.00, 0, 2, '2024-04-08 13:32:20', ''),
(181, 182, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-09 04:50:50', ''),
(182, 183, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-09 13:09:24', ''),
(183, 184, 'Cash', 202750.00, 0.00, 0, 2, '2024-04-09 13:12:10', ''),
(184, 185, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-09 13:15:36', ''),
(185, 186, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-09 13:18:09', ''),
(186, 187, 'Cash', 202750.00, 0.00, 0, 2, '2024-04-09 13:20:46', ''),
(187, 188, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-09 13:24:03', ''),
(188, 189, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-09 13:26:34', ''),
(189, 190, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-13 12:28:12', ''),
(190, 191, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-13 12:30:40', ''),
(191, 192, 'Cash', 192750.00, 0.00, 0, 2, '2024-04-13 12:33:48', ''),
(192, 193, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-13 12:35:52', ''),
(193, 194, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-13 12:37:45', ''),
(194, 195, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-13 12:40:14', ''),
(195, 196, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-13 12:42:30', ''),
(196, 197, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-13 12:45:00', ''),
(197, 198, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-13 12:47:13', ''),
(198, 199, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-14 04:40:32', ''),
(199, 200, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-14 04:43:38', ''),
(200, 201, 'Cash', 217000.00, 0.00, 0, 2, '2024-04-14 04:45:43', ''),
(201, 202, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-14 11:51:15', ''),
(202, 203, 'Cash', 128000.00, 0.00, 0, 2, '2024-04-14 11:54:21', ''),
(203, 204, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-14 11:57:24', ''),
(204, 205, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-14 12:01:50', ''),
(205, 206, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-15 12:37:00', ''),
(206, 207, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-15 12:40:09', ''),
(207, 208, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-15 12:42:50', ''),
(208, 209, 'Cash', 202750.00, 0.00, 0, 2, '2024-04-15 12:45:16', ''),
(209, 210, 'Cash', 149000.00, 0.00, 0, 2, '2024-04-15 12:47:30', ''),
(210, 211, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-16 13:25:12', ''),
(211, 212, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-16 13:37:25', ''),
(212, 213, 'Cash', 160500.00, 0.00, 0, 2, '2024-04-28 14:11:46', ''),
(213, 214, 'Cash', 160500.00, 0.00, 0, 2, '2024-05-02 13:09:59', ''),
(214, 215, 'Cash', 192750.00, 0.00, 0, 2, '2024-05-02 13:13:21', '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_reward_points`
--

CREATE TABLE `ospos_sales_reward_points` (
  `id` int NOT NULL,
  `sale_id` int NOT NULL,
  `earned` float NOT NULL,
  `used` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_taxes`
--

CREATE TABLE `ospos_sales_taxes` (
  `sales_taxes_id` int NOT NULL,
  `sale_id` int NOT NULL,
  `jurisdiction_id` int DEFAULT NULL,
  `tax_category_id` int DEFAULT NULL,
  `tax_type` smallint NOT NULL,
  `tax_group` varchar(32) NOT NULL,
  `sale_tax_basis` decimal(15,4) NOT NULL,
  `sale_tax_amount` decimal(15,4) NOT NULL,
  `print_sequence` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL,
  `sales_tax_code_id` int DEFAULT NULL,
  `rounding_code` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sessions`
--

CREATE TABLE `ospos_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT '0',
  `data` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_sessions`
--

INSERT INTO `ospos_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('54637a2cc4d294466455613044cf8cbadeedca87', '118.179.44.69', 1712668191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323636383139313b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('91116ec515e1cc9c88282bd55ada749be9e9f318', '118.179.44.69', 1712668532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323636383533323b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220203132354343204469736320426c61636b223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a31373a225053554234344259585054483934333236223b733a31323a2273657269616c6e756d626572223b733a31313a224a5a585050463932363739223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2231362e303030223b733a353a227072696365223b643a3136303530303b733a31303a22636f73745f7072696365223b733a393a223135343137352e3030223b733a353a22746f74616c223b733a31313a223136303530302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223136303530302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('14981b9bbaf1e635cd8a6e333c3aa9cd41deb2a6', '118.179.44.69', 1712669191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323636393139313b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220203132354343204469736320426c61636b223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a31373a2250535542343442593352544d3035323138223b733a31323a2273657269616c6e756d626572223b733a31313a224a5a5850504a3533393532223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2231342e303030223b733a353a227072696365223b643a3136303530303b733a31303a22636f73745f7072696365223b733a393a223135343137352e3030223b733a353a22746f74616c223b733a31313a223136303530302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223136303530302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('0824132e5d4f477cdfff0fe30120720298885602', '118.179.44.69', 1712668842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323636383834323b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a323a223137223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a32373a2250756c736172203135302053442041425320426c61636b2f526564223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a31373a2250535541313143593952544d3337393830223b733a31323a2273657269616c6e756d626572223b733a31313a2244485850524b3331363130223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b733a343a22302e3030223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22322e303030223b733a353a227072696365223b643a3230323735303b733a31303a22636f73745f7072696365223b733a393a223139343737352e3030223b733a353a22746f74616c223b733a31313a223230323735302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223230323735302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c733a333a22313832223b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('727f594c717976f297fa0b0a2d575dece3cb1a9a', '118.179.44.69', 1712669194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323636393139313b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b),
('79d93e70721f0f1793b2b3dd48aa6fdf0a691575', '176.58.112.239', 1712670897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323637303839373b),
('fb05818d46deec33dd6a90c3414f9b26fb41d23e', '150.109.253.34', 1712673406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323637333430363b),
('2c1ea08283e09d2ca8668846bee75fe685448df3', '130.255.166.51', 1712680320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323638303332303b),
('c9590f9939df125cc928abbba92e9a7c05814d6a', '130.255.166.51', 1712680322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323638303332323b),
('534ef5993bc2abc4a6ab0d20fbec805f324159d3', '130.255.166.51', 1712680323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323638303332333b),
('b7d79a78de50f2377fee140a8b26608213005e6d', '130.255.166.122', 1712680326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323638303332363b),
('a2cc17822772df49d185374a5b1f9912a115eafc', '54.36.148.226', 1712693340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323639333334303b),
('c3de49e76f76994d9c4a1e6a5cfcd57cfb492868', '89.248.174.42', 1712705636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323730353633363b),
('f9168ddd0668baeceb4e5a2620e8595f3bd75db1', '89.248.174.42', 1712705637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323730353633373b),
('13df0804caf6c122a9efee8db8fbcca653941e09', '182.42.110.255', 1712707545, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323730373534353b),
('c637c74688f3e2a56801907dcf166469ae0549a8', '118.179.44.69', 1712728975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323732383937353b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b),
('430c0c5e20b68d02835a9783038c371769c0bdbe', '195.191.219.133', 1712728555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323732383535353b),
('18f8d9926166c0cecc3537aa2c60f98bdb33057c', '195.191.219.133', 1712728560, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323732383536303b),
('e4c27e1a751a0db443d0beb64d597a7c080d037a', '118.179.44.69', 1712729339, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323732393333393b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f636172747c613a333a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220203132354343204469736320426c61636b223b733a31313a226465736372697074696f6e223b613a333a7b693a303b733a31373a225053554234344259375254413037333138223b693a313b733a31373a225053554234344259395254413037323836223b693a323b733a31373a225053554234344259305254413037313237223b7d733a31323a2273657269616c6e756d626572223b613a333a7b693a303b733a31313a22465a5850524b3534353034223b693a313b733a31313a22465a5850524b3534343035223b693a323b733a31313a22465a5850524b3534333734223b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a333b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2231332e303030223b733a353a227072696365223b643a3135343137353b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223436323532352e30303030223b7d693a323b613a32303a7b733a373a226974656d5f6964223b733a313a2232223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a323b733a343a226e616d65223b733a33313a2242616a616a20446973636f76657220203132354343204469736320426c7565223b733a31313a226465736372697074696f6e223b613a313a7b693a303b733a31363a2250535542343442595254413037333833223b7d733a31323a2273657269616c6e756d626572223b613a313a7b693a303b733a31313a224a5a5850524b3534363032223b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22322e303030223b733a353a227072696365223b643a3135343137353b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223135343137352e30303030223b7d693a333b613a32303a7b733a373a226974656d5f6964223b733a313a2233223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a333b733a343a226e616d65223b733a33303a2242616a616a20446973636f76657220203132354343204469736320526564223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22302e303030223b733a353a227072696365223b733a393a223135343137352e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223135343137352e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b726563765f73746f636b5f736f757263657c733a313a2231223b),
('371d93c90f3f48e73a5c2e5bf57a632db601b588', '118.179.44.69', 1712729705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323732393730353b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f73746f636b5f736f757263657c733a313a2231223b),
('508cab8be1d3efce73d3e442a2a9b7a12a5d5867', '118.179.44.69', 1712729705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323732393730353b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f73746f636b5f736f757263657c733a313a2231223b),
('501ce76ec7defdec9d6c21074e42e5d43d6f54c4', '143.198.37.251', 1712736038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323733363033383b),
('c4f972126510468089e16c2c1379874c540cd0c9', '43.135.166.178', 1712744977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323734343937373b),
('1938efa23b90f637e838e7e55a91525fec3f7303', '213.202.233.34', 1712747080, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323734373038303b),
('37e285342b31650ea69429594da8a82410aa22a7', '42.83.147.34', 1712749276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323734393237353b),
('5d1003a5cd3921957cd1886f13d0f1b5cd43eaee', '51.89.208.24', 1712752131, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323735323133313b),
('29b2531bdc9399196edb9bf849dcded185138d29', '27.115.124.34', 1712758922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323735383932323b),
('2f9ff45c98a04437a19c796a2bbf1a54a622ffab', '27.115.124.68', 1712758935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323735383933353b),
('a681429d1b82a190fa252e657509350a71a37bd4', '27.115.124.96', 1712758940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323735383934303b),
('3214ca18456a4fe414802ac912fdbdc30b4abb9f', '101.199.254.202', 1712762665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323736323636353b),
('c253e6cc59eb1fffd5355720cbbe19e6f0c648a9', '101.199.254.232', 1712762690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323736323639303b),
('f4ed4b87f9fc13228e2d2d357541899f2e8062e7', '101.199.254.230', 1712762709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323736323730393b),
('23c4366cb14db0e92d243108f8476a4da1aabea0', '45.83.31.80', 1712773729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323737333732393b),
('3c948782152de1bbb2c2e24f849911068f289e2c', '45.83.31.80', 1712773729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323737333732393b),
('5b8dfff9eb6fe6924907d980a10634debb91eb29', '45.83.31.80', 1712773729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323737333732393b),
('d2b799ecb618c41aca723c31a0fb3a8eb5eb73e8', '45.83.31.80', 1712773729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323737333732393b),
('09b91124af23854f4d5dd503fa588b04d1d35c0f', '52.26.134.199', 1712774083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323737343038333b),
('7ce50205e6ab16b563ea90e166c8f71f2ed55102', '52.26.134.199', 1712774083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323737343038333b),
('d531ef506131dd290a52200100070d933e13a199', '52.26.134.199', 1712774084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323737343038343b),
('3ecef416113d403eb375f7d2507c4cf015b843f9', '52.26.134.199', 1712774084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323737343038343b),
('f73d41d1231cb114d45809e396575497733161ae', '5.161.93.172', 1712774091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323737343039313b),
('5f5b35c4418272427789e1e3cf786615bab4994e', '180.102.134.69', 1712782126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323738323132363b),
('1f9e41ec4d5f72b8eb47fdfa6705b0131de8013e', '135.148.195.8', 1712787229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323738373232393b),
('fab251ca19bb02cd8090531b34715be8179357eb', '45.83.31.80', 1712791811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323739313831313b),
('20e09b4a3d542bae9a3a9b459ece36fe5ea24b34', '45.83.31.80', 1712791811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323739313831313b),
('2429e87e6e1cc68248c878e8c589f4bd2a488506', '45.83.31.80', 1712791811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323739313831313b),
('e3168fdc2954c96fd1293895f09c1f21f7c7138f', '45.83.31.80', 1712791812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323739313831323b),
('01aaad488e69af0fa10cb8a1a6999c442d1aac76', '101.44.251.13', 1712807415, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323830373431353b),
('2120d4146b0cebb431b514af34bf12f1558ef180', '35.88.44.85', 1712808456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323830383435363b),
('98a76c500e96830e8c077abc23aed85ec1920eee', '43.135.166.178', 1712819115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323831393131353b),
('a22cae3c7b2cddaa3f271a6e6e3cc7c5b8b106a2', '35.163.19.10', 1712819137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323831393133373b),
('1f86d6f7e813788993e2b8892ee84240e9eabbf1', '35.93.5.49', 1712833486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323833333438363b),
('0d24585a015224aa298513d3c4cac2045b8c2c58', '94.228.122.109', 1712837840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323833373834303b),
('9addcc40b18e2b6e240e04f73329119bf02cdeda', '128.90.170.38', 1712847588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323834373538373b),
('c60067fd3992c82fb9043a4463dbaa1cfe617a24', '43.131.248.209', 1712853050, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323835333035303b),
('1308efa6754f10eb276e2bb76d0aa6d81865fa10', '34.151.85.214', 1712855602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323835353630323b),
('032b9fd9b0997b853e4b9c96884693a8d449b831', '34.151.85.214', 1712855605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323835353630353b),
('bf7da38ef551a390812be5e469c5c4705b6d8007', '34.151.85.214', 1712855606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323835353630353b),
('6e92adc69f45e69d82ef7bee56cfe95463362602', '37.111.206.168', 1712857905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323835373836323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('6b82288d36f8200eccd919db326f5844623ad68b', '64.233.173.148', 1712857863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323835373836333b),
('a88e97386c27c50be71a6f977313320d00dbae6e', '64.233.173.148', 1712857863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323835373836333b),
('92a8e78d5752d6852914f34da3d01e6ae0947d61', '64.233.173.146', 1712857864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323835373836343b),
('159299adca4dd34c1260661901fbbc2d667037ec', '64.233.173.147', 1712857864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323835373836343b),
('49f23eef8a5231b96679ca494aee5cd4e9e610ce', '52.167.144.54', 1712864064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323836343036343b),
('5db2b9f51c408858cf99e9fa78b39692f1e1611f', '64.183.123.24', 1712865542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323836353534323b),
('b908f750fcf2ee8a4d19581fd069260f8ad7bac5', '64.183.123.24', 1712865542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323836353534323b),
('219fb7b3b14a822ebb777cfc41ebb78babb37575', '91.92.247.108', 1712869710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323836393731303b),
('a21cc72e6a2a1a71b6e44c03000fcc0a2f379a81', '203.2.64.59', 1712889877, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323838393837373b),
('d4ba419a0f965cbd04169b5deb2c8748ecf5106b', '137.226.113.44', 1712901606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323930313630363b),
('b6432d95c1c7634efb1ac2bbbbbba71c6acfb9d7', '64.227.106.10', 1712904499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323930343439393b),
('fb06b6f091052371c07f0721ed70b5e7942861e2', '43.131.243.208', 1712926646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323932363634363b),
('fb59e8c001a0578e34f7f993fe41c998170e63c0', '84.205.178.109', 1712941349, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323934313334393b),
('0e70084af13d2b6584b07b9590c382465553b846', '84.205.178.109', 1712941401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323934313430313b),
('77bb98f670f9c3f703a83b3da803ae8220c0ec12', '213.202.233.34', 1712948418, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323934383431383b),
('e58c4a48aa901e19e9d6e6744f8a80b14a272426', '52.167.144.54', 1712951286, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323935313238363b),
('f3f4fba5a0d226294fb1d73ec7070ef5c435844a', '198.50.163.170', 1712953345, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323935333334353b),
('932605885488f65c697c42c1ca8c3ce5236724e1', '51.222.253.2', 1712956961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323935363936313b),
('cc93bc2f3110fb646acd25e97c2deff876b4df99', '43.131.249.153', 1712959462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323935393436323b),
('c4e293c0c7246f3451d313c314a31d066a25331a', '13.57.247.21', 1712967608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323936373630383b),
('dd5407f317323f221ef83efdf92e60c737873c3b', '65.154.226.166', 1712971266, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323937313236363b),
('f42702cc956cd9af6f85a7df9d9325bf2413158c', '162.248.117.98', 1712974454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323937343435343b),
('583126ff7676e06204c7e51881f334d6f6c5d076', '103.171.91.28', 1712985097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323938353039373b),
('4bdd843ec93a3ac94c9a23d384fd6d5e105716ff', '195.191.219.132', 1712986387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323938363338373b),
('bdbe80434228f440213fd802fd618868d3030cb5', '195.191.219.132', 1712986393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323938363339333b),
('96557b56cc432fe05ccf01e03bf6dbba4d88a33b', '134.122.104.155', 1712987536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323938373533363b),
('601e770f671a974c3a43069355dfe3c330ea08ef', '134.122.104.155', 1712987540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323938373534303b),
('21dca1c48a7246ed8e61f527d1e6ce81fb070ea0', '205.210.31.6', 1712988652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323938383635323b),
('4490100b25a6c979dfd3c39e377d522cd5c62715', '205.210.31.20', 1712989558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323938393535383b),
('91775fe5f8f024c1695639cd5f1e7e0bcf000a13', '129.226.146.179', 1712996768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731323939363736383b),
('43492519a340dcdc80b7ce73b73ec87e8f29e95c', '87.236.176.184', 1713001983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333030313938333b),
('6a7b39a4a03582a176130a41a922aa70d21ac241', '54.88.179.33', 1713002767, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333030323736373b),
('ac483deab9ac54b7cc25c97abfba4d9a8efd7994', '54.88.179.33', 1713002768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333030323736383b),
('9ee96a7865118972bac0efacf60ab47630401652', '35.171.144.152', 1713002768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333030323736383b),
('d6776474901063bcbf8f15c5c42cc94828fc4ac3', '213.202.233.34', 1713008270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333030383237303b),
('39f382ab82f854ce7b3269b2fc28542a00774668', '87.229.45.33', 1713008513, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333030383531333b),
('c1ae35774ba7a21a130df84f2774a2ba2d6dd123', '103.20.82.155', 1713009606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333030393630363b),
('144e5d88eb0b693b563db8371cc196a78df86ab9', '118.179.44.69', 1713011066, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333031313036363b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b),
('fadc2ce8454c068bc385480af0dd6405d88936b1', '118.179.44.69', 1713011437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333031313433373b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2234223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220313135434320446973632020426c61636b223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a31373a22505355413135415a3352544d3135393938223b733a31323a2273657269616c6e756d626572223b733a31313a224a42585050473639363230223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22382e303030223b733a353a227072696365223b643a3134393030303b733a31303a22636f73745f7072696365223b733a393a223134333235302e3030223b733a353a22746f74616c223b733a31313a223134393030302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223134393030302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('8b51d301dd130e654381501d40f2470236be7edb', '118.179.44.69', 1713011747, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333031313734373b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2232223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33313a2242616a616a20446973636f76657220203132354343204469736320426c7565223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a31363a2250535542343442595254413037333833223b733a31323a2273657269616c6e756d626572223b733a31313a224a5a5850524b3534363032223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22332e303030223b733a353a227072696365223b643a3136303530303b733a31303a22636f73745f7072696365223b733a393a223135343137352e3030223b733a353a22746f74616c223b733a31313a223136303530302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223136303530302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('2bc53c5f3f7c5628a083f3f7747a6304bfcbe206', '118.179.44.69', 1713012147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333031323134373b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220203132354343204469736320426c61636b223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a31373a225053554234344259305254413037313237223b733a31323a2273657269616c6e756d626572223b733a31313a22465a5850524b3534333734223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2231352e303030223b733a353a227072696365223b643a3136303530303b733a31303a22636f73745f7072696365223b733a393a223135343137352e3030223b733a353a22746f74616c223b733a31313a223136303530302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223136303530302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('5a0fe862779ef9cd248845dd344697fb103455b3', '118.179.44.69', 1713012433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333031323134373b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b),
('d338e80855b5d41be1fb65426e275e68a33bfd3f', '52.37.156.104', 1713020236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333032303233363b),
('7fbcefac1bfd434b4b0382d9e1181020f3316118', '52.37.156.104', 1713020238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333032303233383b),
('8b0f4042daca3b0f6e7c5be837815cda37a42401', '205.210.31.163', 1713024437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333032343433373b),
('6d70b88d1b5e1efdf1b4ada07c64d0f990f089c9', '36.111.67.189', 1713030865, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333033303836353b),
('9257a9b37c3570c91a2f1da36b647cc5460d3d34', '54.244.0.8', 1713036659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333033363635393b),
('0f96f71e853826aac8c2cff99840e64a676d24b4', '54.244.0.8', 1713036659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333033363635393b),
('c884ac8717379bba8c665a6f737145c63b35a729', '52.167.144.54', 1713037247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333033373234373b),
('27a3c056f81bae54e07683267462671306b38eec', '162.240.151.46', 1713038356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333033383335363b),
('a142c91016a5306249a73778e2f41e0c06807fdc', '66.249.66.34', 1713040592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333034303539323b),
('b1da5d66fa47f40fffd0031575d83f8f981be212', '66.249.66.32', 1713040599, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333034303539393b),
('0c603960f6ec8805f3e9f60a1f5af31effe5b3c7', '62.77.154.96', 1713041123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333034313132323b),
('11fa779ae4d6cd1e05b628d8e27884b1dc5c8177', '66.249.66.33', 1713042588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333034323538383b),
('06cfc0e8525c281c9f54d57c9012719ab3087d43', '64.183.123.24', 1713055316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333035353331363b),
('248d3d749318146298139643dd881ed1668c794f', '64.183.123.24', 1713055316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333035353331363b),
('cd0d20e0ed97f3da5d4863da28290b13b9f51135', '79.110.62.2', 1713057610, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333035373631303b),
('01cdf00fd53aaa57981934d7d3faa94f6514b108', '198.235.24.128', 1713058844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333035383834343b),
('0b3b0f3b83ab5a20303ba326afd00ab0fdaa4be7', '205.210.31.152', 1713064497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333036343439373b),
('4acdaac9492dd21da7ac2aefbb0491e917ac9f81', '118.179.44.69', 1713069814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333036393831343b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2234223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220313135434320446973632020426c61636b223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a31373a22505355413135415a3552544d3136313035223b733a31323a2273657269616c6e756d626572223b733a31313a224a42585050473639363537223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22352e303030223b733a353a227072696365223b643a3134393030303b733a31303a22636f73745f7072696365223b733a393a223134333235302e3030223b733a353a22746f74616c223b733a31313a223134393030302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223134393030302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('b7b378c85db044377c7f1e884385896a4a95addd', '118.179.44.69', 1713069943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333036393831343b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b),
('da82d7e78cb4d4fed0b358650c8a703f2e09e4fc', '142.93.47.239', 1713076885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333037363838353b),
('9c99df5750c6a71ce657c25c1adc603c8eb30a70', '165.232.144.197', 1713083549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333038333534393b),
('db69c6dbfc82859c6fb0d77a43db7b634d6d5520', '118.179.44.69', 1713095658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333039353635383b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2237223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a34303a2242616a616a20506c6174696e61203130322045532020426c61636b202053696c7665722047726179223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a31373a2250535541373641593952544d3635383538223b733a31323a2273657269616c6e756d626572223b733a31313a2250465850504a3230333939223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22312e303030223b733a353a227072696365223b643a3132383030303b733a31303a22636f73745f7072696365223b733a393a223132323235302e3030223b733a353a22746f74616c223b733a31313a223132383030302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223132383030302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('4f16cdc09a60475c5e2965519f1c678eaba671ba', '118.179.44.69', 1713096104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333039363130343b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220203132354343204469736320426c61636b223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a31383a2250535542343442593452544c303033363420223b733a31323a2273657269616c6e756d626572223b733a31313a224a5a585050483938393333223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2231312e303030223b733a353a227072696365223b643a3136303530303b733a31303a22636f73745f7072696365223b733a393a223135343137352e3030223b733a353a22746f74616c223b733a31313a223136303530302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223136303530302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('8301cf341999a2d47154d6151b0b69136dfa037b', '118.179.44.69', 1713096110, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333039363130343b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b),
('4b3fa9b3cabb99a9a88639be89bc9fb21ba2e472', '216.73.160.213', 1713099966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333039393936363b),
('636cc19eb4e944d17f5e4f123689d232c5cf329c', '175.44.42.106', 1713103497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333130333439373b),
('22a09cfd0b1e5390ad20ffd823203a9d8c688a24', '58.49.233.126', 1713104019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333130343031393b),
('dc3555f8c53fe6ababf380bbc46e93b956a158fb', '35.94.4.54', 1713124926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333132343932363b),
('7b18f93e87c18b76e70c5927c6336b6099381a74', '93.158.91.11', 1713127579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333132373537393b),
('7534b2cdc3fb088de9b15532d2a11dbc50f277c6', '103.20.82.155', 1713127791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333132373739313b),
('94432c63abbfca58676fead2b2f05990b019e0bc', '198.235.24.11', 1713131161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333133313136313b),
('3c338aed629a102a97084f5f50d1aab240bbbb5d', '51.68.122.156', 1713133162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333133333136323b),
('eec8040ca34f642dc30b4f6df5c8c6be0eb05dc2', '45.128.96.201', 1713133771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333133333737313b),
('94579061d2d75df18b6ac24fbba0c0deeb18c294', '43.134.170.46', 1713138299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333133383239393b),
('316ec076a025c2bb8fb6ec4b11039d54c273004d', '101.44.248.227', 1713152567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333135323536373b),
('f7c797211c2f42871b4c7c63ea65e3cd811b5b0e', '93.158.91.33', 1713160258, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333136303235383b),
('aa08f991c0c8fb5b7b494486357e4d3144a769c3', '93.158.90.42', 1713160260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333136303236303b),
('94117885821b5d7d3e669504632fe5477bbbbf6c', '93.158.90.37', 1713160261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333136303236313b),
('c51697b44e205c6dc9850ba290dd038534b51653', '93.158.90.40', 1713160263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333136303236333b),
('461b81ba096eccd1636b86c322107a67128f8458', '91.92.247.44', 1713161575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333136313537353b),
('4088f853a168ea4bff322e18305724c28684f56c', '91.92.247.44', 1713161575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333136313537353b),
('7fa55be61575f8781d1d45f320a30e5ccb10f961', '91.92.247.44', 1713161576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333136313537363b),
('d2c782403b83459ef64f53f8cd4d0f8f00855221', '91.92.247.44', 1713161576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333136313537363b),
('52b4ec90e7f275909709334cd729a148cda39265', '52.170.212.47', 1713162168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333136323136383b),
('294c61fc939d04569fd575d5a26b913f8020a4f9', '43.128.110.17', 1713174425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333137343432343b),
('6dd95975204690ff844be590540b1837702307db', '95.179.221.139', 1713179988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333137393938383b),
('af6c86d90399e6f8aee1f7ca00d4472ccaacb495', '45.55.60.131', 1713181849, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333138313834393b),
('5971b68ee61b432fa1ee063d248158642bc3ba87', '118.179.44.69', 1713184805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333138343830353b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220203132354343204469736320426c61636b223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a31373a2250535542343442593252544d3035313933223b733a31323a2273657269616c6e756d626572223b733a31313a224a5a5850504a3533373734223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22392e303030223b733a353a227072696365223b643a3136303530303b733a31303a22636f73745f7072696365223b733a393a223135343137352e3030223b733a353a22746f74616c223b733a31313a223136303530302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223136303530302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('b7c00d902f494696ed84b33a61e06d77f1beee33', '118.179.44.69', 1713185113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333138353131333b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a323a223137223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a32373a2250756c736172203135302053442041425320426c61636b2f526564223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a31373a2250535541313143593452544d3335303139223b733a31323a2273657269616c6e756d626572223b733a31313a2244485850504a3836383036223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22362e303030223b733a353a227072696365223b643a3230323735303b733a31303a22636f73745f7072696365223b733a393a223139343737352e3030223b733a353a22746f74616c223b733a31313a223230323735302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223230323735302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('b146580fd6d5e6cc43f2e59767a740ede5a26536', '118.179.44.69', 1713185273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333138353131333b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b),
('a742dc247484a13d277eb0bc812de080691d8af5', '135.148.195.4', 1713189237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333138393233373b),
('7d4c9c58b6e718b7b3495c622d1912108e3fd389', '91.92.241.96', 1713191943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333139313934333b),
('abc85984330ccd8994903fbb19313d3e35da1989', '43.153.89.59', 1713196585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333139363538353b),
('75b10ae3709096b30a7e9d17ff1f6ee5fbaa5b74', '51.15.17.105', 1713197759, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333139373735393b),
('a4f3620252c24f99379edca37171487baeb7e320', '176.58.112.239', 1713198769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333139383736393b),
('ac56087472abc834e5bf1f29061948548f75394f', '91.92.244.50', 1713199423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333139393432333b),
('8c9e0f1b7563b2470b3bcc01f3866ecf6af976e3', '46.246.8.134', 1713204221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333230343232313b),
('b939317e2cc5003eac0517469f92700bcfc21df1', '79.110.62.2', 1713224770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333232343737303b);
INSERT INTO `ospos_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0e2ac1bf6ad938b4747a28a928b540e42642e3de', '54.221.169.155', 1713236759, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333233363735393b),
('f3d78c67f5eb461122120a554e5d9af62ee50721', '87.236.176.65', 1713241421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333234313432313b),
('4e9e74ed3642b3b10a881044b1bf35fe3d98417a', '118.179.44.69', 1713241422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333234313432313b),
('c83aea6007c3a6bc556687015c3d449c4f1f908a', '87.236.176.167', 1713241423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333234313432333b),
('2955e9abf4f431376cbdfad59fd9ded79c34574a', '195.191.219.132', 1713250849, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333235303834393b),
('c3906ebee4c27bfb6edac9c7ccda5b416cd791a1', '195.191.219.132', 1713250855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333235303835353b),
('31d9439501c7efc476688749281fa36219285c66', '43.163.0.99', 1713251260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333235313236303b),
('e0363f2cdbbef4621480d570955ab797fb4c3621', '207.154.244.203', 1713251825, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333235313832353b),
('c4e1889e873e12fa489d6877adb3a6b94c18a13a', '42.83.147.53', 1713254001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333235343030313b),
('ecad68d84958290dd3c2c7f39073b784bf1d643d', '157.245.198.20', 1713254039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333235343033393b),
('70eed6b9c998719819c9bcf51f2a1ff48b2204e7', '157.245.198.20', 1713254044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333235343034343b),
('cf11ab8e765323203e589aca9aa45438c27b065d', '157.245.198.20', 1713254046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333235343034363b),
('d77a8266d4b9e16e815bfa2aa232e5924339fd7f', '157.245.198.20', 1713254047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333235343034373b),
('ada9ad67c4fe5c3761ceea12521af59392fcce82', '195.90.221.76', 1713264609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333236343630393b),
('4c4579bd956076480597224881a651178acb184a', '202.61.232.82', 1713265562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333236353536323b),
('ffcb5c88d84bb8461be1a1ceae1df4213e4c0668', '118.179.44.69', 1713273687, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333237333638373b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220203132354343204469736320426c61636b223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22372e303030223b733a353a227072696365223b733a393a223136303530302e3030223b733a31303a22636f73745f7072696365223b733a393a223135343137352e3030223b733a353a22746f74616c223b733a31313a223136303530302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223136303530302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d),
('260afc1c7eb41eb19667c2eb0bc48135e082be7a', '118.179.44.69', 1713274274, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333237343237343b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2232223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33313a2242616a616a20446973636f76657220203132354343204469736320426c7565223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22322e303030223b733a353a227072696365223b733a393a223136303530302e3030223b733a31303a22636f73745f7072696365223b733a393a223135343137352e3030223b733a353a22746f74616c223b733a31313a223136303530302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223136303530302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('67c0d5c9ad02fb843a1c1da78a5f6349021fcef1', '118.179.44.69', 1713274642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333237343634323b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2232223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33313a2242616a616a20446973636f76657220203132354343204469736320426c7565223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a31373a2250535542343442593352544d3034383539223b733a31323a2273657269616c6e756d626572223b733a31313a224a5a5850504a3530323434223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22322e303030223b733a353a227072696365223b643a3136303530303b733a31303a22636f73745f7072696365223b733a393a223135343137352e3030223b733a353a22746f74616c223b733a31313a223136303530302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223136303530302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('a843614e4a3aea3fb8ea8867ffbba9a6dfefbbba', '118.179.44.69', 1713274645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333237343634323b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b),
('dae13bac81f7eec3a2a573316442d423c09ba6aa', '103.189.156.48', 1713280225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333238303232353b),
('e9d986f3fbf8fab1da128ea918893bd3d57372d6', '103.189.156.48', 1713280227, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333238303232363b),
('d40f7eb5ea3c12d3a55e1368f61f783b24a2016e', '103.189.156.48', 1713280226, ''),
('a0ee23dddcff4ae6d67125e51f08a4781b2840a0', '199.244.88.226', 1713280737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333238303733373b),
('cc6745313b08ee490ea89fe1e5c80565f3d9903d', '52.167.144.54', 1713281529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333238313532393b),
('40d40730a37cf77fc56b4c6589305d219571f65b', '52.167.144.54', 1713281535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333238313533353b),
('008e2e37b9a4c1898899cc5fb915f31f55f446f1', '135.148.195.8', 1713283612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333238333631323b),
('61e13cf753987d28eb722f24c8d7250c730ee239', '43.159.141.180', 1713288022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333238383032323b),
('f44a406eae2d312ed1c702b7959256eb38c233ff', '134.209.21.205', 1713297898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333239373839383b),
('1ed489e023bcefd79005dd99b6ed9e3c949920ee', '52.143.172.148', 1713300142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333330303134323b),
('d4481ac4a592008fc8b60dcce6421edc706a691b', '91.204.46.133', 1713301031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333330313033313b),
('227ea9efba1e6605695189a07246a8514adbf3dc', '91.204.46.133', 1713301137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333330313133363b),
('7c30abe62268537e13511cedd6f2bdeed694471a', '91.204.46.133', 1713301188, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333330313138383b),
('21fb363597f5f3909fd417e9955c11cda9e78528', '213.202.233.34', 1713311898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333331313839383b),
('c661a413d8d25677b106a07d504ffacdf264951e', '213.202.233.34', 1713311915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333331313931353b),
('2d3b8df62267e3ae14abcf8dbd9c77c4ca837bf0', '93.159.230.87', 1713320294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333332303239343b),
('c38c2358dd0544d0653611a41eec3fe32c770531', '44.236.207.248', 1713330261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333333303236313b),
('fda4003f573e8a91327307d83259836fa7e36d15', '91.92.241.52', 1713331772, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333333313737323b),
('cafc4b71b5394cbe83486d6360d1bb4b987d9290', '91.92.241.52', 1713331789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333333313738393b),
('f0841dc7885240a19d3f98a8f10f3f2859c9fb1d', '52.230.152.83', 1713342728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334323732373b),
('5d51cf53c67a1b853ab8b40360801a619cdd16d3', '64.225.79.245', 1713343715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334333731353b),
('e8230ec275e52fb55cf82d24cb0796f6a19441f7', '54.36.149.81', 1713352003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333335323030333b),
('13a7ec95ce87205748a499caaf645c3b5df16d1c', '194.163.137.108', 1713361612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333336313538313b),
('daf94af9a0691796e0eaa0a3a22d0d55bb49eb02', '66.249.66.162', 1713366658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333336363635383b),
('ee3ced2be70630b57f0c3ed6ff598873ab4fd9c9', '66.249.66.161', 1713366664, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333336363636343b),
('71074a9530a741bbb6ffa7fc0856db36643e5e18', '172.81.132.208', 1713373009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333337333030393b),
('5208a5206c8f95ce1c6a69b5c2f282a37048a5a9', '172.81.132.208', 1713373010, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333337333031303b),
('d9962023c51fc2350936e0e080a1008d7526e21c', '128.199.118.74', 1713384843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333338343834333b),
('a6fb9e48ff763a0e9cfda452aab037135b04a3d7', '128.199.118.74', 1713384845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333338343834353b),
('8e69b043bc8a7ad730c4daef9c288d92d3874880', '128.199.118.74', 1713384846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333338343834363b),
('fc9281853b25dd0540c5727759bad7b6e990039c', '128.199.118.74', 1713384847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333338343834373b),
('5cc2c27abd1029a725872b6a64e741834730f8be', '91.92.244.50', 1713394559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333339343535393b),
('9d15282806a877dbb06101d11bef5ee920301705', '91.92.244.50', 1713394578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333339343537383b),
('0c1950b2ee55dc6bf1aa89361add969e84dc463c', '35.171.144.152', 1713400966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333430303936363b),
('4e101fb083960ad346c51bf4308ae7e1813a1416', '54.88.179.33', 1713400966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333430303936363b),
('418f02207fa8c85f469f473e8a6dd501e38bb2cf', '35.171.144.152', 1713400966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333430303936363b),
('4c346811c12d7e814bcdbd606e0990b825d5564e', '69.10.48.160', 1713403298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333430333239383b),
('022671c09058733df39689d40a673688a6ede477', '117.33.163.216', 1713406476, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333430363437363b),
('2685c58a2a55d0ef750bad55bab66b7264c8122a', '2.58.56.109', 1713407461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333430373436313b),
('069c976739e4918e466feabe55a34f19ae381ce9', '167.99.204.236', 1713422592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333432323539323b),
('c7dd33ad5709425e7073da4a97eb119b63bf077e', '42.83.147.56', 1713423226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333432333232363b),
('b59fbd677a0bbcbd415274763f39186b538b179f', '124.243.137.68', 1713424429, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333432343432393b),
('4a1c5d0b9eef7f7ea88174b099d9fb2e2afbeb4c', '43.128.106.120', 1713430490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333433303439303b),
('f61b5d44f06debe82dc28a1b7582f587fb94ba2a', '123.249.90.104', 1713437567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333433373536373b),
('379432667b4f56a5160fac755f8a645126f7f739', '54.186.58.231', 1713437900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333433373930303b),
('f716b642b6b290fc1e5ed6303d5ddc52278a89e5', '36.134.147.75', 1713440700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333434303730303b),
('ba85ec4e1e526bfa15757e9a1e80ba56a207fa3b', '164.90.148.153', 1713443016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333434333031363b),
('fde5afa4f379953fe7f4e8ad27b6211b504e85b0', '18.197.97.14', 1713443453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333434333435333b),
('effa33b28115fc7b355d0d04fdac160bc63476da', '3.138.125.133', 1713448729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333434383732393b),
('0600f8050759bec7af4f1a51bd5841b46b10f123', '3.138.125.133', 1713448730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333434383733303b),
('0487a3424bc71db76ef0780a2347d7534975eda3', '3.138.125.133', 1713448731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333434383733313b),
('5b3de05c508007933e876da54b138befc904374a', '3.138.125.133', 1713448734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333434383733343b),
('815690cb712a6384ef791085adcbbfb5e3d24fa2', '3.138.125.133', 1713448734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333434383733343b),
('a1a86a162be7584ee2a7c7b95714325375faa2e0', '118.179.44.69', 1713448745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333434383734323b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b),
('feb6b3e529613aa1f18abaae4e8896c76937d41b', '66.249.66.42', 1713451421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333435313432313b),
('322d044d53c56a33556614a31ae3981044d9383d', '66.249.66.42', 1713451647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333435313634373b),
('cfd278d063a1cb992c911d3b71778d7a0e8511e8', '66.249.66.44', 1713451647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333435313634373b),
('d5e9a85af0e8c4008ad27212ea87a211bc76408f', '84.247.59.94', 1713463662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333436333636323b),
('b6a597233ca61ffd337aa2bc399b384d67d62582', '52.167.144.54', 1713467876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333436373837363b),
('38895da1a7e3378184d90fd145ff31ff0a822fc8', '213.202.233.34', 1713472157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333437323135373b),
('14b14b803930948827475ff2bc7f3eb57812937d', '213.202.233.34', 1713472176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333437323137363b),
('d6a514142dde643935759a18ccaf26e34d842f5a', '43.134.89.111', 1713475615, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333437353631353b),
('cef3468bbfb31afc646c12a09691ab2f56b8401b', '87.236.176.40', 1713484384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333438343338343b),
('6a8426843a011041c28fc6a72a859bb5083a527e', '136.244.116.167', 1713492181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333439323138313b),
('aa60859841179aeea370f586b4a0601856c8f0d3', '51.255.196.88', 1713498650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333439383635303b),
('92d0adafd2b8b08b0ff5e38d5252ed24deb5eb4e', '51.255.196.88', 1713498682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333439383638323b),
('52c0163905e6942c279978ddba48e69118eb8720', '137.226.113.44', 1713505942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333530353934323b),
('f4e6ea694e4b469cd441d029617dd1f7013bba10', '129.226.158.26', 1713511336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333531313333363b),
('d9c99520bf32541871189c65def2b2782a7d727c', '195.191.219.133', 1713514032, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333531343033323b),
('89b566eafbee5be7756502a00e63d77ef15c193c', '195.191.219.133', 1713514038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333531343033383b),
('d7c6499668f524cb2d0c3f7a207e9c3d97779ec3', '41.216.188.168', 1713518285, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333531383238353b),
('5756106ced9f936a50d7ceac13044a50559e0cfc', '41.216.188.168', 1713518288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333531383238383b),
('b0a8c37e9bbaa199b6b9854adc9c56dc7ad6b941', '85.128.143.130', 1713541794, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333534313739343b),
('939ea857a056d0b9f225e6c4cc4f5df6680a322c', '43.128.110.17', 1713546081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333534363038313b),
('bce638c560de7f2606443175218de1a7c440be52', '13.57.204.201', 1713580982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333538303938323b),
('6f3468808c865831a09b163fdf2b2f4c784c7974', '139.59.212.50', 1713596533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333539363533333b),
('276d9deb5c3518570c243f1e0268e2eec64f7221', '52.167.144.54', 1713597631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333539373633313b),
('750c08d19432ff24335377522003e51768c7c246', '124.243.135.98', 1713598643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333539383634333b),
('8c70a319aeacb4b5dd78465fd9f581e5bbeac3a9', '176.9.18.134', 1713602106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333630323130363b),
('43efd338483c3fbe11cc87261099db03badced1f', '43.163.6.35', 1713622820, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333632323832303b),
('d1384af4c98a2dc39b14ff3f4caeee6da6bff4e3', '93.158.91.13', 1713630291, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333633303239313b),
('5faec558cdebe773062758b075cc8b2eb76c5fd1', '44.242.166.186', 1713633055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333633333035353b),
('843df9fe8411c8154f024ecbec7c64df700d03f9', '178.159.37.38', 1713634373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333633343337333b),
('aac061cc8e33bc4bbad91e72abada1391f37e199', '178.159.37.38', 1713634375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333633343337353b),
('6b953edb32afc69c710811fed564065e7656a37b', '192.36.109.127', 1713640226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333634303232363b),
('1e9672693904bda727ee3523081118a070a1d314', '192.36.109.129', 1713640228, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333634303232383b),
('88b3f7b7805207c9cc09c9fd49b0a883fb95736d', '135.148.195.15', 1713641784, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333634313738343b),
('99dba0615593501f78590aa3a2a14ffc6ec374a8', '50.62.181.1', 1713646152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333634363135323b),
('11783242502ec5af52a6ddf0a2e8f615ca5c1624', '114.96.103.33', 1713656999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333635363939393b),
('660526cc92cf91e4f21627ade53cbc8728338c78', '212.102.40.132', 1713679148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333637393131303b),
('31f5ed22e6ceeab8fecdad9270a365895a3c981d', '213.202.233.34', 1713684325, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333638343332353b),
('021b03fddb0d030b90cd8c9da3efab5b309c0f20', '205.210.31.18', 1713702187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333730323138373b),
('cf53c3cbbf939efa04b044d26b0665f2216c3e73', '34.221.105.42', 1713705289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333730353238383b),
('aa3608bdeb4cbfe7f311f75f4355cb057a8112f0', '54.218.104.183', 1713705295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333730353239353b),
('08b928f1f9778dd8af9a46dbe8396ce52c9ec41f', '54.218.104.183', 1713705299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333730353239393b),
('71d94f823ccb1d21c211ce67572c0ce7e667589d', '84.246.85.11', 1713705790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333730353738393b),
('463db105408fc2ddbe8fef0b86f4b240b52cc4df', '84.246.85.11', 1713705791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333730353739313b),
('688c33b47ca0ef49e594e9c8f6a1531857856e0d', '84.246.85.11', 1713705793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333730353739333b),
('da1655b890de3a69a00e280229598feb5426da88', '72.13.62.43', 1713719900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333731393930303b),
('73e9c448e12e7d63f49fb0e7cd91270b5d6e63fe', '172.104.35.40', 1713731961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333733313936313b),
('2e15b15074fdaea2dfe8dc8e13f404ef8d1af8ba', '93.159.230.90', 1713735400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333733353430303b),
('b118603804ed1f0eafe0c73e7ec90c42159f80b4', '23.22.35.162', 1713741954, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333734313935343b),
('14421399c4b60106d1a2964a8c7c184e8438f9e8', '52.70.240.171', 1713741993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333734313939323b),
('e3bdbfe223b6aea06ceca1a44aa3b8f12f1ed5b6', '52.70.240.171', 1713741993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333734313939333b),
('8889f6f3f62fd8b33ebb80ebe1c87485dd5329ba', '52.70.240.171', 1713742002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333734323030323b),
('bc23b732d1349c94eacff02e79d279e4455c6d99', '147.28.196.178', 1713743569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333734333533303b),
('ff6f93ef09913d1f554b4831b9fbdf3f420c00f6', '170.106.104.42', 1713772446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333737323434363b),
('885240b68c977106d11341b5dc5940a5659658b3', '205.209.106.139', 1713787070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333738373037303b),
('482b574ee51dba4fd3d06516429724b6f0031b0f', '205.209.106.139', 1713787070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333738373037303b),
('5703af0d6b49dd9fb3201170939762a1f6e6a13f', '205.209.106.139', 1713787071, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333738373037313b),
('5e87e4b6344eb7a06ad0efc664896bec4a1ff203', '142.93.216.20', 1713795687, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333739353638373b),
('0cf299c7d0df971e84da120baffa87eaaab2f27e', '142.93.216.20', 1713795698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333739353639383b),
('1d68476c5eba1221901cb81f10c3929be673031e', '142.93.216.20', 1713795709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333739353730393b),
('c82fdeba50524d2be1e4a1745a16e2f307e7b8d3', '142.93.216.20', 1713795715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333739353731343b),
('644a0bafaaf9b30eb70a48d1e707e3211e7fdcbb', '142.93.216.20', 1713795725, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333739353732353b),
('959a488de7eb982bfc5501c72545718cfa6f0756', '142.93.216.20', 1713795733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333739353733333b),
('30398bc72a63212d43ebc555f4e9e2560b8d729f', '205.210.31.183', 1713799655, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333739393635353b),
('536a4ff961e01f79a8d1f9cd9b6b37e54ede6848', '198.235.24.37', 1713805338, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333830353333383b),
('4552c92362e8ab9193dce489eac02631fe7f7c2c', '43.130.32.224', 1713806855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333830363835353b),
('564faf92dbc13d4200ae3bc8f8e583f494b19993', '128.90.129.211', 1713809584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333830393538343b),
('d13a228cf69c0b337b7429f0a8c667a99cf72329', '128.90.129.211', 1713809585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333830393538343b),
('14de9414c5543a42d2deaf9b78b89e7dcfb0100a', '128.90.129.211', 1713809585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333830393538353b),
('7f3d98eadf18046463bd7212fc5c5e7f86b900e5', '128.90.129.211', 1713809586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333830393538363b),
('d45dccbba71880a2de2271768d03e221acab6cf4', '128.90.129.211', 1713809586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333830393538363b),
('270e9067cdb645ee96351b12b59d23106cb9c64b', '128.90.129.211', 1713809587, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333830393538373b),
('85fdbe36c1888160fc87376a5325739b874f7d8d', '128.90.129.211', 1713809587, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333830393538373b),
('3e249fca511ca49da8ac2c5b2b58ee86b76f7252', '128.90.129.211', 1713809588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333830393538383b),
('4f99c21207fd971280c7038af71ba79ded4048b4', '128.90.129.211', 1713809589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333830393538393b),
('2ecc9cc178ce2716024f66f48fea8213356039dd', '128.90.129.211', 1713809589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333830393538393b),
('ada66d5d927b12de8c9deec525bdb4dc8543a218', '207.231.107.137', 1713821376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333832313337363b),
('0d574306ad7e7870caffcae4328e6f8832bafa8b', '89.39.107.4', 1713821398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333832313339383b),
('ef14fc423f1ea9d2814127b1a3039184f3475d9c', '89.39.107.4', 1713821398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333832313339383b),
('35d3aaa82adff950f1b583088e1f77c5e6400f28', '51.124.190.250', 1713822727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333832323732373b),
('6f65596fd51453a7af831cb60a8626a810663b36', '205.210.31.26', 1713823716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333832333731363b),
('20f04b58e18eaca0d3e63b0bae44310338b1c1d6', '144.126.132.146', 1713828785, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333832383738353b),
('0a720f06a2edac5d1f3c6eab067e0e45c9e0bb75', '185.185.217.76', 1713831886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333833313838363b),
('25b66ff3c2d6083b2ccd15da70e9ec7a8d3ea58b', '51.81.2.57', 1713840775, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333834303737353b),
('b752f347f92c45d3156d59871c16b0e57037db2a', '42.83.147.34', 1713846706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333834363730363b),
('9150be8718ed021034f26e46fa2fb4296379cac4', '203.2.64.59', 1713848510, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333834383531303b),
('d3d3131d3291f3d5107a89310e2d212ba993f6c2', '118.179.44.69', 1713858223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333835383230373b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b),
('8c21d26537cf97cea70a9bd7827b2ca03f974e04', '212.30.36.114', 1713869352, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333836393335323b),
('3e4ba66a960d8b289ed89af47c966859c14a381b', '43.155.183.138', 1713891552, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333839313535323b),
('b4e23c284f4a9152416609b44fb476d90929332c', '66.249.66.161', 1713893125, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333839333132353b),
('c4aebbdb330e800401bf40f95593c5cf73a0ca6d', '66.249.66.161', 1713893130, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333839333133303b),
('2d64525ae4b83ed760987e94aec2252baa57be9a', '162.240.172.94', 1713900887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333930303838373b),
('cb8918e9a45628bf44c5067062cfd29af8c2a865', '141.98.11.144', 1713921102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333932313130323b),
('4a395249a82e5d6a00fa9e929d69d471699720a9', '141.98.11.144', 1713921105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333932313130353b),
('b2440b05f0067e1c0e6956e52feef2204a878054', '141.98.11.144', 1713921108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333932313130383b),
('4e88192481201e5d3d05a93e54c4397ee7a4426b', '141.98.11.144', 1713921109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333932313130393b),
('d71052c3eba33deff4e919ee6d64c22b6ba58378', '91.92.244.50', 1713923073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333932333037333b),
('5615246e1e033b77c4afb47cfcef4952a656a72a', '91.92.244.50', 1713923087, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333932333038373b),
('fb9c60b779552c25ca5a02e3053c82f9a1def457', '91.92.244.50', 1713923107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333932333130373b),
('2cdc50ce46da0659cd5fdc03ef408b7520af6a06', '91.92.244.50', 1713923140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333932333134303b),
('42b2507efc86a98f62cf7e53bf67b0e0b24efb48', '91.92.244.50', 1713923154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333932333135343b),
('dff2a65daa759ba35e52ad26467f8190cdb54461', '91.92.244.50', 1713923182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333932333138323b),
('d929a36e8f4879f605a983adc62908edea9bbf3e', '91.92.244.50', 1713923197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333932333139373b),
('2ba5a705a79237c20f58a876b40ce0db3d840a6d', '91.92.244.50', 1713923213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333932333231333b),
('bd7ad8d470e72df91a825954493fa1d0cc73e73f', '150.109.16.20', 1713933844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333933333834343b),
('3d5c3e49d17a6fd214e933ce79e04564fdad33b7', '118.179.44.69', 1713957320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333935373332303b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b),
('582a28fbfec2ac2fd350eb7c39ebe2a296a652cd', '118.179.44.69', 1713957730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333935373733303b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b),
('bc7bb8cae6ef63b2c3a18925a78160ae166c5f8d', '118.179.44.69', 1713957763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333935373733303b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b),
('49de989dd90f428bf8e137a15b2475230cbfd2ab', '205.210.31.11', 1713960652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333936303635323b),
('27e2ed44f9505b82ac5a11fe0d85508267aaffad', '35.158.93.215', 1713962915, ''),
('40907344e2197a8daff04666782ccd01b9989dc6', '152.42.180.180', 1713964224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333936343232343b),
('2afdbee01f2e057e201b945a2067bc056ff613c7', '152.42.180.180', 1713964225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333936343232353b),
('fd5e042d177309bf132ba1ae70ecbf277b5dc6f3', '152.42.180.180', 1713964226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333936343232363b),
('6073fbe89d05c696f7afbb0a26d8cef1ff4eefe5', '152.42.180.180', 1713964227, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333936343232373b),
('1f0733f40a9bf59d9483db4d76bd46b5412cc364', '52.12.2.160', 1713967824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333936373832343b),
('e57b4818c95137f2abde6f9cb441e93314f1f5c6', '52.12.2.160', 1713967826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333936373832363b),
('661cb538a51cda7174fd7fafc8a9e0f188ab9e2b', '52.167.144.54', 1713970744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333937303734343b),
('73e2003b1e1c755fc43fe2dfe47c8e1ea895c894', '51.222.253.5', 1713971630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333937313633303b),
('fb0f3018f0a10bff9d7d9931041053577508245b', '120.71.59.24', 1713973302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333937333330323b),
('c5fb07d14b585b60b0f1cf65b7a13b6448d10571', '51.89.227.251', 1713974790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333937343739303b),
('6c378b2460c7e087d667c6c6c4a5e9417a1d2f5f', '51.89.227.251', 1713974791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333937343739313b),
('b3552937ccfdb54860309ff3a080e86ef32c3cd5', '183.2.185.59', 1713982003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333938323030323b),
('8906441c3f4a6d69465db322d3594ce47ff34985', '183.2.185.59', 1713982003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333938323030333b),
('e65c83413f41f2bb8c447b6f437dadd735006c5f', '43.156.41.16', 1713990985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333939303938353b),
('2f2f5841de7fba1e410e79cdb882891d1d4d2c24', '185.215.180.76', 1713992394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333939323335383b),
('7298ca350332b0a3c77ae9f5b865de5ef85530b8', '107.189.28.123', 1714001774, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343030313737343b),
('b4ff0f0d41f5e2bfce3b64ec756192e0a9c8d2d1', '20.172.15.155', 1714007376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343030373337363b),
('dc09063fcaa2a78a69da2ded4e7caf4cf54e12dd', '20.172.15.155', 1714007407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343030373430373b),
('0a2fb53c656f98bb46afe4f58b152bd71a856bc5', '223.244.35.77', 1714016033, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343031363033333b),
('7be0f6fa55470488f0d395dc03cf5c5979bf9df9', '118.179.44.69', 1714024430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343032343433303b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f636172747c613a313a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220203132354343204469736320426c61636b223b733a31313a226465736372697074696f6e223b613a353a7b693a303b733a303a22223b693a313b733a303a22223b693a323b733a303a22223b693a333b733a303a22223b693a343b733a303a22223b7d733a31323a2273657269616c6e756d626572223b613a353a7b693a303b733a303a22223b693a313b733a303a22223b693a323b733a303a22223b693a333b733a303a22223b693a343b733a303a22223b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a353b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22372e303030223b733a353a227072696365223b643a3135343137353b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223737303837352e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b726563765f73746f636b5f736f757263657c733a313a2231223b),
('d0921f12c67e412aaf3994a13893defd85006cee', '118.179.44.69', 1714024856, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343032343835363b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f636172747c613a333a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220203132354343204469736320426c61636b223b733a31313a226465736372697074696f6e223b613a353a7b693a303b733a31373a225053554234344259315254413037383935223b693a313b733a31373a225053554234344259335254413037383936223b693a323b733a31373a225053554234344259345254413037393037223b693a333b733a31373a225053554234344259385254413037383539223b693a343b733a31373a225053554234344259385254413037393039223b7d733a31323a2273657269616c6e756d626572223b613a353a7b693a303b733a31313a224a5a5850524c3535383238223b693a313b733a31313a224a5a5850524c3535373639223b693a323b733a31313a224a5a5850524c3535363531223b693a333b733a31313a224a5a5850524c3535383033223b693a343b733a31313a224a5a5850524c3535353738223b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a353b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22372e303030223b733a353a227072696365223b643a3135343137353b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223737303837352e30303030223b7d693a323b613a32303a7b733a373a226974656d5f6964223b733a313a2232223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a323b733a343a226e616d65223b733a33313a2242616a616a20446973636f76657220203132354343204469736320426c7565223b733a31313a226465736372697074696f6e223b613a313a7b693a303b733a31373a225053554234344259345254413037373539223b7d733a31323a2273657269616c6e756d626572223b613a313a7b693a303b733a31313a224a5a5850524c3534333034223b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22312e303030223b733a353a227072696365223b643a3135343137353b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223135343137352e30303030223b7d693a333b613a32303a7b733a373a226974656d5f6964223b733a323a223135223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a333b733a343a226e616d65223b733a33343a2250756c73617220313530205477696e20446973632041627320426c61636b2f526564223b733a31313a226465736372697074696f6e223b613a343a7b693a303b733a303a22223b693a313b4e3b693a323b4e3b693a333b4e3b7d733a31323a2273657269616c6e756d626572223b613a343a7b693a303b733a303a22223b693a313b4e3b693a323b4e3b693a333b4e3b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a343b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22342e303030223b733a353a227072696365223b643a3231363935303b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223836373830302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b726563765f73746f636b5f736f757263657c733a313a2231223b),
('13b64eb25c2fc67b7bbd912db75deeba2967be43', '118.179.44.69', 1714025023, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343032343835363b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f73746f636b5f736f757263657c733a313a2231223b),
('39744e48212a4cdd8594752fc4a2f9129922457b', '35.171.144.152', 1714028095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343032383039353b),
('8e0f7ad88f5e5ff014572c1373d21fe71cd80dc6', '35.171.144.152', 1714028095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343032383039353b),
('b407e9c0539d008d1c3a4bffc7254c38c478365e', '54.88.179.33', 1714028096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343032383039363b),
('c3e2a5ad7e03f10e72f227d034fde8548a9ad2f5', '178.254.12.183', 1714041070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343034313037303b),
('3ea6ae36f1ba43fbb3f0dec15e47a095885cf8b1', '20.171.82.100', 1714042550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343034323534393b),
('24956ef72205072f47b7489100dc776cf49fdfe8', '170.106.159.160', 1714054668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343035343636383b),
('c6c252d9b5394d83bd146fcee968d044ce9625bd', '93.158.90.71', 1714055873, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343035353837333b),
('71dea32e3820b24d33cea67ae592d924442c228c', '93.158.90.73', 1714055874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343035353837343b),
('03b238c4d18ba91db6d39ddc254ab0a724435685', '205.210.31.22', 1714066234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036363233343b),
('513eea9983c8e583e8b327e422513a219d12f3ac', '212.30.36.91', 1714087572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343038373537323b),
('e617e8b50ce633845b3f80429056f4591d15568e', '142.202.240.82', 1714091845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343039313834353b),
('70d3a18607edb03a2c3b58d5a0565f068c4e03d2', '142.202.240.82', 1714091845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343039313834353b),
('9f35766fbffa06d0126f07ca789b8a828a4c9ad5', '142.202.240.82', 1714091846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343039313834363b),
('ad1e6d5183c78f9eba19aab4cd7f5e55e5046377', '142.202.240.82', 1714091846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343039313834363b),
('9d385af1fdf379d6c82142bf5118e9341b4eaca2', '170.106.101.31', 1714095897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343039353839373b),
('6d447bbb5863731bf84501c71885479bd2914030', '137.226.113.44', 1714110950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343131303935303b),
('c0977d8b9e73f1930ecba6e12326f6240aae13a2', '52.230.152.144', 1714119007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343131393030373b),
('d57fd86dc709e38796d36cb7bfb0f9b27b30a6db', '103.78.0.62', 1714124648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343634383b),
('8ab74776affa7caa7c011ae17552db8fa466f4a6', '103.78.0.62', 1714124650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343635303b),
('0e12b7fc57df866c65a2f9ee01b2285d0bccbc2d', '103.78.0.62', 1714124651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343635313b),
('ec06802dce0b060d693e04f258938839ba6d28e7', '103.78.0.62', 1714124653, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343635333b),
('80fdd0ddc28eed40c787d0d0fb6b2aa4a5d056c1', '103.78.0.62', 1714124654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343635343b),
('529f9f136d894e2bf40547a1638ddaada66edfd7', '103.78.0.62', 1714124656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343635363b),
('5800d286bb20c6ea8f93d84aa7fa662090a06399', '103.78.0.62', 1714124657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343635373b),
('4101047a47e0412c147815eac7ee02473e49dab4', '103.78.0.62', 1714124659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343635393b),
('d122a3052a5bb676e1626574cccf7df62015f9d0', '103.78.0.62', 1714124660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343636303b),
('a48aaeb953b1fe8e0f3fd08ac12cebaf364b2736', '103.78.0.62', 1714124662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343636323b),
('3cf03a6df5bad3e4f541c3455a9995e7b71bdb55', '103.78.0.62', 1714124663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343636333b),
('3cf48a4601d0f32240eac3e5aa7e86f933e2f93c', '103.78.0.62', 1714124665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343636353b),
('9e111a23f476b2efeea88def6eeab9ba74197c1c', '103.78.0.62', 1714124666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343636363b),
('c4c21e029eba5d601710ed207f93847f9fe9440c', '103.78.0.62', 1714124668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343636383b),
('9a599f004d517d168fbd2760d6d157a2c17ec191', '103.78.0.62', 1714124670, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343637303b),
('38b21e181b1db0cb959c2939605b2978f02241a2', '103.78.0.62', 1714124671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343637313b),
('e3470256930dbceeb5364805a51133507f265976', '103.78.0.62', 1714124673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132343637333b),
('8fb8b6be073228b15d3e27aaa5dc9d1bd828c7ed', '45.80.158.133', 1714126602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343132363630323b),
('e35d5fd98f0f0d5cd375bf89a3ff62d37cbfc59e', '93.158.91.19', 1714132936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343133323933363b),
('8c0ad5597ed9647d4ae446c42fda2525e68d371c', '198.235.24.141', 1714133319, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343133333331393b),
('aa2995ab82218140bcdaa3c1f1f2f28e4b2b49ef', '198.235.24.133', 1714137573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343133373537333b),
('60bcafba9997380cef61da241565039172ea301d', '43.153.110.177', 1714138489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343133383438393b),
('c9d1bf560425084c8601d936b28ec6049badf5f9', '198.235.24.48', 1714147467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343134373436373b),
('872e5619dc1f16b1b531a35ed1d1f30056d5b1d7', '162.240.161.88', 1714148177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343134383137373b),
('fc9c15d82d4e177a5d0087e59cc01330b2719355', '205.210.31.175', 1714149329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343134393332393b),
('303240b5564c366c0128c3ad296cb14292cf2d1e', '144.126.132.146', 1714150524, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343135303532343b),
('0fcdc37b358a54302cd73aa85f785964fb8dcf5e', '52.170.212.47', 1714167163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343136373136333b),
('a15436bc895da735da06d0eef9d1afb36b6b6fcd', '54.183.206.185', 1714173852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343137333835323b),
('33d9d40769c388d1520a23f28a8ceb74ae696dba', '139.180.131.16', 1714196952, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343139363935313b),
('bca72c46f6c241da4eb146811670120029eface9', '192.175.111.233', 1714214105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343231343130343b),
('8e8f492c3374277ac43f2c0b1f1d58dad4e7b10c', '192.175.111.238', 1714214105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343231343130353b),
('544ad7f52a8d2ef931142d519545275cd9d23184', '192.175.111.241', 1714214106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343231343130363b),
('d0ace9e331f1e7a3c03b8a213a06d1a49b079df0', '64.15.129.100', 1714214107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343231343130373b),
('11324dc52a97a42cd86384a6f64a36e8db4e6a85', '192.175.111.234', 1714214107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343231343130373b),
('3478e625e8a144c54b598e926a2f69cef49c1b7e', '43.135.149.154', 1714220636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343232303633363b),
('501d25d152cb0cfb5468cbc6386bcaef99a882e0', '172.81.131.77', 1714247079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343234373037393b),
('df7fd91daad203c7aa85528ef4beee06799f0399', '62.210.215.74', 1714254020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343235343032303b),
('32369ef5eed486a7344a7ce844cff6aa92fbb39c', '167.172.116.208', 1714260133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343236303133333b);
INSERT INTO `ospos_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1d41b54c985fb6684071a5b14da9eb30e26a140d', '150.109.253.34', 1714260688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343236303638373b),
('b486f993be87310bce9538b65d76a51f9e42bf7a', '85.121.205.155', 1714265371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343236353337313b),
('1f777d2b582164c39fa2d04fee9f6d81bb0b2ad1', '118.179.44.69', 1714281520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343238313532303b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f636172747c613a313a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2234223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220313135434320446973632020426c61636b223b733a31313a226465736372697074696f6e223b613a343a7b693a303b733a303a22223b693a313b4e3b693a323b4e3b693a333b4e3b7d733a31323a2273657269616c6e756d626572223b613a343a7b693a303b733a303a22223b693a313b4e3b693a323b4e3b693a333b4e3b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a343b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22322e303030223b733a353a227072696365223b643a3134333235303b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223537333030302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b726563765f73746f636b5f736f757263657c733a313a2231223b),
('bc094db3e54ae882a0b2e02b1d0096b770e6f91f', '118.179.44.69', 1714282063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343238323036333b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f636172747c613a323a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2234223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220313135434320446973632020426c61636b223b733a31313a226465736372697074696f6e223b613a343a7b693a303b733a31373a22505355413135415a3152544b3134303439223b693a313b733a31373a22505355413135415a3652544b3134313330223b693a323b733a31373a22505355413135415a3952544b3134313233223b693a333b733a31373a22505355413135415a3852544c3134363033223b7d733a31323a2273657269616c6e756d626572223b613a343a7b693a303b733a31313a224a42585050473639313438223b693a313b733a31313a224a42585050473831323130223b693a323b733a31313a224a42585050473831333532223b693a333b733a31313a224a42585050473830383233223b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a343b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22322e303030223b733a353a227072696365223b643a3134333235303b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223537333030302e30303030223b7d693a323b613a32303a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a323b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220203132354343204469736320426c61636b223b733a31313a226465736372697074696f6e223b613a363a7b693a303b733a303a22223b693a313b4e3b693a323b4e3b693a333b4e3b693a343b4e3b693a353b4e3b7d733a31323a2273657269616c6e756d626572223b613a363a7b693a303b733a303a22223b693a313b4e3b693a323b4e3b693a333b4e3b693a343b4e3b693a353b4e3b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a363b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2231322e303030223b733a353a227072696365223b643a3135343137353b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223932353035302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b726563765f73746f636b5f736f757263657c733a313a2231223b),
('9d4d4aef0d89969714a82794c7059efa073d601a', '118.179.44.69', 1714282942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343238323934323b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f636172747c613a333a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2234223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220313135434320446973632020426c61636b223b733a31313a226465736372697074696f6e223b613a343a7b693a303b733a31373a22505355413135415a3152544b3134303439223b693a313b733a31373a22505355413135415a3652544b3134313330223b693a323b733a31373a22505355413135415a3952544b3134313233223b693a333b733a31373a22505355413135415a3852544c3134363033223b7d733a31323a2273657269616c6e756d626572223b613a343a7b693a303b733a31313a224a42585050473639313438223b693a313b733a31313a224a42585050473831323130223b693a323b733a31313a224a42585050473831333532223b693a333b733a31313a224a42585050473830383233223b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a343b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22322e303030223b733a353a227072696365223b643a3134333235303b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223537333030302e30303030223b7d693a323b613a32303a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a323b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220203132354343204469736320426c61636b223b733a31313a226465736372697074696f6e223b613a363a7b693a303b733a31373a225053554234344259585254413038343031223b693a313b733a31373a225053554234344259375254413038333836223b693a323b733a31373a225053554234344259335254413038343230223b693a333b733a31373a225053554234344259375254413038343139223b693a343b733a31373a225053554234344259355254413038343034223b693a353b733a31383a22505355423434425931525441303834333937223b7d733a31323a2273657269616c6e756d626572223b613a363a7b693a303b733a31313a224a5a5850524c3536303234223b693a313b733a31313a224a5a5850524c3535383735223b693a323b733a31313a224a5a5850524c3536303539223b693a333b733a31313a224a5a5850524c3535383533223b693a343b733a31313a224a5a5850524c3535373936223b693a353b733a31313a224a5a5850524c3535383136223b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a363b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2231322e303030223b733a353a227072696365223b643a3135343137353b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223932353035302e30303030223b7d693a333b613a32303a7b733a373a226974656d5f6964223b733a323a223137223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a333b733a343a226e616d65223b733a32373a2250756c736172203135302053442041425320426c61636b2f526564223b733a31313a226465736372697074696f6e223b613a31303a7b693a303b733a303a22223b693a313b4e3b693a323b4e3b693a333b4e3b693a343b4e3b693a353b4e3b693a363b4e3b693a373b4e3b693a383b4e3b693a393b4e3b7d733a31323a2273657269616c6e756d626572223b613a31303a7b693a303b733a303a22223b693a313b4e3b693a323b4e3b693a333b4e3b693a343b4e3b693a353b4e3b693a363b4e3b693a373b4e3b693a383b4e3b693a393b4e3b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a31303b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22352e303030223b733a353a227072696365223b643a3139343737353b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31323a22313934373735302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b726563765f73746f636b5f736f757263657c733a313a2231223b),
('5727bb402ef1de9b5025d68560e1a6ab34b01633', '118.179.44.69', 1714285556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343238353535363b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f73746f636b5f736f757263657c733a313a2231223b),
('b191cf240916893f63160e8e0f945c7a530b2ab6', '118.179.44.69', 1714285556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343238353535363b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f73746f636b5f736f757263657c733a313a2231223b),
('6fe74db2abe8ca2d044f9c37d77dad8c58d9c4b3', '139.59.157.136', 1714291262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343239313236323b),
('0cba9f403fd1201ffa9a845f005f789a295994b8', '198.235.24.149', 1714297839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343239373833393b),
('cceab789402322e0ad4934295b1fbdd8d80c232b', '49.51.206.130', 1714300801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343330303830313b),
('be8bc4b8936eb657ab49901c69be3c9a8e8ea468', '91.92.255.116', 1714305188, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343330353138383b),
('5f42dfa15864a64d677ba6a0fbf34b367388ffc3', '81.0.247.6', 1714306867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343330363836373b),
('99728b3ddbca7e966e104a7774655f2b76b2e309', '118.179.44.69', 1714313645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343331333330343b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a323a223139223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2250756c736172203135302053696e676c65204469736320426c61636b2f526564223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a31373a2250535541313143593152544d3336333638223b733a31323a2273657269616c6e756d626572223b733a31313a224448585050483231363230223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22332e303030223b733a353a227072696365223b643a3139323735303b733a31303a22636f73745f7072696365223b733a393a223138343737352e3030223b733a353a22746f74616c223b733a31313a223139323735302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223139323735302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('a51378ccc350ae6b5f6327495a0e2aab6952e835', '206.189.91.14', 1714323863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343332333836333b),
('afd98d5d1404c88d30aad82af5041e55be7a8f2d', '206.189.91.14', 1714323871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343332333837313b),
('1e8b56f75d45d36d9faafbc8161d0a7942a84d32', '206.189.91.14', 1714323877, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343332333837373b),
('43755b4f4549de8205c563d930a2c1dba77afdb9', '206.189.91.14', 1714323901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343332333930313b),
('2274d6620c4eea6c7abcd4b9be5327c30c92c019', '206.189.91.14', 1714323910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343332333930393b),
('e9db99fca4aa0863970ff55dda4a39c786991ec4', '206.189.91.14', 1714323918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343332333931383b),
('3b48603794350b0a98a8033728184bb499f277a1', '206.189.91.14', 1714323921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343332333932313b),
('e3c048cfe22ed9d35f8a70ecd7600d352775e229', '206.189.91.14', 1714323928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343332333932383b),
('796d5db24038700b291efbeaa9041acdedc8ae48', '206.189.91.14', 1714323938, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343332333933383b),
('5b38178a047ac52151ecdc8bdc7633ab4b8bdbe4', '206.189.91.14', 1714323948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343332333934383b),
('cca9acd306454fc776ee19617fdf6b7c6155c0e9', '206.189.91.14', 1714323953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343332333935333b),
('bef23c0522525e3d41ddf9f14bfd0cd0af60a190', '206.189.91.14', 1714323960, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343332333936303b),
('7b7fb30c780b8da80a07d32e27d380ddd221c4d0', '23.88.33.249', 1714327600, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343332373630303b),
('5fc352430c13ec603d28318eba82269955fa8446', '54.174.140.69', 1714327925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343332373932353b),
('f63376785adc7835f5a3f5ff2daf88a164300da2', '66.249.66.32', 1714336239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343333363233393b),
('d448046b2a33720a6c774b71a5685b08e26849a1', '41.216.188.168', 1714338766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343333383736363b),
('57368b3736fc53e7ae13539338ee81a9bb7f8735', '41.216.188.168', 1714338769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343333383736393b),
('17b3e01cf5c98bbe9a54e296bd11ebdc69cadcdd', '66.249.66.34', 1714340183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343334303138333b),
('7737ff8bdfcf46a3669de48658ef506f2bdfd371', '66.249.66.32', 1714341046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343334313034363b),
('d970526c122d7fa6dacfdef033dbf05cec020b8b', '203.2.64.59', 1714342201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343334323230313b),
('79971010c7644e59fce0634cc59fc1ff100f031b', '94.130.131.80', 1714356483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343335363438323b),
('470a34cbf9265eadf6649f6d15a3ebce5fef151c', '87.236.176.147', 1714358115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343335383131353b),
('dd792c4cecdfb2cb9f1238886cf9030960e14ef8', '87.236.176.238', 1714358117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343335383131373b),
('7dd8e71de00a0866e0f10b1c3dee823696528cb3', '66.249.66.33', 1714372279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343337323237393b),
('1a036badf9c1cb05d893cc6624e2883186d0696c', '78.153.140.218', 1714376440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343337363434303b),
('9edb07484822ef4ca489bbb84b85b938d34c7f56', '66.249.66.33', 1714377574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343337373537343b),
('bb7e21d5bb1b013215d904c8071f049700a7d07a', '185.205.246.163', 1714379907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343337393930373b),
('3148318d97c8e732b3dbffd27daf20fbc83372fc', '185.205.246.163', 1714379921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343337393932313b),
('e0bc54728eafd3efc0904b0588f29157f106a9dc', '36.134.147.75', 1714381792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343338313739323b),
('cd70975db678fa7d7afba0ae756249f9fdd96dae', '41.216.188.206', 1714388150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343338383135303b),
('6304662794a629a1bc976b8f6c66eb23b929b711', '41.216.188.206', 1714388186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343338383138363b),
('7f6f3629b916cd9ca4f4c05fd30533bf48c44ad5', '41.216.188.206', 1714388222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343338383232323b),
('689331d48602cfaae1052f335377b35d65c14bdc', '41.216.188.206', 1714388231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343338383233313b),
('1b5e124e8fa8dc1a08f0b2e92ae77db19e34befa', '143.110.228.185', 1714390133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343339303133333b),
('fa6ebebe97f67a9a2c991ba7570cc5d4254c1829', '143.110.228.185', 1714390134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343339303133343b),
('bd1181f110a133ff929a2062c3e898fa06831520', '143.110.228.185', 1714390134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343339303133343b),
('3b87c6b06264ba66b2992a380e4fc4896f835e33', '143.110.228.185', 1714390134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343339303133343b),
('ca8f33f1cf55143e33587931876f56d0b9e96a0d', '143.110.228.185', 1714390135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343339303133353b),
('c25dd8f05aa57106beb3cfaafcd203a3a20fcf12', '143.110.228.185', 1714390135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343339303133353b),
('d80b64b0f96d951119315bc9f5b83cfbfcd295cd', '81.0.247.6', 1714395320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343339353332303b),
('193904881bd6847d5f08f378b0fe9cc190018d4c', '81.0.247.6', 1714395326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343339353332363b),
('c2e8794a8a4788310d65b99c3abf63b52f431d8b', '45.125.66.29', 1714398752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343339383735323b),
('f76ae66c7343e37553ea6e1c6ce389671ad86497', '45.125.66.29', 1714398754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343339383735343b),
('1e83d7317726c8aaa07c5f8995f9c19cc7f867be', '41.216.188.206', 1714400275, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343430303237353b),
('cd7ea81f8195965821422e953e485b269e3f58ac', '66.249.70.101', 1714413733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343431333733333b),
('209b99c0d46cea6f07fba184004fd1969bffd2c0', '54.36.148.189', 1714415823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343431353832333b),
('401189caec5ea59140cbce900a2e91c430b256c9', '66.249.70.100', 1714420501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343432303530303b),
('f4cfc7fecd90684c74d9316d1c1ede5b4cf5e764', '66.249.70.101', 1714420727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343432303732373b),
('6ee62018a89248b4927c7b84a63f4de2bb000b3e', '66.249.70.99', 1714424501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343432343530313b),
('5aed650d508399a5128a93283371509a71bb6254', '43.159.128.149', 1714425289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343432353238393b),
('cdb5ad7235e811298791aa99f7e08c0fdb456424', '185.236.23.131', 1714426932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343432363933323b),
('dc29617f87663b93f1b0547f4121175cc24cd70f', '185.236.23.131', 1714426933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343432363933333b),
('2e734e074b907055eece8dcb8719e669daf0e03d', '37.48.112.43', 1714428594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343432383539343b),
('94198019aeebb4bd4bf638d7ea9076decf39177e', '37.48.112.43', 1714428596, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343432383539363b),
('d058251ccd19bc0e5bf426ee81294e18631f9a44', '167.71.206.163', 1714431447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343433313434373b),
('75747269ec95a30694d6367cb6f9f27492227a66', '167.71.206.163', 1714431448, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343433313434373b),
('fe7418012bfc7b8df03423ed7f919165432aa09a', '66.249.70.100', 1714433595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343433333539353b),
('bf164bb71ff465a2ee41ffdafd463b94270f21f3', '66.249.70.101', 1714438247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343433383234373b),
('cb61fab5b40e4bd6e1d6811ee7865d85a6dc741a', '66.249.70.99', 1714443696, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343434333639363b),
('7518e751d61ea61f15c47e3887c2f0308a668ab8', '46.36.217.58', 1714447183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343434373138333b),
('9d7bb4faab67ce202ff803fc12849dbb38a548db', '66.249.70.99', 1714447758, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343434373735383b),
('2d7c041dad946155178bfba5de38595ba46f8e3f', '66.249.70.101', 1714452834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343435323833343b),
('874076c174ed0329ebac35e464d9272fc488a9d2', '103.38.208.67', 1714456141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343435363032393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('252f44d90208394ba5ea0ce57fd57a2ababfb1f8', '203.76.223.7', 1714456045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343435363034353b),
('9172416c814a23fd9529cb34d493cc076ac7e8ae', '172.59.112.239', 1714456085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343435363038353b),
('874076c174ed0329ebac35e464d9272fc488a9d2', '202.5.37.238', 1714456386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343435363338353b),
('fe172501dc0fafa5b9ea2e51646fe9ab59553cf8', '157.230.48.51', 1714465060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343436353036303b),
('e29aca5a85fb130af51fc9a463c0b2af47ed39f1', '66.249.70.101', 1714465739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343436353733393b),
('58e358dcf6a8994eadfa589bbe30850d5d7e8983', '66.249.70.99', 1714465991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343436353939313b),
('0f0339b98f1cbbea75203382cd39168529d88d19', '43.155.169.133', 1714466200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343436363230303b),
('ae1d1bfb48bd89ee60598c2799df71dae87877ee', '66.249.77.132', 1714481038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343438313033373b),
('3bfb6ceade8dbdb53b30c30d540861beb8dfab71', '66.249.77.133', 1714485307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343438353330373b),
('7a8e22a3e8cb8dfc9d6e4a904c6d3cec2df75145', '66.249.77.132', 1714485344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343438353334343b),
('ccf9288f7e65e3e5b35a1b25907b48a2f2743d15', '5.161.80.150', 1714486287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343438363238373b),
('80c35dd566425e9e88308657779016a03efd46bc', '46.101.9.216', 1714486602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343438363630323b),
('0d82a8b906c3eaf8cf616f5bcebcc87e4f2615ec', '118.179.44.69', 1714489503, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343438393239353b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f73746f636b5f736f757263657c733a313a2231223b),
('9f0f5ff3ffe411e6bc119b6260ab18570e6a63e9', '42.83.147.34', 1714513214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343531333231343b),
('b7beff70f5c146da8c24a32eea63932a1e887289', '135.148.195.12', 1714522306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343532323330363b),
('68cf2e5fbe38fe6fc9261b4a5608c97c0afdf346', '93.159.230.87', 1714530147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343533303134373b),
('d7bd217b79c8978fcc497ce5401f51799d9c10ed', '51.222.253.13', 1714530664, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343533303636343b),
('350be94def1d7f78a7a4d8b1c846f6ff3bceff7d', '149.56.150.68', 1714531824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343533313832343b),
('104a1af83beda2142581cd6e513c7aed71a74bd5', '149.56.150.68', 1714531824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343533313832343b),
('5520ea456a11ebe57ca1f6f04dfa7fb1b0bca257', '149.56.150.68', 1714531825, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343533313832353b),
('4fe5d2248f9f586cc143732e814262f0eb059153', '144.217.135.142', 1714532718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343533323731383b),
('256d329adb09e5ef3694f571682bf2d585dc20d4', '187.191.97.68', 1714542814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343534323831343b),
('bfb767e751c20b2fcb1c5281224452acf210368c', '49.51.206.130', 1714548628, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343534383632383b),
('e076b2edee4c172f7d811d5740aac4b469bb8172', '103.230.106.50', 1714549535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343534393533333b),
('8f8d8224409f0eb2e65da63263c9324779644e02', '52.230.152.191', 1714555254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343535353235333b),
('b3ba6e1a679dff917230d35621928a23927570d8', '103.27.238.82', 1714582713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343538323731333b),
('894c98502439374fcc636f63c2c483c4b5509c25', '43.133.66.151', 1714583714, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343538333731343b),
('4ac372f6bec083c8d85bc817a979802d09d91202', '194.164.60.90', 1714595235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343539353233353b),
('6290c8cff770cd6e204853bc9b8170dd8b15e1c4', '91.92.241.108', 1714609683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343630393638333b),
('4f867970c3171ccab73bb3a5681b03c2a8444484', '91.92.241.108', 1714609702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343630393730323b),
('bc3c5003bad8f390fed6f246fa0a9922ff819881', '91.92.241.108', 1714609726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343630393732363b),
('8c96b149dcf5ac5e02e6b9cd6e381692aca245d0', '91.92.241.108', 1714609747, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343630393734373b),
('e9e503dd21c04c259e42d660f88add6d6164f3d2', '91.92.241.108', 1714609762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343630393736323b),
('c718a892f39e97aee466b6e74df5c1ca92ff1b8e', '91.92.241.108', 1714609782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343630393738323b),
('be987bb7c1e00183055efbad0c49304bbf65fd91', '91.92.241.108', 1714609792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343630393739323b),
('1aeef72604d45c056c05556934301426f4be3eee', '91.92.241.108', 1714609801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343630393830313b),
('9fdb07b021be2333fa7182ca51e8896d374e8b16', '36.99.136.137', 1714611355, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343631313335353b),
('4c944ce7d7dce522a86fae1728f988bd0c47d748', '36.99.136.129', 1714611356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343631313335363b),
('437a8a8f9728f58dd8d09738addb63e3918f123e', '124.90.53.209', 1714611393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343631313339333b),
('e38d78f01be512c997a9f0611814a95e83ce62e6', '165.22.210.198', 1714630702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343633303730323b),
('7ca6eca7dbed067c0caadb98b0dd1e4e413f8630', '5.133.192.167', 1714631873, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343633313837333b),
('9116fe5794f06fd9c58a59b36b5e82e2f739d3c3', '43.157.40.137', 1714633094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343633333039343b),
('9a755190c5df31d935aed301535b6c5483189a68', '118.179.44.69', 1714635304, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343633353330343b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d726563765f636172747c613a313a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220203132354343204469736320426c61636b223b733a31313a226465736372697074696f6e223b613a343a7b693a303b733a303a22223b693a313b4e3b693a323b4e3b693a333b4e3b7d733a31323a2273657269616c6e756d626572223b613a343a7b693a303b733a303a22223b693a313b4e3b693a323b4e3b693a333b4e3b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a343b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2231382e303030223b733a353a227072696365223b643a3135343137353b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223631363730302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b726563765f73746f636b5f736f757263657c733a313a2231223b),
('7bfcd0a46fafabb92a3748388da6a1ffe8a38da3', '118.179.44.69', 1714635787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343633353738373b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d726563765f636172747c613a333a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220203132354343204469736320426c61636b223b733a31313a226465736372697074696f6e223b613a343a7b693a303b733a31373a225053554234344259315254413039323630223b693a313b733a31373a225053554234344259375254413037393936223b693a323b733a31373a225053554234344259365254413039323731223b693a333b733a31373a225053554234344259385254413039323836223b7d733a31323a2273657269616c6e756d626572223b613a343a7b693a303b733a31313a224a5a5857524d3831303935223b693a313b733a31313a224a5a5857524c3535373030223b693a323b733a31313a224a5a5857524d3036373437223b693a333b733a31313a224a5a5857524d3037303730223b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a343b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2231382e303030223b733a353a227072696365223b643a3135343137353b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223631363730302e30303030223b7d693a323b613a32303a7b733a373a226974656d5f6964223b733a313a2232223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a323b733a343a226e616d65223b733a33313a2242616a616a20446973636f76657220203132354343204469736320426c7565223b733a31313a226465736372697074696f6e223b613a313a7b693a303b733a31373a225053554234344259385254413039313132223b7d733a31323a2273657269616c6e756d626572223b613a313a7b693a303b733a31313a224a5a5857524d3830313736223b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22312e303030223b733a353a227072696365223b643a3135343137353b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223135343137352e30303030223b7d693a333b613a32303a7b733a373a226974656d5f6964223b733a323a223137223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a333b733a343a226e616d65223b733a32373a2250756c736172203135302053442041425320426c61636b2f526564223b733a31313a226465736372697074696f6e223b613a353a7b693a303b733a303a22223b693a313b4e3b693a323b4e3b693a333b4e3b693a343b4e3b7d733a31323a2273657269616c6e756d626572223b613a353a7b693a303b733a303a22223b693a313b4e3b693a323b4e3b693a333b4e3b693a343b4e3b7d733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a353b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2231352e303030223b733a353a227072696365223b643a3139343737353b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223937333837352e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b726563765f73746f636b5f736f757263657c733a313a2231223b),
('40d0d1e7356f94f40f9810a00cae99cd95a1edca', '118.179.44.69', 1714635795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343633353738373b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d726563765f73746f636b5f736f757263657c733a313a2231223b),
('ca55581e225ec93ec085edd21bc5b0d2a0d289f0', '146.190.64.154', 1714636043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343633363034333b),
('5fbe80c0120ff9c4a9aecb7cecca9b1a07e4e98d', '111.93.197.82', 1714642621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343634323632313b),
('071ba114f56979f7dc34357e2c8dc6d5c18bec4d', '3.87.144.193', 1714643168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343634333136383b),
('74ca2ba2c64967c436f51fea7c63c780bdf94e0d', '3.87.144.193', 1714643168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343634333136383b),
('f0d29ab9c77e6f66c9060e6c9f23c7ebd222def9', '3.87.144.193', 1714643168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343634333136383b),
('d9ed856579a1f2a4febd9f974842ec79c0907661', '3.87.144.193', 1714643169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343634333136393b),
('c9ecc7bfffb1ded2ad0a0630199da16b6f4a190e', '3.87.144.193', 1714643169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343634333136393b),
('6f4ac97e5f49f1781120a6f05a2df163ed68d282', '118.179.44.69', 1714654456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343635343435363b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220203132354343204469736320426c61636b223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2232322e303030223b733a353a227072696365223b733a393a223136303530302e3030223b733a31303a22636f73745f7072696365223b733a393a223135343137352e3030223b733a353a22746f74616c223b733a31313a223136303530302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223136303530302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d),
('d2e73a15bfc84d2a826f5bbde661228ad1191ece', '118.179.44.69', 1714655242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343635353234323b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2242616a616a20446973636f76657220203132354343204469736320426c61636b223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a31373a225053554234344259375254413038333836223b733a31323a2273657269616c6e756d626572223b733a31313a224a5a5850524c3535383735223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2232322e303030223b733a353a227072696365223b643a3136303530303b733a31303a22636f73745f7072696365223b733a393a223135343137352e3030223b733a353a22746f74616c223b733a31313a223136303530302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223136303530302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d),
('9d3430f4773b6d42ba51a33ba39b8faf30512288', '118.179.44.69', 1714655598, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343635353539383b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a323a223139223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a33323a2250756c736172203135302053696e676c65204469736320426c61636b2f526564223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a31373a2250535541313143593952544d3333393933223b733a31323a2273657269616c6e756d626572223b733a31313a224448585050483139383834223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22332e303030223b733a353a227072696365223b643a3139323735303b733a31303a22636f73745f7072696365223b733a393a223138343737352e3030223b733a353a22746f74616c223b733a31313a223139323735302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31313a223139323735302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('ecf1ff69f2ccc40814059150d10e46beb065e58e', '118.179.44.69', 1714655631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343635353539383b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b),
('f150555521110a498b0b9a263a96199e674b401d', '103.160.89.43', 1714657486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343635373438363b),
('3d99fa669ac4f0eef5c5bc3b5fbe500b446ea073', '103.160.89.43', 1714657487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343635373438373b),
('240a7aef0dc026f60d4cc1727c0adc148573e615', '93.158.90.45', 1714660407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343636303430373b),
('6f67db23c09a8da8f342e9a397c0689bad019ef4', '93.158.91.33', 1714660409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343636303430393b),
('bc6114acfcf575e2039dd46d7d32b6eb6f1faeb2', '43.131.248.209', 1714664399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343636343339393b),
('c1d1a37b55b863e5297778c76191af5e8105dd20', '198.235.24.20', 1714666732, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343636363733323b),
('625aa7e5d2b70578e124940e56a7feb5aa82aff5', '80.151.185.18', 1714675726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343637353732363b),
('fb5e34642aa789e75ba9d8d3545c9c113c02cdac', '80.151.185.18', 1714675729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343637353732393b),
('74f0124af4e31e457698196eff4d60889cf05c9a', '80.151.185.18', 1714675798, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343637353739383b),
('159739e2cd40da8f9cc854316e0f16bb601689ec', '139.59.38.146', 1714677174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343637373137343b),
('b666cafa2267e9d1a857a35f78c4bae306bb6b09', '185.211.6.82', 1714699053, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343639393035333b),
('68a3274bdf287dbee0a35e6673e53b28e6ae9213', '185.211.6.82', 1714699059, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343639393035393b),
('58123ea47f59abe706ad782fced8d58474dfeb8a', '185.211.6.82', 1714699085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343639393038353b),
('8ef1f37db29301e64d33ca0756f1ad76ac5b7f11', '185.211.6.82', 1714699090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343639393039303b),
('68b04dda938317809f49fc898f1f5306ee9bc775', '185.211.6.82', 1714699093, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343639393039333b),
('6e6283fc593e3fb5d5c462a1ff9d259c865a3cd9', '185.211.6.82', 1714699108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343639393130383b),
('9e33e55d6e45de0d413cbae890ffb3735dc707bf', '185.211.6.82', 1714699112, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343639393131323b),
('87a5f5d27c871a7c1731b34e192fa1bcfffc5819', '185.211.6.82', 1714699120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343639393132303b),
('e33747c8681f00469851618d70b8a5d9420b4e41', '94.247.172.129', 1714701612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343730313631323b),
('11e95d4eddc193b12dfab35380eb031577cffb6a', '114.96.103.33', 1714702789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343730323738393b),
('c9dc2dd5ac1909f97ae0d9c83bf09143e5b761d6', '196.119.204.127', 1714710581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731303538313b),
('d97e29b621be1a15c94defea9a0de2f57d7022ba', '196.119.204.127', 1714710584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731303538343b),
('a6aa73ca9ed61a8a84c377d2b7ec58d7d2418e64', '196.119.204.127', 1714710587, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731303538373b),
('8bbb23dbe694a86ba72ca009020b836789b4617f', '196.119.204.127', 1714710590, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731303539303b),
('eb37a0a36c0c684723933543c8ba44f14e18a470', '196.119.204.127', 1714710593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731303539333b),
('914f0fcb0ea43b54b45520d63992865c72402fd6', '196.119.204.127', 1714710600, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731303630303b),
('33e9869661080bdcf829d326a4b8f1c510ae76a5', '196.119.204.127', 1714710605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731303630353b),
('455d6a1c76445b9f06778bf159a384faf13cb321', '196.119.204.127', 1714710609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731303630383b),
('06915b253b0382c1fed95bd3c583c35adf1a0dbe', '196.119.204.127', 1714710613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731303631333b),
('945e7cf3a663bd2fc9973a48d041d9129c8bd698', '196.119.204.127', 1714710620, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731303632303b),
('bb6da1cb555fcfbaab08aa38c7536eb94298dcdb', '196.119.204.127', 1714710624, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731303632343b),
('36199b6e7a5d9ebb24644e6b182fa718e9328190', '196.119.204.127', 1714710635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731303633353b),
('ffb7d5f2e8b5a98ee7ae7e8d140e30ae7159de5f', '196.119.204.127', 1714710641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731303634313b),
('781ead54290043160eaec833e5d87e429e7a8dd3', '196.119.204.127', 1714710646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731303634363b),
('8c43aecae698a15502a054b51d6d70fbe4ace8ec', '89.248.172.115', 1714712573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731323537333b),
('8effc5c453652e55a25bcf727d1ac3c28c6e3226', '194.26.192.16', 1714713089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731333038393b),
('a2e598805fa987fc08270ddaa96e1e40325c6219', '194.26.192.16', 1714713090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731333039303b),
('ceaf7e777a4893008003d0037ed06520c7d1e4d5', '194.26.192.16', 1714713091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731333039313b),
('6d05ae10054f518498820077cb627ca6056eeb2e', '194.26.192.16', 1714713091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731333039313b);
INSERT INTO `ospos_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('3b6a5f7503820ec576fed16d7b7d43cbc2ba60cf', '194.26.192.16', 1714713092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731333039323b),
('bdce482b51fa426033ba7f79ef23ddf16b9bee6d', '194.26.192.16', 1714713092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731333039323b),
('3e4dccd128446e1894ac9ed7f00be02de8b993a6', '194.26.192.16', 1714713093, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731333039333b),
('98afaa34ab47a4b17aad4daaaee8455d7e073362', '194.26.192.16', 1714713094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731333039343b),
('e371bdaa46e57916f0e5257ad373e1a688089fdc', '194.26.192.16', 1714713094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731333039343b),
('acaabf6cf3ff4c59692395076475d67a82dd82bd', '194.26.192.16', 1714713095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731333039353b),
('0f20da87677f2a73255752af1a039e13358bf3c4', '137.226.113.44', 1714715261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731353236313b),
('c6a2c4582f7ca33ab0dc1ff1ab0aed7422e523e4', '170.64.159.205', 1714715341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731353334313b),
('4760dc36aa22091103491d5bb1446db18c22a087', '170.64.159.205', 1714715357, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343731353335373b),
('2cea62b9d798a187a8483674dfed56c8b41d375f', '103.189.156.48', 1714723676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343732333439323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('cce9589c3147760111f35f4c9163543c0ff9e59c', '52.167.144.54', 1714724245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343732343234353b),
('c7a9kcbo06i24s9c3pk8ufs3bp5g1tkv', '127.0.0.1', 1754906159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313735343930363135393b),
('i66ionhvotd96f50946h2dkdcs4v2d9q', '127.0.0.1', 1754906171, 0x5f5f63695f6c6173745f726567656e65726174657c693a313735343930363135393b);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_stock_locations`
--

CREATE TABLE `ospos_stock_locations` (
  `location_id` int NOT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_stock_locations`
--

INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
(1, 'stock', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_suppliers`
--

CREATE TABLE `ospos_suppliers` (
  `person_id` int NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `category` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_suppliers`
--

INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `tax_id`, `deleted`, `category`) VALUES
(4, 'Uttara Motors', 'Bajaj', NULL, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_categories`
--

CREATE TABLE `ospos_tax_categories` (
  `tax_category_id` int NOT NULL,
  `tax_category` varchar(32) NOT NULL,
  `tax_group_sequence` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_codes`
--

CREATE TABLE `ospos_tax_codes` (
  `tax_code_id` int NOT NULL,
  `tax_code` varchar(32) NOT NULL,
  `tax_code_name` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_jurisdictions`
--

CREATE TABLE `ospos_tax_jurisdictions` (
  `jurisdiction_id` int NOT NULL,
  `jurisdiction_name` varchar(255) DEFAULT NULL,
  `tax_group` varchar(32) NOT NULL,
  `tax_type` smallint NOT NULL,
  `reporting_authority` varchar(255) DEFAULT NULL,
  `tax_group_sequence` tinyint(1) NOT NULL DEFAULT '0',
  `cascade_sequence` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_rates`
--

CREATE TABLE `ospos_tax_rates` (
  `tax_rate_id` int NOT NULL,
  `rate_tax_code_id` int NOT NULL,
  `rate_tax_category_id` int NOT NULL,
  `rate_jurisdiction_id` int NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax_rounding_code` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ospos_app_config`
--
ALTER TABLE `ospos_app_config`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `ospos_attribute_definitions`
--
ALTER TABLE `ospos_attribute_definitions`
  ADD PRIMARY KEY (`definition_id`),
  ADD KEY `definition_fk` (`definition_fk`),
  ADD KEY `definition_name` (`definition_name`),
  ADD KEY `definition_type` (`definition_type`);

--
-- Indexes for table `ospos_attribute_links`
--
ALTER TABLE `ospos_attribute_links`
  ADD UNIQUE KEY `attribute_links_uq1` (`attribute_id`,`definition_id`,`item_id`,`sale_id`,`receiving_id`),
  ADD UNIQUE KEY `attribute_links_uq2` (`item_id`,`sale_id`,`receiving_id`,`definition_id`,`attribute_id`),
  ADD KEY `attribute_id` (`attribute_id`),
  ADD KEY `definition_id` (`definition_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `receiving_id` (`receiving_id`);

--
-- Indexes for table `ospos_attribute_values`
--
ALTER TABLE `ospos_attribute_values`
  ADD PRIMARY KEY (`attribute_id`),
  ADD UNIQUE KEY `attribute_value` (`attribute_value`),
  ADD UNIQUE KEY `attribute_date` (`attribute_date`),
  ADD UNIQUE KEY `attribute_decimal` (`attribute_decimal`);

--
-- Indexes for table `ospos_cash_up`
--
ALTER TABLE `ospos_cash_up`
  ADD PRIMARY KEY (`cashup_id`),
  ADD KEY `open_employee_id` (`open_employee_id`),
  ADD KEY `close_employee_id` (`close_employee_id`);

--
-- Indexes for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `sales_tax_code_id` (`sales_tax_code_id`),
  ADD KEY `company_name` (`company_name`);

--
-- Indexes for table `ospos_customers_packages`
--
ALTER TABLE `ospos_customers_packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `ospos_customers_points`
--
ALTER TABLE `ospos_customers_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `ospos_dinner_tables`
--
ALTER TABLE `ospos_dinner_tables`
  ADD PRIMARY KEY (`dinner_table_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ospos_employees`
--
ALTER TABLE `ospos_employees`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  ADD PRIMARY KEY (`expense_id`),
  ADD KEY `expense_category_id` (`expense_category_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `ospos_expenses_ibfk_3` (`supplier_id`),
  ADD KEY `date` (`date`),
  ADD KEY `payment_type` (`payment_type`),
  ADD KEY `amount` (`amount`);

--
-- Indexes for table `ospos_expense_categories`
--
ALTER TABLE `ospos_expense_categories`
  ADD PRIMARY KEY (`expense_category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD KEY `category_description` (`category_description`);

--
-- Indexes for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  ADD PRIMARY KEY (`giftcard_id`),
  ADD UNIQUE KEY `giftcard_number` (`giftcard_number`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_grants`
--
ALTER TABLE `ospos_grants`
  ADD PRIMARY KEY (`permission_id`,`person_id`);

--
-- Indexes for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `trans_items` (`trans_items`),
  ADD KEY `trans_user` (`trans_user`),
  ADD KEY `trans_location` (`trans_location`),
  ADD KEY `trans_date` (`trans_date`);

--
-- Indexes for table `ospos_items`
--
ALTER TABLE `ospos_items`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `items_uq1` (`supplier_id`,`item_id`,`deleted`,`item_type`),
  ADD KEY `item_number` (`item_number`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `deleted` (`deleted`,`item_type`);

--
-- Indexes for table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
  ADD PRIMARY KEY (`item_id`,`name`,`percent`);

--
-- Indexes for table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
  ADD PRIMARY KEY (`item_kit_id`),
  ADD KEY `item_kit_number` (`item_kit_number`),
  ADD KEY `name` (`name`,`description`);

--
-- Indexes for table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
  ADD PRIMARY KEY (`item_kit_id`,`item_id`,`quantity`),
  ADD KEY `ospos_item_kit_items_ibfk_2` (`item_id`);

--
-- Indexes for table `ospos_item_quantities`
--
ALTER TABLE `ospos_item_quantities`
  ADD PRIMARY KEY (`item_id`,`location_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `ospos_migrations`
--
ALTER TABLE `ospos_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ospos_modules`
--
ALTER TABLE `ospos_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  ADD UNIQUE KEY `name_lang_key` (`name_lang_key`);

--
-- Indexes for table `ospos_people`
--
ALTER TABLE `ospos_people`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `email` (`email`),
  ADD KEY `first_name` (`first_name`,`last_name`,`email`,`phone_number`);

--
-- Indexes for table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  ADD PRIMARY KEY (`receiving_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `reference` (`reference`),
  ADD KEY `receiving_time` (`receiving_time`);

--
-- Indexes for table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
  ADD PRIMARY KEY (`receiving_id`,`item_id`,`line`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `sale_time` (`sale_time`),
  ADD KEY `dinner_table_id` (`dinner_table_id`);

--
-- Indexes for table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_location` (`item_location`);

--
-- Indexes for table `ospos_sales_items_taxes`
--
ALTER TABLE `ospos_sales_items_taxes`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `payment_sale` (`sale_id`,`payment_type`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `payment_time` (`payment_time`);

--
-- Indexes for table `ospos_sales_reward_points`
--
ALTER TABLE `ospos_sales_reward_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `ospos_sales_taxes`
--
ALTER TABLE `ospos_sales_taxes`
  ADD PRIMARY KEY (`sales_taxes_id`),
  ADD KEY `print_sequence` (`sale_id`,`print_sequence`,`tax_group`);

--
-- Indexes for table `ospos_sessions`
--
ALTER TABLE `ospos_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`),
  ADD KEY `id` (`id`),
  ADD KEY `ip_address` (`ip_address`);

--
-- Indexes for table `ospos_stock_locations`
--
ALTER TABLE `ospos_stock_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `ospos_suppliers`
--
ALTER TABLE `ospos_suppliers`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `category` (`category`),
  ADD KEY `company_name` (`company_name`,`deleted`);

--
-- Indexes for table `ospos_tax_categories`
--
ALTER TABLE `ospos_tax_categories`
  ADD PRIMARY KEY (`tax_category_id`);

--
-- Indexes for table `ospos_tax_codes`
--
ALTER TABLE `ospos_tax_codes`
  ADD PRIMARY KEY (`tax_code_id`);

--
-- Indexes for table `ospos_tax_jurisdictions`
--
ALTER TABLE `ospos_tax_jurisdictions`
  ADD PRIMARY KEY (`jurisdiction_id`),
  ADD UNIQUE KEY `tax_jurisdictions_uq1` (`tax_group`);

--
-- Indexes for table `ospos_tax_rates`
--
ALTER TABLE `ospos_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `rate_tax_category_id` (`rate_tax_category_id`),
  ADD KEY `rate_tax_code_id` (`rate_tax_code_id`),
  ADD KEY `rate_jurisdiction_id` (`rate_jurisdiction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ospos_attribute_definitions`
--
ALTER TABLE `ospos_attribute_definitions`
  MODIFY `definition_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_attribute_values`
--
ALTER TABLE `ospos_attribute_values`
  MODIFY `attribute_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_cash_up`
--
ALTER TABLE `ospos_cash_up`
  MODIFY `cashup_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_customers_packages`
--
ALTER TABLE `ospos_customers_packages`
  MODIFY `package_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ospos_customers_points`
--
ALTER TABLE `ospos_customers_points`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_dinner_tables`
--
ALTER TABLE `ospos_dinner_tables`
  MODIFY `dinner_table_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  MODIFY `expense_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_expense_categories`
--
ALTER TABLE `ospos_expense_categories`
  MODIFY `expense_category_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  MODIFY `giftcard_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  MODIFY `trans_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT for table `ospos_items`
--
ALTER TABLE `ospos_items`
  MODIFY `item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
  MODIFY `item_kit_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_migrations`
--
ALTER TABLE `ospos_migrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ospos_people`
--
ALTER TABLE `ospos_people`
  MODIFY `person_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  MODIFY `receiving_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  MODIFY `sale_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  MODIFY `payment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `ospos_sales_reward_points`
--
ALTER TABLE `ospos_sales_reward_points`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_sales_taxes`
--
ALTER TABLE `ospos_sales_taxes`
  MODIFY `sales_taxes_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_stock_locations`
--
ALTER TABLE `ospos_stock_locations`
  MODIFY `location_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ospos_tax_categories`
--
ALTER TABLE `ospos_tax_categories`
  MODIFY `tax_category_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_tax_codes`
--
ALTER TABLE `ospos_tax_codes`
  MODIFY `tax_code_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_tax_jurisdictions`
--
ALTER TABLE `ospos_tax_jurisdictions`
  MODIFY `jurisdiction_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_tax_rates`
--
ALTER TABLE `ospos_tax_rates`
  MODIFY `tax_rate_id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ospos_attribute_definitions`
--
ALTER TABLE `ospos_attribute_definitions`
  ADD CONSTRAINT `fk_ospos_attribute_definitions_ibfk_1` FOREIGN KEY (`definition_fk`) REFERENCES `ospos_attribute_definitions` (`definition_id`);

--
-- Constraints for table `ospos_attribute_links`
--
ALTER TABLE `ospos_attribute_links`
  ADD CONSTRAINT `ospos_attribute_links_ibfk_1` FOREIGN KEY (`definition_id`) REFERENCES `ospos_attribute_definitions` (`definition_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_attribute_links_ibfk_2` FOREIGN KEY (`attribute_id`) REFERENCES `ospos_attribute_values` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_attribute_links_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_attribute_links_ibfk_4` FOREIGN KEY (`receiving_id`) REFERENCES `ospos_receivings` (`receiving_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_attribute_links_ibfk_5` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_cash_up`
--
ALTER TABLE `ospos_cash_up`
  ADD CONSTRAINT `ospos_cash_up_ibfk_1` FOREIGN KEY (`open_employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_cash_up_ibfk_2` FOREIGN KEY (`close_employee_id`) REFERENCES `ospos_employees` (`person_id`);

--
-- Constraints for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD CONSTRAINT `ospos_customers_ibfk_3` FOREIGN KEY (`sales_tax_code_id`) REFERENCES `ospos_tax_codes` (`tax_code_id`);

--
-- Constraints for table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  ADD CONSTRAINT `ospos_expenses_ibfk_1` FOREIGN KEY (`expense_category_id`) REFERENCES `ospos_expense_categories` (`expense_category_id`),
  ADD CONSTRAINT `ospos_expenses_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_expenses_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD CONSTRAINT `ospos_sales_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_payments_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`);

--
-- Constraints for table `ospos_tax_rates`
--
ALTER TABLE `ospos_tax_rates`
  ADD CONSTRAINT `ospos_tax_rates_ibfk_1` FOREIGN KEY (`rate_tax_category_id`) REFERENCES `ospos_tax_categories` (`tax_category_id`),
  ADD CONSTRAINT `ospos_tax_rates_ibfk_2` FOREIGN KEY (`rate_tax_code_id`) REFERENCES `ospos_tax_codes` (`tax_code_id`),
  ADD CONSTRAINT `ospos_tax_rates_ibfk_3` FOREIGN KEY (`rate_jurisdiction_id`) REFERENCES `ospos_tax_jurisdictions` (`jurisdiction_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
