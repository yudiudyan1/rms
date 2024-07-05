-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 01, 2024 at 01:29 PM
-- Server version: 8.0.26
-- PHP Version: 7.4.33

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
(100, 'Can view users', 25, 'view_users'),
(101, 'Can add position_action_approvel_request', 26, 'add_position_action_approvel_request'),
(102, 'Can change position_action_approvel_request', 26, 'change_position_action_approvel_request'),
(103, 'Can delete position_action_approvel_request', 26, 'delete_position_action_approvel_request'),
(104, 'Can view position_action_approvel_request', 26, 'view_position_action_approvel_request'),
(105, 'Can add employee_history', 27, 'add_employee_history'),
(106, 'Can change employee_history', 27, 'change_employee_history'),
(107, 'Can delete employee_history', 27, 'delete_employee_history'),
(108, 'Can view employee_history', 27, 'view_employee_history'),
(109, 'Can add position_history', 28, 'add_position_history'),
(110, 'Can change position_history', 28, 'change_position_history'),
(111, 'Can delete position_history', 28, 'delete_position_history'),
(112, 'Can view position_history', 28, 'view_position_history');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
(27, 'master', 'employee_history'),
(14, 'master', 'event'),
(15, 'master', 'file'),
(16, 'master', 'monthly_baseline'),
(17, 'master', 'monthly_summary'),
(18, 'master', 'position'),
(26, 'master', 'position_action_approvel_request'),
(28, 'master', 'position_history'),
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
(27, 'master', '0004_auto_20240607_1736', '2024-06-07 17:36:17.734569'),
(28, 'master', '0005_position_pos_manager_emp_id', '2024-06-13 16:13:25.419520'),
(29, 'master', '0006_auto_20240617_1252', '2024-06-17 12:52:09.924550'),
(30, 'master', '0007_auto_20240618_1621', '2024-06-18 16:21:14.061406'),
(31, 'users', '0002_auto_20240619_1442', '2024-06-19 14:42:56.768473'),
(32, 'master', '0008_auto_20240619_1824', '2024-06-19 18:24:08.645891'),
(33, 'master', '0009_auto_20240621_1452', '2024-06-21 14:52:41.314854'),
(34, 'master', '0010_auto_20240624_1055', '2024-06-24 10:55:42.128721'),
(35, 'master', '0011_position_emp_ref_no', '2024-06-24 12:57:16.297017'),
(36, 'master', '0012_auto_20240624_1428', '2024-06-24 14:28:56.347909'),
(37, 'master', '0013_position_pos_annual_total_cost', '2024-06-24 16:53:49.335609'),
(38, 'master', '0014_position_action_approvel_request', '2024-06-25 16:25:22.851593'),
(39, 'master', '0015_position_action_approvel_request_pos_end_date', '2024-06-25 17:07:44.478652'),
(40, 'master', '0016_position_agreed_plan', '2024-06-25 18:57:16.203643'),
(41, 'master', '0017_auto_20240626_1430', '2024-06-26 14:39:37.945134'),
(42, 'master', '0018_auto_20240627_1635', '2024-06-27 16:35:59.270668'),
(43, 'master', '0019_auto_20240627_1822', '2024-06-27 18:22:55.432526'),
(44, 'master', '0020_auto_20240627_1914', '2024-06-27 19:14:10.421753'),
(45, 'master', '0021_auto_20240628_1725', '2024-06-28 17:25:16.513550'),
(46, 'master', '0022_auto_20240628_1901', '2024-06-28 19:01:49.907766');

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
  `record_country` varchar(200) DEFAULT NULL,
  `record_year` int NOT NULL,
  `record_month` int NOT NULL,
  `emp_total_count` int NOT NULL,
  `emp_new_count` int NOT NULL,
  `emp_left_count` int NOT NULL,
  `monthly_gross_payout` decimal(20,2) DEFAULT NULL,
  `left_gross_payout` decimal(20,2) DEFAULT NULL,
  `status` int NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `uploaded_by` varchar(200) DEFAULT NULL,
  `security_code` varchar(50) DEFAULT NULL,
  `is_security_code_used` int NOT NULL,
  `sheet_key` varchar(200) DEFAULT NULL,
  `ymd_date` date DEFAULT NULL,
  `sheet_url` varchar(200) DEFAULT NULL,
  `issync` int DEFAULT NULL,
  `record_region` varchar(200) DEFAULT NULL,
  `euro_gross_payout` varchar(200) DEFAULT NULL,
  `gbp_gross_payout` varchar(200) DEFAULT NULL,
  `usd_gross_payout` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `master_annual_summary`
--

INSERT INTO `master_annual_summary` (`id`, `record_country`, `record_year`, `record_month`, `emp_total_count`, `emp_new_count`, `emp_left_count`, `monthly_gross_payout`, `left_gross_payout`, `status`, `created_date`, `uploaded_by`, `security_code`, `is_security_code_used`, `sheet_key`, `ymd_date`, `sheet_url`, `issync`, `record_region`, `euro_gross_payout`, `gbp_gross_payout`, `usd_gross_payout`) VALUES
(1, 'India', 2024, 0, 12, 0, 0, '1033974.64', '0.00', 0, '2024-06-27 20:29:45.798788', 'abhishek.kaithwas@cinntra.com', 'NA', 0, '', '2024-06-27', 'abc.com?sheetid=123', 0, 'APAC', '91073116.98', '10060.73', '12523.71'),
(4, 'Angola', 2024, 0, 14, 0, 0, '1589985.00', '0.00', 0, '2024-06-28 15:27:20.861174', 'abhishek.kaithwas@cinntra.com', 'NA', 0, '', '2024-06-28', 'abc.com?sheetid=123', 0, 'AME', '2295.74', '1844.25', '2295.74'),
(5, 'Morocco - Cash Solutions', 2024, 0, 10, 0, 0, '6491.80', '0.00', 0, '2024-06-28 17:48:29.488683', 'abhishek.kaithwas@cinntra.com', 'NA', 0, '', '2024-06-28', 'abc.com?sheetid=123', 0, 'Europe', '364227.43898960506', '513.7505892659842', '639.5241558171402'),
(6, 'Lebanon', 2024, 0, 1, 0, 0, '12220.00', '0.00', 0, '2024-06-28 18:18:38.987423', '', 'NA', 0, '', '2024-06-28', '', 0, 'AME', '0.9141807166654644', '0.7343920048821805', '0.9141807166654644'),
(7, 'United Arab Emirates - Dubai', 2024, 0, 10, 0, 0, '469.65', '0.00', 0, '2024-06-28 18:19:28.228367', 'abhishek.kaithwas@cinntra.com', 'NA', 0, '', '2024-06-28', 'abc.com?sheetid=123', 0, 'AME', '226779.32828388974', '115.81023052097463', '127.9063984173318'),
(8, 'United Arab Emirates - Abu Dhabi', 2024, 0, 11, 0, 0, '469.65', '0.00', 0, '2024-06-28 18:50:45.074845', 'abhishek.kaithwas@cinntra.com', 'NA', 0, '', '2024-06-28', 'abc.com?sheetid=123', 0, 'AME', '226779.33', '115.81', '127.91'),
(9, 'Bahrain', 2024, 0, 10, 0, 0, '1722.02', '0.00', 0, '2024-06-28 19:04:03.575307', 'abhishek.kaithwas@cinntra.com', 'NA', 0, '', '2024-06-28', 'abc.com?sheetid=123', 0, 'AME', '19665583.696637634', '3668.9859936785683', '4567.2020005536');

-- --------------------------------------------------------

--
-- Table structure for table `master_audit_history`
--

CREATE TABLE `master_audit_history` (
  `id` bigint NOT NULL,
  `pos_id` varchar(200) DEFAULT NULL,
  `action_by` varchar(200) DEFAULT NULL,
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
  `region_name` varchar(200) DEFAULT NULL,
  `country_name` varchar(200) DEFAULT NULL,
  `country_code` varchar(200) DEFAULT NULL,
  `country_flag_code` varchar(50) DEFAULT NULL,
  `is_active` int NOT NULL,
  `local_currency_code` varchar(200) DEFAULT NULL,
  `local_currency` varchar(200) DEFAULT NULL,
  `gbp_average` varchar(200) DEFAULT NULL,
  `usd_average` varchar(200) DEFAULT NULL,
  `euro_average` varchar(200) DEFAULT NULL,
  `added_by` varchar(200) DEFAULT NULL,
  `added_on` datetime(6) NOT NULL,
  `update_on` datetime(6) NOT NULL,
  `symbol` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `master_country`
--

INSERT INTO `master_country` (`id`, `region_name`, `country_name`, `country_code`, `country_flag_code`, `is_active`, `local_currency_code`, `local_currency`, `gbp_average`, `usd_average`, `euro_average`, `added_by`, `added_on`, `update_on`, `symbol`) VALUES
(1, 'AME', 'Angola', NULL, NULL, 1, 'AOA', 'Kwanza', '862.1333', '692.58057', '692.58057', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', 'Kz'),
(2, 'AME', 'Bahrain', NULL, NULL, 1, 'BHD', 'Dinar', '0.4693', '0.37704', '0.37704', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(3, 'AME', 'Botswana', NULL, NULL, 1, 'BWP', 'Pula', '16.6236', '13.35431', '13.35431', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(4, 'AME', 'Cameroon', NULL, NULL, 1, 'XAF', 'Franc', '755.4322', '606.86399', '606.86399', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(5, 'AME', 'Central African Republic', NULL, NULL, 1, 'XOF', 'Franc', '755.4322', '606.86399', '606.86399', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(6, 'AME', 'Democratic Republic of Congo', NULL, NULL, 1, 'CDF', 'Franc', '2817.457', '2263.35766', '2263.35766', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(7, 'AME', 'Deposita International', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(8, 'AME', 'Egypt', NULL, NULL, 1, 'EGP', 'Pound', '38.0869', '30.5965', '30.5965', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(9, 'AME', 'Gabon', NULL, NULL, 1, 'XOF', 'Franc', '755.4322', '606.86399', '606.86399', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(10, 'AME', 'Gambia', NULL, NULL, 1, 'GMD', 'Dalasi', '78.2483', '62.8595', '0.014', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(11, 'AME', 'Ghana', NULL, NULL, 1, 'GHS', 'New Cedi', '14.5407', '11.68105', '11.68105', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(12, 'AME', 'Guinea', NULL, NULL, 1, 'GNF', 'Franc', '10702.5089', '8597.68406', '8597.68406', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(13, 'AME', 'Ivory Coast', NULL, NULL, 1, 'XOF', 'Franc', '755.4322', '606.86399', '606.86399', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(14, 'AME', 'Jordan', NULL, NULL, 1, 'JOD', 'Dinar', '0.8829', '0.70923', '0.70923', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(15, 'AME', 'Kenya', NULL, NULL, 1, 'KES', 'Shilling', '174.2925', '140.01503', '140.01503', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(16, 'AME', 'Lebanon', NULL, NULL, 1, 'LBP', 'Pound', '16639.6147', '13367.1601', '13367.1601', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(17, 'AME', 'Lesotho', NULL, NULL, 1, 'LSL', 'Loti', '22.9458', '18.43315', '18.43315', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(18, 'AME', 'Madagascar', NULL, NULL, 1, 'MGA', 'Ariary', '5534.4983', '4446.04794', '4446.04794', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(19, 'AME', 'Malawi', NULL, NULL, 1, 'MWK', 'Kwacha', '1408.451', '1131.45592', '1131.45592', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(20, 'AME', 'Mozambique', NULL, NULL, 1, 'MZN', 'New Metical', '79.53', '63.88913', '63.88913', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(21, 'AME', 'Namibia', NULL, NULL, 1, 'NAD', 'Dollar', '22.9458', '18.43315', '18.43315', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(22, 'AME', 'Nigeria', NULL, NULL, 1, 'NGN', 'Naira', '807.8061', '648.93769', '648.93769', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(23, 'AME', 'Oman', NULL, NULL, 1, 'OMR', 'Rial', '0.4792', '0.38492', '0.38492', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(24, 'AME', 'Qatar', NULL, NULL, 1, 'QAR', 'Riyal', '4.5459', '3.65185', '3.65185', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(25, 'AME', 'Regional Office', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(26, 'AME', 'Saudi Arabia', NULL, NULL, 1, 'SAR', 'Riyal', '4.6699', '3.75152', '3.75152', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(27, 'AME', 'Sierra Leone', NULL, NULL, 1, 'SLL', 'Leone', '26486.2623', '21277.30216', '21277.30216', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(28, 'AME', 'South Africa - Cash Solutions', NULL, NULL, 1, 'ZAR', 'Rand', '22.9458', '18.43315', '18.43315', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(29, 'AME', 'South Africa - Secure Solutions', NULL, NULL, 1, 'ZAR', 'Rand', '22.9458', '18.43315', '18.43315', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(30, 'AME', 'South Africa - Care and Justice ', NULL, NULL, 1, 'ZAR', 'Rand', '22.9458', '18.43315', '18.43315', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(31, 'AME', 'Tanzania', NULL, NULL, 1, 'TZS', 'Shilling', '3004.7926', '2413.85057', '2413.85057', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(32, 'AME', 'Uganda', NULL, NULL, 1, 'UGX', 'Shilling', '4647.3413', '3733.36504', '3733.36504', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(33, 'AME', 'United Arab Emirates - Abu Dhabi', NULL, NULL, 1, 'AED', 'Dirham', '4.5707', '3.6718', '3.6718', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(34, 'AME', 'United Arab Emirates - Dubai', NULL, NULL, 1, 'AED', 'Dirham', '4.5707', '3.6718', '3.6718', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(35, 'AME', 'Zambia', NULL, NULL, 1, 'ZMW', 'New Kwacha', '25.1954', '20.24031', '20.24031', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(36, 'APAC', 'Bangladesh', NULL, NULL, 1, 'BDT', 'Taka', '134.1128', '107.73732', '107.73732', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '৳'),
(37, 'APAC', 'C&J - Australia', NULL, NULL, 1, 'AUD', 'Dollar', '1.8766', '1.50754', '1.50754', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(38, 'APAC', 'China', NULL, NULL, 1, 'CNY', 'Yuan Renminbi', '8.8191', '7.08468', '7.08468', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(39, 'APAC', 'Guam', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '0.93', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(40, 'APAC', 'Hong Kong', NULL, NULL, 1, 'HKD', 'Dollar', '9.7472', '7.83027', '0.12', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(41, 'APAC', 'India', NULL, NULL, 1, 'INR', 'Rupee', '102.7735', '82.56138', '0.011', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '₹'),
(42, 'APAC', 'Indonesia', NULL, NULL, 1, 'IDR', 'Rupiah', '18937.9383', '15213.48053', '15213.48053', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(43, 'APAC', 'Japan', NULL, NULL, 1, 'JPY', 'Yen', '175.4904', '140.97733', '140.97733', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(44, 'APAC', 'Macau', NULL, NULL, 1, 'MOP', 'Pataca', '10.0396', '8.06515', '8.06515', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(45, 'APAC', 'Nepal', NULL, NULL, 1, 'NPR', 'Rupee', '164.4427', '132.10234', '132.10234', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', 'Rs'),
(46, 'APAC', 'Papua New Guinea', NULL, NULL, 1, 'PGK', 'Kina', '4.4727', '3.5931', '3.5931', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(47, 'APAC', 'Regional Office', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(48, 'APAC', 'Risk Consulting - Hill and Associates', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(49, 'APAC', 'Singapore', NULL, NULL, 1, 'SGD', 'Dollar', '1.6715', '1.34275', '1.34275', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(50, 'APAC', 'Taiwan', NULL, NULL, 1, 'TWD', 'Dollar', '38.7193', '31.10451', '31.10451', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(51, 'APAC', 'Thailand', NULL, NULL, 1, 'THB', 'Baht', '43.3402', '34.81663', '34.81663', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(52, 'Corporate Services', 'AUS Electronic Monitoring', NULL, NULL, 1, 'ILS', 'Shekel', '4.605', '3.69935', '3.69935', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(53, 'Corporate Services', 'Corporate Services / International Business Head Office', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(54, 'Europe', 'Austria', NULL, NULL, 1, 'EUR', 'Euro', '0.86', '1.09', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(55, 'Europe', 'Belgium - Secure Solutions', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(56, 'Europe', 'Czech Republic', NULL, NULL, 1, 'CZK', 'Koruna', '27.5798', '22.15578', '22.15578', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(57, 'Europe', 'Denmark', NULL, NULL, 1, 'DKK', 'Krone', '8.5805', '6.89298', '6.89298', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(58, 'Europe', 'Estonia', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(59, 'Europe', 'France', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(60, 'Europe', 'Greece', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(61, 'Europe', 'Latvia', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(62, 'Europe', 'Lithuania', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(63, 'Europe', 'Luxembourg - Secure Solutions', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(64, 'Europe', 'Malta', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(65, 'Europe', 'Morocco - Secure Solutions', NULL, NULL, 1, 'MAD', 'Dirham', '12.6361', '10.15099', '10.15099', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(66, 'Europe', 'Morocco - Cash Solutions', NULL, NULL, 1, 'MAD', 'Dirham', '12.6361', '10.15099', '10.15099', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(67, 'Europe', 'Netherlands - Secure Solutions', NULL, NULL, 1, 'ANG', 'Guilder', '2.2281', '1.78994', '1.78994', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(68, 'Europe', 'Regional Office', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(69, 'Europe', 'Serbia', NULL, NULL, 1, 'RSD', 'Dinar', '135.0143', '108.46148', '108.46148', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(70, 'Europe', 'Slovakia', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(71, 'Europe', 'Slovenia', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(72, 'Europe', 'Turkey', NULL, NULL, 1, 'TRY', 'New Lira', '29.6886', '23.84986', '23.84986', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(73, 'Europe', 'Ukraine', NULL, NULL, 1, 'UAH', 'Hryvnia', '45.9085', '36.87984', '36.87984', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(74, 'LATAM', 'Argentina', NULL, NULL, 1, 'ARS', 'Peso', '363.1072', '291.69621', '291.69621', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(75, 'LATAM', 'Barbados', NULL, NULL, 1, 'BBD', 'Dollar', '2.4896', '1.99994', '1.99994', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(76, 'LATAM', 'Brazil', NULL, NULL, 1, 'BRL', 'Real', '6.2195', '4.99629', '4.99629', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(77, 'LATAM', 'Chile', NULL, NULL, 1, 'CLP', 'Peso', '1042.8022', '837.71798', '837.71798', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(78, 'LATAM', 'Colombia', NULL, NULL, 1, 'COP', 'Peso', '5399.5698', '4337.65535', '4337.65535', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(79, 'LATAM', 'Costa Rica', NULL, NULL, 1, 'CRC', 'Colon', '676.6552', '543.57983', '543.57983', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(80, 'LATAM', 'Ecuador', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(81, 'LATAM', 'El Salvador', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(82, 'LATAM', 'Grenada', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(83, 'LATAM', 'Guatemala', NULL, NULL, 1, 'GTQ', 'Quetzal', '9.7532', '7.83509', '7.83509', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(84, 'LATAM', 'Nicaragua', NULL, NULL, 1, 'NIO', 'Cordoba', '45.5995', '36.63164', '36.63164', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(85, 'LATAM', 'Paraguay', NULL, NULL, 1, 'PYG', 'Guarani', '9078.6727', '7293.20203', '7293.20203', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(86, 'LATAM', 'Peru', NULL, NULL, 1, 'PEN', 'New Sol', '4.6522', '3.73723', '3.73723', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(87, 'LATAM', 'REGIONal Office', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(88, 'LATAM', 'St. Lucia', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(89, 'LATAM', 'Trinidad and Tobago', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(90, 'LATAM', 'Uruguay', NULL, NULL, 1, 'UYU', 'Peso', '48.0283', '38.58277', '38.58277', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(91, 'UKI', 'Allied Universal Electronic Monitoring', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(92, 'UKI', 'AUS Compliance and Investigations', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(93, 'UKI', 'C&J - Care and Rehabilitation Services', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(94, 'UKI', 'C&J - Employment Support Services', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(95, 'UKI', 'C&J - Health Services', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(96, 'UKI', 'C&J - Patient Transport Services', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(97, 'UKI', 'Facilities Management', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(98, 'UKI', 'Ireland', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(99, 'UKI', 'Regional Office', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(100, 'UKI', 'Risk', NULL, NULL, 1, '#N/A', '#N/A', '1', '1', '1', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(101, 'UKI', 'Secure Solutions UK', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$'),
(102, 'UKI', 'UK - Cash Solutions', NULL, NULL, 1, 'GBP', 'Pound', '1', '0.80333', '0.80333', NULL, '2024-05-31 12:44:44.929483', '2024-05-31 12:45:59.923965', '$');

-- --------------------------------------------------------

--
-- Table structure for table `master_delta_monthly`
--

CREATE TABLE `master_delta_monthly` (
  `id` bigint NOT NULL,
  `position_id` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `base_pay_monthly` varchar(200) DEFAULT NULL,
  `month` varchar(200) DEFAULT NULL,
  `year` varchar(200) DEFAULT NULL,
  `closed_date` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `emp_ref_no` varchar(200) DEFAULT NULL,
  `emp_bu` varchar(200) DEFAULT NULL,
  `curr_summery_key` varchar(200) DEFAULT NULL,
  `current_job` varchar(200) DEFAULT NULL,
  `position_type` varchar(200) DEFAULT NULL,
  `sga_direct` varchar(200) DEFAULT NULL,
  `record_region` varchar(200) DEFAULT NULL,
  `is_recon` int NOT NULL,
  `insert_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `euro_annual_base_pay` varchar(200) DEFAULT NULL,
  `gbp_annual_base_pay` varchar(200) DEFAULT NULL,
  `usd_annual_base_pay` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `master_delta_monthly`
--

INSERT INTO `master_delta_monthly` (`id`, `position_id`, `status`, `base_pay_monthly`, `month`, `year`, `closed_date`, `country`, `emp_ref_no`, `emp_bu`, `curr_summery_key`, `current_job`, `position_type`, `sga_direct`, `record_region`, `is_recon`, `insert_date`, `update_date`, `euro_annual_base_pay`, `gbp_annual_base_pay`, `usd_annual_base_pay`) VALUES
(1, NULL, 'V-IND_11-Software Engineer2', '100', '7', '2024', NULL, 'India', '3032124', NULL, NULL, 'Finance Executive', 'Joiners', 'Admin Labour (SG&A)', 'APAC', 1, '2024-06-27 21:24:16.297269', '2024-06-27 21:32:16.251948', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(2, NULL, NULL, '1000', '1', '2024', NULL, 'Morocco - Cash Solutions', 'A1210', NULL, NULL, 'MD CaRs', 'Joiners', 'Admin Labour (SG&A)', 'Europe', 0, '2024-06-28 18:00:16.835495', '2024-06-28 18:00:16.835520', '1000.0', '1162.7906976744187', '917.4311926605504'),
(3, NULL, NULL, '10', '1', '2024', NULL, 'United Arab Emirates - Dubai', 'A1210', NULL, NULL, 'Commercial Assistant', 'Joiners', 'Admin Labour (SG&A)', 'AME', 0, '2024-06-28 18:21:53.250096', '2024-06-28 18:21:53.250131', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(4, NULL, 'V-UNI_53-WE', '10', '1', '2024', NULL, 'United Arab Emirates - Abu Dhabi', 'A1210', NULL, NULL, 'Commercial Assistant', 'Joiners', 'Admin Labour (SG&A)', 'AME', 1, '2024-06-28 18:52:03.482261', '2024-06-28 18:57:50.549638', '2.723459883435917', '2.1878486883847112', '2.723459883435917');

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
  `CreatedBy` varchar(200) NOT NULL,
  `UpdatedBy` varchar(200) NOT NULL,
  `CreateDate` varchar(200) NOT NULL,
  `CreateTime` varchar(200) NOT NULL,
  `UpdateDate` varchar(200) NOT NULL,
  `UpdateTime` varchar(200) NOT NULL
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
(92, 'joiners', '2', 'Retained Position - Keep Employee', '', '', '', '', '', '', '', ''),
(106, 'user_designation', 'Country-CEO', 'Country CEO', '', '', '', '', '', '', '', ''),
(107, 'user_designation', 'Country-HR', 'Country HR', '', '', '', '', '', '', '', ''),
(108, 'user_designation', 'Country-CFO', 'Country CFO', '', '', '', '', '', '', '', ''),
(109, 'user_designation', 'Regional-CEO', 'Regional CEO', '', '', '', '', '', '', '', ''),
(110, 'user_designation', 'Regional-HRD', 'Regional HRD Director', '', '', '', '', '', '', '', ''),
(111, 'user_designation', 'Regional-HRM', 'Regional HRM Manager', '', '', '', '', '', '', '', ''),
(112, 'user_designation', 'Regional CFO', 'Regional CFO', '', '', '', '', '', '', '', ''),
(113, 'user_designation', 'CHRO', 'Chief Human Resources Officer - International', '', '', '', '', '', '', '', ''),
(114, 'user_designation', 'Group-CEO', 'Group CEO', '', '', '', '', '', '', '', ''),
(115, 'user_designation', 'Group-HR', 'Group HR', '', '', '', '', '', '', '', ''),
(116, 'user_designation', 'Group-CFO', 'Group CFO', '', '', '', '', '', '', '', ''),
(117, 'user_access', 'Read', 'Read Only Role', '', '', '', '', '', '', '', ''),
(118, 'user_access', 'Write', 'Edit Role', '', '', '', '', '', '', '', ''),
(119, 'position_status', '3', 'Closed', '', '', '', '', '', '', '', ''),
(120, 'position_status', '1', 'Assigned', '', '', '', '', '', '', '', ''),
(121, 'position_status', '1', 'Assigned', '', '', '', '', '', '', '', ''),
(122, 'position_status', '3', 'Closed', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_employee_history`
--

CREATE TABLE `master_employee_history` (
  `id` bigint NOT NULL,
  `action_type` varchar(200) DEFAULT NULL,
  `position_id` varchar(200) DEFAULT NULL,
  `emp_ref_no` varchar(200) DEFAULT NULL,
  `emp_start_date` varchar(200) DEFAULT NULL,
  `emp_end_date` varchar(200) DEFAULT NULL,
  `postion_baseline_total` varchar(200) DEFAULT NULL,
  `pos_gross_pay` varchar(200) DEFAULT NULL,
  `pos_net_pay` varchar(200) DEFAULT NULL,
  `position_pos_add_cash` varchar(200) DEFAULT NULL,
  `position_pos_bonus` varchar(200) DEFAULT NULL,
  `pos_car_allowance_type` varchar(200) DEFAULT NULL,
  `pos_car_allowance` varchar(200) DEFAULT NULL,
  `pos_commision_plan` varchar(200) DEFAULT NULL,
  `total_cost` varchar(200) DEFAULT NULL,
  `new_annual_amount` varchar(200) DEFAULT NULL,
  `emp_reason` varchar(200) DEFAULT NULL,
  `remarks` longtext NOT NULL,
  `updated_by` varchar(200) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `master_employee_history`
--

INSERT INTO `master_employee_history` (`id`, `action_type`, `position_id`, `emp_ref_no`, `emp_start_date`, `emp_end_date`, `postion_baseline_total`, `pos_gross_pay`, `pos_net_pay`, `position_pos_add_cash`, `position_pos_bonus`, `pos_car_allowance_type`, `pos_car_allowance`, `pos_commision_plan`, `total_cost`, `new_annual_amount`, `emp_reason`, `remarks`, `updated_by`, `created_date`, `updated_date`) VALUES
(1, 'assign', 'LEB_32', 'None', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', NULL, '', 'adminworkflow@in.g4s.com', '2024-06-28 18:23:36.871643', '2024-06-28 18:23:36.871680'),
(2, 'un-assign', 'LEB_32', '5816138', '2024-06-01', '2024-07-01', '1000', '1000', '0', '0', '0', '', '0', 'No', '120000', '0', NULL, '', 'adminworkflow@in.g4s.com', '2024-06-28 18:29:27.702177', '2024-06-28 18:29:27.702208'),
(3, 'un-assign', 'LEB_32', '', '', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', 'adminworkflow@in.g4s.com', '2024-06-28 18:29:40.283771', '2024-06-28 18:29:40.283791'),
(4, 'un-assign', 'LEB_32', '', '', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', 'adminworkflow@in.g4s.com', '2024-06-28 18:29:58.284635', '2024-06-28 18:29:58.284657'),
(5, 'un-assign', 'LEB_32', '', '', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', 'adminworkflow@in.g4s.com', '2024-06-28 18:32:15.601906', '2024-06-28 18:32:15.601928'),
(6, 'un-assign', 'LEB_32', '', '', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', 'adminworkflow@in.g4s.com', '2024-06-28 18:33:51.760175', '2024-06-28 18:33:51.760198'),
(7, 'un-assign', 'LEB_32', '', '', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', 'adminworkflow@in.g4s.com', '2024-06-28 18:36:01.954238', '2024-06-28 18:36:01.954274'),
(8, 'un-assign', 'ANG_12', '450616A', '2024-06-01', '2024-06-27', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', '0', '24000', NULL, 'employee goes', 'adminworkflow@in.g4s.com', '2024-06-28 18:50:02.914887', '2024-06-28 18:50:02.914921'),
(9, 'un-assign', 'UNI_53', 'None', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '10', NULL, '', 'adminworkflow@in.g4s.com', '2024-06-28 18:57:55.294803', '2024-06-28 18:57:55.294823'),
(10, 'un-assign', 'UNI_53', 'None', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '10', NULL, '', 'adminworkflow@in.g4s.com', '2024-06-28 18:58:07.241487', '2024-06-28 18:58:07.241519'),
(11, 'un-assign', 'BAH_63', '122112', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', '0', '216300', 'None', 'None', 'adminworkflow@in.g4s.com', '2024-06-28 19:05:43.657286', '2024-06-28 19:05:43.657317'),
(12, 'un-assign', 'BAH_63', '', '', '', '', '', '', '', '', '', '', '', '0', '0', 'Leaving - Redundant', 'sdafadsf', 'adminworkflow@in.g4s.com', '2024-06-28 19:06:33.717516', '2024-06-28 19:06:33.717536'),
(13, 'un-assign', 'BAH_62', '3031123', '2024-06-01', '2024-06-27', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', '0', '216300', 'None', 'None', 'adminworkflow@in.g4s.com', '2024-06-28 19:21:57.753965', '2024-06-28 19:21:57.753987'),
(14, 'assign', 'BAH_62', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'None', 'None', 'adminworkflow@in.g4s.com', '2024-06-28 19:22:44.737389', '2024-06-28 19:22:44.737417'),
(15, 'un-assign', 'BAH_62', '30311231111', '2024-06-01', '2024-06-19', '', '', '', '', '', '', '', '', '0', '0', 'Redeployed to other role', 'Emp Comment', 'adminworkflow@in.g4s.com', '2024-06-28 19:22:44.756376', '2024-06-28 19:22:44.756403'),
(16, 'assign', 'BAH_62', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'Redeployed to other role', 'Emp Comment', 'adminworkflow@in.g4s.com', '2024-06-28 19:26:57.689658', '2024-06-28 19:26:57.689703'),
(17, 'assign', 'ANG_20', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'Leaving - voluntarily', 'sdfsf', 'adminworkflow@in.g4s.com', '2024-06-28 19:36:35.574700', '2024-06-28 19:36:35.574729'),
(18, 'un-assign', 'BAH_61', '62805', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', '37000', 'None', 'None', '', '2024-06-28 19:37:16.688477', '2024-06-28 19:37:16.688497'),
(19, 'un-assign', 'BAH_61', '', '2024-06-29', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', '0', '37000', 'None', 'None', 'adminworkflow@in.g4s.com', '2024-06-28 19:38:58.241834', '2024-06-28 19:38:58.241855'),
(20, 'un-assign', 'BAH_59', '1000191A', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', '216300', 'None', 'None', '', '2024-06-28 19:42:00.097656', '2024-06-28 19:42:00.097676'),
(21, 'un-assign', 'BAH_57', '450591A', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', '21734', 'None', 'None', '', '2024-06-28 19:43:31.266860', '2024-06-28 19:43:31.266895'),
(22, 'un-assign', 'BAH_57', '', '2024-07-06', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'None', 'None', 'adminworkflow@in.g4s.com', '2024-06-28 19:44:05.338568', '2024-06-28 19:44:05.338587'),
(23, 'un-assign', 'BAH_56', '53671', '2024-06-26', '2024-07-31', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', '0', '286383', 'None', 'None', 'adminworkflow@in.g4s.com', '2024-06-28 20:02:40.913327', '2024-06-28 20:02:40.913350'),
(24, 'un-assign', 'BAH_56', '', '2024-07-28', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'None', 'The employee will join on 28th', 'adminworkflow@in.g4s.com', '2024-06-28 20:04:08.784246', '2024-06-28 20:04:08.784269'),
(25, 'un-assign', 'BAH_56', '', '2024-07-28', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'None', 'The employee will join on 28th', 'adminworkflow@in.g4s.com', '2024-06-28 20:04:08.814870', '2024-06-28 20:04:08.814893'),
(26, 'assign', 'BAH_56', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'None', 'The employee will join on 28th', 'adminworkflow@in.g4s.com', '2024-06-28 20:06:30.629960', '2024-06-28 20:06:30.629997'),
(27, 'un-assign', 'BAH_56', 'SUN_123', '', '', '', '', '', '', '', '', '', '', '0', '0', 'None', 'The employee will join on 28th', 'adminworkflow@in.g4s.com', '2024-06-28 20:09:40.218685', '2024-06-28 20:09:40.218707'),
(28, 'un-assign', 'BAH_56', '', '2024-06-26', '', '', '', '', '', '', '', '', '', '0', '0', 'None', 'The employee will join on 28th', 'adminworkflow@in.g4s.com', '2024-06-28 20:10:24.269860', '2024-06-28 20:10:24.269891'),
(29, 'un-assign', 'BAH_56', '', '2024-06-26', '', '', '', '', '', '', '', '', '', '0', '0', 'None', 'The employee will join on 28th', 'adminworkflow@in.g4s.com', '2024-06-28 20:10:47.363452', '2024-06-28 20:10:47.363473'),
(30, 'un-assign', 'BAH_56', '', '2024-06-26', '', '', '', '', '', '', '', '', '', '0', '0', 'None', 'The employee will join on 28th', 'adminworkflow@in.g4s.com', '2024-06-28 20:10:47.380745', '2024-06-28 20:10:47.380765'),
(31, 'assign', 'ANG_64', '', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', '', '', 'adminworkflow@in.g4s.com', '2024-07-01 11:18:29.694900', '2024-07-01 11:18:29.694927'),
(32, 'un-assign', 'ANG_64', '1234567890', '2024-06-01', '2024-07-31', '10000', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Promoted to new role', 'this is to assgin new employee', 'adminworkflow@in.g4s.com', '2024-07-01 11:29:15.065868', '2024-07-01 11:29:15.065888'),
(33, 'un-assign', 'ANG_64', '1234567890', '2024-07-01', '2024-07-31', '10000', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Promoted to new role', 'this is to assgin new employee', 'adminworkflow@in.g4s.com', '2024-07-01 12:03:49.841844', '2024-07-01 12:03:49.841863'),
(34, 'un-assign', 'ANG_64', '3242424234', '2024-07-01', '2024-07-27', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Redeployed to other role', 'fgdfgfdgdf', 'adminworkflow@in.g4s.com', '2024-07-01 12:12:17.275459', '2024-07-01 12:12:17.275478'),
(35, 'assign', 'ANG_65', 'None', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', '', '', 'adminworkflow@in.g4s.com', '2024-07-01 12:14:45.972562', '2024-07-01 12:14:45.972587'),
(36, 'un-assign', 'ANG_65', '324234224', '2024-07-01', '', '1000', '100', '0', '0', '0', '', '0', 'No', '0', '0', '', 'assign new employee', 'adminworkflow@in.g4s.com', '2024-07-01 12:19:19.467390', '2024-07-01 12:19:19.467412'),
(37, 'assign', 'ANG_67', '1234567877', '', '', '10000', '0', '0', '0', '0', '', '0', 'No', '0', '0', '', 'new employee', 'adminworkflow@in.g4s.com', '2024-07-01 13:11:30.198893', '2024-07-01 13:11:30.198915'),
(38, 'assign', 'ANG_67', '435353535', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Promoted to new role', 'assign employee', 'adminworkflow@in.g4s.com', '2024-07-01 14:30:40.953006', '2024-07-01 14:30:40.953057'),
(39, 'assign', 'ANG_67', '12345678111', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Promoted to new role', 'assign employee', 'adminworkflow@in.g4s.com', '2024-07-01 14:33:47.932893', '2024-07-01 14:33:47.932921'),
(40, 'assign', 'ANG_67', '', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Promoted to new role', 'assign employee', 'adminworkflow@in.g4s.com', '2024-07-01 14:35:43.136345', '2024-07-01 14:35:43.136372'),
(41, 'assign', 'ANG_66', '5345435', '2024-06-07', '2024-07-24', '1000', '0', '0', '0', '0', '', '0', 'No', '0', '0', '', 'assign employee', 'adminworkflow@in.g4s.com', '2024-07-01 14:48:25.212225', '2024-07-01 14:48:25.212250'),
(42, 'un-assign', 'ANG_66', '', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', '', 'assign employee', 'adminworkflow@in.g4s.com', '2024-07-01 14:50:51.272146', '2024-07-01 14:50:51.272166'),
(43, 'un-assign', 'ANG_67', '', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Promoted to new role', 'sadhf;lksajflksj', 'adminworkflow@in.g4s.com', '2024-07-01 14:51:10.171666', '2024-07-01 14:51:10.171686'),
(44, 'assign', 'ANG_66', '456456464', '2024-06-01', '2024-07-01', '10000', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Promoted to new role', 'assign new user', 'adminworkflow@in.g4s.com', '2024-07-01 14:52:19.591935', '2024-07-01 14:52:19.591963'),
(45, 'un-assign', 'ANG_66', '456456464', '2024-06-01', '2024-07-01', '10000', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Promoted to new role', 'assign new user', 'adminworkflow@in.g4s.com', '2024-07-01 14:52:19.595425', '2024-07-01 14:52:19.595446'),
(46, 'assign', 'ANG_66', '451177', '', '', '322432', '', '', '', '', '', '', '', '0', '0', 'Promoted to new role', 'assign new user', 'adminworkflow@in.g4s.com', '2024-07-01 14:59:33.651660', '2024-07-01 14:59:33.651686'),
(47, 'assign', 'ANG_67', '111111111111111', '2024-07-01', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Promoted to new role', 'sadhf;lksajflksj', 'adminworkflow@in.g4s.com', '2024-07-01 15:00:53.746840', '2024-07-01 15:00:53.746869'),
(48, 'un-assign', 'ANG_67', '', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Promoted to new role', 'sadhf;lksajflksj', 'adminworkflow@in.g4s.com', '2024-07-01 15:04:17.161323', '2024-07-01 15:04:17.161359'),
(49, 'un-assign', 'ANG_66', '', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Leaving - voluntarily', 'un-assign', 'adminworkflow@in.g4s.com', '2024-07-01 15:04:54.335347', '2024-07-01 15:04:54.335383'),
(50, 'assign', 'ANG_67', '2222222222222', '2024-06-15', '2024-07-18', '100', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Promoted to new role', 'new emp assgin', 'adminworkflow@in.g4s.com', '2024-07-01 15:05:38.384043', '2024-07-01 15:05:38.384078'),
(51, 'un-assign', 'ANG_67', '', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Promoted to new role', 'new emp assgin', 'adminworkflow@in.g4s.com', '2024-07-01 15:07:04.332186', '2024-07-01 15:07:04.332205'),
(52, 'un-assign', 'ANG_67', '', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Promoted to new role', '', 'adminworkflow@in.g4s.com', '2024-07-01 15:07:20.129442', '2024-07-01 15:07:20.129463'),
(53, 'assign', 'ANG_67', '333333333', '2024-07-01', '2024-07-01', '101010', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Promoted to new role', 'testest2', 'adminworkflow@in.g4s.com', '2024-07-01 15:08:01.731160', '2024-07-01 15:08:01.731196'),
(54, 'un-assign', 'ANG_67', '', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Promoted to new role', 'testest2', 'adminworkflow@in.g4s.com', '2024-07-01 15:08:18.555705', '2024-07-01 15:08:18.555725'),
(55, 'assign', 'ANG_67', '4444444444', '2024-06-29', '2024-07-01', '100', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Redeployed to other role', 'again assign user', 'adminworkflow@in.g4s.com', '2024-07-01 15:12:37.071182', '2024-07-01 15:12:37.071205'),
(56, 'un-assign', 'ANG_67', '4444444444', '2024-06-29', '2024-07-01', '100', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Redeployed to other role', 'again assign user', 'adminworkflow@in.g4s.com', '2024-07-01 15:12:37.074740', '2024-07-01 15:12:37.074759'),
(57, 'assign', 'ANG_67', '444444444', '2024-06-25', '2024-07-01', '', '', '', '', '', '', '', '', '0', '0', 'Redeployed to other role', 'again assign user', 'adminworkflow@in.g4s.com', '2024-07-01 15:13:56.216724', '2024-07-01 15:13:56.216748'),
(58, 'un-assign', 'ANG_67', '444444444', '2024-06-25', '2024-07-01', '', '', '', '', '', '', '', '', '0', '0', 'Redeployed to other role', 'again assign user', 'adminworkflow@in.g4s.com', '2024-07-01 15:13:56.220366', '2024-07-01 15:13:56.220386'),
(59, 'assign', 'ANG_67', '333333333333', '2024-06-26', '2024-07-25', '1010101', '', '', '', '', '', '', '', '0', '0', 'Redeployed to other role', 'again assign user', 'adminworkflow@in.g4s.com', '2024-07-01 15:15:52.754646', '2024-07-01 15:15:52.754673'),
(60, 'un-assign', 'ANG_67', '333333333333', '2024-06-26', '2024-06-30', '1010101', '', '', '', '', '', '', '', '0', '0', 'Redeployed to other role', 'enter postion end date', 'adminworkflow@in.g4s.com', '2024-07-01 15:16:23.778830', '2024-07-01 15:16:23.778850'),
(61, 'assign', 'ANG_66', '454455', '2024-06-29', '2024-07-03', '10101010', '0', '0', '0', '0', '', '0', 'No', '0', '0', 'Leaving - voluntarily', 'un-assign', 'adminworkflow@in.g4s.com', '2024-07-01 15:21:47.901566', '2024-07-01 15:21:47.901590'),
(62, 'assign', 'IND_68', '12233', '2024-06-30', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', '', 'The candidate has been selected for this position', 'adminworkflow@in.g4s.com', '2024-07-01 15:25:54.059058', '2024-07-01 15:25:54.059081'),
(63, 'un-assign', 'IND_68', '', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', '', 'The candidate backed-out', 'adminworkflow@in.g4s.com', '2024-07-01 15:28:29.090482', '2024-07-01 15:28:29.090502'),
(64, 'assign', 'IND_68', '1234444', '', '', '0', '0', '0', '0', '0', '', '0', 'No', '0', '0', '', 'Found new candidate', 'adminworkflow@in.g4s.com', '2024-07-01 15:29:28.613660', '2024-07-01 15:29:28.613702');

-- --------------------------------------------------------

--
-- Table structure for table `master_event`
--

CREATE TABLE `master_event` (
  `id` bigint NOT NULL,
  `event_id` varchar(200) DEFAULT NULL,
  `event_description` varchar(255) DEFAULT NULL,
  `cerated_by` varchar(200) DEFAULT NULL,
  `created_on` datetime(6) NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_file`
--

CREATE TABLE `master_file` (
  `id` bigint NOT NULL,
  `region` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
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
  `emp_grade` varchar(200) DEFAULT NULL,
  `emp_function` varchar(200) DEFAULT NULL,
  `region` varchar(200) DEFAULT NULL,
  `emp_bu` varchar(200) DEFAULT NULL,
  `emp_e_date` varchar(200) DEFAULT NULL,
  `fte` varchar(200) DEFAULT NULL,
  `sga_indirect` varchar(200) DEFAULT NULL,
  `sup_name` varchar(200) DEFAULT NULL,
  `sup_job_title` varchar(200) DEFAULT NULL,
  `local_currency` varchar(200) DEFAULT NULL,
  `annual_base_pay` varchar(200) DEFAULT NULL,
  `allowance_total` varchar(200) DEFAULT NULL,
  `car_allowance` varchar(200) DEFAULT NULL,
  `commision_plan` varchar(200) DEFAULT NULL,
  `bonus` varchar(200) DEFAULT NULL,
  `t_month` int NOT NULL,
  `t_year` int NOT NULL,
  `country` varchar(200) DEFAULT NULL,
  `key_pair` varchar(200) DEFAULT NULL,
  `is_processed` int NOT NULL,
  `summery_key` varchar(200) DEFAULT NULL,
  `position_id` varchar(200) DEFAULT NULL,
  `empno_bu_key` varchar(200) DEFAULT NULL,
  `record_region` varchar(200) DEFAULT NULL,
  `new_j_p_name` varchar(200) DEFAULT NULL,
  `new_j_pos_id` varchar(200) DEFAULT NULL,
  `position_end_date` date DEFAULT NULL,
  `new_annual_amount` varchar(200) DEFAULT NULL,
  `payroll_burden` varchar(200) DEFAULT NULL,
  `total_cost` varchar(200) DEFAULT NULL,
  `pos_gross_pay` varchar(200) DEFAULT NULL,
  `pos_net_pay` varchar(200) DEFAULT NULL,
  `postion_baseline_total` varchar(200) DEFAULT NULL,
  `euro_annual_base_pay` varchar(200) DEFAULT NULL,
  `gbp_annual_base_pay` varchar(200) DEFAULT NULL,
  `usd_annual_base_pay` varchar(200) DEFAULT NULL,
  `euro_new_annual_base_pay` varchar(200) DEFAULT NULL,
  `gbp_new_annual_base_pay` varchar(200) DEFAULT NULL,
  `usd_new_annual_base_pay` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `master_monthly_baseline`
--

INSERT INTO `master_monthly_baseline` (`id`, `emp_ref_no`, `current_job`, `emp_grade`, `emp_function`, `region`, `emp_bu`, `emp_e_date`, `fte`, `sga_indirect`, `sup_name`, `sup_job_title`, `local_currency`, `annual_base_pay`, `allowance_total`, `car_allowance`, `commision_plan`, `bonus`, `t_month`, `t_year`, `country`, `key_pair`, `is_processed`, `summery_key`, `position_id`, `empno_bu_key`, `record_region`, `new_j_p_name`, `new_j_pos_id`, `position_end_date`, `new_annual_amount`, `payroll_burden`, `total_cost`, `pos_gross_pay`, `pos_net_pay`, `postion_baseline_total`, `euro_annual_base_pay`, `gbp_annual_base_pay`, `usd_annual_base_pay`, `euro_new_annual_base_pay`, `gbp_new_annual_base_pay`, `usd_new_annual_base_pay`) VALUES
(1, '450616A', 'Commercial Assistant', 'E2', 'Finance', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', 'INR', '100', '0', NULL, NULL, NULL, 7, 2024, 'India', 'IND_450616A_RISK MANAGEMENT', 0, NULL, 'IND_1', NULL, 'APAC', NULL, NULL, NULL, '100', '200', '100', '100', '200', NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(2, '32893', 'MD CaRs', 'A', 'Operations Support', 'APAC', 'Risk Management', NULL, '1', 'Indirect Labour (Indirect)', 'Fiona Walters', 'Regional CEO, UK&I', 'INR', '100', '0', NULL, NULL, NULL, 7, 2024, 'India', 'IND_32893_RISK MANAGEMENT', 0, NULL, 'IND_2', NULL, 'APAC', NULL, NULL, NULL, '100', '0', NULL, '0', '0', NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(3, '53671', 'Managing Director Cash UK', 'B2', 'General Management', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Charlie Baillieu', 'CFO - International', 'INR', '100', '0', NULL, NULL, NULL, 7, 2024, 'India', 'IND_53671_RISK MANAGEMENT', 0, NULL, 'IND_3', NULL, 'APAC', NULL, NULL, NULL, '100', '0', NULL, '0', '0', NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(4, '450591A', 'Billing (Budgeted 0.6 - Allied 0.4)', 'F1', 'Finance', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Siobhan Smith', 'O2C Assistant Manager', 'INR', '100', '0', NULL, NULL, '10', 7, 2024, 'India', 'IND_450591A_RISK MANAGEMENT', 0, NULL, 'IND_4', NULL, 'APAC', NULL, NULL, NULL, '100', '0', NULL, '0', '0', NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(5, '38459', 'Managing Director - FM&PS', 'A', 'General Management', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'INR', '100', '0', NULL, NULL, NULL, 7, 2024, 'India', 'IND_38459_RISK MANAGEMENT', 0, NULL, 'IND_5', NULL, 'APAC', NULL, NULL, NULL, '100', '0', NULL, '0', '0', NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(6, '1000191A', 'Managing Director SSUK', 'A', 'General Management', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'BHD', '100', '0', NULL, NULL, NULL, 7, 2024, 'India', 'IND_1000191A_RISK MANAGEMENT', 0, NULL, 'IND_6', NULL, 'APAC', NULL, NULL, NULL, '100', '0', NULL, '0', '0', NULL, '265.22384892849567', '213.08331557639036', '265.22384892849567', '265.22384892849567', '213.08331557639036', '265.22384892849567'),
(7, '39393', 'Management Accountant - Five Wells', 'A', 'Finance', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Jonathan Foster', 'Finance BP - CADs & CS', 'INR', '100', '0', NULL, NULL, NULL, 7, 2024, 'India', 'IND_39393_RISK MANAGEMENT', 0, NULL, 'IND_7', NULL, 'APAC', NULL, NULL, NULL, '100', '0', NULL, '0', '0', NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(8, '62805', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', 'GBP', '100', '0', NULL, NULL, NULL, 7, 2024, 'India', 'IND_62805_RISK MANAGEMENT', 0, NULL, 'IND_8', NULL, 'APAC', NULL, NULL, NULL, '100', '0', NULL, '0', '0', NULL, '124.48184432300549', '100.0', '124.48184432300549', '124.48184432300549', '100.0', '124.48184432300549'),
(9, '3031123', 'Finance Executive', 'B2', 'General Management', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'INR', '100', '0', NULL, NULL, NULL, 7, 2024, 'India', 'IND_3031123_RISK MANAGEMENT', 0, NULL, 'IND_9', NULL, 'APAC', NULL, NULL, NULL, '100', '0', NULL, '0', '0', NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(10, '3032124', 'Finance Executive', 'B2', 'General Management', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'INR', '100', '0', NULL, NULL, NULL, 7, 2024, 'India', 'IND_3032124_RISK MANAGEMENT', 0, NULL, NULL, NULL, 'APAC', NULL, NULL, NULL, '100', '0', NULL, '0', '0', NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(11, '450616A', 'Commercial Assistant', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', 'AOA', '24000', '0', NULL, NULL, NULL, 2, 2024, 'Angola', 'ANG_450616A_RISK MANAGEMENT', 0, NULL, 'ANG_12', NULL, 'AME', NULL, NULL, NULL, '24000', '200', '100', '100', '200', NULL, '34.65300795256211', '27.837922511518812', '34.65300795256211', '34.65300795256211', '27.837922511518812', '34.65300795256211'),
(12, '32893', 'MD CaRs', 'A', 'Operations Support', 'AME', 'Risk Management', NULL, '1', 'Indirect Labour (Indirect)', 'Fiona Walters', 'Regional CEO, UK&I', 'AOA', '272950', '0', NULL, NULL, NULL, 2, 2024, 'Angola', 'ANG_32893_RISK MANAGEMENT', 0, NULL, 'ANG_13', NULL, 'AME', NULL, NULL, NULL, '272950', '0', NULL, '0', '0', NULL, '394.10577169382617', '316.5983728966275', '394.10577169382617', '394.10577169382617', '316.5983728966275', '394.10577169382617'),
(13, '53671', 'Managing Director Cash UK', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Charlie Baillieu', 'CFO - International', 'AOA', '286383', '0', NULL, NULL, NULL, 2, 2024, 'Angola', 'ANG_53671_RISK MANAGEMENT', 0, NULL, 'ANG_14', NULL, 'AME', NULL, NULL, NULL, '286383', '0', NULL, '0', '0', NULL, '413.5013490199415', '332.17949010901214', '413.5013490199415', '413.5013490199415', '332.17949010901214', '413.5013490199415'),
(14, '450591A', 'Billing (Budgeted 0.6 - Allied 0.4)', 'F1', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Siobhan Smith', 'O2C Assistant Manager', 'AOA', '21734', '0', NULL, NULL, '10', 2, 2024, 'Angola', 'ANG_450591A_RISK MANAGEMENT', 0, NULL, 'ANG_15', NULL, 'AME', NULL, NULL, NULL, '21734', '0', NULL, '0', '0', NULL, '31.381186451707705', '25.209558661056242', '31.381186451707705', '31.381186451707705', '25.209558661056242', '31.381186451707705'),
(15, '38459', 'Managing Director - FM&PS', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'AOA', '209708', '0', NULL, NULL, NULL, 2, 2024, 'Angola', 'ANG_38459_RISK MANAGEMENT', 0, NULL, 'ANG_16', NULL, 'AME', NULL, NULL, NULL, '209708', '0', NULL, '0', '0', NULL, '302.7922079881623', '243.24312725189947', '302.7922079881623', '302.7922079881623', '243.24312725189947', '302.7922079881623'),
(16, '1000191A', 'Managing Director SSUK', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'AOA', '216300', '0', NULL, NULL, NULL, 2, 2024, 'Angola', 'ANG_1000191A_RISK MANAGEMENT', 0, NULL, 'ANG_17', NULL, 'AME', NULL, NULL, NULL, '216300', '0', NULL, '0', '0', NULL, '312.31023417246604', '250.88927663506328', '312.31023417246604', '312.31023417246604', '250.88927663506328', '312.31023417246604'),
(17, '39393', 'Management Accountant - Five Wells', 'A', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Jonathan Foster', 'Finance BP - CADs & CS', 'AOA', '64310', '0', NULL, NULL, NULL, 2, 2024, 'Angola', 'ANG_39393_RISK MANAGEMENT', 0, NULL, 'ANG_18', NULL, 'AME', NULL, NULL, NULL, '64310', '0', NULL, '0', '0', NULL, '92.8556225595529', '74.59403319649061', '92.8556225595529', '92.8556225595529', '74.59403319649061', '92.8556225595529'),
(18, '62805', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', 'AOA', '37000', '0', NULL, NULL, NULL, 2, 2024, 'Angola', 'ANG_62805_RISK MANAGEMENT', 0, NULL, 'ANG_19', NULL, 'AME', NULL, NULL, NULL, '37000', '0', NULL, '0', '0', NULL, '53.423387260199924', '42.91679720525817', '53.423387260199924', '53.423387260199924', '42.91679720525817', '53.423387260199924'),
(19, '3031123', 'Finance Executive', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'AOA', '216300', '0', NULL, NULL, NULL, 2, 2024, 'Angola', 'ANG_3031123_RISK MANAGEMENT', 0, NULL, 'ANG_20', NULL, 'AME', NULL, NULL, NULL, '216300', '0', NULL, '0', '0', NULL, '312.31023417246604', '250.88927663506328', '312.31023417246604', '312.31023417246604', '250.88927663506328', '312.31023417246604'),
(20, '3032123', 'Finance Executive', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'AOA', '216300', '0', NULL, NULL, NULL, 2, 2024, 'Angola', 'ANG_3032123_RISK MANAGEMENT', 0, NULL, 'ANG_21', NULL, 'AME', NULL, NULL, NULL, '216300', '0', NULL, '0', '0', NULL, '312.31023417246604', '250.88927663506328', '312.31023417246604', '312.31023417246604', '250.88927663506328', '312.31023417246604'),
(21, 'A1200', 'Commercial Assistant', 'E2', 'Finance', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', 'EUR', '1000', '0', NULL, NULL, '10', 1, 2024, 'Morocco - Cash Solutions', 'MOR_A1200_RISK MANAGEMENT', 0, NULL, 'MOR_22', NULL, 'Europe', NULL, NULL, '2024-06-29', '1000', '10', '0', '0', '0', NULL, '1000.0', '1162.7906976744187', '917.4311926605504', '1000.0', '1162.7906976744187', '917.4311926605504'),
(22, 'A1201', 'Managing Director Cash UK', 'A', 'Operations Support', 'Europe', 'Risk Management', NULL, '1', 'Indirect Labour (Indirect)', 'Fiona Walters', 'Regional CEO, UK&I', 'EUR', '1000', '0', NULL, NULL, '10', 1, 2024, 'Morocco - Cash Solutions', 'MOR_A1201_RISK MANAGEMENT', 0, NULL, 'MOR_23', NULL, 'Europe', NULL, NULL, '2024-06-29', '1000', '10', '0', '0', '0', NULL, '1000.0', '1162.7906976744187', '917.4311926605504', '1000.0', '1162.7906976744187', '917.4311926605504'),
(23, 'A1202', 'Managing Director Cash UK', 'B2', 'General Management', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Charlie Baillieu', 'CFO - International', 'EUR', '1000', '0', NULL, NULL, '10', 1, 2024, 'Morocco - Cash Solutions', 'MOR_A1202_RISK MANAGEMENT', 0, NULL, 'MOR_24', NULL, 'Europe', NULL, NULL, '2024-06-29', '1000', '10', '0', '0', '0', NULL, '1000.0', '1162.7906976744187', '917.4311926605504', '1000.0', '1162.7906976744187', '917.4311926605504'),
(24, 'A1203', 'Billing (Budgeted 0.6 - Allied 0.4)', 'F1', 'Finance', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Siobhan Smith', 'O2C Assistant Manager', 'EUR', '1000', '0', NULL, NULL, '10', 1, 2024, 'Morocco - Cash Solutions', 'MOR_A1203_RISK MANAGEMENT', 0, NULL, 'MOR_25', NULL, 'Europe', NULL, NULL, '2024-06-29', '1000', '10', '0', '0', '0', NULL, '1000.0', '1162.7906976744187', '917.4311926605504', '1000.0', '1162.7906976744187', '917.4311926605504'),
(25, 'A1204', 'Managing Director - FM&PS', 'A', 'General Management', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'EUR', '1000', '0', NULL, NULL, '10', 1, 2024, 'Morocco - Cash Solutions', 'MOR_A1204_RISK MANAGEMENT', 0, NULL, 'MOR_26', NULL, 'Europe', NULL, NULL, '2024-06-29', '1000', '10', '0', '0', '0', NULL, '1000.0', '1162.7906976744187', '917.4311926605504', '1000.0', '1162.7906976744187', '917.4311926605504'),
(26, 'A1205', 'Managing Director SSUK', 'A', 'General Management', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'EUR', '1000', '0', NULL, NULL, '10', 1, 2024, 'Morocco - Cash Solutions', 'MOR_A1205_RISK MANAGEMENT', 0, NULL, 'MOR_27', NULL, 'Europe', NULL, NULL, '2024-06-29', '1000', '10', '0', '0', '0', NULL, '1000.0', '1162.7906976744187', '917.4311926605504', '1000.0', '1162.7906976744187', '917.4311926605504'),
(27, 'A1206', 'Management Accountant - Five Wells', 'A', 'Finance', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Jonathan Foster', 'Finance BP - CADs & CS', 'EUR', '1000', '0', NULL, NULL, '10', 1, 2024, 'Morocco - Cash Solutions', 'MOR_A1206_RISK MANAGEMENT', 0, NULL, 'MOR_28', NULL, 'Europe', NULL, NULL, '2024-06-29', '1000', '10', '0', '0', '0', NULL, '1000.0', '1162.7906976744187', '917.4311926605504', '1000.0', '1162.7906976744187', '917.4311926605504'),
(28, 'A1207', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', 'EUR', '1000', '0', NULL, NULL, '10', 1, 2024, 'Morocco - Cash Solutions', 'MOR_A1207_RISK MANAGEMENT', 0, NULL, 'MOR_29', NULL, 'Europe', NULL, NULL, '2024-06-29', '1000', '10', '0', '0', '0', NULL, '1000.0', '1162.7906976744187', '917.4311926605504', '1000.0', '1162.7906976744187', '917.4311926605504'),
(29, 'A1208', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', 'EUR', '1000', '0', NULL, NULL, '10', 1, 2024, 'Morocco - Cash Solutions', 'MOR_A1208_RISK MANAGEMENT', 0, NULL, 'MOR_30', NULL, 'Europe', NULL, NULL, '2024-06-29', '1000', '10', '0', '0', '0', NULL, '1000.0', '1162.7906976744187', '917.4311926605504', '1000.0', '1162.7906976744187', '917.4311926605504'),
(30, 'A1209', 'Commercial Assistant', 'E2', 'Finance', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', 'EUR', '1000', '0', NULL, NULL, '10', 1, 2024, 'Morocco - Cash Solutions', 'MOR_A1209_RISK MANAGEMENT', 0, NULL, 'MOR_31', NULL, 'Europe', NULL, NULL, '2024-06-29', '1000', '10', '0', '0', '0', NULL, '1000.0', '1162.7906976744187', '917.4311926605504', '1000.0', '1162.7906976744187', '917.4311926605504'),
(31, 'A1210', 'MD CaRs', 'C2', 'General Management', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', 'EUR', '1000', '0', NULL, NULL, '10', 1, 2024, 'Morocco - Cash Solutions', 'MOR_A1210_RISK MANAGEMENT', 0, NULL, NULL, NULL, 'Europe', NULL, NULL, '2024-06-29', '1000', '10', '0', '0', '0', NULL, '1000.0', '1162.7906976744187', '917.4311926605504', '1000.0', '1162.7906976744187', '917.4311926605504'),
(32, 'A1200', 'Commercial Assistant', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Dubai', 'UNI_A1200_RISK MANAGEMENT', 0, NULL, 'UNI_33', NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(33, 'A1201', 'Managing Director Cash UK', 'A', 'Operations Support', 'AME', 'Risk Management', NULL, '1', 'Indirect Labour (Indirect)', 'Fiona Walters', 'Regional CEO, UK&I', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Dubai', 'UNI_A1201_RISK MANAGEMENT', 0, NULL, 'UNI_34', NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(34, 'A1202', 'Managing Director Cash UK', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Charlie Baillieu', 'CFO - International', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Dubai', 'UNI_A1202_RISK MANAGEMENT', 0, NULL, 'UNI_35', NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(35, 'A1203', 'Billing (Budgeted 0.6 - Allied 0.4)', 'F1', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Siobhan Smith', 'O2C Assistant Manager', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Dubai', 'UNI_A1203_RISK MANAGEMENT', 0, NULL, 'UNI_36', NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(36, 'A1204', 'Managing Director - FM&PS', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Dubai', 'UNI_A1204_RISK MANAGEMENT', 0, NULL, 'UNI_37', NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(37, 'A1205', 'Managing Director SSUK', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Dubai', 'UNI_A1205_RISK MANAGEMENT', 0, NULL, 'UNI_38', NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(38, 'A1206', 'Management Accountant - Five Wells', 'A', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Jonathan Foster', 'Finance BP - CADs & CS', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Dubai', 'UNI_A1206_RISK MANAGEMENT', 0, NULL, 'UNI_39', NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(39, 'A1207', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', 'GBP', '40.5707', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Dubai', 'UNI_A1207_RISK MANAGEMENT', 0, NULL, 'UNI_40', NULL, 'AME', NULL, NULL, '2024-06-29', '40.5707', '10', '0', '0', '0', NULL, '50.503155614753595', '40.5707', '50.503155614753595', '50.503155614753595', '40.5707', '50.503155614753595'),
(40, 'A1208', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', 'INR', '2493.47', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Dubai', 'UNI_A1208_RISK MANAGEMENT', 0, NULL, 'UNI_41', NULL, 'AME', NULL, NULL, '2024-06-29', '2493.47', '10', '0', '0', '0', NULL, '226679.0909090909', '24.261799004607216', '30.2014089396277', '226679.0909090909', '24.261799004607216', '30.2014089396277'),
(41, 'A1209', 'Commercial Assistant', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', 'EUR', '30.67', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Dubai', 'UNI_A1209_RISK MANAGEMENT', 0, NULL, 'UNI_42', NULL, 'AME', NULL, NULL, '2024-06-29', '30.67', '10', '0', '0', '0', NULL, '30.67', '35.662790697674424', '28.137614678899084', '30.67', '35.662790697674424', '28.137614678899084'),
(42, 'A1210', 'Commercial Assistant', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Dubai', 'UNI_A1210_RISK MANAGEMENT', 0, NULL, NULL, NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(43, 'A1200', 'Commercial Assistant', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1200_RISK MANAGEMENT', 0, NULL, 'UNI_43', NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(44, 'A1201', 'Managing Director Cash UK', 'A', 'Operations Support', 'AME', 'Risk Management', NULL, '1', 'Indirect Labour (Indirect)', 'Fiona Walters', 'Regional CEO, UK&I', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1201_RISK MANAGEMENT', 0, NULL, 'UNI_44', NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(45, 'A1202', 'Managing Director Cash UK', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Charlie Baillieu', 'CFO - International', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1202_RISK MANAGEMENT', 0, NULL, 'UNI_45', NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(46, 'A1203', 'Billing (Budgeted 0.6 - Allied 0.4)', 'F1', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Siobhan Smith', 'O2C Assistant Manager', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1203_RISK MANAGEMENT', 0, NULL, 'UNI_46', NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(47, 'A1204', 'Managing Director - FM&PS', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1204_RISK MANAGEMENT', 0, NULL, 'UNI_47', NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(48, 'A1205', 'Managing Director SSUK', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1205_RISK MANAGEMENT', 0, NULL, 'UNI_48', NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(49, 'A1206', 'Management Accountant - Five Wells', 'A', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Jonathan Foster', 'Finance BP - CADs & CS', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1206_RISK MANAGEMENT', 0, NULL, 'UNI_49', NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(50, 'A1207', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', 'GBP', '40.5707', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1207_RISK MANAGEMENT', 0, NULL, 'UNI_50', NULL, 'AME', NULL, NULL, '2024-06-29', '40.5707', '10', '0', '0', '0', NULL, '50.503155614753595', '40.5707', '50.503155614753595', '50.503155614753595', '40.5707', '50.503155614753595'),
(51, 'A1208', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', 'INR', '2493.47', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1208_RISK MANAGEMENT', 0, NULL, 'UNI_51', NULL, 'AME', NULL, NULL, '2024-06-29', '2493.47', '10', '0', '0', '0', NULL, '226679.0909090909', '24.261799004607216', '30.2014089396277', '226679.0909090909', '24.261799004607216', '30.2014089396277'),
(52, 'A1209', 'Commercial Assistant', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', 'EUR', '30.67', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1209_RISK MANAGEMENT', 0, NULL, 'UNI_52', NULL, 'AME', NULL, NULL, '2024-06-29', '30.67', '10', '0', '0', '0', NULL, '30.67', '35.662790697674424', '28.137614678899084', '30.67', '35.662790697674424', '28.137614678899084'),
(53, 'A1210', 'Commercial Assistant', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', 'AED', '10', '0', NULL, NULL, '10', 1, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1210_RISK MANAGEMENT', 0, NULL, NULL, NULL, 'AME', NULL, NULL, '2024-06-29', '10', '10', '0', '0', '0', NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(54, '450616A', 'Commercial Assistant', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', 'AOA', '24000', '0', NULL, NULL, NULL, 6, 2024, 'Angola', 'ANG_450616A_RISK MANAGEMENT', 0, NULL, 'ANG_12', NULL, 'AME', NULL, NULL, NULL, '24000', '200', '100', '100', '200', NULL, '34.65300795256211', '27.837922511518812', '34.65300795256211', '34.65300795256211', '27.837922511518812', '34.65300795256211'),
(55, '32893', 'MD CaRs', 'A', 'Operations Support', 'AME', 'Risk Management', NULL, '1', 'Indirect Labour (Indirect)', 'Fiona Walters', 'Regional CEO, UK&I', 'AOA', '272950', '0', NULL, NULL, NULL, 6, 2024, 'Angola', 'ANG_32893_RISK MANAGEMENT', 0, NULL, 'ANG_13', NULL, 'AME', NULL, NULL, NULL, '272950', '0', NULL, '0', '0', NULL, '394.10577169382617', '316.5983728966275', '394.10577169382617', '394.10577169382617', '316.5983728966275', '394.10577169382617'),
(56, '53671', 'Managing Director Cash UK', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Charlie Baillieu', 'CFO - International', 'AOA', '286383', '0', NULL, NULL, NULL, 6, 2024, 'Angola', 'ANG_53671_RISK MANAGEMENT', 0, NULL, 'ANG_14', NULL, 'AME', NULL, NULL, NULL, '286383', '0', NULL, '0', '0', NULL, '413.5013490199415', '332.17949010901214', '413.5013490199415', '413.5013490199415', '332.17949010901214', '413.5013490199415'),
(57, '450591A', 'Billing (Budgeted 0.6 - Allied 0.4)', 'F1', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Siobhan Smith', 'O2C Assistant Manager', 'AOA', '21734', '0', NULL, NULL, '10', 6, 2024, 'Angola', 'ANG_450591A_RISK MANAGEMENT', 0, NULL, 'ANG_15', NULL, 'AME', NULL, NULL, NULL, '21734', '0', NULL, '0', '0', NULL, '31.381186451707705', '25.209558661056242', '31.381186451707705', '31.381186451707705', '25.209558661056242', '31.381186451707705'),
(58, '38459', 'Managing Director - FM&PS', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'AOA', '209708', '0', NULL, NULL, NULL, 6, 2024, 'Angola', 'ANG_38459_RISK MANAGEMENT', 0, NULL, 'ANG_16', NULL, 'AME', NULL, NULL, NULL, '209708', '0', NULL, '0', '0', NULL, '302.7922079881623', '243.24312725189947', '302.7922079881623', '302.7922079881623', '243.24312725189947', '302.7922079881623'),
(59, '1000191A', 'Managing Director SSUK', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'AOA', '216300', '0', NULL, NULL, NULL, 6, 2024, 'Angola', 'ANG_1000191A_RISK MANAGEMENT', 0, NULL, 'ANG_17', NULL, 'AME', NULL, NULL, NULL, '216300', '0', NULL, '0', '0', NULL, '312.31023417246604', '250.88927663506328', '312.31023417246604', '312.31023417246604', '250.88927663506328', '312.31023417246604'),
(60, '39393', 'Management Accountant - Five Wells', 'A', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Jonathan Foster', 'Finance BP - CADs & CS', 'AOA', '64310', '0', NULL, NULL, NULL, 6, 2024, 'Angola', 'ANG_39393_RISK MANAGEMENT', 0, NULL, 'ANG_18', NULL, 'AME', NULL, NULL, NULL, '64310', '0', NULL, '0', '0', NULL, '92.8556225595529', '74.59403319649061', '92.8556225595529', '92.8556225595529', '74.59403319649061', '92.8556225595529'),
(61, '62805', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', 'AOA', '37000', '0', NULL, NULL, NULL, 6, 2024, 'Angola', 'ANG_62805_RISK MANAGEMENT', 0, NULL, 'ANG_19', NULL, 'AME', NULL, NULL, NULL, '37000', '0', NULL, '0', '0', NULL, '53.423387260199924', '42.91679720525817', '53.423387260199924', '53.423387260199924', '42.91679720525817', '53.423387260199924'),
(62, '3031123', 'Finance Executive', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'AOA', '216300', '0', NULL, NULL, NULL, 6, 2024, 'Angola', 'ANG_3031123_RISK MANAGEMENT', 0, NULL, 'ANG_20', NULL, 'AME', NULL, NULL, NULL, '216300', '0', NULL, '0', '0', NULL, '312.31023417246604', '250.88927663506328', '312.31023417246604', '312.31023417246604', '250.88927663506328', '312.31023417246604'),
(63, '3032123', 'Finance Executive', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', 'INR', '216300', '0', NULL, NULL, NULL, 6, 2024, 'Angola', 'ANG_3032123_RISK MANAGEMENT', 0, NULL, 'ANG_21', NULL, 'AME', NULL, NULL, NULL, '216300', '0', NULL, '0', '0', NULL, '19663636.363636363', '2104.6281385765787', '2619.8689992827153', '19663636.363636363', '2104.6281385765787', '2619.8689992827153');

-- --------------------------------------------------------

--
-- Table structure for table `master_monthly_summary`
--

CREATE TABLE `master_monthly_summary` (
  `id` bigint NOT NULL,
  `record_country` varchar(200) DEFAULT NULL,
  `record_year` int NOT NULL,
  `record_month` int NOT NULL,
  `emp_total_count` int NOT NULL,
  `emp_new_count` int NOT NULL,
  `emp_left_count` int NOT NULL,
  `monthly_gross_payout` decimal(20,2) DEFAULT NULL,
  `status` int NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `uploaded_by` varchar(200) DEFAULT NULL,
  `security_code` varchar(50) DEFAULT NULL,
  `is_security_code_used` int NOT NULL,
  `sheet_key` varchar(200) DEFAULT NULL,
  `ymd_date` date DEFAULT NULL,
  `sheet_url` varchar(200) DEFAULT NULL,
  `record_region` varchar(200) DEFAULT NULL,
  `euro_gross_payout` varchar(200) DEFAULT NULL,
  `gbp_gross_payout` varchar(200) DEFAULT NULL,
  `usd_gross_payout` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `master_monthly_summary`
--

INSERT INTO `master_monthly_summary` (`id`, `record_country`, `record_year`, `record_month`, `emp_total_count`, `emp_new_count`, `emp_left_count`, `monthly_gross_payout`, `status`, `created_date`, `uploaded_by`, `security_code`, `is_security_code_used`, `sheet_key`, `ymd_date`, `sheet_url`, `record_region`, `euro_gross_payout`, `gbp_gross_payout`, `usd_gross_payout`) VALUES
(1, 'India', 2024, 6, 9, 0, 0, '32874.64', 0, '2024-06-27 21:21:00.405020', '', 'NA', 0, '', '2024-06-27', '', 'APAC', '64026.07', '319.89', '398.18'),
(2, 'India', 2024, 7, 8, 1, 0, '1800.00', 1, '2024-06-27 21:24:16.306816', 'abhishek.kaithwas@cinntra.com', 'NA', 0, '', '2024-06-27', 'abc.com?sheetid=123', 'APAC', '136753.34', '327.68', '407.88'),
(3, 'Angola', 2024, 2, 10, 0, 0, '1564985.00', 1, '2024-06-28 15:27:51.014367', 'abhishek.kaithwas@cinntra.com', 'NA', 0, '', '2024-06-28', 'abc.com?sheetid=123', 'AME', '2259.643235443351', '1815.2471317370528', '2259.643235443351'),
(4, 'Morocco - Cash Solutions', 2024, 1, 10, 1, 0, '10000.00', 1, '2024-06-28 18:00:16.840692', 'abhishek.kaithwas@cinntra.com', 'NA', 0, '', '2024-06-28', 'abc.com?sheetid=123', 'Europe', '10000.0', '11627.906976744185', '9174.311926605504'),
(5, 'United Arab Emirates - Dubai', 2024, 1, 10, 1, 0, '2634.71', 1, '2024-06-28 18:21:53.255553', 'abhishek.kaithwas@cinntra.com', 'NA', 0, '', '2024-06-28', 'abc.com?sheetid=123', 'AME', '226779.32828388974', '115.81023052097463', '127.9063984173318'),
(6, 'Lebanon', 2024, 6, -5, 0, 0, '12220.00', 0, '2024-06-28 18:29:27.723389', '', 'NA', 0, '', '2024-06-28', '', 'AME', '-4.55', '-3.65', '-4.55'),
(7, 'United Arab Emirates - Abu Dhabi', 2024, 1, 11, 1, 0, '2644.71', 1, '2024-06-28 18:52:03.488496', 'abhishek.kaithwas@cinntra.com', 'NA', 0, '', '2024-06-28', 'abc.com?sheetid=123', 'AME', '226782.05', '118.0', '130.63'),
(8, 'Angola', 2024, 6, 8, 0, 0, '1564985.00', 1, '2024-06-28 18:56:49.374431', 'abhishek.kaithwas@cinntra.com', 'NA', 0, '', '2024-06-28', 'abc.com?sheetid=123', 'AME', '19665566.37', '3655.07', '4549.87'),
(9, 'Bahrain', 2024, 6, 6, 0, 0, '-214577.98', 0, '2024-06-28 19:05:43.674570', '', 'NA', 0, '', '2024-06-28', '', 'AME', '-19662516.03', '-1204.63', '-1499.54');

-- --------------------------------------------------------

--
-- Table structure for table `master_position`
--

CREATE TABLE `master_position` (
  `id` bigint NOT NULL,
  `region` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `position_id` varchar(200) DEFAULT NULL,
  `position_name` varchar(500) DEFAULT NULL,
  `baseline_total` double NOT NULL,
  `baseline_year` longtext,
  `created_date` datetime(6) NOT NULL,
  `requester_email` varchar(200) DEFAULT NULL,
  `status` int NOT NULL,
  `regional_hr` varchar(200) DEFAULT NULL,
  `is_vacant` int NOT NULL,
  `is_active` int NOT NULL,
  `is_delta` int NOT NULL,
  `pos_grade` varchar(200) DEFAULT NULL,
  `pos_function` varchar(150) DEFAULT NULL,
  `pos_bu` varchar(200) DEFAULT NULL,
  `pos_fte` varchar(200) DEFAULT NULL,
  `pos_type` varchar(200) DEFAULT NULL,
  `pos_manager` varchar(200) DEFAULT NULL,
  `pos_manager_job_title` varchar(500) DEFAULT NULL,
  `pos_add_cash` varchar(200) DEFAULT NULL,
  `pos_bonus` varchar(200) DEFAULT NULL,
  `pos_add_remark` longtext,
  `regionalhr_comment` longtext,
  `approver_group_hr` varchar(200) DEFAULT NULL,
  `approver_group_comment` longtext,
  `amount_based_approval` int NOT NULL,
  `pos_return_invest_remark` longtext,
  `pos_local_curr` varchar(200) DEFAULT NULL,
  `pos_car_allowance` varchar(200) DEFAULT NULL,
  `approver_2_email` varchar(200) DEFAULT NULL,
  `approver_2_remark` longtext,
  `pos_currency` varchar(200) DEFAULT NULL,
  `new_annual_amount` varchar(200) DEFAULT NULL,
  `is_approved` int NOT NULL,
  `pos_car_allowance_type` varchar(200) DEFAULT NULL,
  `pos_end_date` date DEFAULT NULL,
  `pos_revenue` varchar(50) DEFAULT NULL,
  `pos_ebita` varchar(50) DEFAULT NULL,
  `pos_ocf` varchar(50) DEFAULT NULL,
  `pos_netcashflow` varchar(50) DEFAULT NULL,
  `position_grossprofit` varchar(50) DEFAULT NULL,
  `position_grossmargin` varchar(50) DEFAULT NULL,
  `eff_from` date DEFAULT NULL,
  `pos_commision_plan` varchar(200) DEFAULT NULL,
  `pos_cxo_tasking` int NOT NULL,
  `pos_gross_pay` varchar(200) DEFAULT NULL,
  `pos_net_pay` varchar(200) DEFAULT NULL,
  `pos_manager_number` varchar(200) DEFAULT NULL,
  `pos_price_increase` varchar(200) DEFAULT NULL,
  `is_revenue_generating` int NOT NULL,
  `end_date` date DEFAULT NULL,
  `pos_contract_type` varchar(200) DEFAULT NULL,
  `pos_manager_emp_id` varchar(200) DEFAULT NULL,
  `payroll_burden` varchar(200) DEFAULT NULL,
  `total_cost` varchar(200) DEFAULT NULL,
  `plane_role_end_date` varchar(200) DEFAULT NULL,
  `plane_role_start_date` varchar(200) DEFAULT NULL,
  `plane_severance` varchar(200) DEFAULT NULL,
  `actual_severance` varchar(200) DEFAULT NULL,
  `position_pos_add_cash` varchar(200) DEFAULT NULL,
  `position_pos_bonus` varchar(200) DEFAULT NULL,
  `postion_baseline_total` varchar(200) DEFAULT NULL,
  `actual_increase` varchar(200) DEFAULT NULL,
  `planned_increase` varchar(200) DEFAULT NULL,
  `emp_ref_no` varchar(20) DEFAULT NULL,
  `pos_annual_total_cost` varchar(200) DEFAULT NULL,
  `agreed_plan` varchar(200) DEFAULT NULL,
  `emp_end_date` varchar(200) DEFAULT NULL,
  `emp_start_date` varchar(200) DEFAULT NULL,
  `euro_annual_base_pay` varchar(200) DEFAULT NULL,
  `gbp_annual_base_pay` varchar(200) DEFAULT NULL,
  `usd_annual_base_pay` varchar(200) DEFAULT NULL,
  `euro_new_annual_base_pay` varchar(200) DEFAULT NULL,
  `gbp_new_annual_base_pay` varchar(200) DEFAULT NULL,
  `usd_new_annual_base_pay` varchar(200) DEFAULT NULL,
  `created_by` varchar(200) NOT NULL,
  `emp_reason` varchar(200) DEFAULT NULL,
  `emp_remarks` varchar(200) DEFAULT NULL,
  `oe_remarks` varchar(200) DEFAULT NULL,
  `pos_remarks` varchar(200) DEFAULT NULL,
  `updated_by` varchar(200) NOT NULL,
  `emp_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `master_position`
--

INSERT INTO `master_position` (`id`, `region`, `country`, `position_id`, `position_name`, `baseline_total`, `baseline_year`, `created_date`, `requester_email`, `status`, `regional_hr`, `is_vacant`, `is_active`, `is_delta`, `pos_grade`, `pos_function`, `pos_bu`, `pos_fte`, `pos_type`, `pos_manager`, `pos_manager_job_title`, `pos_add_cash`, `pos_bonus`, `pos_add_remark`, `regionalhr_comment`, `approver_group_hr`, `approver_group_comment`, `amount_based_approval`, `pos_return_invest_remark`, `pos_local_curr`, `pos_car_allowance`, `approver_2_email`, `approver_2_remark`, `pos_currency`, `new_annual_amount`, `is_approved`, `pos_car_allowance_type`, `pos_end_date`, `pos_revenue`, `pos_ebita`, `pos_ocf`, `pos_netcashflow`, `position_grossprofit`, `position_grossmargin`, `eff_from`, `pos_commision_plan`, `pos_cxo_tasking`, `pos_gross_pay`, `pos_net_pay`, `pos_manager_number`, `pos_price_increase`, `is_revenue_generating`, `end_date`, `pos_contract_type`, `pos_manager_emp_id`, `payroll_burden`, `total_cost`, `plane_role_end_date`, `plane_role_start_date`, `plane_severance`, `actual_severance`, `position_pos_add_cash`, `position_pos_bonus`, `postion_baseline_total`, `actual_increase`, `planned_increase`, `emp_ref_no`, `pos_annual_total_cost`, `agreed_plan`, `emp_end_date`, `emp_start_date`, `euro_annual_base_pay`, `gbp_annual_base_pay`, `usd_annual_base_pay`, `euro_new_annual_base_pay`, `gbp_new_annual_base_pay`, `usd_new_annual_base_pay`, `created_by`, `emp_reason`, `emp_remarks`, `oe_remarks`, `pos_remarks`, `updated_by`, `emp_status`) VALUES
(1, 'APAC', 'India', 'IND_1', 'Commercial Assistant', 100, '2024', '2024-06-27 20:29:45.594605', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', NULL, 'Christine Christie', 'Team Leader - Commercial Assistant', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'INR', NULL, NULL, NULL, 'INR', '100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '200', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '450616A', NULL, NULL, NULL, NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(2, 'APAC', 'India', 'IND_2', 'MD CaRs', 100, '2024', '2024-06-27 20:29:45.619058', NULL, 1, NULL, 0, 1, 1, 'A', 'Operations Support', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'INR', NULL, NULL, NULL, 'INR', '100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '32893', NULL, NULL, NULL, NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(3, 'APAC', 'India', 'IND_3', 'Managing Director Cash UK', 100, '2024', '2024-06-27 20:29:45.645684', NULL, 1, NULL, 0, 1, 1, 'B2', 'General Management', 'Risk Management', '1', NULL, 'Charlie Baillieu', 'CFO - International', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'INR', NULL, NULL, NULL, 'INR', '100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '53671', NULL, NULL, NULL, NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(4, 'APAC', 'India', 'IND_4', 'Billing (Budgeted 0.6 - Allied 0.4)', 100, '2024', '2024-06-27 20:29:45.668201', NULL, 1, NULL, 0, 1, 1, 'F1', 'Finance', 'Risk Management', '1', NULL, 'Siobhan Smith', 'O2C Assistant Manager', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'INR', NULL, NULL, NULL, 'INR', '100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '450591A', NULL, NULL, NULL, NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(5, 'APAC', 'India', 'IND_5', 'Managing Director - FM&PS', 100, '2024', '2024-06-27 20:29:45.689185', NULL, 1, NULL, 0, 1, 1, 'A', 'General Management', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'INR', NULL, NULL, NULL, 'INR', '100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '38459', NULL, NULL, NULL, NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(6, 'APAC', 'India', 'IND_6', 'Managing Director SSUK', 100, '2024', '2024-06-27 20:29:45.709185', NULL, 1, NULL, 0, 1, 1, 'A', 'General Management', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'BHD', NULL, NULL, NULL, 'BHD', '100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000191A', NULL, NULL, NULL, NULL, '265.22384892849567', '213.08331557639036', '265.22384892849567', '265.22384892849567', '213.08331557639036', '265.22384892849567', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(7, 'APAC', 'India', 'IND_7', 'Management Accountant - Five Wells', 100, '2024', '2024-06-27 20:29:45.730353', NULL, 1, NULL, 0, 1, 1, 'A', 'Finance', 'Risk Management', '1', NULL, 'Jonathan Foster', 'Finance BP - CADs & CS', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'INR', NULL, NULL, NULL, 'INR', '100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '39393', NULL, NULL, NULL, NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(8, 'APAC', 'India', 'IND_8', 'Accounts Payable Assistant Manager', 100, '2024', '2024-06-27 20:29:45.750110', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', NULL, 'Lyndsay Killoran', 'Procure to Pay Lead', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'GBP', NULL, NULL, NULL, 'GBP', '100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '62805', NULL, NULL, NULL, NULL, '124.48184432300549', '100.0', '124.48184432300549', '124.48184432300549', '100.0', '124.48184432300549', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(9, 'APAC', 'India', 'IND_9', 'Finance Executive', 100, '2024', '2024-06-27 20:29:45.769830', NULL, 1, NULL, 1, 0, 3, 'B2', 'General Management', 'Risk Management', '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'INR', '', NULL, NULL, 'INR', '0', 1, '', '2024-06-26', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-01', '', 0, '', '', '7275879377', NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', '0', NULL, '', '', '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '', NULL, NULL, NULL, NULL, '', 'Vacant'),
(10, 'APAC', 'India', 'IND_10', 'Finance Executive', 100, '2024', '2024-06-27 20:29:45.789669', NULL, 1, NULL, 1, 0, 3, 'B2', 'General Management', 'Risk Management', '1', 'Direct Labour', 'Fiona Walters', 'Regional CEO, UK&I', NULL, NULL, 'na', NULL, NULL, NULL, 0, 'na', 'INR', '', NULL, NULL, 'INR', '0', 1, '', '2024-06-26', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-01', '', 0, '', '', '1234567890', NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', '0', NULL, '', '', '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '', NULL, NULL, NULL, NULL, '', 'Vacant'),
(11, 'APAC', 'India', 'IND_11', 'Software Engineer2', 1000, '2024', '2024-06-27 21:29:29.235830', '', 1, '', 0, 1, 0, 'G', 'Security & Risk', 'Government & Public Services', '1', 'Admin Labour (SG&A)', 'Bhoopendra', 'Manager', '0', '0', 'NA', '', '', '', 0, 'NA', 'INR', '0', '', '', '', '1000', 1, '', NULL, '0', '0', '0', '0', '0', '0', '2024-06-27', 'No', 0, '0', '0', '1234567890', '0', 0, '2024-06-27', '', '', '1', '0', '', '', '', '', '0', '0', '0', '', '', '', '1000', '', '2024-06-29', '', '90909.09090909091', '9.730134713715112', '12.112200643933035', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', 'Vacant'),
(12, 'AME', 'Angola', 'ANG_12', 'Commercial Assistant', 24000, '2024', '2024-06-28 15:27:20.622360', NULL, 1, NULL, 1, 1, 0, 'E2', 'Finance', 'Risk Management', '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', '', NULL, NULL, 'AOA', '0', 1, '', '2024-07-07', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-01', '', 0, '', '', '9560763295', NULL, 0, NULL, NULL, NULL, '200', '', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', '4800000', NULL, '', '', '34.65300795256211', '27.837922511518812', '34.65300795256211', '34.65300795256211', '27.837922511518812', '34.65300795256211', '', 'Leaving - voluntarily', 'employee goes', NULL, NULL, 'adminworkflow@in.g4s.com', 'Vacant'),
(13, 'AME', 'Angola', 'ANG_13', 'MD CaRs', 272950, '2024', '2024-06-28 15:27:20.646662', NULL, 1, NULL, 0, 1, 1, 'A', 'Operations Support', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', NULL, NULL, NULL, 'AOA', '272950', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '32893', NULL, NULL, NULL, NULL, '394.10577169382617', '316.5983728966275', '394.10577169382617', '394.10577169382617', '316.5983728966275', '394.10577169382617', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(14, 'AME', 'Angola', 'ANG_14', 'Managing Director Cash UK', 286383, '2024', '2024-06-28 15:27:20.675844', NULL, 1, NULL, 0, 1, 1, 'B2', 'General Management', 'Risk Management', '1', NULL, 'Charlie Baillieu', 'CFO - International', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', NULL, NULL, NULL, 'AOA', '286383', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '53671', NULL, NULL, NULL, NULL, '413.5013490199415', '332.17949010901214', '413.5013490199415', '413.5013490199415', '332.17949010901214', '413.5013490199415', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(15, 'AME', 'Angola', 'ANG_15', 'Billing (Budgeted 0.6 - Allied 0.4)', 21734, '2024', '2024-06-28 15:27:20.697093', NULL, 1, NULL, 0, 1, 1, 'F1', 'Finance', 'Risk Management', '1', NULL, 'Siobhan Smith', 'O2C Assistant Manager', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AOA', NULL, NULL, NULL, 'AOA', '21734', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '450591A', NULL, NULL, NULL, NULL, '31.381186451707705', '25.209558661056242', '31.381186451707705', '31.381186451707705', '25.209558661056242', '31.381186451707705', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(16, 'AME', 'Angola', 'ANG_16', 'Managing Director - FM&PS', 209708, '2024', '2024-06-28 15:27:20.723565', NULL, 1, NULL, 0, 1, 1, 'A', 'General Management', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', NULL, NULL, NULL, 'AOA', '209708', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '38459', NULL, NULL, NULL, NULL, '302.7922079881623', '243.24312725189947', '302.7922079881623', '302.7922079881623', '243.24312725189947', '302.7922079881623', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(17, 'AME', 'Angola', 'ANG_17', 'Managing Director SSUK', 216300, '2024', '2024-06-28 15:27:20.744360', NULL, 1, NULL, 0, 1, 1, 'A', 'General Management', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', NULL, NULL, NULL, 'AOA', '216300', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000191A', NULL, NULL, NULL, NULL, '312.31023417246604', '250.88927663506328', '312.31023417246604', '312.31023417246604', '250.88927663506328', '312.31023417246604', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(18, 'AME', 'Angola', 'ANG_18', 'Management Accountant - Five Wells', 64310, '2024', '2024-06-28 15:27:20.765300', NULL, 1, NULL, 0, 1, 1, 'A', 'Finance', 'Risk Management', '1', NULL, 'Jonathan Foster', 'Finance BP - CADs & CS', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', NULL, NULL, NULL, 'AOA', '64310', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '39393', NULL, NULL, NULL, NULL, '92.8556225595529', '74.59403319649061', '92.8556225595529', '92.8556225595529', '74.59403319649061', '92.8556225595529', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(19, 'AME', 'Angola', 'ANG_19', 'Accounts Payable Assistant Manager', 37000, '2024', '2024-06-28 15:27:20.788551', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', NULL, 'Lyndsay Killoran', 'Procure to Pay Lead', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', NULL, NULL, NULL, 'AOA', '37000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '62805', NULL, NULL, NULL, NULL, '53.423387260199924', '42.91679720525817', '53.423387260199924', '53.423387260199924', '42.91679720525817', '53.423387260199924', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(20, 'AME', 'Angola', 'ANG_20', 'Finance Executive', 216300, '2024', '2024-06-28 15:27:20.812237', NULL, 0, NULL, 0, 1, 1, 'B2', 'General Management', 'Risk Management', '1', 'Direct Labour', 'Fiona Walters', 'Regional CEO, UK&I', NULL, NULL, 'sdfsd', NULL, NULL, NULL, 0, 'fsf', 'AOA', '', NULL, NULL, 'AOA', '0', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-28', '', 0, '', '', '89898998', NULL, 0, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '4354353534', '0', NULL, '2024-06-29', '2024-06-27', '312.31023417246604', '250.88927663506328', '312.31023417246604', '312.31023417246604', '250.88927663506328', '312.31023417246604', '', 'Leaving - voluntarily', 'sdfsf', 'sfs', NULL, 'adminworkflow@in.g4s.com', 'Assigned'),
(21, 'AME', 'Angola', 'ANG_21', 'Finance Executive', 216300, '2024', '2024-06-28 15:27:20.838403', NULL, 1, NULL, 0, 1, 1, 'B2', 'General Management', 'Risk Management', '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', NULL, NULL, NULL, 'AOA', '216300', 1, NULL, '2024-06-25', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-14', NULL, 0, NULL, NULL, '9560763295', NULL, 0, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5816138', '0', NULL, NULL, NULL, '312.31023417246604', '250.88927663506328', '312.31023417246604', '312.31023417246604', '250.88927663506328', '312.31023417246604', '', 'Leaving - voluntarily', 'Emp Commet', 'OE Comment', 'Position Comment', 'adminworkflow@in.g4s.com', 'Assigned'),
(22, 'Europe', 'Morocco - Cash Solutions', 'MOR_22', 'Commercial Assistant', 1000, '2024', '2024-06-28 17:48:29.269329', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', NULL, 'Christine Christie', 'Team Leader - Commercial Assistant', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'MAD', NULL, NULL, NULL, 'MAD', '1000', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1200', NULL, NULL, NULL, NULL, '98.512558873568', '79.13834173518728', '98.512558873568', '98.512558873568', '79.13834173518728', '98.512558873568', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(23, 'Europe', 'Morocco - Cash Solutions', 'MOR_23', 'MD CaRs', 1000, '2024', '2024-06-28 17:48:29.293173', NULL, 1, NULL, 0, 1, 1, 'A', 'Operations Support', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'MAD', NULL, NULL, NULL, 'MAD', '1000', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1201', NULL, NULL, NULL, NULL, '98.512558873568', '79.13834173518728', '98.512558873568', '98.512558873568', '79.13834173518728', '98.512558873568', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(24, 'Europe', 'Morocco - Cash Solutions', 'MOR_24', 'Managing Director Cash UK', 1000, '2024', '2024-06-28 17:48:29.318065', NULL, 1, NULL, 0, 1, 1, 'B2', 'General Management', 'Risk Management', '1', NULL, 'Charlie Baillieu', 'CFO - International', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'MAD', NULL, NULL, NULL, 'MAD', '1000', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1202', NULL, NULL, NULL, NULL, '98.512558873568', '79.13834173518728', '98.512558873568', '98.512558873568', '79.13834173518728', '98.512558873568', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(25, 'Europe', 'Morocco - Cash Solutions', 'MOR_25', 'Billing (Budgeted 0.6 - Allied 0.4)', 1000, '2024', '2024-06-28 17:48:29.341353', NULL, 1, NULL, 0, 1, 1, 'F1', 'Finance', 'Risk Management', '1', NULL, 'Siobhan Smith', 'O2C Assistant Manager', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'MAD', NULL, NULL, NULL, 'MAD', '1000', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1203', NULL, NULL, NULL, NULL, '98.512558873568', '79.13834173518728', '98.512558873568', '98.512558873568', '79.13834173518728', '98.512558873568', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(26, 'Europe', 'Morocco - Cash Solutions', 'MOR_26', 'Managing Director - FM&PS', 1000, '2024', '2024-06-28 17:48:29.364797', NULL, 1, NULL, 0, 1, 1, 'A', 'General Management', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'MAD', NULL, NULL, NULL, 'MAD', '1000', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1204', NULL, NULL, NULL, NULL, '98.512558873568', '79.13834173518728', '98.512558873568', '98.512558873568', '79.13834173518728', '98.512558873568', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(27, 'Europe', 'Morocco - Cash Solutions', 'MOR_27', 'Managing Director SSUK', 1000, '2024', '2024-06-28 17:48:29.387907', NULL, 1, NULL, 0, 1, 1, 'A', 'General Management', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'MAD', NULL, NULL, NULL, 'MAD', '1000', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1205', NULL, NULL, NULL, NULL, '98.512558873568', '79.13834173518728', '98.512558873568', '98.512558873568', '79.13834173518728', '98.512558873568', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(28, 'Europe', 'Morocco - Cash Solutions', 'MOR_28', 'Management Accountant - Five Wells', 1000, '2024', '2024-06-28 17:48:29.411541', NULL, 1, NULL, 0, 1, 1, 'A', 'Finance', 'Risk Management', '1', NULL, 'Jonathan Foster', 'Finance BP - CADs & CS', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'INR', NULL, NULL, NULL, 'INR', '1000', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1206', NULL, NULL, NULL, NULL, '90909.09090909091', '9.730134713715112', '12.112200643933035', '90909.09090909091', '9.730134713715112', '12.112200643933035', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(29, 'Europe', 'Morocco - Cash Solutions', 'MOR_29', 'Accounts Payable Assistant Manager', 1000, '2024', '2024-06-28 17:48:29.434065', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', NULL, 'Lyndsay Killoran', 'Procure to Pay Lead', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'INR', NULL, NULL, NULL, 'INR', '1000', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1207', NULL, NULL, NULL, NULL, '90909.09090909091', '9.730134713715112', '12.112200643933035', '90909.09090909091', '9.730134713715112', '12.112200643933035', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(30, 'Europe', 'Morocco - Cash Solutions', 'MOR_30', 'Accounts Payable Assistant Manager', 1000, '2024', '2024-06-28 17:48:29.456316', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', NULL, 'Lyndsay Killoran', 'Procure to Pay Lead', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'INR', NULL, NULL, NULL, 'INR', '1000', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1208', NULL, NULL, NULL, NULL, '90909.09090909091', '9.730134713715112', '12.112200643933035', '90909.09090909091', '9.730134713715112', '12.112200643933035', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(31, 'Europe', 'Morocco - Cash Solutions', 'MOR_31', 'Commercial Assistant', 1000, '2024', '2024-06-28 17:48:29.478127', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', 'Direct Labour', 'Christine Christie', 'Team Leader - Commercial Assistant', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'INR', NULL, NULL, NULL, 'INR', '1000', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-22', NULL, 0, NULL, NULL, '9560763295', NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1209', '10000', NULL, NULL, NULL, '90909.09090909091', '9.730134713715112', '12.112200643933035', '90909.09090909091', '9.730134713715112', '12.112200643933035', '', NULL, NULL, NULL, 'Postion end comment', 'adminworkflow@in.g4s.com', 'Assigned'),
(32, 'AME', 'Lebanon', 'LEB_32', 'Marketing Head', 12220, '2024', '2024-06-28 18:18:30.005004', '', 1, '', 1, 1, 3, 'C2', 'Property', 'Facilities Management (incl. Cleaning)', '1', 'Admin Labour (SG&A)', 'Rahul', 'Manager', '10', '0', '', '', '', '', 0, '', 'LBP', '', '', '', '', '0', 1, '', '2024-06-18', '0', '0', '0', '0', '0', '0', '2024-06-08', '', 0, '', '', '9560763295', '0', 0, '2024-06-28', '', '', '10', '0', '', '', '', '', '', '', '', '', '', '', '122300', '', '', '', '0.9141807166654644', '0.7343920048821805', '0.9141807166654644', NULL, NULL, NULL, 'adminworkflow@in.g4s.com', 'Redeployed to other role', '', '', 'asdfasdfasdf', 'adminworkflow@in.g4s.com', 'Vacant'),
(33, 'AME', 'United Arab Emirates - Dubai', 'UNI_33', 'Commercial Assistant', 10, '2024', '2024-06-28 18:19:27.993907', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', NULL, 'Christine Christie', 'Team Leader - Commercial Assistant', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AED', NULL, NULL, NULL, 'AED', '10', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1200', NULL, NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(34, 'AME', 'United Arab Emirates - Dubai', 'UNI_34', 'Managing Director Cash UK', 10, '2024', '2024-06-28 18:19:28.015496', NULL, 1, NULL, 0, 1, 1, 'A', 'Operations Support', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AED', NULL, NULL, NULL, 'AED', '10', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1201', NULL, NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(35, 'AME', 'United Arab Emirates - Dubai', 'UNI_35', 'Managing Director Cash UK', 10, '2024', '2024-06-28 18:19:28.036550', NULL, 1, NULL, 0, 1, 1, 'B2', 'General Management', 'Risk Management', '1', NULL, 'Charlie Baillieu', 'CFO - International', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AED', NULL, NULL, NULL, 'AED', '10', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1202', NULL, NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(36, 'AME', 'United Arab Emirates - Dubai', 'UNI_36', 'Billing (Budgeted 0.6 - Allied 0.4)', 10, '2024', '2024-06-28 18:19:28.060164', NULL, 1, NULL, 0, 1, 1, 'F1', 'Finance', 'Risk Management', '1', NULL, 'Siobhan Smith', 'O2C Assistant Manager', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AED', NULL, NULL, NULL, 'AED', '10', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1203', NULL, NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(37, 'AME', 'United Arab Emirates - Dubai', 'UNI_37', 'Managing Director - FM&PS', 10, '2024', '2024-06-28 18:19:28.083366', NULL, 1, NULL, 0, 1, 1, 'A', 'General Management', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AED', NULL, NULL, NULL, 'AED', '10', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1204', NULL, NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(38, 'AME', 'United Arab Emirates - Dubai', 'UNI_38', 'Managing Director SSUK', 10, '2024', '2024-06-28 18:19:28.110305', NULL, 1, NULL, 0, 1, 1, 'A', 'General Management', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AED', NULL, NULL, NULL, 'AED', '10', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1205', NULL, NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(39, 'AME', 'United Arab Emirates - Dubai', 'UNI_39', 'Management Accountant - Five Wells', 10, '2024', '2024-06-28 18:19:28.141448', NULL, 1, NULL, 0, 1, 1, 'A', 'Finance', 'Risk Management', '1', NULL, 'Jonathan Foster', 'Finance BP - CADs & CS', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AED', NULL, NULL, NULL, 'AED', '10', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1206', NULL, NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(40, 'AME', 'United Arab Emirates - Dubai', 'UNI_40', 'Accounts Payable Assistant Manager', 40.5707, '2024', '2024-06-28 18:19:28.170649', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', NULL, 'Lyndsay Killoran', 'Procure to Pay Lead', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'GBP', NULL, NULL, NULL, 'GBP', '40.5707', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1207', NULL, NULL, NULL, NULL, '50.503155614753595', '40.5707', '50.503155614753595', '50.503155614753595', '40.5707', '50.503155614753595', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(41, 'AME', 'United Arab Emirates - Dubai', 'UNI_41', 'Accounts Payable Assistant Manager', 2493.47, '2024', '2024-06-28 18:19:28.193721', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', NULL, 'Lyndsay Killoran', 'Procure to Pay Lead', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'INR', NULL, NULL, NULL, 'INR', '2493.47', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1208', NULL, NULL, NULL, NULL, '226679.0909090909', '24.261799004607216', '30.2014089396277', '226679.0909090909', '24.261799004607216', '30.2014089396277', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(42, 'AME', 'United Arab Emirates - Dubai', 'UNI_42', 'Commercial Assistant', 30.67, '2024', '2024-06-28 18:19:28.217728', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', 'Indirect Labour (Indirect)', 'Christine Christie', 'Team Leader - Commercial Assistant', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'EUR', NULL, NULL, NULL, 'EUR', '30.67', 1, NULL, '2024-06-26', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-08', NULL, 0, NULL, NULL, '9560763295', NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1209', '306.70000000000005', NULL, NULL, NULL, '30.67', '35.662790697674424', '28.137614678899084', '30.67', '35.662790697674424', '28.137614678899084', '', NULL, NULL, NULL, NULL, 'adminworkflow@in.g4s.com', 'Assigned'),
(43, 'AME', 'United Arab Emirates - Abu Dhabi', 'UNI_43', 'Commercial Assistant', 10, '2024', '2024-06-28 18:50:44.843103', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', NULL, 'Christine Christie', 'Team Leader - Commercial Assistant', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AED', NULL, NULL, NULL, 'AED', '10', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1200', NULL, NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(44, 'AME', 'United Arab Emirates - Abu Dhabi', 'UNI_44', 'Managing Director Cash UK', 10, '2024', '2024-06-28 18:50:44.869868', NULL, 1, NULL, 0, 1, 1, 'A', 'Operations Support', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AED', NULL, NULL, NULL, 'AED', '10', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1201', NULL, NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(45, 'AME', 'United Arab Emirates - Abu Dhabi', 'UNI_45', 'Managing Director Cash UK', 10, '2024', '2024-06-28 18:50:44.896511', NULL, 1, NULL, 0, 1, 1, 'B2', 'General Management', 'Risk Management', '1', NULL, 'Charlie Baillieu', 'CFO - International', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AED', NULL, NULL, NULL, 'AED', '10', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1202', NULL, NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(46, 'AME', 'United Arab Emirates - Abu Dhabi', 'UNI_46', 'Billing (Budgeted 0.6 - Allied 0.4)', 10, '2024', '2024-06-28 18:50:44.920226', NULL, 1, NULL, 0, 1, 1, 'F1', 'Finance', 'Risk Management', '1', NULL, 'Siobhan Smith', 'O2C Assistant Manager', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AED', NULL, NULL, NULL, 'AED', '10', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1203', NULL, NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(47, 'AME', 'United Arab Emirates - Abu Dhabi', 'UNI_47', 'Managing Director - FM&PS', 10, '2024', '2024-06-28 18:50:44.943498', NULL, 1, NULL, 0, 1, 1, 'A', 'General Management', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AED', NULL, NULL, NULL, 'AED', '10', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1204', NULL, NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(48, 'AME', 'United Arab Emirates - Abu Dhabi', 'UNI_48', 'Managing Director SSUK', 10, '2024', '2024-06-28 18:50:44.971578', NULL, 1, NULL, 0, 1, 1, 'A', 'General Management', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AED', NULL, NULL, NULL, 'AED', '10', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1205', NULL, NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(49, 'AME', 'United Arab Emirates - Abu Dhabi', 'UNI_49', 'Management Accountant - Five Wells', 10, '2024', '2024-06-28 18:50:44.998428', NULL, 1, NULL, 0, 1, 1, 'A', 'Finance', 'Risk Management', '1', NULL, 'Jonathan Foster', 'Finance BP - CADs & CS', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AED', NULL, NULL, NULL, 'AED', '10', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1206', NULL, NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(50, 'AME', 'United Arab Emirates - Abu Dhabi', 'UNI_50', 'Accounts Payable Assistant Manager', 40.5707, '2024', '2024-06-28 18:50:45.021012', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', NULL, 'Lyndsay Killoran', 'Procure to Pay Lead', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'GBP', NULL, NULL, NULL, 'GBP', '40.5707', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1207', NULL, NULL, NULL, NULL, '50.503155614753595', '40.5707', '50.503155614753595', '50.503155614753595', '40.5707', '50.503155614753595', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(51, 'AME', 'United Arab Emirates - Abu Dhabi', 'UNI_51', 'Accounts Payable Assistant Manager', 2493.47, '2024', '2024-06-28 18:50:45.042825', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', NULL, 'Lyndsay Killoran', 'Procure to Pay Lead', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'INR', NULL, NULL, NULL, 'INR', '2493.47', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1208', NULL, NULL, NULL, NULL, '226679.0909090909', '24.261799004607216', '30.2014089396277', '226679.0909090909', '24.261799004607216', '30.2014089396277', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(52, 'AME', 'United Arab Emirates - Abu Dhabi', 'UNI_52', 'Commercial Assistant', 30.67, '2024', '2024-06-28 18:50:45.064828', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', NULL, 'Christine Christie', 'Team Leader - Commercial Assistant', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'EUR', NULL, NULL, NULL, 'EUR', '30.67', 1, NULL, '2024-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A1209', NULL, NULL, NULL, NULL, '30.67', '35.662790697674424', '28.137614678899084', '30.67', '35.662790697674424', '28.137614678899084', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(53, 'AME', 'United Arab Emirates - Abu Dhabi', 'UNI_53', 'WE', 10, '2024', '2024-06-28 18:55:15.595249', '', 0, '', 0, 1, 0, 'F1', 'Property', 'Secure Solutions - Allied Universal', '1', 'Direct Labour', 'Fiona Walters', 'Regional CEO, UK&I', '0', '0', '', '', '', '', 0, '', 'INR', '0', '', '', '', '10', 1, '', NULL, '0', '0', '0', '0', '0', '0', '2024-06-28', 'No', 0, '0', '0', '9310010422', '0', 0, '2024-06-28', '', '', '0', '0', '', '', '', '', '0', '0', '0', '', '', NULL, '0', '', '', '', '909.0909090909091', '0.09730134713715112', '0.12112200643933035', NULL, NULL, NULL, 'adminworkflow@in.g4s.com', '', '', '', '', 'adminworkflow@in.g4s.com', 'Vacant'),
(54, 'AME', 'Bahrain', 'BAH_54', 'Commercial Assistant', 24000, '2024', '2024-06-28 19:04:03.352060', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', NULL, 'Christine Christie', 'Team Leader - Commercial Assistant', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', NULL, NULL, NULL, 'AOA', '24000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '200', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '450616A', NULL, NULL, NULL, NULL, '34.65300795256211', '27.837922511518812', '34.65300795256211', '34.65300795256211', '27.837922511518812', '34.65300795256211', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(55, 'AME', 'Bahrain', 'BAH_55', 'MD CaRs', 272950, '2024', '2024-06-28 19:04:03.375802', NULL, 1, NULL, 0, 1, 1, 'A', 'Operations Support', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', NULL, NULL, NULL, 'AOA', '272950', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '32893', NULL, NULL, NULL, NULL, '394.10577169382617', '316.5983728966275', '394.10577169382617', '394.10577169382617', '316.5983728966275', '394.10577169382617', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(56, 'AME', 'Bahrain', 'BAH_56', 'Managing Director Cash UK', 286383, '2024', '2024-06-28 19:04:03.399061', NULL, 1, NULL, 1, 1, 3, 'B2', 'General Management', 'Risk Management', '1', 'Admin Labour (SG&A)', 'Charlie Baillieu', 'CFO - International', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', '', NULL, NULL, 'AOA', '0', 1, '', '2024-07-12', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-01', '', 0, '', '', '89898998', NULL, 0, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', '0', NULL, '', '2024-06-21', '413.5013490199415', '332.17949010901214', '413.5013490199415', '413.5013490199415', '332.17949010901214', '413.5013490199415', '', NULL, 'The employee will join on 28th', NULL, NULL, 'adminworkflow@in.g4s.com', 'Action required'),
(57, 'AME', 'Bahrain', 'BAH_57', 'Billing (Budgeted 0.6 - Allied 0.4)', 21734, '2024', '2024-06-28 19:04:03.422747', NULL, 1, NULL, 0, 1, 1, 'F1', 'Finance', 'Risk Management', '1', 'Admin Labour (SG&A)', 'Siobhan Smith', 'O2C Assistant Manager', NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, 'AOA', '0', NULL, NULL, 'AOA', '0', 1, '', '2024-07-31', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-01', 'No', 0, '0', '0', '89898998', NULL, 0, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, '123457890', '0', NULL, '', '2024-06-27', '31.381186451707705', '25.209558661056242', '31.381186451707705', '31.381186451707705', '25.209558661056242', '31.381186451707705', '', NULL, NULL, NULL, NULL, 'adminworkflow@in.g4s.com', 'Assigned'),
(58, 'AME', 'Bahrain', 'BAH_58', 'Managing Director - FM&PS', 209708, '2024', '2024-06-28 19:04:03.444572', NULL, 1, NULL, 0, 1, 1, 'A', 'General Management', 'Risk Management', '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', NULL, NULL, NULL, 'AOA', '209708', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '38459', NULL, NULL, NULL, NULL, '302.7922079881623', '243.24312725189947', '302.7922079881623', '302.7922079881623', '243.24312725189947', '302.7922079881623', '', NULL, NULL, NULL, NULL, '', 'Assigned'),
(59, 'AME', 'Bahrain', 'BAH_59', 'Managing Director SSUK', 216300, '2024', '2024-06-28 19:04:03.466781', NULL, 1, NULL, 0, 1, 1, 'A', 'General Management', 'Risk Management', '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', '0', NULL, NULL, 'AOA', '0', 1, '', '2024-07-31', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-01', 'No', 0, '0', '0', '89898998', NULL, 0, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, '', '0', NULL, '', '2024-07-04', '312.31023417246604', '250.88927663506328', '312.31023417246604', '312.31023417246604', '250.88927663506328', '312.31023417246604', '', NULL, NULL, NULL, NULL, 'adminworkflow@in.g4s.com', 'Offered'),
(60, 'AME', 'Bahrain', 'BAH_60', 'Management Accountant - Five Wells', 64310, '2024', '2024-06-28 19:04:03.489239', NULL, 1, NULL, 0, 1, 1, 'A', 'Finance', 'Risk Management', '1', 'Direct Labour', 'Jonathan Foster', 'Finance BP - CADs & CS', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', NULL, NULL, NULL, 'AOA', '64310', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-29', NULL, 0, NULL, NULL, '9878776654', NULL, 0, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '39393', '0', NULL, NULL, NULL, '92.8556225595529', '74.59403319649061', '92.8556225595529', '92.8556225595529', '74.59403319649061', '92.8556225595529', '', NULL, NULL, NULL, NULL, 'adminworkflow@in.g4s.com', 'Vacant'),
(61, 'AME', 'Bahrain', 'BAH_61', 'Accounts Payable Assistant Manager', 37000, '2024', '2024-06-28 19:04:03.513400', NULL, 1, NULL, 0, 1, 1, 'E2', 'Finance', 'Risk Management', '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', NULL, NULL, NULL, 'AOA', '37000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-01', NULL, 0, NULL, NULL, '9878776654', NULL, 0, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', NULL, NULL, '2024-06-29', '53.423387260199924', '42.91679720525817', '53.423387260199924', '53.423387260199924', '42.91679720525817', '53.423387260199924', '', NULL, NULL, NULL, NULL, 'adminworkflow@in.g4s.com', 'Offered'),
(62, 'AME', 'Bahrain', 'BAH_62', 'Finance Executive', 216300, '2024', '2024-06-28 19:04:03.540382', NULL, 1, NULL, 0, 1, 1, 'B2', 'General Management', 'Risk Management', '1', 'Direct Labour', 'Fiona Walters', 'Regional CEO, UK&I', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'AOA', '', NULL, NULL, 'AOA', '0', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-08', '', 0, '', '', '9560763295', NULL, 0, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '1112121212', '0', NULL, '2024-06-30', '2024-06-27', '312.31023417246604', '250.88927663506328', '312.31023417246604', '312.31023417246604', '250.88927663506328', '312.31023417246604', '', 'Promoted to new role', 'Emp Commentafefdafdfad asffsda', NULL, 'Testing Comment', 'adminworkflow@in.g4s.com', 'Assigned'),
(63, 'AME', 'Bahrain', 'BAH_63', 'Finance Executive', 216300, '2024', '2024-06-28 19:04:03.562256', NULL, 1, NULL, 1, 0, 3, 'B2', 'General Management', 'Risk Management', '1', 'Direct Labour', 'Fiona Walters', 'Regional CEO, UK&I', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'INR', '', NULL, NULL, 'INR', '0', 1, '', '2024-06-25', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-08', '', 0, '', '', '9560763295', NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', '0', NULL, '', '', '19663636.363636363', '2104.6281385765787', '2619.8689992827153', '19663636.363636363', '2104.6281385765787', '2619.8689992827153', '', 'Leaving - Redundant', 'sdafadsf', NULL, 'Position End MComment', 'adminworkflow@in.g4s.com', 'Vacant'),
(64, 'AME', 'Angola', 'ANG_64', 'Finance Executive', 12000, '2024', '2024-07-01 11:03:38.284432', '', 1, '', 0, 1, 1, 'G', 'Security & Risk', 'Secure Solutions - Allied Universal', '1', 'Direct Labour', 'Rahul', 'Manager', '0', '0', '', '', '', '', 0, '', 'AOA', '0', '', '', '', '0', 1, '', NULL, '0', '0', '0', '0', '0', '0', '2024-07-01', 'No', 0, '0', '0', '9560763295', '0', 0, '2024-07-01', '', '', '0', '0', '', '', '', '', '0', '0', '0', '', '', '', '0', 'Role Removal', '', '', '17.326503976281057', '13.918961255759406', '17.326503976281057', NULL, NULL, NULL, 'adminworkflow@in.g4s.com', 'Redeployed to other role', 'fgdfgfdgdf', '', '', 'adminworkflow@in.g4s.com', 'Vacant'),
(65, 'AME', 'Angola', 'ANG_65', 'Senior Software Engineer 3', 0, '2024', '2024-07-01 12:14:00.554025', '', 1, '', 0, 1, 1, 'Exec', 'Security & Risk', 'Government & Public Services', '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '0', '0', '', '', '', '', 0, '', 'AOA', '0', '', '', '', '0', 1, '', '2024-06-29', '0', '0', '0', '0', '0', '0', '2024-06-01', 'No', 0, '100', '0', '89898998', '0', 0, '2024-07-01', '', '897878', '0', '0', '', '', '', '', '0', '0', '1000', '', '', '324234224', '0', '', '', '2024-07-01', '0.0', '0.0', '0.0', NULL, NULL, NULL, 'adminworkflow@in.g4s.com', '', 'assign new employee', '', '', 'adminworkflow@in.g4s.com', 'Assigned'),
(66, 'AME', 'Angola', 'ANG_66', 'Testing Job', 12000, '2024', '2024-07-01 13:02:31.823572', '', 1, '', 1, 0, 3, 'Exec', 'Property', 'Secure Solutions - Allied Universal', '1', 'Admin Labour (SG&A)', 'Rahul', 'Manager', '0', '0', '', '', '', '', 0, '', 'AOA', '', '', '', '', '0', 1, '', '2024-06-30', '0', '0', '0', '0', '0', '0', '2024-06-28', '', 0, '', '', '9560763295', '0', 0, '2024-07-01', '', '', '0', '', '2024-07-25', '', 'NEw SErverance', 'adsfasd adfs', '', '', '', 'Actual Increase', 'Planner Increase', '', '0', 'Role Removal', '', '', '17.326503976281057', '13.918961255759406', '17.326503976281057', NULL, NULL, NULL, 'adminworkflow@in.g4s.com', '', 'assign', '', '', 'adminworkflow@in.g4s.com', 'Assigned'),
(67, 'AME', 'Angola', 'ANG_67', 'Senior Software Engineer 4', 1000, '2024', '2024-07-01 13:05:59.170194', '', 1, '', 1, 1, 0, 'G', 'Other', 'Secure Solutions - Allied Universal', '1', 'Direct Labour', 'Fiona Walters', 'Regional CEO, UK&I', '0', NULL, '', '', '', '', 0, '', 'AOA', '0', '', '', '', '0', 1, '', NULL, '0', '0', '0', '0', '0', '0', '2024-07-01', 'No', 0, '0', '0', '89898998', '0', 0, '2024-07-01', 'Fixed Term Contract', '', '0', '0', '', '', '', '', '0', '0', '0', '', '', '', '0', '', '', '', '1.4438753313567547', '1.1599134379799505', '1.4438753313567547', NULL, NULL, NULL, 'adminworkflow@in.g4s.com', 'Redeployed to other role', 'enter postion end date', '', 'new postion', 'adminworkflow@in.g4s.com', 'Vacant');
INSERT INTO `master_position` (`id`, `region`, `country`, `position_id`, `position_name`, `baseline_total`, `baseline_year`, `created_date`, `requester_email`, `status`, `regional_hr`, `is_vacant`, `is_active`, `is_delta`, `pos_grade`, `pos_function`, `pos_bu`, `pos_fte`, `pos_type`, `pos_manager`, `pos_manager_job_title`, `pos_add_cash`, `pos_bonus`, `pos_add_remark`, `regionalhr_comment`, `approver_group_hr`, `approver_group_comment`, `amount_based_approval`, `pos_return_invest_remark`, `pos_local_curr`, `pos_car_allowance`, `approver_2_email`, `approver_2_remark`, `pos_currency`, `new_annual_amount`, `is_approved`, `pos_car_allowance_type`, `pos_end_date`, `pos_revenue`, `pos_ebita`, `pos_ocf`, `pos_netcashflow`, `position_grossprofit`, `position_grossmargin`, `eff_from`, `pos_commision_plan`, `pos_cxo_tasking`, `pos_gross_pay`, `pos_net_pay`, `pos_manager_number`, `pos_price_increase`, `is_revenue_generating`, `end_date`, `pos_contract_type`, `pos_manager_emp_id`, `payroll_burden`, `total_cost`, `plane_role_end_date`, `plane_role_start_date`, `plane_severance`, `actual_severance`, `position_pos_add_cash`, `position_pos_bonus`, `postion_baseline_total`, `actual_increase`, `planned_increase`, `emp_ref_no`, `pos_annual_total_cost`, `agreed_plan`, `emp_end_date`, `emp_start_date`, `euro_annual_base_pay`, `gbp_annual_base_pay`, `usd_annual_base_pay`, `euro_new_annual_base_pay`, `gbp_new_annual_base_pay`, `usd_new_annual_base_pay`, `created_by`, `emp_reason`, `emp_remarks`, `oe_remarks`, `pos_remarks`, `updated_by`, `emp_status`) VALUES
(68, 'APAC', 'India', 'IND_68', 'Property consultant', 1000000, '2024', '2024-07-01 15:24:00.046413', '', 1, '', 0, 1, 1, 'G', 'Property', 'Shared Services Center - Human Resources', '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '0', '0', '', '', '', '', 0, '', 'INR', '0', '', '', '', '0', 1, '', '2024-07-31', '0', '0', '0', '0', '0', '0', '2024-06-01', 'No', 0, '0', '0', '89898998', '0', 0, '2024-07-01', '', '', '0', '0', '', '', '', '', '0', '0', '0', '', '', '1234444', '0', '', '', '2024-06-30', '90909090.90909092', '9730.134713715112', '12112.200643933034', NULL, NULL, NULL, 'adminworkflow@in.g4s.com', '', 'The candidate joined early', '', 'The position is cre', 'adminworkflow@in.g4s.com', 'Assigned');

-- --------------------------------------------------------

--
-- Table structure for table `master_position_action_approvel_request`
--

CREATE TABLE `master_position_action_approvel_request` (
  `id` bigint NOT NULL,
  `action_type` varchar(200) DEFAULT NULL,
  `record_region` varchar(200) DEFAULT NULL,
  `record_country` varchar(200) DEFAULT NULL,
  `position_id` varchar(200) DEFAULT NULL,
  `emp_ref_no` varchar(200) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `reason_details` varchar(200) DEFAULT NULL,
  `requsted_by_remarks` varchar(200) NOT NULL,
  `approved_by_remarks` varchar(200) NOT NULL,
  `approved_by` varchar(200) NOT NULL,
  `requsted_by` varchar(200) NOT NULL,
  `status` int NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `pos_end_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_position_history`
--

CREATE TABLE `master_position_history` (
  `id` bigint NOT NULL,
  `action_type` varchar(200) DEFAULT NULL,
  `position_id` varchar(200) DEFAULT NULL,
  `emp_ref_no` varchar(200) DEFAULT NULL,
  `emp_reason` varchar(200) DEFAULT NULL,
  `remarks` longtext NOT NULL,
  `updated_by` varchar(200) NOT NULL,
  `eff_from` varchar(200) NOT NULL,
  `pos_end_date` varchar(200) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `master_position_history`
--

INSERT INTO `master_position_history` (`id`, `action_type`, `position_id`, `emp_ref_no`, `emp_reason`, `remarks`, `updated_by`, `eff_from`, `pos_end_date`, `created_date`, `updated_date`) VALUES
(1, 'created', 'LEB_32', 'None', '', '', 'adminworkflow@in.g4s.com', '2024-06-28', 'None', '2024-06-28 18:18:30.024383', '2024-06-28 18:18:30.024427'),
(2, 'closed', 'LEB_32', '5816138', '', 'test', 'adminworkflow@in.g4s.com', '2024-06-15', '2024-06-25', '2024-06-28 18:29:27.697263', '2024-06-28 18:29:27.697296'),
(3, 'closed', 'LEB_32', '', '', 'asdfasdfasdf', 'adminworkflow@in.g4s.com', '2024-06-15', '2024-06-25', '2024-06-28 18:29:40.280644', '2024-06-28 18:29:40.280664'),
(4, 'closed', 'LEB_32', '', '', 'asdfasdfasdf', 'adminworkflow@in.g4s.com', '2024-06-15', '2024-06-25', '2024-06-28 18:29:58.281246', '2024-06-28 18:29:58.281269'),
(5, 'closed', 'LEB_32', '', '', 'asdfasdfasdf', 'adminworkflow@in.g4s.com', '2024-06-15', '2024-06-25', '2024-06-28 18:32:15.598126', '2024-06-28 18:32:15.598150'),
(6, 'closed', 'LEB_32', '', '', 'asdfasdfasdf', 'adminworkflow@in.g4s.com', '2024-06-15', '2024-06-25', '2024-06-28 18:33:51.755847', '2024-06-28 18:33:51.755870'),
(7, 'closed', 'LEB_32', '', 'Redeployed to other role', 'asdfasdfasdf', 'adminworkflow@in.g4s.com', '2024-06-15', '2024-06-25', '2024-06-28 18:36:01.949402', '2024-06-28 18:36:01.949422'),
(8, 'created', 'UNI_53', 'None', '', '', 'adminworkflow@in.g4s.com', '2024-06-28', 'None', '2024-06-28 18:55:15.610263', '2024-06-28 18:55:15.610289'),
(9, 'vacant', 'UNI_53', 'None', '', '', 'adminworkflow@in.g4s.com', '2024-06-28', 'None', '2024-06-28 18:57:55.291474', '2024-06-28 18:57:55.291498'),
(10, 'vacant', 'UNI_53', 'None', '', '', 'adminworkflow@in.g4s.com', '2024-06-28', 'None', '2024-06-28 18:58:07.234808', '2024-06-28 18:58:07.234850'),
(11, 'closed', 'BAH_63', '122112', 'None', 'Position End MComment', 'adminworkflow@in.g4s.com', '2024-06-08', '2024-06-26', '2024-06-28 19:05:43.652948', '2024-06-28 19:05:43.652972'),
(12, 'closed', 'BAH_63', '', 'Leaving - Redundant', 'Position End MComment', 'adminworkflow@in.g4s.com', '2024-06-08', '2024-06-25', '2024-06-28 19:06:33.714308', '2024-06-28 19:06:33.714333'),
(13, 'vacant', 'BAH_61', '62805', 'None', 'None', '', 'None', 'None', '2024-06-28 19:37:16.685280', '2024-06-28 19:37:16.685299'),
(14, 'vacant', 'BAH_61', '', 'None', 'None', 'adminworkflow@in.g4s.com', '2024-06-01', 'None', '2024-06-28 19:38:58.238233', '2024-06-28 19:38:58.238253'),
(15, 'vacant', 'BAH_59', '1000191A', 'None', 'None', '', 'None', 'None', '2024-06-28 19:42:00.094066', '2024-06-28 19:42:00.094096'),
(16, 'vacant', 'BAH_57', '450591A', 'None', 'None', '', 'None', 'None', '2024-06-28 19:43:31.258160', '2024-06-28 19:43:31.258181'),
(17, 'vacant', 'BAH_57', '', 'None', 'None', 'adminworkflow@in.g4s.com', '2024-06-01', '2024-07-31', '2024-06-28 19:44:05.335154', '2024-06-28 19:44:05.335174'),
(18, 'vacant', 'BAH_56', '53671', 'None', 'None', 'adminworkflow@in.g4s.com', '2024-06-01', 'None', '2024-06-28 20:02:40.909608', '2024-06-28 20:02:40.909631'),
(19, 'vacant', 'BAH_56', '', 'None', 'None', 'adminworkflow@in.g4s.com', '2024-06-01', 'None', '2024-06-28 20:04:08.780333', '2024-06-28 20:04:08.780360'),
(20, 'closed', 'BAH_56', '', 'None', 'None', 'adminworkflow@in.g4s.com', '2024-06-01', '2024-06-20', '2024-06-28 20:04:08.810696', '2024-06-28 20:04:08.810718'),
(21, 'vacant', 'BAH_56', 'SUN_123', 'None', 'None', 'adminworkflow@in.g4s.com', '2024-06-01', '2024-07-20', '2024-06-28 20:09:40.214047', '2024-06-28 20:09:40.214073'),
(22, 'vacant', 'BAH_56', '', 'None', 'None', 'adminworkflow@in.g4s.com', '2024-06-01', '2024-07-20', '2024-06-28 20:10:24.262966', '2024-06-28 20:10:24.262989'),
(23, 'vacant', 'BAH_56', '', 'None', 'None', 'adminworkflow@in.g4s.com', '2024-06-01', '2024-07-27', '2024-06-28 20:10:47.360168', '2024-06-28 20:10:47.360189'),
(24, 'closed', 'BAH_56', '', 'None', 'None', 'adminworkflow@in.g4s.com', '2024-06-01', '2024-06-20', '2024-06-28 20:10:47.377558', '2024-06-28 20:10:47.377578'),
(25, 'created', 'ANG_64', 'None', '', '', 'adminworkflow@in.g4s.com', '2024-07-01', 'None', '2024-07-01 11:03:38.301619', '2024-07-01 11:03:38.301649'),
(26, 'vacant', 'ANG_64', '1234567890', 'Promoted to new role', '', 'adminworkflow@in.g4s.com', '2024-07-01', 'None', '2024-07-01 11:29:15.062353', '2024-07-01 11:29:15.062373'),
(27, 'vacant', 'ANG_64', '1234567890', 'Promoted to new role', '', 'adminworkflow@in.g4s.com', '2024-07-01', 'None', '2024-07-01 12:03:49.838576', '2024-07-01 12:03:49.838593'),
(28, 'vacant', 'ANG_64', '3242424234', 'Redeployed to other role', '', 'adminworkflow@in.g4s.com', '2024-07-01', 'None', '2024-07-01 12:12:17.272209', '2024-07-01 12:12:17.272228'),
(29, 'created', 'ANG_65', 'None', '', '', 'adminworkflow@in.g4s.com', '2024-06-01', '2024-07-31', '2024-07-01 12:14:00.568514', '2024-07-01 12:14:00.568537'),
(30, 'closed', 'ANG_65', '324234224', '', '', 'adminworkflow@in.g4s.com', '2024-06-01', '2024-07-31', '2024-07-01 12:19:19.462897', '2024-07-01 12:19:19.462924'),
(31, 'created', 'ANG_66', 'None', '', '', 'adminworkflow@in.g4s.com', '2024-07-01', 'None', '2024-07-01 13:02:31.844343', '2024-07-01 13:02:31.844384'),
(32, 'created', 'ANG_67', 'None', '', 'new postion', 'adminworkflow@in.g4s.com', '2024-07-01', 'None', '2024-07-01 13:05:59.185591', '2024-07-01 13:05:59.185613'),
(33, 'vacant', 'ANG_66', '', '', '', 'adminworkflow@in.g4s.com', '2024-07-01', 'None', '2024-07-01 14:50:51.268720', '2024-07-01 14:50:51.268742'),
(34, 'vacant', 'ANG_67', '', 'Promoted to new role', 'new postion', 'adminworkflow@in.g4s.com', '2024-07-01', 'None', '2024-07-01 14:51:10.168560', '2024-07-01 14:51:10.168582'),
(35, 'vacant', 'ANG_67', '', 'Promoted to new role', 'new postion', 'adminworkflow@in.g4s.com', '2024-07-01', 'None', '2024-07-01 15:04:17.157263', '2024-07-01 15:04:17.157296'),
(36, 'vacant', 'ANG_66', '', 'Leaving - voluntarily', '', 'adminworkflow@in.g4s.com', '2024-07-01', 'None', '2024-07-01 15:04:54.302731', '2024-07-01 15:04:54.302761'),
(37, 'vacant', 'ANG_67', '', 'Promoted to new role', 'new postion', 'adminworkflow@in.g4s.com', '2024-07-01', 'None', '2024-07-01 15:07:04.328940', '2024-07-01 15:07:04.328961'),
(38, 'vacant', 'ANG_67', '', 'Promoted to new role', 'new postion', 'adminworkflow@in.g4s.com', '2024-07-01', 'None', '2024-07-01 15:07:20.125996', '2024-07-01 15:07:20.126019'),
(39, 'vacant', 'ANG_67', '', 'Promoted to new role', 'new postion', 'adminworkflow@in.g4s.com', '2024-07-01', 'None', '2024-07-01 15:08:18.552392', '2024-07-01 15:08:18.552419'),
(40, 'closed', 'ANG_66', '454455', '', '', 'adminworkflow@in.g4s.com', '2024-06-28', '2024-06-30', '2024-07-01 15:22:53.439807', '2024-07-01 15:22:53.439827'),
(41, 'created', 'IND_68', 'None', '', '', 'adminworkflow@in.g4s.com', '2024-07-01', 'None', '2024-07-01 15:24:00.063476', '2024-07-01 15:24:00.063527'),
(42, 'vacant', 'IND_68', '', '', 'The position is cre', 'adminworkflow@in.g4s.com', '2024-06-01', '2024-07-31', '2024-07-01 15:28:29.086926', '2024-07-01 15:28:29.086958');

-- --------------------------------------------------------

--
-- Table structure for table `master_position_other_pay`
--

CREATE TABLE `master_position_other_pay` (
  `id` bigint NOT NULL,
  `position_id` varchar(200) DEFAULT NULL,
  `component_type` varchar(155) DEFAULT NULL,
  `component_desc` longtext,
  `component_amount` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `master_position_other_pay`
--

INSERT INTO `master_position_other_pay` (`id`, `position_id`, `component_type`, `component_desc`, `component_amount`) VALUES
(1, 'NEP_10', '', '', '0'),
(2, 'NEP_11', '', '', '0'),
(3, 'ANG_113', '', '', '0'),
(4, 'IND_114', '', '', '0'),
(5, 'ANG_134', '', '', '0'),
(6, 'NEP_11', '', '', '0'),
(7, 'IND_22', '', '', '0'),
(8, 'BAH_23', '', '', '0'),
(10, 'ANG_11', '', '', '0'),
(11, 'ANG_610', '', '', '0'),
(12, 'ANG_611', '', '', '0'),
(13, 'ANG_11', '', '', '0'),
(14, 'NEP_1010', '', '', '0'),
(15, 'NEP_1011', '', '', '0'),
(16, 'NEP_1012', '', '', '0'),
(17, 'ANG_1', '', '', '0'),
(18, 'ANG_11', '', '', '0'),
(19, 'ANG_12', '', '', '0'),
(20, 'NEP_13', '', '', '0'),
(21, 'ANG_14', '', '', '0'),
(22, 'NEP_15', '', '', '0'),
(23, 'JAP_16', '', '', '0'),
(24, 'ANG_17', '', '', '0'),
(25, 'NEP_18', '', '', '0'),
(26, 'IND_11', '', '', '0'),
(27, 'IND_11', '', '', '0'),
(28, 'IND_12', '', '', '0'),
(29, 'BAH_23', '', '', '0'),
(32, 'ANG_26', '', '', '0'),
(34, 'ANG_28', '', '', '0'),
(35, 'REG_450', 'Insurance', 'Insurance - Medical', '100');

-- --------------------------------------------------------

--
-- Table structure for table `master_position_workflow`
--

CREATE TABLE `master_position_workflow` (
  `id` bigint NOT NULL,
  `position_id` varchar(200) DEFAULT NULL,
  `ceo_comment` longtext,
  `approval_rule` varchar(200) DEFAULT NULL,
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
(37, 'ANG_113', NULL, 'rule-1', 0),
(38, 'IND_114', NULL, 'rule-1', 0),
(39, 'ANG_134', NULL, 'rule-1', 0),
(40, 'NEP_11', NULL, 'rule-1', 0),
(41, 'IND_22', NULL, 'rule-1', 0),
(42, 'BAH_23', NULL, 'rule-1', 0),
(43, 'IND_24', NULL, 'rule-1', 0),
(44, 'ANG_11', NULL, 'rule-1', 0),
(45, 'ANG_610', NULL, 'rule-1', 0),
(46, 'ANG_611', NULL, 'rule-1', 0),
(47, 'ANG_11', NULL, 'rule-1', 0),
(48, 'NEP_1010', NULL, 'rule-1', 0),
(49, 'NEP_1011', NULL, 'rule-1', 0),
(50, 'NEP_1012', NULL, 'rule-1', 0),
(51, 'ANG_1', NULL, 'rule-1', 0),
(52, 'ANG_11', NULL, 'rule-1', 0),
(53, 'ANG_12', NULL, 'rule-1', 0),
(54, 'NEP_13', NULL, 'rule-1', 0),
(55, 'ANG_14', NULL, 'rule-1', 0),
(56, 'NEP_15', NULL, 'rule-1', 0),
(57, 'JAP_16', NULL, 'rule-1', 0),
(58, 'ANG_17', NULL, 'rule-1', 0),
(59, 'NEP_18', NULL, 'rule-1', 0),
(60, 'IND_11', NULL, 'rule-1', 0),
(61, 'IND_11', NULL, 'rule-1', 0),
(62, 'IND_12', NULL, 'rule-1', 0),
(63, 'BAH_23', NULL, 'rule-1', 0),
(64, 'IND_24', NULL, 'rule-1', 0),
(65, 'IND_25', NULL, 'rule-1', 0),
(66, 'ANG_26', NULL, 'rule-1', 0),
(67, 'ANG_27', NULL, 'rule-1', 0),
(68, 'ANG_28', NULL, 'rule-1', 0),
(69, 'IND_29', NULL, 'rule-1', 0),
(70, 'REG_450', NULL, 'rule-1', 0),
(71, 'ANG_431', NULL, 'rule-1', 0),
(72, 'ANG_11', NULL, 'rule-1', 0),
(73, 'ANG_11', NULL, 'rule-1', 0),
(74, 'IND_11', NULL, 'rule-1', 0),
(75, 'IND_12', NULL, 'rule-1', 0),
(76, 'IND_13', NULL, 'rule-1', 0),
(77, 'IND_11', NULL, 'rule-1', 0),
(78, 'LEB_32', NULL, 'rule-1', 0),
(79, 'UNI_53', NULL, 'rule-1', 0),
(80, 'ANG_64', NULL, 'rule-1', 0),
(81, 'ANG_65', NULL, 'rule-1', 0),
(82, 'ANG_66', NULL, 'rule-1', 0),
(83, 'ANG_67', NULL, 'rule-1', 0),
(84, 'IND_68', NULL, 'rule-1', 0);

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
  `emp_grade` varchar(200) DEFAULT NULL,
  `emp_function` varchar(200) DEFAULT NULL,
  `region` varchar(200) DEFAULT NULL,
  `emp_bu` varchar(200) DEFAULT NULL,
  `emp_e_date` varchar(200) DEFAULT NULL,
  `fte` varchar(200) DEFAULT NULL,
  `sga_indirect` varchar(200) DEFAULT NULL,
  `sup_name` varchar(200) DEFAULT NULL,
  `sup_job_title` varchar(200) DEFAULT NULL,
  `annual_base_pay` varchar(200) DEFAULT NULL,
  `allowance_total` varchar(200) DEFAULT NULL,
  `bonus` varchar(200) DEFAULT NULL,
  `car_allowance` varchar(200) DEFAULT NULL,
  `commision_plan` varchar(200) DEFAULT NULL,
  `t_month` int NOT NULL,
  `t_year` int NOT NULL,
  `country` varchar(200) DEFAULT NULL,
  `key_pair` varchar(200) DEFAULT NULL,
  `is_processed` int NOT NULL,
  `summery_key` varchar(200) DEFAULT NULL,
  `position_id` varchar(200) DEFAULT NULL,
  `position_start_date` datetime(6) DEFAULT NULL,
  `position_end_date` date DEFAULT NULL,
  `issync` int NOT NULL,
  `record_region` varchar(200) DEFAULT NULL,
  `is_active` int NOT NULL,
  `local_currency` varchar(200) DEFAULT NULL,
  `new_annual_amount` varchar(200) DEFAULT NULL,
  `payroll_burden` varchar(200) DEFAULT NULL,
  `total_cost` varchar(200) DEFAULT NULL,
  `pos_gross_pay` varchar(200) DEFAULT NULL,
  `pos_net_pay` varchar(200) DEFAULT NULL,
  `postion_baseline_total` varchar(200) DEFAULT NULL,
  `euro_annual_base_pay` varchar(200) DEFAULT NULL,
  `gbp_annual_base_pay` varchar(200) DEFAULT NULL,
  `usd_annual_base_pay` varchar(200) DEFAULT NULL,
  `euro_new_annual_base_pay` varchar(200) DEFAULT NULL,
  `gbp_new_annual_base_pay` varchar(200) DEFAULT NULL,
  `usd_new_annual_base_pay` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `master_yearly_baseline`
--

INSERT INTO `master_yearly_baseline` (`id`, `emp_ref_no`, `current_job`, `emp_grade`, `emp_function`, `region`, `emp_bu`, `emp_e_date`, `fte`, `sga_indirect`, `sup_name`, `sup_job_title`, `annual_base_pay`, `allowance_total`, `bonus`, `car_allowance`, `commision_plan`, `t_month`, `t_year`, `country`, `key_pair`, `is_processed`, `summery_key`, `position_id`, `position_start_date`, `position_end_date`, `issync`, `record_region`, `is_active`, `local_currency`, `new_annual_amount`, `payroll_burden`, `total_cost`, `pos_gross_pay`, `pos_net_pay`, `postion_baseline_total`, `euro_annual_base_pay`, `gbp_annual_base_pay`, `usd_annual_base_pay`, `euro_new_annual_base_pay`, `gbp_new_annual_base_pay`, `usd_new_annual_base_pay`) VALUES
(1, '450616A', 'Commercial Assistant', 'E2', 'Finance', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', '100', NULL, NULL, NULL, NULL, 0, 2024, 'India', 'IND_450616A_RISK MANAGEMENT', 0, NULL, 'IND_1', '2024-06-27 20:29:45.575892', NULL, 0, 'APAC', 1, 'INR', '100', '200', '100', NULL, NULL, NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(2, '32893', 'MD CaRs', 'A', 'Operations Support', 'APAC', 'Risk Management', NULL, '1', 'Indirect Labour (Indirect)', 'Fiona Walters', 'Regional CEO, UK&I', '100', NULL, NULL, NULL, NULL, 0, 2024, 'India', 'IND_32893_RISK MANAGEMENT', 0, NULL, 'IND_2', '2024-06-27 20:29:45.602929', NULL, 0, 'APAC', 1, 'INR', '100', NULL, NULL, NULL, NULL, NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(3, '53671', 'Managing Director Cash UK', 'B2', 'General Management', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Charlie Baillieu', 'CFO - International', '100', NULL, NULL, NULL, NULL, 0, 2024, 'India', 'IND_53671_RISK MANAGEMENT', 0, NULL, 'IND_3', '2024-06-27 20:29:45.627001', NULL, 0, 'APAC', 1, 'INR', '100', NULL, NULL, NULL, NULL, NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(4, '450591A', 'Billing (Budgeted 0.6 - Allied 0.4)', 'F1', 'Finance', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Siobhan Smith', 'O2C Assistant Manager', '100', NULL, '10', NULL, NULL, 0, 2024, 'India', 'IND_450591A_RISK MANAGEMENT', 0, NULL, 'IND_4', '2024-06-27 20:29:45.653572', NULL, 0, 'APAC', 1, 'INR', '100', NULL, NULL, NULL, NULL, NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(5, '38459', 'Managing Director - FM&PS', 'A', 'General Management', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '100', NULL, NULL, NULL, NULL, 0, 2024, 'India', 'IND_38459_RISK MANAGEMENT', 0, NULL, 'IND_5', '2024-06-27 20:29:45.675981', NULL, 0, 'APAC', 1, 'INR', '100', NULL, NULL, NULL, NULL, NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(6, '1000191A', 'Managing Director SSUK', 'A', 'General Management', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '100', NULL, NULL, NULL, NULL, 0, 2024, 'India', 'IND_1000191A_RISK MANAGEMENT', 0, NULL, 'IND_6', '2024-06-27 20:29:45.696024', NULL, 0, 'APAC', 1, 'BHD', '100', NULL, NULL, NULL, NULL, NULL, '265.22384892849567', '213.08331557639036', '265.22384892849567', '265.22384892849567', '213.08331557639036', '265.22384892849567'),
(7, '39393', 'Management Accountant - Five Wells', 'A', 'Finance', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Jonathan Foster', 'Finance BP - CADs & CS', '100', NULL, NULL, NULL, NULL, 0, 2024, 'India', 'IND_39393_RISK MANAGEMENT', 0, NULL, 'IND_7', '2024-06-27 20:29:45.716185', NULL, 0, 'APAC', 1, 'INR', '100', NULL, NULL, NULL, NULL, NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(8, '62805', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', '100', NULL, NULL, NULL, NULL, 0, 2024, 'India', 'IND_62805_RISK MANAGEMENT', 0, NULL, 'IND_8', '2024-06-27 20:29:45.737232', NULL, 0, 'APAC', 1, 'GBP', '100', NULL, NULL, NULL, NULL, NULL, '124.48184432300549', '100.0', '124.48184432300549', '124.48184432300549', '100.0', '124.48184432300549'),
(9, '', 'Finance Executive', 'B2', 'General Management', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '100', NULL, NULL, NULL, NULL, 0, 2024, 'India', 'IND_3031123_RISK MANAGEMENT', 0, NULL, 'IND_9', '2024-06-27 20:29:45.757173', '2024-06-26', 0, 'APAC', 0, 'INR', '100', NULL, NULL, NULL, NULL, NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(10, '', 'Finance Executive', 'B2', 'General Management', 'APAC', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '100', NULL, NULL, NULL, NULL, 0, 2024, 'India', 'IND_3032123_RISK MANAGEMENT', 0, NULL, 'IND_10', '2024-06-27 20:29:45.776711', '2024-06-26', 0, 'APAC', 0, 'INR', '100', NULL, NULL, NULL, NULL, NULL, '9090.909090909092', '0.9730134713715112', '1.2112200643933035', '9090.909090909092', '0.9730134713715112', '1.2112200643933035'),
(11, '3032124', 'Software Engineer2', 'G', 'Security & Risk', 'APAC', 'Government & Public Services', NULL, '1', NULL, 'Bhoopendra', 'Manager', '1000.0', NULL, '0', '0', NULL, 0, 2024, 'India', 'IND_NONE_GOVERNMENT & PUBLIC SERVICES', 0, NULL, 'Ind_11', NULL, NULL, 1, 'APAC', 1, 'INR', '1000', '1', '0', '0', '0', '0', '90909.09090909091', '9.730134713715112', '12.112200643933035', '90909.09090909091', '9.730134713715112', '12.112200643933035'),
(12, '450616A', 'Commercial Assistant', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', '24000', NULL, NULL, NULL, NULL, 0, 2024, 'Angola', 'ANG_450616A_RISK MANAGEMENT', 0, NULL, 'ANG_12', '2024-06-28 15:27:20.602500', NULL, 0, 'AME', 1, 'AOA', '24000', '200', '100', NULL, NULL, NULL, '34.65300795256211', '27.837922511518812', '34.65300795256211', '34.65300795256211', '27.837922511518812', '34.65300795256211'),
(13, '32893', 'MD CaRs', 'A', 'Operations Support', 'AME', 'Risk Management', NULL, '1', 'Indirect Labour (Indirect)', 'Fiona Walters', 'Regional CEO, UK&I', '272950', NULL, NULL, NULL, NULL, 0, 2024, 'Angola', 'ANG_32893_RISK MANAGEMENT', 0, NULL, 'ANG_13', '2024-06-28 15:27:20.630855', NULL, 0, 'AME', 1, 'AOA', '272950', NULL, NULL, NULL, NULL, NULL, '394.10577169382617', '316.5983728966275', '394.10577169382617', '394.10577169382617', '316.5983728966275', '394.10577169382617'),
(14, '53671', 'Managing Director Cash UK', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Charlie Baillieu', 'CFO - International', '286383', NULL, NULL, NULL, NULL, 0, 2024, 'Angola', 'ANG_53671_RISK MANAGEMENT', 0, NULL, 'ANG_14', '2024-06-28 15:27:20.659225', NULL, 0, 'AME', 1, 'AOA', '286383', NULL, NULL, NULL, NULL, NULL, '413.5013490199415', '332.17949010901214', '413.5013490199415', '413.5013490199415', '332.17949010901214', '413.5013490199415'),
(15, '450591A', 'Billing (Budgeted 0.6 - Allied 0.4)', 'F1', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Siobhan Smith', 'O2C Assistant Manager', '21734', NULL, '10', NULL, NULL, 0, 2024, 'Angola', 'ANG_450591A_RISK MANAGEMENT', 0, NULL, 'ANG_15', '2024-06-28 15:27:20.683054', NULL, 0, 'AME', 1, 'AOA', '21734', NULL, NULL, NULL, NULL, NULL, '31.381186451707705', '25.209558661056242', '31.381186451707705', '31.381186451707705', '25.209558661056242', '31.381186451707705'),
(16, '38459', 'Managing Director - FM&PS', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '209708', NULL, NULL, NULL, NULL, 0, 2024, 'Angola', 'ANG_38459_RISK MANAGEMENT', 0, NULL, 'ANG_16', '2024-06-28 15:27:20.709601', NULL, 0, 'AME', 1, 'AOA', '209708', NULL, NULL, NULL, NULL, NULL, '302.7922079881623', '243.24312725189947', '302.7922079881623', '302.7922079881623', '243.24312725189947', '302.7922079881623'),
(17, '1000191A', 'Managing Director SSUK', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '216300', NULL, NULL, NULL, NULL, 0, 2024, 'Angola', 'ANG_1000191A_RISK MANAGEMENT', 0, NULL, 'ANG_17', '2024-06-28 15:27:20.730637', NULL, 0, 'AME', 1, 'AOA', '216300', NULL, NULL, NULL, NULL, NULL, '312.31023417246604', '250.88927663506328', '312.31023417246604', '312.31023417246604', '250.88927663506328', '312.31023417246604'),
(18, '39393', 'Management Accountant - Five Wells', 'A', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Jonathan Foster', 'Finance BP - CADs & CS', '64310', NULL, NULL, NULL, NULL, 0, 2024, 'Angola', 'ANG_39393_RISK MANAGEMENT', 0, NULL, 'ANG_18', '2024-06-28 15:27:20.751268', NULL, 0, 'AME', 1, 'AOA', '64310', NULL, NULL, NULL, NULL, NULL, '92.8556225595529', '74.59403319649061', '92.8556225595529', '92.8556225595529', '74.59403319649061', '92.8556225595529'),
(19, '62805', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', '37000', NULL, NULL, NULL, NULL, 0, 2024, 'Angola', 'ANG_62805_RISK MANAGEMENT', 0, NULL, 'ANG_19', '2024-06-28 15:27:20.772699', NULL, 0, 'AME', 1, 'AOA', '37000', NULL, NULL, NULL, NULL, NULL, '53.423387260199924', '42.91679720525817', '53.423387260199924', '53.423387260199924', '42.91679720525817', '53.423387260199924'),
(20, '4354353534', 'Finance Executive', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '216300', NULL, NULL, NULL, NULL, 0, 2024, 'Angola', 'ANG_3031123_RISK MANAGEMENT', 0, NULL, 'ANG_20', '2024-06-28 15:27:20.797252', NULL, 0, 'AME', 1, 'AOA', '216300', NULL, NULL, NULL, NULL, NULL, '312.31023417246604', '250.88927663506328', '312.31023417246604', '312.31023417246604', '250.88927663506328', '312.31023417246604'),
(21, '3032123', 'Finance Executive', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '216300', NULL, NULL, NULL, NULL, 0, 2024, 'Angola', 'ANG_3032123_RISK MANAGEMENT', 0, NULL, 'ANG_21', '2024-06-28 15:27:20.821682', NULL, 0, 'AME', 1, 'AOA', '216300', NULL, NULL, NULL, NULL, NULL, '312.31023417246604', '250.88927663506328', '312.31023417246604', '312.31023417246604', '250.88927663506328', '312.31023417246604'),
(22, 'A1200', 'Commercial Assistant', 'E2', 'Finance', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', '1000', NULL, '10', NULL, NULL, 0, 2024, 'Morocco - Cash Solutions', 'MOR_A1200_RISK MANAGEMENT', 0, NULL, 'MOR_22', '2024-06-28 17:48:29.251129', '2024-06-29', 0, 'Europe', 1, 'MAD', '1000', '10', '0', NULL, NULL, NULL, '98.512558873568', '79.13834173518728', '98.512558873568', '98.512558873568', '79.13834173518728', '98.512558873568'),
(23, 'A1201', 'MD CaRs', 'A', 'Operations Support', 'Europe', 'Risk Management', NULL, '1', 'Indirect Labour (Indirect)', 'Fiona Walters', 'Regional CEO, UK&I', '1000', NULL, '10', NULL, NULL, 0, 2024, 'Morocco - Cash Solutions', 'MOR_A1201_RISK MANAGEMENT', 0, NULL, 'MOR_23', '2024-06-28 17:48:29.277643', '2024-06-29', 0, 'Europe', 1, 'MAD', '1000', '10', '0', NULL, NULL, NULL, '98.512558873568', '79.13834173518728', '98.512558873568', '98.512558873568', '79.13834173518728', '98.512558873568'),
(24, 'A1202', 'Managing Director Cash UK', 'B2', 'General Management', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Charlie Baillieu', 'CFO - International', '1000', NULL, '10', NULL, NULL, 0, 2024, 'Morocco - Cash Solutions', 'MOR_A1202_RISK MANAGEMENT', 0, NULL, 'MOR_24', '2024-06-28 17:48:29.301050', '2024-06-29', 0, 'Europe', 1, 'MAD', '1000', '10', '0', NULL, NULL, NULL, '98.512558873568', '79.13834173518728', '98.512558873568', '98.512558873568', '79.13834173518728', '98.512558873568'),
(25, 'A1203', 'Billing (Budgeted 0.6 - Allied 0.4)', 'F1', 'Finance', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Siobhan Smith', 'O2C Assistant Manager', '1000', NULL, '10', NULL, NULL, 0, 2024, 'Morocco - Cash Solutions', 'MOR_A1203_RISK MANAGEMENT', 0, NULL, 'MOR_25', '2024-06-28 17:48:29.325976', '2024-06-29', 0, 'Europe', 1, 'MAD', '1000', '10', '0', NULL, NULL, NULL, '98.512558873568', '79.13834173518728', '98.512558873568', '98.512558873568', '79.13834173518728', '98.512558873568'),
(26, 'A1204', 'Managing Director - FM&PS', 'A', 'General Management', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '1000', NULL, '10', NULL, NULL, 0, 2024, 'Morocco - Cash Solutions', 'MOR_A1204_RISK MANAGEMENT', 0, NULL, 'MOR_26', '2024-06-28 17:48:29.349546', '2024-06-29', 0, 'Europe', 1, 'MAD', '1000', '10', '0', NULL, NULL, NULL, '98.512558873568', '79.13834173518728', '98.512558873568', '98.512558873568', '79.13834173518728', '98.512558873568'),
(27, 'A1205', 'Managing Director SSUK', 'A', 'General Management', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '1000', NULL, '10', NULL, NULL, 0, 2024, 'Morocco - Cash Solutions', 'MOR_A1205_RISK MANAGEMENT', 0, NULL, 'MOR_27', '2024-06-28 17:48:29.373519', '2024-06-29', 0, 'Europe', 1, 'MAD', '1000', '10', '0', NULL, NULL, NULL, '98.512558873568', '79.13834173518728', '98.512558873568', '98.512558873568', '79.13834173518728', '98.512558873568'),
(28, 'A1206', 'Management Accountant - Five Wells', 'A', 'Finance', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Jonathan Foster', 'Finance BP - CADs & CS', '1000', NULL, '10', NULL, NULL, 0, 2024, 'Morocco - Cash Solutions', 'MOR_A1206_RISK MANAGEMENT', 0, NULL, 'MOR_28', '2024-06-28 17:48:29.395524', '2024-06-29', 0, 'Europe', 1, 'INR', '1000', '10', '0', NULL, NULL, NULL, '90909.09090909091', '9.730134713715112', '12.112200643933035', '90909.09090909091', '9.730134713715112', '12.112200643933035'),
(29, 'A1207', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', '1000', NULL, '10', NULL, NULL, 0, 2024, 'Morocco - Cash Solutions', 'MOR_A1207_RISK MANAGEMENT', 0, NULL, 'MOR_29', '2024-06-28 17:48:29.419248', '2024-06-29', 0, 'Europe', 1, 'INR', '1000', '10', '0', NULL, NULL, NULL, '90909.09090909091', '9.730134713715112', '12.112200643933035', '90909.09090909091', '9.730134713715112', '12.112200643933035'),
(30, 'A1208', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', '1000', NULL, '10', NULL, NULL, 0, 2024, 'Morocco - Cash Solutions', 'MOR_A1208_RISK MANAGEMENT', 0, NULL, 'MOR_30', '2024-06-28 17:48:29.442050', '2024-06-29', 0, 'Europe', 1, 'INR', '1000', '10', '0', NULL, NULL, NULL, '90909.09090909091', '9.730134713715112', '12.112200643933035', '90909.09090909091', '9.730134713715112', '12.112200643933035'),
(31, 'A1209', 'Commercial Assistant', 'E2', 'Finance', 'Europe', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', '1000', NULL, '10', NULL, NULL, 0, 2024, 'Morocco - Cash Solutions', 'MOR_A1209_RISK MANAGEMENT', 0, NULL, 'MOR_31', '2024-06-28 17:48:29.464101', '2024-06-29', 0, 'Europe', 1, 'INR', '1000', '10', '0', NULL, NULL, NULL, '90909.09090909091', '9.730134713715112', '12.112200643933035', '90909.09090909091', '9.730134713715112', '12.112200643933035'),
(32, '', 'Marketing Head', 'C2', 'Property', 'AME', 'Facilities Management (incl. Cleaning)', NULL, '1', NULL, 'Rahul', 'Manager', '12220.0', NULL, '0', '0', NULL, 0, 2024, 'Lebanon', 'LEB_NONE_FACILITIES MANAGEMENT (INCL. CLEANING)', 0, NULL, 'Leb_32', NULL, '2024-06-25', 0, 'AME', 0, 'LBP', '12220.0', '10', '0', '0', '0', '0', '0.9141807166654644', '0.7343920048821805', '0.9141807166654644', '0.9141807166654644', '0.7343920048821805', '0.9141807166654644'),
(33, 'A1200', 'Commercial Assistant', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', '10', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Dubai', 'UNI_A1200_RISK MANAGEMENT', 0, NULL, 'UNI_33', '2024-06-28 18:19:27.978415', '2024-06-29', 0, 'AME', 1, 'AED', '10', '10', '0', NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(34, 'A1201', 'Managing Director Cash UK', 'A', 'Operations Support', 'AME', 'Risk Management', NULL, '1', 'Indirect Labour (Indirect)', 'Fiona Walters', 'Regional CEO, UK&I', '10', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Dubai', 'UNI_A1201_RISK MANAGEMENT', 0, NULL, 'UNI_34', '2024-06-28 18:19:28.001538', '2024-06-29', 0, 'AME', 1, 'AED', '10', '10', '0', NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(35, 'A1202', 'Managing Director Cash UK', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Charlie Baillieu', 'CFO - International', '10', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Dubai', 'UNI_A1202_RISK MANAGEMENT', 0, NULL, 'UNI_35', '2024-06-28 18:19:28.022803', '2024-06-29', 0, 'AME', 1, 'AED', '10', '10', '0', NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(36, 'A1203', 'Billing (Budgeted 0.6 - Allied 0.4)', 'F1', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Siobhan Smith', 'O2C Assistant Manager', '10', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Dubai', 'UNI_A1203_RISK MANAGEMENT', 0, NULL, 'UNI_36', '2024-06-28 18:19:28.043847', '2024-06-29', 0, 'AME', 1, 'AED', '10', '10', '0', NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(37, 'A1204', 'Managing Director - FM&PS', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '10', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Dubai', 'UNI_A1204_RISK MANAGEMENT', 0, NULL, 'UNI_37', '2024-06-28 18:19:28.068910', '2024-06-29', 0, 'AME', 1, 'AED', '10', '10', '0', NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(38, 'A1205', 'Managing Director SSUK', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '10', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Dubai', 'UNI_A1205_RISK MANAGEMENT', 0, NULL, 'UNI_38', '2024-06-28 18:19:28.091562', '2024-06-29', 0, 'AME', 1, 'AED', '10', '10', '0', NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(39, 'A1206', 'Management Accountant - Five Wells', 'A', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Jonathan Foster', 'Finance BP - CADs & CS', '10', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Dubai', 'UNI_A1206_RISK MANAGEMENT', 0, NULL, 'UNI_39', '2024-06-28 18:19:28.121132', '2024-06-29', 0, 'AME', 1, 'AED', '10', '10', '0', NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(40, 'A1207', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', '40.5707', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Dubai', 'UNI_A1207_RISK MANAGEMENT', 0, NULL, 'UNI_40', '2024-06-28 18:19:28.152234', '2024-06-29', 0, 'AME', 1, 'GBP', '40.5707', '10', '0', NULL, NULL, NULL, '50.503155614753595', '40.5707', '50.503155614753595', '50.503155614753595', '40.5707', '50.503155614753595'),
(41, 'A1208', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', '2493.47', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Dubai', 'UNI_A1208_RISK MANAGEMENT', 0, NULL, 'UNI_41', '2024-06-28 18:19:28.179350', '2024-06-29', 0, 'AME', 1, 'INR', '2493.47', '10', '0', NULL, NULL, NULL, '226679.0909090909', '24.261799004607216', '30.2014089396277', '226679.0909090909', '24.261799004607216', '30.2014089396277'),
(42, 'A1209', 'Commercial Assistant', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', '30.67', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Dubai', 'UNI_A1209_RISK MANAGEMENT', 0, NULL, 'UNI_42', '2024-06-28 18:19:28.201857', '2024-06-29', 0, 'AME', 1, 'EUR', '30.67', '10', '0', NULL, NULL, NULL, '30.67', '35.662790697674424', '28.137614678899084', '30.67', '35.662790697674424', '28.137614678899084'),
(43, 'A1200', 'Commercial Assistant', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', '10', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1200_RISK MANAGEMENT', 0, NULL, 'UNI_43', '2024-06-28 18:50:44.824471', '2024-06-29', 0, 'AME', 1, 'AED', '10', '10', '0', NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(44, 'A1201', 'Managing Director Cash UK', 'A', 'Operations Support', 'AME', 'Risk Management', NULL, '1', 'Indirect Labour (Indirect)', 'Fiona Walters', 'Regional CEO, UK&I', '10', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1201_RISK MANAGEMENT', 0, NULL, 'UNI_44', '2024-06-28 18:50:44.851790', '2024-06-29', 0, 'AME', 1, 'AED', '10', '10', '0', NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(45, 'A1202', 'Managing Director Cash UK', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Charlie Baillieu', 'CFO - International', '10', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1202_RISK MANAGEMENT', 0, NULL, 'UNI_45', '2024-06-28 18:50:44.878845', '2024-06-29', 0, 'AME', 1, 'AED', '10', '10', '0', NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(46, 'A1203', 'Billing (Budgeted 0.6 - Allied 0.4)', 'F1', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Siobhan Smith', 'O2C Assistant Manager', '10', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1203_RISK MANAGEMENT', 0, NULL, 'UNI_46', '2024-06-28 18:50:44.904821', '2024-06-29', 0, 'AME', 1, 'AED', '10', '10', '0', NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(47, 'A1204', 'Managing Director - FM&PS', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '10', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1204_RISK MANAGEMENT', 0, NULL, 'UNI_47', '2024-06-28 18:50:44.928357', '2024-06-29', 0, 'AME', 1, 'AED', '10', '10', '0', NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(48, 'A1205', 'Managing Director SSUK', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '10', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1205_RISK MANAGEMENT', 0, NULL, 'UNI_48', '2024-06-28 18:50:44.955248', '2024-06-29', 0, 'AME', 1, 'AED', '10', '10', '0', NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(49, 'A1206', 'Management Accountant - Five Wells', 'A', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Jonathan Foster', 'Finance BP - CADs & CS', '10', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1206_RISK MANAGEMENT', 0, NULL, 'UNI_49', '2024-06-28 18:50:44.979402', '2024-06-29', 0, 'AME', 1, 'AED', '10', '10', '0', NULL, NULL, NULL, '2.723459883435917', '2.1878486883847112', '2.723459883435917', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(50, 'A1207', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', '40.5707', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1207_RISK MANAGEMENT', 0, NULL, 'UNI_50', '2024-06-28 18:50:45.006631', '2024-06-29', 0, 'AME', 1, 'GBP', '40.5707', '10', '0', NULL, NULL, NULL, '50.503155614753595', '40.5707', '50.503155614753595', '50.503155614753595', '40.5707', '50.503155614753595'),
(51, 'A1208', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', '2493.47', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1208_RISK MANAGEMENT', 0, NULL, 'UNI_51', '2024-06-28 18:50:45.028611', '2024-06-29', 0, 'AME', 1, 'INR', '2493.47', '10', '0', NULL, NULL, NULL, '226679.0909090909', '24.261799004607216', '30.2014089396277', '226679.0909090909', '24.261799004607216', '30.2014089396277'),
(52, 'A1209', 'Commercial Assistant', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', '30.67', NULL, '10', NULL, NULL, 0, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_A1209_RISK MANAGEMENT', 0, NULL, 'UNI_52', '2024-06-28 18:50:45.050481', '2024-06-29', 0, 'AME', 1, 'EUR', '30.67', '10', '0', NULL, NULL, NULL, '30.67', '35.662790697674424', '28.137614678899084', '30.67', '35.662790697674424', '28.137614678899084'),
(53, 'A1210', 'WE', 'F1', 'Property', 'AME', 'Secure Solutions - Allied Universal', NULL, '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', '0.0', NULL, '0', '0', NULL, 0, 2024, 'United Arab Emirates - Abu Dhabi', 'UNI_NONE_SECURE SOLUTIONS - ALLIED UNIVERSAL', 0, NULL, 'Uni_53', NULL, NULL, 1, 'AME', 1, 'AED', '10', '0', '0', '0', '0', '0', '0.0', '0.0', '0.0', '2.723459883435917', '2.1878486883847112', '2.723459883435917'),
(54, '450616A', 'Commercial Assistant', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Christine Christie', 'Team Leader - Commercial Assistant', '24000', NULL, NULL, NULL, NULL, 0, 2024, 'Bahrain', 'BAH_450616A_RISK MANAGEMENT', 0, NULL, 'BAH_54', '2024-06-28 19:04:03.335045', NULL, 0, 'AME', 1, 'AOA', '24000', '200', '100', NULL, NULL, NULL, '34.65300795256211', '27.837922511518812', '34.65300795256211', '34.65300795256211', '27.837922511518812', '34.65300795256211'),
(55, '32893', 'MD CaRs', 'A', 'Operations Support', 'AME', 'Risk Management', NULL, '1', 'Indirect Labour (Indirect)', 'Fiona Walters', 'Regional CEO, UK&I', '272950', NULL, NULL, NULL, NULL, 0, 2024, 'Bahrain', 'BAH_32893_RISK MANAGEMENT', 0, NULL, 'BAH_55', '2024-06-28 19:04:03.361022', NULL, 0, 'AME', 1, 'AOA', '272950', NULL, NULL, NULL, NULL, NULL, '394.10577169382617', '316.5983728966275', '394.10577169382617', '394.10577169382617', '316.5983728966275', '394.10577169382617'),
(56, '', 'Managing Director Cash UK', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Charlie Baillieu', 'CFO - International', '286383', NULL, NULL, NULL, NULL, 0, 2024, 'Bahrain', 'BAH_53671_RISK MANAGEMENT', 0, NULL, 'BAH_56', '2024-06-28 19:04:03.384755', '2024-07-12', 0, 'AME', 0, 'AOA', '286383', NULL, NULL, NULL, NULL, NULL, '413.5013490199415', '332.17949010901214', '413.5013490199415', '413.5013490199415', '332.17949010901214', '413.5013490199415'),
(57, '450591A', 'Billing (Budgeted 0.6 - Allied 0.4)', 'F1', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Siobhan Smith', 'O2C Assistant Manager', '21734', NULL, '10', NULL, NULL, 0, 2024, 'Bahrain', 'BAH_450591A_RISK MANAGEMENT', 0, NULL, 'BAH_57', '2024-06-28 19:04:03.406641', '2024-07-31', 0, 'AME', 1, 'AOA', '21734', NULL, NULL, NULL, NULL, NULL, '31.381186451707705', '25.209558661056242', '31.381186451707705', '31.381186451707705', '25.209558661056242', '31.381186451707705'),
(58, '38459', 'Managing Director - FM&PS', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '209708', NULL, NULL, NULL, NULL, 0, 2024, 'Bahrain', 'BAH_38459_RISK MANAGEMENT', 0, NULL, 'BAH_58', '2024-06-28 19:04:03.430283', NULL, 0, 'AME', 1, 'AOA', '209708', NULL, NULL, NULL, NULL, NULL, '302.7922079881623', '243.24312725189947', '302.7922079881623', '302.7922079881623', '243.24312725189947', '302.7922079881623'),
(59, '1000191A', 'Managing Director SSUK', 'A', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '216300', NULL, NULL, NULL, NULL, 0, 2024, 'Bahrain', 'BAH_1000191A_RISK MANAGEMENT', 0, NULL, 'BAH_59', '2024-06-28 19:04:03.452652', '2024-07-31', 0, 'AME', 1, 'AOA', '216300', NULL, NULL, NULL, NULL, NULL, '312.31023417246604', '250.88927663506328', '312.31023417246604', '312.31023417246604', '250.88927663506328', '312.31023417246604'),
(60, '39393', 'Management Accountant - Five Wells', 'A', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Jonathan Foster', 'Finance BP - CADs & CS', '64310', NULL, NULL, NULL, NULL, 0, 2024, 'Bahrain', 'BAH_39393_RISK MANAGEMENT', 0, NULL, 'BAH_60', '2024-06-28 19:04:03.474743', NULL, 0, 'AME', 1, 'AOA', '64310', NULL, NULL, NULL, NULL, NULL, '92.8556225595529', '74.59403319649061', '92.8556225595529', '92.8556225595529', '74.59403319649061', '92.8556225595529'),
(61, '62805', 'Accounts Payable Assistant Manager', 'E2', 'Finance', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Lyndsay Killoran', 'Procure to Pay Lead', '37000', NULL, NULL, NULL, NULL, 0, 2024, 'Bahrain', 'BAH_62805_RISK MANAGEMENT', 0, NULL, 'BAH_61', '2024-06-28 19:04:03.497010', NULL, 0, 'AME', 1, 'AOA', '37000', NULL, NULL, NULL, NULL, NULL, '53.423387260199924', '42.91679720525817', '53.423387260199924', '53.423387260199924', '42.91679720525817', '53.423387260199924'),
(62, '1112121212', 'Finance Executive', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '216300', NULL, NULL, NULL, NULL, 0, 2024, 'Bahrain', 'BAH_3031123_RISK MANAGEMENT', 0, NULL, 'BAH_62', '2024-06-28 19:04:03.525890', NULL, 0, 'AME', 1, 'AOA', '216300', NULL, NULL, NULL, NULL, NULL, '312.31023417246604', '250.88927663506328', '312.31023417246604', '312.31023417246604', '250.88927663506328', '312.31023417246604'),
(63, '', 'Finance Executive', 'B2', 'General Management', 'AME', 'Risk Management', NULL, '1', 'Admin Labour (SG&A)', 'Fiona Walters', 'Regional CEO, UK&I', '216300', NULL, NULL, NULL, NULL, 0, 2024, 'Bahrain', 'BAH_122112_RISK MANAGEMENT', 0, NULL, 'BAH_63', '2024-06-28 19:04:03.548140', '2024-06-25', 0, 'AME', 0, 'INR', '216300', NULL, NULL, NULL, NULL, NULL, '19663636.363636363', '2104.6281385765787', '2619.8689992827153', '19663636.363636363', '2104.6281385765787', '2619.8689992827153'),
(64, '1234567890', 'Finance Executive', 'G', 'Security & Risk', 'AME', 'Secure Solutions - Allied Universal', NULL, '1', NULL, 'Rahul', 'Manager', '12000.0', NULL, '0', '0', NULL, 0, 2024, 'Angola', 'ANG_NONE_SECURE SOLUTIONS - ALLIED UNIVERSAL', 0, NULL, 'Ang_64', NULL, NULL, 0, 'AME', 1, 'AOA', '12000.0', '0', '0', '0', '0', '0', '17.326503976281057', '13.918961255759406', '17.326503976281057', '17.326503976281057', '13.918961255759406', '17.326503976281057'),
(65, '', 'Senior Software Engineer 3', 'Exec', 'Security & Risk', 'AME', 'Government & Public Services', NULL, '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', '0.0', NULL, '0', '0', NULL, 0, 2024, 'Angola', 'ANG_NONE_GOVERNMENT & PUBLIC SERVICES', 0, NULL, 'Ang_65', NULL, '2024-06-29', 0, 'AME', 0, 'AOA', '0.0', '0', '0', '0', '0', '0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0'),
(66, '', 'Testing Job', 'Exec', 'Property', 'AME', 'Secure Solutions - Allied Universal', NULL, '1', NULL, 'Rahul', 'Manager', '12000.0', NULL, '0', '0', NULL, 0, 2024, 'Angola', 'ANG_NONE_SECURE SOLUTIONS - ALLIED UNIVERSAL', 0, NULL, 'Ang_66', NULL, '2024-06-30', 0, 'AME', 0, 'AOA', '12000.0', '0', '0', '0', '0', '0', '17.326503976281057', '13.918961255759406', '17.326503976281057', '17.326503976281057', '13.918961255759406', '17.326503976281057'),
(67, '333333333333', 'Senior Software Engineer 4', 'G', 'Other', 'AME', 'Secure Solutions - Allied Universal', NULL, '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', '1000.0', NULL, NULL, '0', NULL, 0, 2024, 'Angola', 'ANG_NONE_SECURE SOLUTIONS - ALLIED UNIVERSAL', 0, NULL, 'Ang_67', NULL, NULL, 0, 'AME', 1, 'AOA', '1000.0', '0', '0', '0', '0', '0', '1.4438753313567547', '1.1599134379799505', '1.4438753313567547', '1.4438753313567547', '1.1599134379799505', '1.4438753313567547'),
(68, '1234444', 'Property consultant', 'G', 'Property', 'APAC', 'Shared Services Center - Human Resources', NULL, '1', NULL, 'Fiona Walters', 'Regional CEO, UK&I', '1000000.0', NULL, '0', '0', NULL, 0, 2024, 'India', 'IND_NONE_SHARED SERVICES CENTER - HUMAN RESOURCES', 0, NULL, 'Ind_68', NULL, '2024-07-31', 0, 'APAC', 1, 'INR', '1000000.0', '0', '0', '0', '0', '0', '90909090.90909092', '9730.134713715112', '12112.200643933034', '90909090.90909092', '9730.134713715112', '12112.200643933034');

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
  `added_on` datetime(6) NOT NULL,
  `user_region` varchar(200) DEFAULT NULL,
  `last_updated_on` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users_assigned_country`
--

INSERT INTO `users_assigned_country` (`id`, `user_email`, `user_country`, `added_on`, `user_region`, `last_updated_on`) VALUES
(14, 'azad.singh@g4s.com', 'India', '2023-12-15 11:35:01.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(17, 'test@g4s.com', 'Bangladesh', '2023-12-15 13:11:29.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(20, 'test@g4s.com', 'United Kingdom', '2023-12-20 13:33:07.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(23, 'azad.singh@g4s.com', 'Oman', '2023-12-20 13:33:07.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(24, 'azad.singh@g4s.com', 'Mexico', '2023-12-20 13:33:07.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(25, 'azad.singh@g4s.com', 'Hungary', '2023-12-20 13:33:07.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(26, 'azad.singh@g4s.com', 'Germany', '2023-12-20 13:33:07.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(27, 'azad.singh@g4s.com', 'Austria', '2023-12-20 13:33:07.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(37, 'kamal.negi@in.g4s.com', 'Oman', '2023-12-21 10:04:33.000000', 'AME', '2024-06-19 14:42:56.620554'),
(39, 'testvm1@yopmail.com', 'Australia', '2023-12-22 07:52:07.000000', NULL, '2024-06-19 14:42:56.620554'),
(40, 'testvm1@yopmail.com', 'Bangladesh', '2023-12-22 07:52:07.000000', NULL, '2024-06-19 14:42:56.620554'),
(41, 'testvm15769@yopmail.com', 'Austria', '2023-12-22 07:54:00.000000', NULL, '2024-06-19 14:42:56.620554'),
(42, 'abc@g4.com', 'All', '2023-12-28 10:29:49.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(188, 'vikas.kumar@in.g4s.com', 'Qatar', '2024-01-16 05:33:08.000000', 'AME', '2024-06-19 14:42:56.620554'),
(283, 'saurabh.khare@in.g4s.com', 'Argentina', '2024-01-19 12:15:17.000000', 'Latin America', '2024-06-19 14:42:56.620554'),
(284, 'saurabh.khare@in.g4s.com', 'Barbados', '2024-01-19 12:15:17.000000', 'Latin America', '2024-06-19 14:42:56.620554'),
(285, 'saurabh.khare@in.g4s.com', 'Brazil', '2024-01-19 12:15:17.000000', 'Latin America', '2024-06-19 14:42:56.620554'),
(286, 'saurabh.khare@in.g4s.com', 'Chile', '2024-01-19 12:15:17.000000', 'Latin America', '2024-06-19 14:42:56.620554'),
(287, 'saurabh.khare@in.g4s.com', 'Colombia', '2024-01-19 12:15:17.000000', 'Latin America', '2024-06-19 14:42:56.620554'),
(288, 'saurabh.khare@in.g4s.com', 'Costa Rica', '2024-01-19 12:15:17.000000', 'Latin America', '2024-06-19 14:42:56.620554'),
(289, 'saurabh.khare@in.g4s.com', 'Ecuador', '2024-01-19 12:15:17.000000', 'Latin America', '2024-06-19 14:42:56.620554'),
(290, 'saurabh.khare@in.g4s.com', 'El Salvador', '2024-01-19 12:15:17.000000', 'Latin America', '2024-06-19 14:42:56.620554'),
(291, 'saurabh.khare@in.g4s.com', 'Guatemala', '2024-01-19 12:15:17.000000', 'Latin America', '2024-06-19 14:42:56.620554'),
(292, 'saurabh.khare@in.g4s.com', 'Nicaragua', '2024-01-19 12:15:17.000000', 'Latin America', '2024-06-19 14:42:56.620554'),
(293, 'saurabh.khare@in.g4s.com', 'Paraguay', '2024-01-19 12:15:17.000000', 'Latin America', '2024-06-19 14:42:56.620554'),
(294, 'saurabh.khare@in.g4s.com', 'Peru', '2024-01-19 12:15:17.000000', 'Latin America', '2024-06-19 14:42:56.620554'),
(295, 'saurabh.khare@in.g4s.com', 'Trinidad and Tobago', '2024-01-19 12:15:17.000000', 'Latin America', '2024-06-19 14:42:56.620554'),
(296, 'saurabh.khare@in.g4s.com', 'Turkey', '2024-01-19 12:15:17.000000', 'Latin America', '2024-06-19 14:42:56.620554'),
(384, 'arvind.kumar@in.g4s.com', 'Angola', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(385, 'arvind.kumar@in.g4s.com', 'Bahrain', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(386, 'arvind.kumar@in.g4s.com', 'Botswana', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(387, 'arvind.kumar@in.g4s.com', 'Cameroon', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(388, 'arvind.kumar@in.g4s.com', 'Central African Republic', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(389, 'arvind.kumar@in.g4s.com', 'Democratic Republic of Congo', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(390, 'arvind.kumar@in.g4s.com', 'Deposita International', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(391, 'arvind.kumar@in.g4s.com', 'Egypt', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(392, 'arvind.kumar@in.g4s.com', 'Gabon', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(393, 'arvind.kumar@in.g4s.com', 'Gambia', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(394, 'arvind.kumar@in.g4s.com', 'Ghana', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(395, 'arvind.kumar@in.g4s.com', 'Guinea', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(396, 'arvind.kumar@in.g4s.com', 'Ivory Coast', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(397, 'arvind.kumar@in.g4s.com', 'Jordan', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(398, 'arvind.kumar@in.g4s.com', 'Kenya', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(399, 'arvind.kumar@in.g4s.com', 'Lebanon', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(400, 'arvind.kumar@in.g4s.com', 'Lesotho', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(401, 'arvind.kumar@in.g4s.com', 'Madagascar', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(402, 'arvind.kumar@in.g4s.com', 'Malawi', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(403, 'arvind.kumar@in.g4s.com', 'Mozambique', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(404, 'arvind.kumar@in.g4s.com', 'Namibia', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(405, 'arvind.kumar@in.g4s.com', 'Nigeria', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(406, 'arvind.kumar@in.g4s.com', 'Oman', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(407, 'arvind.kumar@in.g4s.com', 'Qatar', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(408, 'arvind.kumar@in.g4s.com', 'Regional Office', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(409, 'arvind.kumar@in.g4s.com', 'Saudi Arabia', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(410, 'arvind.kumar@in.g4s.com', 'Sierra Leone', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(411, 'arvind.kumar@in.g4s.com', 'South Africa - Cash Solutions', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(412, 'arvind.kumar@in.g4s.com', 'South Africa - Secure Solutions', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(413, 'arvind.kumar@in.g4s.com', 'South Africa - Care and Justice ', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(414, 'arvind.kumar@in.g4s.com', 'Tanzania', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(415, 'arvind.kumar@in.g4s.com', 'Uganda', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(416, 'arvind.kumar@in.g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(417, 'arvind.kumar@in.g4s.com', 'United Arab Emirates - Dubai', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(418, 'arvind.kumar@in.g4s.com', 'Zambia', '2024-01-30 05:07:47.000000', 'AME', '2024-06-19 14:42:56.620554'),
(455, 'rashmi.bharti@in.g4s.com', 'Austria', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(456, 'rashmi.bharti@in.g4s.com', 'Belgium - Secure Solutions', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(457, 'rashmi.bharti@in.g4s.com', 'Czech Republic', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(458, 'rashmi.bharti@in.g4s.com', 'Denmark', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(459, 'rashmi.bharti@in.g4s.com', 'Estonia', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(460, 'rashmi.bharti@in.g4s.com', 'France', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(461, 'rashmi.bharti@in.g4s.com', 'Greece', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(462, 'rashmi.bharti@in.g4s.com', 'Latvia', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(463, 'rashmi.bharti@in.g4s.com', 'Lithuania', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(464, 'rashmi.bharti@in.g4s.com', 'Luxembourg - Secure Solutions', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(465, 'rashmi.bharti@in.g4s.com', 'Malta', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(466, 'rashmi.bharti@in.g4s.com', 'Morocco - Secure Solutions', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(467, 'rashmi.bharti@in.g4s.com', 'Morocco - Cash Solutions', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(468, 'rashmi.bharti@in.g4s.com', 'Netherlands - Secure Solutions', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(469, 'rashmi.bharti@in.g4s.com', 'Regional Office', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(470, 'rashmi.bharti@in.g4s.com', 'Serbia', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(471, 'rashmi.bharti@in.g4s.com', 'Slovakia', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(472, 'rashmi.bharti@in.g4s.com', 'Slovenia', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(473, 'rashmi.bharti@in.g4s.com', 'Turkey', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(474, 'rashmi.bharti@in.g4s.com', 'Ukraine', '2024-01-30 11:49:02.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1037, 'stephanie.wyatt@g4s.com', 'Angola', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1038, 'stephanie.wyatt@g4s.com', 'Bahrain', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1039, 'stephanie.wyatt@g4s.com', 'Botswana', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1040, 'stephanie.wyatt@g4s.com', 'Cameroon', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1041, 'stephanie.wyatt@g4s.com', 'Central African Republic', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1042, 'stephanie.wyatt@g4s.com', 'Democratic Republic of Congo', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1043, 'stephanie.wyatt@g4s.com', 'Deposita International', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1044, 'stephanie.wyatt@g4s.com', 'Egypt', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1045, 'stephanie.wyatt@g4s.com', 'Gabon', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1046, 'stephanie.wyatt@g4s.com', 'Gambia', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1047, 'stephanie.wyatt@g4s.com', 'Ghana', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1048, 'stephanie.wyatt@g4s.com', 'Guinea', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1049, 'stephanie.wyatt@g4s.com', 'Ivory Coast', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1050, 'stephanie.wyatt@g4s.com', 'Jordan', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1051, 'stephanie.wyatt@g4s.com', 'Kenya', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1052, 'stephanie.wyatt@g4s.com', 'Lebanon', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1053, 'stephanie.wyatt@g4s.com', 'Lesotho', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1054, 'stephanie.wyatt@g4s.com', 'Madagascar', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1055, 'stephanie.wyatt@g4s.com', 'Malawi', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1056, 'stephanie.wyatt@g4s.com', 'Mozambique', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1057, 'stephanie.wyatt@g4s.com', 'Namibia', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1058, 'stephanie.wyatt@g4s.com', 'Nigeria', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1059, 'stephanie.wyatt@g4s.com', 'Oman', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1060, 'stephanie.wyatt@g4s.com', 'Qatar', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1061, 'stephanie.wyatt@g4s.com', 'Regional Office', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1062, 'stephanie.wyatt@g4s.com', 'Saudi Arabia', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1063, 'stephanie.wyatt@g4s.com', 'Sierra Leone', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1064, 'stephanie.wyatt@g4s.com', 'South Africa - Cash Solutions', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1065, 'stephanie.wyatt@g4s.com', 'South Africa - Secure Solutions', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1066, 'stephanie.wyatt@g4s.com', 'South Africa - Care and Justice ', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1067, 'stephanie.wyatt@g4s.com', 'Tanzania', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1068, 'stephanie.wyatt@g4s.com', 'Uganda', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1069, 'stephanie.wyatt@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1070, 'stephanie.wyatt@g4s.com', 'United Arab Emirates - Dubai', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1071, 'stephanie.wyatt@g4s.com', 'Zambia', '2024-01-30 13:45:13.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1072, 'stephanie.wyatt@g4s.com', 'Bangladesh', '2024-01-30 13:45:13.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1073, 'stephanie.wyatt@g4s.com', 'C&J - Australia', '2024-01-30 13:45:13.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1074, 'stephanie.wyatt@g4s.com', 'China', '2024-01-30 13:45:13.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1075, 'stephanie.wyatt@g4s.com', 'Guam', '2024-01-30 13:45:13.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1076, 'stephanie.wyatt@g4s.com', 'Hong Kong', '2024-01-30 13:45:13.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1077, 'stephanie.wyatt@g4s.com', 'India', '2024-01-30 13:45:13.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1078, 'stephanie.wyatt@g4s.com', 'Indonesia', '2024-01-30 13:45:13.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1079, 'stephanie.wyatt@g4s.com', 'Japan', '2024-01-30 13:45:13.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1080, 'stephanie.wyatt@g4s.com', 'Macau', '2024-01-30 13:45:13.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1081, 'stephanie.wyatt@g4s.com', 'Nepal', '2024-01-30 13:45:13.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1082, 'stephanie.wyatt@g4s.com', 'Papua New Guinea', '2024-01-30 13:45:13.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1083, 'stephanie.wyatt@g4s.com', 'Risk Consulting - Hill and Associates', '2024-01-30 13:45:13.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1084, 'stephanie.wyatt@g4s.com', 'Singapore', '2024-01-30 13:45:13.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1085, 'stephanie.wyatt@g4s.com', 'Taiwan', '2024-01-30 13:45:13.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1086, 'stephanie.wyatt@g4s.com', 'Thailand', '2024-01-30 13:45:13.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1087, 'stephanie.wyatt@g4s.com', 'AUS Electronic Monitoring', '2024-01-30 13:45:13.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(1088, 'stephanie.wyatt@g4s.com', 'Corporate Services / International Business Head Office', '2024-01-30 13:45:13.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(1089, 'stephanie.wyatt@g4s.com', 'Austria', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1090, 'stephanie.wyatt@g4s.com', 'Belgium - Secure Solutions', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1091, 'stephanie.wyatt@g4s.com', 'Czech Republic', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1092, 'stephanie.wyatt@g4s.com', 'Denmark', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1093, 'stephanie.wyatt@g4s.com', 'Estonia', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1094, 'stephanie.wyatt@g4s.com', 'France', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1095, 'stephanie.wyatt@g4s.com', 'Greece', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1096, 'stephanie.wyatt@g4s.com', 'Latvia', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1097, 'stephanie.wyatt@g4s.com', 'Lithuania', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1098, 'stephanie.wyatt@g4s.com', 'Luxembourg - Secure Solutions', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1099, 'stephanie.wyatt@g4s.com', 'Malta', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1100, 'stephanie.wyatt@g4s.com', 'Morocco - Secure Solutions', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1101, 'stephanie.wyatt@g4s.com', 'Morocco - Cash Solutions', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1102, 'stephanie.wyatt@g4s.com', 'Netherlands - Secure Solutions', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1103, 'stephanie.wyatt@g4s.com', 'Serbia', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1104, 'stephanie.wyatt@g4s.com', 'Slovakia', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1105, 'stephanie.wyatt@g4s.com', 'Slovenia', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1106, 'stephanie.wyatt@g4s.com', 'Turkey', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1107, 'stephanie.wyatt@g4s.com', 'Ukraine', '2024-01-30 13:45:13.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1108, 'stephanie.wyatt@g4s.com', 'Argentina', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1109, 'stephanie.wyatt@g4s.com', 'Barbados', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1110, 'stephanie.wyatt@g4s.com', 'Brazil', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1111, 'stephanie.wyatt@g4s.com', 'Chile', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1112, 'stephanie.wyatt@g4s.com', 'Colombia', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1113, 'stephanie.wyatt@g4s.com', 'Costa Rica', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1114, 'stephanie.wyatt@g4s.com', 'Ecuador', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1115, 'stephanie.wyatt@g4s.com', 'El Salvador', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1116, 'stephanie.wyatt@g4s.com', 'Grenada', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1117, 'stephanie.wyatt@g4s.com', 'Guatemala', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1118, 'stephanie.wyatt@g4s.com', 'Nicaragua', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1119, 'stephanie.wyatt@g4s.com', 'Paraguay', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1120, 'stephanie.wyatt@g4s.com', 'Peru', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1121, 'stephanie.wyatt@g4s.com', 'St. Lucia', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1122, 'stephanie.wyatt@g4s.com', 'Trinidad and Tobago', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1123, 'stephanie.wyatt@g4s.com', 'Uruguay', '2024-01-30 13:45:13.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1124, 'stephanie.wyatt@g4s.com', 'Allied Universal Electronic Monitoring', '2024-01-30 13:45:13.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1125, 'stephanie.wyatt@g4s.com', 'AUS Compliance and Investigations', '2024-01-30 13:45:13.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1126, 'stephanie.wyatt@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-01-30 13:45:13.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1127, 'stephanie.wyatt@g4s.com', 'C&J - Employment Support Services', '2024-01-30 13:45:13.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1128, 'stephanie.wyatt@g4s.com', 'C&J - Health Services', '2024-01-30 13:45:13.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1129, 'stephanie.wyatt@g4s.com', 'C&J - Patient Transport Services', '2024-01-30 13:45:13.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1130, 'stephanie.wyatt@g4s.com', 'Facilities Management', '2024-01-30 13:45:13.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1131, 'stephanie.wyatt@g4s.com', 'Ireland', '2024-01-30 13:45:13.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1132, 'stephanie.wyatt@g4s.com', 'Risk', '2024-01-30 13:45:13.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1133, 'stephanie.wyatt@g4s.com', 'Secure Solutions UK', '2024-01-30 13:45:13.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1134, 'stephanie.wyatt@g4s.com', 'UK - Cash Solutions', '2024-01-30 13:45:13.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1135, 'nick.tsimogiannis@g4s.com', 'Angola', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1136, 'nick.tsimogiannis@g4s.com', 'Bahrain', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1137, 'nick.tsimogiannis@g4s.com', 'Botswana', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1138, 'nick.tsimogiannis@g4s.com', 'Cameroon', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1139, 'nick.tsimogiannis@g4s.com', 'Central African Republic', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1140, 'nick.tsimogiannis@g4s.com', 'Democratic Republic of Congo', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1141, 'nick.tsimogiannis@g4s.com', 'Deposita International', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1142, 'nick.tsimogiannis@g4s.com', 'Egypt', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1143, 'nick.tsimogiannis@g4s.com', 'Gabon', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1144, 'nick.tsimogiannis@g4s.com', 'Gambia', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1145, 'nick.tsimogiannis@g4s.com', 'Ghana', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1146, 'nick.tsimogiannis@g4s.com', 'Guinea', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1147, 'nick.tsimogiannis@g4s.com', 'Ivory Coast', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1148, 'nick.tsimogiannis@g4s.com', 'Jordan', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1149, 'nick.tsimogiannis@g4s.com', 'Kenya', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1150, 'nick.tsimogiannis@g4s.com', 'Lebanon', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1151, 'nick.tsimogiannis@g4s.com', 'Lesotho', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1152, 'nick.tsimogiannis@g4s.com', 'Madagascar', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1153, 'nick.tsimogiannis@g4s.com', 'Malawi', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1154, 'nick.tsimogiannis@g4s.com', 'Mozambique', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1155, 'nick.tsimogiannis@g4s.com', 'Namibia', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1156, 'nick.tsimogiannis@g4s.com', 'Nigeria', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1157, 'nick.tsimogiannis@g4s.com', 'Oman', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1158, 'nick.tsimogiannis@g4s.com', 'Qatar', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1159, 'nick.tsimogiannis@g4s.com', 'Regional Office', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1160, 'nick.tsimogiannis@g4s.com', 'Saudi Arabia', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1161, 'nick.tsimogiannis@g4s.com', 'Sierra Leone', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1162, 'nick.tsimogiannis@g4s.com', 'South Africa - Cash Solutions', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1163, 'nick.tsimogiannis@g4s.com', 'South Africa - Secure Solutions', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1164, 'nick.tsimogiannis@g4s.com', 'South Africa - Care and Justice', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1165, 'nick.tsimogiannis@g4s.com', 'Tanzania', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1166, 'nick.tsimogiannis@g4s.com', 'Uganda', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1167, 'nick.tsimogiannis@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1168, 'nick.tsimogiannis@g4s.com', 'United Arab Emirates - Dubai', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1169, 'nick.tsimogiannis@g4s.com', 'Zambia', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1170, 'nick.tsimogiannis@g4s.com', 'Bangladesh', '2024-01-30 13:54:52.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1171, 'nick.tsimogiannis@g4s.com', 'C&J - Australia', '2024-01-30 13:54:52.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1172, 'nick.tsimogiannis@g4s.com', 'China', '2024-01-30 13:54:52.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1173, 'nick.tsimogiannis@g4s.com', 'Guam', '2024-01-30 13:54:52.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1174, 'nick.tsimogiannis@g4s.com', 'Hong Kong', '2024-01-30 13:54:52.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1175, 'nick.tsimogiannis@g4s.com', 'India', '2024-01-30 13:54:52.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1176, 'nick.tsimogiannis@g4s.com', 'Indonesia', '2024-01-30 13:54:52.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1177, 'nick.tsimogiannis@g4s.com', 'Japan', '2024-01-30 13:54:52.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1178, 'nick.tsimogiannis@g4s.com', 'Macau', '2024-01-30 13:54:52.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1179, 'nick.tsimogiannis@g4s.com', 'Nepal', '2024-01-30 13:54:52.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1180, 'nick.tsimogiannis@g4s.com', 'Papua New Guinea', '2024-01-30 13:54:52.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1181, 'nick.tsimogiannis@g4s.com', 'Regional Office', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1182, 'nick.tsimogiannis@g4s.com', 'Risk Consulting - Hill and Associates', '2024-01-30 13:54:52.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1183, 'nick.tsimogiannis@g4s.com', 'Singapore', '2024-01-30 13:54:52.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1184, 'nick.tsimogiannis@g4s.com', 'Taiwan', '2024-01-30 13:54:52.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1185, 'nick.tsimogiannis@g4s.com', 'Thailand', '2024-01-30 13:54:52.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1186, 'nick.tsimogiannis@g4s.com', 'AUS Electronic Monitoring', '2024-01-30 13:54:52.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(1187, 'nick.tsimogiannis@g4s.com', 'Corporate Services / International Business Head Office', '2024-01-30 13:54:52.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(1188, 'nick.tsimogiannis@g4s.com', 'Austria', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1189, 'nick.tsimogiannis@g4s.com', 'Belgium - Secure Solutions', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1190, 'nick.tsimogiannis@g4s.com', 'Czech Republic', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1191, 'nick.tsimogiannis@g4s.com', 'Denmark', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1192, 'nick.tsimogiannis@g4s.com', 'Estonia', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1193, 'nick.tsimogiannis@g4s.com', 'France', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1194, 'nick.tsimogiannis@g4s.com', 'Greece', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1195, 'nick.tsimogiannis@g4s.com', 'Latvia', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1196, 'nick.tsimogiannis@g4s.com', 'Lithuania', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1197, 'nick.tsimogiannis@g4s.com', 'Luxembourg - Secure Solutions', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1198, 'nick.tsimogiannis@g4s.com', 'Malta', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1199, 'nick.tsimogiannis@g4s.com', 'Morocco - Secure Solutions', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1200, 'nick.tsimogiannis@g4s.com', 'Morocco - Cash Solutions', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1201, 'nick.tsimogiannis@g4s.com', 'Netherlands - Secure Solutions', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1202, 'nick.tsimogiannis@g4s.com', 'Regional Office', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1203, 'nick.tsimogiannis@g4s.com', 'Serbia', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1204, 'nick.tsimogiannis@g4s.com', 'Slovakia', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1205, 'nick.tsimogiannis@g4s.com', 'Slovenia', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1206, 'nick.tsimogiannis@g4s.com', 'Turkey', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1207, 'nick.tsimogiannis@g4s.com', 'Ukraine', '2024-01-30 13:54:52.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1208, 'nick.tsimogiannis@g4s.com', 'Argentina', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1209, 'nick.tsimogiannis@g4s.com', 'Barbados', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1210, 'nick.tsimogiannis@g4s.com', 'Brazil', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1211, 'nick.tsimogiannis@g4s.com', 'Chile', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1212, 'nick.tsimogiannis@g4s.com', 'Colombia', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1213, 'nick.tsimogiannis@g4s.com', 'Costa Rica', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1214, 'nick.tsimogiannis@g4s.com', 'Ecuador', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1215, 'nick.tsimogiannis@g4s.com', 'El Salvador', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1216, 'nick.tsimogiannis@g4s.com', 'Grenada', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1217, 'nick.tsimogiannis@g4s.com', 'Guatemala', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1218, 'nick.tsimogiannis@g4s.com', 'Nicaragua', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1219, 'nick.tsimogiannis@g4s.com', 'Paraguay', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1220, 'nick.tsimogiannis@g4s.com', 'Peru', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1221, 'nick.tsimogiannis@g4s.com', 'REGIONal Office', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1222, 'nick.tsimogiannis@g4s.com', 'St. Lucia', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1223, 'nick.tsimogiannis@g4s.com', 'Trinidad and Tobago', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1224, 'nick.tsimogiannis@g4s.com', 'Uruguay', '2024-01-30 13:54:52.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1225, 'nick.tsimogiannis@g4s.com', 'Allied Universal Electronic Monitoring', '2024-01-30 13:54:52.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1226, 'nick.tsimogiannis@g4s.com', 'AUS Compliance and Investigations', '2024-01-30 13:54:52.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1227, 'nick.tsimogiannis@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-01-30 13:54:52.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1228, 'nick.tsimogiannis@g4s.com', 'C&J - Employment Support Services', '2024-01-30 13:54:52.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1229, 'nick.tsimogiannis@g4s.com', 'C&J - Health Services', '2024-01-30 13:54:52.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1230, 'nick.tsimogiannis@g4s.com', 'C&J - Patient Transport Services', '2024-01-30 13:54:52.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1231, 'nick.tsimogiannis@g4s.com', 'Facilities Management', '2024-01-30 13:54:52.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1232, 'nick.tsimogiannis@g4s.com', 'Ireland', '2024-01-30 13:54:52.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1233, 'nick.tsimogiannis@g4s.com', 'Regional Office', '2024-01-30 13:54:52.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1234, 'nick.tsimogiannis@g4s.com', 'Risk', '2024-01-30 13:54:52.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1235, 'nick.tsimogiannis@g4s.com', 'Secure Solutions UK', '2024-01-30 13:54:52.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1236, 'nick.tsimogiannis@g4s.com', 'UK - Cash Solutions', '2024-01-30 13:54:52.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1433, 'shantanu.garg.external@g4s.com', 'Angola', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1434, 'shantanu.garg.external@g4s.com', 'Bahrain', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1435, 'shantanu.garg.external@g4s.com', 'Botswana', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1436, 'shantanu.garg.external@g4s.com', 'Cameroon', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1437, 'shantanu.garg.external@g4s.com', 'Central African Republic', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1438, 'shantanu.garg.external@g4s.com', 'Democratic Republic of Congo', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1439, 'shantanu.garg.external@g4s.com', 'Deposita International', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1440, 'shantanu.garg.external@g4s.com', 'Egypt', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1441, 'shantanu.garg.external@g4s.com', 'Gabon', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1442, 'shantanu.garg.external@g4s.com', 'Gambia', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1443, 'shantanu.garg.external@g4s.com', 'Ghana', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1444, 'shantanu.garg.external@g4s.com', 'Guinea', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1445, 'shantanu.garg.external@g4s.com', 'Ivory Coast', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1446, 'shantanu.garg.external@g4s.com', 'Jordan', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1447, 'shantanu.garg.external@g4s.com', 'Kenya', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1448, 'shantanu.garg.external@g4s.com', 'Lebanon', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1449, 'shantanu.garg.external@g4s.com', 'Lesotho', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1450, 'shantanu.garg.external@g4s.com', 'Madagascar', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1451, 'shantanu.garg.external@g4s.com', 'Malawi', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1452, 'shantanu.garg.external@g4s.com', 'Mozambique', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1453, 'shantanu.garg.external@g4s.com', 'Namibia', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1454, 'shantanu.garg.external@g4s.com', 'Nigeria', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1455, 'shantanu.garg.external@g4s.com', 'Oman', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1456, 'shantanu.garg.external@g4s.com', 'Qatar', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1457, 'shantanu.garg.external@g4s.com', 'Regional Office', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1458, 'shantanu.garg.external@g4s.com', 'Saudi Arabia', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1459, 'shantanu.garg.external@g4s.com', 'Sierra Leone', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1460, 'shantanu.garg.external@g4s.com', 'South Africa - Cash Solutions', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1461, 'shantanu.garg.external@g4s.com', 'South Africa - Secure Solutions', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1462, 'shantanu.garg.external@g4s.com', 'South Africa - Care and Justice ', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1463, 'shantanu.garg.external@g4s.com', 'Tanzania', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1464, 'shantanu.garg.external@g4s.com', 'Uganda', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1465, 'shantanu.garg.external@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1466, 'shantanu.garg.external@g4s.com', 'United Arab Emirates - Dubai', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1467, 'shantanu.garg.external@g4s.com', 'Zambia', '2024-01-30 13:58:50.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1468, 'shantanu.garg.external@g4s.com', 'Bangladesh', '2024-01-30 13:58:50.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1469, 'shantanu.garg.external@g4s.com', 'C&J - Australia', '2024-01-30 13:58:50.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1470, 'shantanu.garg.external@g4s.com', 'China', '2024-01-30 13:58:50.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1471, 'shantanu.garg.external@g4s.com', 'Guam', '2024-01-30 13:58:50.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1472, 'shantanu.garg.external@g4s.com', 'Hong Kong', '2024-01-30 13:58:50.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1473, 'shantanu.garg.external@g4s.com', 'India', '2024-01-30 13:58:50.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1474, 'shantanu.garg.external@g4s.com', 'Indonesia', '2024-01-30 13:58:50.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1475, 'shantanu.garg.external@g4s.com', 'Japan', '2024-01-30 13:58:50.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1476, 'shantanu.garg.external@g4s.com', 'Macau', '2024-01-30 13:58:50.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1477, 'shantanu.garg.external@g4s.com', 'Nepal', '2024-01-30 13:58:50.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1478, 'shantanu.garg.external@g4s.com', 'Papua New Guinea', '2024-01-30 13:58:50.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1479, 'shantanu.garg.external@g4s.com', 'Risk Consulting - Hill and Associates', '2024-01-30 13:58:50.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1480, 'shantanu.garg.external@g4s.com', 'Singapore', '2024-01-30 13:58:50.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1481, 'shantanu.garg.external@g4s.com', 'Taiwan', '2024-01-30 13:58:50.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1482, 'shantanu.garg.external@g4s.com', 'Thailand', '2024-01-30 13:58:50.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1483, 'shantanu.garg.external@g4s.com', 'AUS Electronic Monitoring', '2024-01-30 13:58:50.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(1484, 'shantanu.garg.external@g4s.com', 'Corporate Services / International Business Head Office', '2024-01-30 13:58:50.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(1485, 'shantanu.garg.external@g4s.com', 'Austria', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1486, 'shantanu.garg.external@g4s.com', 'Belgium - Secure Solutions', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1487, 'shantanu.garg.external@g4s.com', 'Czech Republic', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1488, 'shantanu.garg.external@g4s.com', 'Denmark', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1489, 'shantanu.garg.external@g4s.com', 'Estonia', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1490, 'shantanu.garg.external@g4s.com', 'France', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1491, 'shantanu.garg.external@g4s.com', 'Greece', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1492, 'shantanu.garg.external@g4s.com', 'Latvia', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1493, 'shantanu.garg.external@g4s.com', 'Lithuania', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1494, 'shantanu.garg.external@g4s.com', 'Luxembourg - Secure Solutions', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1495, 'shantanu.garg.external@g4s.com', 'Malta', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1496, 'shantanu.garg.external@g4s.com', 'Morocco - Secure Solutions', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1497, 'shantanu.garg.external@g4s.com', 'Morocco - Cash Solutions', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1498, 'shantanu.garg.external@g4s.com', 'Netherlands - Secure Solutions', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1499, 'shantanu.garg.external@g4s.com', 'Serbia', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1500, 'shantanu.garg.external@g4s.com', 'Slovakia', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1501, 'shantanu.garg.external@g4s.com', 'Slovenia', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1502, 'shantanu.garg.external@g4s.com', 'Turkey', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1503, 'shantanu.garg.external@g4s.com', 'Ukraine', '2024-01-30 13:58:50.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1504, 'shantanu.garg.external@g4s.com', 'Argentina', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1505, 'shantanu.garg.external@g4s.com', 'Barbados', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1506, 'shantanu.garg.external@g4s.com', 'Brazil', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1507, 'shantanu.garg.external@g4s.com', 'Chile', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1508, 'shantanu.garg.external@g4s.com', 'Colombia', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1509, 'shantanu.garg.external@g4s.com', 'Costa Rica', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1510, 'shantanu.garg.external@g4s.com', 'Ecuador', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1511, 'shantanu.garg.external@g4s.com', 'El Salvador', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1512, 'shantanu.garg.external@g4s.com', 'Grenada', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1513, 'shantanu.garg.external@g4s.com', 'Guatemala', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1514, 'shantanu.garg.external@g4s.com', 'Nicaragua', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1515, 'shantanu.garg.external@g4s.com', 'Paraguay', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1516, 'shantanu.garg.external@g4s.com', 'Peru', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1517, 'shantanu.garg.external@g4s.com', 'St. Lucia', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1518, 'shantanu.garg.external@g4s.com', 'Trinidad and Tobago', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1519, 'shantanu.garg.external@g4s.com', 'Uruguay', '2024-01-30 13:58:50.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1520, 'shantanu.garg.external@g4s.com', 'Allied Universal Electronic Monitoring', '2024-01-30 13:58:50.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1521, 'shantanu.garg.external@g4s.com', 'AUS Compliance and Investigations', '2024-01-30 13:58:50.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1522, 'shantanu.garg.external@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-01-30 13:58:50.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1523, 'shantanu.garg.external@g4s.com', 'C&J - Employment Support Services', '2024-01-30 13:58:50.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1524, 'shantanu.garg.external@g4s.com', 'C&J - Health Services', '2024-01-30 13:58:50.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1525, 'shantanu.garg.external@g4s.com', 'C&J - Patient Transport Services', '2024-01-30 13:58:50.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1526, 'shantanu.garg.external@g4s.com', 'Facilities Management', '2024-01-30 13:58:50.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1527, 'shantanu.garg.external@g4s.com', 'Ireland', '2024-01-30 13:58:50.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1528, 'shantanu.garg.external@g4s.com', 'Risk', '2024-01-30 13:58:50.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1529, 'shantanu.garg.external@g4s.com', 'Secure Solutions UK', '2024-01-30 13:58:50.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1530, 'shantanu.garg.external@g4s.com', 'UK - Cash Solutions', '2024-01-30 13:58:50.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1531, 'adminworkflow@in.g4s.com', 'Angola', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1532, 'adminworkflow@in.g4s.com', 'Bahrain', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1533, 'adminworkflow@in.g4s.com', 'Botswana', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1534, 'adminworkflow@in.g4s.com', 'Cameroon', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1535, 'adminworkflow@in.g4s.com', 'Central African Republic', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1536, 'adminworkflow@in.g4s.com', 'Democratic Republic of Congo', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1537, 'adminworkflow@in.g4s.com', 'Deposita International', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1538, 'adminworkflow@in.g4s.com', 'Egypt', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1539, 'adminworkflow@in.g4s.com', 'Gabon', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1540, 'adminworkflow@in.g4s.com', 'Gambia', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1541, 'adminworkflow@in.g4s.com', 'Ghana', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1542, 'adminworkflow@in.g4s.com', 'Guinea', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1543, 'adminworkflow@in.g4s.com', 'Ivory Coast', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1544, 'adminworkflow@in.g4s.com', 'Jordan', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1545, 'adminworkflow@in.g4s.com', 'Kenya', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1546, 'adminworkflow@in.g4s.com', 'Lebanon', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1547, 'adminworkflow@in.g4s.com', 'Lesotho', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1548, 'adminworkflow@in.g4s.com', 'Madagascar', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1549, 'adminworkflow@in.g4s.com', 'Malawi', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1550, 'adminworkflow@in.g4s.com', 'Mozambique', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1551, 'adminworkflow@in.g4s.com', 'Namibia', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1552, 'adminworkflow@in.g4s.com', 'Nigeria', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1553, 'adminworkflow@in.g4s.com', 'Oman', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1554, 'adminworkflow@in.g4s.com', 'Qatar', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1555, 'adminworkflow@in.g4s.com', 'Regional Office', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1556, 'adminworkflow@in.g4s.com', 'Saudi Arabia', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1557, 'adminworkflow@in.g4s.com', 'Sierra Leone', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1558, 'adminworkflow@in.g4s.com', 'South Africa - Cash Solutions', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1559, 'adminworkflow@in.g4s.com', 'South Africa - Secure Solutions', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1560, 'adminworkflow@in.g4s.com', 'South Africa - Care and Justice ', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1561, 'adminworkflow@in.g4s.com', 'Tanzania', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1562, 'adminworkflow@in.g4s.com', 'Uganda', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1563, 'adminworkflow@in.g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1564, 'adminworkflow@in.g4s.com', 'United Arab Emirates - Dubai', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554');
INSERT INTO `users_assigned_country` (`id`, `user_email`, `user_country`, `added_on`, `user_region`, `last_updated_on`) VALUES
(1565, 'adminworkflow@in.g4s.com', 'Zambia', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1566, 'adminworkflow@in.g4s.com', 'Bangladesh', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1567, 'adminworkflow@in.g4s.com', 'C&J - Australia', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1568, 'adminworkflow@in.g4s.com', 'China', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1569, 'adminworkflow@in.g4s.com', 'Guam', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1570, 'adminworkflow@in.g4s.com', 'Hong Kong', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1571, 'adminworkflow@in.g4s.com', 'India', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1572, 'adminworkflow@in.g4s.com', 'Indonesia', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1573, 'adminworkflow@in.g4s.com', 'Japan', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1574, 'adminworkflow@in.g4s.com', 'Macau', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1575, 'adminworkflow@in.g4s.com', 'Nepal', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1576, 'adminworkflow@in.g4s.com', 'Papua New Guinea', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1577, 'adminworkflow@in.g4s.com', 'Risk Consulting - Hill and Associates', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1578, 'adminworkflow@in.g4s.com', 'Singapore', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1579, 'adminworkflow@in.g4s.com', 'Taiwan', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1580, 'adminworkflow@in.g4s.com', 'Thailand', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1581, 'adminworkflow@in.g4s.com', 'AUS Electronic Monitoring', '2024-01-30 14:03:58.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(1582, 'adminworkflow@in.g4s.com', 'Corporate Services / International Business Head Office', '2024-01-30 14:03:58.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(1583, 'adminworkflow@in.g4s.com', 'Austria', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1584, 'adminworkflow@in.g4s.com', 'Belgium - Secure Solutions', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1585, 'adminworkflow@in.g4s.com', 'Czech Republic', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1586, 'adminworkflow@in.g4s.com', 'Denmark', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1587, 'adminworkflow@in.g4s.com', 'Estonia', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1588, 'adminworkflow@in.g4s.com', 'France', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1589, 'adminworkflow@in.g4s.com', 'Greece', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1590, 'adminworkflow@in.g4s.com', 'Latvia', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1591, 'adminworkflow@in.g4s.com', 'Lithuania', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1592, 'adminworkflow@in.g4s.com', 'Luxembourg - Secure Solutions', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1593, 'adminworkflow@in.g4s.com', 'Malta', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1594, 'adminworkflow@in.g4s.com', 'Morocco - Secure Solutions', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1595, 'adminworkflow@in.g4s.com', 'Morocco - Cash Solutions', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1596, 'adminworkflow@in.g4s.com', 'Netherlands - Secure Solutions', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1597, 'adminworkflow@in.g4s.com', 'Serbia', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1598, 'adminworkflow@in.g4s.com', 'Slovakia', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1599, 'adminworkflow@in.g4s.com', 'Slovenia', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1600, 'adminworkflow@in.g4s.com', 'Turkey', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1601, 'adminworkflow@in.g4s.com', 'Ukraine', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1602, 'adminworkflow@in.g4s.com', 'Argentina', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1603, 'adminworkflow@in.g4s.com', 'Barbados', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1604, 'adminworkflow@in.g4s.com', 'Brazil', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1605, 'adminworkflow@in.g4s.com', 'Chile', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1606, 'adminworkflow@in.g4s.com', 'Colombia', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1607, 'adminworkflow@in.g4s.com', 'Costa Rica', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1608, 'adminworkflow@in.g4s.com', 'Ecuador', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1609, 'adminworkflow@in.g4s.com', 'El Salvador', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1610, 'adminworkflow@in.g4s.com', 'Grenada', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1611, 'adminworkflow@in.g4s.com', 'Guatemala', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1612, 'adminworkflow@in.g4s.com', 'Nicaragua', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1613, 'adminworkflow@in.g4s.com', 'Paraguay', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1614, 'adminworkflow@in.g4s.com', 'Peru', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1615, 'adminworkflow@in.g4s.com', 'St. Lucia', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1616, 'adminworkflow@in.g4s.com', 'Trinidad and Tobago', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1617, 'adminworkflow@in.g4s.com', 'Uruguay', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(1618, 'adminworkflow@in.g4s.com', 'Allied Universal Electronic Monitoring', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1619, 'adminworkflow@in.g4s.com', 'AUS Compliance and Investigations', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1620, 'adminworkflow@in.g4s.com', 'C&J - Care and Rehabilitation Services', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1621, 'adminworkflow@in.g4s.com', 'C&J - Employment Support Services', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1622, 'adminworkflow@in.g4s.com', 'C&J - Health Services', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1623, 'adminworkflow@in.g4s.com', 'C&J - Patient Transport Services', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1624, 'adminworkflow@in.g4s.com', 'Facilities Management', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1625, 'adminworkflow@in.g4s.com', 'Ireland', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1626, 'adminworkflow@in.g4s.com', 'Risk', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1627, 'adminworkflow@in.g4s.com', 'Secure Solutions UK', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1628, 'adminworkflow@in.g4s.com', 'UK - Cash Solutions', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(1927, 'paul.banks@g4s.com', 'Angola', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1928, 'paul.banks@g4s.com', 'Bahrain', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1929, 'paul.banks@g4s.com', 'Botswana', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1930, 'paul.banks@g4s.com', 'Cameroon', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1931, 'paul.banks@g4s.com', 'Central African Republic', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1932, 'paul.banks@g4s.com', 'Democratic Republic of Congo', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1933, 'paul.banks@g4s.com', 'Deposita International', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1934, 'paul.banks@g4s.com', 'Egypt', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1935, 'paul.banks@g4s.com', 'Gabon', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1936, 'paul.banks@g4s.com', 'Gambia', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1937, 'paul.banks@g4s.com', 'Ghana', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1938, 'paul.banks@g4s.com', 'Guinea', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1939, 'paul.banks@g4s.com', 'Ivory Coast', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1940, 'paul.banks@g4s.com', 'Jordan', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1941, 'paul.banks@g4s.com', 'Kenya', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1942, 'paul.banks@g4s.com', 'Lebanon', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1943, 'paul.banks@g4s.com', 'Lesotho', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1944, 'paul.banks@g4s.com', 'Madagascar', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1945, 'paul.banks@g4s.com', 'Malawi', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1946, 'paul.banks@g4s.com', 'Mozambique', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1947, 'paul.banks@g4s.com', 'Namibia', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1948, 'paul.banks@g4s.com', 'Nigeria', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1949, 'paul.banks@g4s.com', 'Oman', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1950, 'paul.banks@g4s.com', 'Qatar', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1951, 'paul.banks@g4s.com', 'Regional Office', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1952, 'paul.banks@g4s.com', 'Saudi Arabia', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1953, 'paul.banks@g4s.com', 'Sierra Leone', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1954, 'paul.banks@g4s.com', 'South Africa - Cash Solutions', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1955, 'paul.banks@g4s.com', 'South Africa - Secure Solutions', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1956, 'paul.banks@g4s.com', 'South Africa - Care and Justice', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1957, 'paul.banks@g4s.com', 'Tanzania', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1958, 'paul.banks@g4s.com', 'Uganda', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1959, 'paul.banks@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1960, 'paul.banks@g4s.com', 'United Arab Emirates - Dubai', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1961, 'paul.banks@g4s.com', 'Zambia', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1962, 'paul.banks@g4s.com', 'Bangladesh', '2024-02-01 12:03:30.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1963, 'paul.banks@g4s.com', 'C&J - Australia', '2024-02-01 12:03:30.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1964, 'paul.banks@g4s.com', 'China', '2024-02-01 12:03:30.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1965, 'paul.banks@g4s.com', 'Guam', '2024-02-01 12:03:30.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1966, 'paul.banks@g4s.com', 'Hong Kong', '2024-02-01 12:03:30.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1967, 'paul.banks@g4s.com', 'India', '2024-02-01 12:03:30.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1968, 'paul.banks@g4s.com', 'Indonesia', '2024-02-01 12:03:30.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1969, 'paul.banks@g4s.com', 'Japan', '2024-02-01 12:03:30.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1970, 'paul.banks@g4s.com', 'Macau', '2024-02-01 12:03:30.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1971, 'paul.banks@g4s.com', 'Nepal', '2024-02-01 12:03:30.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1972, 'paul.banks@g4s.com', 'Papua New Guinea', '2024-02-01 12:03:30.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1973, 'paul.banks@g4s.com', 'Regional Office', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1974, 'paul.banks@g4s.com', 'Risk Consulting - Hill and Associates', '2024-02-01 12:03:30.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1975, 'paul.banks@g4s.com', 'Singapore', '2024-02-01 12:03:30.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1976, 'paul.banks@g4s.com', 'Taiwan', '2024-02-01 12:03:30.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1977, 'paul.banks@g4s.com', 'Thailand', '2024-02-01 12:03:30.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(1978, 'paul.banks@g4s.com', 'AUS Electronic Monitoring', '2024-02-01 12:03:30.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(1979, 'paul.banks@g4s.com', 'Corporate Services / International Business Head Office', '2024-02-01 12:03:30.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(1980, 'paul.banks@g4s.com', 'Austria', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1981, 'paul.banks@g4s.com', 'Belgium - Secure Solutions', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1982, 'paul.banks@g4s.com', 'Czech Republic', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1983, 'paul.banks@g4s.com', 'Denmark', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1984, 'paul.banks@g4s.com', 'Estonia', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1985, 'paul.banks@g4s.com', 'France', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1986, 'paul.banks@g4s.com', 'Greece', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1987, 'paul.banks@g4s.com', 'Latvia', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1988, 'paul.banks@g4s.com', 'Lithuania', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1989, 'paul.banks@g4s.com', 'Luxembourg - Secure Solutions', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1990, 'paul.banks@g4s.com', 'Malta', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1991, 'paul.banks@g4s.com', 'Morocco - Secure Solutions', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1992, 'paul.banks@g4s.com', 'Morocco - Cash Solutions', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1993, 'paul.banks@g4s.com', 'Netherlands - Secure Solutions', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1994, 'paul.banks@g4s.com', 'Regional Office', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(1995, 'paul.banks@g4s.com', 'Serbia', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1996, 'paul.banks@g4s.com', 'Slovakia', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1997, 'paul.banks@g4s.com', 'Slovenia', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1998, 'paul.banks@g4s.com', 'Turkey', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(1999, 'paul.banks@g4s.com', 'Ukraine', '2024-02-01 12:03:30.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2000, 'paul.banks@g4s.com', 'Argentina', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2001, 'paul.banks@g4s.com', 'Barbados', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2002, 'paul.banks@g4s.com', 'Brazil', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2003, 'paul.banks@g4s.com', 'Chile', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2004, 'paul.banks@g4s.com', 'Colombia', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2005, 'paul.banks@g4s.com', 'Costa Rica', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2006, 'paul.banks@g4s.com', 'Ecuador', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2007, 'paul.banks@g4s.com', 'El Salvador', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2008, 'paul.banks@g4s.com', 'Grenada', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2009, 'paul.banks@g4s.com', 'Guatemala', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2010, 'paul.banks@g4s.com', 'Nicaragua', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2011, 'paul.banks@g4s.com', 'Paraguay', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2012, 'paul.banks@g4s.com', 'Peru', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2013, 'paul.banks@g4s.com', 'REGIONal Office', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2014, 'paul.banks@g4s.com', 'St. Lucia', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2015, 'paul.banks@g4s.com', 'Trinidad and Tobago', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2016, 'paul.banks@g4s.com', 'Uruguay', '2024-02-01 12:03:30.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2017, 'paul.banks@g4s.com', 'Allied Universal Electronic Monitoring', '2024-02-01 12:03:30.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2018, 'paul.banks@g4s.com', 'AUS Compliance and Investigations', '2024-02-01 12:03:30.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2019, 'paul.banks@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-02-01 12:03:30.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2020, 'paul.banks@g4s.com', 'C&J - Employment Support Services', '2024-02-01 12:03:30.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2021, 'paul.banks@g4s.com', 'C&J - Health Services', '2024-02-01 12:03:30.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2022, 'paul.banks@g4s.com', 'C&J - Patient Transport Services', '2024-02-01 12:03:30.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2023, 'paul.banks@g4s.com', 'Facilities Management', '2024-02-01 12:03:30.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2024, 'paul.banks@g4s.com', 'Ireland', '2024-02-01 12:03:30.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2025, 'paul.banks@g4s.com', 'Regional Office', '2024-02-01 12:03:30.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2026, 'paul.banks@g4s.com', 'Risk', '2024-02-01 12:03:30.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2027, 'paul.banks@g4s.com', 'Secure Solutions UK', '2024-02-01 12:03:30.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2028, 'paul.banks@g4s.com', 'UK - Cash Solutions', '2024-02-01 12:03:30.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2029, 'robot.bravo@almajalg4s.com', 'Angola', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2030, 'robot.bravo@almajalg4s.com', 'Bahrain', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2031, 'robot.bravo@almajalg4s.com', 'Botswana', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2032, 'robot.bravo@almajalg4s.com', 'Cameroon', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2033, 'robot.bravo@almajalg4s.com', 'Central African Republic', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2034, 'robot.bravo@almajalg4s.com', 'Democratic Republic of Congo', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2035, 'robot.bravo@almajalg4s.com', 'Deposita International', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2036, 'robot.bravo@almajalg4s.com', 'Egypt', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2037, 'robot.bravo@almajalg4s.com', 'Gabon', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2038, 'robot.bravo@almajalg4s.com', 'Gambia', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2039, 'robot.bravo@almajalg4s.com', 'Ghana', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2040, 'robot.bravo@almajalg4s.com', 'Guinea', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2041, 'robot.bravo@almajalg4s.com', 'Ivory Coast', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2042, 'robot.bravo@almajalg4s.com', 'Jordan', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2043, 'robot.bravo@almajalg4s.com', 'Kenya', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2044, 'robot.bravo@almajalg4s.com', 'Lebanon', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2045, 'robot.bravo@almajalg4s.com', 'Lesotho', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2046, 'robot.bravo@almajalg4s.com', 'Madagascar', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2047, 'robot.bravo@almajalg4s.com', 'Malawi', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2048, 'robot.bravo@almajalg4s.com', 'Mozambique', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2049, 'robot.bravo@almajalg4s.com', 'Namibia', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2050, 'robot.bravo@almajalg4s.com', 'Nigeria', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2051, 'robot.bravo@almajalg4s.com', 'Oman', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2052, 'robot.bravo@almajalg4s.com', 'Qatar', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2053, 'robot.bravo@almajalg4s.com', 'Regional Office', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2054, 'robot.bravo@almajalg4s.com', 'Saudi Arabia', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2055, 'robot.bravo@almajalg4s.com', 'Sierra Leone', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2056, 'robot.bravo@almajalg4s.com', 'South Africa - Cash Solutions', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2057, 'robot.bravo@almajalg4s.com', 'South Africa - Secure Solutions', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2058, 'robot.bravo@almajalg4s.com', 'South Africa - Care and Justice', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2059, 'robot.bravo@almajalg4s.com', 'Tanzania', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2060, 'robot.bravo@almajalg4s.com', 'Uganda', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2061, 'robot.bravo@almajalg4s.com', 'United Arab Emirates - Abu Dhabi', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2062, 'robot.bravo@almajalg4s.com', 'United Arab Emirates - Dubai', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2063, 'robot.bravo@almajalg4s.com', 'Zambia', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2064, 'robot.bravo@almajalg4s.com', 'Bangladesh', '2024-02-05 03:27:54.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2065, 'robot.bravo@almajalg4s.com', 'C&J - Australia', '2024-02-05 03:27:54.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2066, 'robot.bravo@almajalg4s.com', 'China', '2024-02-05 03:27:54.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2067, 'robot.bravo@almajalg4s.com', 'Guam', '2024-02-05 03:27:54.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2068, 'robot.bravo@almajalg4s.com', 'Hong Kong', '2024-02-05 03:27:54.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2069, 'robot.bravo@almajalg4s.com', 'India', '2024-02-05 03:27:54.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2070, 'robot.bravo@almajalg4s.com', 'Indonesia', '2024-02-05 03:27:54.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2071, 'robot.bravo@almajalg4s.com', 'Japan', '2024-02-05 03:27:54.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2072, 'robot.bravo@almajalg4s.com', 'Macau', '2024-02-05 03:27:54.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2073, 'robot.bravo@almajalg4s.com', 'Nepal', '2024-02-05 03:27:54.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2074, 'robot.bravo@almajalg4s.com', 'Papua New Guinea', '2024-02-05 03:27:54.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2075, 'robot.bravo@almajalg4s.com', 'Regional Office', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2076, 'robot.bravo@almajalg4s.com', 'Risk Consulting - Hill and Associates', '2024-02-05 03:27:54.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2077, 'robot.bravo@almajalg4s.com', 'Singapore', '2024-02-05 03:27:54.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2078, 'robot.bravo@almajalg4s.com', 'Taiwan', '2024-02-05 03:27:54.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2079, 'robot.bravo@almajalg4s.com', 'Thailand', '2024-02-05 03:27:54.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2080, 'robot.bravo@almajalg4s.com', 'AUS Electronic Monitoring', '2024-02-05 03:27:54.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(2081, 'robot.bravo@almajalg4s.com', 'Corporate Services / International Business Head Office', '2024-02-05 03:27:54.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(2082, 'robot.bravo@almajalg4s.com', 'Austria', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2083, 'robot.bravo@almajalg4s.com', 'Belgium - Secure Solutions', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2084, 'robot.bravo@almajalg4s.com', 'Czech Republic', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2085, 'robot.bravo@almajalg4s.com', 'Denmark', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2086, 'robot.bravo@almajalg4s.com', 'Estonia', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2087, 'robot.bravo@almajalg4s.com', 'France', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2088, 'robot.bravo@almajalg4s.com', 'Greece', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2089, 'robot.bravo@almajalg4s.com', 'Latvia', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2090, 'robot.bravo@almajalg4s.com', 'Lithuania', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2091, 'robot.bravo@almajalg4s.com', 'Luxembourg - Secure Solutions', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2092, 'robot.bravo@almajalg4s.com', 'Malta', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2093, 'robot.bravo@almajalg4s.com', 'Morocco - Secure Solutions', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2094, 'robot.bravo@almajalg4s.com', 'Morocco - Cash Solutions', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2095, 'robot.bravo@almajalg4s.com', 'Netherlands - Secure Solutions', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2096, 'robot.bravo@almajalg4s.com', 'Regional Office', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2097, 'robot.bravo@almajalg4s.com', 'Serbia', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2098, 'robot.bravo@almajalg4s.com', 'Slovakia', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2099, 'robot.bravo@almajalg4s.com', 'Slovenia', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2100, 'robot.bravo@almajalg4s.com', 'Turkey', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2101, 'robot.bravo@almajalg4s.com', 'Ukraine', '2024-02-05 03:27:54.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2102, 'robot.bravo@almajalg4s.com', 'Argentina', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2103, 'robot.bravo@almajalg4s.com', 'Barbados', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2104, 'robot.bravo@almajalg4s.com', 'Brazil', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2105, 'robot.bravo@almajalg4s.com', 'Chile', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2106, 'robot.bravo@almajalg4s.com', 'Colombia', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2107, 'robot.bravo@almajalg4s.com', 'Costa Rica', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2108, 'robot.bravo@almajalg4s.com', 'Ecuador', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2109, 'robot.bravo@almajalg4s.com', 'El Salvador', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2110, 'robot.bravo@almajalg4s.com', 'Grenada', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2111, 'robot.bravo@almajalg4s.com', 'Guatemala', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2112, 'robot.bravo@almajalg4s.com', 'Nicaragua', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2113, 'robot.bravo@almajalg4s.com', 'Paraguay', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2114, 'robot.bravo@almajalg4s.com', 'Peru', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2115, 'robot.bravo@almajalg4s.com', 'REGIONal Office', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2116, 'robot.bravo@almajalg4s.com', 'St. Lucia', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2117, 'robot.bravo@almajalg4s.com', 'Trinidad and Tobago', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2118, 'robot.bravo@almajalg4s.com', 'Uruguay', '2024-02-05 03:27:54.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2119, 'robot.bravo@almajalg4s.com', 'Allied Universal Electronic Monitoring', '2024-02-05 03:27:54.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2120, 'robot.bravo@almajalg4s.com', 'AUS Compliance and Investigations', '2024-02-05 03:27:54.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2121, 'robot.bravo@almajalg4s.com', 'C&J - Care and Rehabilitation Services', '2024-02-05 03:27:54.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2122, 'robot.bravo@almajalg4s.com', 'C&J - Employment Support Services', '2024-02-05 03:27:54.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2123, 'robot.bravo@almajalg4s.com', 'C&J - Health Services', '2024-02-05 03:27:54.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2124, 'robot.bravo@almajalg4s.com', 'C&J - Patient Transport Services', '2024-02-05 03:27:54.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2125, 'robot.bravo@almajalg4s.com', 'Facilities Management', '2024-02-05 03:27:54.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2126, 'robot.bravo@almajalg4s.com', 'Ireland', '2024-02-05 03:27:54.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2127, 'robot.bravo@almajalg4s.com', 'Regional Office', '2024-02-05 03:27:54.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2128, 'robot.bravo@almajalg4s.com', 'Risk', '2024-02-05 03:27:54.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2129, 'robot.bravo@almajalg4s.com', 'Secure Solutions UK', '2024-02-05 03:27:54.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2130, 'robot.bravo@almajalg4s.com', 'UK - Cash Solutions', '2024-02-05 03:27:54.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2131, 'ben.wilshire.external@g4s.com', 'Angola', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2132, 'ben.wilshire.external@g4s.com', 'Bahrain', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2133, 'ben.wilshire.external@g4s.com', 'Botswana', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2134, 'ben.wilshire.external@g4s.com', 'Cameroon', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2135, 'ben.wilshire.external@g4s.com', 'Central African Republic', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2136, 'ben.wilshire.external@g4s.com', 'Democratic Republic of Congo', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2137, 'ben.wilshire.external@g4s.com', 'Deposita International', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2138, 'ben.wilshire.external@g4s.com', 'Egypt', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2139, 'ben.wilshire.external@g4s.com', 'Gabon', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2140, 'ben.wilshire.external@g4s.com', 'Gambia', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2141, 'ben.wilshire.external@g4s.com', 'Ghana', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2142, 'ben.wilshire.external@g4s.com', 'Guinea', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2143, 'ben.wilshire.external@g4s.com', 'Ivory Coast', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2144, 'ben.wilshire.external@g4s.com', 'Jordan', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2145, 'ben.wilshire.external@g4s.com', 'Kenya', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2146, 'ben.wilshire.external@g4s.com', 'Lebanon', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2147, 'ben.wilshire.external@g4s.com', 'Lesotho', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2148, 'ben.wilshire.external@g4s.com', 'Madagascar', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2149, 'ben.wilshire.external@g4s.com', 'Malawi', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2150, 'ben.wilshire.external@g4s.com', 'Mozambique', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2151, 'ben.wilshire.external@g4s.com', 'Namibia', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2152, 'ben.wilshire.external@g4s.com', 'Nigeria', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2153, 'ben.wilshire.external@g4s.com', 'Oman', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2154, 'ben.wilshire.external@g4s.com', 'Qatar', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2155, 'ben.wilshire.external@g4s.com', 'Regional Office', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2156, 'ben.wilshire.external@g4s.com', 'Saudi Arabia', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2157, 'ben.wilshire.external@g4s.com', 'Sierra Leone', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2158, 'ben.wilshire.external@g4s.com', 'South Africa - Cash Solutions', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2159, 'ben.wilshire.external@g4s.com', 'South Africa - Secure Solutions', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2160, 'ben.wilshire.external@g4s.com', 'South Africa - Care and Justice', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2161, 'ben.wilshire.external@g4s.com', 'Tanzania', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2162, 'ben.wilshire.external@g4s.com', 'Uganda', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2163, 'ben.wilshire.external@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2164, 'ben.wilshire.external@g4s.com', 'United Arab Emirates - Dubai', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2165, 'ben.wilshire.external@g4s.com', 'Zambia', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2166, 'ben.wilshire.external@g4s.com', 'Bangladesh', '2024-03-21 09:08:05.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2167, 'ben.wilshire.external@g4s.com', 'C&J - Australia', '2024-03-21 09:08:05.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2168, 'ben.wilshire.external@g4s.com', 'China', '2024-03-21 09:08:05.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2169, 'ben.wilshire.external@g4s.com', 'Guam', '2024-03-21 09:08:05.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2170, 'ben.wilshire.external@g4s.com', 'Hong Kong', '2024-03-21 09:08:05.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2171, 'ben.wilshire.external@g4s.com', 'India', '2024-03-21 09:08:05.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2172, 'ben.wilshire.external@g4s.com', 'Indonesia', '2024-03-21 09:08:05.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2173, 'ben.wilshire.external@g4s.com', 'Japan', '2024-03-21 09:08:05.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2174, 'ben.wilshire.external@g4s.com', 'Macau', '2024-03-21 09:08:05.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2175, 'ben.wilshire.external@g4s.com', 'Nepal', '2024-03-21 09:08:05.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2176, 'ben.wilshire.external@g4s.com', 'Papua New Guinea', '2024-03-21 09:08:05.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2177, 'ben.wilshire.external@g4s.com', 'Regional Office', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2178, 'ben.wilshire.external@g4s.com', 'Risk Consulting - Hill and Associates', '2024-03-21 09:08:05.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2179, 'ben.wilshire.external@g4s.com', 'Singapore', '2024-03-21 09:08:05.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2180, 'ben.wilshire.external@g4s.com', 'Taiwan', '2024-03-21 09:08:05.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2181, 'ben.wilshire.external@g4s.com', 'Thailand', '2024-03-21 09:08:05.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2182, 'ben.wilshire.external@g4s.com', 'AUS Electronic Monitoring', '2024-03-21 09:08:05.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(2183, 'ben.wilshire.external@g4s.com', 'Corporate Services / International Business Head Office', '2024-03-21 09:08:05.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(2184, 'ben.wilshire.external@g4s.com', 'Austria', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2185, 'ben.wilshire.external@g4s.com', 'Belgium - Secure Solutions', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2186, 'ben.wilshire.external@g4s.com', 'Czech Republic', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2187, 'ben.wilshire.external@g4s.com', 'Denmark', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2188, 'ben.wilshire.external@g4s.com', 'Estonia', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2189, 'ben.wilshire.external@g4s.com', 'France', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2190, 'ben.wilshire.external@g4s.com', 'Greece', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2191, 'ben.wilshire.external@g4s.com', 'Latvia', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2192, 'ben.wilshire.external@g4s.com', 'Lithuania', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2193, 'ben.wilshire.external@g4s.com', 'Luxembourg - Secure Solutions', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2194, 'ben.wilshire.external@g4s.com', 'Malta', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2195, 'ben.wilshire.external@g4s.com', 'Morocco - Secure Solutions', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2196, 'ben.wilshire.external@g4s.com', 'Morocco - Cash Solutions', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2197, 'ben.wilshire.external@g4s.com', 'Netherlands - Secure Solutions', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2198, 'ben.wilshire.external@g4s.com', 'Regional Office', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2199, 'ben.wilshire.external@g4s.com', 'Serbia', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2200, 'ben.wilshire.external@g4s.com', 'Slovakia', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2201, 'ben.wilshire.external@g4s.com', 'Slovenia', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2202, 'ben.wilshire.external@g4s.com', 'Turkey', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2203, 'ben.wilshire.external@g4s.com', 'Ukraine', '2024-03-21 09:08:05.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2204, 'ben.wilshire.external@g4s.com', 'Argentina', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2205, 'ben.wilshire.external@g4s.com', 'Barbados', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2206, 'ben.wilshire.external@g4s.com', 'Brazil', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2207, 'ben.wilshire.external@g4s.com', 'Chile', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2208, 'ben.wilshire.external@g4s.com', 'Colombia', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2209, 'ben.wilshire.external@g4s.com', 'Costa Rica', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2210, 'ben.wilshire.external@g4s.com', 'Ecuador', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2211, 'ben.wilshire.external@g4s.com', 'El Salvador', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2212, 'ben.wilshire.external@g4s.com', 'Grenada', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2213, 'ben.wilshire.external@g4s.com', 'Guatemala', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2214, 'ben.wilshire.external@g4s.com', 'Nicaragua', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2215, 'ben.wilshire.external@g4s.com', 'Paraguay', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2216, 'ben.wilshire.external@g4s.com', 'Peru', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2217, 'ben.wilshire.external@g4s.com', 'REGIONal Office', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2218, 'ben.wilshire.external@g4s.com', 'St. Lucia', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2219, 'ben.wilshire.external@g4s.com', 'Trinidad and Tobago', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2220, 'ben.wilshire.external@g4s.com', 'Uruguay', '2024-03-21 09:08:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2221, 'ben.wilshire.external@g4s.com', 'Allied Universal Electronic Monitoring', '2024-03-21 09:08:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2222, 'ben.wilshire.external@g4s.com', 'AUS Compliance and Investigations', '2024-03-21 09:08:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2223, 'ben.wilshire.external@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-03-21 09:08:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2224, 'ben.wilshire.external@g4s.com', 'C&J - Employment Support Services', '2024-03-21 09:08:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2225, 'ben.wilshire.external@g4s.com', 'C&J - Health Services', '2024-03-21 09:08:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2226, 'ben.wilshire.external@g4s.com', 'C&J - Patient Transport Services', '2024-03-21 09:08:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2227, 'ben.wilshire.external@g4s.com', 'Facilities Management', '2024-03-21 09:08:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2228, 'ben.wilshire.external@g4s.com', 'Ireland', '2024-03-21 09:08:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2229, 'ben.wilshire.external@g4s.com', 'Regional Office', '2024-03-21 09:08:05.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2230, 'ben.wilshire.external@g4s.com', 'Risk', '2024-03-21 09:08:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2231, 'ben.wilshire.external@g4s.com', 'Secure Solutions UK', '2024-03-21 09:08:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2232, 'ben.wilshire.external@g4s.com', 'UK - Cash Solutions', '2024-03-21 09:08:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2304, 'pankaj.singh@ame.g4s.com', 'Bangladesh', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2305, 'pankaj.singh@ame.g4s.com', 'C&J - Australia', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2306, 'pankaj.singh@ame.g4s.com', 'China', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2307, 'pankaj.singh@ame.g4s.com', 'Guam', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2308, 'pankaj.singh@ame.g4s.com', 'Hong Kong', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2309, 'pankaj.singh@ame.g4s.com', 'India', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2310, 'pankaj.singh@ame.g4s.com', 'Indonesia', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2311, 'pankaj.singh@ame.g4s.com', 'Japan', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2312, 'pankaj.singh@ame.g4s.com', 'Macau', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2313, 'pankaj.singh@ame.g4s.com', 'Nepal', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2314, 'pankaj.singh@ame.g4s.com', 'Papua New Guinea', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2315, 'pankaj.singh@ame.g4s.com', 'Regional Office', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2316, 'pankaj.singh@ame.g4s.com', 'Risk Consulting - Hill and Associates', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2317, 'pankaj.singh@ame.g4s.com', 'Singapore', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2318, 'pankaj.singh@ame.g4s.com', 'Taiwan', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2319, 'pankaj.singh@ame.g4s.com', 'Thailand', '2024-04-26 08:55:27.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2321, 'trishana.maharaj@ame.g4s.com', 'Angola', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2322, 'trishana.maharaj@ame.g4s.com', ' Bahrain', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2323, 'trishana.maharaj@ame.g4s.com', ' Botswana', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2324, 'trishana.maharaj@ame.g4s.com', ' Cameroon', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2325, 'trishana.maharaj@ame.g4s.com', ' Central African Republic', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2326, 'trishana.maharaj@ame.g4s.com', ' Democratic Republic of Congo', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2327, 'trishana.maharaj@ame.g4s.com', ' Deposita International', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2328, 'trishana.maharaj@ame.g4s.com', ' Egypt', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2329, 'trishana.maharaj@ame.g4s.com', ' Gabon', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2330, 'trishana.maharaj@ame.g4s.com', ' Gambia', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2331, 'trishana.maharaj@ame.g4s.com', ' Ghana', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2332, 'trishana.maharaj@ame.g4s.com', ' Guinea', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2333, 'trishana.maharaj@ame.g4s.com', ' Ivory Coast', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2334, 'trishana.maharaj@ame.g4s.com', ' Jordan', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2335, 'trishana.maharaj@ame.g4s.com', ' Kenya', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2336, 'trishana.maharaj@ame.g4s.com', ' Lebanon', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2337, 'trishana.maharaj@ame.g4s.com', ' Lesotho', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2338, 'trishana.maharaj@ame.g4s.com', ' Madagascar', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2339, 'trishana.maharaj@ame.g4s.com', ' Malawi', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2340, 'trishana.maharaj@ame.g4s.com', ' Mozambique', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2341, 'trishana.maharaj@ame.g4s.com', ' Namibia', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2342, 'trishana.maharaj@ame.g4s.com', ' Nigeria', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2343, 'trishana.maharaj@ame.g4s.com', ' Oman', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2344, 'trishana.maharaj@ame.g4s.com', ' Qatar', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2345, 'trishana.maharaj@ame.g4s.com', ' Regional Office', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2346, 'trishana.maharaj@ame.g4s.com', ' Saudi Arabia', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2347, 'trishana.maharaj@ame.g4s.com', ' Sierra Leone', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2348, 'trishana.maharaj@ame.g4s.com', ' South Africa - Cash Solutions', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2349, 'trishana.maharaj@ame.g4s.com', ' South Africa - Secure Solutions', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554');
INSERT INTO `users_assigned_country` (`id`, `user_email`, `user_country`, `added_on`, `user_region`, `last_updated_on`) VALUES
(2350, 'trishana.maharaj@ame.g4s.com', ' South Africa - Care and Justice ', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2351, 'trishana.maharaj@ame.g4s.com', ' Tanzania', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2352, 'trishana.maharaj@ame.g4s.com', ' Uganda', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2353, 'trishana.maharaj@ame.g4s.com', ' United Arab Emirates - Abu Dhabi', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2354, 'trishana.maharaj@ame.g4s.com', ' United Arab Emirates - Dubai', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2355, 'trishana.maharaj@ame.g4s.com', ' Zambia', '2024-05-14 16:15:24.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2356, 'emma.webber@ame.g4s.com', 'Angola', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2357, 'emma.webber@ame.g4s.com', 'Bahrain', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2358, 'emma.webber@ame.g4s.com', 'Botswana', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2359, 'emma.webber@ame.g4s.com', 'Cameroon', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2360, 'emma.webber@ame.g4s.com', 'Central African Republic', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2361, 'emma.webber@ame.g4s.com', 'Democratic Republic of Congo', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2362, 'emma.webber@ame.g4s.com', 'Deposita International', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2363, 'emma.webber@ame.g4s.com', 'Egypt', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2364, 'emma.webber@ame.g4s.com', 'Gabon', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2365, 'emma.webber@ame.g4s.com', 'Gambia', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2366, 'emma.webber@ame.g4s.com', 'Ghana', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2367, 'emma.webber@ame.g4s.com', 'Guinea', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2368, 'emma.webber@ame.g4s.com', 'Ivory Coast', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2369, 'emma.webber@ame.g4s.com', 'Jordan', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2370, 'emma.webber@ame.g4s.com', 'Kenya', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2371, 'emma.webber@ame.g4s.com', 'Lebanon', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2372, 'emma.webber@ame.g4s.com', 'Lesotho', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2373, 'emma.webber@ame.g4s.com', 'Madagascar', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2374, 'emma.webber@ame.g4s.com', 'Malawi', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2375, 'emma.webber@ame.g4s.com', 'Mozambique', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2376, 'emma.webber@ame.g4s.com', 'Namibia', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2377, 'emma.webber@ame.g4s.com', 'Nigeria', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2378, 'emma.webber@ame.g4s.com', 'Oman', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2379, 'emma.webber@ame.g4s.com', 'Qatar', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2380, 'emma.webber@ame.g4s.com', 'Regional Office', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2381, 'emma.webber@ame.g4s.com', 'Saudi Arabia', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2382, 'emma.webber@ame.g4s.com', 'Sierra Leone', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2383, 'emma.webber@ame.g4s.com', 'South Africa - Cash Solutions', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2384, 'emma.webber@ame.g4s.com', 'South Africa - Secure Solutions', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2385, 'emma.webber@ame.g4s.com', 'South Africa - Care and Justice ', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2386, 'emma.webber@ame.g4s.com', 'Tanzania', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2387, 'emma.webber@ame.g4s.com', 'Uganda', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2388, 'emma.webber@ame.g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2389, 'emma.webber@ame.g4s.com', 'United Arab Emirates - Dubai', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2390, 'emma.webber@ame.g4s.com', 'Zambia', '2024-05-14 16:16:22.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2391, 'sophie.crompton@uk.g4s.com', 'Allied Universal Electronic Monitoring', '2024-05-14 16:17:11.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2392, 'sophie.crompton@uk.g4s.com', 'AUS Compliance and Investigations', '2024-05-14 16:17:11.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2393, 'sophie.crompton@uk.g4s.com', 'C&J - Care and Rehabilitation Services', '2024-05-14 16:17:11.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2394, 'sophie.crompton@uk.g4s.com', 'C&J - Employment Support Services', '2024-05-14 16:17:11.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2395, 'sophie.crompton@uk.g4s.com', 'C&J - Health Services', '2024-05-14 16:17:11.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2396, 'sophie.crompton@uk.g4s.com', 'C&J - Patient Transport Services', '2024-05-14 16:17:11.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2397, 'sophie.crompton@uk.g4s.com', 'Facilities Management', '2024-05-14 16:17:11.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2398, 'sophie.crompton@uk.g4s.com', 'Ireland', '2024-05-14 16:17:11.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2399, 'sophie.crompton@uk.g4s.com', 'Regional Office', '2024-05-14 16:17:11.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2400, 'sophie.crompton@uk.g4s.com', 'Risk', '2024-05-14 16:17:11.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2401, 'sophie.crompton@uk.g4s.com', 'Secure Solutions UK', '2024-05-14 16:17:11.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2402, 'sophie.crompton@uk.g4s.com', 'UK - Cash Solutions', '2024-05-14 16:17:11.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2403, 'jason.dendrijver@eu.g4s.com', 'Allied Universal Electronic Monitoring', '2024-05-14 16:18:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2404, 'jason.dendrijver@eu.g4s.com', 'AUS Compliance and Investigations', '2024-05-14 16:18:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2405, 'jason.dendrijver@eu.g4s.com', 'C&J - Care and Rehabilitation Services', '2024-05-14 16:18:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2406, 'jason.dendrijver@eu.g4s.com', 'C&J - Employment Support Services', '2024-05-14 16:18:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2407, 'jason.dendrijver@eu.g4s.com', 'C&J - Health Services', '2024-05-14 16:18:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2408, 'jason.dendrijver@eu.g4s.com', 'C&J - Patient Transport Services', '2024-05-14 16:18:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2409, 'jason.dendrijver@eu.g4s.com', 'Facilities Management', '2024-05-14 16:18:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2410, 'jason.dendrijver@eu.g4s.com', 'Ireland', '2024-05-14 16:18:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2411, 'jason.dendrijver@eu.g4s.com', 'Regional Office', '2024-05-14 16:18:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2412, 'jason.dendrijver@eu.g4s.com', 'Risk', '2024-05-14 16:18:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2413, 'jason.dendrijver@eu.g4s.com', 'Secure Solutions UK', '2024-05-14 16:18:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2414, 'jason.dendrijver@eu.g4s.com', 'UK - Cash Solutions', '2024-05-14 16:18:05.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2415, 'caroline.roux@ame.g4s.com', 'Bangladesh', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2416, 'caroline.roux@ame.g4s.com', ' C&J - Australia', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2417, 'caroline.roux@ame.g4s.com', ' China', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2418, 'caroline.roux@ame.g4s.com', ' Guam', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2419, 'caroline.roux@ame.g4s.com', ' Hong Kong', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2420, 'caroline.roux@ame.g4s.com', ' India', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2421, 'caroline.roux@ame.g4s.com', ' Indonesia', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2422, 'caroline.roux@ame.g4s.com', ' Japan', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2423, 'caroline.roux@ame.g4s.com', ' Macau', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2424, 'caroline.roux@ame.g4s.com', ' Nepal', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2425, 'caroline.roux@ame.g4s.com', ' Papua New Guinea', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2426, 'caroline.roux@ame.g4s.com', ' Regional Office', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2427, 'caroline.roux@ame.g4s.com', ' Risk Consulting - Hill and Associates', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2428, 'caroline.roux@ame.g4s.com', ' Singapore', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2429, 'caroline.roux@ame.g4s.com', ' Taiwan', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2430, 'caroline.roux@ame.g4s.com', ' Thailand', '2024-05-14 16:18:33.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2431, 'antonia.poon@ame.g4s.com', 'Bangladesh', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2432, 'antonia.poon@ame.g4s.com', 'C&J - Australia', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2433, 'antonia.poon@ame.g4s.com', 'China', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2434, 'antonia.poon@ame.g4s.com', 'Guam', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2435, 'antonia.poon@ame.g4s.com', 'Hong Kong', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2436, 'antonia.poon@ame.g4s.com', 'India', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2437, 'antonia.poon@ame.g4s.com', 'Indonesia', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2438, 'antonia.poon@ame.g4s.com', 'Japan', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2439, 'antonia.poon@ame.g4s.com', 'Macau', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2440, 'antonia.poon@ame.g4s.com', 'Nepal', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2441, 'antonia.poon@ame.g4s.com', 'Papua New Guinea', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2442, 'antonia.poon@ame.g4s.com', 'Regional Office', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2443, 'antonia.poon@ame.g4s.com', 'Risk Consulting - Hill and Associates', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2444, 'antonia.poon@ame.g4s.com', 'Singapore', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2445, 'antonia.poon@ame.g4s.com', 'Taiwan', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2446, 'antonia.poon@ame.g4s.com', 'Thailand', '2024-05-14 16:19:20.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2447, 'paula.rodriguez@latam.g4s.com', 'Argentina', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2448, 'paula.rodriguez@latam.g4s.com', ' Barbados', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2449, 'paula.rodriguez@latam.g4s.com', ' Brazil', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2450, 'paula.rodriguez@latam.g4s.com', ' Chile', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2451, 'paula.rodriguez@latam.g4s.com', ' Colombia', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2452, 'paula.rodriguez@latam.g4s.com', ' Costa Rica', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2453, 'paula.rodriguez@latam.g4s.com', ' Ecuador', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2454, 'paula.rodriguez@latam.g4s.com', ' El Salvador', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2455, 'paula.rodriguez@latam.g4s.com', ' Grenada', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2456, 'paula.rodriguez@latam.g4s.com', ' Guatemala', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2457, 'paula.rodriguez@latam.g4s.com', ' Nicaragua', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2458, 'paula.rodriguez@latam.g4s.com', ' Paraguay', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2459, 'paula.rodriguez@latam.g4s.com', ' Peru', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2460, 'paula.rodriguez@latam.g4s.com', ' REGIONal Office', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2461, 'paula.rodriguez@latam.g4s.com', ' St. Lucia', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2462, 'paula.rodriguez@latam.g4s.com', ' Trinidad and Tobago', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2463, 'paula.rodriguez@latam.g4s.com', ' Uruguay', '2024-05-14 16:20:05.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2464, 'michael.rodriguez@latam.g4s.com', 'Argentina', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2465, 'michael.rodriguez@latam.g4s.com', 'Barbados', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2466, 'michael.rodriguez@latam.g4s.com', 'Brazil', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2467, 'michael.rodriguez@latam.g4s.com', 'Chile', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2468, 'michael.rodriguez@latam.g4s.com', 'Colombia', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2469, 'michael.rodriguez@latam.g4s.com', 'Costa Rica', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2470, 'michael.rodriguez@latam.g4s.com', 'Ecuador', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2471, 'michael.rodriguez@latam.g4s.com', 'El Salvador', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2472, 'michael.rodriguez@latam.g4s.com', 'Grenada', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2473, 'michael.rodriguez@latam.g4s.com', 'Guatemala', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2474, 'michael.rodriguez@latam.g4s.com', 'Nicaragua', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2475, 'michael.rodriguez@latam.g4s.com', 'Paraguay', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2476, 'michael.rodriguez@latam.g4s.com', 'Peru', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2477, 'michael.rodriguez@latam.g4s.com', 'REGIONal Office', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2478, 'michael.rodriguez@latam.g4s.com', 'St. Lucia', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2479, 'michael.rodriguez@latam.g4s.com', 'Trinidad and Tobago', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2480, 'michael.rodriguez@latam.g4s.com', 'Uruguay', '2024-05-14 16:21:31.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2481, 'lidy.vanhout@nl.g4s.com', 'Austria', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2482, 'lidy.vanhout@nl.g4s.com', ' Belgium - Secure Solutions', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2483, 'lidy.vanhout@nl.g4s.com', ' Czech Republic', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2484, 'lidy.vanhout@nl.g4s.com', ' Denmark', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2485, 'lidy.vanhout@nl.g4s.com', ' Estonia', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2486, 'lidy.vanhout@nl.g4s.com', ' France', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2487, 'lidy.vanhout@nl.g4s.com', ' Greece', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2488, 'lidy.vanhout@nl.g4s.com', ' Latvia', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2489, 'lidy.vanhout@nl.g4s.com', ' Lithuania', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2490, 'lidy.vanhout@nl.g4s.com', ' Luxembourg - Secure Solutions', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2491, 'lidy.vanhout@nl.g4s.com', ' Malta', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2492, 'lidy.vanhout@nl.g4s.com', ' Morocco - Secure Solutions', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2493, 'lidy.vanhout@nl.g4s.com', ' Morocco - Cash Solutions', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2494, 'lidy.vanhout@nl.g4s.com', ' Netherlands - Secure Solutions', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2495, 'lidy.vanhout@nl.g4s.com', ' Regional Office', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2496, 'lidy.vanhout@nl.g4s.com', ' Serbia', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2497, 'lidy.vanhout@nl.g4s.com', ' Slovakia', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2498, 'lidy.vanhout@nl.g4s.com', ' Slovenia', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2499, 'lidy.vanhout@nl.g4s.com', ' Turkey', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2500, 'lidy.vanhout@nl.g4s.com', ' Ukraine', '2024-05-14 16:22:08.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2501, 'zahra.anjum@at.g4s.com', 'Austria', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2502, 'zahra.anjum@at.g4s.com', 'Belgium - Secure Solutions', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2503, 'zahra.anjum@at.g4s.com', 'Czech Republic', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2504, 'zahra.anjum@at.g4s.com', 'Denmark', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2505, 'zahra.anjum@at.g4s.com', 'Estonia', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2506, 'zahra.anjum@at.g4s.com', 'France', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2507, 'zahra.anjum@at.g4s.com', 'Greece', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2508, 'zahra.anjum@at.g4s.com', 'Latvia', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2509, 'zahra.anjum@at.g4s.com', 'Lithuania', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2510, 'zahra.anjum@at.g4s.com', 'Luxembourg - Secure Solutions', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2511, 'zahra.anjum@at.g4s.com', 'Malta', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2512, 'zahra.anjum@at.g4s.com', 'Morocco - Secure Solutions', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2513, 'zahra.anjum@at.g4s.com', 'Morocco - Cash Solutions', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2514, 'zahra.anjum@at.g4s.com', 'Netherlands - Secure Solutions', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2515, 'zahra.anjum@at.g4s.com', 'Regional Office', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2516, 'zahra.anjum@at.g4s.com', 'Serbia', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2517, 'zahra.anjum@at.g4s.com', 'Slovakia', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2518, 'zahra.anjum@at.g4s.com', 'Slovenia', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2519, 'zahra.anjum@at.g4s.com', 'Turkey', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2520, 'zahra.anjum@at.g4s.com', 'Ukraine', '2024-05-14 16:22:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2521, 'catherine.hooper@uk.g4s.com', 'Angola', '2024-05-14 17:33:15.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2522, 'catherine.hooper@uk.g4s.com', ' Bahrain', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2523, 'catherine.hooper@uk.g4s.com', ' Botswana', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2524, 'catherine.hooper@uk.g4s.com', ' Cameroon', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2525, 'catherine.hooper@uk.g4s.com', ' Central African Republic', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2526, 'catherine.hooper@uk.g4s.com', ' Democratic Republic of Congo', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2527, 'catherine.hooper@uk.g4s.com', ' Deposita International', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2528, 'catherine.hooper@uk.g4s.com', ' Egypt', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2529, 'catherine.hooper@uk.g4s.com', ' Gabon', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2530, 'catherine.hooper@uk.g4s.com', ' Gambia', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2531, 'catherine.hooper@uk.g4s.com', ' Ghana', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2532, 'catherine.hooper@uk.g4s.com', ' Guinea', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2533, 'catherine.hooper@uk.g4s.com', ' Ivory Coast', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2534, 'catherine.hooper@uk.g4s.com', ' Jordan', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2535, 'catherine.hooper@uk.g4s.com', ' Kenya', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2536, 'catherine.hooper@uk.g4s.com', ' Lebanon', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2537, 'catherine.hooper@uk.g4s.com', ' Lesotho', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2538, 'catherine.hooper@uk.g4s.com', ' Madagascar', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2539, 'catherine.hooper@uk.g4s.com', ' Malawi', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2540, 'catherine.hooper@uk.g4s.com', ' Mozambique', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2541, 'catherine.hooper@uk.g4s.com', ' Namibia', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2542, 'catherine.hooper@uk.g4s.com', ' Nigeria', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2543, 'catherine.hooper@uk.g4s.com', ' Oman', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2544, 'catherine.hooper@uk.g4s.com', ' Qatar', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2545, 'catherine.hooper@uk.g4s.com', ' Regional Office', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2546, 'catherine.hooper@uk.g4s.com', ' Saudi Arabia', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2547, 'catherine.hooper@uk.g4s.com', ' Sierra Leone', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2548, 'catherine.hooper@uk.g4s.com', ' South Africa - Cash Solutions', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2549, 'catherine.hooper@uk.g4s.com', ' South Africa - Secure Solutions', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2550, 'catherine.hooper@uk.g4s.com', ' South Africa - Care and Justice ', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2551, 'catherine.hooper@uk.g4s.com', ' Tanzania', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2552, 'catherine.hooper@uk.g4s.com', ' Uganda', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2553, 'catherine.hooper@uk.g4s.com', ' United Arab Emirates - Abu Dhabi', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2554, 'catherine.hooper@uk.g4s.com', ' United Arab Emirates - Dubai', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2555, 'catherine.hooper@uk.g4s.com', ' Zambia', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2556, 'catherine.hooper@uk.g4s.com', ' Bangladesh', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2557, 'catherine.hooper@uk.g4s.com', ' C&J - Australia', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2558, 'catherine.hooper@uk.g4s.com', ' China', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2559, 'catherine.hooper@uk.g4s.com', ' Guam', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2560, 'catherine.hooper@uk.g4s.com', ' Hong Kong', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2561, 'catherine.hooper@uk.g4s.com', ' India', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2562, 'catherine.hooper@uk.g4s.com', ' Indonesia', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2563, 'catherine.hooper@uk.g4s.com', ' Japan', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2564, 'catherine.hooper@uk.g4s.com', ' Macau', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2565, 'catherine.hooper@uk.g4s.com', ' Nepal', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2566, 'catherine.hooper@uk.g4s.com', ' Papua New Guinea', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2567, 'catherine.hooper@uk.g4s.com', ' Risk Consulting - Hill and Associates', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2568, 'catherine.hooper@uk.g4s.com', ' Singapore', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2569, 'catherine.hooper@uk.g4s.com', ' Taiwan', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2570, 'catherine.hooper@uk.g4s.com', ' Thailand', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2571, 'catherine.hooper@uk.g4s.com', ' AUS Electronic Monitoring', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2572, 'catherine.hooper@uk.g4s.com', ' Corporate Services / International Business Head Office', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2573, 'catherine.hooper@uk.g4s.com', ' Austria', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2574, 'catherine.hooper@uk.g4s.com', ' Belgium - Secure Solutions', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2575, 'catherine.hooper@uk.g4s.com', ' Czech Republic', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2576, 'catherine.hooper@uk.g4s.com', ' Denmark', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2577, 'catherine.hooper@uk.g4s.com', ' Estonia', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2578, 'catherine.hooper@uk.g4s.com', ' France', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2579, 'catherine.hooper@uk.g4s.com', ' Greece', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2580, 'catherine.hooper@uk.g4s.com', ' Latvia', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2581, 'catherine.hooper@uk.g4s.com', ' Lithuania', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2582, 'catherine.hooper@uk.g4s.com', ' Luxembourg - Secure Solutions', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2583, 'catherine.hooper@uk.g4s.com', ' Malta', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2584, 'catherine.hooper@uk.g4s.com', ' Morocco - Secure Solutions', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2585, 'catherine.hooper@uk.g4s.com', ' Morocco - Cash Solutions', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2586, 'catherine.hooper@uk.g4s.com', ' Netherlands - Secure Solutions', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2587, 'catherine.hooper@uk.g4s.com', ' Serbia', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2588, 'catherine.hooper@uk.g4s.com', ' Slovakia', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2589, 'catherine.hooper@uk.g4s.com', ' Slovenia', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2590, 'catherine.hooper@uk.g4s.com', ' Turkey', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2591, 'catherine.hooper@uk.g4s.com', ' ', '2024-05-14 17:33:15.000000', 'All', '2024-06-19 14:42:56.620554'),
(2592, 'amit.varma@g4s.com', 'Angola', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2593, 'amit.varma@g4s.com', 'Bahrain', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2594, 'amit.varma@g4s.com', 'Botswana', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2595, 'amit.varma@g4s.com', 'Cameroon', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2596, 'amit.varma@g4s.com', 'Central African Republic', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2597, 'amit.varma@g4s.com', 'Democratic Republic of Congo', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2598, 'amit.varma@g4s.com', 'Deposita International', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2599, 'amit.varma@g4s.com', 'Egypt', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2600, 'amit.varma@g4s.com', 'Gabon', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2601, 'amit.varma@g4s.com', 'Gambia', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2602, 'amit.varma@g4s.com', 'Ghana', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2603, 'amit.varma@g4s.com', 'Guinea', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2604, 'amit.varma@g4s.com', 'Ivory Coast', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2605, 'amit.varma@g4s.com', 'Jordan', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2606, 'amit.varma@g4s.com', 'Kenya', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2607, 'amit.varma@g4s.com', 'Lebanon', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2608, 'amit.varma@g4s.com', 'Lesotho', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2609, 'amit.varma@g4s.com', 'Madagascar', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2610, 'amit.varma@g4s.com', 'Malawi', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2611, 'amit.varma@g4s.com', 'Mozambique', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2612, 'amit.varma@g4s.com', 'Namibia', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2613, 'amit.varma@g4s.com', 'Nigeria', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2614, 'amit.varma@g4s.com', 'Oman', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2615, 'amit.varma@g4s.com', 'Qatar', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2616, 'amit.varma@g4s.com', 'Regional Office', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2617, 'amit.varma@g4s.com', 'Saudi Arabia', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2618, 'amit.varma@g4s.com', 'Sierra Leone', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2619, 'amit.varma@g4s.com', 'South Africa - Cash Solutions', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2620, 'amit.varma@g4s.com', 'South Africa - Secure Solutions', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2621, 'amit.varma@g4s.com', 'South Africa - Care and Justice ', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2622, 'amit.varma@g4s.com', 'Tanzania', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2623, 'amit.varma@g4s.com', 'Uganda', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2624, 'amit.varma@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2625, 'amit.varma@g4s.com', 'United Arab Emirates - Dubai', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2626, 'amit.varma@g4s.com', 'Zambia', '2024-05-18 08:37:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2627, 'amit.varma@g4s.com', 'Bangladesh', '2024-05-18 08:37:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2628, 'amit.varma@g4s.com', 'C&J - Australia', '2024-05-18 08:37:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2629, 'amit.varma@g4s.com', 'China', '2024-05-18 08:37:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2630, 'amit.varma@g4s.com', 'Guam', '2024-05-18 08:37:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2631, 'amit.varma@g4s.com', 'Hong Kong', '2024-05-18 08:37:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2632, 'amit.varma@g4s.com', 'India', '2024-05-18 08:37:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2633, 'amit.varma@g4s.com', 'Indonesia', '2024-05-18 08:37:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2634, 'amit.varma@g4s.com', 'Japan', '2024-05-18 08:37:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2635, 'amit.varma@g4s.com', 'Macau', '2024-05-18 08:37:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2636, 'amit.varma@g4s.com', 'Nepal', '2024-05-18 08:37:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2637, 'amit.varma@g4s.com', 'Papua New Guinea', '2024-05-18 08:37:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2638, 'amit.varma@g4s.com', 'Risk Consulting - Hill and Associates', '2024-05-18 08:37:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2639, 'amit.varma@g4s.com', 'Singapore', '2024-05-18 08:37:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2640, 'amit.varma@g4s.com', 'Taiwan', '2024-05-18 08:37:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2641, 'amit.varma@g4s.com', 'Thailand', '2024-05-18 08:37:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2642, 'amit.varma@g4s.com', 'AUS Electronic Monitoring', '2024-05-18 08:37:19.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(2643, 'amit.varma@g4s.com', 'Corporate Services / International Business Head Office', '2024-05-18 08:37:19.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(2644, 'amit.varma@g4s.com', 'Austria', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2645, 'amit.varma@g4s.com', 'Belgium - Secure Solutions', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2646, 'amit.varma@g4s.com', 'Czech Republic', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2647, 'amit.varma@g4s.com', 'Denmark', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2648, 'amit.varma@g4s.com', 'Estonia', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2649, 'amit.varma@g4s.com', 'France', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2650, 'amit.varma@g4s.com', 'Greece', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2651, 'amit.varma@g4s.com', 'Latvia', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2652, 'amit.varma@g4s.com', 'Lithuania', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2653, 'amit.varma@g4s.com', 'Luxembourg - Secure Solutions', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2654, 'amit.varma@g4s.com', 'Malta', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2655, 'amit.varma@g4s.com', 'Morocco - Secure Solutions', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2656, 'amit.varma@g4s.com', 'Morocco - Cash Solutions', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2657, 'amit.varma@g4s.com', 'Netherlands - Secure Solutions', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2658, 'amit.varma@g4s.com', 'Serbia', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2659, 'amit.varma@g4s.com', 'Slovakia', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2660, 'amit.varma@g4s.com', 'Slovenia', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2661, 'amit.varma@g4s.com', 'Turkey', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2662, 'amit.varma@g4s.com', 'Ukraine', '2024-05-18 08:37:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2663, 'amit.varma@g4s.com', 'Argentina', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2664, 'amit.varma@g4s.com', 'Barbados', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2665, 'amit.varma@g4s.com', 'Brazil', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2666, 'amit.varma@g4s.com', 'Chile', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2667, 'amit.varma@g4s.com', 'Colombia', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2668, 'amit.varma@g4s.com', 'Costa Rica', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2669, 'amit.varma@g4s.com', 'Ecuador', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2670, 'amit.varma@g4s.com', 'El Salvador', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2671, 'amit.varma@g4s.com', 'Grenada', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2672, 'amit.varma@g4s.com', 'Guatemala', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2673, 'amit.varma@g4s.com', 'Nicaragua', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2674, 'amit.varma@g4s.com', 'Paraguay', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2675, 'amit.varma@g4s.com', 'Peru', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2676, 'amit.varma@g4s.com', 'St. Lucia', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2677, 'amit.varma@g4s.com', 'Trinidad and Tobago', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2678, 'amit.varma@g4s.com', 'Uruguay', '2024-05-18 08:37:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2679, 'amit.varma@g4s.com', 'Allied Universal Electronic Monitoring', '2024-05-18 08:37:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2680, 'amit.varma@g4s.com', 'AUS Compliance and Investigations', '2024-05-18 08:37:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2681, 'amit.varma@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-05-18 08:37:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2682, 'amit.varma@g4s.com', 'C&J - Employment Support Services', '2024-05-18 08:37:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2683, 'amit.varma@g4s.com', 'C&J - Health Services', '2024-05-18 08:37:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2684, 'amit.varma@g4s.com', 'C&J - Patient Transport Services', '2024-05-18 08:37:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2685, 'amit.varma@g4s.com', 'Facilities Management', '2024-05-18 08:37:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2686, 'amit.varma@g4s.com', 'Ireland', '2024-05-18 08:37:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2687, 'amit.varma@g4s.com', 'Risk', '2024-05-18 08:37:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2688, 'amit.varma@g4s.com', 'Secure Solutions UK', '2024-05-18 08:37:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2689, 'amit.varma@g4s.com', 'UK - Cash Solutions', '2024-05-18 08:37:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2690, 'paul.carter@g4s.com', 'Angola', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2691, 'paul.carter@g4s.com', 'Bahrain', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2692, 'paul.carter@g4s.com', 'Botswana', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2693, 'paul.carter@g4s.com', 'Cameroon', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2694, 'paul.carter@g4s.com', 'Central African Republic', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2695, 'paul.carter@g4s.com', 'Democratic Republic of Congo', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2696, 'paul.carter@g4s.com', 'Deposita International', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2697, 'paul.carter@g4s.com', 'Egypt', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2698, 'paul.carter@g4s.com', 'Gabon', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2699, 'paul.carter@g4s.com', 'Gambia', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2700, 'paul.carter@g4s.com', 'Ghana', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2701, 'paul.carter@g4s.com', 'Guinea', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2702, 'paul.carter@g4s.com', 'Ivory Coast', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2703, 'paul.carter@g4s.com', 'Jordan', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2704, 'paul.carter@g4s.com', 'Kenya', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2705, 'paul.carter@g4s.com', 'Lebanon', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2706, 'paul.carter@g4s.com', 'Lesotho', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2707, 'paul.carter@g4s.com', 'Madagascar', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2708, 'paul.carter@g4s.com', 'Malawi', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2709, 'paul.carter@g4s.com', 'Mozambique', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2710, 'paul.carter@g4s.com', 'Namibia', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2711, 'paul.carter@g4s.com', 'Nigeria', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2712, 'paul.carter@g4s.com', 'Oman', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2713, 'paul.carter@g4s.com', 'Qatar', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2714, 'paul.carter@g4s.com', 'Regional Office', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2715, 'paul.carter@g4s.com', 'Saudi Arabia', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2716, 'paul.carter@g4s.com', 'Sierra Leone', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2717, 'paul.carter@g4s.com', 'South Africa - Cash Solutions', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2718, 'paul.carter@g4s.com', 'South Africa - Secure Solutions', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2719, 'paul.carter@g4s.com', 'South Africa - Care and Justice ', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2720, 'paul.carter@g4s.com', 'Tanzania', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2721, 'paul.carter@g4s.com', 'Uganda', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2722, 'paul.carter@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2723, 'paul.carter@g4s.com', 'United Arab Emirates - Dubai', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2724, 'paul.carter@g4s.com', 'Zambia', '2024-05-18 08:38:26.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2725, 'paul.carter@g4s.com', 'Bangladesh', '2024-05-18 08:38:26.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2726, 'paul.carter@g4s.com', 'C&J - Australia', '2024-05-18 08:38:26.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2727, 'paul.carter@g4s.com', 'China', '2024-05-18 08:38:26.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2728, 'paul.carter@g4s.com', 'Guam', '2024-05-18 08:38:26.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2729, 'paul.carter@g4s.com', 'Hong Kong', '2024-05-18 08:38:26.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2730, 'paul.carter@g4s.com', 'India', '2024-05-18 08:38:26.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2731, 'paul.carter@g4s.com', 'Indonesia', '2024-05-18 08:38:26.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2732, 'paul.carter@g4s.com', 'Japan', '2024-05-18 08:38:26.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2733, 'paul.carter@g4s.com', 'Macau', '2024-05-18 08:38:26.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2734, 'paul.carter@g4s.com', 'Nepal', '2024-05-18 08:38:26.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2735, 'paul.carter@g4s.com', 'Papua New Guinea', '2024-05-18 08:38:26.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2736, 'paul.carter@g4s.com', 'Risk Consulting - Hill and Associates', '2024-05-18 08:38:26.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2737, 'paul.carter@g4s.com', 'Singapore', '2024-05-18 08:38:26.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2738, 'paul.carter@g4s.com', 'Taiwan', '2024-05-18 08:38:26.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2739, 'paul.carter@g4s.com', 'Thailand', '2024-05-18 08:38:26.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2740, 'paul.carter@g4s.com', 'AUS Electronic Monitoring', '2024-05-18 08:38:26.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(2741, 'paul.carter@g4s.com', 'Corporate Services / International Business Head Office', '2024-05-18 08:38:26.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(2742, 'paul.carter@g4s.com', 'Austria', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2743, 'paul.carter@g4s.com', 'Belgium - Secure Solutions', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2744, 'paul.carter@g4s.com', 'Czech Republic', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2745, 'paul.carter@g4s.com', 'Denmark', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2746, 'paul.carter@g4s.com', 'Estonia', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2747, 'paul.carter@g4s.com', 'France', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2748, 'paul.carter@g4s.com', 'Greece', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2749, 'paul.carter@g4s.com', 'Latvia', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2750, 'paul.carter@g4s.com', 'Lithuania', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2751, 'paul.carter@g4s.com', 'Luxembourg - Secure Solutions', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2752, 'paul.carter@g4s.com', 'Malta', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2753, 'paul.carter@g4s.com', 'Morocco - Secure Solutions', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2754, 'paul.carter@g4s.com', 'Morocco - Cash Solutions', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2755, 'paul.carter@g4s.com', 'Netherlands - Secure Solutions', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2756, 'paul.carter@g4s.com', 'Serbia', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2757, 'paul.carter@g4s.com', 'Slovakia', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2758, 'paul.carter@g4s.com', 'Slovenia', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2759, 'paul.carter@g4s.com', 'Turkey', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2760, 'paul.carter@g4s.com', 'Ukraine', '2024-05-18 08:38:26.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2761, 'paul.carter@g4s.com', 'Argentina', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2762, 'paul.carter@g4s.com', 'Barbados', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2763, 'paul.carter@g4s.com', 'Brazil', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2764, 'paul.carter@g4s.com', 'Chile', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2765, 'paul.carter@g4s.com', 'Colombia', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2766, 'paul.carter@g4s.com', 'Costa Rica', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2767, 'paul.carter@g4s.com', 'Ecuador', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2768, 'paul.carter@g4s.com', 'El Salvador', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2769, 'paul.carter@g4s.com', 'Grenada', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2770, 'paul.carter@g4s.com', 'Guatemala', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2771, 'paul.carter@g4s.com', 'Nicaragua', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2772, 'paul.carter@g4s.com', 'Paraguay', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554');
INSERT INTO `users_assigned_country` (`id`, `user_email`, `user_country`, `added_on`, `user_region`, `last_updated_on`) VALUES
(2773, 'paul.carter@g4s.com', 'Peru', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2774, 'paul.carter@g4s.com', 'St. Lucia', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2775, 'paul.carter@g4s.com', 'Trinidad and Tobago', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2776, 'paul.carter@g4s.com', 'Uruguay', '2024-05-18 08:38:26.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2777, 'paul.carter@g4s.com', 'Allied Universal Electronic Monitoring', '2024-05-18 08:38:26.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2778, 'paul.carter@g4s.com', 'AUS Compliance and Investigations', '2024-05-18 08:38:26.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2779, 'paul.carter@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-05-18 08:38:26.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2780, 'paul.carter@g4s.com', 'C&J - Employment Support Services', '2024-05-18 08:38:26.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2781, 'paul.carter@g4s.com', 'C&J - Health Services', '2024-05-18 08:38:26.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2782, 'paul.carter@g4s.com', 'C&J - Patient Transport Services', '2024-05-18 08:38:26.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2783, 'paul.carter@g4s.com', 'Facilities Management', '2024-05-18 08:38:26.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2784, 'paul.carter@g4s.com', 'Ireland', '2024-05-18 08:38:26.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2785, 'paul.carter@g4s.com', 'Risk', '2024-05-18 08:38:26.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2786, 'paul.carter@g4s.com', 'Secure Solutions UK', '2024-05-18 08:38:26.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2787, 'paul.carter@g4s.com', 'UK - Cash Solutions', '2024-05-18 08:38:26.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2788, 'melt.vanderspuy@g4s.com', 'Angola', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2789, 'melt.vanderspuy@g4s.com', 'Bahrain', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2790, 'melt.vanderspuy@g4s.com', 'Botswana', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2791, 'melt.vanderspuy@g4s.com', 'Cameroon', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2792, 'melt.vanderspuy@g4s.com', 'Central African Republic', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2793, 'melt.vanderspuy@g4s.com', 'Democratic Republic of Congo', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2794, 'melt.vanderspuy@g4s.com', 'Deposita International', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2795, 'melt.vanderspuy@g4s.com', 'Egypt', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2796, 'melt.vanderspuy@g4s.com', 'Gabon', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2797, 'melt.vanderspuy@g4s.com', 'Gambia', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2798, 'melt.vanderspuy@g4s.com', 'Ghana', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2799, 'melt.vanderspuy@g4s.com', 'Guinea', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2800, 'melt.vanderspuy@g4s.com', 'Ivory Coast', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2801, 'melt.vanderspuy@g4s.com', 'Jordan', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2802, 'melt.vanderspuy@g4s.com', 'Kenya', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2803, 'melt.vanderspuy@g4s.com', 'Lebanon', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2804, 'melt.vanderspuy@g4s.com', 'Lesotho', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2805, 'melt.vanderspuy@g4s.com', 'Madagascar', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2806, 'melt.vanderspuy@g4s.com', 'Malawi', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2807, 'melt.vanderspuy@g4s.com', 'Mozambique', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2808, 'melt.vanderspuy@g4s.com', 'Namibia', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2809, 'melt.vanderspuy@g4s.com', 'Nigeria', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2810, 'melt.vanderspuy@g4s.com', 'Oman', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2811, 'melt.vanderspuy@g4s.com', 'Qatar', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2812, 'melt.vanderspuy@g4s.com', 'Regional Office', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2813, 'melt.vanderspuy@g4s.com', 'Saudi Arabia', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2814, 'melt.vanderspuy@g4s.com', 'Sierra Leone', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2815, 'melt.vanderspuy@g4s.com', 'South Africa - Cash Solutions', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2816, 'melt.vanderspuy@g4s.com', 'South Africa - Secure Solutions', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2817, 'melt.vanderspuy@g4s.com', 'South Africa - Care and Justice ', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2818, 'melt.vanderspuy@g4s.com', 'Tanzania', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2819, 'melt.vanderspuy@g4s.com', 'Uganda', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2820, 'melt.vanderspuy@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2821, 'melt.vanderspuy@g4s.com', 'United Arab Emirates - Dubai', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2822, 'melt.vanderspuy@g4s.com', 'Zambia', '2024-05-21 11:54:19.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2823, 'melt.vanderspuy@g4s.com', 'Bangladesh', '2024-05-21 11:54:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2824, 'melt.vanderspuy@g4s.com', 'C&J - Australia', '2024-05-21 11:54:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2825, 'melt.vanderspuy@g4s.com', 'China', '2024-05-21 11:54:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2826, 'melt.vanderspuy@g4s.com', 'Guam', '2024-05-21 11:54:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2827, 'melt.vanderspuy@g4s.com', 'Hong Kong', '2024-05-21 11:54:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2828, 'melt.vanderspuy@g4s.com', 'India', '2024-05-21 11:54:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2829, 'melt.vanderspuy@g4s.com', 'Indonesia', '2024-05-21 11:54:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2830, 'melt.vanderspuy@g4s.com', 'Japan', '2024-05-21 11:54:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2831, 'melt.vanderspuy@g4s.com', 'Macau', '2024-05-21 11:54:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2832, 'melt.vanderspuy@g4s.com', 'Nepal', '2024-05-21 11:54:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2833, 'melt.vanderspuy@g4s.com', 'Papua New Guinea', '2024-05-21 11:54:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2834, 'melt.vanderspuy@g4s.com', 'Risk Consulting - Hill and Associates', '2024-05-21 11:54:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2835, 'melt.vanderspuy@g4s.com', 'Singapore', '2024-05-21 11:54:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2836, 'melt.vanderspuy@g4s.com', 'Taiwan', '2024-05-21 11:54:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2837, 'melt.vanderspuy@g4s.com', 'Thailand', '2024-05-21 11:54:19.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2838, 'melt.vanderspuy@g4s.com', 'AUS Electronic Monitoring', '2024-05-21 11:54:19.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(2839, 'melt.vanderspuy@g4s.com', 'Corporate Services / International Business Head Office', '2024-05-21 11:54:19.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(2840, 'melt.vanderspuy@g4s.com', 'Austria', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2841, 'melt.vanderspuy@g4s.com', 'Belgium - Secure Solutions', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2842, 'melt.vanderspuy@g4s.com', 'Czech Republic', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2843, 'melt.vanderspuy@g4s.com', 'Denmark', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2844, 'melt.vanderspuy@g4s.com', 'Estonia', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2845, 'melt.vanderspuy@g4s.com', 'France', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2846, 'melt.vanderspuy@g4s.com', 'Greece', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2847, 'melt.vanderspuy@g4s.com', 'Latvia', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2848, 'melt.vanderspuy@g4s.com', 'Lithuania', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2849, 'melt.vanderspuy@g4s.com', 'Luxembourg - Secure Solutions', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2850, 'melt.vanderspuy@g4s.com', 'Malta', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2851, 'melt.vanderspuy@g4s.com', 'Morocco - Secure Solutions', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2852, 'melt.vanderspuy@g4s.com', 'Morocco - Cash Solutions', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2853, 'melt.vanderspuy@g4s.com', 'Netherlands - Secure Solutions', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2854, 'melt.vanderspuy@g4s.com', 'Serbia', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2855, 'melt.vanderspuy@g4s.com', 'Slovakia', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2856, 'melt.vanderspuy@g4s.com', 'Slovenia', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2857, 'melt.vanderspuy@g4s.com', 'Turkey', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2858, 'melt.vanderspuy@g4s.com', 'Ukraine', '2024-05-21 11:54:19.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2859, 'melt.vanderspuy@g4s.com', 'Argentina', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2860, 'melt.vanderspuy@g4s.com', 'Barbados', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2861, 'melt.vanderspuy@g4s.com', 'Brazil', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2862, 'melt.vanderspuy@g4s.com', 'Chile', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2863, 'melt.vanderspuy@g4s.com', 'Colombia', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2864, 'melt.vanderspuy@g4s.com', 'Costa Rica', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2865, 'melt.vanderspuy@g4s.com', 'Ecuador', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2866, 'melt.vanderspuy@g4s.com', 'El Salvador', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2867, 'melt.vanderspuy@g4s.com', 'Grenada', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2868, 'melt.vanderspuy@g4s.com', 'Guatemala', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2869, 'melt.vanderspuy@g4s.com', 'Nicaragua', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2870, 'melt.vanderspuy@g4s.com', 'Paraguay', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2871, 'melt.vanderspuy@g4s.com', 'Peru', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2872, 'melt.vanderspuy@g4s.com', 'St. Lucia', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2873, 'melt.vanderspuy@g4s.com', 'Trinidad and Tobago', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2874, 'melt.vanderspuy@g4s.com', 'Uruguay', '2024-05-21 11:54:19.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2875, 'melt.vanderspuy@g4s.com', 'Allied Universal Electronic Monitoring', '2024-05-21 11:54:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2876, 'melt.vanderspuy@g4s.com', 'AUS Compliance and Investigations', '2024-05-21 11:54:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2877, 'melt.vanderspuy@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-05-21 11:54:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2878, 'melt.vanderspuy@g4s.com', 'C&J - Employment Support Services', '2024-05-21 11:54:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2879, 'melt.vanderspuy@g4s.com', 'C&J - Health Services', '2024-05-21 11:54:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2880, 'melt.vanderspuy@g4s.com', 'C&J - Patient Transport Services', '2024-05-21 11:54:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2881, 'melt.vanderspuy@g4s.com', 'Facilities Management', '2024-05-21 11:54:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2882, 'melt.vanderspuy@g4s.com', 'Ireland', '2024-05-21 11:54:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2883, 'melt.vanderspuy@g4s.com', 'Risk', '2024-05-21 11:54:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2884, 'melt.vanderspuy@g4s.com', 'Secure Solutions UK', '2024-05-21 11:54:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2885, 'melt.vanderspuy@g4s.com', 'UK - Cash Solutions', '2024-05-21 11:54:19.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2886, 'bhoopendra.pal@extranet.g4s.com', 'Angola', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2887, 'bhoopendra.pal@extranet.g4s.com', 'Bahrain', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2888, 'bhoopendra.pal@extranet.g4s.com', 'Botswana', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2889, 'bhoopendra.pal@extranet.g4s.com', 'Cameroon', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2890, 'bhoopendra.pal@extranet.g4s.com', 'Central African Republic', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2891, 'bhoopendra.pal@extranet.g4s.com', 'Democratic Republic of Congo', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2892, 'bhoopendra.pal@extranet.g4s.com', 'Deposita International', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2893, 'bhoopendra.pal@extranet.g4s.com', 'Egypt', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2894, 'bhoopendra.pal@extranet.g4s.com', 'Gabon', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2895, 'bhoopendra.pal@extranet.g4s.com', 'Gambia', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2896, 'bhoopendra.pal@extranet.g4s.com', 'Ghana', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2897, 'bhoopendra.pal@extranet.g4s.com', 'Guinea', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2898, 'bhoopendra.pal@extranet.g4s.com', 'Ivory Coast', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2899, 'bhoopendra.pal@extranet.g4s.com', 'Jordan', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2900, 'bhoopendra.pal@extranet.g4s.com', 'Kenya', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2901, 'bhoopendra.pal@extranet.g4s.com', 'Lebanon', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2902, 'bhoopendra.pal@extranet.g4s.com', 'Lesotho', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2903, 'bhoopendra.pal@extranet.g4s.com', 'Madagascar', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2904, 'bhoopendra.pal@extranet.g4s.com', 'Malawi', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2905, 'bhoopendra.pal@extranet.g4s.com', 'Mozambique', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2906, 'bhoopendra.pal@extranet.g4s.com', 'Namibia', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2907, 'bhoopendra.pal@extranet.g4s.com', 'Nigeria', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2908, 'bhoopendra.pal@extranet.g4s.com', 'Oman', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2909, 'bhoopendra.pal@extranet.g4s.com', 'Qatar', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2910, 'bhoopendra.pal@extranet.g4s.com', 'Regional Office', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2911, 'bhoopendra.pal@extranet.g4s.com', 'Saudi Arabia', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2912, 'bhoopendra.pal@extranet.g4s.com', 'Sierra Leone', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2913, 'bhoopendra.pal@extranet.g4s.com', 'South Africa - Cash Solutions', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2914, 'bhoopendra.pal@extranet.g4s.com', 'South Africa - Secure Solutions', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2915, 'bhoopendra.pal@extranet.g4s.com', 'South Africa - Care and Justice', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2916, 'bhoopendra.pal@extranet.g4s.com', 'Tanzania', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2917, 'bhoopendra.pal@extranet.g4s.com', 'Uganda', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2918, 'bhoopendra.pal@extranet.g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2919, 'bhoopendra.pal@extranet.g4s.com', 'United Arab Emirates - Dubai', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2920, 'bhoopendra.pal@extranet.g4s.com', 'Zambia', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2921, 'bhoopendra.pal@extranet.g4s.com', 'Bangladesh', '2024-05-23 16:36:44.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2922, 'bhoopendra.pal@extranet.g4s.com', 'C&J - Australia', '2024-05-23 16:36:44.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2923, 'bhoopendra.pal@extranet.g4s.com', 'China', '2024-05-23 16:36:44.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2924, 'bhoopendra.pal@extranet.g4s.com', 'Guam', '2024-05-23 16:36:44.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2925, 'bhoopendra.pal@extranet.g4s.com', 'Hong Kong', '2024-05-23 16:36:44.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2926, 'bhoopendra.pal@extranet.g4s.com', 'India', '2024-05-23 16:36:44.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2927, 'bhoopendra.pal@extranet.g4s.com', 'Indonesia', '2024-05-23 16:36:44.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2928, 'bhoopendra.pal@extranet.g4s.com', 'Japan', '2024-05-23 16:36:44.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2929, 'bhoopendra.pal@extranet.g4s.com', 'Macau', '2024-05-23 16:36:44.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2930, 'bhoopendra.pal@extranet.g4s.com', 'Nepal', '2024-05-23 16:36:44.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2931, 'bhoopendra.pal@extranet.g4s.com', 'Papua New Guinea', '2024-05-23 16:36:44.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2932, 'bhoopendra.pal@extranet.g4s.com', 'Regional Office', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2933, 'bhoopendra.pal@extranet.g4s.com', 'Risk Consulting - Hill and Associates', '2024-05-23 16:36:44.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2934, 'bhoopendra.pal@extranet.g4s.com', 'Singapore', '2024-05-23 16:36:44.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2935, 'bhoopendra.pal@extranet.g4s.com', 'Taiwan', '2024-05-23 16:36:44.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2936, 'bhoopendra.pal@extranet.g4s.com', 'Thailand', '2024-05-23 16:36:44.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(2937, 'bhoopendra.pal@extranet.g4s.com', 'AUS Electronic Monitoring', '2024-05-23 16:36:44.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(2938, 'bhoopendra.pal@extranet.g4s.com', 'Corporate Services / International Business Head Office', '2024-05-23 16:36:44.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(2939, 'bhoopendra.pal@extranet.g4s.com', 'Austria', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2940, 'bhoopendra.pal@extranet.g4s.com', 'Belgium - Secure Solutions', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2941, 'bhoopendra.pal@extranet.g4s.com', 'Czech Republic', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2942, 'bhoopendra.pal@extranet.g4s.com', 'Denmark', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2943, 'bhoopendra.pal@extranet.g4s.com', 'Estonia', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2944, 'bhoopendra.pal@extranet.g4s.com', 'France', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2945, 'bhoopendra.pal@extranet.g4s.com', 'Greece', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2946, 'bhoopendra.pal@extranet.g4s.com', 'Latvia', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2947, 'bhoopendra.pal@extranet.g4s.com', 'Lithuania', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2948, 'bhoopendra.pal@extranet.g4s.com', 'Luxembourg - Secure Solutions', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2949, 'bhoopendra.pal@extranet.g4s.com', 'Malta', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2950, 'bhoopendra.pal@extranet.g4s.com', 'Morocco - Secure Solutions', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2951, 'bhoopendra.pal@extranet.g4s.com', 'Morocco - Cash Solutions', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2952, 'bhoopendra.pal@extranet.g4s.com', 'Netherlands - Secure Solutions', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2953, 'bhoopendra.pal@extranet.g4s.com', 'Regional Office', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2954, 'bhoopendra.pal@extranet.g4s.com', 'Serbia', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2955, 'bhoopendra.pal@extranet.g4s.com', 'Slovakia', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2956, 'bhoopendra.pal@extranet.g4s.com', 'Slovenia', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2957, 'bhoopendra.pal@extranet.g4s.com', 'Turkey', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2958, 'bhoopendra.pal@extranet.g4s.com', 'Ukraine', '2024-05-23 16:36:44.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(2959, 'bhoopendra.pal@extranet.g4s.com', 'Argentina', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2960, 'bhoopendra.pal@extranet.g4s.com', 'Barbados', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2961, 'bhoopendra.pal@extranet.g4s.com', 'Brazil', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2962, 'bhoopendra.pal@extranet.g4s.com', 'Chile', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2963, 'bhoopendra.pal@extranet.g4s.com', 'Colombia', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2964, 'bhoopendra.pal@extranet.g4s.com', 'Costa Rica', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2965, 'bhoopendra.pal@extranet.g4s.com', 'Ecuador', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2966, 'bhoopendra.pal@extranet.g4s.com', 'El Salvador', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2967, 'bhoopendra.pal@extranet.g4s.com', 'Grenada', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2968, 'bhoopendra.pal@extranet.g4s.com', 'Guatemala', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2969, 'bhoopendra.pal@extranet.g4s.com', 'Nicaragua', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2970, 'bhoopendra.pal@extranet.g4s.com', 'Paraguay', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2971, 'bhoopendra.pal@extranet.g4s.com', 'Peru', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2972, 'bhoopendra.pal@extranet.g4s.com', 'REGIONal Office', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2973, 'bhoopendra.pal@extranet.g4s.com', 'St. Lucia', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2974, 'bhoopendra.pal@extranet.g4s.com', 'Trinidad and Tobago', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2975, 'bhoopendra.pal@extranet.g4s.com', 'Uruguay', '2024-05-23 16:36:44.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(2976, 'bhoopendra.pal@extranet.g4s.com', 'Allied Universal Electronic Monitoring', '2024-05-23 16:36:44.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2977, 'bhoopendra.pal@extranet.g4s.com', 'AUS Compliance and Investigations', '2024-05-23 16:36:44.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2978, 'bhoopendra.pal@extranet.g4s.com', 'C&J - Care and Rehabilitation Services', '2024-05-23 16:36:44.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2979, 'bhoopendra.pal@extranet.g4s.com', 'C&J - Employment Support Services', '2024-05-23 16:36:44.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2980, 'bhoopendra.pal@extranet.g4s.com', 'C&J - Health Services', '2024-05-23 16:36:44.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2981, 'bhoopendra.pal@extranet.g4s.com', 'C&J - Patient Transport Services', '2024-05-23 16:36:44.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2982, 'bhoopendra.pal@extranet.g4s.com', 'Facilities Management', '2024-05-23 16:36:44.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2983, 'bhoopendra.pal@extranet.g4s.com', 'Ireland', '2024-05-23 16:36:44.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2984, 'bhoopendra.pal@extranet.g4s.com', 'Regional Office', '2024-05-23 16:36:44.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2985, 'bhoopendra.pal@extranet.g4s.com', 'Risk', '2024-05-23 16:36:44.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2986, 'bhoopendra.pal@extranet.g4s.com', 'Secure Solutions UK', '2024-05-23 16:36:44.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2987, 'bhoopendra.pal@extranet.g4s.com', 'UK - Cash Solutions', '2024-05-23 16:36:44.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(2988, 'sarah.gualtieri@g4s.com', 'Angola', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2989, 'sarah.gualtieri@g4s.com', 'Bahrain', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2990, 'sarah.gualtieri@g4s.com', 'Botswana', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2991, 'sarah.gualtieri@g4s.com', 'Cameroon', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2992, 'sarah.gualtieri@g4s.com', 'Central African Republic', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2993, 'sarah.gualtieri@g4s.com', 'Democratic Republic of Congo', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2994, 'sarah.gualtieri@g4s.com', 'Deposita International', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2995, 'sarah.gualtieri@g4s.com', 'Egypt', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2996, 'sarah.gualtieri@g4s.com', 'Gabon', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2997, 'sarah.gualtieri@g4s.com', 'Gambia', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2998, 'sarah.gualtieri@g4s.com', 'Ghana', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(2999, 'sarah.gualtieri@g4s.com', 'Guinea', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3000, 'sarah.gualtieri@g4s.com', 'Ivory Coast', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3001, 'sarah.gualtieri@g4s.com', 'Jordan', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3002, 'sarah.gualtieri@g4s.com', 'Kenya', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3003, 'sarah.gualtieri@g4s.com', 'Lebanon', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3004, 'sarah.gualtieri@g4s.com', 'Lesotho', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3005, 'sarah.gualtieri@g4s.com', 'Madagascar', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3006, 'sarah.gualtieri@g4s.com', 'Malawi', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3007, 'sarah.gualtieri@g4s.com', 'Mozambique', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3008, 'sarah.gualtieri@g4s.com', 'Namibia', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3009, 'sarah.gualtieri@g4s.com', 'Nigeria', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3010, 'sarah.gualtieri@g4s.com', 'Oman', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3011, 'sarah.gualtieri@g4s.com', 'Qatar', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3012, 'sarah.gualtieri@g4s.com', 'Regional Office', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3013, 'sarah.gualtieri@g4s.com', 'Saudi Arabia', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3014, 'sarah.gualtieri@g4s.com', 'Sierra Leone', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3015, 'sarah.gualtieri@g4s.com', 'South Africa - Cash Solutions', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3016, 'sarah.gualtieri@g4s.com', 'South Africa - Secure Solutions', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3017, 'sarah.gualtieri@g4s.com', 'South Africa - Care and Justice ', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3018, 'sarah.gualtieri@g4s.com', 'Tanzania', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3019, 'sarah.gualtieri@g4s.com', 'Uganda', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3020, 'sarah.gualtieri@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3021, 'sarah.gualtieri@g4s.com', 'United Arab Emirates - Dubai', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3022, 'sarah.gualtieri@g4s.com', 'Zambia', '2024-01-30 14:03:58.000000', 'AME', '2024-06-19 14:42:56.620554'),
(3023, 'sarah.gualtieri@g4s.com', 'Bangladesh', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(3024, 'sarah.gualtieri@g4s.com', 'C&J - Australia', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(3025, 'sarah.gualtieri@g4s.com', 'China', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(3026, 'sarah.gualtieri@g4s.com', 'Guam', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(3027, 'sarah.gualtieri@g4s.com', 'Hong Kong', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(3028, 'sarah.gualtieri@g4s.com', 'India', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(3029, 'sarah.gualtieri@g4s.com', 'Indonesia', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(3030, 'sarah.gualtieri@g4s.com', 'Japan', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(3031, 'sarah.gualtieri@g4s.com', 'Macau', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(3032, 'sarah.gualtieri@g4s.com', 'Nepal', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(3033, 'sarah.gualtieri@g4s.com', 'Papua New Guinea', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(3034, 'sarah.gualtieri@g4s.com', 'Risk Consulting - Hill and Associates', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(3035, 'sarah.gualtieri@g4s.com', 'Singapore', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(3036, 'sarah.gualtieri@g4s.com', 'Taiwan', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(3037, 'sarah.gualtieri@g4s.com', 'Thailand', '2024-01-30 14:03:58.000000', 'APAC', '2024-06-19 14:42:56.620554'),
(3038, 'sarah.gualtieri@g4s.com', 'AUS Electronic Monitoring', '2024-01-30 14:03:58.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(3039, 'sarah.gualtieri@g4s.com', 'Corporate Services / International Business Head Office', '2024-01-30 14:03:58.000000', 'Corporate Services', '2024-06-19 14:42:56.620554'),
(3040, 'sarah.gualtieri@g4s.com', 'Austria', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3041, 'sarah.gualtieri@g4s.com', 'Belgium - Secure Solutions', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3042, 'sarah.gualtieri@g4s.com', 'Czech Republic', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3043, 'sarah.gualtieri@g4s.com', 'Denmark', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3044, 'sarah.gualtieri@g4s.com', 'Estonia', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3045, 'sarah.gualtieri@g4s.com', 'France', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3046, 'sarah.gualtieri@g4s.com', 'Greece', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3047, 'sarah.gualtieri@g4s.com', 'Latvia', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3048, 'sarah.gualtieri@g4s.com', 'Lithuania', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3049, 'sarah.gualtieri@g4s.com', 'Luxembourg - Secure Solutions', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3050, 'sarah.gualtieri@g4s.com', 'Malta', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3051, 'sarah.gualtieri@g4s.com', 'Morocco - Secure Solutions', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3052, 'sarah.gualtieri@g4s.com', 'Morocco - Cash Solutions', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3053, 'sarah.gualtieri@g4s.com', 'Netherlands - Secure Solutions', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3054, 'sarah.gualtieri@g4s.com', 'Serbia', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3055, 'sarah.gualtieri@g4s.com', 'Slovakia', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3056, 'sarah.gualtieri@g4s.com', 'Slovenia', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3057, 'sarah.gualtieri@g4s.com', 'Turkey', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3058, 'sarah.gualtieri@g4s.com', 'Ukraine', '2024-01-30 14:03:58.000000', 'Europe', '2024-06-19 14:42:56.620554'),
(3059, 'sarah.gualtieri@g4s.com', 'Argentina', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3060, 'sarah.gualtieri@g4s.com', 'Barbados', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3061, 'sarah.gualtieri@g4s.com', 'Brazil', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3062, 'sarah.gualtieri@g4s.com', 'Chile', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3063, 'sarah.gualtieri@g4s.com', 'Colombia', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3064, 'sarah.gualtieri@g4s.com', 'Costa Rica', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3065, 'sarah.gualtieri@g4s.com', 'Ecuador', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3066, 'sarah.gualtieri@g4s.com', 'El Salvador', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3067, 'sarah.gualtieri@g4s.com', 'Grenada', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3068, 'sarah.gualtieri@g4s.com', 'Guatemala', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3069, 'sarah.gualtieri@g4s.com', 'Nicaragua', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3070, 'sarah.gualtieri@g4s.com', 'Paraguay', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3071, 'sarah.gualtieri@g4s.com', 'Peru', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3072, 'sarah.gualtieri@g4s.com', 'St. Lucia', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3073, 'sarah.gualtieri@g4s.com', 'Trinidad and Tobago', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3074, 'sarah.gualtieri@g4s.com', 'Uruguay', '2024-01-30 14:03:58.000000', 'LATAM', '2024-06-19 14:42:56.620554'),
(3075, 'sarah.gualtieri@g4s.com', 'Allied Universal Electronic Monitoring', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(3076, 'sarah.gualtieri@g4s.com', 'AUS Compliance and Investigations', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(3077, 'sarah.gualtieri@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(3078, 'sarah.gualtieri@g4s.com', 'C&J - Employment Support Services', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(3079, 'sarah.gualtieri@g4s.com', 'C&J - Health Services', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(3080, 'sarah.gualtieri@g4s.com', 'C&J - Patient Transport Services', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(3081, 'sarah.gualtieri@g4s.com', 'Facilities Management', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(3082, 'sarah.gualtieri@g4s.com', 'Ireland', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(3083, 'sarah.gualtieri@g4s.com', 'Risk', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(3084, 'sarah.gualtieri@g4s.com', 'Secure Solutions UK', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(3085, 'sarah.gualtieri@g4s.com', 'UK - Cash Solutions', '2024-01-30 14:03:58.000000', 'UKI', '2024-06-19 14:42:56.620554'),
(3086, 'rahulwebakarniya@gmail.com', 'Angola', '2024-06-19 14:46:45.613512', 'AME', '2024-06-19 14:46:45.613532'),
(3087, 'rahulwebakarniya@gmail.com', 'Bahrain', '2024-06-19 14:46:45.614770', 'AME', '2024-06-19 14:46:45.614788'),
(3088, 'rahulwebakarniya@gmail.com', 'Botswana', '2024-06-19 14:46:45.615956', 'AME', '2024-06-19 14:46:45.615974'),
(3089, 'rahulwebakarniya@gmail.com', 'Cameroon', '2024-06-19 14:46:45.617436', 'AME', '2024-06-19 14:46:45.617454'),
(3090, 'rahulwebakarniya@gmail.com', 'Central African Republic', '2024-06-19 14:46:45.618563', 'AME', '2024-06-19 14:46:45.618591'),
(3091, 'rahulwebakarniya@gmail.com', 'Democratic Republic of Congo', '2024-06-19 14:46:45.619714', 'AME', '2024-06-19 14:46:45.619731'),
(3092, 'rahulwebakarniya@gmail.com', 'Deposita International', '2024-06-19 14:46:45.620882', 'AME', '2024-06-19 14:46:45.620899'),
(3093, 'rahulwebakarniya@gmail.com', 'Egypt', '2024-06-19 14:46:45.622000', 'AME', '2024-06-19 14:46:45.622017'),
(3094, 'rahulwebakarniya@gmail.com', 'Gabon', '2024-06-19 14:46:45.623203', 'AME', '2024-06-19 14:46:45.623221'),
(3095, 'rahulwebakarniya@gmail.com', 'Gambia', '2024-06-19 14:46:45.624298', 'AME', '2024-06-19 14:46:45.624316'),
(3096, 'rahulwebakarniya@gmail.com', 'Ghana', '2024-06-19 14:46:45.625403', 'AME', '2024-06-19 14:46:45.625420'),
(3097, 'rahulwebakarniya@gmail.com', 'Guinea', '2024-06-19 14:46:45.626503', 'AME', '2024-06-19 14:46:45.626520'),
(3098, 'rahulwebakarniya@gmail.com', 'Ivory Coast', '2024-06-19 14:46:45.627891', 'AME', '2024-06-19 14:46:45.627909'),
(3099, 'rahulwebakarniya@gmail.com', 'Jordan', '2024-06-19 14:46:45.629034', 'AME', '2024-06-19 14:46:45.629052'),
(3100, 'rahulwebakarniya@gmail.com', 'Kenya', '2024-06-19 14:46:45.630126', 'AME', '2024-06-19 14:46:45.630144'),
(3101, 'rahulwebakarniya@gmail.com', 'Lebanon', '2024-06-19 14:46:45.631220', 'AME', '2024-06-19 14:46:45.631238'),
(3102, 'rahulwebakarniya@gmail.com', 'Lesotho', '2024-06-19 14:46:45.632382', 'AME', '2024-06-19 14:46:45.632400'),
(3103, 'rahulwebakarniya@gmail.com', 'Madagascar', '2024-06-19 14:46:45.633500', 'AME', '2024-06-19 14:46:45.633518'),
(3104, 'rahulwebakarniya@gmail.com', 'Malawi', '2024-06-19 14:46:45.634618', 'AME', '2024-06-19 14:46:45.634635'),
(3105, 'rahulwebakarniya@gmail.com', 'Mozambique', '2024-06-19 14:46:45.635653', 'AME', '2024-06-19 14:46:45.635669'),
(3106, 'rahulwebakarniya@gmail.com', 'Namibia', '2024-06-19 14:46:45.636945', 'AME', '2024-06-19 14:46:45.636962'),
(3107, 'rahulwebakarniya@gmail.com', 'Nigeria', '2024-06-19 14:46:45.638119', 'AME', '2024-06-19 14:46:45.638136'),
(3108, 'rahulwebakarniya@gmail.com', 'Oman', '2024-06-19 14:46:45.639192', 'AME', '2024-06-19 14:46:45.639209'),
(3109, 'rahulwebakarniya@gmail.com', 'Qatar', '2024-06-19 14:46:45.640265', 'AME', '2024-06-19 14:46:45.640295'),
(3110, 'rahulwebakarniya@gmail.com', 'Regional Office', '2024-06-19 14:46:45.641394', 'AME', '2024-06-19 14:46:45.641412'),
(3111, 'rahulwebakarniya@gmail.com', 'Saudi Arabia', '2024-06-19 14:46:45.642815', 'AME', '2024-06-19 14:46:45.642833'),
(3112, 'rahulwebakarniya@gmail.com', 'Sierra Leone', '2024-06-19 14:46:45.643904', 'AME', '2024-06-19 14:46:45.643921'),
(3113, 'rahulwebakarniya@gmail.com', 'South Africa - Cash Solutions', '2024-06-19 14:46:45.645035', 'AME', '2024-06-19 14:46:45.645060'),
(3114, 'rahulwebakarniya@gmail.com', 'South Africa - Secure Solutions', '2024-06-19 14:46:45.646663', 'AME', '2024-06-19 14:46:45.646681'),
(3115, 'rahulwebakarniya@gmail.com', 'South Africa - Care and Justice', '2024-06-19 14:46:45.647837', 'AME', '2024-06-19 14:46:45.647855'),
(3116, 'rahulwebakarniya@gmail.com', 'Tanzania', '2024-06-19 14:46:45.648966', 'AME', '2024-06-19 14:46:45.648985'),
(3117, 'rahulwebakarniya@gmail.com', 'Uganda', '2024-06-19 14:46:45.650160', 'AME', '2024-06-19 14:46:45.650179'),
(3118, 'rahulwebakarniya@gmail.com', 'United Arab Emirates - Abu Dhabi', '2024-06-19 14:46:45.651290', 'AME', '2024-06-19 14:46:45.651308'),
(3119, 'rahulwebakarniya@gmail.com', 'United Arab Emirates - Dubai', '2024-06-19 14:46:45.652420', 'AME', '2024-06-19 14:46:45.652438'),
(3120, 'rahulwebakarniya@gmail.com', 'Zambia', '2024-06-19 14:46:45.653545', 'AME', '2024-06-19 14:46:45.653563'),
(3121, 'rahulwebakarniya@gmail.com', 'Bangladesh', '2024-06-19 14:46:45.654663', 'APAC', '2024-06-19 14:46:45.654681'),
(3122, 'rahulwebakarniya@gmail.com', 'C&J - Australia', '2024-06-19 14:46:45.655888', 'APAC', '2024-06-19 14:46:45.655906'),
(3123, 'rahulwebakarniya@gmail.com', 'China', '2024-06-19 14:46:45.657223', 'APAC', '2024-06-19 14:46:45.657244'),
(3124, 'rahulwebakarniya@gmail.com', 'Guam', '2024-06-19 14:46:45.658385', 'APAC', '2024-06-19 14:46:45.658404'),
(3125, 'rahulwebakarniya@gmail.com', 'Hong Kong', '2024-06-19 14:46:45.659536', 'APAC', '2024-06-19 14:46:45.659555'),
(3126, 'rahulwebakarniya@gmail.com', 'India', '2024-06-19 14:46:45.661041', 'APAC', '2024-06-19 14:46:45.661060'),
(3127, 'rahulwebakarniya@gmail.com', 'Indonesia', '2024-06-19 14:46:45.662192', 'APAC', '2024-06-19 14:46:45.662210'),
(3128, 'rahulwebakarniya@gmail.com', 'Japan', '2024-06-19 14:46:45.663364', 'APAC', '2024-06-19 14:46:45.663382'),
(3129, 'rahulwebakarniya@gmail.com', 'Macau', '2024-06-19 14:46:45.664622', 'APAC', '2024-06-19 14:46:45.664641'),
(3130, 'rahulwebakarniya@gmail.com', 'Nepal', '2024-06-19 14:46:45.665929', 'APAC', '2024-06-19 14:46:45.665948'),
(3131, 'rahulwebakarniya@gmail.com', 'Papua New Guinea', '2024-06-19 14:46:45.667067', 'APAC', '2024-06-19 14:46:45.667096'),
(3132, 'rahulwebakarniya@gmail.com', 'Risk Consulting - Hill and Associates', '2024-06-19 14:46:45.668222', 'APAC', '2024-06-19 14:46:45.668240'),
(3133, 'rahulwebakarniya@gmail.com', 'Singapore', '2024-06-19 14:46:45.669340', 'APAC', '2024-06-19 14:46:45.669358'),
(3134, 'rahulwebakarniya@gmail.com', 'Taiwan', '2024-06-19 14:46:45.670461', 'APAC', '2024-06-19 14:46:45.670480'),
(3135, 'rahulwebakarniya@gmail.com', 'Thailand', '2024-06-19 14:46:45.671583', 'APAC', '2024-06-19 14:46:45.671601'),
(3136, 'rahulwebakarniya@gmail.com', 'AUS Electronic Monitoring', '2024-06-19 14:46:45.672718', 'Corporate Services', '2024-06-19 14:46:45.672736'),
(3137, 'rahulwebakarniya@gmail.com', 'Corporate Services / International Business Head Office', '2024-06-19 14:46:45.673859', 'Corporate Services', '2024-06-19 14:46:45.673877'),
(3138, 'rahulwebakarniya@gmail.com', 'Austria', '2024-06-19 14:46:45.675136', 'Europe', '2024-06-19 14:46:45.675155'),
(3139, 'rahulwebakarniya@gmail.com', 'Belgium - Secure Solutions', '2024-06-19 14:46:45.676292', 'Europe', '2024-06-19 14:46:45.676311'),
(3140, 'rahulwebakarniya@gmail.com', 'Czech Republic', '2024-06-19 14:46:45.677410', 'Europe', '2024-06-19 14:46:45.677428'),
(3141, 'rahulwebakarniya@gmail.com', 'Denmark', '2024-06-19 14:46:45.678570', 'Europe', '2024-06-19 14:46:45.678588'),
(3142, 'rahulwebakarniya@gmail.com', 'Estonia', '2024-06-19 14:46:45.679681', 'Europe', '2024-06-19 14:46:45.679699'),
(3143, 'rahulwebakarniya@gmail.com', 'France', '2024-06-19 14:46:45.680805', 'Europe', '2024-06-19 14:46:45.680822'),
(3144, 'rahulwebakarniya@gmail.com', 'Greece', '2024-06-19 14:46:45.681989', 'Europe', '2024-06-19 14:46:45.682007'),
(3145, 'rahulwebakarniya@gmail.com', 'Latvia', '2024-06-19 14:46:45.683152', 'Europe', '2024-06-19 14:46:45.683170'),
(3146, 'rahulwebakarniya@gmail.com', 'Lithuania', '2024-06-19 14:46:45.684433', 'Europe', '2024-06-19 14:46:45.684451'),
(3147, 'rahulwebakarniya@gmail.com', 'Luxembourg - Secure Solutions', '2024-06-19 14:46:45.685619', 'Europe', '2024-06-19 14:46:45.685637'),
(3148, 'rahulwebakarniya@gmail.com', 'Malta', '2024-06-19 14:46:45.686780', 'Europe', '2024-06-19 14:46:45.686799'),
(3149, 'rahulwebakarniya@gmail.com', 'Morocco - Secure Solutions', '2024-06-19 14:46:45.687909', 'Europe', '2024-06-19 14:46:45.687928'),
(3150, 'rahulwebakarniya@gmail.com', 'Morocco - Cash Solutions', '2024-06-19 14:46:45.689040', 'Europe', '2024-06-19 14:46:45.689058'),
(3151, 'rahulwebakarniya@gmail.com', 'Netherlands - Secure Solutions', '2024-06-19 14:46:45.690183', 'Europe', '2024-06-19 14:46:45.690201'),
(3152, 'rahulwebakarniya@gmail.com', 'Serbia', '2024-06-19 14:46:45.691326', 'Europe', '2024-06-19 14:46:45.691344'),
(3153, 'rahulwebakarniya@gmail.com', 'Slovakia', '2024-06-19 14:46:45.692471', 'Europe', '2024-06-19 14:46:45.692490'),
(3154, 'rahulwebakarniya@gmail.com', 'Slovenia', '2024-06-19 14:46:45.694870', 'Europe', '2024-06-19 14:46:45.694888'),
(3155, 'rahulwebakarniya@gmail.com', 'Turkey', '2024-06-19 14:46:45.695989', 'Europe', '2024-06-19 14:46:45.696007'),
(3156, 'rahulwebakarniya@gmail.com', 'Ukraine', '2024-06-19 14:46:45.697235', 'Europe', '2024-06-19 14:46:45.697262'),
(3157, 'rahulwebakarniya@gmail.com', 'Argentina', '2024-06-19 14:46:45.699016', 'LATAM', '2024-06-19 14:46:45.699044'),
(3158, 'rahulwebakarniya@gmail.com', 'Barbados', '2024-06-19 14:46:45.700719', 'LATAM', '2024-06-19 14:46:45.700748'),
(3159, 'rahulwebakarniya@gmail.com', 'Brazil', '2024-06-19 14:46:45.702421', 'LATAM', '2024-06-19 14:46:45.702447'),
(3160, 'rahulwebakarniya@gmail.com', 'Chile', '2024-06-19 14:46:45.704109', 'LATAM', '2024-06-19 14:46:45.704138'),
(3161, 'rahulwebakarniya@gmail.com', 'Colombia', '2024-06-19 14:46:45.705345', 'LATAM', '2024-06-19 14:46:45.705363'),
(3162, 'rahulwebakarniya@gmail.com', 'Costa Rica', '2024-06-19 14:46:45.706665', 'LATAM', '2024-06-19 14:46:45.706684'),
(3163, 'rahulwebakarniya@gmail.com', 'Ecuador', '2024-06-19 14:46:45.707816', 'LATAM', '2024-06-19 14:46:45.707834'),
(3164, 'rahulwebakarniya@gmail.com', 'El Salvador', '2024-06-19 14:46:45.708953', 'LATAM', '2024-06-19 14:46:45.708993'),
(3165, 'rahulwebakarniya@gmail.com', 'Grenada', '2024-06-19 14:46:45.710162', 'LATAM', '2024-06-19 14:46:45.710184'),
(3166, 'rahulwebakarniya@gmail.com', 'Guatemala', '2024-06-19 14:46:45.711330', 'LATAM', '2024-06-19 14:46:45.711348'),
(3167, 'rahulwebakarniya@gmail.com', 'Nicaragua', '2024-06-19 14:46:45.712477', 'LATAM', '2024-06-19 14:46:45.712495'),
(3168, 'rahulwebakarniya@gmail.com', 'Paraguay', '2024-06-19 14:46:45.714063', 'LATAM', '2024-06-19 14:46:45.714105'),
(3169, 'rahulwebakarniya@gmail.com', 'Peru', '2024-06-19 14:46:45.715759', 'LATAM', '2024-06-19 14:46:45.715786'),
(3170, 'rahulwebakarniya@gmail.com', 'St. Lucia', '2024-06-19 14:46:45.717140', 'LATAM', '2024-06-19 14:46:45.717157'),
(3171, 'rahulwebakarniya@gmail.com', 'Trinidad and Tobago', '2024-06-19 14:46:45.718292', 'LATAM', '2024-06-19 14:46:45.718310'),
(3172, 'rahulwebakarniya@gmail.com', 'Uruguay', '2024-06-19 14:46:45.719414', 'LATAM', '2024-06-19 14:46:45.719432'),
(3173, 'rahulwebakarniya@gmail.com', 'Allied Universal Electronic Monitoring', '2024-06-19 14:46:45.720542', 'UKI', '2024-06-19 14:46:45.720560'),
(3174, 'rahulwebakarniya@gmail.com', 'AUS Compliance and Investigations', '2024-06-19 14:46:45.721661', 'UKI', '2024-06-19 14:46:45.721680'),
(3175, 'rahulwebakarniya@gmail.com', 'C&J - Care and Rehabilitation Services', '2024-06-19 14:46:45.722786', 'UKI', '2024-06-19 14:46:45.722804'),
(3176, 'rahulwebakarniya@gmail.com', 'C&J - Employment Support Services', '2024-06-19 14:46:45.723936', 'UKI', '2024-06-19 14:46:45.723953'),
(3177, 'rahulwebakarniya@gmail.com', 'C&J - Health Services', '2024-06-19 14:46:45.725056', 'UKI', '2024-06-19 14:46:45.725074'),
(3178, 'rahulwebakarniya@gmail.com', 'C&J - Patient Transport Services', '2024-06-19 14:46:45.726349', 'UKI', '2024-06-19 14:46:45.726367'),
(3179, 'rahulwebakarniya@gmail.com', 'Facilities Management', '2024-06-19 14:46:45.727603', 'UKI', '2024-06-19 14:46:45.727621'),
(3180, 'rahulwebakarniya@gmail.com', 'Ireland', '2024-06-19 14:46:45.728740', 'UKI', '2024-06-19 14:46:45.728758'),
(3181, 'rahulwebakarniya@gmail.com', 'Risk', '2024-06-19 14:46:45.729862', 'UKI', '2024-06-19 14:46:45.729880'),
(3182, 'rahulwebakarniya@gmail.com', 'Secure Solutions UK', '2024-06-19 14:46:45.730983', 'UKI', '2024-06-19 14:46:45.731001'),
(3183, 'rahulwebakarniya@gmail.com', 'UK - Cash Solutions', '2024-06-19 14:46:45.732276', 'UKI', '2024-06-19 14:46:45.732294');
INSERT INTO `users_assigned_country` (`id`, `user_email`, `user_country`, `added_on`, `user_region`, `last_updated_on`) VALUES
(3184, 'ankit.sharma@cinntra.com', 'Angola', '2024-06-19 16:13:19.228585', 'AME', '2024-06-19 16:13:19.228605'),
(3185, 'ankit.sharma@cinntra.com', 'Bahrain', '2024-06-19 16:13:19.229741', 'AME', '2024-06-19 16:13:19.229760'),
(3186, 'ankit.sharma@cinntra.com', 'Botswana', '2024-06-19 16:13:19.230942', 'AME', '2024-06-19 16:13:19.230961'),
(3187, 'ankit.sharma@cinntra.com', 'Cameroon', '2024-06-19 16:13:19.232115', 'AME', '2024-06-19 16:13:19.232134'),
(3188, 'ankit.sharma@cinntra.com', 'Central African Republic', '2024-06-19 16:13:19.233410', 'AME', '2024-06-19 16:13:19.233429'),
(3189, 'ankit.sharma@cinntra.com', 'Democratic Republic of Congo', '2024-06-19 16:13:19.234538', 'AME', '2024-06-19 16:13:19.234557'),
(3190, 'ankit.sharma@cinntra.com', 'Deposita International', '2024-06-19 16:13:19.235799', 'AME', '2024-06-19 16:13:19.235818'),
(3191, 'ankit.sharma@cinntra.com', 'Egypt', '2024-06-19 16:13:19.236934', 'AME', '2024-06-19 16:13:19.236952'),
(3192, 'ankit.sharma@cinntra.com', 'Gabon', '2024-06-19 16:13:19.238047', 'AME', '2024-06-19 16:13:19.238066'),
(3193, 'ankit.sharma@cinntra.com', 'Gambia', '2024-06-19 16:13:19.239212', 'AME', '2024-06-19 16:13:19.239231'),
(3194, 'ankit.sharma@cinntra.com', 'Ghana', '2024-06-19 16:13:19.240354', 'AME', '2024-06-19 16:13:19.240373'),
(3195, 'ankit.sharma@cinntra.com', 'Guinea', '2024-06-19 16:13:19.241490', 'AME', '2024-06-19 16:13:19.241508'),
(3196, 'ankit.sharma@cinntra.com', 'Ivory Coast', '2024-06-19 16:13:19.242793', 'AME', '2024-06-19 16:13:19.242812'),
(3197, 'ankit.sharma@cinntra.com', 'Jordan', '2024-06-19 16:13:19.244057', 'AME', '2024-06-19 16:13:19.244076'),
(3198, 'ankit.sharma@cinntra.com', 'Kenya', '2024-06-19 16:13:19.245275', 'AME', '2024-06-19 16:13:19.245294'),
(3199, 'ankit.sharma@cinntra.com', 'Lebanon', '2024-06-19 16:13:19.246394', 'AME', '2024-06-19 16:13:19.246413'),
(3200, 'ankit.sharma@cinntra.com', 'Lesotho', '2024-06-19 16:13:19.247541', 'AME', '2024-06-19 16:13:19.247561'),
(3201, 'ankit.sharma@cinntra.com', 'Madagascar', '2024-06-19 16:13:19.248739', 'AME', '2024-06-19 16:13:19.248758'),
(3202, 'ankit.sharma@cinntra.com', 'Malawi', '2024-06-19 16:13:19.249887', 'AME', '2024-06-19 16:13:19.249907'),
(3203, 'ankit.sharma@cinntra.com', 'Mozambique', '2024-06-19 16:13:19.251035', 'AME', '2024-06-19 16:13:19.251054'),
(3204, 'ankit.sharma@cinntra.com', 'Namibia', '2024-06-19 16:13:19.252181', 'AME', '2024-06-19 16:13:19.252200'),
(3205, 'ankit.sharma@cinntra.com', 'Nigeria', '2024-06-19 16:13:19.253470', 'AME', '2024-06-19 16:13:19.253488'),
(3206, 'ankit.sharma@cinntra.com', 'Oman', '2024-06-19 16:13:19.254600', 'AME', '2024-06-19 16:13:19.254620'),
(3207, 'ankit.sharma@cinntra.com', 'Qatar', '2024-06-19 16:13:19.255711', 'AME', '2024-06-19 16:13:19.255730'),
(3208, 'ankit.sharma@cinntra.com', 'Regional Office', '2024-06-19 16:13:19.256894', 'AME', '2024-06-19 16:13:19.256925'),
(3209, 'ankit.sharma@cinntra.com', 'Saudi Arabia', '2024-06-19 16:13:19.258044', 'AME', '2024-06-19 16:13:19.258062'),
(3210, 'ankit.sharma@cinntra.com', 'Sierra Leone', '2024-06-19 16:13:19.259137', 'AME', '2024-06-19 16:13:19.259156'),
(3211, 'ankit.sharma@cinntra.com', 'South Africa - Cash Solutions', '2024-06-19 16:13:19.260231', 'AME', '2024-06-19 16:13:19.260249'),
(3212, 'ankit.sharma@cinntra.com', 'South Africa - Secure Solutions', '2024-06-19 16:13:19.261399', 'AME', '2024-06-19 16:13:19.261418'),
(3213, 'ankit.sharma@cinntra.com', 'South Africa - Care and Justice', '2024-06-19 16:13:19.262697', 'AME', '2024-06-19 16:13:19.262716'),
(3214, 'ankit.sharma@cinntra.com', 'Tanzania', '2024-06-19 16:13:19.263879', 'AME', '2024-06-19 16:13:19.263898'),
(3215, 'ankit.sharma@cinntra.com', 'Uganda', '2024-06-19 16:13:19.265022', 'AME', '2024-06-19 16:13:19.265041'),
(3216, 'ankit.sharma@cinntra.com', 'United Arab Emirates - Abu Dhabi', '2024-06-19 16:13:19.266166', 'AME', '2024-06-19 16:13:19.266186'),
(3217, 'ankit.sharma@cinntra.com', 'United Arab Emirates - Dubai', '2024-06-19 16:13:19.267298', 'AME', '2024-06-19 16:13:19.267317'),
(3218, 'ankit.sharma@cinntra.com', 'Zambia', '2024-06-19 16:13:19.268420', 'AME', '2024-06-19 16:13:19.268440'),
(3261, 'bhupendra.pal@cinntra.com', 'C&J - Australia', '2024-06-20 11:04:35.469055', 'APAC', '2024-06-20 11:04:35.469080'),
(3262, 'bhupendra.pal@cinntra.com', 'China', '2024-06-20 11:04:35.470541', 'APAC', '2024-06-20 11:04:35.470562'),
(3263, 'bhupendra.pal@cinntra.com', 'Guam', '2024-06-20 11:04:35.472140', 'APAC', '2024-06-20 11:04:35.472173'),
(3264, 'bhupendra.pal@cinntra.com', 'Hong Kong', '2024-06-20 11:04:35.473478', 'APAC', '2024-06-20 11:04:35.473499'),
(3265, 'bhupendra.pal@cinntra.com', 'India', '2024-06-20 11:04:35.474746', 'APAC', '2024-06-20 11:04:35.474766'),
(3266, 'bhupendra.pal@cinntra.com', 'Indonesia', '2024-06-20 11:04:35.476033', 'APAC', '2024-06-20 11:04:35.476052'),
(3267, 'bhupendra.pal@cinntra.com', 'Japan', '2024-06-20 11:04:35.477318', 'APAC', '2024-06-20 11:04:35.477336'),
(3268, 'bhupendra.pal@cinntra.com', 'Macau', '2024-06-20 11:04:35.478583', 'APAC', '2024-06-20 11:04:35.478602'),
(3269, 'bhupendra.pal@cinntra.com', 'Singapore', '2024-06-20 11:04:35.480257', 'APAC', '2024-06-20 11:04:35.480282'),
(3270, 'bhupendra.pal@cinntra.com', 'Taiwan', '2024-06-20 11:04:35.481602', 'APAC', '2024-06-20 11:04:35.481623'),
(3271, 'bhupendra.pal@cinntra.com', 'Thailand', '2024-06-20 11:04:35.482861', 'APAC', '2024-06-20 11:04:35.482880'),
(3353, 'bhoopendra.pal@cinntra.com', 'Bangladesh', '2024-06-20 16:00:48.393262', 'APAC', '2024-06-20 16:00:48.393285'),
(3354, 'bhoopendra.pal@cinntra.com', 'C&J - Australia', '2024-06-20 16:00:48.394566', 'APAC', '2024-06-20 16:00:48.394586'),
(3355, 'bhoopendra.pal@cinntra.com', 'China', '2024-06-20 16:00:48.395740', 'APAC', '2024-06-20 16:00:48.395759'),
(3356, 'bhoopendra.pal@cinntra.com', 'Guam', '2024-06-20 16:00:48.397117', 'APAC', '2024-06-20 16:00:48.397137'),
(3357, 'bhoopendra.pal@cinntra.com', 'Hong Kong', '2024-06-20 16:00:48.398288', 'APAC', '2024-06-20 16:00:48.398307'),
(3358, 'bhoopendra.pal@cinntra.com', 'India', '2024-06-20 16:00:48.399418', 'APAC', '2024-06-20 16:00:48.399438'),
(3359, 'bhoopendra.pal@cinntra.com', 'Indonesia', '2024-06-20 16:00:48.400580', 'APAC', '2024-06-20 16:00:48.400599'),
(3360, 'bhoopendra.pal@cinntra.com', 'Japan', '2024-06-20 16:00:48.401755', 'APAC', '2024-06-20 16:00:48.401774'),
(3361, 'bhoopendra.pal@cinntra.com', 'Macau', '2024-06-20 16:00:48.402911', 'APAC', '2024-06-20 16:00:48.402936'),
(3362, 'bhoopendra.pal@cinntra.com', 'Papua New Guinea', '2024-06-20 16:00:48.404167', 'APAC', '2024-06-20 16:00:48.404186'),
(3363, 'bhoopendra.pal@cinntra.com', 'Risk Consulting - Hill and Associates', '2024-06-20 16:00:48.405341', 'APAC', '2024-06-20 16:00:48.405360'),
(3364, 'bhoopendra.pal@cinntra.com', 'Singapore', '2024-06-20 16:00:48.406636', 'APAC', '2024-06-20 16:00:48.406660'),
(3365, 'bhoopendra.pal@cinntra.com', 'Taiwan', '2024-06-20 16:00:48.408079', 'APAC', '2024-06-20 16:00:48.408113'),
(3366, 'bhoopendra.pal@cinntra.com', 'Thailand', '2024-06-20 16:00:48.409289', 'APAC', '2024-06-20 16:00:48.409318'),
(3367, 'bhoopendra.pal@cinntra.com', 'Nepal', '2024-06-20 16:00:48.411020', 'APAC', '2024-06-20 16:00:48.411048'),
(3368, 'harsh.gupta@cinntra.com', 'Angola', '2024-06-20 16:09:00.692227', 'AME', '2024-06-20 16:09:00.692247'),
(3369, 'harsh.gupta@cinntra.com', 'Bahrain', '2024-06-20 16:09:00.693743', 'AME', '2024-06-20 16:09:00.693762'),
(3370, 'harsh.gupta@cinntra.com', 'Botswana', '2024-06-20 16:09:00.694912', 'AME', '2024-06-20 16:09:00.694930'),
(3371, 'harsh.gupta@cinntra.com', 'Cameroon', '2024-06-20 16:09:00.696103', 'AME', '2024-06-20 16:09:00.696122'),
(3372, 'harsh.gupta@cinntra.com', 'Central African Republic', '2024-06-20 16:09:00.697373', 'AME', '2024-06-20 16:09:00.697393'),
(3373, 'harsh.gupta@cinntra.com', 'Democratic Republic of Congo', '2024-06-20 16:09:00.698682', 'AME', '2024-06-20 16:09:00.698702'),
(3374, 'harsh.gupta@cinntra.com', 'Deposita International', '2024-06-20 16:09:00.699971', 'AME', '2024-06-20 16:09:00.699991'),
(3375, 'harsh.gupta@cinntra.com', 'Egypt', '2024-06-20 16:09:00.701220', 'AME', '2024-06-20 16:09:00.701239'),
(3376, 'harsh.gupta@cinntra.com', 'Gabon', '2024-06-20 16:09:00.702460', 'AME', '2024-06-20 16:09:00.702479'),
(3377, 'harsh.gupta@cinntra.com', 'Gambia', '2024-06-20 16:09:00.703659', 'AME', '2024-06-20 16:09:00.703677'),
(3378, 'harsh.gupta@cinntra.com', 'Ghana', '2024-06-20 16:09:00.707277', 'AME', '2024-06-20 16:09:00.707298'),
(3379, 'harsh.gupta@cinntra.com', 'Guinea', '2024-06-20 16:09:00.708470', 'AME', '2024-06-20 16:09:00.708489'),
(3380, 'harsh.gupta@cinntra.com', 'Ivory Coast', '2024-06-20 16:09:00.709603', 'AME', '2024-06-20 16:09:00.709622'),
(3381, 'harsh.gupta@cinntra.com', 'Jordan', '2024-06-20 16:09:00.710744', 'AME', '2024-06-20 16:09:00.710763'),
(3382, 'harsh.gupta@cinntra.com', 'Kenya', '2024-06-20 16:09:00.711880', 'AME', '2024-06-20 16:09:00.711899'),
(3383, 'harsh.gupta@cinntra.com', 'Lebanon', '2024-06-20 16:09:00.713031', 'AME', '2024-06-20 16:09:00.713049'),
(3384, 'harsh.gupta@cinntra.com', 'Lesotho', '2024-06-20 16:09:00.714219', 'AME', '2024-06-20 16:09:00.714238'),
(3385, 'harsh.gupta@cinntra.com', 'Madagascar', '2024-06-20 16:09:00.715412', 'AME', '2024-06-20 16:09:00.715431'),
(3386, 'harsh.gupta@cinntra.com', 'Malawi', '2024-06-20 16:09:00.716734', 'AME', '2024-06-20 16:09:00.716753'),
(3387, 'harsh.gupta@cinntra.com', 'Mozambique', '2024-06-20 16:09:00.717890', 'AME', '2024-06-20 16:09:00.717909'),
(3388, 'harsh.gupta@cinntra.com', 'Namibia', '2024-06-20 16:09:00.719040', 'AME', '2024-06-20 16:09:00.719059'),
(3389, 'harsh.gupta@cinntra.com', 'Nigeria', '2024-06-20 16:09:00.720221', 'AME', '2024-06-20 16:09:00.720239'),
(3390, 'harsh.gupta@cinntra.com', 'Oman', '2024-06-20 16:09:00.721391', 'AME', '2024-06-20 16:09:00.721410'),
(3391, 'harsh.gupta@cinntra.com', 'Qatar', '2024-06-20 16:09:00.722537', 'AME', '2024-06-20 16:09:00.722556'),
(3392, 'harsh.gupta@cinntra.com', 'Regional Office', '2024-06-20 16:09:00.723708', 'AME', '2024-06-20 16:09:00.723727'),
(3393, 'harsh.gupta@cinntra.com', 'Saudi Arabia', '2024-06-20 16:09:00.724859', 'AME', '2024-06-20 16:09:00.724876'),
(3394, 'harsh.gupta@cinntra.com', 'Sierra Leone', '2024-06-20 16:09:00.726164', 'AME', '2024-06-20 16:09:00.726183'),
(3395, 'harsh.gupta@cinntra.com', 'South Africa - Cash Solutions', '2024-06-20 16:09:00.727350', 'AME', '2024-06-20 16:09:00.727369'),
(3396, 'harsh.gupta@cinntra.com', 'South Africa - Secure Solutions', '2024-06-20 16:09:00.728546', 'AME', '2024-06-20 16:09:00.728565'),
(3397, 'harsh.gupta@cinntra.com', 'Uganda', '2024-06-20 16:09:00.729710', 'AME', '2024-06-20 16:09:00.729729'),
(3398, 'harsh.gupta@cinntra.com', 'United Arab Emirates - Abu Dhabi', '2024-06-20 16:09:00.730843', 'AME', '2024-06-20 16:09:00.730861'),
(3399, 'harsh.gupta@cinntra.com', 'United Arab Emirates - Dubai', '2024-06-20 16:09:00.731973', 'AME', '2024-06-20 16:09:00.731992'),
(3400, 'harsh.gupta@cinntra.com', 'Zambia', '2024-06-20 16:09:00.733151', 'AME', '2024-06-20 16:09:00.733170'),
(3401, 'harsh.gupta@cinntra.com', 'Tanzania', '2024-06-20 16:09:00.734391', 'AME', '2024-06-20 16:09:00.734409'),
(3402, 'harsh.gupta@cinntra.com', 'South Africa - Care and Justice', '2024-06-20 16:09:00.735734', 'AME', '2024-06-20 16:09:00.735754'),
(3403, 'nipun.dixit@cinntra.com', 'Angola', '2024-07-01 10:41:04.847711', 'AME', '2024-07-01 10:41:04.847731'),
(3404, 'nipun.dixit@cinntra.com', 'Bahrain', '2024-07-01 10:41:04.848959', 'AME', '2024-07-01 10:41:04.848978'),
(3405, 'nipun.dixit@cinntra.com', 'Botswana', '2024-07-01 10:41:04.850103', 'AME', '2024-07-01 10:41:04.850122'),
(3406, 'nipun.dixit@cinntra.com', 'Cameroon', '2024-07-01 10:41:04.851446', 'AME', '2024-07-01 10:41:04.851465'),
(3407, 'nipun.dixit@cinntra.com', 'Central African Republic', '2024-07-01 10:41:04.852605', 'AME', '2024-07-01 10:41:04.852624'),
(3408, 'nipun.dixit@cinntra.com', 'Democratic Republic of Congo', '2024-07-01 10:41:04.853750', 'AME', '2024-07-01 10:41:04.853768'),
(3409, 'nipun.dixit@cinntra.com', 'Deposita International', '2024-07-01 10:41:04.854936', 'AME', '2024-07-01 10:41:04.854955'),
(3410, 'nipun.dixit@cinntra.com', 'Egypt', '2024-07-01 10:41:04.856081', 'AME', '2024-07-01 10:41:04.856110'),
(3411, 'nipun.dixit@cinntra.com', 'Gabon', '2024-07-01 10:41:04.857265', 'AME', '2024-07-01 10:41:04.857284'),
(3412, 'nipun.dixit@cinntra.com', 'Gambia', '2024-07-01 10:41:04.858445', 'AME', '2024-07-01 10:41:04.858465'),
(3413, 'nipun.dixit@cinntra.com', 'Ghana', '2024-07-01 10:41:04.859686', 'AME', '2024-07-01 10:41:04.859705'),
(3414, 'nipun.dixit@cinntra.com', 'Guinea', '2024-07-01 10:41:04.860960', 'AME', '2024-07-01 10:41:04.860979'),
(3415, 'nipun.dixit@cinntra.com', 'Ivory Coast', '2024-07-01 10:41:04.862093', 'AME', '2024-07-01 10:41:04.862114'),
(3416, 'nipun.dixit@cinntra.com', 'Jordan', '2024-07-01 10:41:04.863257', 'AME', '2024-07-01 10:41:04.863276'),
(3417, 'nipun.dixit@cinntra.com', 'Kenya', '2024-07-01 10:41:04.864391', 'AME', '2024-07-01 10:41:04.864410'),
(3418, 'nipun.dixit@cinntra.com', 'Lebanon', '2024-07-01 10:41:04.865520', 'AME', '2024-07-01 10:41:04.865539'),
(3419, 'nipun.dixit@cinntra.com', 'Lesotho', '2024-07-01 10:41:04.866656', 'AME', '2024-07-01 10:41:04.866676'),
(3420, 'nipun.dixit@cinntra.com', 'Madagascar', '2024-07-01 10:41:04.867860', 'AME', '2024-07-01 10:41:04.867888'),
(3421, 'nipun.dixit@cinntra.com', 'Malawi', '2024-07-01 10:41:04.869246', 'AME', '2024-07-01 10:41:04.869265'),
(3422, 'nipun.dixit@cinntra.com', 'Mozambique', '2024-07-01 10:41:04.872503', 'AME', '2024-07-01 10:41:04.872523'),
(3423, 'nipun.dixit@cinntra.com', 'Namibia', '2024-07-01 10:41:04.873673', 'AME', '2024-07-01 10:41:04.873692'),
(3424, 'nipun.dixit@cinntra.com', 'Nigeria', '2024-07-01 10:41:04.874832', 'AME', '2024-07-01 10:41:04.874851'),
(3425, 'nipun.dixit@cinntra.com', 'Oman', '2024-07-01 10:41:04.876013', 'AME', '2024-07-01 10:41:04.876032'),
(3426, 'nipun.dixit@cinntra.com', 'Qatar', '2024-07-01 10:41:04.877270', 'AME', '2024-07-01 10:41:04.877289'),
(3427, 'nipun.dixit@cinntra.com', 'Regional Office', '2024-07-01 10:41:04.878415', 'AME', '2024-07-01 10:41:04.878434'),
(3428, 'nipun.dixit@cinntra.com', 'Saudi Arabia', '2024-07-01 10:41:04.879595', 'AME', '2024-07-01 10:41:04.879614'),
(3429, 'nipun.dixit@cinntra.com', 'Sierra Leone', '2024-07-01 10:41:04.880789', 'AME', '2024-07-01 10:41:04.880808'),
(3430, 'nipun.dixit@cinntra.com', 'South Africa - Cash Solutions', '2024-07-01 10:41:04.882066', 'AME', '2024-07-01 10:41:04.882096'),
(3431, 'nipun.dixit@cinntra.com', 'South Africa - Secure Solutions', '2024-07-01 10:41:04.883253', 'AME', '2024-07-01 10:41:04.883271'),
(3432, 'nipun.dixit@cinntra.com', 'South Africa - Care and Justice', '2024-07-01 10:41:04.884395', 'AME', '2024-07-01 10:41:04.884414'),
(3433, 'nipun.dixit@cinntra.com', 'Tanzania', '2024-07-01 10:41:04.885525', 'AME', '2024-07-01 10:41:04.885544'),
(3434, 'nipun.dixit@cinntra.com', 'Uganda', '2024-07-01 10:41:04.886663', 'AME', '2024-07-01 10:41:04.886690'),
(3435, 'nipun.dixit@cinntra.com', 'United Arab Emirates - Abu Dhabi', '2024-07-01 10:41:04.887842', 'AME', '2024-07-01 10:41:04.887860'),
(3436, 'nipun.dixit@cinntra.com', 'United Arab Emirates - Dubai', '2024-07-01 10:41:04.889008', 'AME', '2024-07-01 10:41:04.889027'),
(3437, 'nipun.dixit@cinntra.com', 'Zambia', '2024-07-01 10:41:04.890177', 'AME', '2024-07-01 10:41:04.890196'),
(3438, 'nipun.dixit@cinntra.com', 'Bangladesh', '2024-07-01 10:41:04.891477', 'APAC', '2024-07-01 10:41:04.891496'),
(3439, 'nipun.dixit@cinntra.com', 'C&J - Australia', '2024-07-01 10:41:04.892608', 'APAC', '2024-07-01 10:41:04.892633'),
(3440, 'nipun.dixit@cinntra.com', 'China', '2024-07-01 10:41:04.893812', 'APAC', '2024-07-01 10:41:04.893832'),
(3441, 'nipun.dixit@cinntra.com', 'Guam', '2024-07-01 10:41:04.895494', 'APAC', '2024-07-01 10:41:04.895513'),
(3442, 'nipun.dixit@cinntra.com', 'Hong Kong', '2024-07-01 10:41:04.896620', 'APAC', '2024-07-01 10:41:04.896648'),
(3443, 'nipun.dixit@cinntra.com', 'India', '2024-07-01 10:41:04.897835', 'APAC', '2024-07-01 10:41:04.897854'),
(3444, 'nipun.dixit@cinntra.com', 'Indonesia', '2024-07-01 10:41:04.899337', 'APAC', '2024-07-01 10:41:04.899357'),
(3445, 'nipun.dixit@cinntra.com', 'Japan', '2024-07-01 10:41:04.900520', 'APAC', '2024-07-01 10:41:04.900539'),
(3446, 'nipun.dixit@cinntra.com', 'Macau', '2024-07-01 10:41:04.901877', 'APAC', '2024-07-01 10:41:04.901897'),
(3447, 'nipun.dixit@cinntra.com', 'Nepal', '2024-07-01 10:41:04.903049', 'APAC', '2024-07-01 10:41:04.903068'),
(3448, 'nipun.dixit@cinntra.com', 'Papua New Guinea', '2024-07-01 10:41:04.904302', 'APAC', '2024-07-01 10:41:04.904321'),
(3449, 'nipun.dixit@cinntra.com', 'Risk Consulting - Hill and Associates', '2024-07-01 10:41:04.905478', 'APAC', '2024-07-01 10:41:04.905497'),
(3450, 'nipun.dixit@cinntra.com', 'Singapore', '2024-07-01 10:41:04.906711', 'APAC', '2024-07-01 10:41:04.906738'),
(3451, 'nipun.dixit@cinntra.com', 'Taiwan', '2024-07-01 10:41:04.907921', 'APAC', '2024-07-01 10:41:04.907939'),
(3452, 'nipun.dixit@cinntra.com', 'Thailand', '2024-07-01 10:41:04.910348', 'APAC', '2024-07-01 10:41:04.910367'),
(3453, 'nipun.dixit@cinntra.com', 'AUS Electronic Monitoring', '2024-07-01 10:41:04.911538', 'Corporate Services', '2024-07-01 10:41:04.911557'),
(3454, 'nipun.dixit@cinntra.com', 'Corporate Services / International Business Head Office', '2024-07-01 10:41:04.912880', 'Corporate Services', '2024-07-01 10:41:04.912899'),
(3455, 'nipun.dixit@cinntra.com', 'Austria', '2024-07-01 10:41:04.914073', 'Europe', '2024-07-01 10:41:04.914117'),
(3456, 'nipun.dixit@cinntra.com', 'Belgium - Secure Solutions', '2024-07-01 10:41:04.915684', 'Europe', '2024-07-01 10:41:04.915705'),
(3457, 'nipun.dixit@cinntra.com', 'Czech Republic', '2024-07-01 10:41:04.916845', 'Europe', '2024-07-01 10:41:04.916864'),
(3458, 'nipun.dixit@cinntra.com', 'Denmark', '2024-07-01 10:41:04.917997', 'Europe', '2024-07-01 10:41:04.918016'),
(3459, 'nipun.dixit@cinntra.com', 'Estonia', '2024-07-01 10:41:04.919181', 'Europe', '2024-07-01 10:41:04.919199'),
(3460, 'nipun.dixit@cinntra.com', 'France', '2024-07-01 10:41:04.920332', 'Europe', '2024-07-01 10:41:04.920351'),
(3461, 'nipun.dixit@cinntra.com', 'Greece', '2024-07-01 10:41:04.921492', 'Europe', '2024-07-01 10:41:04.921511'),
(3462, 'nipun.dixit@cinntra.com', 'Latvia', '2024-07-01 10:41:04.922817', 'Europe', '2024-07-01 10:41:04.922838'),
(3463, 'nipun.dixit@cinntra.com', 'Lithuania', '2024-07-01 10:41:04.923994', 'Europe', '2024-07-01 10:41:04.924014'),
(3464, 'nipun.dixit@cinntra.com', 'Luxembourg - Secure Solutions', '2024-07-01 10:41:04.925170', 'Europe', '2024-07-01 10:41:04.925189'),
(3465, 'nipun.dixit@cinntra.com', 'Malta', '2024-07-01 10:41:04.926342', 'Europe', '2024-07-01 10:41:04.926361'),
(3466, 'nipun.dixit@cinntra.com', 'Morocco - Secure Solutions', '2024-07-01 10:41:04.927501', 'Europe', '2024-07-01 10:41:04.927520'),
(3467, 'nipun.dixit@cinntra.com', 'Morocco - Cash Solutions', '2024-07-01 10:41:04.928674', 'Europe', '2024-07-01 10:41:04.928700'),
(3468, 'nipun.dixit@cinntra.com', 'Netherlands - Secure Solutions', '2024-07-01 10:41:04.929837', 'Europe', '2024-07-01 10:41:04.929857'),
(3469, 'nipun.dixit@cinntra.com', 'Serbia', '2024-07-01 10:41:04.930997', 'Europe', '2024-07-01 10:41:04.931016'),
(3470, 'nipun.dixit@cinntra.com', 'Slovakia', '2024-07-01 10:41:04.932311', 'Europe', '2024-07-01 10:41:04.932330'),
(3471, 'nipun.dixit@cinntra.com', 'Slovenia', '2024-07-01 10:41:04.933449', 'Europe', '2024-07-01 10:41:04.933469'),
(3472, 'nipun.dixit@cinntra.com', 'Turkey', '2024-07-01 10:41:04.934577', 'Europe', '2024-07-01 10:41:04.934596'),
(3473, 'nipun.dixit@cinntra.com', 'Ukraine', '2024-07-01 10:41:04.935750', 'Europe', '2024-07-01 10:41:04.935769'),
(3474, 'nipun.dixit@cinntra.com', 'Argentina', '2024-07-01 10:41:04.936896', 'LATAM', '2024-07-01 10:41:04.936915'),
(3475, 'nipun.dixit@cinntra.com', 'Barbados', '2024-07-01 10:41:04.938038', 'LATAM', '2024-07-01 10:41:04.938057'),
(3476, 'nipun.dixit@cinntra.com', 'Brazil', '2024-07-01 10:41:04.939216', 'LATAM', '2024-07-01 10:41:04.939235'),
(3477, 'nipun.dixit@cinntra.com', 'Chile', '2024-07-01 10:41:04.940374', 'LATAM', '2024-07-01 10:41:04.940394'),
(3478, 'nipun.dixit@cinntra.com', 'Colombia', '2024-07-01 10:41:04.941742', 'LATAM', '2024-07-01 10:41:04.941761'),
(3479, 'nipun.dixit@cinntra.com', 'Costa Rica', '2024-07-01 10:41:04.942914', 'LATAM', '2024-07-01 10:41:04.942933'),
(3480, 'nipun.dixit@cinntra.com', 'Ecuador', '2024-07-01 10:41:04.944097', 'LATAM', '2024-07-01 10:41:04.944117'),
(3481, 'nipun.dixit@cinntra.com', 'El Salvador', '2024-07-01 10:41:04.945326', 'LATAM', '2024-07-01 10:41:04.945345'),
(3482, 'nipun.dixit@cinntra.com', 'Grenada', '2024-07-01 10:41:04.946459', 'LATAM', '2024-07-01 10:41:04.946478'),
(3483, 'nipun.dixit@cinntra.com', 'Guatemala', '2024-07-01 10:41:04.947574', 'LATAM', '2024-07-01 10:41:04.947593'),
(3484, 'nipun.dixit@cinntra.com', 'Nicaragua', '2024-07-01 10:41:04.948749', 'LATAM', '2024-07-01 10:41:04.948767'),
(3485, 'nipun.dixit@cinntra.com', 'Paraguay', '2024-07-01 10:41:04.949893', 'LATAM', '2024-07-01 10:41:04.949912'),
(3486, 'nipun.dixit@cinntra.com', 'Peru', '2024-07-01 10:41:04.951201', 'LATAM', '2024-07-01 10:41:04.951220'),
(3487, 'nipun.dixit@cinntra.com', 'St. Lucia', '2024-07-01 10:41:04.952349', 'LATAM', '2024-07-01 10:41:04.952368'),
(3488, 'nipun.dixit@cinntra.com', 'Trinidad and Tobago', '2024-07-01 10:41:04.953487', 'LATAM', '2024-07-01 10:41:04.953506'),
(3489, 'nipun.dixit@cinntra.com', 'Uruguay', '2024-07-01 10:41:04.954641', 'LATAM', '2024-07-01 10:41:04.954667'),
(3490, 'nipun.dixit@cinntra.com', 'Allied Universal Electronic Monitoring', '2024-07-01 10:41:04.955799', 'UKI', '2024-07-01 10:41:04.955818'),
(3491, 'nipun.dixit@cinntra.com', 'AUS Compliance and Investigations', '2024-07-01 10:41:04.957023', 'UKI', '2024-07-01 10:41:04.957043'),
(3492, 'nipun.dixit@cinntra.com', 'C&J - Care and Rehabilitation Services', '2024-07-01 10:41:04.958190', 'UKI', '2024-07-01 10:41:04.958209'),
(3493, 'nipun.dixit@cinntra.com', 'C&J - Employment Support Services', '2024-07-01 10:41:04.959362', 'UKI', '2024-07-01 10:41:04.959381'),
(3494, 'nipun.dixit@cinntra.com', 'C&J - Health Services', '2024-07-01 10:41:04.960679', 'UKI', '2024-07-01 10:41:04.960709'),
(3495, 'nipun.dixit@cinntra.com', 'C&J - Patient Transport Services', '2024-07-01 10:41:04.961864', 'UKI', '2024-07-01 10:41:04.961883'),
(3496, 'nipun.dixit@cinntra.com', 'Facilities Management', '2024-07-01 10:41:04.963017', 'UKI', '2024-07-01 10:41:04.963036'),
(3497, 'nipun.dixit@cinntra.com', 'Ireland', '2024-07-01 10:41:04.964163', 'UKI', '2024-07-01 10:41:04.964182'),
(3498, 'nipun.dixit@cinntra.com', 'Risk', '2024-07-01 10:41:04.965314', 'UKI', '2024-07-01 10:41:04.965333'),
(3499, 'nipun.dixit@cinntra.com', 'Secure Solutions UK', '2024-07-01 10:41:04.966487', 'UKI', '2024-07-01 10:41:04.966506'),
(3500, 'nipun.dixit@cinntra.com', 'UK - Cash Solutions', '2024-07-01 10:41:04.967636', 'UKI', '2024-07-01 10:41:04.967664'),
(3501, 'akad.singh@g4s.com', 'Angola', '2024-07-01 10:43:36.221292', 'AME', '2024-07-01 10:43:36.221311'),
(3502, 'akad.singh@g4s.com', 'Bahrain', '2024-07-01 10:43:36.222793', 'AME', '2024-07-01 10:43:36.222813'),
(3503, 'akad.singh@g4s.com', 'Botswana', '2024-07-01 10:43:36.223985', 'AME', '2024-07-01 10:43:36.224004'),
(3504, 'akad.singh@g4s.com', 'Cameroon', '2024-07-01 10:43:36.225161', 'AME', '2024-07-01 10:43:36.225180'),
(3505, 'akad.singh@g4s.com', 'Central African Republic', '2024-07-01 10:43:36.226319', 'AME', '2024-07-01 10:43:36.226338'),
(3506, 'akad.singh@g4s.com', 'Democratic Republic of Congo', '2024-07-01 10:43:36.227480', 'AME', '2024-07-01 10:43:36.227499'),
(3507, 'akad.singh@g4s.com', 'Deposita International', '2024-07-01 10:43:36.228729', 'AME', '2024-07-01 10:43:36.228750'),
(3508, 'akad.singh@g4s.com', 'Egypt', '2024-07-01 10:43:36.229885', 'AME', '2024-07-01 10:43:36.229904'),
(3509, 'akad.singh@g4s.com', 'Gabon', '2024-07-01 10:43:36.231101', 'AME', '2024-07-01 10:43:36.231121'),
(3510, 'akad.singh@g4s.com', 'Gambia', '2024-07-01 10:43:36.232494', 'AME', '2024-07-01 10:43:36.232514'),
(3511, 'akad.singh@g4s.com', 'Ghana', '2024-07-01 10:43:36.233680', 'AME', '2024-07-01 10:43:36.233700'),
(3512, 'akad.singh@g4s.com', 'Guinea', '2024-07-01 10:43:36.234831', 'AME', '2024-07-01 10:43:36.234850'),
(3513, 'akad.singh@g4s.com', 'Ivory Coast', '2024-07-01 10:43:36.236008', 'AME', '2024-07-01 10:43:36.236028'),
(3514, 'akad.singh@g4s.com', 'Jordan', '2024-07-01 10:43:36.237197', 'AME', '2024-07-01 10:43:36.237217'),
(3515, 'akad.singh@g4s.com', 'Kenya', '2024-07-01 10:43:36.238352', 'AME', '2024-07-01 10:43:36.238371'),
(3516, 'akad.singh@g4s.com', 'Lebanon', '2024-07-01 10:43:36.239553', 'AME', '2024-07-01 10:43:36.239572'),
(3517, 'akad.singh@g4s.com', 'Lesotho', '2024-07-01 10:43:36.240734', 'AME', '2024-07-01 10:43:36.240761'),
(3518, 'akad.singh@g4s.com', 'Madagascar', '2024-07-01 10:43:36.242134', 'AME', '2024-07-01 10:43:36.242154'),
(3519, 'akad.singh@g4s.com', 'Malawi', '2024-07-01 10:43:36.243296', 'AME', '2024-07-01 10:43:36.243315'),
(3520, 'akad.singh@g4s.com', 'Mozambique', '2024-07-01 10:43:36.244451', 'AME', '2024-07-01 10:43:36.244471'),
(3521, 'akad.singh@g4s.com', 'Namibia', '2024-07-01 10:43:36.245645', 'AME', '2024-07-01 10:43:36.245665'),
(3522, 'akad.singh@g4s.com', 'Nigeria', '2024-07-01 10:43:36.246785', 'AME', '2024-07-01 10:43:36.246805'),
(3523, 'akad.singh@g4s.com', 'Oman', '2024-07-01 10:43:36.247915', 'AME', '2024-07-01 10:43:36.247934'),
(3524, 'akad.singh@g4s.com', 'Qatar', '2024-07-01 10:43:36.249064', 'AME', '2024-07-01 10:43:36.249104'),
(3525, 'akad.singh@g4s.com', 'Regional Office', '2024-07-01 10:43:36.250230', 'AME', '2024-07-01 10:43:36.250249'),
(3526, 'akad.singh@g4s.com', 'Saudi Arabia', '2024-07-01 10:43:36.251541', 'AME', '2024-07-01 10:43:36.251560'),
(3527, 'akad.singh@g4s.com', 'Sierra Leone', '2024-07-01 10:43:36.252709', 'AME', '2024-07-01 10:43:36.252729'),
(3528, 'akad.singh@g4s.com', 'South Africa - Cash Solutions', '2024-07-01 10:43:36.253848', 'AME', '2024-07-01 10:43:36.253867'),
(3529, 'akad.singh@g4s.com', 'South Africa - Secure Solutions', '2024-07-01 10:43:36.255000', 'AME', '2024-07-01 10:43:36.255019'),
(3530, 'akad.singh@g4s.com', 'South Africa - Care and Justice', '2024-07-01 10:43:36.256171', 'AME', '2024-07-01 10:43:36.256190'),
(3531, 'akad.singh@g4s.com', 'Tanzania', '2024-07-01 10:43:36.257463', 'AME', '2024-07-01 10:43:36.257482'),
(3532, 'akad.singh@g4s.com', 'Uganda', '2024-07-01 10:43:36.258633', 'AME', '2024-07-01 10:43:36.258653'),
(3533, 'akad.singh@g4s.com', 'United Arab Emirates - Abu Dhabi', '2024-07-01 10:43:36.259813', 'AME', '2024-07-01 10:43:36.259833'),
(3534, 'akad.singh@g4s.com', 'United Arab Emirates - Dubai', '2024-07-01 10:43:36.261154', 'AME', '2024-07-01 10:43:36.261173'),
(3535, 'akad.singh@g4s.com', 'Zambia', '2024-07-01 10:43:36.262309', 'AME', '2024-07-01 10:43:36.262329'),
(3536, 'akad.singh@g4s.com', 'Bangladesh', '2024-07-01 10:43:36.263459', 'APAC', '2024-07-01 10:43:36.263478'),
(3537, 'akad.singh@g4s.com', 'C&J - Australia', '2024-07-01 10:43:36.264631', 'APAC', '2024-07-01 10:43:36.264651'),
(3538, 'akad.singh@g4s.com', 'China', '2024-07-01 10:43:36.265801', 'APAC', '2024-07-01 10:43:36.265821'),
(3539, 'akad.singh@g4s.com', 'Guam', '2024-07-01 10:43:36.266935', 'APAC', '2024-07-01 10:43:36.266955'),
(3540, 'akad.singh@g4s.com', 'Hong Kong', '2024-07-01 10:43:36.268092', 'APAC', '2024-07-01 10:43:36.268113'),
(3541, 'akad.singh@g4s.com', 'India', '2024-07-01 10:43:36.269284', 'APAC', '2024-07-01 10:43:36.269303'),
(3542, 'akad.singh@g4s.com', 'Indonesia', '2024-07-01 10:43:36.270686', 'APAC', '2024-07-01 10:43:36.270705'),
(3543, 'akad.singh@g4s.com', 'Japan', '2024-07-01 10:43:36.271928', 'APAC', '2024-07-01 10:43:36.271948'),
(3544, 'akad.singh@g4s.com', 'Macau', '2024-07-01 10:43:36.273198', 'APAC', '2024-07-01 10:43:36.273217'),
(3545, 'akad.singh@g4s.com', 'Nepal', '2024-07-01 10:43:36.274453', 'APAC', '2024-07-01 10:43:36.274473'),
(3546, 'akad.singh@g4s.com', 'Papua New Guinea', '2024-07-01 10:43:36.275707', 'APAC', '2024-07-01 10:43:36.275726'),
(3547, 'akad.singh@g4s.com', 'Risk Consulting - Hill and Associates', '2024-07-01 10:43:36.276896', 'APAC', '2024-07-01 10:43:36.276915'),
(3548, 'akad.singh@g4s.com', 'Singapore', '2024-07-01 10:43:36.278065', 'APAC', '2024-07-01 10:43:36.278094'),
(3549, 'akad.singh@g4s.com', 'Taiwan', '2024-07-01 10:43:36.279236', 'APAC', '2024-07-01 10:43:36.279256'),
(3550, 'akad.singh@g4s.com', 'Thailand', '2024-07-01 10:43:36.281783', 'APAC', '2024-07-01 10:43:36.281803'),
(3551, 'akad.singh@g4s.com', 'AUS Electronic Monitoring', '2024-07-01 10:43:36.282941', 'Corporate Services', '2024-07-01 10:43:36.282960'),
(3552, 'akad.singh@g4s.com', 'Corporate Services / International Business Head Office', '2024-07-01 10:43:36.284094', 'Corporate Services', '2024-07-01 10:43:36.284114'),
(3553, 'akad.singh@g4s.com', 'Austria', '2024-07-01 10:43:36.285235', 'Europe', '2024-07-01 10:43:36.285255'),
(3554, 'akad.singh@g4s.com', 'Belgium - Secure Solutions', '2024-07-01 10:43:36.286422', 'Europe', '2024-07-01 10:43:36.286441'),
(3555, 'akad.singh@g4s.com', 'Czech Republic', '2024-07-01 10:43:36.287551', 'Europe', '2024-07-01 10:43:36.287570'),
(3556, 'akad.singh@g4s.com', 'Denmark', '2024-07-01 10:43:36.288681', 'Europe', '2024-07-01 10:43:36.288700'),
(3557, 'akad.singh@g4s.com', 'Estonia', '2024-07-01 10:43:36.289815', 'Europe', '2024-07-01 10:43:36.289834'),
(3558, 'akad.singh@g4s.com', 'France', '2024-07-01 10:43:36.291640', 'Europe', '2024-07-01 10:43:36.291660'),
(3559, 'akad.singh@g4s.com', 'Greece', '2024-07-01 10:43:36.293080', 'Europe', '2024-07-01 10:43:36.293113'),
(3560, 'akad.singh@g4s.com', 'Latvia', '2024-07-01 10:43:36.294254', 'Europe', '2024-07-01 10:43:36.294273'),
(3561, 'akad.singh@g4s.com', 'Lithuania', '2024-07-01 10:43:36.295413', 'Europe', '2024-07-01 10:43:36.295432'),
(3562, 'akad.singh@g4s.com', 'Luxembourg - Secure Solutions', '2024-07-01 10:43:36.296642', 'Europe', '2024-07-01 10:43:36.296661'),
(3563, 'akad.singh@g4s.com', 'Malta', '2024-07-01 10:43:36.297822', 'Europe', '2024-07-01 10:43:36.297841'),
(3564, 'akad.singh@g4s.com', 'Morocco - Secure Solutions', '2024-07-01 10:43:36.298981', 'Europe', '2024-07-01 10:43:36.299001'),
(3565, 'akad.singh@g4s.com', 'Morocco - Cash Solutions', '2024-07-01 10:43:36.300175', 'Europe', '2024-07-01 10:43:36.300194'),
(3566, 'akad.singh@g4s.com', 'Netherlands - Secure Solutions', '2024-07-01 10:43:36.301479', 'Europe', '2024-07-01 10:43:36.301498'),
(3567, 'akad.singh@g4s.com', 'Serbia', '2024-07-01 10:43:36.302643', 'Europe', '2024-07-01 10:43:36.302662'),
(3568, 'akad.singh@g4s.com', 'Slovakia', '2024-07-01 10:43:36.303807', 'Europe', '2024-07-01 10:43:36.303827'),
(3569, 'akad.singh@g4s.com', 'Slovenia', '2024-07-01 10:43:36.304944', 'Europe', '2024-07-01 10:43:36.304963'),
(3570, 'akad.singh@g4s.com', 'Turkey', '2024-07-01 10:43:36.306327', 'Europe', '2024-07-01 10:43:36.306351'),
(3571, 'akad.singh@g4s.com', 'Ukraine', '2024-07-01 10:43:36.307585', 'Europe', '2024-07-01 10:43:36.307605'),
(3572, 'akad.singh@g4s.com', 'Argentina', '2024-07-01 10:43:36.308786', 'LATAM', '2024-07-01 10:43:36.308805'),
(3573, 'akad.singh@g4s.com', 'Barbados', '2024-07-01 10:43:36.310205', 'LATAM', '2024-07-01 10:43:36.310233'),
(3574, 'akad.singh@g4s.com', 'Brazil', '2024-07-01 10:43:36.311711', 'LATAM', '2024-07-01 10:43:36.311731'),
(3575, 'akad.singh@g4s.com', 'Chile', '2024-07-01 10:43:36.312896', 'LATAM', '2024-07-01 10:43:36.312916'),
(3576, 'akad.singh@g4s.com', 'Colombia', '2024-07-01 10:43:36.314111', 'LATAM', '2024-07-01 10:43:36.314141'),
(3577, 'akad.singh@g4s.com', 'Costa Rica', '2024-07-01 10:43:36.315317', 'LATAM', '2024-07-01 10:43:36.315336'),
(3578, 'akad.singh@g4s.com', 'Ecuador', '2024-07-01 10:43:36.316478', 'LATAM', '2024-07-01 10:43:36.316497'),
(3579, 'akad.singh@g4s.com', 'El Salvador', '2024-07-01 10:43:36.317828', 'LATAM', '2024-07-01 10:43:36.317849'),
(3580, 'akad.singh@g4s.com', 'Grenada', '2024-07-01 10:43:36.319018', 'LATAM', '2024-07-01 10:43:36.319038'),
(3581, 'akad.singh@g4s.com', 'Guatemala', '2024-07-01 10:43:36.320211', 'LATAM', '2024-07-01 10:43:36.320230'),
(3582, 'akad.singh@g4s.com', 'Nicaragua', '2024-07-01 10:43:36.321532', 'LATAM', '2024-07-01 10:43:36.321551'),
(3583, 'akad.singh@g4s.com', 'Paraguay', '2024-07-01 10:43:36.322810', 'LATAM', '2024-07-01 10:43:36.322829'),
(3584, 'akad.singh@g4s.com', 'Peru', '2024-07-01 10:43:36.323997', 'LATAM', '2024-07-01 10:43:36.324016'),
(3585, 'akad.singh@g4s.com', 'St. Lucia', '2024-07-01 10:43:36.325181', 'LATAM', '2024-07-01 10:43:36.325201'),
(3586, 'akad.singh@g4s.com', 'Trinidad and Tobago', '2024-07-01 10:43:36.326384', 'LATAM', '2024-07-01 10:43:36.326413'),
(3587, 'akad.singh@g4s.com', 'Uruguay', '2024-07-01 10:43:36.327582', 'LATAM', '2024-07-01 10:43:36.327601'),
(3588, 'akad.singh@g4s.com', 'Allied Universal Electronic Monitoring', '2024-07-01 10:43:36.328734', 'UKI', '2024-07-01 10:43:36.328754'),
(3589, 'akad.singh@g4s.com', 'AUS Compliance and Investigations', '2024-07-01 10:43:36.329877', 'UKI', '2024-07-01 10:43:36.329896'),
(3590, 'akad.singh@g4s.com', 'C&J - Care and Rehabilitation Services', '2024-07-01 10:43:36.331189', 'UKI', '2024-07-01 10:43:36.331209'),
(3591, 'akad.singh@g4s.com', 'C&J - Employment Support Services', '2024-07-01 10:43:36.332353', 'UKI', '2024-07-01 10:43:36.332372'),
(3592, 'akad.singh@g4s.com', 'C&J - Health Services', '2024-07-01 10:43:36.333518', 'UKI', '2024-07-01 10:43:36.333538'),
(3593, 'akad.singh@g4s.com', 'C&J - Patient Transport Services', '2024-07-01 10:43:36.334694', 'UKI', '2024-07-01 10:43:36.334713'),
(3594, 'akad.singh@g4s.com', 'Facilities Management', '2024-07-01 10:43:36.335888', 'UKI', '2024-07-01 10:43:36.335908'),
(3595, 'akad.singh@g4s.com', 'Ireland', '2024-07-01 10:43:36.337009', 'UKI', '2024-07-01 10:43:36.337028'),
(3596, 'akad.singh@g4s.com', 'Risk', '2024-07-01 10:43:36.338218', 'UKI', '2024-07-01 10:43:36.338237'),
(3597, 'akad.singh@g4s.com', 'Secure Solutions UK', '2024-07-01 10:43:36.339429', 'UKI', '2024-07-01 10:43:36.339449'),
(3598, 'akad.singh@g4s.com', 'UK - Cash Solutions', '2024-07-01 10:43:36.340736', 'UKI', '2024-07-01 10:43:36.340755');

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
  `added_on` datetime(6) NOT NULL,
  `last_updated_by` varchar(100) DEFAULT NULL,
  `last_updated_on` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users_users`
--

INSERT INTO `users_users` (`id`, `user_name`, `user_email`, `user_region`, `user_country_code`, `user_country`, `user_cadre`, `access_permission`, `is_active`, `added_by`, `added_on`, `last_updated_by`, `last_updated_on`) VALUES
(12, 'Admin', 'adminworkflow@in.g4s.com', 'All', NULL, NULL, 'Group CFO', 'Write', 1, 'adminworkflow@in.g4s.com', '2023-12-15 11:11:10.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(14, 'Azad Singh', 'azad.singh@g4s.com', 'APAC', NULL, NULL, 'Country HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2023-12-15 11:34:59.000000', NULL, '2024-06-19 14:42:48.950875'),
(15, 'catherine hooper', 'catherine.hooper@uk.g4s.com', 'All', NULL, NULL, 'CHRO', 'Write', 1, 'adminworkflow@in.g4s.com', '2023-12-15 11:36:39.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(16, 'Saurabh', 'saurabh.khare@in.g4s.com', 'All', NULL, NULL, 'Country HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2023-12-15 11:37:48.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(18, 'paul carter', 'paul.carter@g4s.com', 'All', NULL, NULL, 'Group-CFO', 'Write', 1, 'adminworkflow@in.g4s.com', '2023-12-20 13:33:05.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(19, 'Kamal Negi', 'kamal.negi@in.g4s.com', 'AME', NULL, NULL, 'Country HR', 'Write', 1, 'amit.varma@g4s.com', '2023-12-21 10:04:31.000000', NULL, '2024-06-19 14:42:48.950875'),
(24, 'Shantanu Garg', 'shantanu.garg.external@g4s.com', 'All', NULL, NULL, 'Group CEO', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-03 07:31:33.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(25, 'arvind kumar', 'arvind.kumar@in.g4s.com', 'All', NULL, NULL, 'Country HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-16 05:31:00.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(26, 'vikas kumar', 'vikas.kumar@in.g4s.com', 'AME', NULL, NULL, 'Country HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-16 05:33:07.000000', NULL, '2024-06-19 14:42:48.950875'),
(27, 'melt vanderspuy', 'melt.vanderspuy@g4s.com', 'All', NULL, NULL, 'Group-CEO', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-03 07:31:33.000000', 'melt.vanderspuy@g4s.com', '2024-06-19 14:42:48.950875'),
(29, 'Rashmi', 'rashmi.bharti@in.g4s.com', 'All', NULL, NULL, 'Country HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-19 12:15:14.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(30, 'Emma Webber', 'emma.webber@ame.g4s.com', 'AME', NULL, NULL, 'Regional-HRM', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-23 12:47:22.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(32, 'Admin', 'adminworkflow@in.g4s.com', 'All', NULL, NULL, 'Country HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-23 12:47:22.000000', NULL, '2024-06-19 14:42:48.950875'),
(33, 'Trishana Maharaj', 'trishana.maharaj@ame.g4s.com', 'AME', NULL, NULL, 'Regional-HRD', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:38:15.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(34, 'sophie crompton', 'sophie.crompton@uk.g4s.com', 'UKI', NULL, NULL, 'Regional-HRD', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:39:30.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(35, 'Jason Dendrijver', 'jason.dendrijver@eu.g4s.com', 'UKI', NULL, NULL, 'Regional-HRM', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:40:04.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(36, 'Caroline Roux', 'caroline.roux@ame.g4s.com', 'APAC', NULL, NULL, 'Regional-HRD', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:41:03.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(37, 'Antonia Poon', 'antonia.poon@ame.g4s.com', 'APAC', NULL, NULL, 'Regional-HRM', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:41:45.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(38, 'Paula Rodriguez', 'paula.rodriguez@latam.g4s.com', 'LATAM', NULL, NULL, 'Regional-HRD', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:42:36.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(39, 'Michael Rodriguez', 'michael.rodriguez@latam.g4s.com', 'LATAM', NULL, NULL, 'Regional-HRM', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:43:10.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(40, 'Lidy Vanhout', 'lidy.vanhout@nl.g4s.com', 'Europe', NULL, NULL, 'Regional-HRD', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:43:51.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(41, 'Zahra Anjum', 'zahra.anjum@at.g4s.com', 'Europe', NULL, NULL, 'Regional-HRM', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:44:22.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(42, 'stephanie wyatt', 'stephanie.wyatt@g4s.com', 'All', NULL, NULL, 'Group CEO', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:45:11.000000', NULL, '2024-06-19 14:42:48.950875'),
(43, 'Nick Tsimogiannis', 'nick.tsimogiannis@g4s.com', 'All', NULL, NULL, 'Group CEO', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:54:50.000000', NULL, '2024-06-19 14:42:48.950875'),
(44, 'Amit Varma', 'amit.varma@g4s.com', 'All', NULL, NULL, 'Group-CFO', 'Write', 1, 'amit.varma@g4s.com', '2024-02-01 03:54:23.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(45, 'Jason Dendrijver', 'jason.dendrijver@eu.g4s.com', 'APAC', NULL, NULL, 'Regional HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:40:04.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(46, 'Jason Dendrijver', 'jason.dendrijver@eu.g4s.com', 'LATAM', NULL, NULL, 'Regional HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:40:04.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(47, 'Jason Dendrijver', 'jason.dendrijver@eu.g4s.com', 'Europe', NULL, NULL, 'Regional HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-01-30 13:40:04.000000', 'adminworkflow@in.g4s.com', '2024-06-19 14:42:48.950875'),
(48, 'Paul Banks', 'paul.banks@g4s.com', 'All', NULL, NULL, 'Country CEO', 'Read', 1, 'amit.varma@g4s.com', '2024-02-01 12:03:28.000000', NULL, '2024-06-19 14:42:48.950875'),
(49, 'Robot RPA', 'robot.bravo@almajalg4s.com', 'All', NULL, NULL, 'Country HR', 'Write', 1, 'amit.varma@g4s.com', '2024-02-05 03:27:51.000000', NULL, '2024-06-19 14:42:48.950875'),
(50, 'Ben Wilshire', 'ben.wilshire.external@g4s.com', 'All', NULL, NULL, 'Regional CEO', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-03-21 09:08:02.000000', NULL, '2024-06-19 14:42:48.950875'),
(51, 'Pankaj Singh', 'pankaj.singh@ame.g4s.com', 'APAC', NULL, NULL, 'Group CFO', 'Write', 1, 'pankaj.singh@ame.g4s.com', '2024-04-26 08:55:25.000000', NULL, '2024-06-19 14:42:48.950875'),
(52, 'bhoopendra', 'bhoopendra.pal@extranet.g4s.com', 'All', NULL, NULL, 'Country-CFO', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-05-23 16:36:42.000000', NULL, '2024-06-19 14:42:48.950875'),
(53, 'test', 'test@g4s.com', 'APAC', NULL, NULL, 'Country HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2023-12-15 11:34:59.000000', NULL, '2024-06-19 14:42:48.950875'),
(54, 'sarah', 'sarah.gualtieri@g4s.com', 'All', NULL, NULL, 'Group CFO', 'Write', 1, 'sarah.gualtieri@g4s.com', '2023-12-15 11:11:10.000000', 'sarah.gualtieri@g4s.com', '2024-06-19 14:42:48.950875'),
(55, 'Rahul', 'rahulwebakarniya@gmail.com', 'all', '', '', 'Regional CFO', 'Read', 1, 'adminworkflow@in.g4s.com', '2024-06-19 14:46:45.610618', 'adminworkflow@in.g4s.com', '2024-07-01 16:46:00.024168'),
(56, 'Ankit', 'ankit.sharma@cinntra.com', 'AME', '', '', 'Group-HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-06-19 16:13:19.225883', 'adminworkflow@in.g4s.com', '2024-06-19 16:13:19.225914'),
(57, 'Bhupendra', 'bhupendra.pal@cinntra.com', 'APAC', '', '', 'Group-HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-06-19 17:38:21.840707', 'adminworkflow@in.g4s.com', '2024-06-20 16:07:18.782900'),
(58, 'Bhoopendra Pal', 'bhoopendra.pal@cinntra.com', 'APAC', '', '', 'Group-HR', 'Read', 1, 'adminworkflow@in.g4s.com', '2024-06-19 19:30:28.552213', 'adminworkflow@in.g4s.com', '2024-06-20 16:00:48.391267'),
(59, 'Harsh', 'harsh.gupta@cinntra.com', 'AME', '', '', 'Group-CFO', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-06-20 11:15:29.091163', 'adminworkflow@in.g4s.com', '2024-06-20 18:02:29.305695'),
(60, 'Nipun', 'nipun.dixit@cinntra.com', 'all', '', '', 'Country-HR', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-07-01 10:41:04.844912', 'adminworkflow@in.g4s.com', '2024-07-01 10:41:04.844946'),
(61, 'Bhupendra', 'akad.singh@g4s.com', 'all', '', '', 'Group-CEO', 'Write', 1, 'adminworkflow@in.g4s.com', '2024-07-01 10:43:36.218686', 'adminworkflow@in.g4s.com', '2024-07-01 16:32:04.238777');

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
-- Indexes for table `master_employee_history`
--
ALTER TABLE `master_employee_history`
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
-- Indexes for table `master_position_action_approvel_request`
--
ALTER TABLE `master_position_action_approvel_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_position_history`
--
ALTER TABLE `master_position_history`
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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `master_annual_summary`
--
ALTER TABLE `master_annual_summary`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `master_audit_history`
--
ALTER TABLE `master_audit_history`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_country`
--
ALTER TABLE `master_country`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `master_delta_monthly`
--
ALTER TABLE `master_delta_monthly`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_drop_down`
--
ALTER TABLE `master_drop_down`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `master_employee_history`
--
ALTER TABLE `master_employee_history`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `master_monthly_summary`
--
ALTER TABLE `master_monthly_summary`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `master_position`
--
ALTER TABLE `master_position`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `master_position_action_approvel_request`
--
ALTER TABLE `master_position_action_approvel_request`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_position_history`
--
ALTER TABLE `master_position_history`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `master_position_other_pay`
--
ALTER TABLE `master_position_other_pay`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `master_position_workflow`
--
ALTER TABLE `master_position_workflow`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `master_static_drop_down`
--
ALTER TABLE `master_static_drop_down`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_yearly_baseline`
--
ALTER TABLE `master_yearly_baseline`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `smtp_smtp`
--
ALTER TABLE `smtp_smtp`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_assigned_country`
--
ALTER TABLE `users_assigned_country`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3599;

--
-- AUTO_INCREMENT for table `users_users`
--
ALTER TABLE `users_users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

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
