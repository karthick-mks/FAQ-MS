-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2019 at 11:15 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_faqms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `isactive`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(6, 'My Account', 'My Account', 1, '2019-02-15 13:00:05', '2019-02-15 13:00:05', NULL, 1, NULL, NULL),
(7, 'My Order', 'My Order', 1, '2019-02-15 13:00:20', '2019-02-15 13:00:20', NULL, 1, NULL, NULL),
(8, 'Category 3', 'Category 3', 1, '2019-02-20 04:41:39', '2019-02-20 04:41:39', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_02_15_162819_create_categories_table', 1),
(10, '2019_02_15_163322_create_ques_ans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ques_ans`
--

CREATE TABLE `ques_ans` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_read` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `helpful_yes` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `helpful_no` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `list_order` bigint(20) UNSIGNED DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ques_ans`
--

INSERT INTO `ques_ans` (`id`, `question`, `description`, `answer`, `total_read`, `helpful_yes`, `helpful_no`, `category_id`, `list_order`, `isactive`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(5, 'Can I cancel my order?', 'Can I cancel my order?', 'As your order will be processed immediately, you will not be able to cancel your order once you have confirmed payment.', 1, 0, 0, 7, 1, 1, '2019-02-15 13:53:00', '2019-02-15 14:51:12', NULL, 1, 1, NULL),
(6, 'How do I place an order?', 'How do I place an order?', 'You may browse for products or our recommendations through the various categories on our website or simply do a search using keywords if you already have something in mind.', 1, 0, 0, 7, 1, 1, '2019-02-15 13:53:08', '2019-02-15 14:50:59', NULL, 1, 1, NULL),
(7, 'I can\'t log into my account.', 'I can\'t log into my account.', 'There are several reasons why you may face problems logging into your account:\r\n- Make sure you login using the same email and password that you have registered with. \r\n- If you have lost or forgotten your password, click on ‘forget password\' and you will be directed to a reset password page. \r\n- If you still facing other problems logging to your account, our customer service is always there to assist you.', 1, 0, 0, 6, 1, 1, '2019-02-15 13:53:14', '2019-02-15 14:50:47', NULL, 1, 1, NULL),
(8, 'How do I register?', 'How do I register?', 'To place an order, you first have to create an account. You can register with these simple steps:\r\n1. Click on \'Register\' on the top-left corner. \r\n2. Fill up the mandatory details and click \'Sign Up\'. \r\nVerify your email via the email link sent to you, and that\'s it! You\'re ready to start shopping and make your first purchase!', 1, 0, 0, 6, 1, 1, '2019-02-15 13:53:21', '2019-02-15 14:50:29', NULL, 1, 1, NULL),
(9, 'HOW CAN I CHANGE MY SHIPPING ADDRESS?', 'HOW CAN I CHANGE MY SHIPPING ADDRESS', 'By default, the last used shipping address will be saved into to your Sample Store account. When you are checking out your order, the default shipping address will be displayed and you have the option to amend it if you need to.', 1, 0, 0, 7, 1, 1, '2019-02-20 04:30:12', '2019-02-20 04:30:12', NULL, 1, NULL, NULL),
(10, 'HOW DO I ACTIVATE MY ACCOUNT?', 'HOW DO I ACTIVATE MY ACCOUNT', 'The instructions to activate your account will be sent to your email once you have submitted the registration form. If you did not receive this email, your email service provider’s mailing software may be blocking it. You can try checking your junk / spam folder or contact us at help@samplestore.com', 1, 0, 0, 6, 1, 1, '2019-02-20 04:30:32', '2019-02-20 04:30:32', NULL, 1, NULL, NULL),
(11, 'HOW CAN I USE MY REMAINING ACCOUNT CREDITS?', 'HOW CAN I USE MY REMAINING ACCOUNT CREDITS', 'We are in the process of removing the option to pay for your orders by ‘Account Credits’. If you have remaining credits in your account, it will be used to pay for your next checkout. If there are insufficient credits, the system will direct you automatically to pay the balance via Paypal.', 1, 0, 0, 6, 1, 1, '2019-02-20 04:30:52', '2019-02-20 04:30:52', NULL, 1, NULL, NULL),
(12, 'WHY MUST I MAKE PAYMENT IMMEDIATELY AT CHECKOUT?', 'WHY MUST I MAKE PAYMENT IMMEDIATELY AT CHECKOUT', 'Sample ordering is on ‘first-come-first-served’ basis. To ensure that you get your desired samples, it is recommended that you make your payment within 60 minutes of checking out.', 1, 0, 0, 7, 1, 1, '2019-02-20 04:31:09', '2019-02-20 04:31:09', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@faqms.com', NULL, '$2y$10$RVOdO1jbihGazf7EJSEWkeVw.tf4tdoqNaqo2Hb47mYTbuFC5/uMu', NULL, '2019-02-15 12:31:34', '2019-02-15 12:31:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_id_unique` (`id`),
  ADD KEY `categories_name_index` (`name`),
  ADD KEY `categories_description_index` (`description`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `ques_ans`
--
ALTER TABLE `ques_ans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ques_ans_id_unique` (`id`),
  ADD KEY `ques_ans_question_index` (`question`),
  ADD KEY `ques_ans_description_index` (`description`),
  ADD KEY `ques_ans_category_id_index` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ques_ans`
--
ALTER TABLE `ques_ans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
