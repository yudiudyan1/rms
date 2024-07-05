-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 12, 2024 at 12:46 PM
-- Server version: 8.0.26
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrms_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Token', 7, 'add_token'),
(26, 'Can change Token', 7, 'change_token'),
(27, 'Can delete Token', 7, 'delete_token'),
(28, 'Can view Token', 7, 'view_token'),
(29, 'Can add token', 8, 'add_tokenproxy'),
(30, 'Can change token', 8, 'change_tokenproxy'),
(31, 'Can delete token', 8, 'delete_tokenproxy'),
(32, 'Can view token', 8, 'view_tokenproxy'),
(33, 'Can add annual_summary', 9, 'add_annual_summary'),
(34, 'Can change annual_summary', 9, 'change_annual_summary'),
(35, 'Can delete annual_summary', 9, 'delete_annual_summary'),
(36, 'Can view annual_summary', 9, 'view_annual_summary'),
(37, 'Can add audit_history', 10, 'add_audit_history'),
(38, 'Can change audit_history', 10, 'change_audit_history'),
(39, 'Can delete audit_history', 10, 'delete_audit_history'),
(40, 'Can view audit_history', 10, 'view_audit_history'),
(41, 'Can add country', 11, 'add_country'),
(42, 'Can change country', 11, 'change_country'),
(43, 'Can delete country', 11, 'delete_country'),
(44, 'Can view country', 11, 'view_country'),
(45, 'Can add delta_monthly', 12, 'add_delta_monthly'),
(46, 'Can change delta_monthly', 12, 'change_delta_monthly'),
(47, 'Can delete delta_monthly', 12, 'delete_delta_monthly'),
(48, 'Can view delta_monthly', 12, 'view_delta_monthly'),
(49, 'Can add drop_down', 13, 'add_drop_down'),
(50, 'Can change drop_down', 13, 'change_drop_down'),
(51, 'Can delete drop_down', 13, 'delete_drop_down'),
(52, 'Can view drop_down', 13, 'view_drop_down'),
(53, 'Can add event', 14, 'add_event'),
(54, 'Can change event', 14, 'change_event'),
(55, 'Can delete event', 14, 'delete_event'),
(56, 'Can view event', 14, 'view_event'),
(57, 'Can add file', 15, 'add_file'),
(58, 'Can change file', 15, 'change_file'),
(59, 'Can delete file', 15, 'delete_file'),
(60, 'Can view file', 15, 'view_file'),
(61, 'Can add monthly_baseline', 16, 'add_monthly_baseline'),
(62, 'Can change monthly_baseline', 16, 'change_monthly_baseline'),
(63, 'Can delete monthly_baseline', 16, 'delete_monthly_baseline'),
(64, 'Can view monthly_baseline', 16, 'view_monthly_baseline'),
(65, 'Can add monthly_summary', 17, 'add_monthly_summary'),
(66, 'Can change monthly_summary', 17, 'change_monthly_summary'),
(67, 'Can delete monthly_summary', 17, 'delete_monthly_summary'),
(68, 'Can view monthly_summary', 17, 'view_monthly_summary'),
(69, 'Can add position', 18, 'add_position'),
(70, 'Can change position', 18, 'change_position'),
(71, 'Can delete position', 18, 'delete_position'),
(72, 'Can view position', 18, 'view_position'),
(73, 'Can add position_other_pay', 19, 'add_position_other_pay'),
(74, 'Can change position_other_pay', 19, 'change_position_other_pay'),
(75, 'Can delete position_other_pay', 19, 'delete_position_other_pay'),
(76, 'Can view position_other_pay', 19, 'view_position_other_pay'),
(77, 'Can add position_workflow', 20, 'add_position_workflow'),
(78, 'Can change position_workflow', 20, 'change_position_workflow'),
(79, 'Can delete position_workflow', 20, 'delete_position_workflow'),
(80, 'Can view position_workflow', 20, 'view_position_workflow'),
(81, 'Can add static_drop_down', 21, 'add_static_drop_down'),
(82, 'Can change static_drop_down', 21, 'change_static_drop_down'),
(83, 'Can delete static_drop_down', 21, 'delete_static_drop_down'),
(84, 'Can view static_drop_down', 21, 'view_static_drop_down'),
(85, 'Can add yearly_baseline', 22, 'add_yearly_baseline'),
(86, 'Can change yearly_baseline', 22, 'change_yearly_baseline'),
(87, 'Can delete yearly_baseline', 22, 'delete_yearly_baseline'),
(88, 'Can view yearly_baseline', 22, 'view_yearly_baseline'),
(89, 'Can add smtp', 23, 'add_smtp'),
(90, 'Can change smtp', 23, 'change_smtp'),
(91, 'Can delete smtp', 23, 'delete_smtp'),
(92, 'Can view smtp', 23, 'view_smtp'),
(93, 'Can add assigned_country', 24, 'add_assigned_country'),
(94, 'Can change assigned_country', 24, 'change_assigned_country'),
(95, 'Can delete assigned_country', 24, 'delete_assigned_country'),
(96, 'Can view assigned_country', 24, 'view_assigned_country'),
(97, 'Can add users', 25, 'add_users'),
(98, 'Can change users', 25, 'change_users'),
(99, 'Can delete users', 25, 'delete_users'),
(100, 'Can view users', 25, 'view_users');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'authtoken', 'token'),
(8, 'authtoken', 'tokenproxy'),
(5, 'contenttypes', 'contenttype'),
(9, 'master', 'annual_summary'),
(10, 'master', 'audit_history'),
(11, 'master', 'country'),
(12, 'master', 'delta_monthly'),
(13, 'master', 'drop_down'),
(14, 'master', 'event'),
(15, 'master', 'file'),
(16, 'master', 'monthly_baseline'),
(17, 'master', 'monthly_summary'),
(18, 'master', 'position'),
(19, 'master', 'position_other_pay'),
(20, 'master', 'position_workflow'),
(21, 'master', 'static_drop_down'),
(22, 'master', 'yearly_baseline'),
(6, 'sessions', 'session'),
(23, 'smtp', 'smtp'),
(24, 'users', 'assigned_country'),
(25, 'users', 'users');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-03 12:00:06.103697'),
(2, 'auth', '0001_initial', '2024-06-03 12:00:06.423749'),
(3, 'admin', '0001_initial', '2024-06-03 12:00:06.519944'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-06-03 12:00:06.537001'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-03 12:00:06.548669'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-06-03 12:00:06.612012'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-06-03 12:00:06.656105'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-06-03 12:00:06.684170'),
(9, 'auth', '0004_alter_user_username_opts', '2024-06-03 12:00:06.695535'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-06-03 12:00:06.726407'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-06-03 12:00:06.729074'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-03 12:00:06.740020'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-06-03 12:00:06.774997'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-03 12:00:06.814737'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-06-03 12:00:06.845383'),
(16, 'auth', '0011_update_proxy_permissions', '2024-06-03 12:00:06.862715'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-03 12:00:06.900839'),
(18, 'authtoken', '0001_initial', '2024-06-03 12:00:06.946137'),
(19, 'authtoken', '0002_auto_20160226_1747', '2024-06-03 12:00:06.982962'),
(20, 'authtoken', '0003_tokenproxy', '2024-06-03 12:00:06.988037'),
(21, 'master', '0001_initial', '2024-06-03 12:00:07.561877'),
(22, 'sessions', '0001_initial', '2024-06-03 12:00:07.597307'),
(23, 'smtp', '0001_initial', '2024-06-03 12:00:07.619157'),
(24, 'users', '0001_initial', '2024-06-03 12:00:07.672566'),
(25, 'master', '0002_country_symbol', '2024-06-04 16:19:29.929477'),
(26, 'master', '0003_monthly_baseline_position_end_date', '2024-06-06 12:52:38.815918'),
(27, 'master', '0004_auto_20240607_1736', '2024-06-07 17:36:17.734569');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_annual_summary`
--

CREATE TABLE `master_annual_summary` (
  `id` bigint NOT NULL,
  `record_country` varchar(45) DEFAULT NULL,
  `record_year` int NOT NULL,
  `record_month` int NOT NULL,
  `emp_total_count` int NOT NULL,
  `emp_new_count` int NOT NULL,
  `emp_left_count` int NOT NULL,
  `monthly_gross_payout` decimal(20,2) DEFAULT NULL,
  `left_gross_payout` decimal(20,2) DEFAULT NULL,
  `status` int NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `uploaded_by` varchar(100) DEFAULT NULL,
  `security_code` varchar(10) DEFAULT NULL,
  `is_security_code_used` int NOT NULL,
  `sheet_key` varchar(45) DEFAULT NULL,
  `ymd_date` date DEFAULT NULL,
  `sheet_url` varchar(200) DEFAULT NULL,
  `issync` int DEFAULT NULL,
  `record_region` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_audit_history`
--

CREATE TABLE `master_audit_history` (
  `id` bigint NOT NULL,
  `pos_id` varchar(100) DEFAULT NULL,
  `action_by` varchar(100) DEFAULT NULL,
  `action_desc` varchar(500) DEFAULT NULL,
  `other_detail` varchar(500) DEFAULT NULL,
  `created_on` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_country`
--

CREATE TABLE `master_country` (
  `id` bigint NOT NULL,
  `region_name` varchar(100) DEFAULT NULL,
  `country_name` varchar(100) DEFAULT NULL,
  `country_code` varchar(45) DEFAULT NULL,
  `country_flag_code` varchar(10) DEFAULT NULL,
  `is_active` int NOT NULL,
  `local_currency_code` varchar(45) DEFAULT NULL,
  `local_currency` varchar(45) DEFAULT NULL,
  `gbp_average` varchar(45) DEFAULT NULL,
  `usd_average` varchar(45) DEFAULT NULL,
  `euro_average` varchar(45) DEFAULT NULL,
  `added_by` varchar(100) DEFAULT NULL,
  `added_on` datetime(6) NOT NULL,
  `update_on` datetime(6) NOT NULL,
  `symbol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `master_country`
--

INSERT INTO `master_country` (`id`, `region_name`, `country_name`, `country_code`, `country_flag_code`, `is_active`, `local_currency_code`, `local_currency`, `gbp_average`, `usd_average`, `euro_average`, `added_by`, `added_on`, `update_on`, `symbol`) VALUES
(1, 'AME', 'Angola', NULL, NULL, 1, 'AOA', 'Kwanza', '862.1333', '692.58057', '692.58057', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.881570', 'Kz'),
(2, 'AME', 'Bahrain', NULL, NULL, 1, 'BHD', 'Dinar', '0.4693', '0.37704', '0.37704', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.888996', '$'),
(3, 'AME', 'Botswana', NULL, NULL, 1, 'BWP', 'Pula', '16.6236', '13.35431', '13.35431', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.895773', '$'),
(4, 'AME', 'Cameroon', NULL, NULL, 1, 'XAF', 'Franc', '755.4322', '606.86399', '606.86399', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.900993', '$'),
(5, 'AME', 'Central African Republic', NULL, NULL, 1, 'XOF', 'Franc', '755.4322', '606.86399', '606.86399', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.905047', '$'),
(6, 'AME', 'Democratic Republic of Congo', NULL, NULL, 1, 'CDF', 'Franc', '2817.457', '2263.35766', '2263.35766', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.909154', '$'),
(7, 'AME', 'Deposita International', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.913056', '$'),
(8, 'AME', 'Egypt', NULL, NULL, 1, 'EGP', 'Pound', '38.0869', '30.5965', '30.5965', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.918223', '$'),
(9, 'AME', 'Gabon', NULL, NULL, 1, 'XOF', 'Franc', '755.4322', '606.86399', '606.86399', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.922641', '$'),
(10, 'AME', 'Gambia', NULL, NULL, 1, 'GMD', 'Dalasi', '78.2483', '62.8595', '0.014', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.929694', '$'),
(11, 'AME', 'Ghana', NULL, NULL, 1, 'GHS', 'New Cedi', '14.5407', '11.68105', '11.68105', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.939109', '$'),
(12, 'AME', 'Guinea', NULL, NULL, 1, 'GNF', 'Franc', '10702.5089', '8597.68406', '8597.68406', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.943197', '$'),
(13, 'AME', 'Ivory Coast', NULL, NULL, 1, 'XOF', 'Franc', '755.4322', '606.86399', '606.86399', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.947404', '$'),
(14, 'AME', 'Jordan', NULL, NULL, 1, 'JOD', 'Dinar', '0.8829', '0.70923', '0.70923', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.951470', '$'),
(15, 'AME', 'Kenya', NULL, NULL, 1, 'KES', 'Shilling', '174.2925', '140.01503', '140.01503', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.955414', '$'),
(16, 'AME', 'Lebanon', NULL, NULL, 1, 'LBP', 'Pound', '16639.6147', '13367.1601', '13367.1601', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.960218', '$'),
(17, 'AME', 'Lesotho', NULL, NULL, 1, 'LSL', 'Loti', '22.9458', '18.43315', '18.43315', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.964334', '$'),
(18, 'AME', 'Madagascar', NULL, NULL, 1, 'MGA', 'Ariary', '5534.4983', '4446.04794', '4446.04794', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.968256', '$'),
(19, 'AME', 'Malawi', NULL, NULL, 1, 'MWK', 'Kwacha', '1408.451', '1131.45592', '1131.45592', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.972141', '$'),
(20, 'AME', 'Mozambique', NULL, NULL, 1, 'MZN', 'New Metical', '79.53', '63.88913', '63.88913', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.976105', '$'),
(21, 'AME', 'Namibia', NULL, NULL, 1, 'NAD', 'Dollar', '22.9458', '18.43315', '18.43315', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.980055', '$'),
(22, 'AME', 'Nigeria', NULL, NULL, 1, 'NGN', 'Naira', '807.8061', '648.93769', '648.93769', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.983848', '$'),
(23, 'AME', 'Oman', NULL, NULL, 1, 'OMR', 'Rial', '0.4792', '0.38492', '0.38492', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.987646', '$'),
(24, 'AME', 'Qatar', NULL, NULL, 1, 'QAR', 'Riyal', '4.5459', '3.65185', '3.65185', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.991476', '$'),
(25, 'UKI', 'Regional Office', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.306367', '$'),
(26, 'AME', 'Saudi Arabia', NULL, NULL, 1, 'SAR', 'Riyal', '4.6699', '3.75152', '3.75152', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:21.999543', '$'),
(27, 'AME', 'Sierra Leone', NULL, NULL, 1, 'SLL', 'Leone', '26486.2623', '21277.30216', '21277.30216', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.003497', '$'),
(28, 'AME', 'South Africa - Cash Solutions', NULL, NULL, 1, 'ZAR', 'Rand', '22.9458', '18.43315', '18.43315', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.007370', '$'),
(29, 'AME', 'South Africa - Secure Solutions', NULL, NULL, 1, 'ZAR', 'Rand', '22.9458', '18.43315', '18.43315', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.011470', '$'),
(30, 'AME', 'South Africa - Care and Justice', NULL, NULL, 1, 'ZAR', 'Rand', '22.9458', '18.43315', '18.43315', NULL, '2024-05-31 12:44:44.929483', '2024-06-11 18:03:50.816595', '$'),
(31, 'AME', 'Tanzania', NULL, NULL, 1, 'TZS', 'Shilling', '3004.7926', '2413.85057', '2413.85057', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.020602', '$'),
(32, 'AME', 'Uganda', NULL, NULL, 1, 'UGX', 'Shilling', '4647.3413', '3733.36504', '3733.36504', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.024662', '$'),
(33, 'AME', 'United Arab Emirates - Abu Dhabi', NULL, NULL, 1, 'AED', 'Dirham', '4.5707', '3.6718', '3.6718', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.028698', '$'),
(34, 'AME', 'United Arab Emirates - Dubai', NULL, NULL, 1, 'AED', 'Dirham', '4.5707', '3.6718', '3.6718', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.032752', '$'),
(35, 'AME', 'Zambia', NULL, NULL, 1, 'ZMW', 'New Kwacha', '25.1954', '20.24031', '20.24031', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.036554', '$'),
(36, 'APAC', 'Bangladesh', NULL, NULL, 1, 'BDT', 'Taka', '134.1128', '107.73732', '107.73732', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.040395', 'à§³'),
(37, 'APAC', 'C&J - Australia', NULL, NULL, 1, 'AUD', 'Dollar', '1.8766', '1.50754', '1.50754', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.044163', '$'),
(38, 'APAC', 'China', NULL, NULL, 1, 'CNY', 'Yuan Renminbi', '8.8191', '7.08468', '7.08468', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.048145', '$'),
(39, 'APAC', 'Guam', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '0.93', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.052012', '$'),
(40, 'APAC', 'Hong Kong', NULL, NULL, 1, 'HKD', 'Dollar', '9.7472', '7.83027', '0.12', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.056078', '$'),
(41, 'APAC', 'India', NULL, NULL, 1, 'INR', 'Rupee', '102.7735', '82.56138', '0.011', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.060100', '₹'),
(42, 'APAC', 'Indonesia', NULL, NULL, 1, 'IDR', 'Rupiah', '18937.9383', '15213.48053', '15213.48053', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.064514', '$'),
(43, 'APAC', 'Japan', NULL, NULL, 1, 'JPY', 'Yen', '175.4904', '140.97733', '140.97733', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.068443', '$'),
(44, 'APAC', 'Macau', NULL, NULL, 1, 'MOP', 'Pataca', '10.0396', '8.06515', '8.06515', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.072436', '$'),
(45, 'APAC', 'Nepal', NULL, NULL, 1, 'NPR', 'Rupee', '164.4427', '132.10234', '132.10234', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.076501', 'Rs'),
(46, 'APAC', 'Papua New Guinea', NULL, NULL, 1, 'PGK', 'Kina', '4.4727', '3.5931', '3.5931', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.080513', '$'),
(47, 'APAC', 'Regional Office', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(48, 'APAC', 'Risk Consulting - Hill and Associates', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.088329', '$'),
(49, 'APAC', 'Singapore', NULL, NULL, 1, 'SGD', 'Dollar', '1.6715', '1.34275', '1.34275', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.092525', '$'),
(50, 'APAC', 'Taiwan', NULL, NULL, 1, 'TWD', 'Dollar', '38.7193', '31.10451', '31.10451', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.096618', '$'),
(51, 'APAC', 'Thailand', NULL, NULL, 1, 'THB', 'Baht', '43.3402', '34.81663', '34.81663', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.100429', '$'),
(52, 'Corporate Services', 'AUS Electronic Monitoring', NULL, NULL, 1, 'ILS', 'Shekel', '4.605', '3.69935', '3.69935', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.104402', '$'),
(53, 'Corporate Services', 'Corporate Services / International Business Head Office', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.108193', '$'),
(54, 'Europe', 'Austria', NULL, NULL, 1, 'EUR', 'Euro', '0.86', '1.09', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.112157', '$'),
(55, 'Europe', 'Belgium - Secure Solutions', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.116124', '$'),
(56, 'Europe', 'Czech Republic', NULL, NULL, 1, 'CZK', 'Koruna', '27.5798', '22.15578', '22.15578', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.119949', '$'),
(57, 'Europe', 'Denmark', NULL, NULL, 1, 'DKK', 'Krone', '8.5805', '6.89298', '6.89298', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.124127', '$'),
(58, 'Europe', 'Estonia', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.128489', '$'),
(59, 'Europe', 'France', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.132456', '$'),
(60, 'Europe', 'Greece', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.136269', '$'),
(61, 'Europe', 'Latvia', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.140250', '$'),
(62, 'Europe', 'Lithuania', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.144204', '$'),
(63, 'Europe', 'Luxembourg - Secure Solutions', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.148062', '$'),
(64, 'Europe', 'Malta', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.152132', '$'),
(65, 'Europe', 'Morocco - Secure Solutions', NULL, NULL, 1, 'MAD', 'Dirham', '12.6361', '10.15099', '10.15099', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.159016', '$'),
(66, 'Europe', 'Morocco - Cash Solutions', NULL, NULL, 1, 'MAD', 'Dirham', '12.6361', '10.15099', '10.15099', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.163697', '$'),
(67, 'Europe', 'Netherlands - Secure Solutions', NULL, NULL, 1, 'ANG', 'Guilder', '2.2281', '1.78994', '1.78994', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.167667', '$'),
(68, 'Europe', 'Regional Office', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(69, 'Europe', 'Serbia', NULL, NULL, 1, 'RSD', 'Dinar', '135.0143', '108.46148', '108.46148', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.175235', '$'),
(70, 'Europe', 'Slovakia', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.179452', '$'),
(71, 'Europe', 'Slovenia', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.183343', '$'),
(72, 'Europe', 'Turkey', NULL, NULL, 1, 'TRY', 'New Lira', '29.6886', '23.84986', '23.84986', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.190707', '$'),
(73, 'Europe', 'Ukraine', NULL, NULL, 1, 'UAH', 'Hryvnia', '45.9085', '36.87984', '36.87984', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.195605', '$'),
(74, 'LATAM', 'Argentina', NULL, NULL, 1, 'ARS', 'Peso', '363.1072', '291.69621', '291.69621', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.200660', '$'),
(75, 'LATAM', 'Barbados', NULL, NULL, 1, 'BBD', 'Dollar', '2.4896', '1.99994', '1.99994', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.205116', '$'),
(76, 'LATAM', 'Brazil', NULL, NULL, 1, 'BRL', 'Real', '6.2195', '4.99629', '4.99629', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.209709', '$'),
(77, 'LATAM', 'Chile', NULL, NULL, 1, 'CLP', 'Peso', '1042.8022', '837.71798', '837.71798', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.214726', '$'),
(78, 'LATAM', 'Colombia', NULL, NULL, 1, 'COP', 'Peso', '5399.5698', '4337.65535', '4337.65535', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.219210', '$'),
(79, 'LATAM', 'Costa Rica', NULL, NULL, 1, 'CRC', 'Colon', '676.6552', '543.57983', '543.57983', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.223282', '$'),
(80, 'LATAM', 'Ecuador', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.227110', '$'),
(81, 'LATAM', 'El Salvador', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.231104', '$'),
(82, 'LATAM', 'Grenada', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.235140', '$'),
(83, 'LATAM', 'Guatemala', NULL, NULL, 1, 'GTQ', 'Quetzal', '9.7532', '7.83509', '7.83509', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.239002', '$'),
(84, 'LATAM', 'Nicaragua', NULL, NULL, 1, 'NIO', 'Cordoba', '45.5995', '36.63164', '36.63164', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.242911', '$'),
(85, 'LATAM', 'Paraguay', NULL, NULL, 1, 'PYG', 'Guarani', '9078.6727', '7293.20203', '7293.20203', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.246859', '$'),
(86, 'LATAM', 'Peru', NULL, NULL, 1, 'PEN', 'New Sol', '4.6522', '3.73723', '3.73723', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.250970', '$'),
(87, 'LATAM', 'REGIONal Office', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(88, 'LATAM', 'St. Lucia', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.259148', '$'),
(89, 'LATAM', 'Trinidad and Tobago', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.263059', '$'),
(90, 'LATAM', 'Uruguay', NULL, NULL, 1, 'UYU', 'Peso', '48.0283', '38.58277', '38.58277', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.267033', '$'),
(91, 'UKI', 'Allied Universal Electronic Monitoring', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.272118', '$'),
(92, 'UKI', 'AUS Compliance and Investigations', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.276386', '$'),
(93, 'UKI', 'C&J - Care and Rehabilitation Services', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.280280', '$'),
(94, 'UKI', 'C&J - Employment Support Services', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.284554', '$'),
(95, 'UKI', 'C&J - Health Services', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.288768', '$'),
(96, 'UKI', 'C&J - Patient Transport Services', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.292997', '$'),
(97, 'UKI', 'Facilities Management', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.297380', '$'),
(98, 'UKI', 'Ireland', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.302080', '$'),
(99, 'UKI', 'Regional Office', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(100, 'UKI', 'Risk', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.310737', '$'),
(101, 'UKI', 'Secure Solutions UK', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.315115', '$'),
(102, 'UKI', 'UK - Cash Solutions', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-06-12 17:41:22.319720', '$'),
(103, 'AME', 'Angolaa', NULL, NULL, 1, 'Kwanza', 'AOA', '862.1333', '692.58057', '111.58057', NULL, '2024-06-11 17:28:10.036921', '2024-06-11 17:28:10.036968', '$'),
(104, 'AME', 'Bahrainn', NULL, NULL, 1, 'Dinar', 'BHD', '0.4693', '0.37704', '0.37704', NULL, '2024-06-11 17:28:10.044187', '2024-06-11 17:28:10.044208', '$'),
(105, 'AME', 'South Africa - Care and Justice', NULL, NULL, 1, 'ZAR', 'Rand', '22.9458', '18.43315', '18.43315', NULL, '2024-06-11 18:27:33.934877', '2024-06-11 18:27:33.934898', '$'),
(106, 'AME', 'South Africa - Care and Justice', NULL, NULL, 1, 'ZAR', 'Rand', '22.9458', '18.43315', '18.43315', NULL, '2024-06-11 18:56:00.958568', '2024-06-11 18:56:00.958587', '$'),
(107, 'AME', 'South Africa - Care and Justice', NULL, NULL, 1, 'ZAR', 'Rand', '22.9458', '18.43315', '18.43315', NULL, '2024-06-12 17:18:12.706842', '2024-06-12 17:18:12.706875', '$'),
(108, 'AME', 'South Africa - Care and Justice', NULL, NULL, 1, 'ZAR', 'Rand', '22.9458', '18.43315', '18.43315', NULL, '2024-06-12 17:41:22.015839', '2024-06-12 17:41:22.015857', '$');

-- --------------------------------------------------------

--
-- Table structure for table `master_delta_monthly`
--

CREATE TABLE `master_delta_monthly` (
  `id` bigint NOT NULL,
  `position_id` varchar(45) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `base_pay_monthly` varchar(45) DEFAULT NULL,
  `month` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `closed_date` varchar(45) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `emp_ref_no` varchar(45) DEFAULT NULL,
  `emp_bu` varchar(200) DEFAULT NULL,
  `curr_summery_key` varchar(45) DEFAULT NULL,
  `current_job` varchar(100) DEFAULT NULL,
  `position_type` varchar(45) DEFAULT NULL,
  `sga_direct` varchar(45) DEFAULT NULL,
  `record_region` varchar(100) DEFAULT NULL,
  `is_recon` int NOT NULL,
  `insert_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_drop_down`
--

CREATE TABLE `master_drop_down` (
  `id` bigint NOT NULL,
  `DropDownName` varchar(250) NOT NULL,
  `DropDownValue` varchar(250) NOT NULL,
  `DropDownDescription` longtext NOT NULL,
  `Parent` varchar(250) NOT NULL,
  `Data` longtext NOT NULL,
  `CreatedBy` varchar(100) NOT NULL,
  `UpdatedBy` varchar(100) NOT NULL,
  `CreateDate` varchar(100) NOT NULL,
  `CreateTime` varchar(100) NOT NULL,
  `UpdateDate` varchar(100) NOT NULL,
  `UpdateTime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `master_drop_down`
--

INSERT INTO `master_drop_down` (`id`, `DropDownName`, `DropDownValue`, `DropDownDescription`, `Parent`, `Data`, `CreatedBy`, `UpdatedBy`, `CreateDate`, `CreateTime`, `UpdateDate`, `UpdateTime`) VALUES
(1, 'role', 'Developer', '', '', '', '', '', '', '', '', ''),
(2, 'role', 'Tester', '', '', '', '', '', '', '', '', ''),
(3, 'employee_grade', 'A', '', '', '', '', '', '', '', '', ''),
(4, 'employee_grade', 'B1', '', '', '', '', '', '', '', '', ''),
(5, 'contract_type', 'Permanent', '', '', '', '', '', '', '', '', ''),
(6, 'contract_type', 'Fixed Term Contract', '', '', '', '', '', '', '', '', ''),
(7, 'service_line', 'International Head Office (previously Corporate Services)', '', '', '', '', '', '', '', '', ''),
(8, 'service_line', 'Regional Office', '', '', '', '', '', '', '', '', ''),
(9, 'service_line', 'Cluster Office', '', '', '', '', '', '', '', '', ''),
(10, 'service_line', 'Country Office - Supports multiple Business Units', '', '', '', '', '', '', '', '', ''),
(11, 'service_line', 'Care and Justice', '', '', '', '', '', '', '', '', ''),
(12, 'service_line', 'Cash Solutions - All', '', '', '', '', '', '', '', '', ''),
(13, 'service_line', 'Cash Solutions - Cash In Transit', '', '', '', '', '', '', '', '', ''),
(14, 'service_line', 'Cash Solutions - Cash Processing', '', '', '', '', '', '', '', '', ''),
(15, 'service_line', 'Courier', '', '', '', '', '', '', '', '', ''),
(16, 'service_line', 'Deposita', '', '', '', '', '', '', '', '', ''),
(17, 'service_line', 'Electronic Security Services (ESS)', '', '', '', '', '', '', '', '', ''),
(18, 'service_line', 'Facilities Management (incl. Cleaning)', '', '', '', '', '', '', '', '', ''),
(19, 'service_line', 'First Select Employment Services', '', '', '', '', '', '', '', '', ''),
(20, 'service_line', 'GDC (Global Development Center)', '', '', '', '', '', '', '', '', ''),
(21, 'service_line', 'Health Services', '', '', '', '', '', '', '', '', ''),
(22, 'service_line', 'Hill & Associates', '', '', '', '', '', '', '', '', ''),
(23, 'service_line', 'IBG (Uniforms Business)', '', '', '', '', '', '', '', '', ''),
(24, 'service_line', 'Investigations', '', '', '', '', '', '', '', '', ''),
(25, 'service_line', 'Monitoring Technology ', '', '', '', '', '', '', '', '', ''),
(26, 'service_line', 'Retail Management', '', '', '', '', '', '', '', '', ''),
(27, 'service_line', 'Risk Management', '', '', '', '', '', '', '', '', ''),
(28, 'service_line', 'Secure Solutions - All', '', '', '', '', '', '', '', '', ''),
(29, 'service_line', 'Secure Solutions - Aviation', '', '', '', '', '', '', '', '', ''),
(30, 'service_line', 'Secure Solutions - Event Management', '', '', '', '', '', '', '', '', ''),
(31, 'service_line', 'Secure Solutions - Guarding', '', '', '', '', '', '', '', '', ''),
(32, 'service_line', 'Secure Solutions - Other', '', '', '', '', '', '', '', '', ''),
(33, 'service_line', 'Shared Services Center - Finance', '', '', '', '', '', '', '', '', ''),
(34, 'service_line', 'Shared Services Center - Human Resources', '', '', '', '', '', '', '', '', ''),
(35, 'service_line', 'Patient Transport Services', '', '', '', '', '', '', '', '', ''),
(36, 'service_line', 'Government & Public Services', '', '', '', '', '', '', '', '', ''),
(37, 'service_line', 'Secure Solutions - Allied Universal', '', '', '', '', '', '', '', '', ''),
(38, 'bpc_function', 'Business Development & Sales', '', '', '', '', '', '', '', '', ''),
(39, 'bpc_function', 'Communications', '', '', '', '', '', '', '', '', ''),
(40, 'bpc_function', 'Customer Support', '', '', '', '', '', '', '', '', ''),
(41, 'bpc_function', 'Finance', '', '', '', '', '', '', '', '', ''),
(42, 'bpc_function', 'General Management', '', '', '', '', '', '', '', '', ''),
(43, 'bpc_function', 'Human Resources', '', '', '', '', '', '', '', '', ''),
(44, 'bpc_function', 'Information Technology', '', '', '', '', '', '', '', '', ''),
(45, 'bpc_function', 'Legal', '', '', '', '', '', '', '', '', ''),
(46, 'bpc_function', 'Marketing', '', '', '', '', '', '', '', '', ''),
(47, 'bpc_function', 'Operations Support', '', '', '', '', '', '', '', '', ''),
(48, 'bpc_function', 'Other', '', '', '', '', '', '', '', '', ''),
(49, 'bpc_function', 'Procurement', '', '', '', '', '', '', '', '', ''),
(50, 'bpc_function', 'Property', '', '', '', '', '', '', '', '', ''),
(51, 'bpc_function', 'Security & Risk', '', '', '', '', '', '', '', '', ''),
(52, 'role_cost_type', 'Indirect Labour (Indirect)', '', '', '', '', '', '', '', '', ''),
(53, 'role_cost_type', 'Admin Labour (SG&A)', '', '', '', '', '', '', '', '', ''),
(54, 'role_cost_type', 'Direct Labour', '', '', '', '', '', '', '', '', ''),
(57, 'position_status', '2', 'Redundant', '', '', '', '', '', '', '', ''),
(58, 'position_status', '0', 'Vacant', '', '', '', '', '', '', '', ''),
(59, 'other_pay', 'Allowance', '', '', '', '', '', '', '', '', ''),
(60, 'other_pay', 'Insurance', '', '', '', '', '', '', '', '', ''),
(61, 'other_pay', 'Pension', '', '', '', '', '', '', '', '', ''),
(62, 'Insurance', 'Insurance - Medical', '', '', '', '', '', '', '', '', ''),
(63, 'Insurance', 'Insurance - Income Protection', '', '', '', '', '', '', '', '', ''),
(64, 'Insurance', 'Insurance - Life', '', '', '', '', '', '', '', '', ''),
(65, 'Pension', 'Pension', '', '', '', '', '', '', '', '', ''),
(66, 'pos_car_allowance_type', '-NA-', '', '', '', '', '', '', '', '', ''),
(67, 'pos_car_allowance_type', 'YES', '', '', '', '', '', '', '', '', ''),
(68, 'pos_car_allowance_type', 'Dedicated Company Vehicle', '', '', '', '', '', '', '', '', ''),
(69, 'pos_car_allowance_type', 'Shared Company Vehicle', '', '', '', '', '', '', '', '', ''),
(70, 'employee_grade', 'B2', '', '', '', '', '', '', '', '', ''),
(71, 'employee_grade', 'C1', '', '', '', '', '', '', '', '', ''),
(72, 'employee_grade', 'C2', '', '', '', '', '', '', '', '', ''),
(73, 'employee_grade', 'D1', '', '', '', '', '', '', '', '', ''),
(74, 'employee_grade', 'D2', '', '', '', '', '', '', '', '', ''),
(75, 'employee_grade', 'E1', '', '', '', '', '', '', '', '', ''),
(76, 'employee_grade', 'E2', '', '', '', '', '', '', '', '', ''),
(77, 'employee_grade', 'F1', '', '', '', '', '', '', '', '', ''),
(78, 'employee_grade', 'F2', '', '', '', '', '', '', '', '', ''),
(79, 'employee_grade', 'Not Known', '', '', '', '', '', '', '', '', ''),
(80, 'employee_grade', 'Exec', '', '', '', '', '', '', '', '', ''),
(81, 'employee_grade', 'G', '', '', '', '', '', '', '', '', ''),
(82, 'sga_indirect', 'Indirect Labour (Indirect)', '', '', '', '', '', '', '', '', ''),
(83, 'sga_indirect', 'Admin Labour (SG&A)', '', '', '', '', '', '', '', '', ''),
(84, 'sga_indirect', 'Direct Labour', '', '', '', '', '', '', '', '', ''),
(85, 'leavers_reason', '1', 'Vacant Position - Employee Resigned (Voluntary)', '', '', '', '', '', '', '', ''),
(86, 'leavers_reason', '2', 'Redundant/ Close Position - Employee Exited (Involuntary)', '', '', '', '', '', '', '', ''),
(87, 'leavers_reason', '3', 'Redundant/ Close Position - Employee Resigned (Voluntary)', '', '', '', '', '', '', '', ''),
(88, 'leavers_reason', '4', 'Redundant/ Close Position - Employee Transferring Out/ Redeployed', '', '', '', '', '', '', '', ''),
(89, 'leavers_reason', '5', 'Payment Gap - Not Paid this month', '', '', '', '', '', '', '', ''),
(90, 'leavers_reason', '6', 'Payment Gap - Part Paid this month', '', '', '', '', '', '', '', ''),
(91, 'joiners', '1', 'New', '', '', '', '', '', '', '', ''),
(92, 'joiners', '2', 'Retained Position - Keep Employee', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_event`
--

CREATE TABLE `master_event` (
  `id` bigint NOT NULL,
  `event_id` varchar(45) DEFAULT NULL,
  `event_description` varchar(255) DEFAULT NULL,
  `cerated_by` varchar(45) DEFAULT NULL,
  `created_on` datetime(6) NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_file`
--

CREATE TABLE `master_file` (
  `id` bigint NOT NULL,
  `region` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `trackurl` varchar(200) DEFAULT NULL,
  `t_month` int NOT NULL,
  `t_year` int NOT NULL,
  `status` int NOT NULL,
  `uploaderemail` varchar(200) DEFAULT NULL,
  `iserror` varchar(20) NOT NULL,
  `isreviewed` int NOT NULL,
  `isupload` int NOT NULL,
  `insert_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_monthly_baseline`
--

CREATE TABLE `master_monthly_baseline` (
  `id` bigint NOT NULL,
  `emp_ref_no` varchar(20) DEFAULT NULL,
  `current_job` varchar(200) DEFAULT NULL,
  `emp_grade` varchar(45) DEFAULT NULL,
  `emp_function` varchar(45) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `emp_bu` varchar(100) DEFAULT NULL,
  `emp_e_date` varchar(200) DEFAULT NULL,
  `fte` varchar(45) DEFAULT NULL,
  `sga_indirect` varchar(100) DEFAULT NULL,
  `sup_name` varchar(200) DEFAULT NULL,
  `sup_job_title` varchar(100) DEFAULT NULL,
  `local_currency` varchar(45) DEFAULT NULL,
  `annual_base_pay` varchar(45) DEFAULT NULL,
  `allowance_total` varchar(45) DEFAULT NULL,
  `car_allowance` varchar(45) DEFAULT NULL,
  `commision_plan` varchar(45) DEFAULT NULL,
  `bonus` varchar(45) DEFAULT NULL,
  `t_month` int NOT NULL,
  `t_year` int NOT NULL,
  `country` varchar(45) DEFAULT NULL,
  `key_pair` varchar(45) DEFAULT NULL,
  `is_processed` int NOT NULL,
  `summery_key` varchar(45) DEFAULT NULL,
  `position_id` varchar(45) DEFAULT NULL,
  `empno_bu_key` varchar(100) DEFAULT NULL,
  `record_region` varchar(100) DEFAULT NULL,
  `new_j_p_name` varchar(100) DEFAULT NULL,
  `new_j_pos_id` varchar(100) DEFAULT NULL,
  `position_end_date` date DEFAULT NULL,
  `new_annual_amount` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_monthly_summary`
--

CREATE TABLE `master_monthly_summary` (
  `id` bigint NOT NULL,
  `record_country` varchar(45) DEFAULT NULL,
  `record_year` int NOT NULL,
  `record_month` int NOT NULL,
  `emp_total_count` int NOT NULL,
  `emp_new_count` int NOT NULL,
  `emp_left_count` int NOT NULL,
  `monthly_gross_payout` decimal(20,2) DEFAULT NULL,
  `status` int NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `uploaded_by` varchar(100) DEFAULT NULL,
  `security_code` varchar(10) DEFAULT NULL,
  `is_security_code_used` int NOT NULL,
  `sheet_key` varchar(45) DEFAULT NULL,
  `ymd_date` date DEFAULT NULL,
  `sheet_url` varchar(200) DEFAULT NULL,
  `record_region` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_position`
--

CREATE TABLE `master_position` (
  `id` bigint NOT NULL,
  `region` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `position_id` varchar(200) DEFAULT NULL,
  `position_name` varchar(500) DEFAULT NULL,
  `baseline_total` double NOT NULL,
  `baseline_year` longtext,
  `created_date` datetime(6) NOT NULL,
  `requester_email` varchar(200) DEFAULT NULL,
  `status` int NOT NULL,
  `regional_hr` varchar(100) DEFAULT NULL,
  `is_vacant` int NOT NULL,
  `is_active` int NOT NULL,
  `is_delta` int NOT NULL,
  `pos_grade` varchar(45) DEFAULT NULL,
  `pos_function` varchar(150) DEFAULT NULL,
  `pos_bu` varchar(100) DEFAULT NULL,
  `pos_fte` varchar(100) DEFAULT NULL,
  `pos_type` varchar(100) DEFAULT NULL,
  `pos_manager` varchar(200) DEFAULT NULL,
  `pos_manager_job_title` varchar(500) DEFAULT NULL,
  `pos_add_cash` varchar(45) DEFAULT NULL,
  `pos_bonus` varchar(45) DEFAULT NULL,
  `pos_add_remark` longtext,
  `regionalhr_comment` longtext,
  `approver_group_hr` varchar(100) DEFAULT NULL,
  `approver_group_comment` longtext,
  `amount_based_approval` int NOT NULL,
  `pos_return_invest_remark` longtext,
  `pos_local_curr` varchar(45) DEFAULT NULL,
  `pos_car_allowance` varchar(45) DEFAULT NULL,
  `approver_2_email` varchar(100) DEFAULT NULL,
  `approver_2_remark` longtext,
  `pos_currency` varchar(45) DEFAULT NULL,
  `new_annual_amount` varchar(45) DEFAULT NULL,
  `is_approved` int NOT NULL,
  `pos_car_allowance_type` varchar(45) DEFAULT NULL,
  `pos_end_date` date DEFAULT NULL,
  `pos_revenue` varchar(10) DEFAULT NULL,
  `pos_ebita` varchar(10) DEFAULT NULL,
  `pos_ocf` varchar(10) DEFAULT NULL,
  `pos_netcashflow` varchar(10) DEFAULT NULL,
  `position_grossprofit` varchar(10) DEFAULT NULL,
  `position_grossmargin` varchar(10) DEFAULT NULL,
  `eff_from` date DEFAULT NULL,
  `pos_commision_plan` varchar(45) DEFAULT NULL,
  `pos_cxo_tasking` int NOT NULL,
  `pos_gross_pay` varchar(45) DEFAULT NULL,
  `pos_net_pay` varchar(45) DEFAULT NULL,
  `pos_manager_number` varchar(45) DEFAULT NULL,
  `pos_price_increase` varchar(45) DEFAULT NULL,
  `is_revenue_generating` int NOT NULL,
  `end_date` date DEFAULT NULL,
  `pos_contract_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_position_other_pay`
--

CREATE TABLE `master_position_other_pay` (
  `id` bigint NOT NULL,
  `position_id` varchar(45) DEFAULT NULL,
  `component_type` varchar(155) DEFAULT NULL,
  `component_desc` longtext,
  `component_amount` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_position_workflow`
--

CREATE TABLE `master_position_workflow` (
  `id` bigint NOT NULL,
  `position_id` varchar(45) DEFAULT NULL,
  `ceo_comment` longtext,
  `approval_rule` varchar(45) DEFAULT NULL,
  `is_approval_completed` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `master_position_workflow`
--

INSERT INTO `master_position_workflow` (`id`, `position_id`, `ceo_comment`, `approval_rule`, `is_approval_completed`) VALUES
(1, 'BAN_989', NULL, 'rule-1', 0),
(2, 'ANG_990', NULL, 'rule-1', 0),
(3, 'NEP_23', NULL, 'rule-1', 0),
(4, 'NEP_24', NULL, 'rule-1', 0),
(5, 'BOT_1', NULL, 'rule-1', 0),
(6, 'BOT_12', NULL, 'rule-1', 0),
(7, 'ANG_61', NULL, 'rule-1', 0),
(8, 'NEP_25', NULL, 'rule-1', 0),
(9, 'NEP_37', NULL, 'rule-1', 0),
(10, 'ANG_38', NULL, 'rule-1', 0),
(11, 'NEP_39', NULL, 'rule-1', 0),
(12, 'NEP_40', NULL, 'rule-1', 0),
(13, 'NEP_25', NULL, 'rule-1', 0),
(14, 'NEP_25', NULL, 'rule-1', 0),
(15, 'NEP_25', NULL, 'rule-1', 0),
(16, 'NEP_10', NULL, 'rule-1', 0),
(17, 'NEP_11', NULL, 'rule-1', 0),
(18, 'NEP_10', NULL, 'rule-1', 0),
(19, 'NEP_11', NULL, 'rule-1', 0),
(20, 'NEP_10', NULL, 'rule-1', 0),
(21, 'NEP_11', NULL, 'rule-1', 0),
(22, 'NEP_10', NULL, 'rule-1', 0),
(23, 'NEP_11', NULL, 'rule-1', 0),
(24, 'NEP_25', NULL, 'rule-1', 0),
(25, 'NEP_26', NULL, 'rule-1', 0),
(26, 'NEP_10', NULL, 'rule-1', 0),
(27, 'NEP_11', NULL, 'rule-1', 0),
(28, 'BOT_20', NULL, 'rule-1', 0),
(29, 'NEP_10', NULL, 'rule-1', 0),
(30, 'NEP_11', NULL, 'rule-1', 0),
(31, 'NEP_25', NULL, 'rule-1', 0),
(32, 'NEP_10', NULL, 'rule-1', 0),
(33, 'NEP_11', NULL, 'rule-1', 0),
(34, 'NEP_12', NULL, 'rule-1', 0),
(35, 'NEP_10', NULL, 'rule-1', 0),
(36, 'NEP_11', NULL, 'rule-1', 0),
(37, 'ANG_764', NULL, 'rule-1', 0),
(38, 'NEP_765', NULL, 'rule-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_static_drop_down`
--

CREATE TABLE `master_static_drop_down` (
  `id` bigint NOT NULL,
  `DropDownName` varchar(250) NOT NULL,
  `DropDownValue` varchar(250) NOT NULL,
  `DropDownDescription` longtext NOT NULL,
  `Parent` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `master_static_drop_down`
--

INSERT INTO `master_static_drop_down` (`id`, `DropDownName`, `DropDownValue`, `DropDownDescription`, `Parent`) VALUES
(1, 'region', 'AME', '', ''),
(2, 'region', 'APAC', '', ''),
(3, 'region', 'Corporate Services', '', ''),
(4, 'region', 'Europe', '', ''),
(5, 'region', 'LATAM', '', ''),
(6, 'region', 'UKI', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_yearly_baseline`
--

CREATE TABLE `master_yearly_baseline` (
  `id` bigint NOT NULL,
  `emp_ref_no` varchar(20) DEFAULT NULL,
  `current_job` varchar(200) DEFAULT NULL,
  `emp_grade` varchar(45) DEFAULT NULL,
  `emp_function` varchar(45) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `emp_bu` varchar(100) DEFAULT NULL,
  `emp_e_date` varchar(200) DEFAULT NULL,
  `fte` varchar(45) DEFAULT NULL,
  `sga_indirect` varchar(100) DEFAULT NULL,
  `sup_name` varchar(200) DEFAULT NULL,
  `sup_job_title` varchar(100) DEFAULT NULL,
  `annual_base_pay` varchar(45) DEFAULT NULL,
  `allowance_total` varchar(45) DEFAULT NULL,
  `bonus` varchar(45) DEFAULT NULL,
  `car_allowance` varchar(45) DEFAULT NULL,
  `commision_plan` varchar(45) DEFAULT NULL,
  `t_month` int NOT NULL,
  `t_year` int NOT NULL,
  `country` varchar(45) DEFAULT NULL,
  `key_pair` varchar(45) DEFAULT NULL,
  `is_processed` int NOT NULL,
  `summery_key` varchar(45) DEFAULT NULL,
  `position_id` varchar(45) DEFAULT NULL,
  `position_start_date` datetime(6) DEFAULT NULL,
  `position_end_date` date DEFAULT NULL,
  `issync` int NOT NULL,
  `record_region` varchar(100) DEFAULT NULL,
  `is_active` int NOT NULL,
  `local_currency` varchar(45) DEFAULT NULL,
  `new_annual_amount` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smtp_smtp`
--

CREATE TABLE `smtp_smtp` (
  `id` bigint NOT NULL,
  `Host` varchar(100) NOT NULL,
  `Port` varchar(10) NOT NULL,
  `Sender` varchar(200) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_assigned_country`
--

CREATE TABLE `users_assigned_country` (
  `id` bigint NOT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_country` varchar(100) DEFAULT NULL,
  `added_on` datetime(6) DEFAULT NULL,
  `user_region` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users_assigned_country`
--

INSERT INTO `users_assigned_country` (`id`, `user_email`, `user_country`, `added_on`, `user_region`) VALUES
(14, 'azad.singh@g4s.com', 'India', '2023-12-15 11:35:01.000000', 'APAC'),
(17, 'test@g4s.com', 'Nepal', '2023-12-15 13:11:29.000000', 'APAC'),
(20, 'test@g4s.com', 'United Kingdom', '2023-12-20 13:33:07.000000', 'Europe'),
(23, 'azad.singh@g4s.com', 'Oman', '2023-12-20 13:33:07.000000', 'APAC'),
(24, 'azad.singh@g4s.com', 'Mexico', '2023-12-20 13:33:07.000000', 'Europe'),
(25, 'azad.singh@g4s.com', 'Hungary', '2023-12-20 13:33:07.000000', 'Europe'),
(26, 'azad.singh@g4s.com', 'Germany', '2023-12-20 13:33:07.000000', 'Europe'),
(27, 'azad.singh@g4s.com', 'Austria', '2023-12-20 13:33:07.000000', 'Europe'),
(37, 'kamal.negi@in.g4s.com', 'Oman', '2023-12-21 10:04:33.000000', 'AME'),
(39, 'testvm1@yopmail.com', 'Australia', '2023-12-22 07:52:07.000000', NULL),
(40, 'testvm1@yopmail.com', 'Bangladesh', '2023-12-22 07:52:07.000000', NULL),
(41, 'testvm15769@yopmail.com', 'Austria', '2023-12-22 07:54:00.000000', NULL),
(42, 'abc@g4.com', 'All', '2023-12-28 10:29:49.000000', 'Europe'),
(188, 'vikas.kumar@in.g4s.com', 'Qatar', '2024-01-16 05:33:08.000000', 'AME'),
(283, 'saurabh.khare@in.g4s.com', 'Argentina', '2024-01-19 12:15:17.000000', 'Latin America'),
(284, 'saurabh.khare@in.g4s.com', 'Barbados', '2024-01-19 12:15:17.000000', 'Latin America'),
(285, 'saurabh.khare@in.g4s.com', 'Brazil', '2024-01-19 12:15:17.000000', 'Latin America'),
(286, 'saurabh.khare@in.g4s.com', 'Chile', '2024-01-19 12:15:17.000000', 'Latin America'),
(287, 'saurabh.khare@in.g4s.com', 'Colombia', '2024-01-19 12:15:17.000000', 'Latin America'),
(288, 'saurabh.khare@in.g4s.com', 'Costa Rica', '2024-01-19 12:15:17.000000', 'Latin America'),
(289, 'saurabh.khare@in.g4s.com', 'Ecuador', '2024-01-19 12:15:17.000000', 'Latin America'),
(290, 'saurabh.khare@in.g4s.com', 'El Salvador', '2024-01-19 12:15:17.000000', 'Latin America'),
(291, 'saurabh.khare@in.g4s.com', 'Guatemala', '2024-01-19 12:15:17.000000', 'Latin America'),
(292, 'saurabh.khare@in.g4s.com', 'Nicaragua', '2024-01-19 12:15:17.000000', 'Latin America'),
(293, 'saurabh.khare@in.g4s.com', 'Paraguay', '2024-01-19 12:15:17.000000', 'Latin America'),
(294, 'saurabh.khare@in.g4s.com', 'Peru', '2024-01-19 12:15:17.000000', 'Latin America'),
(295, 'saurabh.khare@in.g4s.com', 'Trinidad and Tobago', '2024-01-19 12:15:17.000000', 'Latin America'),
(296, 'saurabh.khare@in.g4s.com', 'Turkey', '2024-01-19 12:15:17.000000', 'Latin America'),
(384, 'arvind.kumar@in.g4s.com', 'Angola', '2024-01-30 05:07:47.000000', 'AME'),
(385, 'arvind.kumar@in.g4s.com', 'Bahrain', '2024-01-30 05:07:47.000000', 'AME'),
(386, 'arvind.kumar@in.g4s.com', 'Botswana', '2024-01-30 05:07:47.000000', 'AME'),
(387, 'arvind.kumar@in.g4s.com', 'Cameroon', '2024-01-30 05:07:47.000000', 'AME'),
(388, 'arvind.kumar@in.g4s.com', 'Central African Republic', '2024-01-30 05:07:47.000000', 'AME'),
(389, 'arvind.kumar@in.g4s.com', 'Democratic Republic of Congo', '2024-01-30 05:07:47.000000', 'AME'),
(390, 'arvind.kumar@in.g4s.com', 'Deposita International', '2024-01-30 05:07:47.000000', 'AME'),
(391, 'arvind.kumar@in.g4s.com', 'Egypt', '2024-01-30 05:07:47.000000', 'AME'),
(392, 'arvind.kumar@in.g4s.com', 'Gabon', '2024-01-30 05:07:47.000000', 'AME'),
(393, 'arvind.kumar@in.g4s.com', 'Gambia', '2024-01-30 05:07:47.000000', 'AME'),
(394, 'arvind.kumar@in.g4s.com', 'Ghana', '2024-01-30 05:07:47.000000', 'AME'),
(395, 'arvind.kumar@in.g4s.com', 'Guinea', '2024-01-30 05:07:47.000000', 'AME'),
(396, 'arvind.kumar@in.g4s.com', 'Ivory Coast', '2024-01-30 05:07:47.000000', 'AME'),
(397, 'arvind.kumar@in.g4s.com', 'Jordan', '2024-01-30 05:07:47.000000', 'AME'),
(398, 'arvind.kumar@in.g4s.com', 'Kenya', '2024-01-30 05:07:47.000000', 'AME'),
(399, 'arvind.kumar@in.g4s.com', 'Lebanon', '2024-01-30 05:07:47.000000', 'AME'),
(400, 'arvind.kumar@in.g4s.com', 'Lesotho', '2024-01-30 05:07:47.000000', 'AME'),
(401, 'arvind.kumar@in.g4s.com', 'Madagascar', '2024-01-30 05:07:47.000000', 'AME'),
(402, 'arvind.kumar@in.g4s.com', 'Malawi', '2024-01-30 05:07:47.000000', 'AME'),
(403, 'arvind.kumar@in.g4s.com', 'Mozambique', '2024-01-30 05:07:47.000000', 'AME'),
(404, 'arvind.kumar@in.g4s.com', 'Namibia', '2024-01-30 05:07:47.000000', 'AME'),
(405, 'arvind.kumar@in.g4s.com', 'Nigeria', '2024-01-30 05:07:47.000000', 'AME'),
(406, 'arvind.kumar@in.g4s.com', 'Oman', '2024-01-30 05:07:47.000000', 'AME'),
(407, 'arvind.kumar@in.g4s.com', 'Qatar', '2024-01-30 05:07:47.000000', 'AME'),
(408, 'arvind.kumar@in.g4s.com', 'Regional Office', '2024-01-30 05:07:47.000000', 'AME'),
(409, 'arvind.kumar@in.g4s.com', 'Saudi Arabia', '2024-01-30 05:07:47.000000', 'AME'),
(410, 'arvind.kumar@in.g4s.com', 'Sierra Leone', '2024-01-30 05:07:47.000000', 'AME'),
(411, 'arvind.kumar@in.g4s.com', 'South Africa - Cash Solutions', '2024-01-30 05:07:47.000000', 'AME'),
(412, 'arvind.kumar@in.g4s.com', 'South Africa - Secure Solutions', '2024-01-30 05:07:47.000000', 'AME'),
(413, 'arvind.kumar@in.g4s.com', 'South Africa - Care and Justice ', '2024-01-30 05:07:47.000000', 'AME'),
(414, 'arvind.kumar@in.g4s.com', 'Tanzania', '2024-01-30 05:07:47.000000', 'AME'),
(415, 'arvind.kumar@in.g4s.com', 'Uganda', '2024-01-30 05:07:47.000000', 'AME'),
(416, 'arvind.kumar@in.g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-01-30 05:07:47.000000', 'AME'),
(417, 'arvind.kumar@in.g4s.com', 'United Arab Emirates - Dubai', '2024-01-30 05:07:47.000000', 'AME'),
(418, 'arvind.kumar@in.g4s.com', 'Zambia', '2024-01-30 05:07:47.000000', 'AME'),
(455, 'rashmi.bharti@in.g4s.com', 'Austria', '2024-01-30 11:49:02.000000', 'Europe'),
(456, 'rashmi.bharti@in.g4s.com', 'Belgium - Secure Solutions', '2024-01-30 11:49:02.000000', 'Europe'),
(457, 'rashmi.bharti@in.g4s.com', 'Czech Republic', '2024-01-30 11:49:02.000000', 'Europe'),
(458, 'rashmi.bharti@in.g4s.com', 'Denmark', '2024-01-30 11:49:02.000000', 'Europe'),
(459, 'rashmi.bharti@in.g4s.com', 'Estonia', '2024-01-30 11:49:02.000000', 'Europe'),
(460, 'rashmi.bharti@in.g4s.com', 'France', '2024-01-30 11:49:02.000000', 'Europe'),
(461, 'rashmi.bharti@in.g4s.com', 'Greece', '2024-01-30 11:49:02.000000', 'Europe'),
(462, 'rashmi.bharti@in.g4s.com', 'Latvia', '2024-01-30 11:49:02.000000', 'Europe'),
(463, 'rashmi.bharti@in.g4s.com', 'Lithuania', '2024-01-30 11:49:02.000000', 'Europe'),
(464, 'rashmi.bharti@in.g4s.com', 'Luxembourg - Secure Solutions', '2024-01-30 11:49:02.000000', 'Europe'),
(465, 'rashmi.bharti@in.g4s.com', 'Malta', '2024-01-30 11:49:02.000000', 'Europe'),
(466, 'rashmi.bharti@in.g4s.com', 'Morocco - Secure Solutions', '2024-01-30 11:49:02.000000', 'Europe'),
(467, 'rashmi.bharti@in.g4s.com', 'Morocco - Cash Solutions', '2024-01-30 11:49:02.000000', 'Europe'),
(468, 'rashmi.bharti@in.g4s.com', 'Netherlands - Secure Solutions', '2024-01-30 11:49:02.000000', 'Europe'),
(469, 'rashmi.bharti@in.g4s.com', 'Regional Office', '2024-01-30 11:49:02.000000', 'Europe'),
(470, 'rashmi.bharti@in.g4s.com', 'Serbia', '2024-01-30 11:49:02.000000', 'Europe'),
(471, 'rashmi.bharti@in.g4s.com', 'Slovakia', '2024-01-30 11:49:02.000000', 'Europe'),
(472, 'rashmi.bharti@in.g4s.com', 'Slovenia', '2024-01-30 11:49:02.000000', 'Europe'),
(473, 'rashmi.bharti@in.g4s.com', 'Turkey', '2024-01-30 11:49:02.000000', 'Europe'),
(474, 'rashmi.bharti@in.g4s.com', 'Ukraine', '2024-01-30 11:49:02.000000', 'Europe'),
(1037, 'stephanie.wyatt@g4s.com', 'Angola', '2024-01-30 13:45:13.000000', 'AME'),
(1038, 'stephanie.wyatt@g4s.com', 'Bahrain', '2024-01-30 13:45:13.000000', 'AME'),
(1039, 'stephanie.wyatt@g4s.com', 'Botswana', '2024-01-30 13:45:13.000000', 'AME'),
(1040, 'stephanie.wyatt@g4s.com', 'Cameroon', '2024-01-30 13:45:13.000000', 'AME'),
(1041, 'stephanie.wyatt@g4s.com', 'Central African Republic', '2024-01-30 13:45:13.000000', 'AME'),
(1042, 'stephanie.wyatt@g4s.com', 'Democratic Republic of Congo', '2024-01-30 13:45:13.000000', 'AME'),
(1043, 'stephanie.wyatt@g4s.com', 'Deposita International', '2024-01-30 13:45:13.000000', 'AME'),
(1044, 'stephanie.wyatt@g4s.com', 'Egypt', '2024-01-30 13:45:13.000000', 'AME'),
(1045, 'stephanie.wyatt@g4s.com', 'Gabon', '2024-01-30 13:45:13.000000', 'AME'),
(1046, 'stephanie.wyatt@g4s.com', 'Gambia', '2024-01-30 13:45:13.000000', 'AME'),
(1047, 'stephanie.wyatt@g4s.com', 'Ghana', '2024-01-30 13:45:13.000000', 'AME'),
(1048, 'stephanie.wyatt@g4s.com', 'Guinea', '2024-01-30 13:45:13.000000', 'AME'),
(1049, 'stephanie.wyatt@g4s.com', 'Ivory Coast', '2024-01-30 13:45:13.000000', 'AME'),
(1050, 'stephanie.wyatt@g4s.com', 'Jordan', '2024-01-30 13:45:13.000000', 'AME'),
(1051, 'stephanie.wyatt@g4s.com', 'Kenya', '2024-01-30 13:45:13.000000', 'AME'),
(1052, 'stephanie.wyatt@g4s.com', 'Lebanon', '2024-01-30 13:45:13.000000', 'AME'),
(1053, 'stephanie.wyatt@g4s.com', 'Lesotho', '2024-01-30 13:45:13.000000', 'AME'),
(1054, 'stephanie.wyatt@g4s.com', 'Madagascar', '2024-01-30 13:45:13.000000', 'AME'),
(1055, 'stephanie.wyatt@g4s.com', 'Malawi', '2024-01-30 13:45:13.000000', 'AME'),
(1056, 'stephanie.wyatt@g4s.com', 'Mozambique', '2024-01-30 13:45:13.000000', 'AME'),
(1057, 'stephanie.wyatt@g4s.com', 'Namibia', '2024-01-30 13:45:13.000000', 'AME'),
(1058, 'stephanie.wyatt@g4s.com', 'Nigeria', '2024-01-30 13:45:13.000000', 'AME'),
(1059, 'stephanie.wyatt@g4s.com', 'Oman', '2024-01-30 13:45:13.000000', 'AME'),
(1060, 'stephanie.wyatt@g4s.com', 'Qatar', '2024-01-30 13:45:13.000000', 'AME'),
(1061, 'stephanie.wyatt@g4s.com', 'Regional Office', '2024-01-30 13:45:13.000000', 'AME'),
(1062, 'stephanie.wyatt@g4s.com', 'Saudi Arabia', '2024-01-30 13:45:13.000000', 'AME'),
(1063, 'stephanie.wyatt@g4s.com', 'Sierra Leone', '2024-01-30 13:45:13.000000', 'AME'),
(1064, 'stephanie.wyatt@g4s.com', 'South Africa - Cash Solutions', '2024-01-30 13:45:13.000000', 'AME'),
(1065, 'stephanie.wyatt@g4s.com', 'South Africa - Secure Solutions', '2024-01-30 13:45:13.000000', 'AME'),
(1066, 'stephanie.wyatt@g4s.com', 'South Africa - Care and Justice ', '2024-01-30 13:45:13.000000', 'AME'),
(1067, 'stephanie.wyatt@g4s.com', 'Tanzania', '2024-01-30 13:45:13.000000', 'AME'),
(1068, 'stephanie.wyatt@g4s.com', 'Uganda', '2024-01-30 13:45:13.000000', 'AME'),
(1069, 'stephanie.wyatt@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-01-30 13:45:13.000000', 'AME'),
(1070, 'stephanie.wyatt@g4s.com', 'United Arab Emirates - Dubai', '2024-01-30 13:45:13.000000', 'AME'),
(1071, 'stephanie.wyatt@g4s.com', 'Zambia', '2024-01-30 13:45:13.000000', 'AME'),
(1072, 'stephanie.wyatt@g4s.com', 'Bangladesh', '2024-01-30 13:45:13.000000', 'APAC'),
(1073, 'stephanie.wyatt@g4s.com', 'C&J - Australia', '2024-01-30 13:45:13.000000', 'APAC'),
(1074, 'stephanie.wyatt@g4s.com', 'China', '2024-01-30 13:45:13.000000', 'APAC'),
(1075, 'stephanie.wyatt@g4s.com', 'Guam', '2024-01-30 13:45:13.000000', 'APAC'),
(1076, 'stephanie.wyatt@g4s.com', 'Hong Kong', '2024-01-30 13:45:13.000000', 'APAC'),
(1077, 'stephanie.wyatt@g4s.com', 'India', '2024-01-30 13:45:13.000000', 'APAC'),
(1078, 'stephanie.wyatt@g4s.com', 'Indonesia', '2024-01-30 13:45:13.000000', 'APAC'),
(1079, 'stephanie.wyatt@g4s.com', 'Japan', '2024-01-30 13:45:13.000000', 'APAC'),
(1080, 'stephanie.wyatt@g4s.com', 'Macau', '2024-01-30 13:45:13.000000', 'APAC'),
(1081, 'stephanie.wyatt@g4s.com', 'Nepal', '2024-01-30 13:45:13.000000', 'APAC'),
(1082, 'stephanie.wyatt@g4s.com', 'Papua New Guinea', '2024-01-30 13:45:13.000000', 'APAC'),
(1083, 'stephanie.wyatt@g4s.com', 'Risk Consulting - Hill and Associates', '2024-01-30 13:45:13.000000', 'APAC'),
(1084, 'stephanie.wyatt@g4s.com', 'Singapore', '2024-01-30 13:45:13.000000', 'APAC'),
(1085, 'stephanie.wyatt@g4s.com', 'Taiwan', '2024-01-30 13:45:13.000000', 'APAC'),
(1086, 'stephanie.wyatt@g4s.com', 'Thailand', '2024-01-30 13:45:13.000000', 'APAC'),
(1087, 'stephanie.wyatt@g4s.com', 'AUS Electronic Monitoring', '2024-01-30 13:45:13.000000', 'Corporate Services'),
(1088, 'stephanie.wyatt@g4s.com', 'Corporate Services / International Business Head Office', '2024-01-30 13:45:13.000000', 'Corporate Services'),
(1089, 'stephanie.wyatt@g4s.com', 'Austria', '2024-01-30 13:45:13.000000', 'Europe'),
(1090, 'stephanie.wyatt@g4s.com', 'Belgium - Secure Solutions', '2024-01-30 13:45:13.000000', 'Europe'),
(1091, 'stephanie.wyatt@g4s.com', 'Czech Republic', '2024-01-30 13:45:13.000000', 'Europe'),
(1092, 'stephanie.wyatt@g4s.com', 'Denmark', '2024-01-30 13:45:13.000000', 'Europe'),
(1093, 'stephanie.wyatt@g4s.com', 'Estonia', '2024-01-30 13:45:13.000000', 'Europe'),
(1094, 'stephanie.wyatt@g4s.com', 'France', '2024-01-30 13:45:13.000000', 'Europe'),
(1095, 'stephanie.wyatt@g4s.com', 'Greece', '2024-01-30 13:45:13.000000', 'Europe'),
(1096, 'stephanie.wyatt@g4s.com', 'Latvia', '2024-01-30 13:45:13.000000', 'Europe'),
(1097, 'stephanie.wyatt@g4s.com', 'Lithuania', '2024-01-30 13:45:13.000000', 'Europe'),
(1098, 'stephanie.wyatt@g4s.com', 'Luxembourg - Secure Solutions', '2024-01-30 13:45:13.000000', 'Europe'),
(1099, 'stephanie.wyatt@g4s.com', 'Malta', '2024-01-30 13:45:13.000000', 'Europe'),
(1100, 'stephanie.wyatt@g4s.com', 'Morocco - Secure Solutions', '2024-01-30 13:45:13.000000', 'Europe'),
(1101, 'stephanie.wyatt@g4s.com', 'Morocco - Cash Solutions', '2024-01-30 13:45:13.000000', 'Europe'),
(1102, 'stephanie.wyatt@g4s.com', 'Netherlands - Secure Solutions', '2024-01-30 13:45:13.000000', 'Europe'),
(1103, 'stephanie.wyatt@g4s.com', 'Serbia', '2024-01-30 13:45:13.000000', 'Europe'),
(1104, 'stephanie.wyatt@g4s.com', 'Slovakia', '2024-01-30 13:45:13.000000', 'Europe'),
(1105, 'stephanie.wyatt@g4s.com', 'Slovenia', '2024-01-30 13:45:13.000000', 'Europe'),
(1106, 'stephanie.wyatt@g4s.com', 'Turkey', '2024-01-30 13:45:13.000000', 'Europe'),
(1107, 'stephanie.wyatt@g4s.com', 'Ukraine', '2024-01-30 13:45:13.000000', 'Europe'),
(1108, 'stephanie.wyatt@g4s.com', 'Argentina', '2024-01-30 13:45:13.000000', 'LATAM'),
(1109, 'stephanie.wyatt@g4s.com', 'Barbados', '2024-01-30 13:45:13.000000', 'LATAM'),
(1110, 'stephanie.wyatt@g4s.com', 'Brazil', '2024-01-30 13:45:13.000000', 'LATAM'),
(1111, 'stephanie.wyatt@g4s.com', 'Chile', '2024-01-30 13:45:13.000000', 'LATAM'),
(1112, 'stephanie.wyatt@g4s.com', 'Colombia', '2024-01-30 13:45:13.000000', 'LATAM'),
(1113, 'stephanie.wyatt@g4s.com', 'Costa Rica', '2024-01-30 13:45:13.000000', 'LATAM'),
(1114, 'stephanie.wyatt@g4s.com', 'Ecuador', '2024-01-30 13:45:13.000000', 'LATAM'),
(1115, 'stephanie.wyatt@g4s.com', 'El Salvador', '2024-01-30 13:45:13.000000', 'LATAM'),
(1116, 'stephanie.wyatt@g4s.com', 'Grenada', '2024-01-30 13:45:13.000000', 'LATAM'),
(1117, 'stephanie.wyatt@g4s.com', 'Guatemala', '2024-01-30 13:45:13.000000', 'LATAM'),
(1118, 'stephanie.wyatt@g4s.com', 'Nicaragua', '2024-01-30 13:45:13.000000', 'LATAM'),
(1119, 'stephanie.wyatt@g4s.com', 'Paraguay', '2024-01-30 13:45:13.000000', 'LATAM'),
(1120, 'stephanie.wyatt@g4s.com', 'Peru', '2024-01-30 13:45:13.000000', 'LATAM'),
(1121, 'stephanie.wyatt@g4s.com', 'St. Lucia', '2024-01-30 13:45:13.000000', 'LATAM'),
(1122, 'stephanie.wyatt@g4s.com', 'Trinidad and Tobago', '2024-01-30 13:45:13.000000', 'LATAM'),
(1123, 'stephanie.wyatt@g4s.com', 'Uruguay', '2024-01-30 13:45:13.000000', 'LATAM'),
(1124, 'stephanie.wyatt@g4s.com', 'Allied Universal Electronic Monitoring', '2024-01-30 13:45:13.000000', 'UKI'),
(1125, 'stephanie.wyatt@g4s.com', 'AUS Compliance and Investigations', '2024-01-30 13:45:13.000000', 'UKI'),
(1126, 'stephanie.wyatt@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-01-30 13:45:13.000000', 'UKI'),
(1127, 'stephanie.wyatt@g4s.com', 'C&J - Employment Support Services', '2024-01-30 13:45:13.000000', 'UKI'),
(1128, 'stephanie.wyatt@g4s.com', 'C&J - Health Services', '2024-01-30 13:45:13.000000', 'UKI'),
(1129, 'stephanie.wyatt@g4s.com', 'C&J - Patient Transport Services', '2024-01-30 13:45:13.000000', 'UKI'),
(1130, 'stephanie.wyatt@g4s.com', 'Facilities Management', '2024-01-30 13:45:13.000000', 'UKI'),
(1131, 'stephanie.wyatt@g4s.com', 'Ireland', '2024-01-30 13:45:13.000000', 'UKI'),
(1132, 'stephanie.wyatt@g4s.com', 'Risk', '2024-01-30 13:45:13.000000', 'UKI'),
(1133, 'stephanie.wyatt@g4s.com', 'Secure Solutions UK', '2024-01-30 13:45:13.000000', 'UKI'),
(1134, 'stephanie.wyatt@g4s.com', 'UK - Cash Solutions', '2024-01-30 13:45:13.000000', 'UKI'),
(1135, 'nick.tsimogiannis@g4s.com', 'Angola', '2024-01-30 13:54:52.000000', 'AME'),
(1136, 'nick.tsimogiannis@g4s.com', 'Bahrain', '2024-01-30 13:54:52.000000', 'AME'),
(1137, 'nick.tsimogiannis@g4s.com', 'Botswana', '2024-01-30 13:54:52.000000', 'AME'),
(1138, 'nick.tsimogiannis@g4s.com', 'Cameroon', '2024-01-30 13:54:52.000000', 'AME'),
(1139, 'nick.tsimogiannis@g4s.com', 'Central African Republic', '2024-01-30 13:54:52.000000', 'AME'),
(1140, 'nick.tsimogiannis@g4s.com', 'Democratic Republic of Congo', '2024-01-30 13:54:52.000000', 'AME'),
(1141, 'nick.tsimogiannis@g4s.com', 'Deposita International', '2024-01-30 13:54:52.000000', 'AME'),
(1142, 'nick.tsimogiannis@g4s.com', 'Egypt', '2024-01-30 13:54:52.000000', 'AME'),
(1143, 'nick.tsimogiannis@g4s.com', 'Gabon', '2024-01-30 13:54:52.000000', 'AME'),
(1144, 'nick.tsimogiannis@g4s.com', 'Gambia', '2024-01-30 13:54:52.000000', 'AME'),
(1145, 'nick.tsimogiannis@g4s.com', 'Ghana', '2024-01-30 13:54:52.000000', 'AME'),
(1146, 'nick.tsimogiannis@g4s.com', 'Guinea', '2024-01-30 13:54:52.000000', 'AME'),
(1147, 'nick.tsimogiannis@g4s.com', 'Ivory Coast', '2024-01-30 13:54:52.000000', 'AME'),
(1148, 'nick.tsimogiannis@g4s.com', 'Jordan', '2024-01-30 13:54:52.000000', 'AME'),
(1149, 'nick.tsimogiannis@g4s.com', 'Kenya', '2024-01-30 13:54:52.000000', 'AME'),
(1150, 'nick.tsimogiannis@g4s.com', 'Lebanon', '2024-01-30 13:54:52.000000', 'AME'),
(1151, 'nick.tsimogiannis@g4s.com', 'Lesotho', '2024-01-30 13:54:52.000000', 'AME'),
(1152, 'nick.tsimogiannis@g4s.com', 'Madagascar', '2024-01-30 13:54:52.000000', 'AME'),
(1153, 'nick.tsimogiannis@g4s.com', 'Malawi', '2024-01-30 13:54:52.000000', 'AME'),
(1154, 'nick.tsimogiannis@g4s.com', 'Mozambique', '2024-01-30 13:54:52.000000', 'AME'),
(1155, 'nick.tsimogiannis@g4s.com', 'Namibia', '2024-01-30 13:54:52.000000', 'AME'),
(1156, 'nick.tsimogiannis@g4s.com', 'Nigeria', '2024-01-30 13:54:52.000000', 'AME'),
(1157, 'nick.tsimogiannis@g4s.com', 'Oman', '2024-01-30 13:54:52.000000', 'AME'),
(1158, 'nick.tsimogiannis@g4s.com', 'Qatar', '2024-01-30 13:54:52.000000', 'AME'),
(1159, 'nick.tsimogiannis@g4s.com', 'Regional Office', '2024-01-30 13:54:52.000000', 'AME'),
(1160, 'nick.tsimogiannis@g4s.com', 'Saudi Arabia', '2024-01-30 13:54:52.000000', 'AME'),
(1161, 'nick.tsimogiannis@g4s.com', 'Sierra Leone', '2024-01-30 13:54:52.000000', 'AME'),
(1162, 'nick.tsimogiannis@g4s.com', 'South Africa - Cash Solutions', '2024-01-30 13:54:52.000000', 'AME'),
(1163, 'nick.tsimogiannis@g4s.com', 'South Africa - Secure Solutions', '2024-01-30 13:54:52.000000', 'AME'),
(1164, 'nick.tsimogiannis@g4s.com', 'South Africa - Care and Justice', '2024-01-30 13:54:52.000000', 'AME'),
(1165, 'nick.tsimogiannis@g4s.com', 'Tanzania', '2024-01-30 13:54:52.000000', 'AME'),
(1166, 'nick.tsimogiannis@g4s.com', 'Uganda', '2024-01-30 13:54:52.000000', 'AME'),
(1167, 'nick.tsimogiannis@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-01-30 13:54:52.000000', 'AME'),
(1168, 'nick.tsimogiannis@g4s.com', 'United Arab Emirates - Dubai', '2024-01-30 13:54:52.000000', 'AME'),
(1169, 'nick.tsimogiannis@g4s.com', 'Zambia', '2024-01-30 13:54:52.000000', 'AME'),
(1170, 'nick.tsimogiannis@g4s.com', 'Bangladesh', '2024-01-30 13:54:52.000000', 'APAC'),
(1171, 'nick.tsimogiannis@g4s.com', 'C&J - Australia', '2024-01-30 13:54:52.000000', 'APAC'),
(1172, 'nick.tsimogiannis@g4s.com', 'China', '2024-01-30 13:54:52.000000', 'APAC'),
(1173, 'nick.tsimogiannis@g4s.com', 'Guam', '2024-01-30 13:54:52.000000', 'APAC'),
(1174, 'nick.tsimogiannis@g4s.com', 'Hong Kong', '2024-01-30 13:54:52.000000', 'APAC'),
(1175, 'nick.tsimogiannis@g4s.com', 'India', '2024-01-30 13:54:52.000000', 'APAC'),
(1176, 'nick.tsimogiannis@g4s.com', 'Indonesia', '2024-01-30 13:54:52.000000', 'APAC'),
(1177, 'nick.tsimogiannis@g4s.com', 'Japan', '2024-01-30 13:54:52.000000', 'APAC'),
(1178, 'nick.tsimogiannis@g4s.com', 'Macau', '2024-01-30 13:54:52.000000', 'APAC'),
(1179, 'nick.tsimogiannis@g4s.com', 'Nepal', '2024-01-30 13:54:52.000000', 'APAC'),
(1180, 'nick.tsimogiannis@g4s.com', 'Papua New Guinea', '2024-01-30 13:54:52.000000', 'APAC'),
(1181, 'nick.tsimogiannis@g4s.com', 'Regional Office', '2024-01-30 13:54:52.000000', 'AME'),
(1182, 'nick.tsimogiannis@g4s.com', 'Risk Consulting - Hill and Associates', '2024-01-30 13:54:52.000000', 'APAC'),
(1183, 'nick.tsimogiannis@g4s.com', 'Singapore', '2024-01-30 13:54:52.000000', 'APAC'),
(1184, 'nick.tsimogiannis@g4s.com', 'Taiwan', '2024-01-30 13:54:52.000000', 'APAC'),
(1185, 'nick.tsimogiannis@g4s.com', 'Thailand', '2024-01-30 13:54:52.000000', 'APAC'),
(1186, 'nick.tsimogiannis@g4s.com', 'AUS Electronic Monitoring', '2024-01-30 13:54:52.000000', 'Corporate Services'),
(1187, 'nick.tsimogiannis@g4s.com', 'Corporate Services / International Business Head Office', '2024-01-30 13:54:52.000000', 'Corporate Services'),
(1188, 'nick.tsimogiannis@g4s.com', 'Austria', '2024-01-30 13:54:52.000000', 'Europe'),
(1189, 'nick.tsimogiannis@g4s.com', 'Belgium - Secure Solutions', '2024-01-30 13:54:52.000000', 'Europe'),
(1190, 'nick.tsimogiannis@g4s.com', 'Czech Republic', '2024-01-30 13:54:52.000000', 'Europe'),
(1191, 'nick.tsimogiannis@g4s.com', 'Denmark', '2024-01-30 13:54:52.000000', 'Europe'),
(1192, 'nick.tsimogiannis@g4s.com', 'Estonia', '2024-01-30 13:54:52.000000', 'Europe'),
(1193, 'nick.tsimogiannis@g4s.com', 'France', '2024-01-30 13:54:52.000000', 'Europe'),
(1194, 'nick.tsimogiannis@g4s.com', 'Greece', '2024-01-30 13:54:52.000000', 'Europe'),
(1195, 'nick.tsimogiannis@g4s.com', 'Latvia', '2024-01-30 13:54:52.000000', 'Europe'),
(1196, 'nick.tsimogiannis@g4s.com', 'Lithuania', '2024-01-30 13:54:52.000000', 'Europe'),
(1197, 'nick.tsimogiannis@g4s.com', 'Luxembourg - Secure Solutions', '2024-01-30 13:54:52.000000', 'Europe'),
(1198, 'nick.tsimogiannis@g4s.com', 'Malta', '2024-01-30 13:54:52.000000', 'Europe'),
(1199, 'nick.tsimogiannis@g4s.com', 'Morocco - Secure Solutions', '2024-01-30 13:54:52.000000', 'Europe'),
(1200, 'nick.tsimogiannis@g4s.com', 'Morocco - Cash Solutions', '2024-01-30 13:54:52.000000', 'Europe'),
(1201, 'nick.tsimogiannis@g4s.com', 'Netherlands - Secure Solutions', '2024-01-30 13:54:52.000000', 'Europe'),
(1202, 'nick.tsimogiannis@g4s.com', 'Regional Office', '2024-01-30 13:54:52.000000', 'AME'),
(1203, 'nick.tsimogiannis@g4s.com', 'Serbia', '2024-01-30 13:54:52.000000', 'Europe'),
(1204, 'nick.tsimogiannis@g4s.com', 'Slovakia', '2024-01-30 13:54:52.000000', 'Europe'),
(1205, 'nick.tsimogiannis@g4s.com', 'Slovenia', '2024-01-30 13:54:52.000000', 'Europe'),
(1206, 'nick.tsimogiannis@g4s.com', 'Turkey', '2024-01-30 13:54:52.000000', 'Europe'),
(1207, 'nick.tsimogiannis@g4s.com', 'Ukraine', '2024-01-30 13:54:52.000000', 'Europe'),
(1208, 'nick.tsimogiannis@g4s.com', 'Argentina', '2024-01-30 13:54:52.000000', 'LATAM'),
(1209, 'nick.tsimogiannis@g4s.com', 'Barbados', '2024-01-30 13:54:52.000000', 'LATAM'),
(1210, 'nick.tsimogiannis@g4s.com', 'Brazil', '2024-01-30 13:54:52.000000', 'LATAM'),
(1211, 'nick.tsimogiannis@g4s.com', 'Chile', '2024-01-30 13:54:52.000000', 'LATAM'),
(1212, 'nick.tsimogiannis@g4s.com', 'Colombia', '2024-01-30 13:54:52.000000', 'LATAM'),
(1213, 'nick.tsimogiannis@g4s.com', 'Costa Rica', '2024-01-30 13:54:52.000000', 'LATAM'),
(1214, 'nick.tsimogiannis@g4s.com', 'Ecuador', '2024-01-30 13:54:52.000000', 'LATAM'),
(1215, 'nick.tsimogiannis@g4s.com', 'El Salvador', '2024-01-30 13:54:52.000000', 'LATAM'),
(1216, 'nick.tsimogiannis@g4s.com', 'Grenada', '2024-01-30 13:54:52.000000', 'LATAM'),
(1217, 'nick.tsimogiannis@g4s.com', 'Guatemala', '2024-01-30 13:54:52.000000', 'LATAM'),
(1218, 'nick.tsimogiannis@g4s.com', 'Nicaragua', '2024-01-30 13:54:52.000000', 'LATAM'),
(1219, 'nick.tsimogiannis@g4s.com', 'Paraguay', '2024-01-30 13:54:52.000000', 'LATAM'),
(1220, 'nick.tsimogiannis@g4s.com', 'Peru', '2024-01-30 13:54:52.000000', 'LATAM'),
(1221, 'nick.tsimogiannis@g4s.com', 'REGIONal Office', '2024-01-30 13:54:52.000000', 'AME'),
(1222, 'nick.tsimogiannis@g4s.com', 'St. Lucia', '2024-01-30 13:54:52.000000', 'LATAM'),
(1223, 'nick.tsimogiannis@g4s.com', 'Trinidad and Tobago', '2024-01-30 13:54:52.000000', 'LATAM'),
(1224, 'nick.tsimogiannis@g4s.com', 'Uruguay', '2024-01-30 13:54:52.000000', 'LATAM'),
(1225, 'nick.tsimogiannis@g4s.com', 'Allied Universal Electronic Monitoring', '2024-01-30 13:54:52.000000', 'UKI'),
(1226, 'nick.tsimogiannis@g4s.com', 'AUS Compliance and Investigations', '2024-01-30 13:54:52.000000', 'UKI'),
(1227, 'nick.tsimogiannis@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-01-30 13:54:52.000000', 'UKI'),
(1228, 'nick.tsimogiannis@g4s.com', 'C&J - Employment Support Services', '2024-01-30 13:54:52.000000', 'UKI'),
(1229, 'nick.tsimogiannis@g4s.com', 'C&J - Health Services', '2024-01-30 13:54:52.000000', 'UKI'),
(1230, 'nick.tsimogiannis@g4s.com', 'C&J - Patient Transport Services', '2024-01-30 13:54:52.000000', 'UKI'),
(1231, 'nick.tsimogiannis@g4s.com', 'Facilities Management', '2024-01-30 13:54:52.000000', 'UKI'),
(1232, 'nick.tsimogiannis@g4s.com', 'Ireland', '2024-01-30 13:54:52.000000', 'UKI'),
(1233, 'nick.tsimogiannis@g4s.com', 'Regional Office', '2024-01-30 13:54:52.000000', 'AME'),
(1234, 'nick.tsimogiannis@g4s.com', 'Risk', '2024-01-30 13:54:52.000000', 'UKI'),
(1235, 'nick.tsimogiannis@g4s.com', 'Secure Solutions UK', '2024-01-30 13:54:52.000000', 'UKI'),
(1236, 'nick.tsimogiannis@g4s.com', 'UK - Cash Solutions', '2024-01-30 13:54:52.000000', 'UKI'),
(1433, 'shantanu.garg.external@g4s.com', 'Angola', '2024-01-30 13:58:50.000000', 'AME'),
(1434, 'shantanu.garg.external@g4s.com', 'Bahrain', '2024-01-30 13:58:50.000000', 'AME'),
(1435, 'shantanu.garg.external@g4s.com', 'Botswana', '2024-01-30 13:58:50.000000', 'AME'),
(1436, 'shantanu.garg.external@g4s.com', 'Cameroon', '2024-01-30 13:58:50.000000', 'AME'),
(1437, 'shantanu.garg.external@g4s.com', 'Central African Republic', '2024-01-30 13:58:50.000000', 'AME'),
(1438, 'shantanu.garg.external@g4s.com', 'Democratic Republic of Congo', '2024-01-30 13:58:50.000000', 'AME'),
(1439, 'shantanu.garg.external@g4s.com', 'Deposita International', '2024-01-30 13:58:50.000000', 'AME'),
(1440, 'shantanu.garg.external@g4s.com', 'Egypt', '2024-01-30 13:58:50.000000', 'AME'),
(1441, 'shantanu.garg.external@g4s.com', 'Gabon', '2024-01-30 13:58:50.000000', 'AME'),
(1442, 'shantanu.garg.external@g4s.com', 'Gambia', '2024-01-30 13:58:50.000000', 'AME'),
(1443, 'shantanu.garg.external@g4s.com', 'Ghana', '2024-01-30 13:58:50.000000', 'AME'),
(1444, 'shantanu.garg.external@g4s.com', 'Guinea', '2024-01-30 13:58:50.000000', 'AME'),
(1445, 'shantanu.garg.external@g4s.com', 'Ivory Coast', '2024-01-30 13:58:50.000000', 'AME'),
(1446, 'shantanu.garg.external@g4s.com', 'Jordan', '2024-01-30 13:58:50.000000', 'AME'),
(1447, 'shantanu.garg.external@g4s.com', 'Kenya', '2024-01-30 13:58:50.000000', 'AME'),
(1448, 'shantanu.garg.external@g4s.com', 'Lebanon', '2024-01-30 13:58:50.000000', 'AME'),
(1449, 'shantanu.garg.external@g4s.com', 'Lesotho', '2024-01-30 13:58:50.000000', 'AME'),
(1450, 'shantanu.garg.external@g4s.com', 'Madagascar', '2024-01-30 13:58:50.000000', 'AME'),
(1451, 'shantanu.garg.external@g4s.com', 'Malawi', '2024-01-30 13:58:50.000000', 'AME'),
(1452, 'shantanu.garg.external@g4s.com', 'Mozambique', '2024-01-30 13:58:50.000000', 'AME'),
(1453, 'shantanu.garg.external@g4s.com', 'Namibia', '2024-01-30 13:58:50.000000', 'AME'),
(1454, 'shantanu.garg.external@g4s.com', 'Nigeria', '2024-01-30 13:58:50.000000', 'AME'),
(1455, 'shantanu.garg.external@g4s.com', 'Oman', '2024-01-30 13:58:50.000000', 'AME'),
(1456, 'shantanu.garg.external@g4s.com', 'Qatar', '2024-01-30 13:58:50.000000', 'AME'),
(1457, 'shantanu.garg.external@g4s.com', 'Regional Office', '2024-01-30 13:58:50.000000', 'AME'),
(1458, 'shantanu.garg.external@g4s.com', 'Saudi Arabia', '2024-01-30 13:58:50.000000', 'AME'),
(1459, 'shantanu.garg.external@g4s.com', 'Sierra Leone', '2024-01-30 13:58:50.000000', 'AME'),
(1460, 'shantanu.garg.external@g4s.com', 'South Africa - Cash Solutions', '2024-01-30 13:58:50.000000', 'AME'),
(1461, 'shantanu.garg.external@g4s.com', 'South Africa - Secure Solutions', '2024-01-30 13:58:50.000000', 'AME'),
(1462, 'shantanu.garg.external@g4s.com', 'South Africa - Care and Justice ', '2024-01-30 13:58:50.000000', 'AME'),
(1463, 'shantanu.garg.external@g4s.com', 'Tanzania', '2024-01-30 13:58:50.000000', 'AME'),
(1464, 'shantanu.garg.external@g4s.com', 'Uganda', '2024-01-30 13:58:50.000000', 'AME'),
(1465, 'shantanu.garg.external@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-01-30 13:58:50.000000', 'AME'),
(1466, 'shantanu.garg.external@g4s.com', 'United Arab Emirates - Dubai', '2024-01-30 13:58:50.000000', 'AME'),
(1467, 'shantanu.garg.external@g4s.com', 'Zambia', '2024-01-30 13:58:50.000000', 'AME'),
(1468, 'shantanu.garg.external@g4s.com', 'Bangladesh', '2024-01-30 13:58:50.000000', 'APAC'),
(1469, 'shantanu.garg.external@g4s.com', 'C&J - Australia', '2024-01-30 13:58:50.000000', 'APAC'),
(1470, 'shantanu.garg.external@g4s.com', 'China', '2024-01-30 13:58:50.000000', 'APAC'),
(1471, 'shantanu.garg.external@g4s.com', 'Guam', '2024-01-30 13:58:50.000000', 'APAC'),
(1472, 'shantanu.garg.external@g4s.com', 'Hong Kong', '2024-01-30 13:58:50.000000', 'APAC'),
(1473, 'shantanu.garg.external@g4s.com', 'India', '2024-01-30 13:58:50.000000', 'APAC'),
(1474, 'shantanu.garg.external@g4s.com', 'Indonesia', '2024-01-30 13:58:50.000000', 'APAC'),
(1475, 'shantanu.garg.external@g4s.com', 'Japan', '2024-01-30 13:58:50.000000', 'APAC'),
(1476, 'shantanu.garg.external@g4s.com', 'Macau', '2024-01-30 13:58:50.000000', 'APAC'),
(1477, 'shantanu.garg.external@g4s.com', 'Nepal', '2024-01-30 13:58:50.000000', 'APAC'),
(1478, 'shantanu.garg.external@g4s.com', 'Papua New Guinea', '2024-01-30 13:58:50.000000', 'APAC'),
(1479, 'shantanu.garg.external@g4s.com', 'Risk Consulting - Hill and Associates', '2024-01-30 13:58:50.000000', 'APAC'),
(1480, 'shantanu.garg.external@g4s.com', 'Singapore', '2024-01-30 13:58:50.000000', 'APAC'),
(1481, 'shantanu.garg.external@g4s.com', 'Taiwan', '2024-01-30 13:58:50.000000', 'APAC'),
(1482, 'shantanu.garg.external@g4s.com', 'Thailand', '2024-01-30 13:58:50.000000', 'APAC'),
(1483, 'shantanu.garg.external@g4s.com', 'AUS Electronic Monitoring', '2024-01-30 13:58:50.000000', 'Corporate Services'),
(1484, 'shantanu.garg.external@g4s.com', 'Corporate Services / International Business Head Office', '2024-01-30 13:58:50.000000', 'Corporate Services'),
(1485, 'shantanu.garg.external@g4s.com', 'Austria', '2024-01-30 13:58:50.000000', 'Europe'),
(1486, 'shantanu.garg.external@g4s.com', 'Belgium - Secure Solutions', '2024-01-30 13:58:50.000000', 'Europe'),
(1487, 'shantanu.garg.external@g4s.com', 'Czech Republic', '2024-01-30 13:58:50.000000', 'Europe'),
(1488, 'shantanu.garg.external@g4s.com', 'Denmark', '2024-01-30 13:58:50.000000', 'Europe'),
(1489, 'shantanu.garg.external@g4s.com', 'Estonia', '2024-01-30 13:58:50.000000', 'Europe'),
(1490, 'shantanu.garg.external@g4s.com', 'France', '2024-01-30 13:58:50.000000', 'Europe'),
(1491, 'shantanu.garg.external@g4s.com', 'Greece', '2024-01-30 13:58:50.000000', 'Europe'),
(1492, 'shantanu.garg.external@g4s.com', 'Latvia', '2024-01-30 13:58:50.000000', 'Europe'),
(1493, 'shantanu.garg.external@g4s.com', 'Lithuania', '2024-01-30 13:58:50.000000', 'Europe'),
(1494, 'shantanu.garg.external@g4s.com', 'Luxembourg - Secure Solutions', '2024-01-30 13:58:50.000000', 'Europe'),
(1495, 'shantanu.garg.external@g4s.com', 'Malta', '2024-01-30 13:58:50.000000', 'Europe'),
(1496, 'shantanu.garg.external@g4s.com', 'Morocco - Secure Solutions', '2024-01-30 13:58:50.000000', 'Europe'),
(1497, 'shantanu.garg.external@g4s.com', 'Morocco - Cash Solutions', '2024-01-30 13:58:50.000000', 'Europe'),
(1498, 'shantanu.garg.external@g4s.com', 'Netherlands - Secure Solutions', '2024-01-30 13:58:50.000000', 'Europe'),
(1499, 'shantanu.garg.external@g4s.com', 'Serbia', '2024-01-30 13:58:50.000000', 'Europe'),
(1500, 'shantanu.garg.external@g4s.com', 'Slovakia', '2024-01-30 13:58:50.000000', 'Europe'),
(1501, 'shantanu.garg.external@g4s.com', 'Slovenia', '2024-01-30 13:58:50.000000', 'Europe'),
(1502, 'shantanu.garg.external@g4s.com', 'Turkey', '2024-01-30 13:58:50.000000', 'Europe'),
(1503, 'shantanu.garg.external@g4s.com', 'Ukraine', '2024-01-30 13:58:50.000000', 'Europe'),
(1504, 'shantanu.garg.external@g4s.com', 'Argentina', '2024-01-30 13:58:50.000000', 'LATAM'),
(1505, 'shantanu.garg.external@g4s.com', 'Barbados', '2024-01-30 13:58:50.000000', 'LATAM'),
(1506, 'shantanu.garg.external@g4s.com', 'Brazil', '2024-01-30 13:58:50.000000', 'LATAM'),
(1507, 'shantanu.garg.external@g4s.com', 'Chile', '2024-01-30 13:58:50.000000', 'LATAM'),
(1508, 'shantanu.garg.external@g4s.com', 'Colombia', '2024-01-30 13:58:50.000000', 'LATAM'),
(1509, 'shantanu.garg.external@g4s.com', 'Costa Rica', '2024-01-30 13:58:50.000000', 'LATAM'),
(1510, 'shantanu.garg.external@g4s.com', 'Ecuador', '2024-01-30 13:58:50.000000', 'LATAM'),
(1511, 'shantanu.garg.external@g4s.com', 'El Salvador', '2024-01-30 13:58:50.000000', 'LATAM'),
(1512, 'shantanu.garg.external@g4s.com', 'Grenada', '2024-01-30 13:58:50.000000', 'LATAM'),
(1513, 'shantanu.garg.external@g4s.com', 'Guatemala', '2024-01-30 13:58:50.000000', 'LATAM'),
(1514, 'shantanu.garg.external@g4s.com', 'Nicaragua', '2024-01-30 13:58:50.000000', 'LATAM'),
(1515, 'shantanu.garg.external@g4s.com', 'Paraguay', '2024-01-30 13:58:50.000000', 'LATAM'),
(1516, 'shantanu.garg.external@g4s.com', 'Peru', '2024-01-30 13:58:50.000000', 'LATAM'),
(1517, 'shantanu.garg.external@g4s.com', 'St. Lucia', '2024-01-30 13:58:50.000000', 'LATAM'),
(1518, 'shantanu.garg.external@g4s.com', 'Trinidad and Tobago', '2024-01-30 13:58:50.000000', 'LATAM'),
(1519, 'shantanu.garg.external@g4s.com', 'Uruguay', '2024-01-30 13:58:50.000000', 'LATAM'),
(1520, 'shantanu.garg.external@g4s.com', 'Allied Universal Electronic Monitoring', '2024-01-30 13:58:50.000000', 'UKI'),
(1521, 'shantanu.garg.external@g4s.com', 'AUS Compliance and Investigations', '2024-01-30 13:58:50.000000', 'UKI'),
(1522, 'shantanu.garg.external@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-01-30 13:58:50.000000', 'UKI'),
(1523, 'shantanu.garg.external@g4s.com', 'C&J - Employment Support Services', '2024-01-30 13:58:50.000000', 'UKI'),
(1524, 'shantanu.garg.external@g4s.com', 'C&J - Health Services', '2024-01-30 13:58:50.000000', 'UKI'),
(1525, 'shantanu.garg.external@g4s.com', 'C&J - Patient Transport Services', '2024-01-30 13:58:50.000000', 'UKI'),
(1526, 'shantanu.garg.external@g4s.com', 'Facilities Management', '2024-01-30 13:58:50.000000', 'UKI'),
(1527, 'shantanu.garg.external@g4s.com', 'Ireland', '2024-01-30 13:58:50.000000', 'UKI'),
(1528, 'shantanu.garg.external@g4s.com', 'Risk', '2024-01-30 13:58:50.000000', 'UKI'),
(1529, 'shantanu.garg.external@g4s.com', 'Secure Solutions UK', '2024-01-30 13:58:50.000000', 'UKI'),
(1530, 'shantanu.garg.external@g4s.com', 'UK - Cash Solutions', '2024-01-30 13:58:50.000000', 'UKI'),
(1531, 'adminworkflow@in.g4s.com', 'Angola', '2024-01-30 14:03:58.000000', 'AME'),
(1532, 'adminworkflow@in.g4s.com', 'Bahrain', '2024-01-30 14:03:58.000000', 'AME'),
(1533, 'adminworkflow@in.g4s.com', 'Botswana', '2024-01-30 14:03:58.000000', 'AME'),
(1534, 'adminworkflow@in.g4s.com', 'Cameroon', '2024-01-30 14:03:58.000000', 'AME'),
(1535, 'adminworkflow@in.g4s.com', 'Central African Republic', '2024-01-30 14:03:58.000000', 'AME'),
(1536, 'adminworkflow@in.g4s.com', 'Democratic Republic of Congo', '2024-01-30 14:03:58.000000', 'AME'),
(1537, 'adminworkflow@in.g4s.com', 'Deposita International', '2024-01-30 14:03:58.000000', 'AME'),
(1538, 'adminworkflow@in.g4s.com', 'Egypt', '2024-01-30 14:03:58.000000', 'AME'),
(1539, 'adminworkflow@in.g4s.com', 'Gabon', '2024-01-30 14:03:58.000000', 'AME'),
(1540, 'adminworkflow@in.g4s.com', 'Gambia', '2024-01-30 14:03:58.000000', 'AME'),
(1541, 'adminworkflow@in.g4s.com', 'Ghana', '2024-01-30 14:03:58.000000', 'AME'),
(1542, 'adminworkflow@in.g4s.com', 'Guinea', '2024-01-30 14:03:58.000000', 'AME'),
(1543, 'adminworkflow@in.g4s.com', 'Ivory Coast', '2024-01-30 14:03:58.000000', 'AME'),
(1544, 'adminworkflow@in.g4s.com', 'Jordan', '2024-01-30 14:03:58.000000', 'AME'),
(1545, 'adminworkflow@in.g4s.com', 'Kenya', '2024-01-30 14:03:58.000000', 'AME'),
(1546, 'adminworkflow@in.g4s.com', 'Lebanon', '2024-01-30 14:03:58.000000', 'AME'),
(1547, 'adminworkflow@in.g4s.com', 'Lesotho', '2024-01-30 14:03:58.000000', 'AME'),
(1548, 'adminworkflow@in.g4s.com', 'Madagascar', '2024-01-30 14:03:58.000000', 'AME'),
(1549, 'adminworkflow@in.g4s.com', 'Malawi', '2024-01-30 14:03:58.000000', 'AME'),
(1550, 'adminworkflow@in.g4s.com', 'Mozambique', '2024-01-30 14:03:58.000000', 'AME'),
(1551, 'adminworkflow@in.g4s.com', 'Namibia', '2024-01-30 14:03:58.000000', 'AME'),
(1552, 'adminworkflow@in.g4s.com', 'Nigeria', '2024-01-30 14:03:58.000000', 'AME'),
(1553, 'adminworkflow@in.g4s.com', 'Oman', '2024-01-30 14:03:58.000000', 'AME'),
(1554, 'adminworkflow@in.g4s.com', 'Qatar', '2024-01-30 14:03:58.000000', 'AME'),
(1555, 'adminworkflow@in.g4s.com', 'Regional Office', '2024-01-30 14:03:58.000000', 'AME'),
(1556, 'adminworkflow@in.g4s.com', 'Saudi Arabia', '2024-01-30 14:03:58.000000', 'AME'),
(1557, 'adminworkflow@in.g4s.com', 'Sierra Leone', '2024-01-30 14:03:58.000000', 'AME'),
(1558, 'adminworkflow@in.g4s.com', 'South Africa - Cash Solutions', '2024-01-30 14:03:58.000000', 'AME'),
(1559, 'adminworkflow@in.g4s.com', 'South Africa - Secure Solutions', '2024-01-30 14:03:58.000000', 'AME'),
(1560, 'adminworkflow@in.g4s.com', 'South Africa - Care and Justice ', '2024-01-30 14:03:58.000000', 'AME'),
(1561, 'adminworkflow@in.g4s.com', 'Tanzania', '2024-01-30 14:03:58.000000', 'AME'),
(1562, 'adminworkflow@in.g4s.com', 'Uganda', '2024-01-30 14:03:58.000000', 'AME'),
(1563, 'adminworkflow@in.g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-01-30 14:03:58.000000', 'AME'),
(1564, 'adminworkflow@in.g4s.com', 'United Arab Emirates - Dubai', '2024-01-30 14:03:58.000000', 'AME'),
(1565, 'adminworkflow@in.g4s.com', 'Zambia', '2024-01-30 14:03:58.000000', 'AME'),
(1566, 'adminworkflow@in.g4s.com', 'Bangladesh', '2024-01-30 14:03:58.000000', 'APAC'),
(1567, 'adminworkflow@in.g4s.com', 'C&J - Australia', '2024-01-30 14:03:58.000000', 'APAC'),
(1568, 'adminworkflow@in.g4s.com', 'China', '2024-01-30 14:03:58.000000', 'APAC'),
(1569, 'adminworkflow@in.g4s.com', 'Guam', '2024-01-30 14:03:58.000000', 'APAC'),
(1570, 'adminworkflow@in.g4s.com', 'Hong Kong', '2024-01-30 14:03:58.000000', 'APAC'),
(1571, 'adminworkflow@in.g4s.com', 'India', '2024-01-30 14:03:58.000000', 'APAC'),
(1572, 'adminworkflow@in.g4s.com', 'Indonesia', '2024-01-30 14:03:58.000000', 'APAC'),
(1573, 'adminworkflow@in.g4s.com', 'Japan', '2024-01-30 14:03:58.000000', 'APAC'),
(1574, 'adminworkflow@in.g4s.com', 'Macau', '2024-01-30 14:03:58.000000', 'APAC'),
(1575, 'adminworkflow@in.g4s.com', 'Nepal', '2024-01-30 14:03:58.000000', 'APAC'),
(1576, 'adminworkflow@in.g4s.com', 'Papua New Guinea', '2024-01-30 14:03:58.000000', 'APAC'),
(1577, 'adminworkflow@in.g4s.com', 'Risk Consulting - Hill and Associates', '2024-01-30 14:03:58.000000', 'APAC'),
(1578, 'adminworkflow@in.g4s.com', 'Singapore', '2024-01-30 14:03:58.000000', 'APAC'),
(1579, 'adminworkflow@in.g4s.com', 'Taiwan', '2024-01-30 14:03:58.000000', 'APAC'),
(1580, 'adminworkflow@in.g4s.com', 'Thailand', '2024-01-30 14:03:58.000000', 'APAC'),
(1581, 'adminworkflow@in.g4s.com', 'AUS Electronic Monitoring', '2024-01-30 14:03:58.000000', 'Corporate Services'),
(1582, 'adminworkflow@in.g4s.com', 'Corporate Services / International Business Head Office', '2024-01-30 14:03:58.000000', 'Corporate Services'),
(1583, 'adminworkflow@in.g4s.com', 'Austria', '2024-01-30 14:03:58.000000', 'Europe'),
(1584, 'adminworkflow@in.g4s.com', 'Belgium - Secure Solutions', '2024-01-30 14:03:58.000000', 'Europe'),
(1585, 'adminworkflow@in.g4s.com', 'Czech Republic', '2024-01-30 14:03:58.000000', 'Europe'),
(1586, 'adminworkflow@in.g4s.com', 'Denmark', '2024-01-30 14:03:58.000000', 'Europe'),
(1587, 'adminworkflow@in.g4s.com', 'Estonia', '2024-01-30 14:03:58.000000', 'Europe'),
(1588, 'adminworkflow@in.g4s.com', 'France', '2024-01-30 14:03:58.000000', 'Europe'),
(1589, 'adminworkflow@in.g4s.com', 'Greece', '2024-01-30 14:03:58.000000', 'Europe'),
(1590, 'adminworkflow@in.g4s.com', 'Latvia', '2024-01-30 14:03:58.000000', 'Europe'),
(1591, 'adminworkflow@in.g4s.com', 'Lithuania', '2024-01-30 14:03:58.000000', 'Europe'),
(1592, 'adminworkflow@in.g4s.com', 'Luxembourg - Secure Solutions', '2024-01-30 14:03:58.000000', 'Europe'),
(1593, 'adminworkflow@in.g4s.com', 'Malta', '2024-01-30 14:03:58.000000', 'Europe'),
(1594, 'adminworkflow@in.g4s.com', 'Morocco - Secure Solutions', '2024-01-30 14:03:58.000000', 'Europe'),
(1595, 'adminworkflow@in.g4s.com', 'Morocco - Cash Solutions', '2024-01-30 14:03:58.000000', 'Europe'),
(1596, 'adminworkflow@in.g4s.com', 'Netherlands - Secure Solutions', '2024-01-30 14:03:58.000000', 'Europe'),
(1597, 'adminworkflow@in.g4s.com', 'Serbia', '2024-01-30 14:03:58.000000', 'Europe'),
(1598, 'adminworkflow@in.g4s.com', 'Slovakia', '2024-01-30 14:03:58.000000', 'Europe'),
(1599, 'adminworkflow@in.g4s.com', 'Slovenia', '2024-01-30 14:03:58.000000', 'Europe'),
(1600, 'adminworkflow@in.g4s.com', 'Turkey', '2024-01-30 14:03:58.000000', 'Europe'),
(1601, 'adminworkflow@in.g4s.com', 'Ukraine', '2024-01-30 14:03:58.000000', 'Europe'),
(1602, 'adminworkflow@in.g4s.com', 'Argentina', '2024-01-30 14:03:58.000000', 'LATAM'),
(1603, 'adminworkflow@in.g4s.com', 'Barbados', '2024-01-30 14:03:58.000000', 'LATAM'),
(1604, 'adminworkflow@in.g4s.com', 'Brazil', '2024-01-30 14:03:58.000000', 'LATAM'),
(1605, 'adminworkflow@in.g4s.com', 'Chile', '2024-01-30 14:03:58.000000', 'LATAM'),
(1606, 'adminworkflow@in.g4s.com', 'Colombia', '2024-01-30 14:03:58.000000', 'LATAM'),
(1607, 'adminworkflow@in.g4s.com', 'Costa Rica', '2024-01-30 14:03:58.000000', 'LATAM'),
(1608, 'adminworkflow@in.g4s.com', 'Ecuador', '2024-01-30 14:03:58.000000', 'LATAM'),
(1609, 'adminworkflow@in.g4s.com', 'El Salvador', '2024-01-30 14:03:58.000000', 'LATAM'),
(1610, 'adminworkflow@in.g4s.com', 'Grenada', '2024-01-30 14:03:58.000000', 'LATAM'),
(1611, 'adminworkflow@in.g4s.com', 'Guatemala', '2024-01-30 14:03:58.000000', 'LATAM'),
(1612, 'adminworkflow@in.g4s.com', 'Nicaragua', '2024-01-30 14:03:58.000000', 'LATAM'),
(1613, 'adminworkflow@in.g4s.com', 'Paraguay', '2024-01-30 14:03:58.000000', 'LATAM'),
(1614, 'adminworkflow@in.g4s.com', 'Peru', '2024-01-30 14:03:58.000000', 'LATAM'),
(1615, 'adminworkflow@in.g4s.com', 'St. Lucia', '2024-01-30 14:03:58.000000', 'LATAM'),
(1616, 'adminworkflow@in.g4s.com', 'Trinidad and Tobago', '2024-01-30 14:03:58.000000', 'LATAM'),
(1617, 'adminworkflow@in.g4s.com', 'Uruguay', '2024-01-30 14:03:58.000000', 'LATAM'),
(1618, 'adminworkflow@in.g4s.com', 'Allied Universal Electronic Monitoring', '2024-01-30 14:03:58.000000', 'UKI'),
(1619, 'adminworkflow@in.g4s.com', 'AUS Compliance and Investigations', '2024-01-30 14:03:58.000000', 'UKI'),
(1620, 'adminworkflow@in.g4s.com', 'C&J - Care and Rehabilitation Services', '2024-01-30 14:03:58.000000', 'UKI'),
(1621, 'adminworkflow@in.g4s.com', 'C&J - Employment Support Services', '2024-01-30 14:03:58.000000', 'UKI'),
(1622, 'adminworkflow@in.g4s.com', 'C&J - Health Services', '2024-01-30 14:03:58.000000', 'UKI'),
(1623, 'adminworkflow@in.g4s.com', 'C&J - Patient Transport Services', '2024-01-30 14:03:58.000000', 'UKI'),
(1624, 'adminworkflow@in.g4s.com', 'Facilities Management', '2024-01-30 14:03:58.000000', 'UKI'),
(1625, 'adminworkflow@in.g4s.com', 'Ireland', '2024-01-30 14:03:58.000000', 'UKI'),
(1626, 'adminworkflow@in.g4s.com', 'Risk', '2024-01-30 14:03:58.000000', 'UKI'),
(1627, 'adminworkflow@in.g4s.com', 'Secure Solutions UK', '2024-01-30 14:03:58.000000', 'UKI'),
(1628, 'adminworkflow@in.g4s.com', 'UK - Cash Solutions', '2024-01-30 14:03:58.000000', 'UKI'),
(1927, 'paul.banks@g4s.com', 'Angola', '2024-02-01 12:03:30.000000', 'AME'),
(1928, 'paul.banks@g4s.com', 'Bahrain', '2024-02-01 12:03:30.000000', 'AME'),
(1929, 'paul.banks@g4s.com', 'Botswana', '2024-02-01 12:03:30.000000', 'AME'),
(1930, 'paul.banks@g4s.com', 'Cameroon', '2024-02-01 12:03:30.000000', 'AME'),
(1931, 'paul.banks@g4s.com', 'Central African Republic', '2024-02-01 12:03:30.000000', 'AME'),
(1932, 'paul.banks@g4s.com', 'Democratic Republic of Congo', '2024-02-01 12:03:30.000000', 'AME'),
(1933, 'paul.banks@g4s.com', 'Deposita International', '2024-02-01 12:03:30.000000', 'AME'),
(1934, 'paul.banks@g4s.com', 'Egypt', '2024-02-01 12:03:30.000000', 'AME'),
(1935, 'paul.banks@g4s.com', 'Gabon', '2024-02-01 12:03:30.000000', 'AME'),
(1936, 'paul.banks@g4s.com', 'Gambia', '2024-02-01 12:03:30.000000', 'AME'),
(1937, 'paul.banks@g4s.com', 'Ghana', '2024-02-01 12:03:30.000000', 'AME'),
(1938, 'paul.banks@g4s.com', 'Guinea', '2024-02-01 12:03:30.000000', 'AME'),
(1939, 'paul.banks@g4s.com', 'Ivory Coast', '2024-02-01 12:03:30.000000', 'AME'),
(1940, 'paul.banks@g4s.com', 'Jordan', '2024-02-01 12:03:30.000000', 'AME'),
(1941, 'paul.banks@g4s.com', 'Kenya', '2024-02-01 12:03:30.000000', 'AME'),
(1942, 'paul.banks@g4s.com', 'Lebanon', '2024-02-01 12:03:30.000000', 'AME'),
(1943, 'paul.banks@g4s.com', 'Lesotho', '2024-02-01 12:03:30.000000', 'AME'),
(1944, 'paul.banks@g4s.com', 'Madagascar', '2024-02-01 12:03:30.000000', 'AME'),
(1945, 'paul.banks@g4s.com', 'Malawi', '2024-02-01 12:03:30.000000', 'AME'),
(1946, 'paul.banks@g4s.com', 'Mozambique', '2024-02-01 12:03:30.000000', 'AME'),
(1947, 'paul.banks@g4s.com', 'Namibia', '2024-02-01 12:03:30.000000', 'AME'),
(1948, 'paul.banks@g4s.com', 'Nigeria', '2024-02-01 12:03:30.000000', 'AME'),
(1949, 'paul.banks@g4s.com', 'Oman', '2024-02-01 12:03:30.000000', 'AME'),
(1950, 'paul.banks@g4s.com', 'Qatar', '2024-02-01 12:03:30.000000', 'AME'),
(1951, 'paul.banks@g4s.com', 'Regional Office', '2024-02-01 12:03:30.000000', 'AME'),
(1952, 'paul.banks@g4s.com', 'Saudi Arabia', '2024-02-01 12:03:30.000000', 'AME'),
(1953, 'paul.banks@g4s.com', 'Sierra Leone', '2024-02-01 12:03:30.000000', 'AME'),
(1954, 'paul.banks@g4s.com', 'South Africa - Cash Solutions', '2024-02-01 12:03:30.000000', 'AME'),
(1955, 'paul.banks@g4s.com', 'South Africa - Secure Solutions', '2024-02-01 12:03:30.000000', 'AME'),
(1956, 'paul.banks@g4s.com', 'South Africa - Care and Justice', '2024-02-01 12:03:30.000000', 'AME'),
(1957, 'paul.banks@g4s.com', 'Tanzania', '2024-02-01 12:03:30.000000', 'AME'),
(1958, 'paul.banks@g4s.com', 'Uganda', '2024-02-01 12:03:30.000000', 'AME'),
(1959, 'paul.banks@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-02-01 12:03:30.000000', 'AME'),
(1960, 'paul.banks@g4s.com', 'United Arab Emirates - Dubai', '2024-02-01 12:03:30.000000', 'AME'),
(1961, 'paul.banks@g4s.com', 'Zambia', '2024-02-01 12:03:30.000000', 'AME'),
(1962, 'paul.banks@g4s.com', 'Bangladesh', '2024-02-01 12:03:30.000000', 'APAC'),
(1963, 'paul.banks@g4s.com', 'C&J - Australia', '2024-02-01 12:03:30.000000', 'APAC'),
(1964, 'paul.banks@g4s.com', 'China', '2024-02-01 12:03:30.000000', 'APAC'),
(1965, 'paul.banks@g4s.com', 'Guam', '2024-02-01 12:03:30.000000', 'APAC'),
(1966, 'paul.banks@g4s.com', 'Hong Kong', '2024-02-01 12:03:30.000000', 'APAC'),
(1967, 'paul.banks@g4s.com', 'India', '2024-02-01 12:03:30.000000', 'APAC'),
(1968, 'paul.banks@g4s.com', 'Indonesia', '2024-02-01 12:03:30.000000', 'APAC'),
(1969, 'paul.banks@g4s.com', 'Japan', '2024-02-01 12:03:30.000000', 'APAC'),
(1970, 'paul.banks@g4s.com', 'Macau', '2024-02-01 12:03:30.000000', 'APAC'),
(1971, 'paul.banks@g4s.com', 'Nepal', '2024-02-01 12:03:30.000000', 'APAC'),
(1972, 'paul.banks@g4s.com', 'Papua New Guinea', '2024-02-01 12:03:30.000000', 'APAC'),
(1973, 'paul.banks@g4s.com', 'Regional Office', '2024-02-01 12:03:30.000000', 'AME'),
(1974, 'paul.banks@g4s.com', 'Risk Consulting - Hill and Associates', '2024-02-01 12:03:30.000000', 'APAC'),
(1975, 'paul.banks@g4s.com', 'Singapore', '2024-02-01 12:03:30.000000', 'APAC'),
(1976, 'paul.banks@g4s.com', 'Taiwan', '2024-02-01 12:03:30.000000', 'APAC'),
(1977, 'paul.banks@g4s.com', 'Thailand', '2024-02-01 12:03:30.000000', 'APAC'),
(1978, 'paul.banks@g4s.com', 'AUS Electronic Monitoring', '2024-02-01 12:03:30.000000', 'Corporate Services'),
(1979, 'paul.banks@g4s.com', 'Corporate Services / International Business Head Office', '2024-02-01 12:03:30.000000', 'Corporate Services'),
(1980, 'paul.banks@g4s.com', 'Austria', '2024-02-01 12:03:30.000000', 'Europe'),
(1981, 'paul.banks@g4s.com', 'Belgium - Secure Solutions', '2024-02-01 12:03:30.000000', 'Europe'),
(1982, 'paul.banks@g4s.com', 'Czech Republic', '2024-02-01 12:03:30.000000', 'Europe'),
(1983, 'paul.banks@g4s.com', 'Denmark', '2024-02-01 12:03:30.000000', 'Europe'),
(1984, 'paul.banks@g4s.com', 'Estonia', '2024-02-01 12:03:30.000000', 'Europe'),
(1985, 'paul.banks@g4s.com', 'France', '2024-02-01 12:03:30.000000', 'Europe'),
(1986, 'paul.banks@g4s.com', 'Greece', '2024-02-01 12:03:30.000000', 'Europe'),
(1987, 'paul.banks@g4s.com', 'Latvia', '2024-02-01 12:03:30.000000', 'Europe'),
(1988, 'paul.banks@g4s.com', 'Lithuania', '2024-02-01 12:03:30.000000', 'Europe'),
(1989, 'paul.banks@g4s.com', 'Luxembourg - Secure Solutions', '2024-02-01 12:03:30.000000', 'Europe'),
(1990, 'paul.banks@g4s.com', 'Malta', '2024-02-01 12:03:30.000000', 'Europe'),
(1991, 'paul.banks@g4s.com', 'Morocco - Secure Solutions', '2024-02-01 12:03:30.000000', 'Europe'),
(1992, 'paul.banks@g4s.com', 'Morocco - Cash Solutions', '2024-02-01 12:03:30.000000', 'Europe'),
(1993, 'paul.banks@g4s.com', 'Netherlands - Secure Solutions', '2024-02-01 12:03:30.000000', 'Europe'),
(1994, 'paul.banks@g4s.com', 'Regional Office', '2024-02-01 12:03:30.000000', 'AME'),
(1995, 'paul.banks@g4s.com', 'Serbia', '2024-02-01 12:03:30.000000', 'Europe'),
(1996, 'paul.banks@g4s.com', 'Slovakia', '2024-02-01 12:03:30.000000', 'Europe'),
(1997, 'paul.banks@g4s.com', 'Slovenia', '2024-02-01 12:03:30.000000', 'Europe'),
(1998, 'paul.banks@g4s.com', 'Turkey', '2024-02-01 12:03:30.000000', 'Europe'),
(1999, 'paul.banks@g4s.com', 'Ukraine', '2024-02-01 12:03:30.000000', 'Europe'),
(2000, 'paul.banks@g4s.com', 'Argentina', '2024-02-01 12:03:30.000000', 'LATAM'),
(2001, 'paul.banks@g4s.com', 'Barbados', '2024-02-01 12:03:30.000000', 'LATAM'),
(2002, 'paul.banks@g4s.com', 'Brazil', '2024-02-01 12:03:30.000000', 'LATAM'),
(2003, 'paul.banks@g4s.com', 'Chile', '2024-02-01 12:03:30.000000', 'LATAM'),
(2004, 'paul.banks@g4s.com', 'Colombia', '2024-02-01 12:03:30.000000', 'LATAM'),
(2005, 'paul.banks@g4s.com', 'Costa Rica', '2024-02-01 12:03:30.000000', 'LATAM'),
(2006, 'paul.banks@g4s.com', 'Ecuador', '2024-02-01 12:03:30.000000', 'LATAM'),
(2007, 'paul.banks@g4s.com', 'El Salvador', '2024-02-01 12:03:30.000000', 'LATAM');
INSERT INTO `users_assigned_country` (`id`, `user_email`, `user_country`, `added_on`, `user_region`) VALUES
(2008, 'paul.banks@g4s.com', 'Grenada', '2024-02-01 12:03:30.000000', 'LATAM'),
(2009, 'paul.banks@g4s.com', 'Guatemala', '2024-02-01 12:03:30.000000', 'LATAM'),
(2010, 'paul.banks@g4s.com', 'Nicaragua', '2024-02-01 12:03:30.000000', 'LATAM'),
(2011, 'paul.banks@g4s.com', 'Paraguay', '2024-02-01 12:03:30.000000', 'LATAM'),
(2012, 'paul.banks@g4s.com', 'Peru', '2024-02-01 12:03:30.000000', 'LATAM'),
(2013, 'paul.banks@g4s.com', 'REGIONal Office', '2024-02-01 12:03:30.000000', 'AME'),
(2014, 'paul.banks@g4s.com', 'St. Lucia', '2024-02-01 12:03:30.000000', 'LATAM'),
(2015, 'paul.banks@g4s.com', 'Trinidad and Tobago', '2024-02-01 12:03:30.000000', 'LATAM'),
(2016, 'paul.banks@g4s.com', 'Uruguay', '2024-02-01 12:03:30.000000', 'LATAM'),
(2017, 'paul.banks@g4s.com', 'Allied Universal Electronic Monitoring', '2024-02-01 12:03:30.000000', 'UKI'),
(2018, 'paul.banks@g4s.com', 'AUS Compliance and Investigations', '2024-02-01 12:03:30.000000', 'UKI'),
(2019, 'paul.banks@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-02-01 12:03:30.000000', 'UKI'),
(2020, 'paul.banks@g4s.com', 'C&J - Employment Support Services', '2024-02-01 12:03:30.000000', 'UKI'),
(2021, 'paul.banks@g4s.com', 'C&J - Health Services', '2024-02-01 12:03:30.000000', 'UKI'),
(2022, 'paul.banks@g4s.com', 'C&J - Patient Transport Services', '2024-02-01 12:03:30.000000', 'UKI'),
(2023, 'paul.banks@g4s.com', 'Facilities Management', '2024-02-01 12:03:30.000000', 'UKI'),
(2024, 'paul.banks@g4s.com', 'Ireland', '2024-02-01 12:03:30.000000', 'UKI'),
(2025, 'paul.banks@g4s.com', 'Regional Office', '2024-02-01 12:03:30.000000', 'AME'),
(2026, 'paul.banks@g4s.com', 'Risk', '2024-02-01 12:03:30.000000', 'UKI'),
(2027, 'paul.banks@g4s.com', 'Secure Solutions UK', '2024-02-01 12:03:30.000000', 'UKI'),
(2028, 'paul.banks@g4s.com', 'UK - Cash Solutions', '2024-02-01 12:03:30.000000', 'UKI'),
(2029, 'robot.bravo@almajalg4s.com', 'Angola', '2024-02-05 03:27:54.000000', 'AME'),
(2030, 'robot.bravo@almajalg4s.com', 'Bahrain', '2024-02-05 03:27:54.000000', 'AME'),
(2031, 'robot.bravo@almajalg4s.com', 'Botswana', '2024-02-05 03:27:54.000000', 'AME'),
(2032, 'robot.bravo@almajalg4s.com', 'Cameroon', '2024-02-05 03:27:54.000000', 'AME'),
(2033, 'robot.bravo@almajalg4s.com', 'Central African Republic', '2024-02-05 03:27:54.000000', 'AME'),
(2034, 'robot.bravo@almajalg4s.com', 'Democratic Republic of Congo', '2024-02-05 03:27:54.000000', 'AME'),
(2035, 'robot.bravo@almajalg4s.com', 'Deposita International', '2024-02-05 03:27:54.000000', 'AME'),
(2036, 'robot.bravo@almajalg4s.com', 'Egypt', '2024-02-05 03:27:54.000000', 'AME'),
(2037, 'robot.bravo@almajalg4s.com', 'Gabon', '2024-02-05 03:27:54.000000', 'AME'),
(2038, 'robot.bravo@almajalg4s.com', 'Gambia', '2024-02-05 03:27:54.000000', 'AME'),
(2039, 'robot.bravo@almajalg4s.com', 'Ghana', '2024-02-05 03:27:54.000000', 'AME'),
(2040, 'robot.bravo@almajalg4s.com', 'Guinea', '2024-02-05 03:27:54.000000', 'AME'),
(2041, 'robot.bravo@almajalg4s.com', 'Ivory Coast', '2024-02-05 03:27:54.000000', 'AME'),
(2042, 'robot.bravo@almajalg4s.com', 'Jordan', '2024-02-05 03:27:54.000000', 'AME'),
(2043, 'robot.bravo@almajalg4s.com', 'Kenya', '2024-02-05 03:27:54.000000', 'AME'),
(2044, 'robot.bravo@almajalg4s.com', 'Lebanon', '2024-02-05 03:27:54.000000', 'AME'),
(2045, 'robot.bravo@almajalg4s.com', 'Lesotho', '2024-02-05 03:27:54.000000', 'AME'),
(2046, 'robot.bravo@almajalg4s.com', 'Madagascar', '2024-02-05 03:27:54.000000', 'AME'),
(2047, 'robot.bravo@almajalg4s.com', 'Malawi', '2024-02-05 03:27:54.000000', 'AME'),
(2048, 'robot.bravo@almajalg4s.com', 'Mozambique', '2024-02-05 03:27:54.000000', 'AME'),
(2049, 'robot.bravo@almajalg4s.com', 'Namibia', '2024-02-05 03:27:54.000000', 'AME'),
(2050, 'robot.bravo@almajalg4s.com', 'Nigeria', '2024-02-05 03:27:54.000000', 'AME'),
(2051, 'robot.bravo@almajalg4s.com', 'Oman', '2024-02-05 03:27:54.000000', 'AME'),
(2052, 'robot.bravo@almajalg4s.com', 'Qatar', '2024-02-05 03:27:54.000000', 'AME'),
(2053, 'robot.bravo@almajalg4s.com', 'Regional Office', '2024-02-05 03:27:54.000000', 'AME'),
(2054, 'robot.bravo@almajalg4s.com', 'Saudi Arabia', '2024-02-05 03:27:54.000000', 'AME'),
(2055, 'robot.bravo@almajalg4s.com', 'Sierra Leone', '2024-02-05 03:27:54.000000', 'AME'),
(2056, 'robot.bravo@almajalg4s.com', 'South Africa - Cash Solutions', '2024-02-05 03:27:54.000000', 'AME'),
(2057, 'robot.bravo@almajalg4s.com', 'South Africa - Secure Solutions', '2024-02-05 03:27:54.000000', 'AME'),
(2058, 'robot.bravo@almajalg4s.com', 'South Africa - Care and Justice', '2024-02-05 03:27:54.000000', 'AME'),
(2059, 'robot.bravo@almajalg4s.com', 'Tanzania', '2024-02-05 03:27:54.000000', 'AME'),
(2060, 'robot.bravo@almajalg4s.com', 'Uganda', '2024-02-05 03:27:54.000000', 'AME'),
(2061, 'robot.bravo@almajalg4s.com', 'United Arab Emirates - Abu Dhabi', '2024-02-05 03:27:54.000000', 'AME'),
(2062, 'robot.bravo@almajalg4s.com', 'United Arab Emirates - Dubai', '2024-02-05 03:27:54.000000', 'AME'),
(2063, 'robot.bravo@almajalg4s.com', 'Zambia', '2024-02-05 03:27:54.000000', 'AME'),
(2064, 'robot.bravo@almajalg4s.com', 'Bangladesh', '2024-02-05 03:27:54.000000', 'APAC'),
(2065, 'robot.bravo@almajalg4s.com', 'C&J - Australia', '2024-02-05 03:27:54.000000', 'APAC'),
(2066, 'robot.bravo@almajalg4s.com', 'China', '2024-02-05 03:27:54.000000', 'APAC'),
(2067, 'robot.bravo@almajalg4s.com', 'Guam', '2024-02-05 03:27:54.000000', 'APAC'),
(2068, 'robot.bravo@almajalg4s.com', 'Hong Kong', '2024-02-05 03:27:54.000000', 'APAC'),
(2069, 'robot.bravo@almajalg4s.com', 'India', '2024-02-05 03:27:54.000000', 'APAC'),
(2070, 'robot.bravo@almajalg4s.com', 'Indonesia', '2024-02-05 03:27:54.000000', 'APAC'),
(2071, 'robot.bravo@almajalg4s.com', 'Japan', '2024-02-05 03:27:54.000000', 'APAC'),
(2072, 'robot.bravo@almajalg4s.com', 'Macau', '2024-02-05 03:27:54.000000', 'APAC'),
(2073, 'robot.bravo@almajalg4s.com', 'Nepal', '2024-02-05 03:27:54.000000', 'APAC'),
(2074, 'robot.bravo@almajalg4s.com', 'Papua New Guinea', '2024-02-05 03:27:54.000000', 'APAC'),
(2075, 'robot.bravo@almajalg4s.com', 'Regional Office', '2024-02-05 03:27:54.000000', 'AME'),
(2076, 'robot.bravo@almajalg4s.com', 'Risk Consulting - Hill and Associates', '2024-02-05 03:27:54.000000', 'APAC'),
(2077, 'robot.bravo@almajalg4s.com', 'Singapore', '2024-02-05 03:27:54.000000', 'APAC'),
(2078, 'robot.bravo@almajalg4s.com', 'Taiwan', '2024-02-05 03:27:54.000000', 'APAC'),
(2079, 'robot.bravo@almajalg4s.com', 'Thailand', '2024-02-05 03:27:54.000000', 'APAC'),
(2080, 'robot.bravo@almajalg4s.com', 'AUS Electronic Monitoring', '2024-02-05 03:27:54.000000', 'Corporate Services'),
(2081, 'robot.bravo@almajalg4s.com', 'Corporate Services / International Business Head Office', '2024-02-05 03:27:54.000000', 'Corporate Services'),
(2082, 'robot.bravo@almajalg4s.com', 'Austria', '2024-02-05 03:27:54.000000', 'Europe'),
(2083, 'robot.bravo@almajalg4s.com', 'Belgium - Secure Solutions', '2024-02-05 03:27:54.000000', 'Europe'),
(2084, 'robot.bravo@almajalg4s.com', 'Czech Republic', '2024-02-05 03:27:54.000000', 'Europe'),
(2085, 'robot.bravo@almajalg4s.com', 'Denmark', '2024-02-05 03:27:54.000000', 'Europe'),
(2086, 'robot.bravo@almajalg4s.com', 'Estonia', '2024-02-05 03:27:54.000000', 'Europe'),
(2087, 'robot.bravo@almajalg4s.com', 'France', '2024-02-05 03:27:54.000000', 'Europe'),
(2088, 'robot.bravo@almajalg4s.com', 'Greece', '2024-02-05 03:27:54.000000', 'Europe'),
(2089, 'robot.bravo@almajalg4s.com', 'Latvia', '2024-02-05 03:27:54.000000', 'Europe'),
(2090, 'robot.bravo@almajalg4s.com', 'Lithuania', '2024-02-05 03:27:54.000000', 'Europe'),
(2091, 'robot.bravo@almajalg4s.com', 'Luxembourg - Secure Solutions', '2024-02-05 03:27:54.000000', 'Europe'),
(2092, 'robot.bravo@almajalg4s.com', 'Malta', '2024-02-05 03:27:54.000000', 'Europe'),
(2093, 'robot.bravo@almajalg4s.com', 'Morocco - Secure Solutions', '2024-02-05 03:27:54.000000', 'Europe'),
(2094, 'robot.bravo@almajalg4s.com', 'Morocco - Cash Solutions', '2024-02-05 03:27:54.000000', 'Europe'),
(2095, 'robot.bravo@almajalg4s.com', 'Netherlands - Secure Solutions', '2024-02-05 03:27:54.000000', 'Europe'),
(2096, 'robot.bravo@almajalg4s.com', 'Regional Office', '2024-02-05 03:27:54.000000', 'AME'),
(2097, 'robot.bravo@almajalg4s.com', 'Serbia', '2024-02-05 03:27:54.000000', 'Europe'),
(2098, 'robot.bravo@almajalg4s.com', 'Slovakia', '2024-02-05 03:27:54.000000', 'Europe'),
(2099, 'robot.bravo@almajalg4s.com', 'Slovenia', '2024-02-05 03:27:54.000000', 'Europe'),
(2100, 'robot.bravo@almajalg4s.com', 'Turkey', '2024-02-05 03:27:54.000000', 'Europe'),
(2101, 'robot.bravo@almajalg4s.com', 'Ukraine', '2024-02-05 03:27:54.000000', 'Europe'),
(2102, 'robot.bravo@almajalg4s.com', 'Argentina', '2024-02-05 03:27:54.000000', 'LATAM'),
(2103, 'robot.bravo@almajalg4s.com', 'Barbados', '2024-02-05 03:27:54.000000', 'LATAM'),
(2104, 'robot.bravo@almajalg4s.com', 'Brazil', '2024-02-05 03:27:54.000000', 'LATAM'),
(2105, 'robot.bravo@almajalg4s.com', 'Chile', '2024-02-05 03:27:54.000000', 'LATAM'),
(2106, 'robot.bravo@almajalg4s.com', 'Colombia', '2024-02-05 03:27:54.000000', 'LATAM'),
(2107, 'robot.bravo@almajalg4s.com', 'Costa Rica', '2024-02-05 03:27:54.000000', 'LATAM'),
(2108, 'robot.bravo@almajalg4s.com', 'Ecuador', '2024-02-05 03:27:54.000000', 'LATAM'),
(2109, 'robot.bravo@almajalg4s.com', 'El Salvador', '2024-02-05 03:27:54.000000', 'LATAM'),
(2110, 'robot.bravo@almajalg4s.com', 'Grenada', '2024-02-05 03:27:54.000000', 'LATAM'),
(2111, 'robot.bravo@almajalg4s.com', 'Guatemala', '2024-02-05 03:27:54.000000', 'LATAM'),
(2112, 'robot.bravo@almajalg4s.com', 'Nicaragua', '2024-02-05 03:27:54.000000', 'LATAM'),
(2113, 'robot.bravo@almajalg4s.com', 'Paraguay', '2024-02-05 03:27:54.000000', 'LATAM'),
(2114, 'robot.bravo@almajalg4s.com', 'Peru', '2024-02-05 03:27:54.000000', 'LATAM'),
(2115, 'robot.bravo@almajalg4s.com', 'REGIONal Office', '2024-02-05 03:27:54.000000', 'AME'),
(2116, 'robot.bravo@almajalg4s.com', 'St. Lucia', '2024-02-05 03:27:54.000000', 'LATAM'),
(2117, 'robot.bravo@almajalg4s.com', 'Trinidad and Tobago', '2024-02-05 03:27:54.000000', 'LATAM'),
(2118, 'robot.bravo@almajalg4s.com', 'Uruguay', '2024-02-05 03:27:54.000000', 'LATAM'),
(2119, 'robot.bravo@almajalg4s.com', 'Allied Universal Electronic Monitoring', '2024-02-05 03:27:54.000000', 'UKI'),
(2120, 'robot.bravo@almajalg4s.com', 'AUS Compliance and Investigations', '2024-02-05 03:27:54.000000', 'UKI'),
(2121, 'robot.bravo@almajalg4s.com', 'C&J - Care and Rehabilitation Services', '2024-02-05 03:27:54.000000', 'UKI'),
(2122, 'robot.bravo@almajalg4s.com', 'C&J - Employment Support Services', '2024-02-05 03:27:54.000000', 'UKI'),
(2123, 'robot.bravo@almajalg4s.com', 'C&J - Health Services', '2024-02-05 03:27:54.000000', 'UKI'),
(2124, 'robot.bravo@almajalg4s.com', 'C&J - Patient Transport Services', '2024-02-05 03:27:54.000000', 'UKI'),
(2125, 'robot.bravo@almajalg4s.com', 'Facilities Management', '2024-02-05 03:27:54.000000', 'UKI'),
(2126, 'robot.bravo@almajalg4s.com', 'Ireland', '2024-02-05 03:27:54.000000', 'UKI'),
(2127, 'robot.bravo@almajalg4s.com', 'Regional Office', '2024-02-05 03:27:54.000000', 'AME'),
(2128, 'robot.bravo@almajalg4s.com', 'Risk', '2024-02-05 03:27:54.000000', 'UKI'),
(2129, 'robot.bravo@almajalg4s.com', 'Secure Solutions UK', '2024-02-05 03:27:54.000000', 'UKI'),
(2130, 'robot.bravo@almajalg4s.com', 'UK - Cash Solutions', '2024-02-05 03:27:54.000000', 'UKI'),
(2131, 'ben.wilshire.external@g4s.com', 'Angola', '2024-03-21 09:08:05.000000', 'AME'),
(2132, 'ben.wilshire.external@g4s.com', 'Bahrain', '2024-03-21 09:08:05.000000', 'AME'),
(2133, 'ben.wilshire.external@g4s.com', 'Botswana', '2024-03-21 09:08:05.000000', 'AME'),
(2134, 'ben.wilshire.external@g4s.com', 'Cameroon', '2024-03-21 09:08:05.000000', 'AME'),
(2135, 'ben.wilshire.external@g4s.com', 'Central African Republic', '2024-03-21 09:08:05.000000', 'AME'),
(2136, 'ben.wilshire.external@g4s.com', 'Democratic Republic of Congo', '2024-03-21 09:08:05.000000', 'AME'),
(2137, 'ben.wilshire.external@g4s.com', 'Deposita International', '2024-03-21 09:08:05.000000', 'AME'),
(2138, 'ben.wilshire.external@g4s.com', 'Egypt', '2024-03-21 09:08:05.000000', 'AME'),
(2139, 'ben.wilshire.external@g4s.com', 'Gabon', '2024-03-21 09:08:05.000000', 'AME'),
(2140, 'ben.wilshire.external@g4s.com', 'Gambia', '2024-03-21 09:08:05.000000', 'AME'),
(2141, 'ben.wilshire.external@g4s.com', 'Ghana', '2024-03-21 09:08:05.000000', 'AME'),
(2142, 'ben.wilshire.external@g4s.com', 'Guinea', '2024-03-21 09:08:05.000000', 'AME'),
(2143, 'ben.wilshire.external@g4s.com', 'Ivory Coast', '2024-03-21 09:08:05.000000', 'AME'),
(2144, 'ben.wilshire.external@g4s.com', 'Jordan', '2024-03-21 09:08:05.000000', 'AME'),
(2145, 'ben.wilshire.external@g4s.com', 'Kenya', '2024-03-21 09:08:05.000000', 'AME'),
(2146, 'ben.wilshire.external@g4s.com', 'Lebanon', '2024-03-21 09:08:05.000000', 'AME'),
(2147, 'ben.wilshire.external@g4s.com', 'Lesotho', '2024-03-21 09:08:05.000000', 'AME'),
(2148, 'ben.wilshire.external@g4s.com', 'Madagascar', '2024-03-21 09:08:05.000000', 'AME'),
(2149, 'ben.wilshire.external@g4s.com', 'Malawi', '2024-03-21 09:08:05.000000', 'AME'),
(2150, 'ben.wilshire.external@g4s.com', 'Mozambique', '2024-03-21 09:08:05.000000', 'AME'),
(2151, 'ben.wilshire.external@g4s.com', 'Namibia', '2024-03-21 09:08:05.000000', 'AME'),
(2152, 'ben.wilshire.external@g4s.com', 'Nigeria', '2024-03-21 09:08:05.000000', 'AME'),
(2153, 'ben.wilshire.external@g4s.com', 'Oman', '2024-03-21 09:08:05.000000', 'AME'),
(2154, 'ben.wilshire.external@g4s.com', 'Qatar', '2024-03-21 09:08:05.000000', 'AME'),
(2155, 'ben.wilshire.external@g4s.com', 'Regional Office', '2024-03-21 09:08:05.000000', 'AME'),
(2156, 'ben.wilshire.external@g4s.com', 'Saudi Arabia', '2024-03-21 09:08:05.000000', 'AME'),
(2157, 'ben.wilshire.external@g4s.com', 'Sierra Leone', '2024-03-21 09:08:05.000000', 'AME'),
(2158, 'ben.wilshire.external@g4s.com', 'South Africa - Cash Solutions', '2024-03-21 09:08:05.000000', 'AME'),
(2159, 'ben.wilshire.external@g4s.com', 'South Africa - Secure Solutions', '2024-03-21 09:08:05.000000', 'AME'),
(2160, 'ben.wilshire.external@g4s.com', 'South Africa - Care and Justice', '2024-03-21 09:08:05.000000', 'AME'),
(2161, 'ben.wilshire.external@g4s.com', 'Tanzania', '2024-03-21 09:08:05.000000', 'AME'),
(2162, 'ben.wilshire.external@g4s.com', 'Uganda', '2024-03-21 09:08:05.000000', 'AME'),
(2163, 'ben.wilshire.external@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-03-21 09:08:05.000000', 'AME'),
(2164, 'ben.wilshire.external@g4s.com', 'United Arab Emirates - Dubai', '2024-03-21 09:08:05.000000', 'AME'),
(2165, 'ben.wilshire.external@g4s.com', 'Zambia', '2024-03-21 09:08:05.000000', 'AME'),
(2166, 'ben.wilshire.external@g4s.com', 'Bangladesh', '2024-03-21 09:08:05.000000', 'APAC'),
(2167, 'ben.wilshire.external@g4s.com', 'C&J - Australia', '2024-03-21 09:08:05.000000', 'APAC'),
(2168, 'ben.wilshire.external@g4s.com', 'China', '2024-03-21 09:08:05.000000', 'APAC'),
(2169, 'ben.wilshire.external@g4s.com', 'Guam', '2024-03-21 09:08:05.000000', 'APAC'),
(2170, 'ben.wilshire.external@g4s.com', 'Hong Kong', '2024-03-21 09:08:05.000000', 'APAC'),
(2171, 'ben.wilshire.external@g4s.com', 'India', '2024-03-21 09:08:05.000000', 'APAC'),
(2172, 'ben.wilshire.external@g4s.com', 'Indonesia', '2024-03-21 09:08:05.000000', 'APAC'),
(2173, 'ben.wilshire.external@g4s.com', 'Japan', '2024-03-21 09:08:05.000000', 'APAC'),
(2174, 'ben.wilshire.external@g4s.com', 'Macau', '2024-03-21 09:08:05.000000', 'APAC'),
(2175, 'ben.wilshire.external@g4s.com', 'Nepal', '2024-03-21 09:08:05.000000', 'APAC'),
(2176, 'ben.wilshire.external@g4s.com', 'Papua New Guinea', '2024-03-21 09:08:05.000000', 'APAC'),
(2177, 'ben.wilshire.external@g4s.com', 'Regional Office', '2024-03-21 09:08:05.000000', 'AME'),
(2178, 'ben.wilshire.external@g4s.com', 'Risk Consulting - Hill and Associates', '2024-03-21 09:08:05.000000', 'APAC'),
(2179, 'ben.wilshire.external@g4s.com', 'Singapore', '2024-03-21 09:08:05.000000', 'APAC'),
(2180, 'ben.wilshire.external@g4s.com', 'Taiwan', '2024-03-21 09:08:05.000000', 'APAC'),
(2181, 'ben.wilshire.external@g4s.com', 'Thailand', '2024-03-21 09:08:05.000000', 'APAC'),
(2182, 'ben.wilshire.external@g4s.com', 'AUS Electronic Monitoring', '2024-03-21 09:08:05.000000', 'Corporate Services'),
(2183, 'ben.wilshire.external@g4s.com', 'Corporate Services / International Business Head Office', '2024-03-21 09:08:05.000000', 'Corporate Services'),
(2184, 'ben.wilshire.external@g4s.com', 'Austria', '2024-03-21 09:08:05.000000', 'Europe'),
(2185, 'ben.wilshire.external@g4s.com', 'Belgium - Secure Solutions', '2024-03-21 09:08:05.000000', 'Europe'),
(2186, 'ben.wilshire.external@g4s.com', 'Czech Republic', '2024-03-21 09:08:05.000000', 'Europe'),
(2187, 'ben.wilshire.external@g4s.com', 'Denmark', '2024-03-21 09:08:05.000000', 'Europe'),
(2188, 'ben.wilshire.external@g4s.com', 'Estonia', '2024-03-21 09:08:05.000000', 'Europe'),
(2189, 'ben.wilshire.external@g4s.com', 'France', '2024-03-21 09:08:05.000000', 'Europe'),
(2190, 'ben.wilshire.external@g4s.com', 'Greece', '2024-03-21 09:08:05.000000', 'Europe'),
(2191, 'ben.wilshire.external@g4s.com', 'Latvia', '2024-03-21 09:08:05.000000', 'Europe'),
(2192, 'ben.wilshire.external@g4s.com', 'Lithuania', '2024-03-21 09:08:05.000000', 'Europe'),
(2193, 'ben.wilshire.external@g4s.com', 'Luxembourg - Secure Solutions', '2024-03-21 09:08:05.000000', 'Europe'),
(2194, 'ben.wilshire.external@g4s.com', 'Malta', '2024-03-21 09:08:05.000000', 'Europe'),
(2195, 'ben.wilshire.external@g4s.com', 'Morocco - Secure Solutions', '2024-03-21 09:08:05.000000', 'Europe'),
(2196, 'ben.wilshire.external@g4s.com', 'Morocco - Cash Solutions', '2024-03-21 09:08:05.000000', 'Europe'),
(2197, 'ben.wilshire.external@g4s.com', 'Netherlands - Secure Solutions', '2024-03-21 09:08:05.000000', 'Europe'),
(2198, 'ben.wilshire.external@g4s.com', 'Regional Office', '2024-03-21 09:08:05.000000', 'AME'),
(2199, 'ben.wilshire.external@g4s.com', 'Serbia', '2024-03-21 09:08:05.000000', 'Europe'),
(2200, 'ben.wilshire.external@g4s.com', 'Slovakia', '2024-03-21 09:08:05.000000', 'Europe'),
(2201, 'ben.wilshire.external@g4s.com', 'Slovenia', '2024-03-21 09:08:05.000000', 'Europe'),
(2202, 'ben.wilshire.external@g4s.com', 'Turkey', '2024-03-21 09:08:05.000000', 'Europe'),
(2203, 'ben.wilshire.external@g4s.com', 'Ukraine', '2024-03-21 09:08:05.000000', 'Europe'),
(2204, 'ben.wilshire.external@g4s.com', 'Argentina', '2024-03-21 09:08:05.000000', 'LATAM'),
(2205, 'ben.wilshire.external@g4s.com', 'Barbados', '2024-03-21 09:08:05.000000', 'LATAM'),
(2206, 'ben.wilshire.external@g4s.com', 'Brazil', '2024-03-21 09:08:05.000000', 'LATAM'),
(2207, 'ben.wilshire.external@g4s.com', 'Chile', '2024-03-21 09:08:05.000000', 'LATAM'),
(2208, 'ben.wilshire.external@g4s.com', 'Colombia', '2024-03-21 09:08:05.000000', 'LATAM'),
(2209, 'ben.wilshire.external@g4s.com', 'Costa Rica', '2024-03-21 09:08:05.000000', 'LATAM'),
(2210, 'ben.wilshire.external@g4s.com', 'Ecuador', '2024-03-21 09:08:05.000000', 'LATAM'),
(2211, 'ben.wilshire.external@g4s.com', 'El Salvador', '2024-03-21 09:08:05.000000', 'LATAM'),
(2212, 'ben.wilshire.external@g4s.com', 'Grenada', '2024-03-21 09:08:05.000000', 'LATAM'),
(2213, 'ben.wilshire.external@g4s.com', 'Guatemala', '2024-03-21 09:08:05.000000', 'LATAM'),
(2214, 'ben.wilshire.external@g4s.com', 'Nicaragua', '2024-03-21 09:08:05.000000', 'LATAM'),
(2215, 'ben.wilshire.external@g4s.com', 'Paraguay', '2024-03-21 09:08:05.000000', 'LATAM'),
(2216, 'ben.wilshire.external@g4s.com', 'Peru', '2024-03-21 09:08:05.000000', 'LATAM'),
(2217, 'ben.wilshire.external@g4s.com', 'REGIONal Office', '2024-03-21 09:08:05.000000', 'AME'),
(2218, 'ben.wilshire.external@g4s.com', 'St. Lucia', '2024-03-21 09:08:05.000000', 'LATAM'),
(2219, 'ben.wilshire.external@g4s.com', 'Trinidad and Tobago', '2024-03-21 09:08:05.000000', 'LATAM'),
(2220, 'ben.wilshire.external@g4s.com', 'Uruguay', '2024-03-21 09:08:05.000000', 'LATAM'),
(2221, 'ben.wilshire.external@g4s.com', 'Allied Universal Electronic Monitoring', '2024-03-21 09:08:05.000000', 'UKI'),
(2222, 'ben.wilshire.external@g4s.com', 'AUS Compliance and Investigations', '2024-03-21 09:08:05.000000', 'UKI'),
(2223, 'ben.wilshire.external@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-03-21 09:08:05.000000', 'UKI'),
(2224, 'ben.wilshire.external@g4s.com', 'C&J - Employment Support Services', '2024-03-21 09:08:05.000000', 'UKI'),
(2225, 'ben.wilshire.external@g4s.com', 'C&J - Health Services', '2024-03-21 09:08:05.000000', 'UKI'),
(2226, 'ben.wilshire.external@g4s.com', 'C&J - Patient Transport Services', '2024-03-21 09:08:05.000000', 'UKI'),
(2227, 'ben.wilshire.external@g4s.com', 'Facilities Management', '2024-03-21 09:08:05.000000', 'UKI'),
(2228, 'ben.wilshire.external@g4s.com', 'Ireland', '2024-03-21 09:08:05.000000', 'UKI'),
(2229, 'ben.wilshire.external@g4s.com', 'Regional Office', '2024-03-21 09:08:05.000000', 'AME'),
(2230, 'ben.wilshire.external@g4s.com', 'Risk', '2024-03-21 09:08:05.000000', 'UKI'),
(2231, 'ben.wilshire.external@g4s.com', 'Secure Solutions UK', '2024-03-21 09:08:05.000000', 'UKI'),
(2232, 'ben.wilshire.external@g4s.com', 'UK - Cash Solutions', '2024-03-21 09:08:05.000000', 'UKI'),
(2304, 'pankaj.singh@ame.g4s.com', 'Bangladesh', '2024-04-26 08:55:27.000000', 'APAC'),
(2305, 'pankaj.singh@ame.g4s.com', 'C&J - Australia', '2024-04-26 08:55:27.000000', 'APAC'),
(2306, 'pankaj.singh@ame.g4s.com', 'China', '2024-04-26 08:55:27.000000', 'APAC'),
(2307, 'pankaj.singh@ame.g4s.com', 'Guam', '2024-04-26 08:55:27.000000', 'APAC'),
(2308, 'pankaj.singh@ame.g4s.com', 'Hong Kong', '2024-04-26 08:55:27.000000', 'APAC'),
(2309, 'pankaj.singh@ame.g4s.com', 'India', '2024-04-26 08:55:27.000000', 'APAC'),
(2310, 'pankaj.singh@ame.g4s.com', 'Indonesia', '2024-04-26 08:55:27.000000', 'APAC'),
(2311, 'pankaj.singh@ame.g4s.com', 'Japan', '2024-04-26 08:55:27.000000', 'APAC'),
(2312, 'pankaj.singh@ame.g4s.com', 'Macau', '2024-04-26 08:55:27.000000', 'APAC'),
(2313, 'pankaj.singh@ame.g4s.com', 'Nepal', '2024-04-26 08:55:27.000000', 'APAC'),
(2314, 'pankaj.singh@ame.g4s.com', 'Papua New Guinea', '2024-04-26 08:55:27.000000', 'APAC'),
(2315, 'pankaj.singh@ame.g4s.com', 'Regional Office', '2024-04-26 08:55:27.000000', 'APAC'),
(2316, 'pankaj.singh@ame.g4s.com', 'Risk Consulting - Hill and Associates', '2024-04-26 08:55:27.000000', 'APAC'),
(2317, 'pankaj.singh@ame.g4s.com', 'Singapore', '2024-04-26 08:55:27.000000', 'APAC'),
(2318, 'pankaj.singh@ame.g4s.com', 'Taiwan', '2024-04-26 08:55:27.000000', 'APAC'),
(2319, 'pankaj.singh@ame.g4s.com', 'Thailand', '2024-04-26 08:55:27.000000', 'APAC'),
(2321, 'trishana.maharaj@ame.g4s.com', 'Angola', '2024-05-14 16:15:24.000000', 'AME'),
(2322, 'trishana.maharaj@ame.g4s.com', ' Bahrain', '2024-05-14 16:15:24.000000', 'AME'),
(2323, 'trishana.maharaj@ame.g4s.com', ' Botswana', '2024-05-14 16:15:24.000000', 'AME'),
(2324, 'trishana.maharaj@ame.g4s.com', ' Cameroon', '2024-05-14 16:15:24.000000', 'AME'),
(2325, 'trishana.maharaj@ame.g4s.com', ' Central African Republic', '2024-05-14 16:15:24.000000', 'AME'),
(2326, 'trishana.maharaj@ame.g4s.com', ' Democratic Republic of Congo', '2024-05-14 16:15:24.000000', 'AME'),
(2327, 'trishana.maharaj@ame.g4s.com', ' Deposita International', '2024-05-14 16:15:24.000000', 'AME'),
(2328, 'trishana.maharaj@ame.g4s.com', ' Egypt', '2024-05-14 16:15:24.000000', 'AME'),
(2329, 'trishana.maharaj@ame.g4s.com', ' Gabon', '2024-05-14 16:15:24.000000', 'AME'),
(2330, 'trishana.maharaj@ame.g4s.com', ' Gambia', '2024-05-14 16:15:24.000000', 'AME'),
(2331, 'trishana.maharaj@ame.g4s.com', ' Ghana', '2024-05-14 16:15:24.000000', 'AME'),
(2332, 'trishana.maharaj@ame.g4s.com', ' Guinea', '2024-05-14 16:15:24.000000', 'AME'),
(2333, 'trishana.maharaj@ame.g4s.com', ' Ivory Coast', '2024-05-14 16:15:24.000000', 'AME'),
(2334, 'trishana.maharaj@ame.g4s.com', ' Jordan', '2024-05-14 16:15:24.000000', 'AME'),
(2335, 'trishana.maharaj@ame.g4s.com', ' Kenya', '2024-05-14 16:15:24.000000', 'AME'),
(2336, 'trishana.maharaj@ame.g4s.com', ' Lebanon', '2024-05-14 16:15:24.000000', 'AME'),
(2337, 'trishana.maharaj@ame.g4s.com', ' Lesotho', '2024-05-14 16:15:24.000000', 'AME'),
(2338, 'trishana.maharaj@ame.g4s.com', ' Madagascar', '2024-05-14 16:15:24.000000', 'AME'),
(2339, 'trishana.maharaj@ame.g4s.com', ' Malawi', '2024-05-14 16:15:24.000000', 'AME'),
(2340, 'trishana.maharaj@ame.g4s.com', ' Mozambique', '2024-05-14 16:15:24.000000', 'AME'),
(2341, 'trishana.maharaj@ame.g4s.com', ' Namibia', '2024-05-14 16:15:24.000000', 'AME'),
(2342, 'trishana.maharaj@ame.g4s.com', ' Nigeria', '2024-05-14 16:15:24.000000', 'AME'),
(2343, 'trishana.maharaj@ame.g4s.com', ' Oman', '2024-05-14 16:15:24.000000', 'AME'),
(2344, 'trishana.maharaj@ame.g4s.com', ' Qatar', '2024-05-14 16:15:24.000000', 'AME'),
(2345, 'trishana.maharaj@ame.g4s.com', ' Regional Office', '2024-05-14 16:15:24.000000', 'AME'),
(2346, 'trishana.maharaj@ame.g4s.com', ' Saudi Arabia', '2024-05-14 16:15:24.000000', 'AME'),
(2347, 'trishana.maharaj@ame.g4s.com', ' Sierra Leone', '2024-05-14 16:15:24.000000', 'AME'),
(2348, 'trishana.maharaj@ame.g4s.com', ' South Africa - Cash Solutions', '2024-05-14 16:15:24.000000', 'AME'),
(2349, 'trishana.maharaj@ame.g4s.com', ' South Africa - Secure Solutions', '2024-05-14 16:15:24.000000', 'AME'),
(2350, 'trishana.maharaj@ame.g4s.com', ' South Africa - Care and Justice ', '2024-05-14 16:15:24.000000', 'AME'),
(2351, 'trishana.maharaj@ame.g4s.com', ' Tanzania', '2024-05-14 16:15:24.000000', 'AME'),
(2352, 'trishana.maharaj@ame.g4s.com', ' Uganda', '2024-05-14 16:15:24.000000', 'AME'),
(2353, 'trishana.maharaj@ame.g4s.com', ' United Arab Emirates - Abu Dhabi', '2024-05-14 16:15:24.000000', 'AME'),
(2354, 'trishana.maharaj@ame.g4s.com', ' United Arab Emirates - Dubai', '2024-05-14 16:15:24.000000', 'AME'),
(2355, 'trishana.maharaj@ame.g4s.com', ' Zambia', '2024-05-14 16:15:24.000000', 'AME'),
(2356, 'emma.webber@ame.g4s.com', 'Angola', '2024-05-14 16:16:22.000000', 'AME'),
(2357, 'emma.webber@ame.g4s.com', 'Bahrain', '2024-05-14 16:16:22.000000', 'AME'),
(2358, 'emma.webber@ame.g4s.com', 'Botswana', '2024-05-14 16:16:22.000000', 'AME'),
(2359, 'emma.webber@ame.g4s.com', 'Cameroon', '2024-05-14 16:16:22.000000', 'AME'),
(2360, 'emma.webber@ame.g4s.com', 'Central African Republic', '2024-05-14 16:16:22.000000', 'AME'),
(2361, 'emma.webber@ame.g4s.com', 'Democratic Republic of Congo', '2024-05-14 16:16:22.000000', 'AME'),
(2362, 'emma.webber@ame.g4s.com', 'Deposita International', '2024-05-14 16:16:22.000000', 'AME'),
(2363, 'emma.webber@ame.g4s.com', 'Egypt', '2024-05-14 16:16:22.000000', 'AME'),
(2364, 'emma.webber@ame.g4s.com', 'Gabon', '2024-05-14 16:16:22.000000', 'AME'),
(2365, 'emma.webber@ame.g4s.com', 'Gambia', '2024-05-14 16:16:22.000000', 'AME'),
(2366, 'emma.webber@ame.g4s.com', 'Ghana', '2024-05-14 16:16:22.000000', 'AME'),
(2367, 'emma.webber@ame.g4s.com', 'Guinea', '2024-05-14 16:16:22.000000', 'AME'),
(2368, 'emma.webber@ame.g4s.com', 'Ivory Coast', '2024-05-14 16:16:22.000000', 'AME'),
(2369, 'emma.webber@ame.g4s.com', 'Jordan', '2024-05-14 16:16:22.000000', 'AME'),
(2370, 'emma.webber@ame.g4s.com', 'Kenya', '2024-05-14 16:16:22.000000', 'AME'),
(2371, 'emma.webber@ame.g4s.com', 'Lebanon', '2024-05-14 16:16:22.000000', 'AME'),
(2372, 'emma.webber@ame.g4s.com', 'Lesotho', '2024-05-14 16:16:22.000000', 'AME'),
(2373, 'emma.webber@ame.g4s.com', 'Madagascar', '2024-05-14 16:16:22.000000', 'AME'),
(2374, 'emma.webber@ame.g4s.com', 'Malawi', '2024-05-14 16:16:22.000000', 'AME'),
(2375, 'emma.webber@ame.g4s.com', 'Mozambique', '2024-05-14 16:16:22.000000', 'AME'),
(2376, 'emma.webber@ame.g4s.com', 'Namibia', '2024-05-14 16:16:22.000000', 'AME'),
(2377, 'emma.webber@ame.g4s.com', 'Nigeria', '2024-05-14 16:16:22.000000', 'AME'),
(2378, 'emma.webber@ame.g4s.com', 'Oman', '2024-05-14 16:16:22.000000', 'AME'),
(2379, 'emma.webber@ame.g4s.com', 'Qatar', '2024-05-14 16:16:22.000000', 'AME'),
(2380, 'emma.webber@ame.g4s.com', 'Regional Office', '2024-05-14 16:16:22.000000', 'AME'),
(2381, 'emma.webber@ame.g4s.com', 'Saudi Arabia', '2024-05-14 16:16:22.000000', 'AME'),
(2382, 'emma.webber@ame.g4s.com', 'Sierra Leone', '2024-05-14 16:16:22.000000', 'AME'),
(2383, 'emma.webber@ame.g4s.com', 'South Africa - Cash Solutions', '2024-05-14 16:16:22.000000', 'AME'),
(2384, 'emma.webber@ame.g4s.com', 'South Africa - Secure Solutions', '2024-05-14 16:16:22.000000', 'AME'),
(2385, 'emma.webber@ame.g4s.com', 'South Africa - Care and Justice ', '2024-05-14 16:16:22.000000', 'AME'),
(2386, 'emma.webber@ame.g4s.com', 'Tanzania', '2024-05-14 16:16:22.000000', 'AME'),
(2387, 'emma.webber@ame.g4s.com', 'Uganda', '2024-05-14 16:16:22.000000', 'AME'),
(2388, 'emma.webber@ame.g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-05-14 16:16:22.000000', 'AME'),
(2389, 'emma.webber@ame.g4s.com', 'United Arab Emirates - Dubai', '2024-05-14 16:16:22.000000', 'AME'),
(2390, 'emma.webber@ame.g4s.com', 'Zambia', '2024-05-14 16:16:22.000000', 'AME'),
(2391, 'sophie.crompton@uk.g4s.com', 'Allied Universal Electronic Monitoring', '2024-05-14 16:17:11.000000', 'UKI'),
(2392, 'sophie.crompton@uk.g4s.com', 'AUS Compliance and Investigations', '2024-05-14 16:17:11.000000', 'UKI'),
(2393, 'sophie.crompton@uk.g4s.com', 'C&J - Care and Rehabilitation Services', '2024-05-14 16:17:11.000000', 'UKI'),
(2394, 'sophie.crompton@uk.g4s.com', 'C&J - Employment Support Services', '2024-05-14 16:17:11.000000', 'UKI'),
(2395, 'sophie.crompton@uk.g4s.com', 'C&J - Health Services', '2024-05-14 16:17:11.000000', 'UKI'),
(2396, 'sophie.crompton@uk.g4s.com', 'C&J - Patient Transport Services', '2024-05-14 16:17:11.000000', 'UKI'),
(2397, 'sophie.crompton@uk.g4s.com', 'Facilities Management', '2024-05-14 16:17:11.000000', 'UKI'),
(2398, 'sophie.crompton@uk.g4s.com', 'Ireland', '2024-05-14 16:17:11.000000', 'UKI'),
(2399, 'sophie.crompton@uk.g4s.com', 'Regional Office', '2024-05-14 16:17:11.000000', 'UKI'),
(2400, 'sophie.crompton@uk.g4s.com', 'Risk', '2024-05-14 16:17:11.000000', 'UKI'),
(2401, 'sophie.crompton@uk.g4s.com', 'Secure Solutions UK', '2024-05-14 16:17:11.000000', 'UKI'),
(2402, 'sophie.crompton@uk.g4s.com', 'UK - Cash Solutions', '2024-05-14 16:17:11.000000', 'UKI'),
(2403, 'jason.dendrijver@eu.g4s.com', 'Allied Universal Electronic Monitoring', '2024-05-14 16:18:05.000000', 'UKI'),
(2404, 'jason.dendrijver@eu.g4s.com', 'AUS Compliance and Investigations', '2024-05-14 16:18:05.000000', 'UKI'),
(2405, 'jason.dendrijver@eu.g4s.com', 'C&J - Care and Rehabilitation Services', '2024-05-14 16:18:05.000000', 'UKI'),
(2406, 'jason.dendrijver@eu.g4s.com', 'C&J - Employment Support Services', '2024-05-14 16:18:05.000000', 'UKI'),
(2407, 'jason.dendrijver@eu.g4s.com', 'C&J - Health Services', '2024-05-14 16:18:05.000000', 'UKI'),
(2408, 'jason.dendrijver@eu.g4s.com', 'C&J - Patient Transport Services', '2024-05-14 16:18:05.000000', 'UKI'),
(2409, 'jason.dendrijver@eu.g4s.com', 'Facilities Management', '2024-05-14 16:18:05.000000', 'UKI'),
(2410, 'jason.dendrijver@eu.g4s.com', 'Ireland', '2024-05-14 16:18:05.000000', 'UKI'),
(2411, 'jason.dendrijver@eu.g4s.com', 'Regional Office', '2024-05-14 16:18:05.000000', 'UKI'),
(2412, 'jason.dendrijver@eu.g4s.com', 'Risk', '2024-05-14 16:18:05.000000', 'UKI'),
(2413, 'jason.dendrijver@eu.g4s.com', 'Secure Solutions UK', '2024-05-14 16:18:05.000000', 'UKI'),
(2414, 'jason.dendrijver@eu.g4s.com', 'UK - Cash Solutions', '2024-05-14 16:18:05.000000', 'UKI'),
(2415, 'caroline.roux@ame.g4s.com', 'Bangladesh', '2024-05-14 16:18:33.000000', 'APAC'),
(2416, 'caroline.roux@ame.g4s.com', ' C&J - Australia', '2024-05-14 16:18:33.000000', 'APAC'),
(2417, 'caroline.roux@ame.g4s.com', ' China', '2024-05-14 16:18:33.000000', 'APAC'),
(2418, 'caroline.roux@ame.g4s.com', ' Guam', '2024-05-14 16:18:33.000000', 'APAC'),
(2419, 'caroline.roux@ame.g4s.com', ' Hong Kong', '2024-05-14 16:18:33.000000', 'APAC'),
(2420, 'caroline.roux@ame.g4s.com', ' India', '2024-05-14 16:18:33.000000', 'APAC'),
(2421, 'caroline.roux@ame.g4s.com', ' Indonesia', '2024-05-14 16:18:33.000000', 'APAC'),
(2422, 'caroline.roux@ame.g4s.com', ' Japan', '2024-05-14 16:18:33.000000', 'APAC'),
(2423, 'caroline.roux@ame.g4s.com', ' Macau', '2024-05-14 16:18:33.000000', 'APAC'),
(2424, 'caroline.roux@ame.g4s.com', ' Nepal', '2024-05-14 16:18:33.000000', 'APAC'),
(2425, 'caroline.roux@ame.g4s.com', ' Papua New Guinea', '2024-05-14 16:18:33.000000', 'APAC'),
(2426, 'caroline.roux@ame.g4s.com', ' Regional Office', '2024-05-14 16:18:33.000000', 'APAC'),
(2427, 'caroline.roux@ame.g4s.com', ' Risk Consulting - Hill and Associates', '2024-05-14 16:18:33.000000', 'APAC'),
(2428, 'caroline.roux@ame.g4s.com', ' Singapore', '2024-05-14 16:18:33.000000', 'APAC'),
(2429, 'caroline.roux@ame.g4s.com', ' Taiwan', '2024-05-14 16:18:33.000000', 'APAC'),
(2430, 'caroline.roux@ame.g4s.com', ' Thailand', '2024-05-14 16:18:33.000000', 'APAC'),
(2431, 'antonia.poon@ame.g4s.com', 'Bangladesh', '2024-05-14 16:19:20.000000', 'APAC'),
(2432, 'antonia.poon@ame.g4s.com', 'C&J - Australia', '2024-05-14 16:19:20.000000', 'APAC'),
(2433, 'antonia.poon@ame.g4s.com', 'China', '2024-05-14 16:19:20.000000', 'APAC'),
(2434, 'antonia.poon@ame.g4s.com', 'Guam', '2024-05-14 16:19:20.000000', 'APAC'),
(2435, 'antonia.poon@ame.g4s.com', 'Hong Kong', '2024-05-14 16:19:20.000000', 'APAC'),
(2436, 'antonia.poon@ame.g4s.com', 'India', '2024-05-14 16:19:20.000000', 'APAC'),
(2437, 'antonia.poon@ame.g4s.com', 'Indonesia', '2024-05-14 16:19:20.000000', 'APAC'),
(2438, 'antonia.poon@ame.g4s.com', 'Japan', '2024-05-14 16:19:20.000000', 'APAC'),
(2439, 'antonia.poon@ame.g4s.com', 'Macau', '2024-05-14 16:19:20.000000', 'APAC'),
(2440, 'antonia.poon@ame.g4s.com', 'Nepal', '2024-05-14 16:19:20.000000', 'APAC'),
(2441, 'antonia.poon@ame.g4s.com', 'Papua New Guinea', '2024-05-14 16:19:20.000000', 'APAC'),
(2442, 'antonia.poon@ame.g4s.com', 'Regional Office', '2024-05-14 16:19:20.000000', 'APAC'),
(2443, 'antonia.poon@ame.g4s.com', 'Risk Consulting - Hill and Associates', '2024-05-14 16:19:20.000000', 'APAC'),
(2444, 'antonia.poon@ame.g4s.com', 'Singapore', '2024-05-14 16:19:20.000000', 'APAC'),
(2445, 'antonia.poon@ame.g4s.com', 'Taiwan', '2024-05-14 16:19:20.000000', 'APAC'),
(2446, 'antonia.poon@ame.g4s.com', 'Thailand', '2024-05-14 16:19:20.000000', 'APAC'),
(2447, 'paula.rodriguez@latam.g4s.com', 'Argentina', '2024-05-14 16:20:05.000000', 'LATAM'),
(2448, 'paula.rodriguez@latam.g4s.com', ' Barbados', '2024-05-14 16:20:05.000000', 'LATAM'),
(2449, 'paula.rodriguez@latam.g4s.com', ' Brazil', '2024-05-14 16:20:05.000000', 'LATAM'),
(2450, 'paula.rodriguez@latam.g4s.com', ' Chile', '2024-05-14 16:20:05.000000', 'LATAM'),
(2451, 'paula.rodriguez@latam.g4s.com', ' Colombia', '2024-05-14 16:20:05.000000', 'LATAM'),
(2452, 'paula.rodriguez@latam.g4s.com', ' Costa Rica', '2024-05-14 16:20:05.000000', 'LATAM'),
(2453, 'paula.rodriguez@latam.g4s.com', ' Ecuador', '2024-05-14 16:20:05.000000', 'LATAM'),
(2454, 'paula.rodriguez@latam.g4s.com', ' El Salvador', '2024-05-14 16:20:05.000000', 'LATAM'),
(2455, 'paula.rodriguez@latam.g4s.com', ' Grenada', '2024-05-14 16:20:05.000000', 'LATAM'),
(2456, 'paula.rodriguez@latam.g4s.com', ' Guatemala', '2024-05-14 16:20:05.000000', 'LATAM'),
(2457, 'paula.rodriguez@latam.g4s.com', ' Nicaragua', '2024-05-14 16:20:05.000000', 'LATAM'),
(2458, 'paula.rodriguez@latam.g4s.com', ' Paraguay', '2024-05-14 16:20:05.000000', 'LATAM'),
(2459, 'paula.rodriguez@latam.g4s.com', ' Peru', '2024-05-14 16:20:05.000000', 'LATAM'),
(2460, 'paula.rodriguez@latam.g4s.com', ' REGIONal Office', '2024-05-14 16:20:05.000000', 'LATAM'),
(2461, 'paula.rodriguez@latam.g4s.com', ' St. Lucia', '2024-05-14 16:20:05.000000', 'LATAM'),
(2462, 'paula.rodriguez@latam.g4s.com', ' Trinidad and Tobago', '2024-05-14 16:20:05.000000', 'LATAM'),
(2463, 'paula.rodriguez@latam.g4s.com', ' Uruguay', '2024-05-14 16:20:05.000000', 'LATAM'),
(2464, 'michael.rodriguez@latam.g4s.com', 'Argentina', '2024-05-14 16:21:31.000000', 'LATAM'),
(2465, 'michael.rodriguez@latam.g4s.com', 'Barbados', '2024-05-14 16:21:31.000000', 'LATAM'),
(2466, 'michael.rodriguez@latam.g4s.com', 'Brazil', '2024-05-14 16:21:31.000000', 'LATAM'),
(2467, 'michael.rodriguez@latam.g4s.com', 'Chile', '2024-05-14 16:21:31.000000', 'LATAM'),
(2468, 'michael.rodriguez@latam.g4s.com', 'Colombia', '2024-05-14 16:21:31.000000', 'LATAM'),
(2469, 'michael.rodriguez@latam.g4s.com', 'Costa Rica', '2024-05-14 16:21:31.000000', 'LATAM'),
(2470, 'michael.rodriguez@latam.g4s.com', 'Ecuador', '2024-05-14 16:21:31.000000', 'LATAM'),
(2471, 'michael.rodriguez@latam.g4s.com', 'El Salvador', '2024-05-14 16:21:31.000000', 'LATAM'),
(2472, 'michael.rodriguez@latam.g4s.com', 'Grenada', '2024-05-14 16:21:31.000000', 'LATAM'),
(2473, 'michael.rodriguez@latam.g4s.com', 'Guatemala', '2024-05-14 16:21:31.000000', 'LATAM'),
(2474, 'michael.rodriguez@latam.g4s.com', 'Nicaragua', '2024-05-14 16:21:31.000000', 'LATAM'),
(2475, 'michael.rodriguez@latam.g4s.com', 'Paraguay', '2024-05-14 16:21:31.000000', 'LATAM'),
(2476, 'michael.rodriguez@latam.g4s.com', 'Peru', '2024-05-14 16:21:31.000000', 'LATAM'),
(2477, 'michael.rodriguez@latam.g4s.com', 'REGIONal Office', '2024-05-14 16:21:31.000000', 'LATAM'),
(2478, 'michael.rodriguez@latam.g4s.com', 'St. Lucia', '2024-05-14 16:21:31.000000', 'LATAM'),
(2479, 'michael.rodriguez@latam.g4s.com', 'Trinidad and Tobago', '2024-05-14 16:21:31.000000', 'LATAM'),
(2480, 'michael.rodriguez@latam.g4s.com', 'Uruguay', '2024-05-14 16:21:31.000000', 'LATAM'),
(2481, 'lidy.vanhout@nl.g4s.com', 'Austria', '2024-05-14 16:22:08.000000', 'Europe'),
(2482, 'lidy.vanhout@nl.g4s.com', ' Belgium - Secure Solutions', '2024-05-14 16:22:08.000000', 'Europe'),
(2483, 'lidy.vanhout@nl.g4s.com', ' Czech Republic', '2024-05-14 16:22:08.000000', 'Europe'),
(2484, 'lidy.vanhout@nl.g4s.com', ' Denmark', '2024-05-14 16:22:08.000000', 'Europe'),
(2485, 'lidy.vanhout@nl.g4s.com', ' Estonia', '2024-05-14 16:22:08.000000', 'Europe'),
(2486, 'lidy.vanhout@nl.g4s.com', ' France', '2024-05-14 16:22:08.000000', 'Europe'),
(2487, 'lidy.vanhout@nl.g4s.com', ' Greece', '2024-05-14 16:22:08.000000', 'Europe'),
(2488, 'lidy.vanhout@nl.g4s.com', ' Latvia', '2024-05-14 16:22:08.000000', 'Europe'),
(2489, 'lidy.vanhout@nl.g4s.com', ' Lithuania', '2024-05-14 16:22:08.000000', 'Europe'),
(2490, 'lidy.vanhout@nl.g4s.com', ' Luxembourg - Secure Solutions', '2024-05-14 16:22:08.000000', 'Europe'),
(2491, 'lidy.vanhout@nl.g4s.com', ' Malta', '2024-05-14 16:22:08.000000', 'Europe'),
(2492, 'lidy.vanhout@nl.g4s.com', ' Morocco - Secure Solutions', '2024-05-14 16:22:08.000000', 'Europe'),
(2493, 'lidy.vanhout@nl.g4s.com', ' Morocco - Cash Solutions', '2024-05-14 16:22:08.000000', 'Europe'),
(2494, 'lidy.vanhout@nl.g4s.com', ' Netherlands - Secure Solutions', '2024-05-14 16:22:08.000000', 'Europe'),
(2495, 'lidy.vanhout@nl.g4s.com', ' Regional Office', '2024-05-14 16:22:08.000000', 'Europe'),
(2496, 'lidy.vanhout@nl.g4s.com', ' Serbia', '2024-05-14 16:22:08.000000', 'Europe'),
(2497, 'lidy.vanhout@nl.g4s.com', ' Slovakia', '2024-05-14 16:22:08.000000', 'Europe'),
(2498, 'lidy.vanhout@nl.g4s.com', ' Slovenia', '2024-05-14 16:22:08.000000', 'Europe'),
(2499, 'lidy.vanhout@nl.g4s.com', ' Turkey', '2024-05-14 16:22:08.000000', 'Europe'),
(2500, 'lidy.vanhout@nl.g4s.com', ' Ukraine', '2024-05-14 16:22:08.000000', 'Europe'),
(2501, 'zahra.anjum@at.g4s.com', 'Austria', '2024-05-14 16:22:44.000000', 'Europe'),
(2502, 'zahra.anjum@at.g4s.com', 'Belgium - Secure Solutions', '2024-05-14 16:22:44.000000', 'Europe'),
(2503, 'zahra.anjum@at.g4s.com', 'Czech Republic', '2024-05-14 16:22:44.000000', 'Europe'),
(2504, 'zahra.anjum@at.g4s.com', 'Denmark', '2024-05-14 16:22:44.000000', 'Europe'),
(2505, 'zahra.anjum@at.g4s.com', 'Estonia', '2024-05-14 16:22:44.000000', 'Europe'),
(2506, 'zahra.anjum@at.g4s.com', 'France', '2024-05-14 16:22:44.000000', 'Europe'),
(2507, 'zahra.anjum@at.g4s.com', 'Greece', '2024-05-14 16:22:44.000000', 'Europe'),
(2508, 'zahra.anjum@at.g4s.com', 'Latvia', '2024-05-14 16:22:44.000000', 'Europe'),
(2509, 'zahra.anjum@at.g4s.com', 'Lithuania', '2024-05-14 16:22:44.000000', 'Europe'),
(2510, 'zahra.anjum@at.g4s.com', 'Luxembourg - Secure Solutions', '2024-05-14 16:22:44.000000', 'Europe'),
(2511, 'zahra.anjum@at.g4s.com', 'Malta', '2024-05-14 16:22:44.000000', 'Europe'),
(2512, 'zahra.anjum@at.g4s.com', 'Morocco - Secure Solutions', '2024-05-14 16:22:44.000000', 'Europe'),
(2513, 'zahra.anjum@at.g4s.com', 'Morocco - Cash Solutions', '2024-05-14 16:22:44.000000', 'Europe'),
(2514, 'zahra.anjum@at.g4s.com', 'Netherlands - Secure Solutions', '2024-05-14 16:22:44.000000', 'Europe'),
(2515, 'zahra.anjum@at.g4s.com', 'Regional Office', '2024-05-14 16:22:44.000000', 'Europe'),
(2516, 'zahra.anjum@at.g4s.com', 'Serbia', '2024-05-14 16:22:44.000000', 'Europe'),
(2517, 'zahra.anjum@at.g4s.com', 'Slovakia', '2024-05-14 16:22:44.000000', 'Europe'),
(2518, 'zahra.anjum@at.g4s.com', 'Slovenia', '2024-05-14 16:22:44.000000', 'Europe'),
(2519, 'zahra.anjum@at.g4s.com', 'Turkey', '2024-05-14 16:22:44.000000', 'Europe'),
(2520, 'zahra.anjum@at.g4s.com', 'Ukraine', '2024-05-14 16:22:44.000000', 'Europe'),
(2521, 'catherine.hooper@uk.g4s.com', 'Angola', '2024-05-14 17:33:15.000000', 'AME'),
(2522, 'catherine.hooper@uk.g4s.com', ' Bahrain', '2024-05-14 17:33:15.000000', 'All'),
(2523, 'catherine.hooper@uk.g4s.com', ' Botswana', '2024-05-14 17:33:15.000000', 'All'),
(2524, 'catherine.hooper@uk.g4s.com', ' Cameroon', '2024-05-14 17:33:15.000000', 'All'),
(2525, 'catherine.hooper@uk.g4s.com', ' Central African Republic', '2024-05-14 17:33:15.000000', 'All'),
(2526, 'catherine.hooper@uk.g4s.com', ' Democratic Republic of Congo', '2024-05-14 17:33:15.000000', 'All'),
(2527, 'catherine.hooper@uk.g4s.com', ' Deposita International', '2024-05-14 17:33:15.000000', 'All'),
(2528, 'catherine.hooper@uk.g4s.com', ' Egypt', '2024-05-14 17:33:15.000000', 'All'),
(2529, 'catherine.hooper@uk.g4s.com', ' Gabon', '2024-05-14 17:33:15.000000', 'All'),
(2530, 'catherine.hooper@uk.g4s.com', ' Gambia', '2024-05-14 17:33:15.000000', 'All'),
(2531, 'catherine.hooper@uk.g4s.com', ' Ghana', '2024-05-14 17:33:15.000000', 'All'),
(2532, 'catherine.hooper@uk.g4s.com', ' Guinea', '2024-05-14 17:33:15.000000', 'All'),
(2533, 'catherine.hooper@uk.g4s.com', ' Ivory Coast', '2024-05-14 17:33:15.000000', 'All'),
(2534, 'catherine.hooper@uk.g4s.com', ' Jordan', '2024-05-14 17:33:15.000000', 'All'),
(2535, 'catherine.hooper@uk.g4s.com', ' Kenya', '2024-05-14 17:33:15.000000', 'All'),
(2536, 'catherine.hooper@uk.g4s.com', ' Lebanon', '2024-05-14 17:33:15.000000', 'All'),
(2537, 'catherine.hooper@uk.g4s.com', ' Lesotho', '2024-05-14 17:33:15.000000', 'All'),
(2538, 'catherine.hooper@uk.g4s.com', ' Madagascar', '2024-05-14 17:33:15.000000', 'All'),
(2539, 'catherine.hooper@uk.g4s.com', ' Malawi', '2024-05-14 17:33:15.000000', 'All'),
(2540, 'catherine.hooper@uk.g4s.com', ' Mozambique', '2024-05-14 17:33:15.000000', 'All'),
(2541, 'catherine.hooper@uk.g4s.com', ' Namibia', '2024-05-14 17:33:15.000000', 'All'),
(2542, 'catherine.hooper@uk.g4s.com', ' Nigeria', '2024-05-14 17:33:15.000000', 'All'),
(2543, 'catherine.hooper@uk.g4s.com', ' Oman', '2024-05-14 17:33:15.000000', 'All'),
(2544, 'catherine.hooper@uk.g4s.com', ' Qatar', '2024-05-14 17:33:15.000000', 'All'),
(2545, 'catherine.hooper@uk.g4s.com', ' Regional Office', '2024-05-14 17:33:15.000000', 'All'),
(2546, 'catherine.hooper@uk.g4s.com', ' Saudi Arabia', '2024-05-14 17:33:15.000000', 'All'),
(2547, 'catherine.hooper@uk.g4s.com', ' Sierra Leone', '2024-05-14 17:33:15.000000', 'All'),
(2548, 'catherine.hooper@uk.g4s.com', ' South Africa - Cash Solutions', '2024-05-14 17:33:15.000000', 'All'),
(2549, 'catherine.hooper@uk.g4s.com', ' South Africa - Secure Solutions', '2024-05-14 17:33:15.000000', 'All'),
(2550, 'catherine.hooper@uk.g4s.com', ' South Africa - Care and Justice ', '2024-05-14 17:33:15.000000', 'All'),
(2551, 'catherine.hooper@uk.g4s.com', ' Tanzania', '2024-05-14 17:33:15.000000', 'All'),
(2552, 'catherine.hooper@uk.g4s.com', ' Uganda', '2024-05-14 17:33:15.000000', 'All'),
(2553, 'catherine.hooper@uk.g4s.com', ' United Arab Emirates - Abu Dhabi', '2024-05-14 17:33:15.000000', 'All'),
(2554, 'catherine.hooper@uk.g4s.com', ' United Arab Emirates - Dubai', '2024-05-14 17:33:15.000000', 'All'),
(2555, 'catherine.hooper@uk.g4s.com', ' Zambia', '2024-05-14 17:33:15.000000', 'All'),
(2556, 'catherine.hooper@uk.g4s.com', ' Bangladesh', '2024-05-14 17:33:15.000000', 'All'),
(2557, 'catherine.hooper@uk.g4s.com', ' C&J - Australia', '2024-05-14 17:33:15.000000', 'All'),
(2558, 'catherine.hooper@uk.g4s.com', ' China', '2024-05-14 17:33:15.000000', 'All'),
(2559, 'catherine.hooper@uk.g4s.com', ' Guam', '2024-05-14 17:33:15.000000', 'All'),
(2560, 'catherine.hooper@uk.g4s.com', ' Hong Kong', '2024-05-14 17:33:15.000000', 'All'),
(2561, 'catherine.hooper@uk.g4s.com', ' India', '2024-05-14 17:33:15.000000', 'All'),
(2562, 'catherine.hooper@uk.g4s.com', ' Indonesia', '2024-05-14 17:33:15.000000', 'All'),
(2563, 'catherine.hooper@uk.g4s.com', ' Japan', '2024-05-14 17:33:15.000000', 'All'),
(2564, 'catherine.hooper@uk.g4s.com', ' Macau', '2024-05-14 17:33:15.000000', 'All'),
(2565, 'catherine.hooper@uk.g4s.com', ' Nepal', '2024-05-14 17:33:15.000000', 'All'),
(2566, 'catherine.hooper@uk.g4s.com', ' Papua New Guinea', '2024-05-14 17:33:15.000000', 'All'),
(2567, 'catherine.hooper@uk.g4s.com', ' Risk Consulting - Hill and Associates', '2024-05-14 17:33:15.000000', 'All'),
(2568, 'catherine.hooper@uk.g4s.com', ' Singapore', '2024-05-14 17:33:15.000000', 'All'),
(2569, 'catherine.hooper@uk.g4s.com', ' Taiwan', '2024-05-14 17:33:15.000000', 'All'),
(2570, 'catherine.hooper@uk.g4s.com', ' Thailand', '2024-05-14 17:33:15.000000', 'All'),
(2571, 'catherine.hooper@uk.g4s.com', ' AUS Electronic Monitoring', '2024-05-14 17:33:15.000000', 'All'),
(2572, 'catherine.hooper@uk.g4s.com', ' Corporate Services / International Business Head Office', '2024-05-14 17:33:15.000000', 'All'),
(2573, 'catherine.hooper@uk.g4s.com', ' Austria', '2024-05-14 17:33:15.000000', 'All'),
(2574, 'catherine.hooper@uk.g4s.com', ' Belgium - Secure Solutions', '2024-05-14 17:33:15.000000', 'All'),
(2575, 'catherine.hooper@uk.g4s.com', ' Czech Republic', '2024-05-14 17:33:15.000000', 'All'),
(2576, 'catherine.hooper@uk.g4s.com', ' Denmark', '2024-05-14 17:33:15.000000', 'All'),
(2577, 'catherine.hooper@uk.g4s.com', ' Estonia', '2024-05-14 17:33:15.000000', 'All'),
(2578, 'catherine.hooper@uk.g4s.com', ' France', '2024-05-14 17:33:15.000000', 'All'),
(2579, 'catherine.hooper@uk.g4s.com', ' Greece', '2024-05-14 17:33:15.000000', 'All'),
(2580, 'catherine.hooper@uk.g4s.com', ' Latvia', '2024-05-14 17:33:15.000000', 'All'),
(2581, 'catherine.hooper@uk.g4s.com', ' Lithuania', '2024-05-14 17:33:15.000000', 'All'),
(2582, 'catherine.hooper@uk.g4s.com', ' Luxembourg - Secure Solutions', '2024-05-14 17:33:15.000000', 'All'),
(2583, 'catherine.hooper@uk.g4s.com', ' Malta', '2024-05-14 17:33:15.000000', 'All'),
(2584, 'catherine.hooper@uk.g4s.com', ' Morocco - Secure Solutions', '2024-05-14 17:33:15.000000', 'All'),
(2585, 'catherine.hooper@uk.g4s.com', ' Morocco - Cash Solutions', '2024-05-14 17:33:15.000000', 'All'),
(2586, 'catherine.hooper@uk.g4s.com', ' Netherlands - Secure Solutions', '2024-05-14 17:33:15.000000', 'All'),
(2587, 'catherine.hooper@uk.g4s.com', ' Serbia', '2024-05-14 17:33:15.000000', 'All'),
(2588, 'catherine.hooper@uk.g4s.com', ' Slovakia', '2024-05-14 17:33:15.000000', 'All'),
(2589, 'catherine.hooper@uk.g4s.com', ' Slovenia', '2024-05-14 17:33:15.000000', 'All'),
(2590, 'catherine.hooper@uk.g4s.com', ' Turkey', '2024-05-14 17:33:15.000000', 'All'),
(2591, 'catherine.hooper@uk.g4s.com', ' ', '2024-05-14 17:33:15.000000', 'All'),
(2592, 'amit.varma@g4s.com', 'Angola', '2024-05-18 08:37:19.000000', 'AME'),
(2593, 'amit.varma@g4s.com', 'Bahrain', '2024-05-18 08:37:19.000000', 'AME'),
(2594, 'amit.varma@g4s.com', 'Botswana', '2024-05-18 08:37:19.000000', 'AME'),
(2595, 'amit.varma@g4s.com', 'Cameroon', '2024-05-18 08:37:19.000000', 'AME'),
(2596, 'amit.varma@g4s.com', 'Central African Republic', '2024-05-18 08:37:19.000000', 'AME'),
(2597, 'amit.varma@g4s.com', 'Democratic Republic of Congo', '2024-05-18 08:37:19.000000', 'AME'),
(2598, 'amit.varma@g4s.com', 'Deposita International', '2024-05-18 08:37:19.000000', 'AME'),
(2599, 'amit.varma@g4s.com', 'Egypt', '2024-05-18 08:37:19.000000', 'AME'),
(2600, 'amit.varma@g4s.com', 'Gabon', '2024-05-18 08:37:19.000000', 'AME'),
(2601, 'amit.varma@g4s.com', 'Gambia', '2024-05-18 08:37:19.000000', 'AME'),
(2602, 'amit.varma@g4s.com', 'Ghana', '2024-05-18 08:37:19.000000', 'AME'),
(2603, 'amit.varma@g4s.com', 'Guinea', '2024-05-18 08:37:19.000000', 'AME'),
(2604, 'amit.varma@g4s.com', 'Ivory Coast', '2024-05-18 08:37:19.000000', 'AME'),
(2605, 'amit.varma@g4s.com', 'Jordan', '2024-05-18 08:37:19.000000', 'AME'),
(2606, 'amit.varma@g4s.com', 'Kenya', '2024-05-18 08:37:19.000000', 'AME'),
(2607, 'amit.varma@g4s.com', 'Lebanon', '2024-05-18 08:37:19.000000', 'AME'),
(2608, 'amit.varma@g4s.com', 'Lesotho', '2024-05-18 08:37:19.000000', 'AME'),
(2609, 'amit.varma@g4s.com', 'Madagascar', '2024-05-18 08:37:19.000000', 'AME'),
(2610, 'amit.varma@g4s.com', 'Malawi', '2024-05-18 08:37:19.000000', 'AME'),
(2611, 'amit.varma@g4s.com', 'Mozambique', '2024-05-18 08:37:19.000000', 'AME'),
(2612, 'amit.varma@g4s.com', 'Namibia', '2024-05-18 08:37:19.000000', 'AME'),
(2613, 'amit.varma@g4s.com', 'Nigeria', '2024-05-18 08:37:19.000000', 'AME'),
(2614, 'amit.varma@g4s.com', 'Oman', '2024-05-18 08:37:19.000000', 'AME'),
(2615, 'amit.varma@g4s.com', 'Qatar', '2024-05-18 08:37:19.000000', 'AME'),
(2616, 'amit.varma@g4s.com', 'Regional Office', '2024-05-18 08:37:19.000000', 'AME'),
(2617, 'amit.varma@g4s.com', 'Saudi Arabia', '2024-05-18 08:37:19.000000', 'AME'),
(2618, 'amit.varma@g4s.com', 'Sierra Leone', '2024-05-18 08:37:19.000000', 'AME'),
(2619, 'amit.varma@g4s.com', 'South Africa - Cash Solutions', '2024-05-18 08:37:19.000000', 'AME'),
(2620, 'amit.varma@g4s.com', 'South Africa - Secure Solutions', '2024-05-18 08:37:19.000000', 'AME'),
(2621, 'amit.varma@g4s.com', 'South Africa - Care and Justice ', '2024-05-18 08:37:19.000000', 'AME'),
(2622, 'amit.varma@g4s.com', 'Tanzania', '2024-05-18 08:37:19.000000', 'AME'),
(2623, 'amit.varma@g4s.com', 'Uganda', '2024-05-18 08:37:19.000000', 'AME'),
(2624, 'amit.varma@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-05-18 08:37:19.000000', 'AME'),
(2625, 'amit.varma@g4s.com', 'United Arab Emirates - Dubai', '2024-05-18 08:37:19.000000', 'AME'),
(2626, 'amit.varma@g4s.com', 'Zambia', '2024-05-18 08:37:19.000000', 'AME'),
(2627, 'amit.varma@g4s.com', 'Bangladesh', '2024-05-18 08:37:19.000000', 'APAC'),
(2628, 'amit.varma@g4s.com', 'C&J - Australia', '2024-05-18 08:37:19.000000', 'APAC');
INSERT INTO `users_assigned_country` (`id`, `user_email`, `user_country`, `added_on`, `user_region`) VALUES
(2629, 'amit.varma@g4s.com', 'China', '2024-05-18 08:37:19.000000', 'APAC'),
(2630, 'amit.varma@g4s.com', 'Guam', '2024-05-18 08:37:19.000000', 'APAC'),
(2631, 'amit.varma@g4s.com', 'Hong Kong', '2024-05-18 08:37:19.000000', 'APAC'),
(2632, 'amit.varma@g4s.com', 'India', '2024-05-18 08:37:19.000000', 'APAC'),
(2633, 'amit.varma@g4s.com', 'Indonesia', '2024-05-18 08:37:19.000000', 'APAC'),
(2634, 'amit.varma@g4s.com', 'Japan', '2024-05-18 08:37:19.000000', 'APAC'),
(2635, 'amit.varma@g4s.com', 'Macau', '2024-05-18 08:37:19.000000', 'APAC'),
(2636, 'amit.varma@g4s.com', 'Nepal', '2024-05-18 08:37:19.000000', 'APAC'),
(2637, 'amit.varma@g4s.com', 'Papua New Guinea', '2024-05-18 08:37:19.000000', 'APAC'),
(2638, 'amit.varma@g4s.com', 'Risk Consulting - Hill and Associates', '2024-05-18 08:37:19.000000', 'APAC'),
(2639, 'amit.varma@g4s.com', 'Singapore', '2024-05-18 08:37:19.000000', 'APAC'),
(2640, 'amit.varma@g4s.com', 'Taiwan', '2024-05-18 08:37:19.000000', 'APAC'),
(2641, 'amit.varma@g4s.com', 'Thailand', '2024-05-18 08:37:19.000000', 'APAC'),
(2642, 'amit.varma@g4s.com', 'AUS Electronic Monitoring', '2024-05-18 08:37:19.000000', 'Corporate Services'),
(2643, 'amit.varma@g4s.com', 'Corporate Services / International Business Head Office', '2024-05-18 08:37:19.000000', 'Corporate Services'),
(2644, 'amit.varma@g4s.com', 'Austria', '2024-05-18 08:37:19.000000', 'Europe'),
(2645, 'amit.varma@g4s.com', 'Belgium - Secure Solutions', '2024-05-18 08:37:19.000000', 'Europe'),
(2646, 'amit.varma@g4s.com', 'Czech Republic', '2024-05-18 08:37:19.000000', 'Europe'),
(2647, 'amit.varma@g4s.com', 'Denmark', '2024-05-18 08:37:19.000000', 'Europe'),
(2648, 'amit.varma@g4s.com', 'Estonia', '2024-05-18 08:37:19.000000', 'Europe'),
(2649, 'amit.varma@g4s.com', 'France', '2024-05-18 08:37:19.000000', 'Europe'),
(2650, 'amit.varma@g4s.com', 'Greece', '2024-05-18 08:37:19.000000', 'Europe'),
(2651, 'amit.varma@g4s.com', 'Latvia', '2024-05-18 08:37:19.000000', 'Europe'),
(2652, 'amit.varma@g4s.com', 'Lithuania', '2024-05-18 08:37:19.000000', 'Europe'),
(2653, 'amit.varma@g4s.com', 'Luxembourg - Secure Solutions', '2024-05-18 08:37:19.000000', 'Europe'),
(2654, 'amit.varma@g4s.com', 'Malta', '2024-05-18 08:37:19.000000', 'Europe'),
(2655, 'amit.varma@g4s.com', 'Morocco - Secure Solutions', '2024-05-18 08:37:19.000000', 'Europe'),
(2656, 'amit.varma@g4s.com', 'Morocco - Cash Solutions', '2024-05-18 08:37:19.000000', 'Europe'),
(2657, 'amit.varma@g4s.com', 'Netherlands - Secure Solutions', '2024-05-18 08:37:19.000000', 'Europe'),
(2658, 'amit.varma@g4s.com', 'Serbia', '2024-05-18 08:37:19.000000', 'Europe'),
(2659, 'amit.varma@g4s.com', 'Slovakia', '2024-05-18 08:37:19.000000', 'Europe'),
(2660, 'amit.varma@g4s.com', 'Slovenia', '2024-05-18 08:37:19.000000', 'Europe'),
(2661, 'amit.varma@g4s.com', 'Turkey', '2024-05-18 08:37:19.000000', 'Europe'),
(2662, 'amit.varma@g4s.com', 'Ukraine', '2024-05-18 08:37:19.000000', 'Europe'),
(2663, 'amit.varma@g4s.com', 'Argentina', '2024-05-18 08:37:19.000000', 'LATAM'),
(2664, 'amit.varma@g4s.com', 'Barbados', '2024-05-18 08:37:19.000000', 'LATAM'),
(2665, 'amit.varma@g4s.com', 'Brazil', '2024-05-18 08:37:19.000000', 'LATAM'),
(2666, 'amit.varma@g4s.com', 'Chile', '2024-05-18 08:37:19.000000', 'LATAM'),
(2667, 'amit.varma@g4s.com', 'Colombia', '2024-05-18 08:37:19.000000', 'LATAM'),
(2668, 'amit.varma@g4s.com', 'Costa Rica', '2024-05-18 08:37:19.000000', 'LATAM'),
(2669, 'amit.varma@g4s.com', 'Ecuador', '2024-05-18 08:37:19.000000', 'LATAM'),
(2670, 'amit.varma@g4s.com', 'El Salvador', '2024-05-18 08:37:19.000000', 'LATAM'),
(2671, 'amit.varma@g4s.com', 'Grenada', '2024-05-18 08:37:19.000000', 'LATAM'),
(2672, 'amit.varma@g4s.com', 'Guatemala', '2024-05-18 08:37:19.000000', 'LATAM'),
(2673, 'amit.varma@g4s.com', 'Nicaragua', '2024-05-18 08:37:19.000000', 'LATAM'),
(2674, 'amit.varma@g4s.com', 'Paraguay', '2024-05-18 08:37:19.000000', 'LATAM'),
(2675, 'amit.varma@g4s.com', 'Peru', '2024-05-18 08:37:19.000000', 'LATAM'),
(2676, 'amit.varma@g4s.com', 'St. Lucia', '2024-05-18 08:37:19.000000', 'LATAM'),
(2677, 'amit.varma@g4s.com', 'Trinidad and Tobago', '2024-05-18 08:37:19.000000', 'LATAM'),
(2678, 'amit.varma@g4s.com', 'Uruguay', '2024-05-18 08:37:19.000000', 'LATAM'),
(2679, 'amit.varma@g4s.com', 'Allied Universal Electronic Monitoring', '2024-05-18 08:37:19.000000', 'UKI'),
(2680, 'amit.varma@g4s.com', 'AUS Compliance and Investigations', '2024-05-18 08:37:19.000000', 'UKI'),
(2681, 'amit.varma@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-05-18 08:37:19.000000', 'UKI'),
(2682, 'amit.varma@g4s.com', 'C&J - Employment Support Services', '2024-05-18 08:37:19.000000', 'UKI'),
(2683, 'amit.varma@g4s.com', 'C&J - Health Services', '2024-05-18 08:37:19.000000', 'UKI'),
(2684, 'amit.varma@g4s.com', 'C&J - Patient Transport Services', '2024-05-18 08:37:19.000000', 'UKI'),
(2685, 'amit.varma@g4s.com', 'Facilities Management', '2024-05-18 08:37:19.000000', 'UKI'),
(2686, 'amit.varma@g4s.com', 'Ireland', '2024-05-18 08:37:19.000000', 'UKI'),
(2687, 'amit.varma@g4s.com', 'Risk', '2024-05-18 08:37:19.000000', 'UKI'),
(2688, 'amit.varma@g4s.com', 'Secure Solutions UK', '2024-05-18 08:37:19.000000', 'UKI'),
(2689, 'amit.varma@g4s.com', 'UK - Cash Solutions', '2024-05-18 08:37:19.000000', 'UKI'),
(2690, 'paul.carter@g4s.com', 'Angola', '2024-05-18 08:38:26.000000', 'AME'),
(2691, 'paul.carter@g4s.com', 'Bahrain', '2024-05-18 08:38:26.000000', 'AME'),
(2692, 'paul.carter@g4s.com', 'Botswana', '2024-05-18 08:38:26.000000', 'AME'),
(2693, 'paul.carter@g4s.com', 'Cameroon', '2024-05-18 08:38:26.000000', 'AME'),
(2694, 'paul.carter@g4s.com', 'Central African Republic', '2024-05-18 08:38:26.000000', 'AME'),
(2695, 'paul.carter@g4s.com', 'Democratic Republic of Congo', '2024-05-18 08:38:26.000000', 'AME'),
(2696, 'paul.carter@g4s.com', 'Deposita International', '2024-05-18 08:38:26.000000', 'AME'),
(2697, 'paul.carter@g4s.com', 'Egypt', '2024-05-18 08:38:26.000000', 'AME'),
(2698, 'paul.carter@g4s.com', 'Gabon', '2024-05-18 08:38:26.000000', 'AME'),
(2699, 'paul.carter@g4s.com', 'Gambia', '2024-05-18 08:38:26.000000', 'AME'),
(2700, 'paul.carter@g4s.com', 'Ghana', '2024-05-18 08:38:26.000000', 'AME'),
(2701, 'paul.carter@g4s.com', 'Guinea', '2024-05-18 08:38:26.000000', 'AME'),
(2702, 'paul.carter@g4s.com', 'Ivory Coast', '2024-05-18 08:38:26.000000', 'AME'),
(2703, 'paul.carter@g4s.com', 'Jordan', '2024-05-18 08:38:26.000000', 'AME'),
(2704, 'paul.carter@g4s.com', 'Kenya', '2024-05-18 08:38:26.000000', 'AME'),
(2705, 'paul.carter@g4s.com', 'Lebanon', '2024-05-18 08:38:26.000000', 'AME'),
(2706, 'paul.carter@g4s.com', 'Lesotho', '2024-05-18 08:38:26.000000', 'AME'),
(2707, 'paul.carter@g4s.com', 'Madagascar', '2024-05-18 08:38:26.000000', 'AME'),
(2708, 'paul.carter@g4s.com', 'Malawi', '2024-05-18 08:38:26.000000', 'AME'),
(2709, 'paul.carter@g4s.com', 'Mozambique', '2024-05-18 08:38:26.000000', 'AME'),
(2710, 'paul.carter@g4s.com', 'Namibia', '2024-05-18 08:38:26.000000', 'AME'),
(2711, 'paul.carter@g4s.com', 'Nigeria', '2024-05-18 08:38:26.000000', 'AME'),
(2712, 'paul.carter@g4s.com', 'Oman', '2024-05-18 08:38:26.000000', 'AME'),
(2713, 'paul.carter@g4s.com', 'Qatar', '2024-05-18 08:38:26.000000', 'AME'),
(2714, 'paul.carter@g4s.com', 'Regional Office', '2024-05-18 08:38:26.000000', 'AME'),
(2715, 'paul.carter@g4s.com', 'Saudi Arabia', '2024-05-18 08:38:26.000000', 'AME'),
(2716, 'paul.carter@g4s.com', 'Sierra Leone', '2024-05-18 08:38:26.000000', 'AME'),
(2717, 'paul.carter@g4s.com', 'South Africa - Cash Solutions', '2024-05-18 08:38:26.000000', 'AME'),
(2718, 'paul.carter@g4s.com', 'South Africa - Secure Solutions', '2024-05-18 08:38:26.000000', 'AME'),
(2719, 'paul.carter@g4s.com', 'South Africa - Care and Justice ', '2024-05-18 08:38:26.000000', 'AME'),
(2720, 'paul.carter@g4s.com', 'Tanzania', '2024-05-18 08:38:26.000000', 'AME'),
(2721, 'paul.carter@g4s.com', 'Uganda', '2024-05-18 08:38:26.000000', 'AME'),
(2722, 'paul.carter@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-05-18 08:38:26.000000', 'AME'),
(2723, 'paul.carter@g4s.com', 'United Arab Emirates - Dubai', '2024-05-18 08:38:26.000000', 'AME'),
(2724, 'paul.carter@g4s.com', 'Zambia', '2024-05-18 08:38:26.000000', 'AME'),
(2725, 'paul.carter@g4s.com', 'Bangladesh', '2024-05-18 08:38:26.000000', 'APAC'),
(2726, 'paul.carter@g4s.com', 'C&J - Australia', '2024-05-18 08:38:26.000000', 'APAC'),
(2727, 'paul.carter@g4s.com', 'China', '2024-05-18 08:38:26.000000', 'APAC'),
(2728, 'paul.carter@g4s.com', 'Guam', '2024-05-18 08:38:26.000000', 'APAC'),
(2729, 'paul.carter@g4s.com', 'Hong Kong', '2024-05-18 08:38:26.000000', 'APAC'),
(2730, 'paul.carter@g4s.com', 'India', '2024-05-18 08:38:26.000000', 'APAC'),
(2731, 'paul.carter@g4s.com', 'Indonesia', '2024-05-18 08:38:26.000000', 'APAC'),
(2732, 'paul.carter@g4s.com', 'Japan', '2024-05-18 08:38:26.000000', 'APAC'),
(2733, 'paul.carter@g4s.com', 'Macau', '2024-05-18 08:38:26.000000', 'APAC'),
(2734, 'paul.carter@g4s.com', 'Nepal', '2024-05-18 08:38:26.000000', 'APAC'),
(2735, 'paul.carter@g4s.com', 'Papua New Guinea', '2024-05-18 08:38:26.000000', 'APAC'),
(2736, 'paul.carter@g4s.com', 'Risk Consulting - Hill and Associates', '2024-05-18 08:38:26.000000', 'APAC'),
(2737, 'paul.carter@g4s.com', 'Singapore', '2024-05-18 08:38:26.000000', 'APAC'),
(2738, 'paul.carter@g4s.com', 'Taiwan', '2024-05-18 08:38:26.000000', 'APAC'),
(2739, 'paul.carter@g4s.com', 'Thailand', '2024-05-18 08:38:26.000000', 'APAC'),
(2740, 'paul.carter@g4s.com', 'AUS Electronic Monitoring', '2024-05-18 08:38:26.000000', 'Corporate Services'),
(2741, 'paul.carter@g4s.com', 'Corporate Services / International Business Head Office', '2024-05-18 08:38:26.000000', 'Corporate Services'),
(2742, 'paul.carter@g4s.com', 'Austria', '2024-05-18 08:38:26.000000', 'Europe'),
(2743, 'paul.carter@g4s.com', 'Belgium - Secure Solutions', '2024-05-18 08:38:26.000000', 'Europe'),
(2744, 'paul.carter@g4s.com', 'Czech Republic', '2024-05-18 08:38:26.000000', 'Europe'),
(2745, 'paul.carter@g4s.com', 'Denmark', '2024-05-18 08:38:26.000000', 'Europe'),
(2746, 'paul.carter@g4s.com', 'Estonia', '2024-05-18 08:38:26.000000', 'Europe'),
(2747, 'paul.carter@g4s.com', 'France', '2024-05-18 08:38:26.000000', 'Europe'),
(2748, 'paul.carter@g4s.com', 'Greece', '2024-05-18 08:38:26.000000', 'Europe'),
(2749, 'paul.carter@g4s.com', 'Latvia', '2024-05-18 08:38:26.000000', 'Europe'),
(2750, 'paul.carter@g4s.com', 'Lithuania', '2024-05-18 08:38:26.000000', 'Europe'),
(2751, 'paul.carter@g4s.com', 'Luxembourg - Secure Solutions', '2024-05-18 08:38:26.000000', 'Europe'),
(2752, 'paul.carter@g4s.com', 'Malta', '2024-05-18 08:38:26.000000', 'Europe'),
(2753, 'paul.carter@g4s.com', 'Morocco - Secure Solutions', '2024-05-18 08:38:26.000000', 'Europe'),
(2754, 'paul.carter@g4s.com', 'Morocco - Cash Solutions', '2024-05-18 08:38:26.000000', 'Europe'),
(2755, 'paul.carter@g4s.com', 'Netherlands - Secure Solutions', '2024-05-18 08:38:26.000000', 'Europe'),
(2756, 'paul.carter@g4s.com', 'Serbia', '2024-05-18 08:38:26.000000', 'Europe'),
(2757, 'paul.carter@g4s.com', 'Slovakia', '2024-05-18 08:38:26.000000', 'Europe'),
(2758, 'paul.carter@g4s.com', 'Slovenia', '2024-05-18 08:38:26.000000', 'Europe'),
(2759, 'paul.carter@g4s.com', 'Turkey', '2024-05-18 08:38:26.000000', 'Europe'),
(2760, 'paul.carter@g4s.com', 'Ukraine', '2024-05-18 08:38:26.000000', 'Europe'),
(2761, 'paul.carter@g4s.com', 'Argentina', '2024-05-18 08:38:26.000000', 'LATAM'),
(2762, 'paul.carter@g4s.com', 'Barbados', '2024-05-18 08:38:26.000000', 'LATAM'),
(2763, 'paul.carter@g4s.com', 'Brazil', '2024-05-18 08:38:26.000000', 'LATAM'),
(2764, 'paul.carter@g4s.com', 'Chile', '2024-05-18 08:38:26.000000', 'LATAM'),
(2765, 'paul.carter@g4s.com', 'Colombia', '2024-05-18 08:38:26.000000', 'LATAM'),
(2766, 'paul.carter@g4s.com', 'Costa Rica', '2024-05-18 08:38:26.000000', 'LATAM'),
(2767, 'paul.carter@g4s.com', 'Ecuador', '2024-05-18 08:38:26.000000', 'LATAM'),
(2768, 'paul.carter@g4s.com', 'El Salvador', '2024-05-18 08:38:26.000000', 'LATAM'),
(2769, 'paul.carter@g4s.com', 'Grenada', '2024-05-18 08:38:26.000000', 'LATAM'),
(2770, 'paul.carter@g4s.com', 'Guatemala', '2024-05-18 08:38:26.000000', 'LATAM'),
(2771, 'paul.carter@g4s.com', 'Nicaragua', '2024-05-18 08:38:26.000000', 'LATAM'),
(2772, 'paul.carter@g4s.com', 'Paraguay', '2024-05-18 08:38:26.000000', 'LATAM'),
(2773, 'paul.carter@g4s.com', 'Peru', '2024-05-18 08:38:26.000000', 'LATAM'),
(2774, 'paul.carter@g4s.com', 'St. Lucia', '2024-05-18 08:38:26.000000', 'LATAM'),
(2775, 'paul.carter@g4s.com', 'Trinidad and Tobago', '2024-05-18 08:38:26.000000', 'LATAM'),
(2776, 'paul.carter@g4s.com', 'Uruguay', '2024-05-18 08:38:26.000000', 'LATAM'),
(2777, 'paul.carter@g4s.com', 'Allied Universal Electronic Monitoring', '2024-05-18 08:38:26.000000', 'UKI'),
(2778, 'paul.carter@g4s.com', 'AUS Compliance and Investigations', '2024-05-18 08:38:26.000000', 'UKI'),
(2779, 'paul.carter@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-05-18 08:38:26.000000', 'UKI'),
(2780, 'paul.carter@g4s.com', 'C&J - Employment Support Services', '2024-05-18 08:38:26.000000', 'UKI'),
(2781, 'paul.carter@g4s.com', 'C&J - Health Services', '2024-05-18 08:38:26.000000', 'UKI'),
(2782, 'paul.carter@g4s.com', 'C&J - Patient Transport Services', '2024-05-18 08:38:26.000000', 'UKI'),
(2783, 'paul.carter@g4s.com', 'Facilities Management', '2024-05-18 08:38:26.000000', 'UKI'),
(2784, 'paul.carter@g4s.com', 'Ireland', '2024-05-18 08:38:26.000000', 'UKI'),
(2785, 'paul.carter@g4s.com', 'Risk', '2024-05-18 08:38:26.000000', 'UKI'),
(2786, 'paul.carter@g4s.com', 'Secure Solutions UK', '2024-05-18 08:38:26.000000', 'UKI'),
(2787, 'paul.carter@g4s.com', 'UK - Cash Solutions', '2024-05-18 08:38:26.000000', 'UKI'),
(2788, 'melt.vanderspuy@g4s.com', 'Angola', '2024-05-21 11:54:19.000000', 'AME'),
(2789, 'melt.vanderspuy@g4s.com', 'Bahrain', '2024-05-21 11:54:19.000000', 'AME'),
(2790, 'melt.vanderspuy@g4s.com', 'Botswana', '2024-05-21 11:54:19.000000', 'AME'),
(2791, 'melt.vanderspuy@g4s.com', 'Cameroon', '2024-05-21 11:54:19.000000', 'AME'),
(2792, 'melt.vanderspuy@g4s.com', 'Central African Republic', '2024-05-21 11:54:19.000000', 'AME'),
(2793, 'melt.vanderspuy@g4s.com', 'Democratic Republic of Congo', '2024-05-21 11:54:19.000000', 'AME'),
(2794, 'melt.vanderspuy@g4s.com', 'Deposita International', '2024-05-21 11:54:19.000000', 'AME'),
(2795, 'melt.vanderspuy@g4s.com', 'Egypt', '2024-05-21 11:54:19.000000', 'AME'),
(2796, 'melt.vanderspuy@g4s.com', 'Gabon', '2024-05-21 11:54:19.000000', 'AME'),
(2797, 'melt.vanderspuy@g4s.com', 'Gambia', '2024-05-21 11:54:19.000000', 'AME'),
(2798, 'melt.vanderspuy@g4s.com', 'Ghana', '2024-05-21 11:54:19.000000', 'AME'),
(2799, 'melt.vanderspuy@g4s.com', 'Guinea', '2024-05-21 11:54:19.000000', 'AME'),
(2800, 'melt.vanderspuy@g4s.com', 'Ivory Coast', '2024-05-21 11:54:19.000000', 'AME'),
(2801, 'melt.vanderspuy@g4s.com', 'Jordan', '2024-05-21 11:54:19.000000', 'AME'),
(2802, 'melt.vanderspuy@g4s.com', 'Kenya', '2024-05-21 11:54:19.000000', 'AME'),
(2803, 'melt.vanderspuy@g4s.com', 'Lebanon', '2024-05-21 11:54:19.000000', 'AME'),
(2804, 'melt.vanderspuy@g4s.com', 'Lesotho', '2024-05-21 11:54:19.000000', 'AME'),
(2805, 'melt.vanderspuy@g4s.com', 'Madagascar', '2024-05-21 11:54:19.000000', 'AME'),
(2806, 'melt.vanderspuy@g4s.com', 'Malawi', '2024-05-21 11:54:19.000000', 'AME'),
(2807, 'melt.vanderspuy@g4s.com', 'Mozambique', '2024-05-21 11:54:19.000000', 'AME'),
(2808, 'melt.vanderspuy@g4s.com', 'Namibia', '2024-05-21 11:54:19.000000', 'AME'),
(2809, 'melt.vanderspuy@g4s.com', 'Nigeria', '2024-05-21 11:54:19.000000', 'AME'),
(2810, 'melt.vanderspuy@g4s.com', 'Oman', '2024-05-21 11:54:19.000000', 'AME'),
(2811, 'melt.vanderspuy@g4s.com', 'Qatar', '2024-05-21 11:54:19.000000', 'AME'),
(2812, 'melt.vanderspuy@g4s.com', 'Regional Office', '2024-05-21 11:54:19.000000', 'AME'),
(2813, 'melt.vanderspuy@g4s.com', 'Saudi Arabia', '2024-05-21 11:54:19.000000', 'AME'),
(2814, 'melt.vanderspuy@g4s.com', 'Sierra Leone', '2024-05-21 11:54:19.000000', 'AME'),
(2815, 'melt.vanderspuy@g4s.com', 'South Africa - Cash Solutions', '2024-05-21 11:54:19.000000', 'AME'),
(2816, 'melt.vanderspuy@g4s.com', 'South Africa - Secure Solutions', '2024-05-21 11:54:19.000000', 'AME'),
(2817, 'melt.vanderspuy@g4s.com', 'South Africa - Care and Justice ', '2024-05-21 11:54:19.000000', 'AME'),
(2818, 'melt.vanderspuy@g4s.com', 'Tanzania', '2024-05-21 11:54:19.000000', 'AME'),
(2819, 'melt.vanderspuy@g4s.com', 'Uganda', '2024-05-21 11:54:19.000000', 'AME'),
(2820, 'melt.vanderspuy@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-05-21 11:54:19.000000', 'AME'),
(2821, 'melt.vanderspuy@g4s.com', 'United Arab Emirates - Dubai', '2024-05-21 11:54:19.000000', 'AME'),
(2822, 'melt.vanderspuy@g4s.com', 'Zambia', '2024-05-21 11:54:19.000000', 'AME'),
(2823, 'melt.vanderspuy@g4s.com', 'Bangladesh', '2024-05-21 11:54:19.000000', 'APAC'),
(2824, 'melt.vanderspuy@g4s.com', 'C&J - Australia', '2024-05-21 11:54:19.000000', 'APAC'),
(2825, 'melt.vanderspuy@g4s.com', 'China', '2024-05-21 11:54:19.000000', 'APAC'),
(2826, 'melt.vanderspuy@g4s.com', 'Guam', '2024-05-21 11:54:19.000000', 'APAC'),
(2827, 'melt.vanderspuy@g4s.com', 'Hong Kong', '2024-05-21 11:54:19.000000', 'APAC'),
(2828, 'melt.vanderspuy@g4s.com', 'India', '2024-05-21 11:54:19.000000', 'APAC'),
(2829, 'melt.vanderspuy@g4s.com', 'Indonesia', '2024-05-21 11:54:19.000000', 'APAC'),
(2830, 'melt.vanderspuy@g4s.com', 'Japan', '2024-05-21 11:54:19.000000', 'APAC'),
(2831, 'melt.vanderspuy@g4s.com', 'Macau', '2024-05-21 11:54:19.000000', 'APAC'),
(2832, 'melt.vanderspuy@g4s.com', 'Nepal', '2024-05-21 11:54:19.000000', 'APAC'),
(2833, 'melt.vanderspuy@g4s.com', 'Papua New Guinea', '2024-05-21 11:54:19.000000', 'APAC'),
(2834, 'melt.vanderspuy@g4s.com', 'Risk Consulting - Hill and Associates', '2024-05-21 11:54:19.000000', 'APAC'),
(2835, 'melt.vanderspuy@g4s.com', 'Singapore', '2024-05-21 11:54:19.000000', 'APAC'),
(2836, 'melt.vanderspuy@g4s.com', 'Taiwan', '2024-05-21 11:54:19.000000', 'APAC'),
(2837, 'melt.vanderspuy@g4s.com', 'Thailand', '2024-05-21 11:54:19.000000', 'APAC'),
(2838, 'melt.vanderspuy@g4s.com', 'AUS Electronic Monitoring', '2024-05-21 11:54:19.000000', 'Corporate Services'),
(2839, 'melt.vanderspuy@g4s.com', 'Corporate Services / International Business Head Office', '2024-05-21 11:54:19.000000', 'Corporate Services'),
(2840, 'melt.vanderspuy@g4s.com', 'Austria', '2024-05-21 11:54:19.000000', 'Europe'),
(2841, 'melt.vanderspuy@g4s.com', 'Belgium - Secure Solutions', '2024-05-21 11:54:19.000000', 'Europe'),
(2842, 'melt.vanderspuy@g4s.com', 'Czech Republic', '2024-05-21 11:54:19.000000', 'Europe'),
(2843, 'melt.vanderspuy@g4s.com', 'Denmark', '2024-05-21 11:54:19.000000', 'Europe'),
(2844, 'melt.vanderspuy@g4s.com', 'Estonia', '2024-05-21 11:54:19.000000', 'Europe'),
(2845, 'melt.vanderspuy@g4s.com', 'France', '2024-05-21 11:54:19.000000', 'Europe'),
(2846, 'melt.vanderspuy@g4s.com', 'Greece', '2024-05-21 11:54:19.000000', 'Europe'),
(2847, 'melt.vanderspuy@g4s.com', 'Latvia', '2024-05-21 11:54:19.000000', 'Europe'),
(2848, 'melt.vanderspuy@g4s.com', 'Lithuania', '2024-05-21 11:54:19.000000', 'Europe'),
(2849, 'melt.vanderspuy@g4s.com', 'Luxembourg - Secure Solutions', '2024-05-21 11:54:19.000000', 'Europe'),
(2850, 'melt.vanderspuy@g4s.com', 'Malta', '2024-05-21 11:54:19.000000', 'Europe'),
(2851, 'melt.vanderspuy@g4s.com', 'Morocco - Secure Solutions', '2024-05-21 11:54:19.000000', 'Europe'),
(2852, 'melt.vanderspuy@g4s.com', 'Morocco - Cash Solutions', '2024-05-21 11:54:19.000000', 'Europe'),
(2853, 'melt.vanderspuy@g4s.com', 'Netherlands - Secure Solutions', '2024-05-21 11:54:19.000000', 'Europe'),
(2854, 'melt.vanderspuy@g4s.com', 'Serbia', '2024-05-21 11:54:19.000000', 'Europe'),
(2855, 'melt.vanderspuy@g4s.com', 'Slovakia', '2024-05-21 11:54:19.000000', 'Europe'),
(2856, 'melt.vanderspuy@g4s.com', 'Slovenia', '2024-05-21 11:54:19.000000', 'Europe'),
(2857, 'melt.vanderspuy@g4s.com', 'Turkey', '2024-05-21 11:54:19.000000', 'Europe'),
(2858, 'melt.vanderspuy@g4s.com', 'Ukraine', '2024-05-21 11:54:19.000000', 'Europe'),
(2859, 'melt.vanderspuy@g4s.com', 'Argentina', '2024-05-21 11:54:19.000000', 'LATAM'),
(2860, 'melt.vanderspuy@g4s.com', 'Barbados', '2024-05-21 11:54:19.000000', 'LATAM'),
(2861, 'melt.vanderspuy@g4s.com', 'Brazil', '2024-05-21 11:54:19.000000', 'LATAM'),
(2862, 'melt.vanderspuy@g4s.com', 'Chile', '2024-05-21 11:54:19.000000', 'LATAM'),
(2863, 'melt.vanderspuy@g4s.com', 'Colombia', '2024-05-21 11:54:19.000000', 'LATAM'),
(2864, 'melt.vanderspuy@g4s.com', 'Costa Rica', '2024-05-21 11:54:19.000000', 'LATAM'),
(2865, 'melt.vanderspuy@g4s.com', 'Ecuador', '2024-05-21 11:54:19.000000', 'LATAM'),
(2866, 'melt.vanderspuy@g4s.com', 'El Salvador', '2024-05-21 11:54:19.000000', 'LATAM'),
(2867, 'melt.vanderspuy@g4s.com', 'Grenada', '2024-05-21 11:54:19.000000', 'LATAM'),
(2868, 'melt.vanderspuy@g4s.com', 'Guatemala', '2024-05-21 11:54:19.000000', 'LATAM'),
(2869, 'melt.vanderspuy@g4s.com', 'Nicaragua', '2024-05-21 11:54:19.000000', 'LATAM'),
(2870, 'melt.vanderspuy@g4s.com', 'Paraguay', '2024-05-21 11:54:19.000000', 'LATAM'),
(2871, 'melt.vanderspuy@g4s.com', 'Peru', '2024-05-21 11:54:19.000000', 'LATAM'),
(2872, 'melt.vanderspuy@g4s.com', 'St. Lucia', '2024-05-21 11:54:19.000000', 'LATAM'),
(2873, 'melt.vanderspuy@g4s.com', 'Trinidad and Tobago', '2024-05-21 11:54:19.000000', 'LATAM'),
(2874, 'melt.vanderspuy@g4s.com', 'Uruguay', '2024-05-21 11:54:19.000000', 'LATAM'),
(2875, 'melt.vanderspuy@g4s.com', 'Allied Universal Electronic Monitoring', '2024-05-21 11:54:19.000000', 'UKI'),
(2876, 'melt.vanderspuy@g4s.com', 'AUS Compliance and Investigations', '2024-05-21 11:54:19.000000', 'UKI'),
(2877, 'melt.vanderspuy@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-05-21 11:54:19.000000', 'UKI'),
(2878, 'melt.vanderspuy@g4s.com', 'C&J - Employment Support Services', '2024-05-21 11:54:19.000000', 'UKI'),
(2879, 'melt.vanderspuy@g4s.com', 'C&J - Health Services', '2024-05-21 11:54:19.000000', 'UKI'),
(2880, 'melt.vanderspuy@g4s.com', 'C&J - Patient Transport Services', '2024-05-21 11:54:19.000000', 'UKI'),
(2881, 'melt.vanderspuy@g4s.com', 'Facilities Management', '2024-05-21 11:54:19.000000', 'UKI'),
(2882, 'melt.vanderspuy@g4s.com', 'Ireland', '2024-05-21 11:54:19.000000', 'UKI'),
(2883, 'melt.vanderspuy@g4s.com', 'Risk', '2024-05-21 11:54:19.000000', 'UKI'),
(2884, 'melt.vanderspuy@g4s.com', 'Secure Solutions UK', '2024-05-21 11:54:19.000000', 'UKI'),
(2885, 'melt.vanderspuy@g4s.com', 'UK - Cash Solutions', '2024-05-21 11:54:19.000000', 'UKI'),
(2886, 'bhoopendra.pal@extranet.g4s.com', 'Angola', '2024-05-23 16:36:44.000000', 'AME'),
(2887, 'bhoopendra.pal@extranet.g4s.com', 'Bahrain', '2024-05-23 16:36:44.000000', 'AME'),
(2888, 'bhoopendra.pal@extranet.g4s.com', 'Botswana', '2024-05-23 16:36:44.000000', 'AME'),
(2889, 'bhoopendra.pal@extranet.g4s.com', 'Cameroon', '2024-05-23 16:36:44.000000', 'AME'),
(2890, 'bhoopendra.pal@extranet.g4s.com', 'Central African Republic', '2024-05-23 16:36:44.000000', 'AME'),
(2891, 'bhoopendra.pal@extranet.g4s.com', 'Democratic Republic of Congo', '2024-05-23 16:36:44.000000', 'AME'),
(2892, 'bhoopendra.pal@extranet.g4s.com', 'Deposita International', '2024-05-23 16:36:44.000000', 'AME'),
(2893, 'bhoopendra.pal@extranet.g4s.com', 'Egypt', '2024-05-23 16:36:44.000000', 'AME'),
(2894, 'bhoopendra.pal@extranet.g4s.com', 'Gabon', '2024-05-23 16:36:44.000000', 'AME'),
(2895, 'bhoopendra.pal@extranet.g4s.com', 'Gambia', '2024-05-23 16:36:44.000000', 'AME'),
(2896, 'bhoopendra.pal@extranet.g4s.com', 'Ghana', '2024-05-23 16:36:44.000000', 'AME'),
(2897, 'bhoopendra.pal@extranet.g4s.com', 'Guinea', '2024-05-23 16:36:44.000000', 'AME'),
(2898, 'bhoopendra.pal@extranet.g4s.com', 'Ivory Coast', '2024-05-23 16:36:44.000000', 'AME'),
(2899, 'bhoopendra.pal@extranet.g4s.com', 'Jordan', '2024-05-23 16:36:44.000000', 'AME'),
(2900, 'bhoopendra.pal@extranet.g4s.com', 'Kenya', '2024-05-23 16:36:44.000000', 'AME'),
(2901, 'bhoopendra.pal@extranet.g4s.com', 'Lebanon', '2024-05-23 16:36:44.000000', 'AME'),
(2902, 'bhoopendra.pal@extranet.g4s.com', 'Lesotho', '2024-05-23 16:36:44.000000', 'AME'),
(2903, 'bhoopendra.pal@extranet.g4s.com', 'Madagascar', '2024-05-23 16:36:44.000000', 'AME'),
(2904, 'bhoopendra.pal@extranet.g4s.com', 'Malawi', '2024-05-23 16:36:44.000000', 'AME'),
(2905, 'bhoopendra.pal@extranet.g4s.com', 'Mozambique', '2024-05-23 16:36:44.000000', 'AME'),
(2906, 'bhoopendra.pal@extranet.g4s.com', 'Namibia', '2024-05-23 16:36:44.000000', 'AME'),
(2907, 'bhoopendra.pal@extranet.g4s.com', 'Nigeria', '2024-05-23 16:36:44.000000', 'AME'),
(2908, 'bhoopendra.pal@extranet.g4s.com', 'Oman', '2024-05-23 16:36:44.000000', 'AME'),
(2909, 'bhoopendra.pal@extranet.g4s.com', 'Qatar', '2024-05-23 16:36:44.000000', 'AME'),
(2910, 'bhoopendra.pal@extranet.g4s.com', 'Regional Office', '2024-05-23 16:36:44.000000', 'AME'),
(2911, 'bhoopendra.pal@extranet.g4s.com', 'Saudi Arabia', '2024-05-23 16:36:44.000000', 'AME'),
(2912, 'bhoopendra.pal@extranet.g4s.com', 'Sierra Leone', '2024-05-23 16:36:44.000000', 'AME'),
(2913, 'bhoopendra.pal@extranet.g4s.com', 'South Africa - Cash Solutions', '2024-05-23 16:36:44.000000', 'AME'),
(2914, 'bhoopendra.pal@extranet.g4s.com', 'South Africa - Secure Solutions', '2024-05-23 16:36:44.000000', 'AME'),
(2915, 'bhoopendra.pal@extranet.g4s.com', 'South Africa - Care and Justice', '2024-05-23 16:36:44.000000', 'AME'),
(2916, 'bhoopendra.pal@extranet.g4s.com', 'Tanzania', '2024-05-23 16:36:44.000000', 'AME'),
(2917, 'bhoopendra.pal@extranet.g4s.com', 'Uganda', '2024-05-23 16:36:44.000000', 'AME'),
(2918, 'bhoopendra.pal@extranet.g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-05-23 16:36:44.000000', 'AME'),
(2919, 'bhoopendra.pal@extranet.g4s.com', 'United Arab Emirates - Dubai', '2024-05-23 16:36:44.000000', 'AME'),
(2920, 'bhoopendra.pal@extranet.g4s.com', 'Zambia', '2024-05-23 16:36:44.000000', 'AME'),
(2921, 'bhoopendra.pal@extranet.g4s.com', 'Bangladesh', '2024-05-23 16:36:44.000000', 'APAC'),
(2922, 'bhoopendra.pal@extranet.g4s.com', 'C&J - Australia', '2024-05-23 16:36:44.000000', 'APAC'),
(2923, 'bhoopendra.pal@extranet.g4s.com', 'China', '2024-05-23 16:36:44.000000', 'APAC'),
(2924, 'bhoopendra.pal@extranet.g4s.com', 'Guam', '2024-05-23 16:36:44.000000', 'APAC'),
(2925, 'bhoopendra.pal@extranet.g4s.com', 'Hong Kong', '2024-05-23 16:36:44.000000', 'APAC'),
(2926, 'bhoopendra.pal@extranet.g4s.com', 'India', '2024-05-23 16:36:44.000000', 'APAC'),
(2927, 'bhoopendra.pal@extranet.g4s.com', 'Indonesia', '2024-05-23 16:36:44.000000', 'APAC'),
(2928, 'bhoopendra.pal@extranet.g4s.com', 'Japan', '2024-05-23 16:36:44.000000', 'APAC'),
(2929, 'bhoopendra.pal@extranet.g4s.com', 'Macau', '2024-05-23 16:36:44.000000', 'APAC'),
(2930, 'bhoopendra.pal@extranet.g4s.com', 'Nepal', '2024-05-23 16:36:44.000000', 'APAC'),
(2931, 'bhoopendra.pal@extranet.g4s.com', 'Papua New Guinea', '2024-05-23 16:36:44.000000', 'APAC'),
(2932, 'bhoopendra.pal@extranet.g4s.com', 'Regional Office', '2024-05-23 16:36:44.000000', 'AME'),
(2933, 'bhoopendra.pal@extranet.g4s.com', 'Risk Consulting - Hill and Associates', '2024-05-23 16:36:44.000000', 'APAC'),
(2934, 'bhoopendra.pal@extranet.g4s.com', 'Singapore', '2024-05-23 16:36:44.000000', 'APAC'),
(2935, 'bhoopendra.pal@extranet.g4s.com', 'Taiwan', '2024-05-23 16:36:44.000000', 'APAC'),
(2936, 'bhoopendra.pal@extranet.g4s.com', 'Thailand', '2024-05-23 16:36:44.000000', 'APAC'),
(2937, 'bhoopendra.pal@extranet.g4s.com', 'AUS Electronic Monitoring', '2024-05-23 16:36:44.000000', 'Corporate Services'),
(2938, 'bhoopendra.pal@extranet.g4s.com', 'Corporate Services / International Business Head Office', '2024-05-23 16:36:44.000000', 'Corporate Services'),
(2939, 'bhoopendra.pal@extranet.g4s.com', 'Austria', '2024-05-23 16:36:44.000000', 'Europe'),
(2940, 'bhoopendra.pal@extranet.g4s.com', 'Belgium - Secure Solutions', '2024-05-23 16:36:44.000000', 'Europe'),
(2941, 'bhoopendra.pal@extranet.g4s.com', 'Czech Republic', '2024-05-23 16:36:44.000000', 'Europe'),
(2942, 'bhoopendra.pal@extranet.g4s.com', 'Denmark', '2024-05-23 16:36:44.000000', 'Europe'),
(2943, 'bhoopendra.pal@extranet.g4s.com', 'Estonia', '2024-05-23 16:36:44.000000', 'Europe'),
(2944, 'bhoopendra.pal@extranet.g4s.com', 'France', '2024-05-23 16:36:44.000000', 'Europe'),
(2945, 'bhoopendra.pal@extranet.g4s.com', 'Greece', '2024-05-23 16:36:44.000000', 'Europe'),
(2946, 'bhoopendra.pal@extranet.g4s.com', 'Latvia', '2024-05-23 16:36:44.000000', 'Europe'),
(2947, 'bhoopendra.pal@extranet.g4s.com', 'Lithuania', '2024-05-23 16:36:44.000000', 'Europe'),
(2948, 'bhoopendra.pal@extranet.g4s.com', 'Luxembourg - Secure Solutions', '2024-05-23 16:36:44.000000', 'Europe'),
(2949, 'bhoopendra.pal@extranet.g4s.com', 'Malta', '2024-05-23 16:36:44.000000', 'Europe'),
(2950, 'bhoopendra.pal@extranet.g4s.com', 'Morocco - Secure Solutions', '2024-05-23 16:36:44.000000', 'Europe'),
(2951, 'bhoopendra.pal@extranet.g4s.com', 'Morocco - Cash Solutions', '2024-05-23 16:36:44.000000', 'Europe'),
(2952, 'bhoopendra.pal@extranet.g4s.com', 'Netherlands - Secure Solutions', '2024-05-23 16:36:44.000000', 'Europe'),
(2953, 'bhoopendra.pal@extranet.g4s.com', 'Regional Office', '2024-05-23 16:36:44.000000', 'AME'),
(2954, 'bhoopendra.pal@extranet.g4s.com', 'Serbia', '2024-05-23 16:36:44.000000', 'Europe'),
(2955, 'bhoopendra.pal@extranet.g4s.com', 'Slovakia', '2024-05-23 16:36:44.000000', 'Europe'),
(2956, 'bhoopendra.pal@extranet.g4s.com', 'Slovenia', '2024-05-23 16:36:44.000000', 'Europe'),
(2957, 'bhoopendra.pal@extranet.g4s.com', 'Turkey', '2024-05-23 16:36:44.000000', 'Europe'),
(2958, 'bhoopendra.pal@extranet.g4s.com', 'Ukraine', '2024-05-23 16:36:44.000000', 'Europe'),
(2959, 'bhoopendra.pal@extranet.g4s.com', 'Argentina', '2024-05-23 16:36:44.000000', 'LATAM'),
(2960, 'bhoopendra.pal@extranet.g4s.com', 'Barbados', '2024-05-23 16:36:44.000000', 'LATAM'),
(2961, 'bhoopendra.pal@extranet.g4s.com', 'Brazil', '2024-05-23 16:36:44.000000', 'LATAM'),
(2962, 'bhoopendra.pal@extranet.g4s.com', 'Chile', '2024-05-23 16:36:44.000000', 'LATAM'),
(2963, 'bhoopendra.pal@extranet.g4s.com', 'Colombia', '2024-05-23 16:36:44.000000', 'LATAM'),
(2964, 'bhoopendra.pal@extranet.g4s.com', 'Costa Rica', '2024-05-23 16:36:44.000000', 'LATAM'),
(2965, 'bhoopendra.pal@extranet.g4s.com', 'Ecuador', '2024-05-23 16:36:44.000000', 'LATAM'),
(2966, 'bhoopendra.pal@extranet.g4s.com', 'El Salvador', '2024-05-23 16:36:44.000000', 'LATAM'),
(2967, 'bhoopendra.pal@extranet.g4s.com', 'Grenada', '2024-05-23 16:36:44.000000', 'LATAM'),
(2968, 'bhoopendra.pal@extranet.g4s.com', 'Guatemala', '2024-05-23 16:36:44.000000', 'LATAM'),
(2969, 'bhoopendra.pal@extranet.g4s.com', 'Nicaragua', '2024-05-23 16:36:44.000000', 'LATAM'),
(2970, 'bhoopendra.pal@extranet.g4s.com', 'Paraguay', '2024-05-23 16:36:44.000000', 'LATAM'),
(2971, 'bhoopendra.pal@extranet.g4s.com', 'Peru', '2024-05-23 16:36:44.000000', 'LATAM'),
(2972, 'bhoopendra.pal@extranet.g4s.com', 'REGIONal Office', '2024-05-23 16:36:44.000000', 'AME'),
(2973, 'bhoopendra.pal@extranet.g4s.com', 'St. Lucia', '2024-05-23 16:36:44.000000', 'LATAM'),
(2974, 'bhoopendra.pal@extranet.g4s.com', 'Trinidad and Tobago', '2024-05-23 16:36:44.000000', 'LATAM'),
(2975, 'bhoopendra.pal@extranet.g4s.com', 'Uruguay', '2024-05-23 16:36:44.000000', 'LATAM'),
(2976, 'bhoopendra.pal@extranet.g4s.com', 'Allied Universal Electronic Monitoring', '2024-05-23 16:36:44.000000', 'UKI'),
(2977, 'bhoopendra.pal@extranet.g4s.com', 'AUS Compliance and Investigations', '2024-05-23 16:36:44.000000', 'UKI'),
(2978, 'bhoopendra.pal@extranet.g4s.com', 'C&J - Care and Rehabilitation Services', '2024-05-23 16:36:44.000000', 'UKI'),
(2979, 'bhoopendra.pal@extranet.g4s.com', 'C&J - Employment Support Services', '2024-05-23 16:36:44.000000', 'UKI'),
(2980, 'bhoopendra.pal@extranet.g4s.com', 'C&J - Health Services', '2024-05-23 16:36:44.000000', 'UKI'),
(2981, 'bhoopendra.pal@extranet.g4s.com', 'C&J - Patient Transport Services', '2024-05-23 16:36:44.000000', 'UKI'),
(2982, 'bhoopendra.pal@extranet.g4s.com', 'Facilities Management', '2024-05-23 16:36:44.000000', 'UKI'),
(2983, 'bhoopendra.pal@extranet.g4s.com', 'Ireland', '2024-05-23 16:36:44.000000', 'UKI'),
(2984, 'bhoopendra.pal@extranet.g4s.com', 'Regional Office', '2024-05-23 16:36:44.000000', 'AME'),
(2985, 'bhoopendra.pal@extranet.g4s.com', 'Risk', '2024-05-23 16:36:44.000000', 'UKI'),
(2986, 'bhoopendra.pal@extranet.g4s.com', 'Secure Solutions UK', '2024-05-23 16:36:44.000000', 'UKI'),
(2987, 'bhoopendra.pal@extranet.g4s.com', 'UK - Cash Solutions', '2024-05-23 16:36:44.000000', 'UKI');

-- --------------------------------------------------------

--
-- Table structure for table `users_users`
--

CREATE TABLE `users_users` (
  `id` bigint NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_region` varchar(45) DEFAULT NULL,
  `user_country_code` varchar(10) DEFAULT NULL,
  `user_country` varchar(45) DEFAULT NULL,
  `user_cadre` varchar(100) DEFAULT NULL,
  `access_permission` varchar(5) DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `added_by` varchar(100) DEFAULT NULL,
  `added_on` datetime(6) DEFAULT NULL,
  `last_updated_by` varchar(100) DEFAULT NULL,
  `last_updated_on` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users_users`
--

INSERT INTO `users_users` (`id`, `user_name`, `user_email`, `user_region`, `user_country_code`, `user_country`, `user_cadre`, `access_permission`, `is_active`, `added_by`, `added_on`, `last_updated_by`, `last_updated_on`) VALUES
(12, 'Admin', 'adminworkflow@in.g4s.com', 'All', NULL, NULL, 'Group CFO', 'Write', 1, 'adminworkflow@in.g4s.com', '2023-12-15 11:11:10.000000', 'adminworkflow@in.g4s.com', NULL),
(14, 'Azad Singh', 'azad.singh@g4s.com', 'APAC', NULL, NULL, 'Country HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2023-12-15 11:34:59.000000', NULL, NULL),
(15, 'catherine hooper', 'catherine.hooper@uk.g4s.com', 'All', NULL, NULL, 'CHRO', 'Write', 1, 'adminworkflow@in.g4s.com', '2023-12-15 11:36:39.000000', 'adminworkflow@in.g4s.com', NULL),
(16, 'Saurabh', 'saurabh.khare@in.g4s.com', 'All', NULL, NULL, 'Country HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2023-12-15 11:37:48.000000', 'adminworkflow@in.g4s.com', NULL),
(18, 'paul carter', 'paul.carter@g4s.com', 'All', NULL, NULL, 'Group-CFO', 'Write', 1, 'adminworkflow@in.g4s.com', '2023-12-20 13:33:05.000000', 'adminworkflow@in.g4s.com', NULL),
(19, 'Kamal Negi', 'kamal.negi@in.g4s.com', 'AME', NULL, NULL, 'Country HR', 'Write', 1, 'amit.varma@g4s.com', '2023-12-21 10:04:31.000000', NULL, NULL),
(24, 'Shantanu Garg', 'shantanu.garg.external@g4s.com', 'All', NULL, NULL, 'Group CEO', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-03 07:31:33.000000', 'adminworkflow@in.g4s.com', NULL),
(25, 'arvind kumar', 'arvind.kumar@in.g4s.com', 'All', NULL, NULL, 'Country HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-16 05:31:00.000000', 'adminworkflow@in.g4s.com', NULL),
(26, 'vikas kumar', 'vikas.kumar@in.g4s.com', 'AME', NULL, NULL, 'Country HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-16 05:33:07.000000', NULL, NULL),
(27, 'melt vanderspuy', 'melt.vanderspuy@g4s.com', 'All', NULL, NULL, 'Group-CEO', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-03 07:31:33.000000', 'melt.vanderspuy@g4s.com', NULL),
(29, 'Rashmi', 'rashmi.bharti@in.g4s.com', 'All', NULL, NULL, 'Country HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-19 12:15:14.000000', 'adminworkflow@in.g4s.com', NULL),
(30, 'Emma Webber', 'emma.webber@ame.g4s.com', 'AME', NULL, NULL, 'Regional-HRM', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-23 12:47:22.000000', 'adminworkflow@in.g4s.com', NULL),
(32, 'Admin', 'adminworkflow@in.g4s.com', 'All', NULL, NULL, 'Country HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-23 12:47:22.000000', NULL, NULL),
(33, 'Trishana Maharaj', 'trishana.maharaj@ame.g4s.com', 'AME', NULL, NULL, 'Regional-HRD', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:38:15.000000', 'adminworkflow@in.g4s.com', NULL),
(34, 'sophie crompton', 'sophie.crompton@uk.g4s.com', 'UKI', NULL, NULL, 'Regional-HRD', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:39:30.000000', 'adminworkflow@in.g4s.com', NULL),
(35, 'Jason Dendrijver', 'jason.dendrijver@eu.g4s.com', 'UKI', NULL, NULL, 'Regional-HRM', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:40:04.000000', 'adminworkflow@in.g4s.com', NULL),
(36, 'Caroline Roux', 'caroline.roux@ame.g4s.com', 'APAC', NULL, NULL, 'Regional-HRD', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:41:03.000000', 'adminworkflow@in.g4s.com', NULL),
(37, 'Antonia Poon', 'antonia.poon@ame.g4s.com', 'APAC', NULL, NULL, 'Regional-HRM', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:41:45.000000', 'adminworkflow@in.g4s.com', NULL),
(38, 'Paula Rodriguez', 'paula.rodriguez@latam.g4s.com', 'LATAM', NULL, NULL, 'Regional-HRD', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:42:36.000000', 'adminworkflow@in.g4s.com', NULL),
(39, 'Michael Rodriguez', 'michael.rodriguez@latam.g4s.com', 'LATAM', NULL, NULL, 'Regional-HRM', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:43:10.000000', 'adminworkflow@in.g4s.com', NULL),
(40, 'Lidy Vanhout', 'lidy.vanhout@nl.g4s.com', 'Europe', NULL, NULL, 'Regional-HRD', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:43:51.000000', 'adminworkflow@in.g4s.com', NULL),
(41, 'Zahra Anjum', 'zahra.anjum@at.g4s.com', 'Europe', NULL, NULL, 'Regional-HRM', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:44:22.000000', 'adminworkflow@in.g4s.com', NULL),
(42, 'stephanie wyatt', 'stephanie.wyatt@g4s.com', 'All', NULL, NULL, 'Group CEO', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:45:11.000000', NULL, NULL),
(43, 'Nick Tsimogiannis', 'nick.tsimogiannis@g4s.com', 'All', NULL, NULL, 'Group CEO', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:54:50.000000', NULL, NULL),
(44, 'Amit Varma', 'amit.varma@g4s.com', 'All', NULL, NULL, 'Group-CFO', 'Write', 1, 'amit.varma@g4s.com', '2024-02-01 03:54:23.000000', 'adminworkflow@in.g4s.com', NULL),
(45, 'Jason Dendrijver', 'jason.dendrijver@eu.g4s.com', 'APAC', NULL, NULL, 'Regional HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:40:04.000000', 'adminworkflow@in.g4s.com', NULL),
(46, 'Jason Dendrijver', 'jason.dendrijver@eu.g4s.com', 'LATAM', NULL, NULL, 'Regional HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:40:04.000000', 'adminworkflow@in.g4s.com', NULL),
(47, 'Jason Dendrijver', 'jason.dendrijver@eu.g4s.com', 'Europe', NULL, NULL, 'Regional HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:40:04.000000', 'adminworkflow@in.g4s.com', NULL),
(48, 'Paul Banks', 'paul.banks@g4s.com', 'All', NULL, NULL, 'Country CEO', 'Read', 1, 'amit.varma@g4s.com', '2024-02-01 12:03:28.000000', NULL, NULL),
(49, 'Robot RPA', 'robot.bravo@almajalg4s.com', 'All', NULL, NULL, 'Country HR', 'Write', 1, 'amit.varma@g4s.com', '2024-02-05 03:27:51.000000', NULL, NULL),
(50, 'Ben Wilshire', 'ben.wilshire.external@g4s.com', 'All', NULL, NULL, 'Regional CEO', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-03-21 09:08:02.000000', NULL, NULL),
(51, 'Pankaj Singh', 'pankaj.singh@ame.g4s.com', 'APAC', NULL, NULL, 'Group CFO', 'Write', 1, 'pankaj.singh@ame.g4s.com', '2024-04-26 08:55:25.000000', NULL, NULL),
(52, 'bhoopendra', 'bhoopendra.pal@extranet.g4s.com', 'All', NULL, NULL, 'Country-CFO', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-05-23 16:36:42.000000', NULL, NULL),
(53, 'test', 'test@g4s.com', 'APAC', NULL, NULL, 'Country HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2023-12-15 11:34:59.000000', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `master_annual_summary`
--
ALTER TABLE `master_annual_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_audit_history`
--
ALTER TABLE `master_audit_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_country`
--
ALTER TABLE `master_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_delta_monthly`
--
ALTER TABLE `master_delta_monthly`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_drop_down`
--
ALTER TABLE `master_drop_down`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_event`
--
ALTER TABLE `master_event`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `event_id` (`event_id`);

--
-- Indexes for table `master_file`
--
ALTER TABLE `master_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_monthly_baseline`
--
ALTER TABLE `master_monthly_baseline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_monthly_summary`
--
ALTER TABLE `master_monthly_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_position`
--
ALTER TABLE `master_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_position_other_pay`
--
ALTER TABLE `master_position_other_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_position_workflow`
--
ALTER TABLE `master_position_workflow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_static_drop_down`
--
ALTER TABLE `master_static_drop_down`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_yearly_baseline`
--
ALTER TABLE `master_yearly_baseline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_smtp`
--
ALTER TABLE `smtp_smtp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_assigned_country`
--
ALTER TABLE `users_assigned_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_users`
--
ALTER TABLE `users_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `master_annual_summary`
--
ALTER TABLE `master_annual_summary`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_audit_history`
--
ALTER TABLE `master_audit_history`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_country`
--
ALTER TABLE `master_country`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `master_delta_monthly`
--
ALTER TABLE `master_delta_monthly`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_drop_down`
--
ALTER TABLE `master_drop_down`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `master_event`
--
ALTER TABLE `master_event`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_file`
--
ALTER TABLE `master_file`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_monthly_baseline`
--
ALTER TABLE `master_monthly_baseline`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_monthly_summary`
--
ALTER TABLE `master_monthly_summary`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_position`
--
ALTER TABLE `master_position`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_position_other_pay`
--
ALTER TABLE `master_position_other_pay`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_position_workflow`
--
ALTER TABLE `master_position_workflow`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `master_static_drop_down`
--
ALTER TABLE `master_static_drop_down`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_yearly_baseline`
--
ALTER TABLE `master_yearly_baseline`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smtp_smtp`
--
ALTER TABLE `smtp_smtp`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_assigned_country`
--
ALTER TABLE `users_assigned_country`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2988;

--
-- AUTO_INCREMENT for table `users_users`
--
ALTER TABLE `users_users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
