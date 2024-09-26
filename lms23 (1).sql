-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 06:05 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms23`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_main`
--

CREATE TABLE `admin_main` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_main`
--

INSERT INTO `admin_main` (`id`, `name`, `url`) VALUES
(1, 'Classes', '/'),
(2, 'Teachers', '/'),
(3, 'Students', '/'),
(4, 'Total Students', '/');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add admin hod', 7, 'add_adminhod'),
(26, 'Can change admin hod', 7, 'change_adminhod'),
(27, 'Can delete admin hod', 7, 'delete_adminhod'),
(28, 'Can view admin hod', 7, 'view_adminhod'),
(29, 'Can add teachers', 8, 'add_teachers'),
(30, 'Can change teachers', 8, 'change_teachers'),
(31, 'Can delete teachers', 8, 'delete_teachers'),
(32, 'Can view teachers', 8, 'view_teachers'),
(33, 'Can add schools', 9, 'add_schools'),
(34, 'Can change schools', 9, 'change_schools'),
(35, 'Can delete schools', 9, 'delete_schools'),
(36, 'Can view schools', 9, 'view_schools'),
(37, 'Can add home nav', 10, 'add_homenav'),
(38, 'Can change home nav', 10, 'change_homenav'),
(39, 'Can delete home nav', 10, 'delete_homenav'),
(40, 'Can view home nav', 10, 'view_homenav'),
(41, 'Can add menu item', 11, 'add_menuitem'),
(42, 'Can change menu item', 11, 'change_menuitem'),
(43, 'Can delete menu item', 11, 'delete_menuitem'),
(44, 'Can view menu item', 11, 'view_menuitem'),
(45, 'Can add students', 12, 'add_students'),
(46, 'Can change students', 12, 'change_students'),
(47, 'Can delete students', 12, 'delete_students'),
(48, 'Can view students', 12, 'view_students'),
(49, 'Can add student', 13, 'add_student'),
(50, 'Can change student', 13, 'change_student'),
(51, 'Can delete student', 13, 'delete_student'),
(52, 'Can view student', 13, 'view_student'),
(53, 'Can add lms', 14, 'add_lms'),
(54, 'Can change lms', 14, 'change_lms'),
(55, 'Can delete lms', 14, 'delete_lms'),
(56, 'Can view lms', 14, 'view_lms'),
(57, 'Can add course', 15, 'add_course'),
(58, 'Can change course', 15, 'change_course'),
(59, 'Can delete course', 15, 'delete_course'),
(60, 'Can view course', 15, 'view_course'),
(61, 'Can add subject', 16, 'add_subject'),
(62, 'Can change subject', 16, 'change_subject'),
(63, 'Can delete subject', 16, 'delete_subject'),
(64, 'Can view subject', 16, 'view_subject'),
(65, 'Can add teachersidebar', 17, 'add_teachersidebar'),
(66, 'Can change teachersidebar', 17, 'change_teachersidebar'),
(67, 'Can delete teachersidebar', 17, 'delete_teachersidebar'),
(68, 'Can view teachersidebar', 17, 'view_teachersidebar'),
(69, 'Can add uploaded file', 18, 'add_uploadedfile'),
(70, 'Can change uploaded file', 18, 'change_uploadedfile'),
(71, 'Can delete uploaded file', 18, 'delete_uploadedfile'),
(72, 'Can view uploaded file', 18, 'view_uploadedfile'),
(73, 'Can add admindrop', 19, 'add_admindrop'),
(74, 'Can change admindrop', 19, 'change_admindrop'),
(75, 'Can delete admindrop', 19, 'delete_admindrop'),
(76, 'Can view admindrop', 19, 'view_admindrop'),
(77, 'Can add topics', 20, 'add_topics'),
(78, 'Can change topics', 20, 'change_topics'),
(79, 'Can delete topics', 20, 'delete_topics'),
(80, 'Can view topics', 20, 'view_topics'),
(81, 'Can add stdclass1', 21, 'add_stdclass1'),
(82, 'Can change stdclass1', 21, 'change_stdclass1'),
(83, 'Can delete stdclass1', 21, 'delete_stdclass1'),
(84, 'Can view stdclass1', 21, 'view_stdclass1'),
(85, 'Can add logo', 22, 'add_logo'),
(86, 'Can change logo', 22, 'change_logo'),
(87, 'Can delete logo', 22, 'delete_logo'),
(88, 'Can view logo', 22, 'view_logo'),
(89, 'Can add t_table', 23, 'add_t_table'),
(90, 'Can change t_table', 23, 'change_t_table'),
(91, 'Can delete t_table', 23, 'delete_t_table'),
(92, 'Can view t_table', 23, 'view_t_table'),
(93, 'Can add studentnav', 24, 'add_studentnav'),
(94, 'Can change studentnav', 24, 'change_studentnav'),
(95, 'Can delete studentnav', 24, 'delete_studentnav'),
(96, 'Can view studentnav', 24, 'view_studentnav'),
(97, 'Can add applogo', 25, 'add_applogo'),
(98, 'Can change applogo', 25, 'change_applogo'),
(99, 'Can delete applogo', 25, 'delete_applogo'),
(100, 'Can view applogo', 25, 'view_applogo'),
(101, 'Can add examcards', 26, 'add_examcards'),
(102, 'Can change examcards', 26, 'change_examcards'),
(103, 'Can delete examcards', 26, 'delete_examcards'),
(104, 'Can view examcards', 26, 'view_examcards'),
(105, 'Can add examcarl', 27, 'add_examcarl'),
(106, 'Can change examcarl', 27, 'change_examcarl'),
(107, 'Can delete examcarl', 27, 'delete_examcarl'),
(108, 'Can view examcarl', 27, 'view_examcarl'),
(109, 'Can add examcont', 28, 'add_examcont'),
(110, 'Can change examcont', 28, 'change_examcont'),
(111, 'Can delete examcont', 28, 'delete_examcont'),
(112, 'Can view examcont', 28, 'view_examcont'),
(113, 'Can add stdclass', 29, 'add_stdclass'),
(114, 'Can change stdclass', 29, 'change_stdclass'),
(115, 'Can delete stdclass', 29, 'delete_stdclass'),
(116, 'Can view stdclass', 29, 'view_stdclass'),
(117, 'Can add cardfee', 30, 'add_cardfee'),
(118, 'Can change cardfee', 30, 'change_cardfee'),
(119, 'Can delete cardfee', 30, 'delete_cardfee'),
(120, 'Can view cardfee', 30, 'view_cardfee'),
(121, 'Can add crfee', 31, 'add_crfee'),
(122, 'Can change crfee', 31, 'change_crfee'),
(123, 'Can delete crfee', 31, 'delete_crfee'),
(124, 'Can view crfee', 31, 'view_crfee'),
(125, 'Can add fee', 32, 'add_fee'),
(126, 'Can change fee', 32, 'change_fee'),
(127, 'Can delete fee', 32, 'delete_fee'),
(128, 'Can view fee', 32, 'view_fee'),
(129, 'Can add staff', 33, 'add_staff'),
(130, 'Can change staff', 33, 'change_staff'),
(131, 'Can delete staff', 33, 'delete_staff'),
(132, 'Can view staff', 33, 'view_staff'),
(133, 'Can add staff_fea', 34, 'add_staff_fea'),
(134, 'Can change staff_fea', 34, 'change_staff_fea'),
(135, 'Can delete staff_fea', 34, 'delete_staff_fea'),
(136, 'Can view staff_fea', 34, 'view_staff_fea'),
(137, 'Can add staff_imp', 35, 'add_staff_imp'),
(138, 'Can change staff_imp', 35, 'change_staff_imp'),
(139, 'Can delete staff_imp', 35, 'delete_staff_imp'),
(140, 'Can view staff_imp', 35, 'view_staff_imp'),
(141, 'Can add staff_prob', 36, 'add_staff_prob'),
(142, 'Can change staff_prob', 36, 'change_staff_prob'),
(143, 'Can delete staff_prob', 36, 'delete_staff_prob'),
(144, 'Can view staff_prob', 36, 'view_staff_prob'),
(145, 'Can add attendmanagecards', 37, 'add_attendmanagecards'),
(146, 'Can change attendmanagecards', 37, 'change_attendmanagecards'),
(147, 'Can delete attendmanagecards', 37, 'delete_attendmanagecards'),
(148, 'Can view attendmanagecards', 37, 'view_attendmanagecards'),
(149, 'Can add attendmanagecarousel', 38, 'add_attendmanagecarousel'),
(150, 'Can change attendmanagecarousel', 38, 'change_attendmanagecarousel'),
(151, 'Can delete attendmanagecarousel', 38, 'delete_attendmanagecarousel'),
(152, 'Can view attendmanagecarousel', 38, 'view_attendmanagecarousel'),
(153, 'Can add attendmanagecontent', 39, 'add_attendmanagecontent'),
(154, 'Can change attendmanagecontent', 39, 'change_attendmanagecontent'),
(155, 'Can delete attendmanagecontent', 39, 'delete_attendmanagecontent'),
(156, 'Can view attendmanagecontent', 39, 'view_attendmanagecontent'),
(157, 'Can add cardpaymentfeatures', 40, 'add_cardpaymentfeatures'),
(158, 'Can change cardpaymentfeatures', 40, 'change_cardpaymentfeatures'),
(159, 'Can delete cardpaymentfeatures', 40, 'delete_cardpaymentfeatures'),
(160, 'Can view cardpaymentfeatures', 40, 'view_cardpaymentfeatures'),
(161, 'Can add crpaymentfeatures', 41, 'add_crpaymentfeatures'),
(162, 'Can change crpaymentfeatures', 41, 'change_crpaymentfeatures'),
(163, 'Can delete crpaymentfeatures', 41, 'delete_crpaymentfeatures'),
(164, 'Can view crpaymentfeatures', 41, 'view_crpaymentfeatures'),
(165, 'Can add paymentfeatures', 42, 'add_paymentfeatures'),
(166, 'Can change paymentfeatures', 42, 'change_paymentfeatures'),
(167, 'Can delete paymentfeatures', 42, 'delete_paymentfeatures'),
(168, 'Can view paymentfeatures', 42, 'view_paymentfeatures'),
(169, 'Can add admissioncards', 43, 'add_admissioncards'),
(170, 'Can change admissioncards', 43, 'change_admissioncards'),
(171, 'Can delete admissioncards', 43, 'delete_admissioncards'),
(172, 'Can view admissioncards', 43, 'view_admissioncards'),
(173, 'Can add admissioncarl', 44, 'add_admissioncarl'),
(174, 'Can change admissioncarl', 44, 'change_admissioncarl'),
(175, 'Can delete admissioncarl', 44, 'delete_admissioncarl'),
(176, 'Can view admissioncarl', 44, 'view_admissioncarl'),
(177, 'Can add admissioncont', 45, 'add_admissioncont'),
(178, 'Can change admissioncont', 45, 'change_admissioncont'),
(179, 'Can delete admissioncont', 45, 'delete_admissioncont'),
(180, 'Can view admissioncont', 45, 'view_admissioncont'),
(181, 'Can add contact info', 46, 'add_contactinfo'),
(182, 'Can change contact info', 46, 'change_contactinfo'),
(183, 'Can delete contact info', 46, 'delete_contactinfo'),
(184, 'Can view contact info', 46, 'view_contactinfo'),
(185, 'Can add contact info2', 47, 'add_contactinfo2'),
(186, 'Can change contact info2', 47, 'change_contactinfo2'),
(187, 'Can delete contact info2', 47, 'delete_contactinfo2'),
(188, 'Can view contact info2', 47, 'view_contactinfo2'),
(189, 'Can add contact message', 48, 'add_contactmessage'),
(190, 'Can change contact message', 48, 'change_contactmessage'),
(191, 'Can delete contact message', 48, 'delete_contactmessage'),
(192, 'Can view contact message', 48, 'view_contactmessage'),
(193, 'Can add footer link', 49, 'add_footerlink'),
(194, 'Can change footer link', 49, 'change_footerlink'),
(195, 'Can delete footer link', 49, 'delete_footerlink'),
(196, 'Can view footer link', 49, 'view_footerlink'),
(197, 'Can add footer service', 50, 'add_footerservice'),
(198, 'Can change footer service', 50, 'change_footerservice'),
(199, 'Can delete footer service', 50, 'delete_footerservice'),
(200, 'Can view footer service', 50, 'view_footerservice'),
(201, 'Can add social link', 51, 'add_sociallink'),
(202, 'Can change social link', 51, 'change_sociallink'),
(203, 'Can delete social link', 51, 'delete_sociallink'),
(204, 'Can view social link', 51, 'view_sociallink'),
(205, 'Can add liveclasscards', 52, 'add_liveclasscards'),
(206, 'Can change liveclasscards', 52, 'change_liveclasscards'),
(207, 'Can delete liveclasscards', 52, 'delete_liveclasscards'),
(208, 'Can view liveclasscards', 52, 'view_liveclasscards'),
(209, 'Can add liveclasscarousel', 53, 'add_liveclasscarousel'),
(210, 'Can change liveclasscarousel', 53, 'change_liveclasscarousel'),
(211, 'Can delete liveclasscarousel', 53, 'delete_liveclasscarousel'),
(212, 'Can view liveclasscarousel', 53, 'view_liveclasscarousel'),
(213, 'Can add liveclasscontent', 54, 'add_liveclasscontent'),
(214, 'Can change liveclasscontent', 54, 'change_liveclasscontent'),
(215, 'Can delete liveclasscontent', 54, 'delete_liveclasscontent'),
(216, 'Can view liveclasscontent', 54, 'view_liveclasscontent'),
(217, 'Can add timetablecards', 55, 'add_timetablecards'),
(218, 'Can change timetablecards', 55, 'change_timetablecards'),
(219, 'Can delete timetablecards', 55, 'delete_timetablecards'),
(220, 'Can view timetablecards', 55, 'view_timetablecards'),
(221, 'Can add timetablecarl', 56, 'add_timetablecarl'),
(222, 'Can change timetablecarl', 56, 'change_timetablecarl'),
(223, 'Can delete timetablecarl', 56, 'delete_timetablecarl'),
(224, 'Can view timetablecarl', 56, 'view_timetablecarl'),
(225, 'Can add timetablecont', 57, 'add_timetablecont'),
(226, 'Can change timetablecont', 57, 'change_timetablecont'),
(227, 'Can delete timetablecont', 57, 'delete_timetablecont'),
(228, 'Can view timetablecont', 57, 'view_timetablecont'),
(229, 'Can add attendancemenu', 58, 'add_attendancemenu'),
(230, 'Can change attendancemenu', 58, 'change_attendancemenu'),
(231, 'Can delete attendancemenu', 58, 'delete_attendancemenu'),
(232, 'Can view attendancemenu', 58, 'view_attendancemenu'),
(233, 'Can add leavemanagement', 59, 'add_leavemanagement'),
(234, 'Can change leavemanagement', 59, 'change_leavemanagement'),
(235, 'Can delete leavemanagement', 59, 'delete_leavemanagement'),
(236, 'Can view leavemanagement', 59, 'view_leavemanagement'),
(237, 'Can add leavestype', 60, 'add_leavestype'),
(238, 'Can change leavestype', 60, 'change_leavestype'),
(239, 'Can delete leavestype', 60, 'delete_leavestype'),
(240, 'Can view leavestype', 60, 'view_leavestype'),
(241, 'Can add leave', 61, 'add_leave'),
(242, 'Can change leave', 61, 'change_leave'),
(243, 'Can delete leave', 61, 'delete_leave'),
(244, 'Can view leave', 61, 'view_leave'),
(245, 'Can add teachermenu', 62, 'add_teachermenu'),
(246, 'Can change teachermenu', 62, 'change_teachermenu'),
(247, 'Can delete teachermenu', 62, 'delete_teachermenu'),
(248, 'Can view teachermenu', 62, 'view_teachermenu'),
(249, 'Can add different_shifts', 63, 'add_different_shifts'),
(250, 'Can change different_shifts', 63, 'change_different_shifts'),
(251, 'Can delete different_shifts', 63, 'delete_different_shifts'),
(252, 'Can view different_shifts', 63, 'view_different_shifts'),
(253, 'Can add compose_message', 64, 'add_compose_message'),
(254, 'Can change compose_message', 64, 'change_compose_message'),
(255, 'Can delete compose_message', 64, 'delete_compose_message'),
(256, 'Can view compose_message', 64, 'view_compose_message'),
(257, 'Can add teacher_ shifts', 65, 'add_teacher_shifts'),
(258, 'Can change teacher_ shifts', 65, 'change_teacher_shifts'),
(259, 'Can delete teacher_ shifts', 65, 'delete_teacher_shifts'),
(260, 'Can view teacher_ shifts', 65, 'view_teacher_shifts'),
(261, 'Can add teacherattendance', 66, 'add_teacherattendance'),
(262, 'Can change teacherattendance', 66, 'change_teacherattendance'),
(263, 'Can delete teacherattendance', 66, 'delete_teacherattendance'),
(264, 'Can view teacherattendance', 66, 'view_teacherattendance'),
(265, 'Can add footer_content', 67, 'add_footer_content'),
(266, 'Can change footer_content', 67, 'change_footer_content'),
(267, 'Can delete footer_content', 67, 'delete_footer_content'),
(268, 'Can view footer_content', 67, 'view_footer_content'),
(269, 'Can add adminphoto', 68, 'add_adminphoto'),
(270, 'Can change adminphoto', 68, 'change_adminphoto'),
(271, 'Can delete adminphoto', 68, 'delete_adminphoto'),
(272, 'Can view adminphoto', 68, 'view_adminphoto'),
(273, 'Can add admin_main', 69, 'add_admin_main'),
(274, 'Can change admin_main', 69, 'change_admin_main'),
(275, 'Can delete admin_main', 69, 'delete_admin_main'),
(276, 'Can view admin_main', 69, 'view_admin_main'),
(277, 'Can add carditems', 70, 'add_carditems'),
(278, 'Can change carditems', 70, 'change_carditems'),
(279, 'Can delete carditems', 70, 'delete_carditems'),
(280, 'Can view carditems', 70, 'view_carditems'),
(281, 'Can add carousel_img', 71, 'add_carousel_img'),
(282, 'Can change carousel_img', 71, 'change_carousel_img'),
(283, 'Can delete carousel_img', 71, 'delete_carousel_img'),
(284, 'Can view carousel_img', 71, 'view_carousel_img'),
(285, 'Can add content_image', 72, 'add_content_image'),
(286, 'Can change content_image', 72, 'change_content_image'),
(287, 'Can delete content_image', 72, 'delete_content_image'),
(288, 'Can view content_image', 72, 'view_content_image'),
(289, 'Can add card', 73, 'add_card'),
(290, 'Can change card', 73, 'change_card'),
(291, 'Can delete card', 73, 'delete_card'),
(292, 'Can view card', 73, 'view_card'),
(293, 'Can add cimage', 74, 'add_cimage'),
(294, 'Can change cimage', 74, 'change_cimage'),
(295, 'Can delete cimage', 74, 'delete_cimage'),
(296, 'Can view cimage', 74, 'view_cimage'),
(297, 'Can add library', 75, 'add_library'),
(298, 'Can change library', 75, 'change_library'),
(299, 'Can delete library', 75, 'delete_library'),
(300, 'Can view library', 75, 'view_library'),
(301, 'Can add cls_name', 76, 'add_cls_name'),
(302, 'Can change cls_name', 76, 'change_cls_name'),
(303, 'Can delete cls_name', 76, 'delete_cls_name'),
(304, 'Can view cls_name', 76, 'view_cls_name'),
(305, 'Can add teacher_ class_sub', 77, 'add_teacher_class_sub'),
(306, 'Can change teacher_ class_sub', 77, 'change_teacher_class_sub'),
(307, 'Can delete teacher_ class_sub', 77, 'delete_teacher_class_sub'),
(308, 'Can view teacher_ class_sub', 77, 'view_teacher_class_sub'),
(309, 'Can add cards', 78, 'add_cards'),
(310, 'Can change cards', 78, 'change_cards'),
(311, 'Can delete cards', 78, 'delete_cards'),
(312, 'Can view cards', 78, 'view_cards'),
(313, 'Can add timage', 79, 'add_timage'),
(314, 'Can change timage', 79, 'change_timage'),
(315, 'Can delete timage', 79, 'delete_timage'),
(316, 'Can view timage', 79, 'view_timage'),
(317, 'Can add time', 80, 'add_time'),
(318, 'Can change time', 80, 'change_time'),
(319, 'Can delete time', 80, 'delete_time'),
(320, 'Can view time', 80, 'view_time'),
(321, 'Can add excel', 81, 'add_excel'),
(322, 'Can change excel', 81, 'change_excel'),
(323, 'Can delete excel', 81, 'delete_excel'),
(324, 'Can view excel', 81, 'view_excel'),
(325, 'Can add instruction_headings', 82, 'add_instruction_headings'),
(326, 'Can change instruction_headings', 82, 'change_instruction_headings'),
(327, 'Can delete instruction_headings', 82, 'delete_instruction_headings'),
(328, 'Can view instruction_headings', 82, 'view_instruction_headings'),
(329, 'Can add instructions11', 83, 'add_instructions11'),
(330, 'Can change instructions11', 83, 'change_instructions11'),
(331, 'Can delete instructions11', 83, 'delete_instructions11'),
(332, 'Can view instructions11', 83, 'view_instructions11'),
(333, 'Can add std_result', 84, 'add_std_result'),
(334, 'Can change std_result', 84, 'change_std_result'),
(335, 'Can delete std_result', 84, 'delete_std_result'),
(336, 'Can view std_result', 84, 'view_std_result'),
(337, 'Can add quiz_questions', 85, 'add_quiz_questions'),
(338, 'Can change quiz_questions', 85, 'change_quiz_questions'),
(339, 'Can delete quiz_questions', 85, 'delete_quiz_questions'),
(340, 'Can view quiz_questions', 85, 'view_quiz_questions'),
(341, 'Can add set_timer', 86, 'add_set_timer'),
(342, 'Can change set_timer', 86, 'change_set_timer'),
(343, 'Can delete set_timer', 86, 'delete_set_timer'),
(344, 'Can view set_timer', 86, 'view_set_timer'),
(345, 'Can add my model', 87, 'add_mymodel'),
(346, 'Can change my model', 87, 'change_mymodel'),
(347, 'Can delete my model', 87, 'delete_mymodel'),
(348, 'Can view my model', 87, 'view_mymodel'),
(349, 'Can add text', 88, 'add_text'),
(350, 'Can change text', 88, 'change_text'),
(351, 'Can delete text', 88, 'delete_text'),
(352, 'Can view text', 88, 'view_text'),
(353, 'Can add meeting', 89, 'add_meeting'),
(354, 'Can change meeting', 89, 'change_meeting'),
(355, 'Can delete meeting', 89, 'delete_meeting'),
(356, 'Can view meeting', 89, 'view_meeting'),
(357, 'Can add o auth credentials', 90, 'add_oauthcredentials'),
(358, 'Can change o auth credentials', 90, 'change_oauthcredentials'),
(359, 'Can delete o auth credentials', 90, 'delete_oauthcredentials'),
(360, 'Can view o auth credentials', 90, 'view_oauthcredentials'),
(361, 'Can add meet link', 91, 'add_meetlink'),
(362, 'Can change meet link', 91, 'change_meetlink'),
(363, 'Can delete meet link', 91, 'delete_meetlink'),
(364, 'Can view meet link', 91, 'view_meetlink'),
(365, 'Can add zoom meeting', 92, 'add_zoommeeting'),
(366, 'Can change zoom meeting', 92, 'change_zoommeeting'),
(367, 'Can delete zoom meeting', 92, 'delete_zoommeeting'),
(368, 'Can view zoom meeting', 92, 'view_zoommeeting'),
(369, 'Can add fee_payment', 93, 'add_fee_payment'),
(370, 'Can change fee_payment', 93, 'change_fee_payment'),
(371, 'Can delete fee_payment', 93, 'delete_fee_payment'),
(372, 'Can view fee_payment', 93, 'view_fee_payment'),
(373, 'Can add pricing_head', 94, 'add_pricing_head'),
(374, 'Can change pricing_head', 94, 'change_pricing_head'),
(375, 'Can delete pricing_head', 94, 'delete_pricing_head'),
(376, 'Can view pricing_head', 94, 'view_pricing_head'),
(377, 'Can add pricing_body', 95, 'add_pricing_body'),
(378, 'Can change pricing_body', 95, 'change_pricing_body'),
(379, 'Can delete pricing_body', 95, 'delete_pricing_body'),
(380, 'Can view pricing_body', 95, 'view_pricing_body'),
(381, 'Can add plans', 96, 'add_plans'),
(382, 'Can change plans', 96, 'change_plans'),
(383, 'Can delete plans', 96, 'delete_plans'),
(384, 'Can view plans', 96, 'view_plans'),
(385, 'Can add plans1', 97, 'add_plans1'),
(386, 'Can change plans1', 97, 'change_plans1'),
(387, 'Can delete plans1', 97, 'delete_plans1'),
(388, 'Can view plans1', 97, 'view_plans1'),
(389, 'Can add plans2', 98, 'add_plans2'),
(390, 'Can change plans2', 98, 'change_plans2'),
(391, 'Can delete plans2', 98, 'delete_plans2'),
(392, 'Can view plans2', 98, 'view_plans2'),
(393, 'Can add hero', 99, 'add_hero'),
(394, 'Can change hero', 99, 'change_hero'),
(395, 'Can delete hero', 99, 'delete_hero'),
(396, 'Can view hero', 99, 'view_hero'),
(397, 'Can add service', 100, 'add_service'),
(398, 'Can change service', 100, 'change_service'),
(399, 'Can delete service', 100, 'delete_service'),
(400, 'Can view service', 100, 'view_service'),
(401, 'Can add pricing plan', 101, 'add_pricingplan'),
(402, 'Can change pricing plan', 101, 'change_pricingplan'),
(403, 'Can delete pricing plan', 101, 'delete_pricingplan'),
(404, 'Can view pricing plan', 101, 'view_pricingplan'),
(405, 'Can add feature', 102, 'add_feature'),
(406, 'Can change feature', 102, 'change_feature'),
(407, 'Can delete feature', 102, 'delete_feature'),
(408, 'Can view feature', 102, 'view_feature'),
(409, 'Can add my pricing plan', 103, 'add_mypricingplan'),
(410, 'Can change my pricing plan', 103, 'change_mypricingplan'),
(411, 'Can delete my pricing plan', 103, 'delete_mypricingplan'),
(412, 'Can view my pricing plan', 103, 'view_mypricingplan'),
(413, 'Can add shift_names', 104, 'add_shift_names'),
(414, 'Can change shift_names', 104, 'change_shift_names'),
(415, 'Can delete shift_names', 104, 'delete_shift_names'),
(416, 'Can view shift_names', 104, 'view_shift_names'),
(417, 'Can add employee login logout', 105, 'add_employeeloginlogout'),
(418, 'Can change employee login logout', 105, 'change_employeeloginlogout'),
(419, 'Can delete employee login logout', 105, 'delete_employeeloginlogout'),
(420, 'Can view employee login logout', 105, 'view_employeeloginlogout'),
(421, 'Can add class', 106, 'add_class'),
(422, 'Can change class', 106, 'change_class'),
(423, 'Can delete class', 106, 'delete_class'),
(424, 'Can view class', 106, 'view_class'),
(425, 'Can add razorpay payment', 107, 'add_razorpaypayment'),
(426, 'Can change razorpay payment', 107, 'change_razorpaypayment'),
(427, 'Can delete razorpay payment', 107, 'delete_razorpaypayment'),
(428, 'Can view razorpay payment', 107, 'view_razorpaypayment'),
(429, 'Can add payment_form', 108, 'add_payment_form'),
(430, 'Can change payment_form', 108, 'change_payment_form'),
(431, 'Can delete payment_form', 108, 'delete_payment_form'),
(432, 'Can view payment_form', 108, 'view_payment_form'),
(433, 'Can add meeting1', 109, 'add_meeting1'),
(434, 'Can change meeting1', 109, 'change_meeting1'),
(435, 'Can delete meeting1', 109, 'delete_meeting1'),
(436, 'Can view meeting1', 109, 'view_meeting1'),
(437, 'Can add event', 110, 'add_event'),
(438, 'Can change event', 110, 'change_event'),
(439, 'Can delete event', 110, 'delete_event'),
(440, 'Can view event', 110, 'view_event'),
(441, 'Can add attendance record', 111, 'add_attendancerecord'),
(442, 'Can change attendance record', 111, 'change_attendancerecord'),
(443, 'Can delete attendance record', 111, 'delete_attendancerecord'),
(444, 'Can view attendance record', 111, 'view_attendancerecord'),
(445, 'Can add latest course', 112, 'add_latestcourse'),
(446, 'Can change latest course', 112, 'change_latestcourse'),
(447, 'Can delete latest course', 112, 'delete_latestcourse'),
(448, 'Can view latest course', 112, 'view_latestcourse'),
(449, 'Can add monthly attendance summary', 113, 'add_monthlyattendancesummary'),
(450, 'Can change monthly attendance summary', 113, 'change_monthlyattendancesummary'),
(451, 'Can delete monthly attendance summary', 113, 'delete_monthlyattendancesummary'),
(452, 'Can view monthly attendance summary', 113, 'view_monthlyattendancesummary'),
(453, 'Can add notification', 114, 'add_notification'),
(454, 'Can change notification', 114, 'change_notification'),
(455, 'Can delete notification', 114, 'delete_notification'),
(456, 'Can view notification', 114, 'view_notification'),
(457, 'Can add late login request', 115, 'add_lateloginrequest'),
(458, 'Can change late login request', 115, 'change_lateloginrequest'),
(459, 'Can delete late login request', 115, 'delete_lateloginrequest'),
(460, 'Can view late login request', 115, 'view_lateloginrequest');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-02-02 15:43:54.721591', '1', 'Home', 1, '[{\"added\": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(19, 'learning', 'admindrop'),
(7, 'learning', 'adminhod'),
(68, 'learning', 'adminphoto'),
(69, 'learning', 'admin_main'),
(43, 'learning', 'admissioncards'),
(44, 'learning', 'admissioncarl'),
(45, 'learning', 'admissioncont'),
(25, 'learning', 'applogo'),
(58, 'learning', 'attendancemenu'),
(111, 'learning', 'attendancerecord'),
(37, 'learning', 'attendmanagecards'),
(38, 'learning', 'attendmanagecarousel'),
(39, 'learning', 'attendmanagecontent'),
(73, 'learning', 'card'),
(30, 'learning', 'cardfee'),
(70, 'learning', 'carditems'),
(40, 'learning', 'cardpaymentfeatures'),
(78, 'learning', 'cards'),
(71, 'learning', 'carousel_img'),
(74, 'learning', 'cimage'),
(106, 'learning', 'class'),
(76, 'learning', 'cls_name'),
(64, 'learning', 'compose_message'),
(46, 'learning', 'contactinfo'),
(47, 'learning', 'contactinfo2'),
(48, 'learning', 'contactmessage'),
(72, 'learning', 'content_image'),
(15, 'learning', 'course'),
(31, 'learning', 'crfee'),
(41, 'learning', 'crpaymentfeatures'),
(6, 'learning', 'customuser'),
(63, 'learning', 'different_shifts'),
(105, 'learning', 'employeeloginlogout'),
(110, 'learning', 'event'),
(26, 'learning', 'examcards'),
(27, 'learning', 'examcarl'),
(28, 'learning', 'examcont'),
(81, 'learning', 'excel'),
(102, 'learning', 'feature'),
(32, 'learning', 'fee'),
(93, 'learning', 'fee_payment'),
(49, 'learning', 'footerlink'),
(50, 'learning', 'footerservice'),
(67, 'learning', 'footer_content'),
(99, 'learning', 'hero'),
(10, 'learning', 'homenav'),
(83, 'learning', 'instructions11'),
(82, 'learning', 'instruction_headings'),
(115, 'learning', 'lateloginrequest'),
(112, 'learning', 'latestcourse'),
(61, 'learning', 'leave'),
(59, 'learning', 'leavemanagement'),
(60, 'learning', 'leavestype'),
(75, 'learning', 'library'),
(52, 'learning', 'liveclasscards'),
(53, 'learning', 'liveclasscarousel'),
(54, 'learning', 'liveclasscontent'),
(14, 'learning', 'lms'),
(22, 'learning', 'logo'),
(89, 'learning', 'meeting'),
(109, 'learning', 'meeting1'),
(91, 'learning', 'meetlink'),
(11, 'learning', 'menuitem'),
(113, 'learning', 'monthlyattendancesummary'),
(87, 'learning', 'mymodel'),
(103, 'learning', 'mypricingplan'),
(114, 'learning', 'notification'),
(90, 'learning', 'oauthcredentials'),
(42, 'learning', 'paymentfeatures'),
(108, 'learning', 'payment_form'),
(96, 'learning', 'plans'),
(97, 'learning', 'plans1'),
(98, 'learning', 'plans2'),
(101, 'learning', 'pricingplan'),
(95, 'learning', 'pricing_body'),
(94, 'learning', 'pricing_head'),
(85, 'learning', 'quiz_questions'),
(107, 'learning', 'razorpaypayment'),
(9, 'learning', 'schools'),
(100, 'learning', 'service'),
(86, 'learning', 'set_timer'),
(104, 'learning', 'shift_names'),
(51, 'learning', 'sociallink'),
(33, 'learning', 'staff'),
(34, 'learning', 'staff_fea'),
(35, 'learning', 'staff_imp'),
(36, 'learning', 'staff_prob'),
(29, 'learning', 'stdclass'),
(21, 'learning', 'stdclass1'),
(84, 'learning', 'std_result'),
(13, 'learning', 'student'),
(24, 'learning', 'studentnav'),
(12, 'learning', 'students'),
(16, 'learning', 'subject'),
(66, 'learning', 'teacherattendance'),
(62, 'learning', 'teachermenu'),
(8, 'learning', 'teachers'),
(17, 'learning', 'teachersidebar'),
(77, 'learning', 'teacher_class_sub'),
(65, 'learning', 'teacher_shifts'),
(88, 'learning', 'text'),
(79, 'learning', 'timage'),
(80, 'learning', 'time'),
(55, 'learning', 'timetablecards'),
(56, 'learning', 'timetablecarl'),
(57, 'learning', 'timetablecont'),
(20, 'learning', 'topics'),
(23, 'learning', 't_table'),
(18, 'learning', 'uploadedfile'),
(92, 'learning', 'zoommeeting'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-02-02 15:40:59.883693'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-02-02 15:41:00.223485'),
(3, 'auth', '0001_initial', '2024-02-02 15:41:01.229863'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-02-02 15:41:01.403757'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-02-02 15:41:01.415749'),
(6, 'auth', '0004_alter_user_username_opts', '2024-02-02 15:41:01.426743'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-02-02 15:41:01.436735'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-02-02 15:41:01.457723'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-02-02 15:41:01.471714'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-02-02 15:41:01.495699'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-02-02 15:41:01.506694'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-02-02 15:41:01.524682'),
(13, 'auth', '0011_update_proxy_permissions', '2024-02-02 15:41:01.539672'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-02-02 15:41:01.550667'),
(15, 'learning', '0001_initial', '2024-02-02 15:41:03.265606'),
(16, 'admin', '0001_initial', '2024-02-02 15:41:03.434503'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-02-02 15:41:03.459496'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-02 15:41:03.481475'),
(19, 'learning', '0002_delete_ad_salary_delete_adminemploy_delete_adminnav_and_more', '2024-02-02 15:41:07.686334'),
(20, 'learning', '0003_teachers_schools_homenav', '2024-02-02 15:41:08.094083'),
(21, 'learning', '0004_remove_schools_admin', '2024-02-02 15:41:08.645744'),
(22, 'learning', '0005_menuitem', '2024-02-02 15:41:08.675724'),
(23, 'learning', '0006_remove_menuitem_order', '2024-02-02 15:41:08.686717'),
(24, 'learning', '0007_menuitem_icon_menuitem_parent_category', '2024-02-02 15:41:08.776662'),
(25, 'learning', '0008_dashboard', '2024-02-02 15:41:08.812639'),
(26, 'learning', '0009_delete_dashboard', '2024-02-02 15:41:08.823633'),
(27, 'learning', '0010_student', '2024-02-02 15:41:08.867606'),
(28, 'learning', '0011_delete_student', '2024-02-02 15:41:08.879600'),
(29, 'learning', '0012_student_alter_customuser_email_and_more', '2024-02-02 15:41:08.951554'),
(30, 'learning', '0013_delete_student_alter_customuser_email_and_more', '2024-02-02 15:41:09.422265'),
(31, 'learning', '0014_student_alter_customuser_email_and_more', '2024-02-02 15:41:09.614146'),
(32, 'learning', '0015_delete_students', '2024-02-02 15:41:09.623141'),
(33, 'learning', '0016_alter_customuser_email_alter_customuser_password', '2024-02-02 15:41:09.645126'),
(34, 'learning', '0017_rename_student_studentstable_and_more', '2024-02-02 15:41:09.678107'),
(35, 'learning', '0018_xyz', '2024-02-02 15:41:09.730073'),
(36, 'learning', '0019_students_delete_studentstable_delete_xyz_and_more', '2024-02-02 15:41:10.110840'),
(37, 'learning', '0020_student_alter_customuser_email_and_more', '2024-02-02 15:41:10.178796'),
(38, 'learning', '0021_lms', '2024-02-02 15:41:10.211777'),
(39, 'learning', '0022_course_subject_rename_strength_teachers_course1_and_more', '2024-02-02 15:41:10.812406'),
(40, 'learning', '0023_alter_teachers_dob', '2024-02-02 15:41:10.825397'),
(41, 'learning', '0024_alter_teachers_dob_teachersidebar', '2024-02-02 15:41:10.929333'),
(42, 'learning', '0025_alter_teachers_dob_uploadedfile', '2024-02-02 15:41:11.011284'),
(43, 'learning', '0026_alter_teachers_dob_admindrop', '2024-02-02 15:41:11.099231'),
(44, 'learning', '0027_topics_alter_teachers_dob', '2024-02-02 15:41:11.166190'),
(45, 'learning', '0028_delete_topics_alter_teachers_dob', '2024-02-02 15:41:11.186176'),
(46, 'learning', '0029_stdclass_alter_teachers_dob', '2024-02-02 15:41:11.237143'),
(47, 'learning', '0030_topics_alter_teachers_dob', '2024-02-02 15:41:11.271124'),
(48, 'learning', '0031_delete_topics_alter_teachers_dob', '2024-02-02 15:41:11.294108'),
(49, 'learning', '0032_alter_teachers_dob', '2024-02-02 15:41:11.309099'),
(50, 'learning', '0033_alter_teachers_dob', '2024-02-02 15:41:11.325090'),
(51, 'learning', '0034_alter_teachers_dob', '2024-02-02 15:41:11.341080'),
(52, 'learning', '0035_alter_teachers_dob_alter_homenav_table', '2024-02-02 15:41:11.372062'),
(53, 'learning', '0036_alter_teachers_dob_alter_homenav_table', '2024-02-02 15:41:11.408038'),
(54, 'learning', '0037_alter_teachers_dob', '2024-02-02 15:41:11.424029'),
(55, 'learning', '0038_alter_teachers_dob', '2024-02-02 15:41:11.438020'),
(56, 'learning', '0039_alter_teachers_dob', '2024-02-02 15:41:11.462006'),
(57, 'learning', '0040_alter_teachers_dob', '2024-02-02 15:41:11.483992'),
(58, 'learning', '0041_topics_alter_teachers_dob', '2024-02-02 15:41:11.535960'),
(59, 'learning', '0042_stdclass1_alter_teachers_dob', '2024-02-02 15:41:11.583930'),
(60, 'learning', '0043_alter_teachers_dob', '2024-02-02 15:41:11.600921'),
(61, 'learning', '0044_logo_alter_teachers_dob', '2024-02-02 15:41:11.646891'),
(62, 'learning', '0045_alter_teachers_dob', '2024-02-02 15:41:11.662881'),
(63, 'learning', '0046_alter_teachers_dob', '2024-02-02 15:41:11.758821'),
(64, 'learning', '0047_alter_teachers_dob', '2024-02-02 15:41:11.776811'),
(65, 'learning', '0048_alter_teachers_dob', '2024-02-02 15:41:11.795799'),
(66, 'learning', '0049_alter_teachers_dob', '2024-02-02 15:41:11.812789'),
(67, 'learning', '0050_t_table_alter_teachers_dob', '2024-02-02 15:41:11.905731'),
(68, 'learning', '0051_alter_teachers_dob', '2024-02-02 15:41:11.926718'),
(69, 'learning', '0052_alter_teachers_dob', '2024-02-02 15:41:11.949705'),
(70, 'learning', '0053_alter_teachers_dob', '2024-02-02 15:41:11.968692'),
(71, 'learning', '0054_alter_teachers_dob', '2024-02-02 15:41:11.992678'),
(72, 'learning', '0055_alter_teachers_dob_studentnav', '2024-02-02 15:41:12.169568'),
(73, 'learning', '0056_applogo_alter_teachers_dob', '2024-02-02 15:41:12.303486'),
(74, 'learning', '0057_alter_teachers_dob', '2024-02-02 15:41:12.321476'),
(75, 'learning', '0058_examcards_examcarl_examcont_alter_teachers_dob', '2024-02-02 15:41:12.457391'),
(76, 'learning', '0059_rename_subject_description_stdclass_classid_and_more', '2024-02-02 15:41:12.593307'),
(77, 'learning', '0060_alter_teachers_dob', '2024-02-02 15:41:12.614295'),
(78, 'learning', '0061_alter_teachers_dob', '2024-02-02 15:41:12.637281'),
(79, 'learning', '0062_alter_teachers_dob', '2024-02-02 15:41:12.657268'),
(80, 'learning', '0063_delete_stdclass_alter_teachers_dob', '2024-02-02 15:41:12.764201'),
(81, 'learning', '0064_stdclass_alter_teachers_dob', '2024-02-02 15:41:12.799181'),
(82, 'learning', '0065_alter_teachers_dob', '2024-02-02 15:41:12.820167'),
(83, 'learning', '0066_alter_teachers_dob', '2024-02-02 15:41:12.851149'),
(84, 'learning', '0067_alter_teachers_dob', '2024-02-02 15:41:12.883129'),
(85, 'learning', '0068_alter_teachers_dob', '2024-02-02 15:41:12.905114'),
(86, 'learning', '0069_alter_teachers_dob', '2024-02-02 15:41:12.979069'),
(87, 'learning', '0070_alter_teachers_dob', '2024-02-02 15:41:12.997058'),
(88, 'learning', '0071_alter_teachers_dob_alter_homenav_table', '2024-02-02 15:41:13.034036'),
(89, 'learning', '0072_alter_teachers_dob', '2024-02-02 15:41:13.053023'),
(90, 'learning', '0073_alter_teachers_dob', '2024-02-02 15:41:13.070015'),
(91, 'learning', '0074_alter_teachers_dob_alter_homenav_table', '2024-02-02 15:41:13.100995'),
(92, 'learning', '0075_alter_teachers_dob', '2024-02-02 15:41:13.119982'),
(93, 'learning', '0076_alter_teachers_dob', '2024-02-02 15:41:13.141969'),
(94, 'learning', '0077_alter_teachers_dob_alter_homenav_table', '2024-02-02 15:41:13.167953'),
(95, 'learning', '0078_alter_teachers_dob_alter_homenav_table', '2024-02-02 15:41:13.195936'),
(96, 'learning', '0079_alter_teachers_dob', '2024-02-02 15:41:13.215926'),
(97, 'learning', '0080_alter_teachers_dob', '2024-02-02 15:41:13.234912'),
(98, 'learning', '0081_alter_teachers_dob', '2024-02-02 15:41:13.253899'),
(99, 'sessions', '0001_initial', '2024-02-02 15:41:13.301869'),
(100, 'learning', '0082_cardfee_crfee_fee_alter_teachers_dob', '2024-02-05 11:24:46.873606'),
(101, 'learning', '0083_staff_staff_fea_staff_imp_staff_prob_and_more', '2024-02-05 11:39:21.566691'),
(102, 'learning', '0084_alter_teachers_dob_delete_students', '2024-02-05 12:36:27.314325'),
(103, 'learning', '0085_attendmanagecards_attendmanagecarousel_and_more', '2024-02-05 16:12:53.948094'),
(104, 'learning', '0086_cardpaymentfeatures_crpaymentfeatures_and_more', '2024-02-05 16:18:25.355860'),
(105, 'learning', '0087_admissioncards_admissioncarl_admissioncont_and_more', '2024-02-06 09:39:35.009161'),
(106, 'learning', '0088_contactinfo_contactinfo2_contactmessage_footerlink_and_more', '2024-02-06 11:39:47.021897'),
(107, 'learning', '0089_liveclasscards_liveclasscarousel_liveclasscontent_and_more', '2024-02-06 12:14:12.586539'),
(108, 'learning', '0090_timetablecards_timetablecarl_timetablecont_and_more', '2024-02-06 17:24:46.140555'),
(109, 'learning', '0091_attendancemenu_leavemanagement_leavestype_and_more', '2024-02-06 18:25:07.664687'),
(110, 'learning', '0092_student_mystudent_student_username_alter_leave_today_and_more', '2024-02-07 12:24:01.480655'),
(111, 'learning', '0093_different_shifts_alter_leave_today_and_more', '2024-02-07 14:21:45.924682'),
(112, 'learning', '0094_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-02-07 14:22:03.334650'),
(113, 'learning', '0095_remove_teachers_shift_name_alter_leave_today_and_more', '2024-02-07 14:25:15.831847'),
(114, 'learning', '0096_alter_leave_today_alter_teachers_dob', '2024-02-07 14:25:27.031136'),
(115, 'learning', '0097_teachers_shift_name_alter_leave_today_and_more', '2024-02-07 14:26:51.541582'),
(116, 'learning', '0098_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-02-07 14:27:11.751625'),
(117, 'learning', '0099_remove_teacher_shifts_facult_name_and_more', '2024-02-07 14:29:14.303488'),
(118, 'learning', '0100_alter_leave_today_alter_teachers_dob', '2024-02-07 14:29:33.125806'),
(119, 'learning', '0101_alter_leave_today_alter_teachers_dob_compose_message', '2024-02-07 14:30:29.778491'),
(120, 'learning', '0102_alter_leave_today_alter_teachers_dob_and_more', '2024-02-07 14:30:57.528578'),
(121, 'learning', '0103_alter_leave_today_alter_teachers_dob', '2024-02-07 14:31:09.398728'),
(122, 'learning', '0104_alter_leave_today_alter_teachers_dob_compose_message', '2024-02-07 14:31:31.224568'),
(123, 'learning', '0105_alter_leave_today_alter_teachers_dob_teacher_shifts', '2024-02-07 14:33:58.167507'),
(124, 'learning', '0106_teachers_shift_name_alter_leave_today_and_more', '2024-02-07 14:36:23.764314'),
(125, 'learning', '0107_remove_teachers_shift_name_alter_leave_today_and_more', '2024-02-07 14:36:52.677939'),
(126, 'learning', '0108_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-02-07 14:37:02.268642'),
(127, 'learning', '0109_teachers_shift_name_alter_leave_today_and_more', '2024-02-07 14:38:45.235601'),
(128, 'learning', '0110_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-02-07 14:38:45.239034'),
(129, 'learning', '0111_remove_teachers_shift_name_alter_leave_today_and_more', '2024-02-07 14:38:45.243149'),
(130, 'learning', '0112_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-02-07 14:39:10.611823'),
(131, 'learning', '0113_teachers_shift_name_alter_leave_today_and_more', '2024-02-07 14:41:40.491154'),
(132, 'learning', '0114_teacherattendance_alter_leave_today_and_more', '2024-02-08 09:15:19.764632'),
(133, 'learning', '0115_footer_content_alter_leave_today_and_more', '2024-02-08 10:01:04.435553'),
(134, 'learning', '0116_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-02-08 10:04:29.311057'),
(135, 'learning', '0117_adminphoto_alter_leave_today_and_more', '2024-02-08 13:47:30.629618'),
(136, 'learning', '0118_schools_usernumber_alter_leave_today_and_more', '2024-02-08 18:00:18.725419'),
(137, 'learning', '0119_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-02-08 18:08:26.319331'),
(138, 'learning', '0120_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-02-08 18:10:58.982866'),
(139, 'learning', '0121_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-02-08 18:10:59.082091'),
(140, 'learning', '0122_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-02-08 18:12:35.273937'),
(141, 'learning', '0123_student_schoolid_alter_leave_today_and_more', '2024-02-08 18:12:35.509729'),
(142, 'learning', '0124_teachers_schoolid_alter_leave_today_and_more', '2024-02-08 18:17:03.597906'),
(143, 'learning', '0125_compose_message_schoolid_alter_leave_today_and_more', '2024-02-08 18:44:42.441933'),
(144, 'learning', '0126_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-02-09 11:37:34.852803'),
(145, 'learning', '0127_admin_main_alter_leave_today_and_more', '2024-02-19 11:55:46.335259'),
(146, 'learning', '0128_carditems_carousel_img_content_image_and_more', '2024-02-19 13:44:17.058479'),
(147, 'learning', '0129_fee_content2_fee_content3_fee_photo2_fee_photo3_and_more', '2024-02-20 09:52:18.775153'),
(148, 'learning', '0130_card_cimage_library_alter_leave_today_and_more', '2024-02-20 12:22:54.153790'),
(149, 'learning', '0131_attendmanagecontent_content1_and_more', '2024-02-20 13:56:40.979886'),
(150, 'learning', '0132_subject_school_id_alter_leave_today_and_more', '2024-02-21 14:39:03.108997'),
(151, 'learning', '0133_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-02-22 09:22:24.457452'),
(152, 'learning', '0134_remove_teachers_image1_alter_leave_today_and_more', '2024-02-22 09:31:31.510689'),
(153, 'learning', '0135_teachers_photo_alter_leave_today_and_more', '2024-02-22 09:37:50.776867'),
(154, 'learning', '0136_admissioncont_content1_admissioncont_heading1_and_more', '2024-02-22 10:25:31.050559'),
(155, 'learning', '0137_alter_adminphoto_image_alter_applogo_logo_and_more', '2024-02-22 11:09:22.957626'),
(156, 'learning', '0138_remove_staff_prob_p1_staff_imp_image2_and_more', '2024-02-22 11:36:06.728320'),
(157, 'learning', '0139_liveclasscontent_content1_alter_leave_today_and_more', '2024-02-22 12:10:35.217950'),
(158, 'learning', '0140_timetablecont_content1_timetablecont_photo1_and_more', '2024-02-22 13:46:01.581967'),
(159, 'learning', '0141_cards_timage_time_alter_leave_today_and_more', '2024-02-22 14:02:23.822812'),
(160, 'learning', '0142_examcont_content1_examcont_heading1_examcont_image1_and_more', '2024-02-22 15:50:57.250991'),
(161, 'learning', '0143_teachers_staff_type_alter_leave_today_and_more', '2024-02-23 14:20:51.139358'),
(162, 'learning', '0144_leave_schoolid_alter_leave_today_and_more', '2024-02-28 18:44:28.682305'),
(163, 'learning', '0145_compose_message_is_status_compose_message_read1_and_more', '2024-03-01 09:28:32.243289'),
(164, 'learning', '0146_excel_instruction_headings_instructions11_std_result_and_more', '2024-03-11 11:09:03.195757'),
(165, 'learning', '0147_remove_student_student_class_student_classname_and_more', '2024-03-11 11:55:20.656654'),
(166, 'learning', '0148_teacher_class_sub_is_control_and_more', '2024-03-11 12:00:13.846758'),
(167, 'learning', '0149_student_student_class_alter_leave_today_and_more', '2024-03-11 12:53:58.376955'),
(168, 'learning', '0150_alter_leave_today_alter_teacher_class_sub_is_control_and_more', '2024-03-11 18:04:33.306167'),
(169, 'learning', '0151_alter_leave_today_alter_teacher_class_sub_is_control_and_more', '2024-03-11 18:07:15.156424'),
(170, 'learning', '0152_remove_quiz_questions_order_alter_leave_today_and_more', '2024-03-12 09:11:47.571745'),
(171, 'learning', '0153_remove_std_result_question_std_result_classes_and_more', '2024-03-12 09:24:17.370803'),
(172, 'learning', '0154_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-03-12 09:52:46.544349'),
(173, 'learning', '0155_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-03-12 09:57:06.919625'),
(174, 'learning', '0156_mymodel_alter_leave_today_and_more', '2024-03-12 10:59:53.518988'),
(175, 'learning', '0157_delete_mymodel_alter_leave_today_and_more', '2024-03-12 11:24:43.974977'),
(176, 'learning', '0158_text_alter_leave_today_and_more', '2024-03-12 18:15:40.912694'),
(177, 'learning', '0159_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-03-18 14:17:40.048940'),
(178, 'learning', '0160_oauthcredentials_alter_leave_today_and_more', '2024-03-18 17:27:17.501634'),
(179, 'learning', '0161_remove_meeting_class_level_remove_meeting_date_and_more', '2024-03-19 10:06:47.156115'),
(180, 'learning', '0162_alter_leave_today_alter_meeting_datetime_and_more', '2024-03-19 10:06:47.160865'),
(181, 'learning', '0163_alter_leave_today_alter_meeting_datetime_and_more', '2024-03-19 10:06:57.447655'),
(182, 'learning', '0164_oauthcredentials_user_alter_leave_today_and_more', '2024-03-19 11:20:41.294380'),
(183, 'learning', '0165_alter_leave_today_alter_meeting_datetime_and_more', '2024-03-19 11:39:02.944883'),
(184, 'learning', '0166_alter_leave_today_alter_meeting_datetime_and_more', '2024-03-19 11:41:29.036350'),
(185, 'learning', '0167_rename_title_meeting_name_alter_leave_today_and_more', '2024-03-19 11:42:37.287997'),
(186, 'learning', '0168_alter_leave_today_alter_meeting_datetime_and_more', '2024-03-19 11:42:47.247360'),
(187, 'learning', '0169_delete_meeting_alter_leave_today_and_more', '2024-03-19 11:48:21.264221'),
(188, 'learning', '0170_meeting_alter_leave_today_and_more', '2024-03-19 11:49:04.164611'),
(189, 'learning', '0171_alter_leave_today_alter_meeting_datetime_and_more', '2024-03-19 11:51:45.850620'),
(190, 'learning', '0172_alter_leave_today_alter_meeting_datetime_and_more', '2024-03-19 11:52:46.630544'),
(191, 'learning', '0173_delete_meeting_alter_leave_today_and_more', '2024-03-19 15:11:22.847306'),
(192, 'learning', '0174_meetlink_alter_leave_today_and_more', '2024-03-19 15:14:50.651393'),
(193, 'learning', '0175_meeting_alter_leave_today_and_more', '2024-03-19 15:29:25.810704'),
(194, 'learning', '0176_zoommeeting_alter_leave_today_and_more', '2024-03-19 15:34:13.601267'),
(195, 'learning', '0177_alter_leave_today_alter_quiz_questions_choice1_and_more', '2024-03-20 11:09:00.492425'),
(196, 'learning', '0178_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-03-20 11:32:18.773703'),
(197, 'learning', '0179_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-03-26 17:39:32.762707'),
(198, 'learning', '0180_delete_zoommeeting_alter_leave_today_and_more', '2024-03-27 12:15:07.354825'),
(199, 'learning', '0181_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-03-27 12:15:43.587765'),
(200, 'learning', '0182_pricing_head_alter_leave_today_and_more', '2024-04-08 11:29:48.479712'),
(201, 'learning', '0183_pricing_body_alter_leave_today_and_more', '2024-04-08 11:29:48.633695'),
(202, 'learning', '0158_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-04-08 11:29:48.716150'),
(203, 'learning', '0159_mymodel_alter_leave_today_and_more', '2024-04-08 11:29:48.847822'),
(204, 'learning', '0160_delete_mymodel_alter_leave_today_and_more', '2024-04-08 11:29:48.947934'),
(205, 'learning', '0161_mymodel_alter_leave_today_and_more', '2024-04-08 11:29:49.115728'),
(206, 'learning', '0162_delete_mymodel_alter_leave_today_and_more', '2024-04-08 11:29:49.222392'),
(207, 'learning', '0163_mymodel_alter_leave_today_and_more', '2024-04-08 11:29:49.375435'),
(208, 'learning', '0164_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-04-08 11:29:49.459188'),
(209, 'learning', '0184_merge_20240401_1000', '2024-04-08 11:29:49.469692'),
(210, 'learning', '0185_delete_mymodel_pricing_body_icon_alter_leave_today_and_more', '2024-04-08 11:29:49.600881'),
(211, 'learning', '0186_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-04-08 11:29:49.684769'),
(212, 'learning', '0187_plans_plans1_plans2_alter_leave_today_and_more', '2024-04-08 11:41:26.387395'),
(213, 'learning', '0182_hero_alter_leave_today_and_more', '2024-04-10 09:17:55.397375'),
(214, 'learning', '0183_plans_plans1_plans2_pricing_body_pricing_head_and_more', '2024-04-10 14:40:40.434444'),
(215, 'learning', '0184_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-04-10 14:40:52.518510'),
(216, 'learning', '0185_alter_hero_content_alter_leave_today_and_more', '2024-04-10 15:00:25.695691'),
(217, 'learning', '0186_service_alter_leave_today_and_more', '2024-04-10 15:55:49.536865'),
(218, 'learning', '0187_pricingplan_alter_leave_today_and_more', '2024-04-11 12:30:46.350429'),
(219, 'learning', '0188_content_image_content4_content_image_image4_and_more', '2024-04-12 14:10:49.297796'),
(220, 'learning', '0189_delete_service_alter_leave_today_and_more', '2024-04-12 15:46:53.177687'),
(221, 'learning', '0190_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-04-15 12:04:01.253360'),
(222, 'learning', '0191_schools_plan_id_alter_leave_today_and_more', '2024-04-15 12:04:01.558393'),
(223, 'learning', '0192_remove_schools_plan_id_alter_leave_today_and_more', '2024-04-15 12:07:05.286529'),
(224, 'learning', '0193_mypricingplan_alter_leave_today_and_more', '2024-04-15 12:08:48.067587'),
(225, 'learning', '0194_schools_plan_id_alter_leave_today_and_more', '2024-04-15 12:09:29.361282'),
(226, 'learning', '0195_alter_leave_today_alter_schools_plan_id_and_more', '2024-04-15 12:10:37.937147'),
(227, 'learning', '0196_delete_mypricingplan_alter_fee_payment_student_class_and_more', '2024-04-16 10:04:24.406243'),
(228, 'learning', '0197_alter_fee_payment_student_class_alter_leave_today_and_more', '2024-04-16 10:12:28.173746'),
(229, 'learning', '0198_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-04-18 12:30:16.333757'),
(230, 'learning', '0199_alter_fee_payment_amountpaid_alter_leave_today_and_more', '2024-04-20 17:17:21.814865'),
(231, 'learning', '0200_alter_leave_today_alter_teacher_shifts_half_daytime_and_more', '2024-04-20 17:17:21.948783'),
(232, 'learning', '0199_shift_names_remove_customuser_oauth_credentials_and_more', '2024-04-23 13:54:28.211592'),
(233, 'learning', '0200_alter_employeeloginlogout_login_time_and_more', '2024-04-23 14:18:35.582091'),
(234, 'learning', '0201_student_shift_alter_employeeloginlogout_login_time_and_more', '2024-04-23 14:30:34.179128'),
(235, 'learning', '0202_alter_employeeloginlogout_login_time_and_more', '2024-04-23 14:52:36.616809'),
(236, 'learning', '0203_alter_employeeloginlogout_login_time_and_more', '2024-04-23 14:52:36.921439'),
(237, 'learning', '0204_alter_employeeloginlogout_login_time_and_more', '2024-04-23 14:53:37.800219'),
(238, 'learning', '0205_alter_employeeloginlogout_login_time_and_more', '2024-04-23 14:54:22.250991'),
(239, 'learning', '0206_remove_zoommeeting_meeting_time_zoommeeting_endtime_and_more', '2024-04-24 09:19:38.193513'),
(240, 'learning', '0207_alter_employeeloginlogout_login_time_and_more', '2024-04-24 10:27:50.456360'),
(241, 'learning', '0208_alter_employeeloginlogout_login_time_and_more', '2024-04-29 12:32:25.498216'),
(242, 'learning', '0209_alter_employeeloginlogout_login_time_and_more', '2024-05-09 11:45:48.377640'),
(243, 'learning', '0210_alter_employeeloginlogout_login_time_and_more', '2024-05-09 11:45:48.522316'),
(244, 'learning', '0211_alter_employeeloginlogout_login_time_and_more', '2024-05-09 11:45:48.664524'),
(245, 'learning', '0212_alter_employeeloginlogout_login_time_and_more', '2024-05-09 11:45:48.794729'),
(246, 'learning', '0213_alter_employeeloginlogout_login_time_and_more', '2024-05-09 11:45:48.992320'),
(247, 'learning', '0214_alter_employeeloginlogout_login_time_and_more', '2024-05-23 14:41:46.404993'),
(248, 'learning', '0215_alter_employeeloginlogout_login_time_and_more', '2024-05-23 18:37:33.590144'),
(249, 'learning', '0216_fee_payment_discount_percentage_fee_payment_term4_and_more', '2024-06-24 12:03:50.170843'),
(250, 'learning', '0217_alter_employeeloginlogout_login_time_and_more', '2024-06-24 12:12:52.912666'),
(251, 'learning', '0218_alter_employeeloginlogout_login_time_and_more', '2024-06-24 17:15:01.188784'),
(252, 'learning', '0219_payment_form_remove_fee_payment_discount_percentage_and_more', '2024-06-26 14:38:58.834400'),
(253, 'learning', '0220_alter_employeeloginlogout_login_time_and_more', '2024-06-26 15:08:23.404752'),
(254, 'learning', '0221_alter_employeeloginlogout_login_time_and_more', '2024-06-26 15:25:18.372534'),
(255, 'learning', '0222_fee_payment_transaction_datetime_and_more', '2024-06-26 15:27:55.576888'),
(256, 'learning', '0223_meeting1_alter_employeeloginlogout_login_time_and_more', '2024-06-26 10:15:05.914903'),
(257, 'learning', '0224_alter_employeeloginlogout_login_time_and_more', '2024-06-26 10:17:05.661646'),
(258, 'learning', '0225_event_alter_employeeloginlogout_login_time_and_more', '2024-07-05 05:17:50.956477'),
(259, 'learning', '0226_alter_employeeloginlogout_login_time_and_more', '2024-07-05 05:24:03.064542'),
(260, 'learning', '0227_alter_employeeloginlogout_login_time_and_more', '2024-07-05 05:33:57.098636'),
(261, 'learning', '0228_alter_employeeloginlogout_login_time_and_more', '2024-07-05 05:40:20.434391'),
(262, 'learning', '0229_alter_employeeloginlogout_login_time_and_more', '2024-07-05 05:56:43.082089'),
(263, 'learning', '0230_alter_employeeloginlogout_login_time_and_more', '2024-07-05 06:09:58.591404'),
(264, 'learning', '0231_alter_employeeloginlogout_login_time_and_more', '2024-07-05 11:53:05.867734'),
(265, 'learning', '0232_alter_employeeloginlogout_login_time_and_more', '2024-07-10 06:12:01.142697'),
(266, 'learning', '0233_remove_zoommeeting_meeting_link_and_more', '2024-07-10 06:27:27.880897'),
(267, 'learning', '0234_alter_employeeloginlogout_login_time_and_more', '2024-07-22 05:11:18.161315'),
(268, 'learning', '0235_alter_employeeloginlogout_login_time_and_more', '2024-07-22 05:17:45.018602'),
(269, 'learning', '0236_fee_payment_discount_percentage_and_more', '2024-07-22 06:19:45.106625'),
(270, 'learning', '0237_alter_employeeloginlogout_login_time_and_more', '2024-07-22 06:54:46.042227'),
(271, 'learning', '0238_alter_employeeloginlogout_login_time_and_more', '2024-07-22 07:00:43.607607'),
(272, 'learning', '0239_alter_employeeloginlogout_login_time_and_more', '2024-07-24 09:33:56.057703'),
(273, 'learning', '0240_alter_employeeloginlogout_login_time_and_more', '2024-07-25 04:19:46.781880'),
(274, 'learning', '0241_alter_employeeloginlogout_login_time_and_more', '2024-07-25 04:30:27.086678'),
(275, 'learning', '0242_alter_employeeloginlogout_login_time_and_more', '2024-07-25 04:33:13.686932'),
(276, 'learning', '0243_alter_employeeloginlogout_login_time_and_more', '2024-07-25 06:04:43.959146'),
(277, 'learning', '0244_subject_classes_alter_employeeloginlogout_login_time_and_more', '2024-07-25 06:57:59.371071'),
(278, 'learning', '0245_alter_employeeloginlogout_login_time_and_more', '2024-07-25 07:01:25.165042'),
(279, 'learning', '0246_rename_classes_subject_class_name_and_more', '2024-07-25 10:24:47.827112'),
(280, 'learning', '0247_latestcourse_alter_employeeloginlogout_login_time_and_more', '2024-07-26 05:04:24.079370'),
(281, 'learning', '0248_alter_employeeloginlogout_login_time_and_more', '2024-08-06 03:33:26.985697'),
(282, 'learning', '0249_alter_employeeloginlogout_login_time_and_more', '2024-08-08 05:10:58.666918'),
(283, 'learning', '0250_remove_schools_confirm_password_and_more', '2024-09-04 05:22:51.749451'),
(284, 'learning', '0251_alter_employeeloginlogout_login_time_and_more', '2024-09-04 05:22:52.009974'),
(285, 'learning', '0252_alter_employeeloginlogout_login_time_and_more', '2024-09-04 05:22:52.150583'),
(286, 'learning', '0253_fee_payment_address_fee_payment_phone_number_and_more', '2024-09-18 06:01:06.587777'),
(287, 'learning', '0254_alter_employeeloginlogout_login_time_and_more', '2024-09-19 10:04:42.458903'),
(288, 'learning', '0255_alter_employeeloginlogout_login_time_and_more', '2024-09-19 11:34:41.763884'),
(289, 'learning', '0256_alter_employeeloginlogout_login_time_and_more', '2024-09-19 11:54:35.534523');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1aqtkf5lvtrxxrmwcexnw9pv3cry30pc', '.eJxVjEsKAjEQBe-StYTOV-LSvWcI3enGjEoCk5mVeHcJzEK3r6reW2Xct5r3IWteWF2US-r0OxKWp7RJ-IHt3nXpbVsX0lPRBx361lle18P9O6g46qyNBYpEzoUSwJApVuLZiWMo5NEycPIQxYUUTAIUtMSQPAZOthijPl8GTzfa:1rrBuy:wmpvMa1BO_VjweJNHLkrM_pngWzUyrmiMTMn9CgnLk4', '2024-04-15 12:47:20.911365'),
('1wmfo2xbltu0ydxmmyg0mir19m7xq9fq', '.eJxVjEEOwiAQRe_C2pACwwAu3XsGAsNUqoYmpV0Z765NutDtf-_9l4hpW2vcOi9xKuIswIvT75gTPbjtpNxTu82S5rYuU5a7Ig_a5XUu_Lwc7t9BTb1-a6eVYVe0g8JBIY6WQ0oKR9KDUYDIZAcPDtACBc9gnMkIoMADe9Li_QHpjDbS:1rmoua:whcCJrXjc1ZYRUuaJl1jmOpThWKBS7wBARyFROUjHTI', '2024-04-03 11:24:52.891718'),
('2btutjv03mk5lb0wyynn3bqpx0ajpxfp', '.eJxVjDkOwjAQRe_iGlleJl4o6TmDNeMFB5AtxUmFuDtESgHtf-_9Fwu4rTVsIy9hTuzMJmCn35EwPnLbSbpju3Uee1uXmfiu8IMOfu0pPy-H-3dQcdRvrdBGV1AYT0a4kpEURB8JnZRKaJcmZ7y1ToCyEDEBgTRaSWEV-VI0e38ABZY3dg:1s1IjZ:_ZrsxnFyz-QG1W2I0ud6Lmss-HxdWMA7RDcZpsGMn3M', '2024-05-13 10:05:21.741840'),
('2otaihk0detjrjyuoqyhsia8jxiskxdb', '.eJxVi0sOwiAUAO_C2hhe4YG4NOk5yPtQIVYWrV0Z727d2eXMZN4m0_aqeVvLkpuaqwE0p3_JJI_Sf2UutPTW7-fxSW2-7X7seoDjWWmt--aTDoUhKHkBGi4TijpEm5wlELCI7CJiYBby7GNRFR9j4DSlCMDm8wUqLjUS:1rNRh5:LonKuiYPBOVZYYl7_4tGJ1bitu8aK8vIfJHFxHYvtBA', '2024-01-24 11:34:03.971450'),
('2pweq9hdu2u0xqwbx0499siqzadio05c', 'e30:1rNUlk:AVWsBytaRFBt6-AoWYRt20FYCumASkmXIlSNG0EuvTM', '2024-01-24 14:51:04.944458'),
('2rd9j17rgt2pcinm3uxauykzi4rsnzny', '.eJxVjEsOwjAMBe-SNUJJbDcpS6Seo3Icl0SULPpZIe4O3dHlzOi9txl538q4r7qMNZub6czl3yWWp7YjzMpLq-1xHV5c5_vPDy2f4LwsvJbjT13uAkXQSdgLQMIpKgI7630CFCSxhKnHGAmEnROKFnzug4OQyXy--eIz9A:1rMlQt:EmaELHykz6ex_olxbuKn-CYvI6CX6g5GurmoayEld04', '2024-01-22 14:26:31.983264'),
('2skqfl5ebw6z601w161ok2o2cwl50k5i', 'e30:1rMhfD:FePDIEMZtWh9T5SuStlwmzQwDDPKjAoq1BiC3eRcPbQ', '2024-01-22 10:25:03.034470'),
('3hje8rnsx9evrdwojxt6c7okhtpeii7x', '.eJxVjDsOwjAQRO_iGlne-BtK-pzB2vVaOIBsKU4qxN1JpBQw5bw38xYRt7XEreclziyuAry4_JaE6ZnrQfiB9d5kanVdZpKHIk_a5dQ4v26n-3dQsJd9TeCVoZGDsZAgOQ5ImodskAejQgpJ60BOOeCMZEGPzoC3ezT57Fl8vgJWN58:1reSZf:9KkBn3NflllLIoaUFDfF11nMOINZ8zpUvTcLwWxAEMo', '2024-03-11 09:56:43.697514'),
('416sij29si82wruxfxbhn05p88bhpakg', '.eJxVjEEOwiAQRe_C2hCY0jK4dO8ZCMyAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8zOIstDj9bjHQI9Ud8D3UW5PU6rrMUe6KPGiX18bpeTncv4MSevnWCjUwqcwa0URjHALnESwxsdKQg4kujYQTGRc0K5ysiQDWDqAHmwfx_gDaBTdB:1rfCgI:9n96FwBPGgLS49xVPFaRJa_cV5aUxKnk28LhmBxC4dk', '2024-03-13 11:10:38.482179'),
('49b7qvadnrhcf974pltlt6sl0zlae1mn', '.eJxVjEEOwiAQRe_C2hAYpIBL9z0DGZhBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4kbgIbcTpd0yYH9x2Qndst1nmua3LlOSuyIN2Oc7Ez-vh_h1U7PVb-4HAkykaA2kGAxbIOSSPVlnOylvHOXgAc-bAAZJipYodSoZkQYF4fwD9zzei:1rpQ4j:Pn2MJsdglhp2BWFmKRyyixMo4F504Jc2B7IQuQgX7UI', '2024-04-10 15:30:05.089012'),
('53d9k0xmnolpyp5i36odbn579wi3vlm3', '.eJxVjDsOwyAQRO9CHSHEn5TpcwbE7kJwEoFk7MrK3WNLLpJqpHlvZmMxrUuN68hznIhdmWOX3w4SvnI7AD1Te3SOvS3zBPxQ-EkHv3fK79vp_h3UNOq-luCCCdmgsLI4gQSZQHufggYQAQRmpQUYsIrIaiNQEXj0bs8CRbLPF_lKOMQ:1rXzRO:6jyZlSpDOPuiSEHVzqQXSU1aG4y3a4LnWQ2U-IlPu2g', '2024-02-22 13:37:26.028933'),
('5bzk65lbr6x9l60wwhjza17bhusexinl', '.eJxVjDkOwjAQRe_iGlmzxEso6XOGaGIPJIBsKUuFuDtESgHtf-_9l-llW8d-W3Tup2zOBhtz-h0HSQ8tO8l3KbdqUy3rPA12V-xBF9vVrM_L4f4djLKM35rAIbskHiHFTEF9VK--AfSpyY6EAjlgaq9BmbllwAEBXJQogTiY9wfQ5TY-:1rYPD0:o-BtTp73_lXoSpgYGRtTWiqfoiureuEFGUZf3QioLDQ', '2024-02-23 17:08:18.505475'),
('65u2j2pcczc7h56i13vsfsmw7g1yi0fy', '.eJxVjDkOwjAQRe_iGlmzxEso6XOGaGIPJIBsKUuFuDtESgHtf-_9l-llW8d-W3Tup2zOBhtz-h0HSQ8tO8l3KbdqUy3rPA12V-xBF9vVrM_L4f4djLKM35rAIbskHiHFTEF9VK--AfSpyY6EAjlgaq9BmbllwAEBXJQogTiY9wfQ5TY-:1raUPk:V4Ls24gcsmTuJAZjb5OkSoUpT_1YAvlpFIrGVfKdSEc', '2024-02-29 11:06:04.178069'),
('69vjbwbwxv8kvermhgf7fq804ykr9vtq', '.eJxVjDkOwjAQRe_iGlmzxEso6XOGaGIPJIBsKUuFuDtESgHtf-_9l-llW8d-W3Tup2zOBhtz-h0HSQ8tO8l3KbdqUy3rPA12V-xBF9vVrM_L4f4djLKM35rAIbskHiHFTEF9VK--AfSpyY6EAjlgaq9BmbllwAEBXJQogTiY9wfQ5TY-:1rmTn6:_OU6f-rdITfnlSJTzAj2aw6xQ1EhdAl2I37D-0FBdAk', '2024-04-02 12:51:44.683103'),
('6krxxfvrszki3ns8tmevnmmy5246xxjy', '.eJxVjMsOwiAUBf-FtSGS20Jx6d5vIPdVqRpISrsy_rsh6UK3Z2bO2yTct5z2pmtaxFyM8-b0OxLyU0sn8sByr5Zr2daFbFfsQZu9VdHX9XD_DjK23GtkHYGABYRhVAje06COfaRIFGYGOCsoBlbxc5w4OBgiUFA3Ean5fAE_ITlg:1raYJO:5d3YtVK-cztYKBVxIKQjIqDBCG0_I9kD8z-4tiRk0p0', '2024-02-29 15:15:46.254612'),
('7gr1vepfxsqgnpl1ejpt7b2l5kgst72c', '.eJxVjDEOwyAQBP9CHaEzBh-kTO83IDiO4CTCkrGrKH-PLblImi12ZvctfNjW4rfGi5-SuApjxeW3jIGeXA-SHqHeZ0lzXZcpykORJ21ynBO_bqf7d1BCK_s6D6C72Gu2sAc644BcyhozKhs1mcGhygYosGMi6CMxkiW0mDtlQHy-_Z039g:1rxKqm:-mzV_8Q8hZe-PpnTOpWy878POWudpukWEeO6cFoiMSU', '2024-05-02 11:32:24.944671'),
('8d9ym3yku4gcoipe3y10jntu4et5meug', '.eJxVjs0OwiAQhN-FsyGUnwU9evcZCOwuUjU0Ke3J-O62SQ96ne-bybxFTOtS49p5jiOJi4BBnH7DnPDJbSf0SO0-SZzaMo9Z7oo8aJe3ifh1Pdy_gZp63dpBozOgwbqMurBxPpAHr707G6uMsdoRWALMgUJShYeEwAYVQ3Zle_X5At8UN4E:1rxLrz:mdKPLqTjF5bxBp-wbuozVoSi1mkVYLmeCt-OsH9E8lY', '2024-05-02 12:37:43.941191'),
('8hh06p2k0frp6ymgp49ntkkb4cqa0k4y', '.eJxVi0sOwiAUAO_C2hhe4YG4NOk5yPtQIVYWrV0Z727d2eXMZN4m0_aqeVvLkpuaqwE0p3_JJI_Sf2UutPTW7-fxSW2-7X7seoDjWWmt--aTDoUhKHkBGi4TijpEm5wlELCI7CJiYBby7GNRFR9j4DSlCMDm8wUqLjUS:1rNVWH:BHZwq-TZKJw6K0deUQH_QB2txQavcaRr9myIAJXmsb8', '2024-01-24 15:39:09.938929'),
('8j2seqnlokysr5b8ilwmevg3rwtjj8np', '.eJxVjDsOwyAQRO9CHSHEn5TpcwbE7kJwEoFk7MrK3WNLLpJqpHlvZmMxrUuN68hznIhdmWOX3w4SvnI7AD1Te3SOvS3zBPxQ-EkHv3fK79vp_h3UNOq-luCCCdmgsLI4gQSZQHufggYQAQRmpQUYsIrIaiNQEXj0bs8CRbLPF_lKOMQ:1rXyZU:z6g_-Ws99NgTed5FpYF9VlF40zuTyoBfiZs9nobyKn0', '2024-02-22 12:41:44.586451'),
('91pfy650gqtwer2gidyhhadcag2c6jva', '.eJxVjEEOwiAQRe_C2hCgCINL9z0DmWGmUjVtUtqV8e7apAvd_vfef6mM21rz1mTJI6uLsur0uxGWh0w74DtOt1mXeVqXkfSu6IM23c8sz-vh_h1UbPVbi7PgXQEnvmOi0BEyCEZbmEMynAjOjLErYMQ4sB6GNESXHKYA5EW9P_IeOBI:1rVqYD:GHw0lHZ7HfyOkXNoKvQp6eebhgr40U7emuIsMnc1hhA', '2024-02-16 15:43:37.535100'),
('93cgj83lh1ka5z3uttokteuvoi8b1ocm', '.eJxVjDkOwjAQRe_iGlmzxEso6XOGaGIPJIBsKUuFuDtESgHtf-_9l-llW8d-W3Tup2zOBhtz-h0HSQ8tO8l3KbdqUy3rPA12V-xBF9vVrM_L4f4djLKM35rAIbskHiHFTEF9VK--AfSpyY6EAjlgaq9BmbllwAEBXJQogTiY9wfQ5TY-:1rcivF:biI7oh3cv9e2mQ6y55Ae2JAaNf09mcF5VQNb3xNL9EE', '2024-03-06 14:59:49.630898'),
('9ky9t0h5omt56uyqb6gq2462t1mk8g1k', '.eJxVjDkOwjAQRe_iGlmzxEso6XOGaGIPJIBsKUuFuDtESgHtf-_9l-llW8d-W3Tup2zOBhtz-h0HSQ8tO8l3KbdqUy3rPA12V-xBF9vVrM_L4f4djLKM35rAIbskHiHFTEF9VK--AfSpyY6EAjlgaq9BmbllwAEBXJQogTiY9wfQ5TY-:1raTEf:Vx3yG3Vc1LPsDSCM-5bjwsI5g0DYXHi57wrvdC1ItPo', '2024-02-29 09:50:33.586189'),
('9lmggsdiusjf3jb0dqo4n9fjgdjxvoss', '.eJxVjMsOwiAURP-FtSFAebp07zcQLtwrVUOT0q6M_64kXWhmN-fMvFhM-1bj3nGNc2FnZhQ7_ZaQ8gPbIOWe2m3heWnbOgMfCj9o59el4PNyuH8HNfX6XfsgFJIk4T2KIIGUNA7EBMbIXKxLCmxRoJEAvKCiXRrJTtuJsgzs_QEG6Dhi:1rwaL5:IBbkp7duDTI6Eo08vU3o-dzqj5WeYnDAK3eOELAFGe4', '2024-04-30 09:52:35.978825'),
('9mdeb5vqfio8c2mb3gp1rpbog2w4lvhp', '.eJxVjEEOwiAQRe_C2hAYpIBL9z0DGZhBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4kbgIbcTpd0yYH9x2Qndst1nmua3LlOSuyIN2Oc7Ez-vh_h1U7PVb-4HAkykaA2kGAxbIOSSPVlnOylvHOXgAc-bAAZJipYodSoZkQYF4fwD9zzei:1rpllz:zhRiIf1COQoY3Ru9_9I_mv5I4MHT1cRpi8I3n9PIl1A', '2024-04-11 14:40:11.843127'),
('9uvd4fswobjwdk0sdcro5q4wnqsxrh4m', '.eJxVjDkOwjAQRe_iGlmzxEso6XOGaGIPJIBsKUuFuDtESgHtf-_9l-llW8d-W3Tup2zOBhtz-h0HSQ8tO8l3KbdqUy3rPA12V-xBF9vVrM_L4f4djLKM35rAIbskHiHFTEF9VK--AfSpyY6EAjlgaq9BmbllwAEBXJQogTiY9wfQ5TY-:1rjtzD:R8zseJgd54GCU_oobxAtsA2Zqw_k8LSlNpyvziTFttw', '2024-03-26 10:13:35.072319'),
('a6m67uvsbfds4pm5oz5of0fdipks8t5m', '.eJxVjMsOwiAQRf-FtSGFMjxcuvcbyDAMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxZnYZ04_Y4J6cFtJ_mO7TZLmtu6TEnuijxol9c58_NyuH8HFXv91uMYrNWJPXutlDKGQJeQUIGj7HAoBW0g5YAd65INOwCgYnFQ3ppE4v0B_i04Fw:1sXFEq:7GUtMjU0S3AQm4WZr0Jf9qHWYXB3_inXSR9ZO_MtEsQ', '2024-08-09 07:19:40.566896'),
('b2xds6wlufdry7w4osz0vkht8g12xaiv', '.eJxVjDsOwjAQBe_iGllZex17Kek5g7XrDwmgRIqTCnF3iJQC2jcz76Uib-sQt1aWOGZ1Vn2vTr-jcHqUaSf5ztNt1mme1mUUvSv6oE1f51yel8P9Oxi4Dd8aWQgrd44EMljrjSFOmFEw9a74QJ0lBwIdBO8NOiveJOO4EkKloN4f79827w:1rzVTz:N3qtu_eNqTAYhZzrQvS_IaNf3UQ1Z7OGfmNZpxyXo-E', '2024-05-08 11:17:51.013659'),
('b4h9v6yqqay5hslryp1shpxi673ynchf', '.eJxVjDkOwjAQRe_iGlmzxEso6XOGaGIPJIBsKUuFuDtESgHtf-_9l-llW8d-W3Tup2zOBhtz-h0HSQ8tO8l3KbdqUy3rPA12V-xBF9vVrM_L4f4djLKM35rAIbskHiHFTEF9VK--AfSpyY6EAjlgaq9BmbllwAEBXJQogTiY9wfQ5TY-:1rfusD:W0WC4xiDT4-R1ZsZ1qRv65lyIURsh1fDzWe-iRMuNek', '2024-03-15 10:21:53.641882'),
('ba9dunmsboiglwqfqrldnseh1q9vbaed', '.eJxVjDkOwjAQRe_iGlmzxEso6XOGaGIPJIBsKUuFuDtESgHtf-_9l-llW8d-W3Tup2zOBhtz-h0HSQ8tO8l3KbdqUy3rPA12V-xBF9vVrM_L4f4djLKM35rAIbskHiHFTEF9VK--AfSpyY6EAjlgaq9BmbllwAEBXJQogTiY9wfQ5TY-:1rYMbV:JaFto9C1e95hfu7kZQ7nl85GVHZvKuzHdw-6y-EQyPQ', '2024-02-23 14:21:25.953808'),
('bts5vmkpimbav3qxcjcvp25alg1tkbl2', 'e30:1rMhgz:Txjk7hnicvrXGLk-3sqkS2kJx3F1WpXxFxPPpOUup8s', '2024-01-22 10:26:53.853235'),
('bwa04bamrijp6btax8cv6919oog438c6', '.eJxVjEEOwiAQRe_C2pCRKVhcuu8ZyAwDUjU0Ke3KeHfbpAvd_vfef6tA61LC2tIcRlFXZY06_Y5M8ZnqTuRB9T7pONVlHlnvij5o08Mk6XU73L-DQq1sdQeXThB7dB4keucN0hkoU28ZkzibvXgAY6xjlMxIxmfDcVMjOQb1-QLtjDgA:1sWv7u:uQ1RVRJu07D2muCDasIUrVCaE_4h5gExc9Wh_ZFQU2g', '2024-08-08 09:51:10.820814'),
('bxt41puz5dpgitx5jhz669jpgcvptbhh', '.eJxVi7sOwjAMAP8lM0KJgxPKiNTviOzYIRElQx8T4t8pGx3vTvc2iba1pm3ROTUxN-OCOf1LpvzU_iuT0txbf5zHF7XpvvuxywGOZ6Wl7pty9lBcAbBIHmwmYOuCh-jR0eACW-SikW3QmEEwlCs45Cgqw0XQfL4cazTS:1rSrRS:MJVJlhTpH4NuVusNjt3Ar3yGcb_qMshgNH-hcvK2IJ4', '2024-02-08 10:04:18.122389'),
('c6p4a5muxs8481081e0xit1queajcpcr', '.eJxVi7sOwjAMAP8lM0KJgxPKiNTviOzYIRElQx8T4t8pGx3vTvc2iba1pm3ROTUxN-OCOf1LpvzU_iuT0txbf5zHF7XpvvuxywGOZ6Wl7pty9lBcAbBIHmwmYOuCh-jR0eACW-SikW3QmEEwlCs45Cgqw0XQfL4cazTS:1rSVI4:ZvdxT5cqbQkXAVL3TqfaP02hhZ5knXzi2D-sNYLIbS4', '2024-02-07 10:25:08.518005'),
('coajlzm4fevz76i5ix4j5sryknti86mj', '.eJxVjMsOwiAQRf-FtSHCMGFw6d5vIMNLqgaS0q4a_12bdKHbe865m_C8LtWvI89-SuIikMTpdwwcn7ntJD243buMvS3zFOSuyIMOeespv66H-3dQedRvHUgpPmdCxMJkFBIkmwvbYizFgkYjsAFXLFjnKAFoThBAK3QRWIv3B_nGN14:1sXCkv:akdZBdPIW3hefEY2U1e8l4tb-dvmBEqF-K1b6ZTWfCU', '2024-08-09 04:40:37.921034'),
('cqdk51bqnjwm7d2t01j6johlh9797akq', '.eJxVjMsOwiAQRf-FtSEwyGNcuvcbyACDVE2blHZl_HfbpAvdnnPufYtI69Li2nmOQxEX4VGcfmGi_ORxN-VB432SeRqXeUhyT-Rhu7xNhV_Xo_07aNTbtkYAMOFMBZ1V7ELN1hEHckV7A6DI2JSDAw8BkWy1bJB1UtVowo2IzxftGzdk:1sZOMp:11q6thJBQJjwPYb2VXsmlqD6jk12Q_Csu4XpBoZk4jE', '2024-08-15 05:28:47.739108'),
('d2xbopgc5e3ivnm9aqxmx7eijjxeddis', '.eJxVjEsOwjAMBe-SNYpIG6cJS_Y9Q2THNi2gRupnhbg7VOoCdk9vRvMyGbd1yNsicx7ZXExnTr8fYXnItAO-43SrttRpnUeyu2IPuti-sjyvh_sXGHAZ9qxXjklTEApnihRaByGCE8DgPBKQ6zptRQH4u0W14ZRIPGBpGmXz_gDqMzh-:1raVJA:oiPtjjCtlbYE4FU0A_rzFmCBpOHZG3PCfhiGcOQ0a1c', '2024-02-29 12:03:20.073979'),
('dt49ou1wyefw68k9wvkd7uh9m7627w5g', '.eJxVjDsOwjAQBe_iGln-Rg4lPWewdr27OIAcKU4qxN0hUgpo38y8l8qwrTVvnZc8kTqrGNTpd0QoD247oTu026zL3NZlQr0r-qBdX2fi5-Vw_w4q9PqtEdH5EQjsANZzEhBxYxBX0AB58Nag8TGRMJcwiEF2lmxBiwmjgHp_AEI-Obo:1sWscs:mzG2tc1EXitynosUpVtk2JIi5eRG9qb4gz_FlpgL6Q4', '2024-08-08 07:10:58.335472'),
('ewdphad0vwjtsk63w17b2zluhozdcf82', '.eJxVjDsOwyAQRO9CHSHEn5TpcwbE7kJwEoFk7MrK3WNLLpJqpHlvZmMxrUuN68hznIhdmWWX3w4SvnI7AD1Te3SOvS3zBPxQ-EkHv3fK79vp_h3UNOq-luCCCdmgsLI4gQSZQHufggYQAQRmpQUYsIrIaiNQEXj0bs8CRbLPF_ixOMM:1rWt52:uix_PvOT-DkMgoeFXznT48FcZUsgN94CIXs3fwyUCJM', '2024-02-19 12:37:48.443209'),
('f1wjxb6o8sp84b5575ypkcs2x5pr7l9z', '.eJxVi0sOwiAUAO_C2hhe4YG4NOk5yPtQIVYWrV0Z727d2eXMZN4m0_aqeVvLkpuaqwE0p3_JJI_Sf2UutPTW7-fxSW2-7X7seoDjWWmt--aTDoUhKHkBGi4TijpEm5wlELCI7CJiYBby7GNRFR9j4DSlCMDm8wUqLjUS:1rSDHv:TaVnhAfdIH1b1xiG7XDNu-3m9t1ht3jGTX30uiJY05I', '2024-02-06 15:11:47.138829'),
('f58bfcxtk1of8hbkgkrdfmemcckiccpe', '.eJxVjEEOwiAQRe_C2hAGCoJL9z0DmWGoVA0kpV0Z765NutDtf-_9l4i4rSVuPS9xZnEREMTpdyRMj1x3wnestyZTq-syk9wVedAux8b5eT3cv4OCvXxrIgALjskx4zkZY5wmD3qCKVDKgwqZidCBwpy8BTMoTW5IynrwaEm8PxyfOEQ:1raE93:bY35CPKA0BKlZANvKljG2Twh7eFnHxRwmw6V97eP9lI', '2024-02-28 17:43:45.720005'),
('fiwkxxjmxql8dz8yk75cfsc4ld0pfug5', 'e30:1rNTlP:qzyDchpl79MJkdUGTMWPyLwysZ25qpweY2XQNDegxz4', '2024-01-24 13:46:39.189453'),
('fl8z9q2p4jc8s1sdffhtn5t4rqo1ub8g', '.eJxVjMEOwiAQRP-FsyGwFBGP3vsNZJcFqRpISnsy_rtt0oMeZ96beYuA61LC2tMcJhZXYUGcfkvC-Ex1J_zAem8ytrrME8ldkQftcmycXrfD_Tso2Mu2hpRdcmQwe8xm2JJX5qxtZgeayQNkxjgoAgUpWmZvNFuwfPFkfGbx-QIpTjjO:1srFkR:Me8OSXE6BIl76e2ZzYLAb7FjgH7BCdleJvq6nl9U8_k', '2024-10-03 11:54:59.589517'),
('g15fps32mh9h7qg0i42a8rf2ah97yoab', '.eJxVjDsOwjAQRO_iGll2_FkvJX3OYO2uHRJAiZRPhbg7iZQCypn3Zt4q07b2eVvqnIeiriokdfktmeRZx4OUB433Scs0rvPA-lD0SRfdTqW-bqf7d9DT0u_rRpKPbBEjOlu6BIIeEQQoADV7ZkPWUTDAHNB1AF4gmupS56ugVZ8v7243dg:1sbvjS:OLFap5ijLIbxNK9yxLrVvAWAdxc9zS1v3uZ3QR9qMWI', '2024-08-22 05:30:38.142931'),
('g7a9x0qpisozw7gi7mydjo3flvt86cm0', '.eJxVi7sOwjAMAP8lM0JpndQNI1K_o3LsmESUDH1MiH8nbHS8O93bzHTseT62tM5FzM0AmMu_jMTPVH9lSbTWUh_X6UVluTc_VTnB-cy05bbZFFE1su8DI4uqdSCj5wAOQa1vQS0GSBoHFBE3xI4YexmlC46s-XwBTMk1ug:1rSbDl:rG3Zhi3N7aC6gcMz5A9c0J3ijiG32NZCufcu4stiBHg', '2024-02-07 16:45:05.297254'),
('g92iy1apu45x143a3bs9t5c9y9lc2kns', '.eJxVjDkOwjAQRe_iGlleJl4o6TmDNeMFB5AtxUmFuDtESgHtf-_9Fwu4rTVsIy9hTuzMJmCn35EwPnLbSbpju3Uee1uXmfiu8IMOfu0pPy-H-3dQcdRvrdBGV1AYT0a4kpEURB8JnZRKaJcmZ7y1ToCyEDEBgTRaSWEV-VI0e38ABZY3dg:1rxOb4:nStPtEibhguvKpOjTvIGqbdR1mDr42Pw8o8C2jklvXQ', '2024-05-02 15:32:26.760542'),
('gidcg47zc8fvmqw7mbxzqqui8799t4ed', '.eJxVjDkOwjAQRe_iGlmzxEso6XOGaGIPJIBsKUuFuDtESgHtf-_9l-llW8d-W3Tup2zOBhtz-h0HSQ8tO8l3KbdqUy3rPA12V-xBF9vVrM_L4f4djLKM35rAIbskHiHFTEF9VK--AfSpyY6EAjlgaq9BmbllwAEBXJQogTiY9wfQ5TY-:1resru:Rr-zQEIkA8DPNGpj6-Zaz8IJbI5jXW0PzMSx59E4hh0', '2024-03-12 14:01:18.465477'),
('gv0d1560bgrkszto4u2s67xbz7atvnsb', 'e30:1rS9UJ:OVdr9WmV1CkcT4EZyrsy6AGAp4CRjiV809be4RjsoZ4', '2024-02-06 11:08:19.898812'),
('gzt6qiyep2molxq761nr4qaukjctxuek', '.eJxVjDsOwjAQRO_iGlne-BtK-pzB2vVaOIBsKU4qxN1JpBQw5bw38xYRt7XEreclziyuAry4_JaE6ZnrQfiB9d5kanVdZpKHIk_a5dQ4v26n-3dQsJd9TeCVoZGDsZAgOQ5ImodskAejQgpJ60BOOeCMZEGPzoC3ezT57Fl8vgJWN58:1rc1UF:t-UeoI5bEq-TJzv2ohSK6l9BCADLTbPOjKTWyeV1sNs', '2024-03-04 16:37:03.817692'),
('h1y40uweau5yg6f6ceztk0r5iql0t0j1', '.eJxVjM0OwiAQhN-FsyHys0A9evcZyC4LUjU0Ke3J-O62SQ96mmS-b-YtIq5LjWvPcxxZXIQCcfotCdMzt53wA9t9kmlqyzyS3BV50C5vE-fX9XD_Dir2uq2BUxkyhmIsG6biXdHJK2dsYI3g2MMQUGu21kO2aQvCbM_GsSJiEJ8vIYk4cg:1rYKSh:psLt2mjn25mlITuNiVW6EULe0nhXISf6W_KU_mdgotg', '2024-02-23 12:04:11.434300'),
('hkq6vnwvj9uk6jsjnb2zvqnyvcfx3v4s', '.eJxVjDkOwjAQRe_iGlmzxEso6XOGaGIPJIBsKUuFuDtESgHtf-_9l-llW8d-W3Tup2zOBhtz-h0HSQ8tO8l3KbdqUy3rPA12V-xBF9vVrM_L4f4djLKM35rAIbskHiHFTEF9VK--AfSpyY6EAjlgaq9BmbllwAEBXJQogTiY9wfQ5TY-:1rrDOk:I5cBxhqyYccHYXIqwTO8Uas3VW6Qmsz_uvZayt1XbkU', '2024-04-15 14:22:10.929987'),
('hmxn859qe11d2x5a65q41sleeeofdf6g', '.eJxVjDkOwjAQRe_iGlleJl4o6TmDNeMFB5AtxUmFuDtESgHtf-_9Fwu4rTVsIy9hTuzMJmCn35EwPnLbSbpju3Uee1uXmfiu8IMOfu0pPy-H-3dQcdRvrdBGV1AYT0a4kpEURB8JnZRKaJcmZ7y1ToCyEDEBgTRaSWEV-VI0e38ABZY3dg:1rxh7D:NNJ64Lvy5sON287nuUPqizLahRcHKxrxHuaR19iaPfY', '2024-05-03 11:18:51.413279'),
('hxxdid0r5n1uqzlno6g9bqc31g7zbwg8', '.eJxVjEEOwiAQRe_C2hAYpIBL9z0DGZhBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4kbgIbcTpd0yYH9x2Qndst1nmua3LlOSuyIN2Oc7Ez-vh_h1U7PVb-4HAkykaA2kGAxbIOSSPVlnOylvHOXgAc-bAAZJipYodSoZkQYF4fwD9zzei:1rY1RZ:jZX9lZi7OOgUjUL1TXOc-BQC9gunU29fqvAE63ec9fU', '2024-02-22 15:45:45.631407'),
('i9lto4e1j1aj9irg0rq66ovymm5b7jjh', '.eJxVjDkOwjAQRe_iGlmzxEso6XOGaGIPJIBsKUuFuDtESgHtf-_9l-llW8d-W3Tup2zOBhtz-h0HSQ8tO8l3KbdqUy3rPA12V-xBF9vVrM_L4f4djLKM35rAIbskHiHFTEF9VK--AfSpyY6EAjlgaq9BmbllwAEBXJQogTiY9wfQ5TY-:1rcfsM:h0Lmp-RHr-xuG2i0rSb6rJVdGEsw7wh93RFEyq-0Lds', '2024-03-06 11:44:38.084949'),
('idmxooumzuofgs599dzf37jg3w4bokcg', '.eJxVi7sOwjAMAP8lM0KJgxPKiNTviOzYIRElQx8T4t8pGx3vTvc2iba1pm3ROTUxN-OCOf1LpvzU_iuT0txbf5zHF7XpvvuxywGOZ6Wl7pty9lBcAbBIHmwmYOuCh-jR0eACW-SikW3QmEEwlCs45Cgqw0XQfL4cazTS:1rQKgp:eLa_6Z7fTbuh9HeLBSnCHfAr3b38FEubI7-dc6iWQ7w', '2024-02-01 10:41:43.583236'),
('iyzifp5jk93fln8wk8qsyt827349lm6g', '.eJxVjEEOwiAQRe_C2hAYpIBL9z0DGZhBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4kbgIbcTpd0yYH9x2Qndst1nmua3LlOSuyIN2Oc7Ez-vh_h1U7PVb-4HAkykaA2kGAxbIOSSPVlnOylvHOXgAc-bAAZJipYodSoZkQYF4fwD9zzei:1rkFbY:cepUphkCq49yeD7BOQekAZ7caEACUSEKT-POqujjee4', '2024-03-27 09:18:36.450312'),
('jcx5ic6ynj187bolzvh76w3vd6ormwa7', '.eJxVjDkOwjAQRe_iGlmzxEso6XOGaGIPJIBsKUuFuDtESgHtf-_9l-llW8d-W3Tup2zOBhtz-h0HSQ8tO8l3KbdqUy3rPA12V-xBF9vVrM_L4f4djLKM35rAIbskHiHFTEF9VK--AfSpyY6EAjlgaq9BmbllwAEBXJQogTiY9wfQ5TY-:1rc2Eb:ItD1NacPmbhc8SRWtLDMgDM1Zabt1OlSEjoXpxJN2kU', '2024-03-04 17:24:57.421468'),
('jfkxlufzz9j83akany0cqer9ln1zvent', 'e30:1rNTpv:S-0SFvrJpPCwXoV0th8Ddk4-uiBwS2J72nBgitYkTws', '2024-01-24 13:51:19.226610'),
('jh8ltcrxmxtrab9jsl6lkhg4hvz39ylm', '.eJxVi7sOwjAMAP8lM0KJgxPKiNTviOzYIRElQx8T4t8pGx3vTvc2iba1pm3ROTUxN-OCOf1LpvzU_iuT0txbf5zHF7XpvvuxywGOZ6Wl7pty9lBcAbBIHmwmYOuCh-jR0eACW-SikW3QmEEwlCs45Cgqw0XQfL4cazTS:1rQKgq:JWQ8h8xDrSUjIMu6s3tRULy76GyZHNy5gWPD9vcweks', '2024-02-01 10:41:44.797824'),
('k43okm3qmvb7uxdse9i6ni9g13u6sivy', '.eJxVjDsOwjAQRO_iGlne-BtK-pzB2vVaOIBsKU4qxN1JpBQw5bw38xYRt7XEreclziyuAry4_JaE6ZnrQfiB9d5kanVdZpKHIk_a5dQ4v26n-3dQsJd9TeCVoZGDsZAgOQ5ImodskAejQgpJ60BOOeCMZEGPzoC3ezT57Fl8vgJWN58:1ra88w:hN3bO821rOOZ_o3LLHFeGcrRwzik8EO7mVWrsFcoYW0', '2024-02-28 11:19:14.629776'),
('lym5arpw6a26y8frrwnwo6n4tv4zeshh', '.eJxVjDsOwjAQBe_iGln-Rg4lPWewdr27OIAcKU4qxN0hUgpo38y8l8qwrTVvnZc8kTqrGNTpd0QoD247oTu026zL3NZlQr0r-qBdX2fi5-Vw_w4q9PqtEdH5EQjsANZzEhBxYxBX0AB58Nag8TGRMJcwiEF2lmxBiwmjgHp_AEI-Obo:1sXCrT:9hHmpZmkrvo9qr66GIDGhRAv6H7VLIbThmHXow6MBEI', '2024-08-09 04:47:23.086938'),
('mozq1yp2mbqd1ulv4dd8dvgwvcbanbjl', '.eJxVjDsOwjAQRO_iGlne-BtK-pzB2vVaOIBsKU4qxN1JpBQw5bw38xYRt7XEreclziyuAry4_JaE6ZnrQfiB9d5kanVdZpKHIk_a5dQ4v26n-3dQsJd9TeCVoZGDsZAgOQ5ImodskAejQgpJ60BOOeCMZEGPzoC3ezT57Fl8vgJWN58:1raE0P:gpLHyqqP38_UrYRTa2WL5wWcK4ONcTD6h7T1CuiU9tA', '2024-02-28 17:34:49.024745'),
('mpoxx5gw66h7ud7nloymj1v9qoabgw62', '.eJxVjEEOwiAQRe_C2hCY0jK4dO8ZCMyAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8zOIstDj9bjHQI9Ud8D3UW5PU6rrMUe6KPGiX18bpeTncv4MSevnWCjUwqcwa0URjHALnESwxsdKQg4kujYQTGRc0K5ysiQDWDqAHmwfx_gDaBTdB:1retUD:FZVRLypXhjXmcB2yjWMJkKSePno0dLvi7qfec7tN0tc', '2024-03-12 14:40:53.338145'),
('mtycwo3xslgqt2xsspu4izme34wcab1g', '.eJxVjMsOwiAQRf-FtSHCMGFw6d5vIMNLqgaS0q4a_12bdKHbe865m_C8LtWvI89-SuIikMTpdwwcn7ntJD243buMvS3zFOSuyIMOeespv66H-3dQedRvHUgpPmdCxMJkFBIkmwvbYizFgkYjsAFXLFjnKAFoThBAK3QRWIv3B_nGN14:1sCdGw:0QFBN4nlBPrSnShZoVGu6D6MBVNanzjbAdCi8vEPb7E', '2024-06-13 16:14:38.810837'),
('n4g1tihybxuchefpheah4wbhtmk55544', '.eJxVjDsOwjAQBe_iGlnrbwwlfc4Q7a5XOIBsKU4qxN0hUgpo38y8l5pwW8u0dVmmOauLCladfkdCfkjdSb5jvTXNra7LTHpX9EG7HluW5_Vw_w4K9vKtB0khGSuJIfpogyPwxmXvfDKBLfmYzzgACIuPJrnICE4gghAlYlDvD9V7Ny8:1sZjXF:wn_nV5zMbrQVeEjXBxu_bh_mh2tNhdW7oNPwBIHePkA', '2024-08-16 04:04:57.671533'),
('nqtl509do73laymci9rgc273e5t5g2a1', '.eJxVjMsOwiAURP-FtSFAebp07zcQLtwrVUOT0q6M_64kXWhmN-fMvFhM-1bj3nGNc2FnZhQ7_ZaQ8gPbIOWe2m3heWnbOgMfCj9o59el4PNyuH8HNfX6XfsgFJIk4T2KIIGUNA7EBMbIXKxLCmxRoJEAvKCiXRrJTtuJsgzs_QEG6Dhi:1rwwkE:WHL-Juxid1WH-c8kfOco13PH01R0_UAGd7DLWY6NxBA', '2024-05-01 09:48:02.770892'),
('nr912x146z7tmoy0md9cfrrlmel1my0g', '.eJxVjMsOwiAURP-FtSFAebp07zcQLtwrVUOT0q6M_64kXWhmN-fMvFhM-1bj3nGNc2FnZhQ7_ZaQ8gPbIOWe2m3heWnbOgMfCj9o59el4PNyuH8HNfX6XfsgFJIk4T2KIIGUNA7EBMbIXKxLCmxRoJEAvKCiXRrJTtuJsgzs_QEG6Dhi:1rwMNQ:MaX_EWxrne3gSxtEGiQj7gaHMfQkxcnIGf4h2ev-5S0', '2024-04-29 18:58:04.821686'),
('nvqmly8gdvti9etumr5qrsrn53he0jop', '.eJxVi0sOwiAUAO_C2hhe4YG4NOk5yPtQIVYWrV0Z727d2eXMZN4m0_aqeVvLkpuaqwE0p3_JJI_Sf2UutPTW7-fxSW2-7X7seoDjWWmt--aTDoUhKHkBGi4TijpEm5wlELCI7CJiYBby7GNRFR9j4DSlCMDm8wUqLjUS:1rNVWI:QMZtsJOe8tj0KRZN6w3C-vyk3bx3SZA9YKOG7d6KLKI', '2024-01-24 15:39:10.521862'),
('oej8duc1pwisfisrsimk7bsdw6wxjpxp', '.eJxVjDsOwjAQBe_iGll2_A0lPWewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasjgL68Xpd0SgB7ed5Du02yxpbusyodwVedAur3Pm5-Vw_w4q9Pqt_QjgkApExwbGMBSmCI4xgtUWlYoOVDEmamcC46A9FTaEoXjrI3jx_gArJTib:1rmoqF:hySB81YLr8kSjdd18hXmrmz-fURdPSPsMrHaTjKHKdA', '2024-04-03 11:20:23.065746'),
('osx2x7kkutvofgy73jbzvyw0spb35evw', '.eJxVjDsOgzAQRO_iOrLAH7BTpucM1u56HZNEtoShinL3gESRdKN5b-YtAmxrDlvjJcxRXIVV4vJbItCTy0HiA8q9SqplXWaUhyJP2uRUI79up_t3kKHlfU2oHTjk5GA0jJ11g2bVY--T7ZDYGec52chGRxrJkCfaMyUAS35Q4vMFNEw5Zw:1sPbjM:y00mDn2tOCb0XBNHfgEmuD48K59WU6tkgYsuRo365ro', '2024-07-19 05:43:36.056030'),
('owntkbt9yd31o8z0ve7klzlk1idojvym', '.eJxVjDkOwjAQRe_iGlmzxEso6XOGaGIPJIBsKUuFuDtESgHtf-_9l-llW8d-W3Tup2zOBhtz-h0HSQ8tO8l3KbdqUy3rPA12V-xBF9vVrM_L4f4djLKM35rAIbskHiHFTEF9VK--AfSpyY6EAjlgaq9BmbllwAEBXJQogTiY9wfQ5TY-:1raTfq:iaYwCqpPdfNxuVC89CSrFEEmWaXrhxqIe9rHzc5dVw0', '2024-02-29 10:18:38.633414'),
('p02g0dio0vgti16km72ijgw3qv0hemjd', '.eJxVjEEOwiAQRe_C2hAYpIBL9z0DGZhBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4kbgIbcTpd0yYH9x2Qndst1nmua3LlOSuyIN2Oc7Ez-vh_h1U7PVb-4HAkykaA2kGAxbIOSSPVlnOylvHOXgAc-bAAZJipYodSoZkQYF4fwD9zzei:1rjzEy:GslPYNmyfCpeqzB3aX9QaRgqvDxCX6i0LUQEi6mwjgE', '2024-03-26 15:50:12.868644'),
('ppf6kc10f57wl3ss5qj034hc3tttv4is', '.eJxVjEEOwiAQRe_C2hBnBoq4dO8ZyACDVA1NSrsy3l2bdKHb_977LxV4XWpYu8xhzOqsANXhd4ycHtI2ku_cbpNOU1vmMepN0Tvt-jpleV529--gcq_fWoophEfJBE7IcUqU2BpjE0vkOKDAyXghCy4OQIiQvUUfgYoD41m9PxvcN_I:1rjYZx:1BsyWbWc7aiUuriZ15IKap1wP1VbvK4Y9t8DNeIz5NE', '2024-03-25 11:22:05.885265'),
('qjbf5qr2wfd7oiyihtwd66sg4jl6jy3k', '.eJxVjDkOwjAQRe_iGlmzxEso6XOGaGIPJIBsKUuFuDtESgHtf-_9l-llW8d-W3Tup2zOBhtz-h0HSQ8tO8l3KbdqUy3rPA12V-xBF9vVrM_L4f4djLKM35rAIbskHiHFTEF9VK--AfSpyY6EAjlgaq9BmbllwAEBXJQogTiY9wfQ5TY-:1rc2lM:qv-P3GIaCq2oJ6TtBHVw-u_4ps4y5vje80qP4OElO9Y', '2024-03-04 17:58:48.693808'),
('qzmkx22n8cc6o6wis8o3brh82wuug715', '.eJxVjEsOwjAMBe-SNYpIG6cJS_Y9Q2THNi2gRupnhbg7VOoCdk9vRvMyGbd1yNsicx7ZXExnTr8fYXnItAO-43SrttRpnUeyu2IPuti-sjyvh_sXGHAZ9qxXjklTEApnihRaByGCE8DgPBKQ6zptRQH4u0W14ZRIPGBpGmXz_gDqMzh-:1raUBa:1AgRs4gUqo8SRgkHKD7K4QHtC8QTDb7iW2mPkC91lHM', '2024-02-29 10:51:26.320757'),
('r01ugoryoh6c07517e83y0323iypszxf', '.eJxVi8EOgjAQBf-lZ2OWLkutRxO-o9lHW9uIPYCcjP8u3uQ4M5m3Cbq9StjWtIQazdWIOf076PRI7RfmpEur7X4en1rn2-7HFg9wPIuuZd-ssNXoSCwAEkL03COxy5wBS-g6sQ6pjxDiwXHUy0CUcuchfoL5fAH9-TTJ:1rN4rl:PYiy305DZ7cCix1yXRMTb4-4Bi_nAA8hvfryi2Dw7SI', '2024-01-23 11:11:33.462870'),
('rho7axfnl3amktns4fpwb913q2nu5xpo', '.eJxVUcuSojAU_RfX0xYJgjo7H7QGDbQQBNlYkKSbNyrYQKbm3yc6LmYWqUruveeRc3-NztG9Tc73ht_OKRv9HIHJ6Me_xTiiOa8eHZZF1Vc9pnXV3tJ4_BgZv7rNGNeMF8vX7H8ESdQkEg0VDagajXSg0BmDU67PuM71iQJ0OmEajOAUaooK559TrqrqXFVADBRFm0WzaArVqSQVdV2eI0p505zbWipJWj6YgqVIR9miw2t5XNSg8r0JB1nLE2IRY0Bpl_6dQXe8evTbS7h6vge8tnK8QXDvI4Ez2lprPLFckNgkH_a-mVvQ6LEIUyxyFafmfCwFYRig1M7yhxCI_ENqp0iEmdGfMqfAGRKWcBJpRrPX3mCv6YDFYbDIscTQ6OynAes73HgSZ674pq9dzwN-cIl4wVonTxzi0d6D84TljhIfi-5UOR9hYaT7lXmh0obE6TG5ZFJbjzcUhrmhnoTpcmMOQ-XYHiASRClWMgSpxe6xDAOvZAjbogvd131T5CirO8mZsOcfzJptnY6K-nv_0A6cel9dvmOo3FmAH9qvv5q-52sfGITH4_F9axWWOGSM2GR5dYNEfYQdl2YpuXtLGL1F8GATpEl8wbcLmZuhYmIALE4APzMsEiaXgQntMfHkEvLBdrv05D_9pV5pQVw5t5CE3nEAIg6KgG0XIqpMeHDlQm74arqtQb_83R1t6FBl5e7qnleqxVMlubqTOLYTavd7271eIAFu7k-NMpuBJZ_6wdvupG-_bvemqqKluft8O2W32Xm5GP3-AxT_DO0:1rphrQ:Z-8bcfNq3gewFX-myyvjhQSJsrvUR1-zAd1Hy1mhPEg', '2024-04-11 10:29:32.055014'),
('rkx9nmyweentnxlpwvc81x9dz9fya8eu', '.eJxVjEsOwjAMBe-SNYpIG6cJS_Y9Q2THNi2gRupnhbg7VOoCdk9vRvMyGbd1yNsicx7ZXExnTr8fYXnItAO-43SrttRpnUeyu2IPuti-sjyvh_sXGHAZ9qxXjklTEApnihRaByGCE8DgPBKQ6zptRQH4u0W14ZRIPGBpGmXz_gDqMzh-:1rZN7c:tPwsymYtZU8jUU-nhPkdy1M6_91MwQDct2LV3Vt5PLE', '2024-02-26 09:06:44.998054'),
('rxn2e4w8ltw67swxnuzwrkc7p8sqodmn', '.eJxVjDsOwjAQRO_iGlne-BtK-pzB2vVaOIBsKU4qxN1JpBQw5bw38xYRt7XEreclziyuAry4_JaE6ZnrQfiB9d5kanVdZpKHIk_a5dQ4v26n-3dQsJd9TeCVoZGDsZAgOQ5ImodskAejQgpJ60BOOeCMZEGPzoC3ezT57Fl8vgJWN58:1rYPDf:qWgrolKhjvuAASLJU4Hq_SYjJ4mdFxuVEhb6gHzm_OM', '2024-02-23 17:08:59.989125'),
('s2gjdemc0kypbpsqzzvkkaxxfk5v7j19', '.eJxVjM0OwiAQhN-FsyFS_j169xnIwi5SNZCU9mR8d2nSg07mNN_MvFmAbS1h67SEGdmFWc1Ov2GE9KS6E3xAvTeeWl2XOfK9wg_a-a0hva5H9--gQC9jrUBLykjZqiG06AXmSWAyMvrsh8niSKZzdNIjkHMGtXaCDGahEvt8AS_DOPY:1srFks:IPslTszY5Yt5F1WwFrIgYV85S_PLJ64Tnid7W_NMKgI', '2024-10-03 11:55:26.336706'),
('th8ktw9at764m4td2ekms0aaj9oenmpn', '.eJxVi7sOwjAMAP8lM0KJgxPKiNTviOzYIRElQx8T4t8pGx3vTvc2iba1pm3ROTUxN-OCOf1LpvzU_iuT0txbf5zHF7XpvvuxywGOZ6Wl7pty9lBcAbBIHmwmYOuCh-jR0eACW-SikW3QmEEwlCs45Cgqw0XQfL4cazTS:1rQKgq:JWQ8h8xDrSUjIMu6s3tRULy76GyZHNy5gWPD9vcweks', '2024-02-01 10:41:44.597688'),
('ulkvrr8alimnk8akswiriqoim0lt709j', '.eJxVjMsOwiAQRf-FtSEtLTC4dO83kGFmkKqBpI-V8d-1SRe6veec-1IRt7XEbZE5TqzOyhp1-h0T0kPqTviO9dY0tbrOU9K7og-66GtjeV4O9--g4FK-dT8mm1mIsw84jCLgBYgpd-wRAotz4C36HsiycynkPBjqjOtgCAmMen8APqA4vw:1sXDSy:_dk-sxsNzvwT90lEccus8ZDGazc9pM7ON45QX7bv9uY', '2024-08-09 05:26:08.929006'),
('v6lt0kkc5accul828eyryn52sxfjrwlh', '.eJxVjEEOwiAQRe_C2hAYpIBL9z0DGZhBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4kbgIbcTpd0yYH9x2Qndst1nmua3LlOSuyIN2Oc7Ez-vh_h1U7PVb-4HAkykaA2kGAxbIOSSPVlnOylvHOXgAc-bAAZJipYodSoZkQYF4fwD9zzei:1rXhyf:EwK4LdWMO9P4bFIvfkVqpYz-AI7D1w_5A06L9YrlQxw', '2024-02-21 18:58:37.828789'),
('v8i2jvb3qzs00tr7lmjy8xz3hfgwfss0', 'e30:1rNUjq:76Ni3_82BuR54p3DorIsLUkNNSwSSoKPj6r7d-VrRwY', '2024-01-24 14:49:06.713351'),
('vlob3v3i8lxasq1pxp5wisumiml1niio', '.eJxVjMsOwiAURP-FtSFckJdL934D4V5AqgaS0q6M_26bdKHLmXNm3izEdalhHXkOU2IXBuz022GkZ247SI_Y7p1Tb8s8Id8VftDBbz3l1_Vw_w5qHHVbk_ApoUQSCrTTZ3DWZFuc8kVqcKaAAQBPIma7BUWOChppCKw0WCT7fAHMLDdG:1rLJ6h:752VTIFAcr-_Tt-xhO23uYyPo47sOCh5Xr3BAIhDm3s', '2024-01-18 13:59:39.798401'),
('wpu3nicj4n2ax14s77e9ycv0xxgrvfpn', '.eJxVjMsOwiAURP-FtSFAebp07zcQLtwrVUOT0q6M_64kXWhmN-fMvFhM-1bj3nGNc2FnZhQ7_ZaQ8gPbIOWe2m3heWnbOgMfCj9o59el4PNyuH8HNfX6XfsgFJIk4T2KIIGUNA7EBMbIXKxLCmxRoJEAvKCiXRrJTtuJsgzs_QEG6Dhi:1s1PsN:goe0FbzprqlWWp-YhXUnrYHbzrODyaeDLyacwv3xXD0', '2024-05-13 17:42:55.807712'),
('x81uakcp3y1mdofod4ricjvkaszezk3b', '.eJxVjEsOwjAMBe-SNYpIG6cJS_Y9Q2THNi2gRupnhbg7VOoCdk9vRvMyGbd1yNsicx7ZXExnTr8fYXnItAO-43SrttRpnUeyu2IPuti-sjyvh_sXGHAZ9qxXjklTEApnihRaByGCE8DgPBKQ6zptRQH4u0W14ZRIPGBpGmXz_gDqMzh-:1rYKDt:pI6Tas-2qBR3S-0kOl99nvlAj1hOaM73RDRIRlU7hRw', '2024-02-23 11:48:53.859405'),
('y3m7b44nnue3vtc037renc41mdtvupss', 'e30:1rNTpT:B8hyFESA_p3q53qJqhEdEij1OLNOICKm5_a0BznB86s', '2024-01-24 13:50:51.450567'),
('y3yffdvxbsk64ugf1y0d245ex378f1bf', '.eJxVjMEOwiAQRP-FsyEIZWE9evcbyC5dpGrapLQn47_bJj3oaZJ5b-atEq1LTWuTOQ29uihv1em3ZMpPGXfSP2i8TzpP4zIPrHdFH7Tp29TL63q4fweVWt3WgOI67y2XEsgBdbhFJpSM4NEZzuSEI0EBDoC2CxHgHK0YNuLQqs8XCh83wA:1sdSw1:nR4zgkNWzcZ4EzoGet2F294ZwKhX0oQR33jaE_ijvb8', '2024-08-26 11:09:57.962459'),
('y4fbfysnjxn78xiryskbzepx5n1h1qce', '.eJxVi0EOwiAQAP_C2RgWygIeTfoOsiwgxMqhtSfTv4s3e5yZzEcE2t817FteQ0viJkBc_l0kfub-C0umtbf-uM4vast9-LmnE5zPSlsdG0ufUlSRpQbjzATOYrbFaV-UAYcFEAA8S8p2gGbHJaJCBqswFiWOL-vyNDA:1rLLsK:OPUVqWsL7Pme7WyNTHZpVpjKQbaB9HgmWH7jJ1Ycdow', '2024-01-18 16:57:00.969636'),
('y8mllctx6gy09jjycqjq1ew9te0hww53', '.eJxVi0sOwiAUAO_C2hhe4YG4NOk5yPtQIVYWrV0Z727d2eXMZN4m0_aqeVvLkpuaqwE0p3_JJI_Sf2UutPTW7-fxSW2-7X7seoDjWWmt--aTDoUhKHkBGi4TijpEm5wlELCI7CJiYBby7GNRFR9j4DSlCMDm8wUqLjUS:1rNS5m:iOBAQIpQh8rULnewGy1PKgUGyX5-nDYA38V7MdQ378w', '2024-01-24 11:59:34.978260'),
('yac4zx74htx4ixja5zcb1dcjn9r3f9po', '.eJxVi0sOwiAUAO_C2hhe4YG4NOk5yPtQIVYWrV0Z727d2eXMZN4m0_aqeVvLkpuaqwE0p3_JJI_Sf2UutPTW7-fxSW2-7X7seoDjWWmt--aTDoUhKHkBGi4TijpEm5wlELCI7CJiYBby7GNRFR9j4DSlCMDm8wUqLjUS:1rNpFA:usvgkfFH7s0RkGdG2wj9FZbGQO5vq1QezQQ_DsmvmdI', '2024-01-25 12:42:48.274162'),
('ymyqcfhj2j4iawcr3zmqdu225s6l1pbn', '.eJxVi7sOwjAMAP8lM0KJgxPKiNTviOzYIRElQx8T4t8pGx3vTvc2iba1pm3ROTUxN-OCOf1LpvzU_iuT0txbf5zHF7XpvvuxywGOZ6Wl7pty9lBcAbBIHmwmYOuCh-jR0eACW-SikW3QmEEwlCs45Cgqw0XQfL4cazTS:1rQKgo:pvdK9L11ir50P9WnJvslLZzbeVpO4Qe3KEWqDyF3S-o', '2024-02-01 10:41:42.923579'),
('yqjxphu6f6o8ur8889cj840fd3kphqpe', '.eJxVizsOwjAQBe_iGiHsrD-hRMo5rLX3GVsEFwmpEHcndKScGc1bRd5eNW4rlthEXZXW6vQvE-cH-q_M4KW3fj9PT27zbfdTlwMcz8pr3TdHIFPAIA8abfHachBDjksYITmEXDJZZlhnQDKYEpLOZkiXJB6D-nwBQlM16w:1rVWv3:x0d1sx5hv0sBAjgDv0kSYe3x2F-PKplDcxhm_icJGCE', '2024-02-15 18:45:53.375042'),
('zdwax9joomcg00sae8einfa4a3bqw9fb', '.eJxVjEEOwiAQRe_C2hBnBoq4dO8ZyACDVA1NSrsy3l2bdKHb_977LxV4XWpYu8xhzOqsANXhd4ycHtI2ku_cbpNOU1vmMepN0Tvt-jpleV529--gcq_fWoophEfJBE7IcUqU2BpjE0vkOKDAyXghCy4OQIiQvUUfgYoD41m9PxvcN_I:1rfuW2:KtAYM3li2gqs9CXYZDqvK8wYz48Vh5qYC6zwVIM46Bw', '2024-03-15 09:58:58.515641');

-- --------------------------------------------------------

--
-- Table structure for table `footer_content`
--

CREATE TABLE `footer_content` (
  `id` bigint(20) NOT NULL,
  `linkname` varchar(100) NOT NULL,
  `linkurl` varchar(100) NOT NULL,
  `order` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `footer_content`
--

INSERT INTO `footer_content` (`id`, `linkname`, `linkurl`, `order`) VALUES
(1, 'NCERT', '/home_sub', '1'),
(2, 'NCERT Solutions', '/home_sub', '1'),
(3, 'NCERT Solutions for Class 12', 'sub/1012', '1'),
(4, 'NCERT Solutions for Class 12 Mathematics', 'subject/104', '1'),
(5, 'NCERT Solutions for Class 12 Physics', 'subject/1214', '1'),
(6, 'NCERT Solutions for Class 12 Chemistry', 'subject/1204', '1'),
(7, 'NCERT Solutions for Class 12 Biology', 'subject/1204', '1'),
(8, 'NCERT Solutions for Class 12 Business Studies', 'subject/1207', '1'),
(9, 'NCERT Solutions for Class 12 Economics', 'subject/1206', '1'),
(10, 'NCERT Solutions for Class 12 Accountancy', 'subject/1209', '1'),
(12, 'NCERT Solutions for Class 12 Hindi', 'subject/1212', '1'),
(13, 'NCERT Solutions for Class 11', 'sub/1011', '1'),
(14, 'NCERT Solutions for Class 11 Mathematics', 'subject/1105', '1'),
(15, 'NCERT Solutions for Class 11 Physics', 'subject/1114', '1'),
(16, 'NCERT Solutions for Class 11 Chemistry', 'subject/1103', '1'),
(17, 'NCERT Solutions for Class 11 Biology', 'subject/1101', '1'),
(18, 'NCERT Solutions for Class 11 Business Studies', 'subject/1115', '1'),
(19, 'NCERT Solutions for Class 11 Economics', 'subject/1116', '1'),
(20, 'NCERT Solutions for Class 11 Financial Accounting', 'subject/1108', '1'),
(21, 'NCERT Solutions for Class 11 English', 'subject/1110', '1'),
(22, 'NCERT Solutions for Class 11 Hindi', 'subject/1112', '1'),
(23, 'NCERT Solutions for Class 10', 'sub/1010', '2'),
(24, 'NCERT Solutions for Class 10 Mathematics', '/subject/1004', '2'),
(25, 'NCERT Solutions for Class 10 Science', '/subject/1003', '2'),
(26, 'NCERT Solutions for Class 10 English', '/subject/1001', '2'),
(27, 'NCERT Solutions for Class 10 sanskrit', '/subject/1005', '2'),
(28, 'NCERT Solutions for Class 10 Economics', '/subject/1002', '2'),
(29, 'NCERT Solutions for Class 9', 'sub/1009', '2'),
(30, 'NCERT Solutions for Class 9 Science', '/subject/902', '2'),
(31, 'NCERT Solutions for Class 9 History', '/subject/904', '2'),
(32, 'NCERT Solutions for Class 9 Social Science', '/subject/907', '2'),
(33, 'NCERT Solutions for Class 9 English', '/subject/901', '2'),
(34, 'NCERT Solutions for Class 9 Hindi', '/subject/903', '2'),
(35, 'NCERT Solutions for Class 8', 'sub/1008', '2'),
(36, 'NCERT Solutions for Class 8 Mathematics', '/subject/802', '2'),
(37, 'NCERT Solutions for Class 8 Science', '/subject/803', '2'),
(38, 'NCERT Solutions for Class 8 English', '/subject/801', '2'),
(39, 'NCERT Solutions for Class 8 Social Science', '/subject/804', '2'),
(40, 'NCERT Solutions for Class 8 Hindi', '/subject/805', '2'),
(46, 'NCERT Solutions for Class 7', '/sub/1007', '3'),
(47, 'NCERT Solutions for Class 7 Mathematics', '/subject/706', '3'),
(48, 'NCERT Solutions for Class 7 Science', '/subject/703', '3'),
(49, 'NCERT Solutions for Class 7 English', '/subject/701', '3'),
(50, 'NCERT Solutions for Class 7 Hindi', '/subject/702', '3'),
(51, 'NCERT Solutions for Class 7 Sanskrit', '/subject/705', '3'),
(52, 'NCERT Solutions for Class 7 Social', '/subject/704', '3'),
(53, 'NCERT Solutions for Class 6', '/sub/1006', '3'),
(54, 'NCERT Solutions for Class 6 Mathematics', '/subject/602', '3'),
(55, 'NCERT Solutions for Class 6 Science', '/subject/603', '3'),
(56, 'NCERT Solutions for Class 6 Social', '/subject/604', '3'),
(57, 'NCERT Solutions for Class 6 Geography', '/subject/605', '3'),
(58, 'NCERT Solutions for Class 6 English', '/subject/606', '3'),
(59, 'NCERT Solutions for Class 6 Hindi', '/subject/601', '3'),
(60, 'NCERT Solutions for Class 6 Sanskrit', '/subject/607', '3'),
(61, 'NCERT Solutions for Class 5', '/subj/1005', '3'),
(62, 'NCERT Solutions for Class 5 English', '/subject/501', '3'),
(63, 'NCERT Solutions for Class 5 Environmental Science', '/subject/502', '3'),
(64, 'NCERT Solutions for Class 5 Hindi', '/subject/503', '3'),
(65, 'NCERT Solutions for Class 4 ', '/subject/1004', '4'),
(66, 'NCERT Solutions for Class 4 Mathematics', '/subject/404', '4'),
(67, 'NCERT Solutions for Class 4 English', '/subject/401', '4'),
(68, 'NCERT Solutions for Class 4 Environmental Science', '/subject/402', '4'),
(69, 'NCERT Solutions for Class 4 Hindi', '/subject/403', '4'),
(70, 'NCERT Solutions for Class 3', '/sub/1003', '4'),
(71, 'NCERT Solutions for Class 3 Mathematics', '/subject/304', '4'),
(72, 'NCERT Solutions for Class 3 English', '/subject/302', '4'),
(73, 'NCERT Solutions for Class 3 Environmental Science', '/subject/301', '4'),
(74, 'NCERT Solutions for Class 3 Hindi', '/subject/303', '4'),
(75, 'NCERT Solutions for Class 2', '/sub/1002', '4'),
(77, 'NCERT Solutions for Class 2 Mathematics', '/subject/203', '4'),
(78, 'NCERT Solutions for Class 2 English', '/subject/201', '4'),
(79, 'NCERT Solutions for Class 2 Hindi', '/subject/202', '4'),
(80, 'NCERT Solutions for Class 1', '/subject/1001', '4'),
(81, 'NCERT Solutions for Class 1 Hindi', '/subject/101', '4');

-- --------------------------------------------------------

--
-- Table structure for table `learnapp_homenav`
--

CREATE TABLE `learnapp_homenav` (
  `id` bigint(20) NOT NULL,
  `nav_name` varchar(200) NOT NULL,
  `nav_url` varchar(100) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `parent_category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learnapp_homenav`
--

INSERT INTO `learnapp_homenav` (`id`, `nav_name`, `nav_url`, `order`, `parent_category_id`) VALUES
(59, 'Home', '/', 1, NULL),
(60, 'Features', '', 2, NULL),
(61, 'Materials', '', 3, NULL),
(62, 'NCERT', '/home_sub', 4, 61),
(63, 'Contact', '/contact', 5, NULL),
(65, 'class1', '/sub/1001', 7, 62),
(66, 'class2', '/sub/1002', 8, 62),
(67, 'class3', '/sub/1003', 9, 62),
(68, 'class4', '/sub/1004', 10, 62),
(69, 'class5', '/sub/1005', 11, 62),
(70, 'class6', '/sub/1006', 12, 62),
(71, 'class7', '/sub/1007', 13, 62),
(72, 'class8', '/sub/1008', 14, 62),
(73, 'class9', '/sub/1009', 15, 62),
(74, 'class10', '/sub/1010', 16, 62),
(75, 'class11', '/sub/1011', 17, 62),
(76, 'class12', '/sub/1012', 18, 62),
(79, 'Hindi', '/subject/101', 21, 65),
(80, 'Maths', '/subject/203', 22, 66),
(81, 'English', '/subject/201', 23, 66),
(82, 'Hindi', '/subject/202', 24, 66),
(83, 'Maths', '/subject/304', 25, 67),
(84, 'English', '/subject/302', 26, 67),
(85, 'Environmental studies', '/subject/301', 27, 67),
(86, 'Hindi', '/subject/303', 28, 67),
(87, 'Maths', '/subject/404', 29, 68),
(88, 'English', '/subject/401', 30, 68),
(89, 'Environmental studies', '/subject/402', 31, 68),
(90, 'Hindi', '/subject/403', 32, 68),
(92, 'English', '/subject/501', 34, 69),
(93, 'Environmental studies', '/subject/502', 35, 69),
(94, 'Hindi', '/subject/503', 36, 69),
(95, 'Maths', '/subject/602', 37, 70),
(96, 'Science', '/subject/603', 38, 70),
(97, 'Social', '/subject/604', 39, 70),
(99, 'Geography', '/subject/605', 41, 70),
(100, 'English', '/subject/606', 42, 70),
(101, 'Hindi', '/subject/601', 43, 70),
(102, 'Sanskrit', '/subject/607', 44, 70),
(103, 'Mathematics', '/subject/706', 45, 71),
(104, 'Science', '/subject/703', 46, 71),
(106, 'English', '/subject/701', 48, 71),
(107, 'Hindi', '/subject/702', 49, 71),
(108, 'Sanskrit', '/subject/705', 50, 71),
(109, 'Social History', '/subject/707', 51, 71),
(110, 'Maths', '/subject/802', 52, 72),
(111, 'Science', '/subject/803', 53, 72),
(112, 'Social and Political Life-2', '/subject/804', 54, 72),
(113, 'English', '/subject/801', 55, 72),
(114, 'Hindi', '/subject/805', 56, 72),
(115, 'Sanskrit', '/subject/806', 57, 72),
(117, 'Science', '/subject/902', 59, 73),
(118, 'Social Science', '/subject/907', 60, 73),
(121, 'English', '/subject/901', 63, 73),
(122, 'Hindi', '/subject/903', 64, 73),
(123, 'History', '/subject/904', 65, 73),
(124, 'Mathematics', '/subject/1004', 66, 74),
(125, 'Science', '/subject/1003', 67, 74),
(130, 'English', '/subject/1001', 72, 74),
(132, 'Sanskrit', '/subject/1005', 74, 74),
(133, 'Economic dev', '/subject/1002', 75, 74),
(135, 'Financial Accounting', '/subject/1108', 77, 75),
(136, 'Chemistry', '/subject/1103', 78, 75),
(137, 'Maths', '/subject/1105', 79, 75),
(138, 'Biology', '/subject/1101', 80, 75),
(139, 'Psycology', '/subject/1107', 81, 75),
(140, 'Geography', '/subject/1106', 82, 75),
(142, 'Hindi', '/subject/1112', 84, 75),
(143, 'Sociology', '/subject/1113', 85, 75),
(144, 'English', '/subject/1110', 86, 75),
(146, 'History', '/subject/1104', 88, 75),
(147, 'Economics', '/subject/1116', 89, 75),
(148, 'Bussiness Studies', '/subject/1115', 90, 75),
(149, 'Home Science', '/subject/1109', 91, 75),
(150, 'Computer Science', '/subject/1111', 92, 75),
(151, 'Physical Edu', '####', 93, 75),
(152, 'Biotechnology', '/subject/1102', 94, 75),
(155, 'Accountancy', '/subject/1209', 97, 76),
(156, 'Sanskrit', '/subject/1217', 98, 76),
(157, 'Hindi', '/subject/1212', 99, 76),
(159, 'Biology', '/subject/1201', 101, 76),
(161, 'Geography', '/subject/1203', 103, 76),
(163, 'Psycology', '/subject/1211', 105, 76),
(164, 'Sociology', '/subject/1208', 106, 76),
(165, 'Chemistry 1 & 11', '/subject/1204', 107, 76),
(167, 'Political Science', '/subject/1205', 109, 76),
(168, 'Economics', '/subject/1206', 110, 76),
(169, 'Bussiness Studies', '/subject/1207', 111, 76),
(170, 'History 1', '/subject/1213', 112, 76),
(171, 'History 2', '/subject/1202', 113, 76),
(173, 'Fees Management', '/display_fee/', 115, 60),
(174, 'Admission Management', '/admission_display', 116, 60),
(175, 'Attendance Management', '/attendmanagedisplay', 117, 60),
(176, 'Payment Management', '/display_paymentfeatures', 118, 60),
(177, 'Exam Management', '/examdisplay', 119, 60),
(178, 'Timetable Management', '/timetable_display', 120, 60),
(179, 'Staff Management', '/staffmanagement', 121, 60),
(182, 'Physics1', 'subject/1114', 122, 75),
(183, 'Library Management', '/display_display', 123, 60),
(184, 'Liveclass Management', '/liveclassmanagedisplay', 124, 60),
(185, 'Pricing\r\n', '/pricing/', 125, NULL),
(186, 'Mathematics', '/subject/908', 0, 73),
(187, 'Mathematics', '/subject/504', 0, 69),
(188, 'English', '/subject/102', 0, 65),
(189, 'Maths', '/subject/103', 0, 65),
(190, 'Sanskrit', '/subject/1117', 0, 75),
(191, 'Political Science', '/subject/1118', 0, 75),
(192, 'Physics 11', '/subject/1119', 0, 75),
(193, 'Social Economics', '/subject/906', 0, 73),
(194, 'Sanskrit', '/subject/905', 0, 73),
(195, 'Social and Political Life-2', '/subject/704', 0, 71),
(196, 'Physics 1 & 11', '/subject/1214', 0, 76),
(197, 'Biotechnology', '/subject/1215', 0, 76),
(198, 'Home Science 1', '/subject/1216', 0, 76),
(199, 'History - 111', '/subject/1218', 0, 76),
(200, 'hindi', '/subject/1007', 0, 74),
(201, 'Social Science', '/subject/1003', 0, 74),
(202, 'Social and Political Life', '/subject/608', 0, 70),
(204, 'social and political life ', 'subject/704', 0, 71);

-- --------------------------------------------------------

--
-- Table structure for table `learning_admindrop`
--

CREATE TABLE `learning_admindrop` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `parent_category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_admindrop`
--

INSERT INTO `learning_admindrop` (`id`, `title`, `url`, `icon`, `parent_category_id`) VALUES
(1, 'Dashboard', '#', 'fa fa-th', NULL),
(2, 'View Schools ', '/retrieve', 'fa fa-school', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `learning_adminhod`
--

CREATE TABLE `learning_adminhod` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admin_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_adminphoto`
--

CREATE TABLE `learning_adminphoto` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_adminphoto`
--

INSERT INTO `learning_adminphoto` (`id`, `image`) VALUES
(2, 'images/portal_for_students_and_parents.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `learning_admissioncards`
--

CREATE TABLE `learning_admissioncards` (
  `id` bigint(20) NOT NULL,
  `images` varchar(100) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_admissioncards`
--

INSERT INTO `learning_admissioncards` (`id`, `images`, `heading`, `content`) VALUES
(1, 'images/-admission-management_1_XHGPDYU.webp', 'Payment Processing', 'Admissions require various types of payment processes such as form fees, registration fees, enrollment fees, etc. It is a tough task to maintain records of all the payments. Also, it is prone to human error. Admission Management System can help in streamlining payment processes which will be error-free and less time taking.'),
(2, 'images/online_college_admission.jpg', 'Applicant Status Setting', 'Admission Management System provides features by which applicants can check their application status. Some education ERP, for example, Academia, provides an applicant portal exclusively for applicants, they can it use to check application status, upload and download documents, fee payment, etc. anytime they want.'),
(3, 'images/admiss.jpg', 'Cost-effective', 'The automation of obligations, along with statistics entry, file verification, and verbal exchange, reduces the workload on the administrative body of workers, letting them recognize more essential aspects of college control.');

-- --------------------------------------------------------

--
-- Table structure for table `learning_admissioncarl`
--

CREATE TABLE `learning_admissioncarl` (
  `id` bigint(20) NOT NULL,
  `images` varchar(100) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_admissioncarl`
--

INSERT INTO `learning_admissioncarl` (`id`, `images`, `content`) VALUES
(2, 'images/blog-banner-2-2-980x340_59FbWH8.jpg', 'Using the admission management system, admins can collect relevant documentation from students. Students can use the dashboard to upload their information. To add more to the table, the admission management system has no restrictions when it comes to managing applicants. ');

-- --------------------------------------------------------

--
-- Table structure for table `learning_admissioncont`
--

CREATE TABLE `learning_admissioncont` (
  `id` bigint(20) NOT NULL,
  `images` varchar(100) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `content1` longtext NOT NULL,
  `heading1` longtext NOT NULL,
  `images1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_admissioncont`
--

INSERT INTO `learning_admissioncont` (`id`, `images`, `heading`, `content`, `content1`, `heading1`, `images1`) VALUES
(1, 'images/fessadmis.jpg', 'Online Application Forms ', 'Application Form enable students to submit applications electronically with customizable fields. They securely collect and store data, automate confirmations and updates, and streamline the admissions process by reducing paperwork and improving efficiency.', 'It streamlines the admissions process by providing real-time status updates, a centralized dashboard, and review workflows. It ensures all required documents are tracked and complete, automates notifications for status changes and deadlines, and maintains historical records for efficiency and transparency.', 'Application Tracking', 'images/admiss-1app.png'),
(2, 'images/docu_admiss.jpg', 'Selection and Enrollment', 'Selection and Enrollment simplifies reviewing applications, making decisions, and managing student admissions. It automates offer communications, tracks confirmations, and updates records, ensuring a smooth transition from application to enrollment.', 'Reporting and Analytics provide insights into application trends and admissions data. They generate detailed reports on statistics and performance, helping to identify patterns and make data-driven decisions. This feature enhances strategic planning and improves the efficiency of the admissions process.', 'Reporting and Analytics', 'images/track.png');

-- --------------------------------------------------------

--
-- Table structure for table `learning_applogo`
--

CREATE TABLE `learning_applogo` (
  `id` bigint(20) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_attendancemenu`
--

CREATE TABLE `learning_attendancemenu` (
  `id` bigint(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `urls` varchar(700) NOT NULL,
  `icon` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_attendancemenu`
--

INSERT INTO `learning_attendancemenu` (`id`, `name`, `urls`, `icon`) VALUES
(1, 'Teacher attendance', '/Teacher_Attendance_display', 'fa fa-list-alt'),
(2, 'Class attendance', '#', 'fa fa-graduation-cap'),
(3, 'Set holiday Calendar', '#', 'fa fa-calendar'),
(4, 'Leave Management', '/Leave_Management/', 'fa fa-calendar-check-o');

-- --------------------------------------------------------

--
-- Table structure for table `learning_attendancerecord`
--

CREATE TABLE `learning_attendancerecord` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `percentage` decimal(5,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `student_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_attendancerecord`
--

INSERT INTO `learning_attendancerecord` (`id`, `date`, `percentage`, `status`, `student_id`) VALUES
(1, '2024-07-25', '0.23', 'Absent', 12);

-- --------------------------------------------------------

--
-- Table structure for table `learning_attendmanagecards`
--

CREATE TABLE `learning_attendmanagecards` (
  `id` bigint(20) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `field` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_attendmanagecards`
--

INSERT INTO `learning_attendmanagecards` (`id`, `image3`, `field`) VALUES
(1, 'images/carousel1.jpg', 'In addition to facilitating easy parent-teacher contact, school mobile apps can also be used to track student attendance. For the three main reasons listed below, integrating a school app with educational ERP software is a terrific method to lessen a teacher\'s workload.'),
(2, 'images/carduser.jpg', 'User-friendly: The interface is extremely straightforward. Data recovery and storage are safe and quick. Furthermore, graphic reports are offered, which simplify and make data interpretation understandable. Fast Report Production: It is easy to generate a variety of reports rapidly, including attendance records broken down by student, day, class, month, and much more. Reports from the past and present are easily accessible. Zero Errors: Automating attendance makes it possible to reduce paperwork and eliminate errors.'),
(3, 'images/verygingcarou.png', 'Over the course of years, the online attendance management software records student attendance and provides data and reports for a large number of students based on the provided information. Admins, teachers, and students can all access the program according to their positions and responsibilities. Parents and students have access to the attendance record, the number of days they were absent along with the dates, and absentee notifications. Admin: Admin ensures the system is operating properly and provides maximum security and safety for the data created on a daily basis. Faculty: The faculty has access to the students who are in default and can create attendance records in all the forms needed.');

-- --------------------------------------------------------

--
-- Table structure for table `learning_attendmanagecarousel`
--

CREATE TABLE `learning_attendmanagecarousel` (
  `id` bigint(20) NOT NULL,
  `image2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_attendmanagecarousel`
--

INSERT INTO `learning_attendmanagecarousel` (`id`, `image2`) VALUES
(1, 'images/attendancemanage.png');

-- --------------------------------------------------------

--
-- Table structure for table `learning_attendmanagecontent`
--

CREATE TABLE `learning_attendmanagecontent` (
  `id` bigint(20) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `heading` longtext NOT NULL,
  `content` longtext NOT NULL,
  `content1` longtext NOT NULL,
  `heading1` longtext NOT NULL,
  `image2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_attendmanagecontent`
--

INSERT INTO `learning_attendmanagecontent` (`id`, `image1`, `heading`, `content`, `content1`, `heading1`, `image2`) VALUES
(1, 'images/automated tracking.jpg', 'Automatic Tracking', 'This tool seamlessly records student attendance based on their logins, participation in online activities, or engagement in live sessions. With automated tracking, you no longer need to manually log attendance, as the system captures and records data in real-time. This ensures accuracy and efficiency, freeing up valuable time for both instructors and students.', 'Track individual and class-wide attendance patterns, analyze frequency of absences, and identify potential issues with engagement. The reports can be customized to fit your needs, whether you require weekly summaries, end-of-term overviews, or comparisons between different classes or sections. With these insights at your fingertips, you can make informed decisions to enhance student support and optimize your course delivery.', 'Comprehensive Reports', 'images/comprehensive.png'),
(2, 'images/notifications and alerts.jpg', 'Notifications & Alerts', 'Sends automatic reminders about upcoming classes, assignments, and deadlines to both students and instructors. It also provides real-time alerts for attendance issues, such as missed sessions or patterns of frequent absences. By keeping everyone updated with timely notifications, this feature helps ensure that students remain engaged, and instructors can address any attendance concerns promptly.', 'Review attendance history to identify long-term trends, track student engagement across semesters, and assess the impact of attendance on academic performance. By examining historical data, you can make informed decisions about course adjustments, identify recurring issues, and implement strategies to improve student participation and retention.', 'Historical Data', 'images/historical data.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `learning_card`
--

CREATE TABLE `learning_card` (
  `id` bigint(20) NOT NULL,
  `cardtitle` varchar(100) NOT NULL,
  `cardcontent` longtext NOT NULL,
  `cardphoto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_card`
--

INSERT INTO `learning_card` (`id`, `cardtitle`, `cardcontent`, `cardphoto`) VALUES
(1, 'Access to Information', 'Efficient library management ensures that users have access to a wide range of information resources, including books, journals, electronic databases, and multimedia materials, facilitating research, education, and lifelong learning.', 'images/library1.png'),
(2, 'Community Engagement', 'Libraries serve as community hubs, offering programs and services that promote literacy, lifelong learning, creativity, and civic engagement, thereby contributing to the social and cultural vitality of the community.', 'images/library2.jpg'),
(3, 'Cultural Enrichment', 'Libraries offer cultural programs, exhibitions, and events that promote diversity, celebrate artistic expression, and foster appreciation for literature, music, art, and other forms of cultural heritage.', 'images/library3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `learning_cardfee`
--

CREATE TABLE `learning_cardfee` (
  `id` bigint(20) NOT NULL,
  `cardtitle` varchar(100) NOT NULL,
  `cardcontent` longtext NOT NULL,
  `cardphoto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_cardfee`
--

INSERT INTO `learning_cardfee` (`id`, `cardtitle`, `cardcontent`, `cardphoto`) VALUES
(1, 'Track All Payments\n', 'Complete visibility on all payment transactions. The Tracker automatically provides status updates to all  banks involved in any  payment chain and allows them to confirm when a payment has been completed. The Tracker also facilitates more accurate reconciliation of payments and invoices.', 'images/track all payemts new.jfif'),
(2, 'All Fee Types', 'Set up all types of fee collection through LMS App  School Fees management system to automate and streamline the fees processes. Staff can keep a real-time track on fees collection and pending fees. Generate various fee structure, customized reports, and fees receipt, also send instant alerts to mobile number.', 'images/ALL FEE TYPES.jpg'),
(3, 'Easy Registration', 'Registration takes less than 2 mins registration process for voting. Registration usually notinvolves any paperwork and waiting in line.', 'images/registration.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `learning_carditems`
--

CREATE TABLE `learning_carditems` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(500) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_carditems`
--

INSERT INTO `learning_carditems` (`id`, `title`, `content`, `image`) VALUES
(1, 'Fee Payment System', 'The student fees collection software enables the administrative department to auto-calculate fees for various categories of students considering factors like merit, scholarship, concessions, religion, caste, etc. Get a detailed payment summary with perfect discount and installment calculations.', 'paym.png'),
(2, 'Student Fee Records', 'All fee records of students in one place, get status of records and take necessary action.Get a well-organized list of all fee records that exceed the payment due date.Get status (Paid/Unpaid) of all fee records at a glance.Get the complete history of fee records and fail-transaction records.', 'feer.png'),
(3, 'Fee Notification', 'The online fees payment software sends auto-generated pending fees-related reminders & notifications to parents every month or at a pre-defined time. Also, the fees software generates an e-receipt after every successful transaction & sends it to their registered email ID or mobile.', 'feen.png');

-- --------------------------------------------------------

--
-- Table structure for table `learning_cardpaymentfeatures`
--

CREATE TABLE `learning_cardpaymentfeatures` (
  `id` bigint(20) NOT NULL,
  `cardtitle` varchar(100) NOT NULL,
  `cardcontent` longtext NOT NULL,
  `cardphoto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_cardpaymentfeatures`
--

INSERT INTO `learning_cardpaymentfeatures` (`id`, `cardtitle`, `cardcontent`, `cardphoto`) VALUES
(1, 'Enhanced Financial Tracking', 'Enhanced Financial Tracking in an LMS provides real-time updates on payments, detailed and customizable reports, and automated reconciliation of transactions. It helps with accurate forecasting and budgeting, offers insights into payment trends, and supports better decision-making.', 'images/enhanced finance.avif'),
(2, 'Fee Structure', 'How costs are organized, including course fees, subscriptions, and certifications. It covers pricing models like one-time payments or installments and may include discounts and additional charges. This clarity helps users understand and manage their expenses.', 'images/fee structure.jpg'),
(3, 'Billing', 'Generate bills or invoices for each student based on the fee structure. Include the due date for payment and a breakdown of the fees.', 'images/Billing.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `learning_cards`
--

CREATE TABLE `learning_cards` (
  `id` bigint(20) NOT NULL,
  `cardtitle` varchar(100) NOT NULL,
  `cardcontent` longtext NOT NULL,
  `cardphoto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_cards`
--

INSERT INTO `learning_cards` (`id`, `cardtitle`, `cardcontent`, `cardphoto`) VALUES
(1, 'Centralized Management', 'Provides a unified platform for managing all scheduling needs, simplifying coordination and minimizing scheduling conflicts between departments.', 'images/centralized management.jpg'),
(2, 'Data-Driven Insights', 'Collects and analyzes data on scheduling patterns, resource use, and student attendance, aiding in strategic planning and improving operational efficiency.', 'images/datadriven.jpg'),
(3, 'Enhanced Flexibility', 'Adapts to various scheduling needs, including changes in academic programs and special events, providing a versatile management system.', 'images/enhanced flexiility.png');

-- --------------------------------------------------------

--
-- Table structure for table `learning_carousel_img`
--

CREATE TABLE `learning_carousel_img` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_carousel_img`
--

INSERT INTO `learning_carousel_img` (`id`, `image`) VALUES
(1, '10.png'),
(2, '11.png'),
(3, '12.png'),
(4, '13.png'),
(5, '14.png');

-- --------------------------------------------------------

--
-- Table structure for table `learning_cimage`
--

CREATE TABLE `learning_cimage` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_cimage`
--

INSERT INTO `learning_cimage` (`id`, `image`) VALUES
(1, 'images/library8.png');

-- --------------------------------------------------------

--
-- Table structure for table `learning_class`
--

CREATE TABLE `learning_class` (
  `id` bigint(20) NOT NULL,
  `name` varchar(120) NOT NULL,
  `school_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_class`
--

INSERT INTO `learning_class` (`id`, `name`, `school_id_id`) VALUES
(1, '1', 15),
(2, '2', 15),
(3, '3', 15),
(4, '4', 15),
(5, '5', 15);

-- --------------------------------------------------------

--
-- Table structure for table `learning_cls_name`
--

CREATE TABLE `learning_cls_name` (
  `id` bigint(20) NOT NULL,
  `classes` varchar(200) NOT NULL,
  `school_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_cls_name`
--

INSERT INTO `learning_cls_name` (`id`, `classes`, `school_id_id`) VALUES
(1, '1', 6),
(2, '2', 6),
(3, '1', 7),
(4, '4', 7),
(7, '5', 6),
(8, '10', 6),
(9, '1', 10),
(10, '3', 6),
(11, '1', 11),
(12, '2', 11),
(13, '3', 11),
(14, '4', 11),
(15, '5', 11),
(16, '13', 6),
(17, '12', 6),
(18, '8', 6),
(19, '14', 6),
(20, '1', 15),
(21, '2', 15),
(22, '3', 15),
(23, '4', 15),
(25, '1', 17),
(26, '2', 17),
(27, '3', 17),
(28, '1', NULL),
(29, '2', NULL),
(30, '4', NULL),
(31, '7', 15),
(32, '8', 15),
(33, '9', 15),
(34, '9', 17),
(35, '10', 15),
(36, '5', 15);

-- --------------------------------------------------------

--
-- Table structure for table `learning_compose_message`
--

CREATE TABLE `learning_compose_message` (
  `id` bigint(20) NOT NULL,
  `MessageType` varchar(100) NOT NULL,
  `Message` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL,
  `studentname_id` bigint(20) DEFAULT NULL,
  `teachername_id` bigint(20) DEFAULT NULL,
  `schoolid_id` int(11) DEFAULT NULL,
  `is_status` varchar(100) NOT NULL,
  `read1` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_compose_message`
--

INSERT INTO `learning_compose_message` (`id`, `MessageType`, `Message`, `date`, `studentname_id`, `teachername_id`, `schoolid_id`, `is_status`, `read1`) VALUES
(3, '0', 'hgfd', '2024-02-08 18:47:31.573778', NULL, 4, 7, '0', 0),
(4, '1', 'ytre', '2024-02-09 09:51:35.661308', 3, NULL, 6, '0', 0),
(6, '0', 'rg', '2024-02-14 09:48:02.654302', NULL, 3, 6, '0', 0),
(7, '1', 'give the home work', '2024-03-01 09:05:18.113237', NULL, 2, 6, '0', 1),
(8, '1', 'give the home work', '2024-03-01 09:05:18.113237', NULL, 3, 6, '0', 0),
(9, '1', 'give the home work', '2024-03-01 09:05:18.113237', NULL, 8, 6, '0', 0),
(10, '0', 'fee remainder', '2024-03-01 09:13:22.090143', 2, NULL, 6, '0', 1),
(11, '0', 'fee pay', '2024-03-01 09:16:38.232949', 2, NULL, 6, '0', 0),
(12, '3', 'today is holiday', '2024-03-01 14:40:31.192790', NULL, 2, 6, '0', 1),
(13, '3', 'today is holiday', '2024-03-01 14:40:31.198346', NULL, 3, 6, '0', 0),
(14, '3', 'today is holiday', '2024-03-01 14:40:31.206325', NULL, 8, 6, '0', 0),
(15, '3', 'today is holiday', '2024-03-01 14:40:31.209318', 2, NULL, 6, '0', 0),
(16, '0', 'pay fee', '2024-04-01 12:22:58.234249', 2, NULL, 6, '0', 0),
(17, '0', 'pay fee', '2024-04-01 12:22:58.253849', 5, NULL, 6, '0', 0),
(18, '0', 'pay fee', '2024-04-01 12:22:58.257142', 6, NULL, 6, '0', 0),
(19, '0', 'pay fee', '2024-04-01 12:22:58.260133', 7, NULL, 6, '0', 0),
(20, '0', 'pay fee', '2024-04-01 12:22:58.269651', 8, NULL, 6, '0', 0),
(21, '0', 'pay fee', '2024-04-01 12:22:58.272147', 9, NULL, 6, '0', 0),
(22, '0', 'pay fee', '2024-04-01 12:22:58.275175', 10, NULL, 6, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `learning_contactinfo`
--

CREATE TABLE `learning_contactinfo` (
  `id` bigint(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_contactinfo`
--

INSERT INTO `learning_contactinfo` (`id`, `address`, `phone`, `email`) VALUES
(1, 'D.no:21-17-878,Amaravathi Road, Malleswari Paradise, Guntur, AndhraPradesh-522007', '+91 9888921111', 'info@Developtrees.com');

-- --------------------------------------------------------

--
-- Table structure for table `learning_contactinfo2`
--

CREATE TABLE `learning_contactinfo2` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `phone_hours` varchar(50) NOT NULL,
  `email_addresses` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_contactinfo2`
--

INSERT INTO `learning_contactinfo2` (`id`, `address`, `city`, `state`, `zip_code`, `country`, `phone_number`, `phone_hours`, `email_addresses`) VALUES
(1, 'D.no:21-17-878,Amaravathi Road, Malleswari Paradise', 'Guntur', 'Andhra Pradesh', '522007', 'India', '+91 9888921111', '9am - 6pm', 'info@Developtrees.com');

-- --------------------------------------------------------

--
-- Table structure for table `learning_contactmessage`
--

CREATE TABLE `learning_contactmessage` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_contactmessage`
--

INSERT INTO `learning_contactmessage` (`id`, `name`, `email`, `subject`, `message`, `timestamp`) VALUES
(2, 'rakesh', 'rakesh@gmail.com', 'rtgt', 'rgtr', '2024-02-08 12:34:39.554464'),
(3, 'Sridhar Nidamanuri', 'sridharnidamanuri@gmail.com', 'hi', 'want connect call', '2024-04-10 12:07:17.419091'),
(4, 'pavan', 'kamal@gmail.com', 'ihsioafhsdn', 'weruejknrkjtueojt,me', '2024-07-10 06:39:58.406812'),
(5, 'Telugu', 'kamal@gmail.com', 'ihsioafhsdn', 'jfutfujvhj', '2024-07-10 06:53:59.556030');

-- --------------------------------------------------------

--
-- Table structure for table `learning_content_image`
--

CREATE TABLE `learning_content_image` (
  `id` bigint(20) NOT NULL,
  `title1` varchar(100) NOT NULL,
  `content1` longtext NOT NULL,
  `image1` varchar(100) NOT NULL,
  `title2` varchar(100) NOT NULL,
  `content2` longtext NOT NULL,
  `image2` varchar(100) NOT NULL,
  `title3` varchar(100) NOT NULL,
  `content3` longtext NOT NULL,
  `image3` varchar(100) NOT NULL,
  `content4` longtext NOT NULL,
  `image4` varchar(100) NOT NULL,
  `title4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_content_image`
--

INSERT INTO `learning_content_image` (`id`, `title1`, `content1`, `image1`, `title2`, `content2`, `image2`, `title3`, `content3`, `image3`, `content4`, `image4`, `title4`) VALUES
(1, 'Live Classes', 'Online classes use a variety of platforms and techniques to make learning easier while taking place over the internet. Online classes can be asynchronous, in which case students can access the materials and finish the tasks at their own leisure, or synchronous, in which case students and teachers communicate in real time. We provide a host of advantages, including interaction, accessibility, flexibility, and ease. Live online classes do, however, present certain issues that must be resolved to guarantee a seamless and productive learning environment. The Live Class Recording function is one way to help solve these issues and improve the standard of online learning. \n', 'media/LiveOnlineClass.webp', 'Self Study Program', 'Study whenever and wherever is most convenient for you. With the help of extensive reading materials and engaging internet resources, the Self-study option enables you to get ready for the CIA exam whenever and whenever you choose. You are free to organize your study objectives to fit your hectic or erratic schedule.  If you can\'t commit to attending classes and have a hectic or unpredictable schedule, the Self-study Program can be the ideal option for you. Would rather have the freedom to study alone and at your own speed.  Possess the dedication and motivation necessary to continue studying as planned.', 'media/study.png', 'Easy Integration', ' We\'ve integrated a cutting-edge Learning Management System (LMS) into our website to provide you with a user-friendly and interactive platform for your educational journey. Whether you\'re a seasoned professional looking to upskill or a beginner taking your first steps, our integrated LMS ensures a smooth and efficient learning experience. The platform offers a range of features, including personalized user authentication for easy access, a customized interface that aligns with our website\'s aesthetics, and robust compatibility with various content formats.', 'media/easyint.png', 'Exam management encompasses the strategic planning, logistical coordination, and administrative oversight required to effectively organize, administer, and evaluate examinations within an educational or professional setting. This multifaceted process involves tasks such as designing examination schedules, securing appropriate testing venues, ensuring the integrity and security of exam materials, facilitating registration and enrollment processes.', 'media/study1.jpg', 'Exam Management');

-- --------------------------------------------------------

--
-- Table structure for table `learning_course`
--

CREATE TABLE `learning_course` (
  `id` bigint(20) NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_course`
--

INSERT INTO `learning_course` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'class 1', '2024-01-10 11:23:51.764703', '2024-01-10 11:23:51.764703'),
(2, 'class 2', '2024-01-10 11:23:57.483640', '2024-01-10 11:23:57.483640'),
(3, 'class 3', '2024-01-10 11:24:01.449948', '2024-01-10 11:24:01.449948'),
(4, 'class 4', '2024-02-21 10:43:51.000000', '2024-02-21 10:43:51.000000'),
(5, 'class 5', '2024-02-21 10:43:52.000000', '2024-02-21 10:43:52.000000');

-- --------------------------------------------------------

--
-- Table structure for table `learning_crfee`
--

CREATE TABLE `learning_crfee` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_crfee`
--

INSERT INTO `learning_crfee` (`id`, `image`) VALUES
(1, 'images/3. Fee Management-01.webp');

-- --------------------------------------------------------

--
-- Table structure for table `learning_crpaymentfeatures`
--

CREATE TABLE `learning_crpaymentfeatures` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_crpaymentfeatures`
--

INSERT INTO `learning_crpaymentfeatures` (`id`, `image`) VALUES
(1, 'images/paymentmanagement.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `learning_customuser`
--

CREATE TABLE `learning_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `shift_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_customuser`
--

INSERT INTO `learning_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `user_type`, `shift_id`) VALUES
(49, 'pbkdf2_sha256$600000$NtK4gtIh1Lk50p9YQdTAdp$tZOzT9Aqz148Zv5rbYkYRpJF5M3GamDLBXgmKygMtB8=', '2024-04-15 12:52:52.445803', 0, 'basic', 'basic', 'njhjklk', 'basic@gmail.com', 0, 1, '2024-04-15 10:37:11.170259', '1', NULL),
(52, 'pbkdf2_sha256$390000$C2XFzxWv4qkx9QtQWBWUZV$aKkMT51tuGQwe3tPc4ZIvH5Wenj7WmN4W9DEdT9ZBBY=', '2024-09-19 11:54:59.584496', 0, 'Sridhar', 'Sridhar', 'Nidamanuri', 'sridhar@gmail.com', 0, 1, '2024-04-15 12:57:43.901544', '1', NULL),
(53, 'pbkdf2_sha256$390000$oIHMdXdHBUNN3OSenBSDNk$DfcDS3Y7UouBwSTLSuiitI5WpgJjz0eGaLFIKt1sCec=', '2024-05-28 14:42:15.453971', 0, 'advanced', 'adv', 'nbjjn', 'ad@gmail.com', 0, 1, '2024-04-15 12:59:15.111904', '1', NULL),
(54, 'pbkdf2_sha256$390000$uzFGCq19szhhlkE0QgUdc4$zLPgjTSs+C6OeO19kk09PQRxjdyWIfzfandeQ5dUOzE=', '2024-07-26 04:47:23.079741', 0, 'hhh', 'juhjj', 'jhjuu', 'gty@gmail.com', 0, 1, '2024-04-15 14:48:23.743853', '2', NULL),
(55, 'pbkdf2_sha256$390000$abLpwur5KeOO6kFLorzN0n$w0PTB+OJqLo7uhAySiv4lqfPizAFBvGG5qI2roO6w10=', '2024-08-07 05:18:00.857862', 0, 'Zenken ', 'naveen', 'krishna', 'zen@gmail.com', 0, 1, '2024-04-15 17:02:02.749208', '2', NULL),
(56, 'pbkdf2_sha256$390000$WGg8gTEaIBURCkajBknD9K$AwXgUw0n/Y2y1BLE6bkVMpSab8onSU+Da4VPUsLOCEo=', '2024-08-07 05:11:52.159846', 0, 'global', 'naveen22', 'krishna22', 'global@gmail.com', 0, 1, '2024-04-15 17:13:41.635814', '2', NULL),
(58, 'pbkdf2_sha256$390000$1lnQ92pve0e8j4lEldq068$E4355HGdL2jr5/yT+su6pTDugZ+wv+3u1gYQ5md6ok8=', '2024-09-19 11:48:09.047758', 0, 'basic8888', 'basic33', 'nayy', 'www@gmail.com', 0, 1, '2024-04-15 18:47:54.262786', '3', 1),
(60, 'pbkdf2_sha256$390000$UJzA14atqwoOfhcMh0trIh$eTjZiG29/ZSIP/hxPcZxO9coNp34gQ483KjISlmgd1c=', '2024-07-22 07:04:34.919296', 0, 'babu@123', 'madhu', 'Babu', 'baba@gmail.com', 0, 1, '2024-04-16 09:11:02.506814', '3', 1),
(61, 'pbkdf2_sha256$390000$9zPvU3mdoIPFoWFzKumNWO$3Rmr8FUim6TDKUjG4nDCo5KtIKqKDzHYiOZXxmQMJmg=', '2024-07-22 07:03:46.375700', 0, 'vamsi2123', 'vamsi', 'reddy', 'vamsi@gmail.com', 0, 1, '2024-04-16 09:19:47.728809', '3', 1),
(62, 'pbkdf2_sha256$390000$VLbJ2p3SATPIJ7YDHTudUQ$wYzF5zo2mwaAT84BIG9N+oLfPvBjMnbyN1m8yFoJ0oE=', '2024-07-25 06:26:41.254489', 0, 'pavan@123', 'pavan', 'baba', 'pavan@gmail.com', 0, 1, '2024-04-16 09:22:53.184956', '3', 1),
(63, 'pbkdf2_sha256$390000$GhHG4Lj87ZJl1UaPB5593r$EvwXrgm7tJF8HASKOeljjmfJSQs4BWdjToJr/s3wkHk=', '2024-07-25 06:27:48.143264', 0, 'nani', 'pavan', 'm', 'dtl@gmail.com', 0, 1, '2024-04-16 14:55:59.132298', '1', NULL),
(65, 'pbkdf2_sha256$600000$U6fUvEmKWYUmQR0LJuB8XY$Msr09AQWEx2a9O+HrZ/3FURGv6kMmL1e2xFk8DL0Sv0=', NULL, 0, 'premium1', 'Sridhar1', 's', 'aa@gmail.com', 0, 1, '2024-04-16 18:05:21.413835', '2', NULL),
(66, 'pbkdf2_sha256$600000$yBx8FSqFbAWGMnK1MCYLcW$5V7PBm0OkfgO46eIN2fv3ZFU6nM4Ah7/1827opSg6kc=', '2024-04-24 11:17:51.002956', 0, 'na@123', 'makill', 'Babu', 'naaaa@gmail.com', 0, 1, '2024-04-17 09:45:54.378911', '2', NULL),
(67, 'pbkdf2_sha256$720000$tqVjkKxr8Y553E0DzV2BaY$Iw6WPz8u41PZvMql9t3sq/Jgoqs+sbPogAW/UI/L3Ds=', '2024-07-26 07:19:41.195949', 0, 'madhu@333', 'madhu', 'babu', 'madhu123@gmail.com', 0, 1, '2024-04-18 14:25:49.077991', '3', 1),
(68, '!pVSSmZ0KOQPwzbiQCZftWaQfB0ctFi4KiYg5SO6q', NULL, 0, 'deff', 'cvfgrt', 'dferr', 'jukii@gmail.com', 0, 1, '2024-04-20 17:18:44.635536', '2', NULL),
(70, 'pbkdf2_sha256$600000$PoUCQMVNT1eFG2hixcQHE4$TBSw1HWFI7HiSQKXec/fdWej7P9evugrLCvabZ1iC5Y=', NULL, 0, 'njhhhfgjn', 'sdfeer', 'dffffjgnfsj', 'kgefkklll@gmail.com', 0, 1, '2024-04-20 17:22:15.582955', '2', 1),
(71, 'pbkdf2_sha256$600000$2aHLh2cFtkWGOgtqeionR8$I2/eVZQmxMEGDV3Ce4v3AicLrYUrb8IdoQyYkJZinT8=', NULL, 0, 'premium98899', 'jhjkk', 'dtgfh', 'juio@gmail.com', 0, 1, '2024-04-20 17:39:09.464188', '2', 1),
(72, 'pbkdf2_sha256$720000$8qOv65I6xmE9yZb0ATAAqf$ywyB9M+dLTBSMciBXrgSjBnkt6hWTPi+TXcSYlSNNhM=', '2024-07-26 08:49:57.690660', 0, 'narayana@123', 'narayana', 'reddy', 'narayana@gmail.com', 0, 1, '2024-04-22 10:18:06.580537', '3', 1),
(73, 'pbkdf2_sha256$600000$JNeNs53WcILoSd9nWGWDE3$a8yurE40EORbE2sHjTkVx4dK2wquiakSxiL36uFCFsQ=', NULL, 0, 'kkkk@345', 'vinay', 'babu', 'kiri@gmail.com', 0, 1, '2024-04-22 10:52:22.042738', '2', 1),
(74, 'pbkdf2_sha256$600000$xE6wX9e3dc2xbIyvXCQIsf$DXCXV40rTbHQBU9LvUis5LEnryqMgoXusbz2NdG9JEc=', NULL, 0, 'chenna', 'chenna', 'reddy', 'chenna@gmail.com', 0, 1, '2024-04-22 10:58:58.425710', '2', 1),
(75, 'pbkdf2_sha256$390000$RCDeqrGOPFh6O3psJZD2Ux$ztld/EMj8QNWce02iyMpW1ZEE9O1k0E92NRqYapuL2A=', '2024-09-19 11:55:26.319635', 0, 'anu123', 'anu', 'reddy', 'anu@gmail.com', 0, 1, '2024-04-23 15:24:21.637440', '3', 1),
(76, 'pbkdf2_sha256$390000$f1iJeaC5q7uYh6pxy2mfRE$5JPXPgnhZRCJs0IJMGZ7MBa86ZLvevuWrFVXFq00PKI=', '2024-07-04 08:39:37.292483', 0, 'ravi', 'phani', 'h', 'phani@gmail.com', 0, 1, '2024-07-04 08:34:44.089211', '1', NULL),
(78, 'pbkdf2_sha256$390000$iLbeRPMVLoB6NZKDDb6hvB$hw3Yddf6rxXdMWcAAeHjQSzne9YapA/MTHI5YrCfXqE=', NULL, 0, 'vamsi', 'v', 'vamsi', 'hari@gmail.com', 0, 1, '2024-07-04 08:42:55.784816', '2', NULL),
(79, 'pbkdf2_sha256$720000$NK88D51aScKbOzYuoxrIHv$ibQLSbfaUl8/pUr2hEyZgt3y1VP9MDBMTMf0/woLgJw=', '2024-08-01 05:28:47.729126', 0, 'sai', 'sai', 'i', 'sai@gmail.com', 0, 1, '2024-07-26 06:35:53.489026', '3', 1),
(80, 'pbkdf2_sha256$720000$bfibeVR9d4fTjDJ30KbKpo$PwkIdOk9UsgIWKVTtFxbUYudxgl/Zj3+a/gOnu0MOoQ=', NULL, 0, 'lokesh', 'lokesh', 'm', 'lokesh@gmail.com', 0, 1, '2024-07-26 06:43:37.013922', '3', 1),
(81, 'pbkdf2_sha256$720000$fVjCiYkaqVAgkgvUPHzch6$aoC2quORQPIZqAL75l1JF0JOIqNzN3hplTmNUMrRfIE=', NULL, 0, 'rakeshk', 'rakesh', 'k', 'rakeshk@gmail.com', 0, 1, '2024-07-26 08:29:26.295983', '3', 1),
(84, 'pbkdf2_sha256$720000$j6eqbmdgCgpoQLZvODTJfH$H9NxNDhdmy98A+3Hr82AsaGE/ajZgA0Fe48XP5KJWTc=', '2024-08-01 03:37:56.741985', 0, 'rakesh@gmail.com', 'rakesh', 'k', 'rakesh@gmail.com', 0, 1, '2024-07-31 09:43:49.013825', '3', 1),
(86, 'pbkdf2_sha256$720000$z7E2dv9Kt0tF6QAHYcPt3d$JrqTVHt50O4q0SRwQs36rQgDglcsKYijOXwsYlcFACs=', NULL, 0, 'saikumer', 'sai', 'k', 'saiu@gmail.com', 0, 1, '2024-07-31 10:06:55.905446', '3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `learning_customuser_groups`
--

CREATE TABLE `learning_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_customuser_user_permissions`
--

CREATE TABLE `learning_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_different_shifts`
--

CREATE TABLE `learning_different_shifts` (
  `id` bigint(20) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_different_shifts`
--

INSERT INTO `learning_different_shifts` (`id`, `name`) VALUES
(1, 'shift-A'),
(2, 'shift-B');

-- --------------------------------------------------------

--
-- Table structure for table `learning_employeeloginlogout`
--

CREATE TABLE `learning_employeeloginlogout` (
  `id` bigint(20) NOT NULL,
  `login_time` datetime(6) NOT NULL,
  `logout_time` datetime(6) DEFAULT NULL,
  `employee_id` bigint(20) NOT NULL,
  `shift_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_employeeloginlogout`
--

INSERT INTO `learning_employeeloginlogout` (`id`, `login_time`, `logout_time`, `employee_id`, `shift_id`) VALUES
(63, '2024-09-19 11:40:56.239830', '2024-09-19 11:42:56.776095', 58, 1),
(64, '2024-09-19 11:43:24.086470', '2024-09-19 11:47:56.371478', 75, 1),
(65, '2024-09-19 11:48:09.050542', NULL, 58, 1),
(66, '2024-09-19 11:55:26.322130', NULL, 75, 1);

-- --------------------------------------------------------

--
-- Table structure for table `learning_event`
--

CREATE TABLE `learning_event` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `start` datetime(6) NOT NULL,
  `end` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_event`
--

INSERT INTO `learning_event` (`id`, `title`, `start`, `end`) VALUES
(190, 'ugadi', '2024-06-04 00:00:00.000000', '2024-06-05 00:00:00.000000'),
(231, 'Budha Pournami', '2024-06-05 00:00:00.000000', '2024-06-06 00:00:00.000000'),
(242, 'moharam', '2024-07-17 00:00:00.000000', '2024-07-18 00:00:00.000000'),
(261, 'mgh', '2024-07-05 00:00:00.000000', '2024-07-06 00:00:00.000000'),
(262, 'mnk', '2024-07-03 00:00:00.000000', '2024-07-04 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `learning_examcards`
--

CREATE TABLE `learning_examcards` (
  `id` bigint(20) NOT NULL,
  `images` varchar(100) NOT NULL,
  `field` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_examcards`
--

INSERT INTO `learning_examcards` (`id`, `images`, `field`) VALUES
(1, 'images/mag-1.jpg', 'Once the exam is live, it is essential to monitor it to ensure that students are adhering to the exam rules and that no technical issues are occurring. You should be available to troubleshoot any issues that may arise during the exam and to address any concerns that students may have.'),
(2, 'images/mag-2_lmxnP6T.jpg', 'After the exam is complete, it is time to analyze the results. This involves reviewing the exam results to identify any trends or patterns and to determine the effectiveness of the exam. You can use this information to improve future exams and to ensure that students are receiving a quality education. Now we have to understand how to proctor exams with the LMS system.'),
(3, 'images/mag-7_5IFDy7T.jpg', 'Well-organized exam management systems simplify scheduling, distribution, and grading, saving time and reducing administrative burden.');

-- --------------------------------------------------------

--
-- Table structure for table `learning_examcarl`
--

CREATE TABLE `learning_examcarl` (
  `id` bigint(20) NOT NULL,
  `images` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_examcarl`
--

INSERT INTO `learning_examcarl` (`id`, `images`) VALUES
(6, 'images/exam management1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `learning_examcont`
--

CREATE TABLE `learning_examcont` (
  `id` bigint(20) NOT NULL,
  `images` varchar(100) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `content1` longtext NOT NULL,
  `heading1` longtext NOT NULL,
  `image1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_examcont`
--

INSERT INTO `learning_examcont` (`id`, `images`, `heading`, `content`, `content1`, `heading1`, `image1`) VALUES
(1, 'images/exam creation.avif', 'Exam Creation and Customization', 'Create and customize exams effortlessly with various question formats and a question bank for flexibility. Set time limits and use adaptive testing for a personalized assessment experience. Tailor the exam structure to meet your course needs.', 'Manage exams efficiently with our Exam Administration features. Schedule exams with specific start and end times, and control access through passwords or prerequisites. For remote testing, integrate with proctoring tools to ensure exam integrity. These features streamline the process, making it easier to manage and monitor assessments.', 'Exam Administration', 'images/exam adminstration.avif'),
(2, 'images/grade.jpg', 'Grading and Feedback', 'Streamline the evaluation process with our Grading and Feedback features. Automatically grade objective questions like multiple-choice for instant results, while manually grade subjective answers such as essays with tools for detailed feedback. Integrate results directly into the gradebook for a comprehensive view of student performance and progress.', 'Harness the power of Reporting and Analytics to gain deep insights into student performance. Generate detailed reports that highlight individual and overall exam results, identify trends, and assess areas of strength and improvement. Use comparative analysis to evaluate exam effectiveness and track performance over time, helping you make informed decisions and refine your teaching strategies.', 'Reporting and Analytics', 'images/analytics1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `learning_excel`
--

CREATE TABLE `learning_excel` (
  `id` bigint(20) NOT NULL,
  `exel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_feature`
--

CREATE TABLE `learning_feature` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `plan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_feature`
--

INSERT INTO `learning_feature` (`id`, `name`, `plan_id`) VALUES
(1, 'Live Classes', 1),
(2, 'Material Notes', 1),
(3, 'Gamification Statistics', 1),
(4, 'User Management', 1),
(5, 'Course Creation and management', 1),
(6, 'Assessment and Evalution', 1),
(7, 'Security and Compliance', 1),
(8, 'Live Classes', 3),
(9, 'Material Notes', 3),
(10, 'Gamification Statistics', 3),
(11, 'Previous Question Papers', 3),
(12, 'Time Table Creation', 3),
(13, 'Administration Fees', 3),
(14, 'Information Resource Management', 3),
(15, 'Task Management', 3),
(16, 'Attendance Monitoring ', 3),
(17, 'Time Tracking System', 3),
(18, 'Staff Scheduling System', 3),
(19, 'Virtual Training Sessions', 3),
(20, 'Security and Compliance', 3),
(21, 'Live Classes', 4),
(22, 'Material Notes', 4),
(23, 'Gamification Statistics', 4),
(24, 'Previous Question Papers', 4),
(25, 'Time Table Creation', 4),
(26, 'Administration Fees', 4),
(27, 'Fee Monitoring', 4),
(28, 'Application Tracking ', 4),
(29, 'Student Onboarding Platform', 4),
(30, 'Integrated Library System', 4),
(31, 'Online Exam Platform', 4),
(32, 'Time Tracking System', 4),
(33, 'Task Management', 4);

-- --------------------------------------------------------

--
-- Table structure for table `learning_fee`
--

CREATE TABLE `learning_fee` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `photo` varchar(100) NOT NULL,
  `title1` varchar(100) NOT NULL,
  `content1` longtext NOT NULL,
  `photo1` varchar(100) NOT NULL,
  `content2` longtext NOT NULL,
  `content3` longtext NOT NULL,
  `photo2` varchar(100) NOT NULL,
  `photo3` varchar(100) NOT NULL,
  `title2` varchar(100) NOT NULL,
  `title3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_fee`
--

INSERT INTO `learning_fee` (`id`, `title`, `content`, `photo`, `title1`, `content1`, `photo1`, `content2`, `content3`, `photo2`, `photo3`, `title2`, `title3`) VALUES
(1, 'Fee Payments', 'Fee payment option available within the app that is immediately credited to the bank account of the school. Parents can now pay school fees directly through the LMS App. The school\'s bank account is promptly credited with the fees.', 'images/fee payments.jpg', 'Key Features', 'LMS is your best option if you\'re seeking high-quality instruction and Provide an overview of the key features of the fee management module. Highlight functionalities such as fee structure configuration, invoice generation, payment tracking, and financial reporting.', 'images/key fatures.new.jfif', 'To set up Fee Reminders, enable the reminder feature in the payment settings. Configure notifications to be sent before and after the due date. Customize the reminder messages for clarity and relevance. Test the reminders to ensure proper delivery and make adjustments as needed based on effectiveness.', 'To enable Direct bank credits, integrate with a payment gateway that supports bank transfers. Configure the system to process payments and update student accounts automatically. Ensure automated receipts and notifications are sent for successful transactions and monitor transfers through the LMS dashboard.', 'images/fee Reminders.jpg', 'images/DIRECT BANK CREDITS.jpg', 'Fee Reminders', 'Direct Bank Credits');

-- --------------------------------------------------------

--
-- Table structure for table `learning_fee_payment`
--

CREATE TABLE `learning_fee_payment` (
  `id` bigint(20) NOT NULL,
  `terms` varchar(100) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `s_class` varchar(255) NOT NULL,
  `term1` decimal(10,2) DEFAULT NULL,
  `term2` decimal(10,2) DEFAULT NULL,
  `term3` decimal(10,2) DEFAULT NULL,
  `amountpaid` decimal(10,2) NOT NULL,
  `schoolid_id` int(11) DEFAULT NULL,
  `student_class_id` bigint(20) DEFAULT NULL,
  `term4` decimal(10,2) DEFAULT NULL,
  `term5` decimal(10,2) DEFAULT NULL,
  `term6` decimal(10,2) DEFAULT NULL,
  `term7` decimal(10,2) DEFAULT NULL,
  `term8` decimal(10,2) DEFAULT NULL,
  `transaction_datetime` datetime(6) NOT NULL,
  `discount_percentage` double NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_fee_payment`
--

INSERT INTO `learning_fee_payment` (`id`, `terms`, `amount`, `first_name`, `s_class`, `term1`, `term2`, `term3`, `amountpaid`, `schoolid_id`, `student_class_id`, `term4`, `term5`, `term6`, `term7`, `term8`, `transaction_datetime`, `discount_percentage`, `address`, `phone_number`) VALUES
(4, '3', '10000.00', 'mahesh', '1', '0.00', '0.00', '2999.99', '7000.00', 6, 3, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(5, '3', '20000.00', 'karthik', '2', '0.00', '6445.32', '6666.66', '1200.00', 6, 5, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(6, '3', '30000.00', 'roy', '3', '10000.00', '10000.00', '10000.00', '0.00', 6, 7, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(7, '3', '30000.00', 'Bushan', '5', '10000.00', '10000.00', '10000.00', '0.00', 6, 10, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(10, '3', '20000.00', 'Reddy', '4', '6666.66', '6666.66', '6666.66', '0.00', 6, 8, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(11, '3', '60000.00', 'Hari', '4', '20000.00', '20000.00', '20000.00', '0.00', 6, 9, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(12, '3', '30000.00', 'Harish', '1', '0.00', '0.00', '10000.00', '20000.00', 6, 11, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(21, '3', '30000.00', 'Naresh', '7', '0.00', '0.00', '0.00', '20000.00', 6, 12, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(23, '3', '12000.00', 'rakhi', '6', '4000.00', '4000.00', '4000.00', '0.00', 6, 13, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(24, '3', '60000.00', 'rakesh', '5', '0.00', '17778.00', '20000.00', '20000.00', 6, 2, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(25, '3', '45000.00', 'jeshu', '1', '15000.00', '15000.00', '15000.00', '0.00', 6, 3, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(26, '3', '45000.00', 'ramya', '1', '15000.00', '15000.00', '15000.00', '0.00', 6, 4, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(27, '3', '45000.00', 'class', '1', '0.00', '13334.00', '15000.00', '15000.00', 6, 6, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(28, '3', '45000.00', 'tillu ', '1', '15000.00', '15000.00', '15000.00', '0.00', 6, 8, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(29, '3', '45000.00', 'rrrr', '1', '15000.00', '15000.00', '15000.00', '0.00', 6, 11, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(30, '3', '30000.00', 'class', '2', '10000.00', '10000.00', '10000.00', '0.00', 15, 7, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(31, '2', '45000.00', 'jeshu', '1', '22500.00', '22500.00', '0.00', '0.00', 15, 3, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(32, '2', '45000.00', 'ramya', '1', '22500.00', '22500.00', '0.00', '0.00', 15, 4, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(33, '2', '45000.00', 'class', '1', '22500.00', '22500.00', '0.00', '0.00', 15, 6, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(34, '2', '45000.00', 'tillu ', '1', '22500.00', '22500.00', '0.00', '0.00', 15, 8, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(35, '2', '45000.00', 'rrrr', '1', '22500.00', '22500.00', '0.00', '0.00', 15, 11, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(36, '3', '30000.00', 'rakesh', '5', '10000.00', '10000.00', '10000.00', '0.00', 15, 2, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(37, '3', '45000.00', 'jeshu', '1', '15000.00', '15000.00', '15000.00', '0.00', 15, 3, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(38, '3', '45000.00', 'ramya', '1', '15000.00', '15000.00', '15000.00', '0.00', 15, 4, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(39, '3', '45000.00', 'class', '1', '15000.00', '15000.00', '15000.00', '0.00', 15, 6, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(40, '3', '45000.00', 'tillu ', '1', '15000.00', '15000.00', '15000.00', '0.00', 15, 8, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(41, '3', '45000.00', 'rrrr', '1', '15000.00', '15000.00', '15000.00', '0.00', 15, 11, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(42, '2', '50000.00', 'class', '2', '25000.00', '25000.00', '0.00', '0.00', 15, 7, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(43, '3', '60000.00', 'class', '2', '20000.00', '20000.00', '20000.00', '0.00', 15, 7, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(44, '2', '60000.00', 'basic33', '', '30000.00', '30000.00', '0.00', '0.00', 15, 12, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(45, '3', '45000.00', 'vamsi', '', '0.00', '15000.00', '15000.00', '0.00', 15, 14, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(46, '3', '60000.00', 'vamsi', '', '20000.00', '20000.00', '20000.00', '0.00', 15, 14, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(47, '1', '30000.00', 'vamsi', '', '0.00', '0.00', '-30000.00', '0.00', 15, 14, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(48, '1', '30000.00', 'madhu', '', '30000.00', '0.00', '0.00', '0.00', 15, 16, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(49, '1', '30000.00', 'narayana', '', '30000.00', '0.00', '0.00', '0.00', 15, 17, '0.00', '0.00', '0.00', '0.00', '0.00', '2024-06-26 15:27:55.015012', 0, NULL, NULL),
(79, '3', '100000.00', 'lokesh', '8', '31333.33', '31333.33', '31333.33', '0.00', 15, 32, NULL, NULL, NULL, NULL, NULL, '2024-07-26 12:14:07.854164', 6, NULL, NULL),
(98, '7', '100000.00', 'vamsi', '4', '14285.71', '14285.71', '14285.71', '0.00', 15, 23, '14285.71', '14285.71', '14285.71', '14285.71', NULL, '2024-07-26 17:49:03.430109', 0, NULL, NULL),
(108, '8', '1000.00', 'rakesh', '7', '0.00', '125.00', '125.00', '125.00', 15, 31, '125.00', '125.00', '125.00', '125.00', '125.00', '2024-08-01 03:38:40.712869', 0, NULL, NULL),
(109, '8', '1000.00', 'rakesh', '7', '125.00', '125.00', '125.00', '0.00', 15, 31, '125.00', '125.00', '125.00', '125.00', '125.00', '2024-08-01 09:07:15.662689', 0, NULL, NULL),
(117, '5', '100000.00', 'pavan', '3', '8000.00', '8000.00', '8000.00', '0.00', 15, 22, '8000.00', '8000.00', NULL, NULL, NULL, '2024-08-01 17:44:40.895499', 60.00000000000003, NULL, NULL),
(124, '7', '1000.00', 'madhu', '2', '57.04', '57.04', '57.04', '0.00', 15, 21, '57.04', '57.04', '57.04', '57.04', NULL, '2024-08-02 09:44:06.931623', 60.07, NULL, NULL),
(125, '7', '1000.00', 'narayana', '2', '142.86', '142.86', '142.86', '0.00', 15, 21, '142.86', '142.86', '142.86', '142.86', NULL, '2024-08-02 09:44:06.961550', 0, NULL, NULL),
(126, '7', '1000.00', 'anu', '2', '142.86', '142.86', '142.86', '0.00', 15, 21, '142.86', '142.86', '142.86', '142.86', NULL, '2024-08-02 09:44:06.968035', 0, NULL, NULL),
(129, '2', '20000.05', 'Navya', '1', '8000.02', '8000.02', NULL, '0.00', 15, 20, NULL, NULL, NULL, NULL, NULL, '2024-09-18 06:19:25.968358', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `learning_footerlink`
--

CREATE TABLE `learning_footerlink` (
  `id` bigint(20) NOT NULL,
  `label` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_footerlink`
--

INSERT INTO `learning_footerlink` (`id`, `label`, `url`) VALUES
(1, 'Home', '/'),
(2, 'Latest Courses', '/latestcourses'),
(3, 'Test Manuals', ''),
(4, 'About Us', '/aboutus'),
(5, 'Contact Us', '/contact');

-- --------------------------------------------------------

--
-- Table structure for table `learning_footerservice`
--

CREATE TABLE `learning_footerservice` (
  `id` bigint(20) NOT NULL,
  `label` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_footerservice`
--

INSERT INTO `learning_footerservice` (`id`, `label`, `url`) VALUES
(1, 'Fee Management', '/display_fee'),
(2, 'Admission Management', '/admission_display'),
(3, 'Attendance Managemant', '/attendmanagedisplay'),
(4, 'Payment Management', '/display_paymentfeatures'),
(5, 'Exam Management', '/examdisplay'),
(6, 'Timetable Management', '/timetable_display'),
(7, 'Staff Management', '/staffmanagement'),
(8, 'Library Management', '/display_display'),
(9, 'Liveclass Management', '/liveclassmanagedisplay');

-- --------------------------------------------------------

--
-- Table structure for table `learning_hero`
--

CREATE TABLE `learning_hero` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_hero`
--

INSERT INTO `learning_hero` (`id`, `title`, `content`, `image`) VALUES
(1, 'The Leading Learning Platform', 'Tailor learning experiences to individual needs with customizable courses, assessments, and progress.', '');

-- --------------------------------------------------------

--
-- Table structure for table `learning_instructions11`
--

CREATE TABLE `learning_instructions11` (
  `id` bigint(20) NOT NULL,
  `instr` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_instruction_headings`
--

CREATE TABLE `learning_instruction_headings` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `heading` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_lateloginrequest`
--

CREATE TABLE `learning_lateloginrequest` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `reason` longtext DEFAULT NULL,
  `approved` tinyint(1) NOT NULL,
  `approved_at` datetime(6) DEFAULT NULL,
  `rejected` tinyint(1) NOT NULL,
  `student_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_lateloginrequest`
--

INSERT INTO `learning_lateloginrequest` (`id`, `date`, `reason`, `approved`, `approved_at`, `rejected`, `student_id`) VALUES
(1, '2024-09-19', 'hi sir', 1, '2024-09-19 11:36:18.403121', 0, 12),
(2, '2024-09-19', 'hiii', 1, '2024-09-19 11:52:10.298399', 0, 12),
(3, '2024-09-19', 'hiiii', 1, '2024-09-19 11:56:08.838147', 0, 18);

-- --------------------------------------------------------

--
-- Table structure for table `learning_latestcourse`
--

CREATE TABLE `learning_latestcourse` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_latestcourse`
--

INSERT INTO `learning_latestcourse` (`id`, `title`, `description`) VALUES
(1, 'Technical Skills Development', 'Programming languages (Python, JavaScript, Java, etc.),\r\nWeb development (HTML/CSS, React, Angular, etc.),\r\nDatabase management (SQL, MongoDB, etc.) and\r\nCybersecurity fundamentals.\r\n'),
(2, 'Business and Management', 'Project management (PMP certification, Agile methodologies),\r\nLeadership and team management,\r\nEntrepreneurship and startup essentials and\r\nFinancial literacy and accounting basics.\r\n'),
(3, 'Digital Marketing', 'Social media marketing (Facebook Ads, Instagram marketing),\r\nSEO (Search Engine Optimization),\r\nContent marketing and blogging and\r\nEmail marketing and automation.'),
(4, 'Creative Skills', 'Graphic design (Adobe Photoshop, Illustrator),\r\nVideo editing (Adobe Premiere Pro, Final Cut Pro),\r\nPhotography basics and advanced techniques and\r\nUI/UX design principles.'),
(5, 'Soft Skills and Personal Development', 'Communication skills,\r\nTime management and productivity,\r\nEmotional intelligence and interpersonal skills and\r\nPublic speaking and presentation skills.'),
(6, 'Industry-Specific Training', 'Healthcare compliance and regulations,\r\nLegal profession skills (paralegal training, legal writing),\r\nReal estate licensing and regulations and\r\nHospitality and customer service excellence.'),
(7, 'Language Learning', 'Basic and advanced courses in languages (English, Spanish, Mandarin, etc.),\r\nBusiness language proficiency (Business English, Business Mandarin) and\r\nTest preparation (TOEFL, IELTS, etc.).'),
(8, 'Certification and Exam Preparation', 'IT certifications (Cisco, CompTIA, Microsoft certifications),\r\nProject management certifications (PMP, CAPM),\r\nFinancial certifications (CFA, CPA) and\r\nLanguage proficiency exams (TOEFL, IELTS, DELF/DALF).'),
(9, 'Personal Finance and Investment', 'Budgeting and financial planning,\r\nInvesting basics (stocks, bonds, mutual funds),\r\nRetirement planning and wealth management and\r\nCryptocurrency and blockchain fundamentals.'),
(10, 'Health and Wellness', 'Nutrition and healthy eating habits,\r\nFitness and exercise routines,\r\nMental health awareness and stress management and\r\nYoga and mindfulness practices.');

-- --------------------------------------------------------

--
-- Table structure for table `learning_leave`
--

CREATE TABLE `learning_leave` (
  `id` bigint(20) NOT NULL,
  `Reason` longtext NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `today` datetime(6) NOT NULL,
  `is_status` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `days_difference` int(11) DEFAULT NULL,
  `read` tinyint(1) NOT NULL,
  `read1` tinyint(1) NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `Leave_Type_id` bigint(20) DEFAULT NULL,
  `schoolid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_leave`
--

INSERT INTO `learning_leave` (`id`, `Reason`, `from_date`, `to_date`, `today`, `is_status`, `user_type`, `days_difference`, `read`, `read1`, `admin_id`, `Leave_Type_id`, `schoolid_id`) VALUES
(1, 'gfdf', '2024-02-08', '2024-02-10', '2024-02-07 11:37:43.527170', '1', '3', 1, 0, 0, 6, 1, 6),
(2, 'rrre', '2024-02-09', '2024-02-09', '2024-02-07 11:55:01.668162', '0', '2', 0, 1, 0, 2, 2, 6),
(3, 'efsw', '2024-02-09', '2024-02-10', '2024-02-07 11:55:01.668162', '0', '2', 1, 1, 0, 2, 2, 6),
(4, 'fgv', '2024-02-15', '2024-02-16', '2024-02-12 09:05:26.788476', '0', '2', 1, 1, 0, 16, 2, 6),
(5, 'jjjj', '2024-03-07', '2024-03-13', '2024-03-01 09:34:25.047905', '0', '2', 6, 0, 1, 13, 2, NULL),
(6, 'fever', '2024-03-02', '2024-03-09', '2024-03-01 10:03:39.613499', '2', '3', 6, 0, 0, 12, 3, NULL),
(7, 'going toi tirupati', '2024-03-01', '2024-03-29', '2024-03-12 15:36:55.813523', '1', '2', 28, 1, 1, 13, 1, NULL),
(8, 'going to marrage', '2024-03-14', '2024-03-20', '2024-03-12 15:36:55.813523', '0', '2', 6, 0, 1, 13, 4, NULL),
(9, 'ggdgdgd', '2024-03-06', '2024-03-20', '2024-03-12 15:36:55.813523', '0', '2', 14, 0, 1, 13, 3, NULL),
(10, 'just kidding', '2024-03-14', '2024-03-22', '2024-03-13 09:12:03.907939', '2', '2', 8, 0, 0, 13, 1, NULL),
(11, 'rflokjk', '2024-03-15', '2024-03-22', '2024-03-13 09:12:03.907939', '0', '2', 7, 0, 1, 13, 2, NULL),
(12, 'fever', '2024-03-29', '2024-03-30', '2024-03-28 12:16:32.360473', '0', '3', 1, 0, 1, 39, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `learning_leavemanagement`
--

CREATE TABLE `learning_leavemanagement` (
  `id` bigint(20) NOT NULL,
  `title` varchar(500) NOT NULL,
  `Description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_leavemanagement`
--

INSERT INTO `learning_leavemanagement` (`id`, `title`, `Description`) VALUES
(1, 'MAINTAIN LEAVE FOR TEACHERS WITH EASE', 'Leave Management allows Admin to create and set different types of leaves. By exporting excelsheets Admin can get the data for each staff at one place including total and available leaves.Staff can apply for leaves easily from the app and Admin can view the same immediately.Admin can also see the history of leaves for each and every staff member and much more!!');

-- --------------------------------------------------------

--
-- Table structure for table `learning_leavestype`
--

CREATE TABLE `learning_leavestype` (
  `id` bigint(20) NOT NULL,
  `leavetype` varchar(500) NOT NULL,
  `Noofleaves` varchar(500) NOT NULL,
  `leavecategory` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_leavestype`
--

INSERT INTO `learning_leavestype` (`id`, `leavetype`, `Noofleaves`, `leavecategory`) VALUES
(1, 'sick leaves', '11', 'Yeraly Leave'),
(2, 'causal leaves', '80', 'Fixed Leave'),
(3, 'Medical leaves', '5', 'Fixed Leave'),
(4, 'Emergency leaves', '9', 'Fixed Leave');

-- --------------------------------------------------------

--
-- Table structure for table `learning_library`
--

CREATE TABLE `learning_library` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `photo` varchar(100) NOT NULL,
  `title1` varchar(100) NOT NULL,
  `content1` longtext NOT NULL,
  `photo1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_library`
--

INSERT INTO `learning_library` (`id`, `title`, `content`, `photo`, `title1`, `content1`, `photo1`) VALUES
(1, 'Cataloging', 'Cataloging in library management refers to the process of organizing and describing library materials in a systematic and standardized way to facilitate access and retrieval by patrons. Cataloging involves creating bibliographic records for each item in the library\'s collection and assigning standardized metadata to describe its content, format, and other relevant attributes. ', 'images/library4.jpg', 'Search and Discovery', 'Search and discovery in library management involves providing users with efficient tools to find materials in the library\'s collection. It includes search interfaces, indexing, relevancy ranking, faceted search, browsing options, integration with external resources, user personalization, and accessibility considerations. Effective search and discovery mechanisms are essential for enabling users to locate relevant materials quickly and easily.', 'images/library5.jpg'),
(2, 'Reporting and Analytics', 'Reporting and analytics in library management involves collecting and analyzing data to assess library performance, usage trends, and patron needs. This includes generating reports on circulation statistics, collection usage, budget allocation, and other key metrics. Analytics tools help library administrators make informed decisions about resource allocation, collection development, and service improvements. Effective reporting and analytics contribute to optimizing library services and enhancing the user experience.', 'images/library6.jpg', 'Resource Sharing', 'Resource sharing in library management refers to the process of collaborating with other libraries to provide access to materials beyond an individual library\'s collection. This includes interlibrary loan services, consortial borrowing agreements, and cooperative collection development initiatives. Through resource sharing, libraries can expand the range of materials available to their patrons, improve access to specialized resources, and reduce duplication of effort and costs. \r\n', 'images/library7.png');

-- --------------------------------------------------------

--
-- Table structure for table `learning_liveclasscards`
--

CREATE TABLE `learning_liveclasscards` (
  `id` bigint(20) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `field` longtext NOT NULL,
  `title3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_liveclasscards`
--

INSERT INTO `learning_liveclasscards` (`id`, `image3`, `field`, `title3`) VALUES
(1, 'images/live1.jpg', ' Live classes facilitate direct interaction between teachers and students .This allows for immediate feedback, clarification of doubts, and active participation, enhancing the learning experience.', 'Real-time interaction'),
(2, 'images/live2.jpg', 'Students can ask questions and seek clarification from the teacher in real-time during live classes. This reduces misunderstandings and ensures that students grasp concepts effectively as they are being taught.', 'Immediate clarification'),
(3, 'images/live3.jpeg', 'The live nature of classes can boost students\' motivation and enthusiasm \r\nfor learning. The immediate interaction and feedback can inspire students to actively participate and strive for academic excellence.', 'Motivation');

-- --------------------------------------------------------

--
-- Table structure for table `learning_liveclasscarousel`
--

CREATE TABLE `learning_liveclasscarousel` (
  `id` bigint(20) NOT NULL,
  `image2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_liveclasscarousel`
--

INSERT INTO `learning_liveclasscarousel` (`id`, `image2`) VALUES
(1, 'images/class-discipline (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `learning_liveclasscontent`
--

CREATE TABLE `learning_liveclasscontent` (
  `id` bigint(20) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `heading` longtext NOT NULL,
  `content` longtext NOT NULL,
  `content1` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_liveclasscontent`
--

INSERT INTO `learning_liveclasscontent` (`id`, `image1`, `heading`, `content`, `content1`) VALUES
(1, 'images/carousel2_7Lyx6oR.jpg', 'Virtual Classrooms', 'Offer a digital space for live classes with video and audio conferencing, screen sharing, and real-time chat. They include interactive tools like whiteboards and breakout rooms, and often allow sessions to be recorded for later access. These features create an engaging and interactive online learning environment. ', ''),
(2, 'images/Access_Recording_Anytime_Su63Vsh.jpg', 'Recording and Playback ', 'Enable live classes and sessions to be captured and stored for future access. This feature allows instructors to record lectures, presentations, and discussions, providing students with the opportunity to review content at their convenience. Recorded sessions can be replayed to reinforce learning, accommodate different time zones, and support students who missed the live class.', ''),
(3, 'images/contentt_73Ewzq6.jpg', 'Content Sharing\r\n', 'Allows instructors and students to exchange materials during live classes and beyond. This feature supports the sharing of documents, presentations, videos, and other resources directly within the virtual classroom or course environment. It facilitates collaboration, ensures that all participants have access to necessary materials in real-time, and helps in organizing and distributing educational content effectively.\r\n\r\n\r\n\r\n', ''),
(4, 'images/Quick_Answering_of_Questions.png', 'Interactive Tools', 'Enhance engagement during live classes by providing features such as real-time chat, polls, quizzes, and interactive whiteboards. These tools allow instructors to conduct instant polls or quizzes, facilitate lively discussions, and use whiteboards for collaborative notetaking or brainstorming. They help make sessions more interactive, ensuring active participation and immediate feedback.', '');

-- --------------------------------------------------------

--
-- Table structure for table `learning_logo`
--

CREATE TABLE `learning_logo` (
  `id` bigint(20) NOT NULL,
  `image1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_logo`
--

INSERT INTO `learning_logo` (`id`, `image1`) VALUES
(1, 'images/lmslogin.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `learning_meeting`
--

CREATE TABLE `learning_meeting` (
  `id` bigint(20) NOT NULL,
  `meeting_date` date NOT NULL,
  `meeting_time` time(6) NOT NULL,
  `meeting_link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_meeting1`
--

CREATE TABLE `learning_meeting1` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `meet_link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_meeting1`
--

INSERT INTO `learning_meeting1` (`id`, `title`, `description`, `start_time`, `end_time`, `meet_link`) VALUES
(1, 'lms', 'Meeting description goes here.', '2024-06-26 04:51:00.000000', '2024-06-26 05:52:00.000000', 'https://calendar.google.com/calendar/u/0/r/eventedit?text=lms&dates=20240626T045100/20240626T055200'),
(2, 'lms', 'Meeting description goes here.', '2024-06-26 04:51:00.000000', '2024-06-26 05:52:00.000000', 'https://calendar.google.com/calendar/u/0/r/eventedit?text=lms&dates=20240626T045100/20240626T055200'),
(3, 'book', 'Meeting description goes here.', '2024-07-10 12:00:00.000000', '2024-07-10 13:00:00.000000', 'https://calendar.google.com/calendar/u/0/r/eventedit?text=book&dates=20240710T120000/20240710T130000'),
(4, 'pavan', 'Meeting description goes here.', '2024-07-25 13:00:00.000000', '2024-07-25 14:35:00.000000', 'https://calendar.google.com/calendar/u/0/r/eventedit?text=pavan&dates=20240725T130000/20240725T143500'),
(5, 'pavan', 'Meeting description goes here.', '2024-07-25 13:00:00.000000', '2024-07-25 14:35:00.000000', 'https://calendar.google.com/calendar/u/0/r/eventedit?text=pavan&dates=20240725T130000/20240725T143500'),
(6, 'telugu', 'Meeting description goes here.', '2024-07-26 10:02:00.000000', '2024-07-26 11:02:00.000000', 'https://calendar.google.com/calendar/u/0/r/eventedit?text=telugu&dates=20240726T100200/20240726T110200'),
(7, 'maths', 'Meeting description goes here.', '2024-07-26 11:12:00.000000', '2024-07-26 12:12:00.000000', 'https://calendar.google.com/calendar/u/0/r/eventedit?text=maths&dates=20240726T111200/20240726T121200'),
(8, 'maths', 'Meeting description goes here.', '2024-07-26 12:15:00.000000', '2024-07-26 13:15:00.000000', 'https://calendar.google.com/calendar/u/0/r/eventedit?text=maths&dates=20240726T121500/20240726T131500'),
(9, '3', 'Meeting description goes here.', '2024-07-26 15:42:00.000000', '2024-07-26 15:44:00.000000', 'https://calendar.google.com/calendar/u/0/r/eventedit?text=3&dates=20240726T154200/20240726T154400'),
(10, '3', 'Meeting description goes here.', '2024-07-26 15:42:00.000000', '2024-07-26 15:44:00.000000', 'https://calendar.google.com/calendar/u/0/r/eventedit?text=3&dates=20240726T154200/20240726T154400'),
(11, '3', 'Meeting description goes here.', '2024-07-26 15:42:00.000000', '2024-07-26 15:44:00.000000', 'https://calendar.google.com/calendar/u/0/r/eventedit?text=3&dates=20240726T154200/20240726T154400'),
(12, '3', 'Meeting description goes here.', '2024-07-26 15:42:00.000000', '2024-07-26 15:44:00.000000', 'https://calendar.google.com/calendar/u/0/r/eventedit?text=3&dates=20240726T154200/20240726T154400');

-- --------------------------------------------------------

--
-- Table structure for table `learning_meetlink`
--

CREATE TABLE `learning_meetlink` (
  `id` bigint(20) NOT NULL,
  `link` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_meetlink`
--

INSERT INTO `learning_meetlink` (`id`, `link`, `created_at`) VALUES
(1, 'https://meet.google.com/8700', '2024-03-19 15:18:49.602105'),
(2, 'https://meet.google.com/3747', '2024-03-19 15:19:38.232347'),
(3, 'https://meet.google.com/1188', '2024-03-19 15:20:31.863879'),
(4, 'https://meet.google.com/9614', '2024-03-19 15:20:38.566940'),
(5, 'https://meet.google.com/2645', '2024-03-19 15:21:17.894350'),
(6, 'https://meet.google.com/efk-yqls-wih-7014', '2024-03-19 15:23:04.260338'),
(7, 'https://meet.google.com/wpq-azez-tya-7185', '2024-03-19 15:23:36.473931'),
(8, 'https://meet.google.com/fvm-ebut-ybg', '2024-03-19 15:24:04.969064'),
(9, 'https://meet.google.com/hga-mfyf-hrw', '2024-03-19 15:24:47.765517');

-- --------------------------------------------------------

--
-- Table structure for table `learning_menuitem`
--

CREATE TABLE `learning_menuitem` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `parent_category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_menuitem`
--

INSERT INTO `learning_menuitem` (`id`, `title`, `url`, `icon`, `parent_category_id`) VALUES
(1, 'Dashboard', '/sidenavbar', 'fa fa-list', NULL),
(2, 'AddTeacher', '/teacherregister/', 'fa fa-user-plus', NULL),
(3, 'Manage Teacher', '/teacher_read/', 'fa fa-user-tie', NULL),
(5, 'Add Student', '/studentregform', 'fa fa-user-plus', NULL),
(6, 'manage Students', '/alldata', 'fa fa-users', NULL),
(7, 'Attendance', '/attendance_stu/', 'fa fa-address-book', NULL),
(8, 'Teacher Leaves', '/Teacher_leaves_view', 'fa fa-list', NULL),
(9, 'Student Leaves', '/Student_leaves_view', 'fa fa-check', NULL),
(10, 'Send Message', '/compose_message12', 'fa fa-school', NULL),
(11, 'Add Class', '/addclass', 'fa fa-school', NULL),
(12, 'Add Subject', '/addsubject', 'fa fa-atlas', NULL),
(13, 'Assign Classes', '/assign_subjects_classes', 'fa fa-atlas', NULL),
(14, 'View Classes', '/view_teacher_sub_class', 'fa fa-eye', NULL),
(15, 'Live Class', '/meeting/', 'fa fa-video\r\n', NULL),
(16, 'Class Fee', '/class_form/', 'fa fa-money-check', NULL),
(17, 'Fee Payments', '/Fee_pay/', 'fa fa-file-invoice', NULL),
(18, 'Report', '/attendance_stu1/', 'fa fa-file', NULL),
(19, 'Book a Meeting', '/create_meeting1/', '', NULL),
(20, 'Meeting List', '/meeting_list1/', '', NULL),
(21, 'Permissions', '/late-login-requests', 'fa fa-lock', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `learning_monthlyattendancesummary`
--

CREATE TABLE `learning_monthlyattendancesummary` (
  `id` bigint(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(11) NOT NULL,
  `total_working_days` int(11) NOT NULL,
  `total_present_days` int(11) NOT NULL,
  `total_absent_days` int(11) NOT NULL,
  `total_half_days` int(11) NOT NULL,
  `percentage` decimal(5,2) NOT NULL,
  `student_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_monthlyattendancesummary`
--

INSERT INTO `learning_monthlyattendancesummary` (`id`, `month`, `year`, `total_working_days`, `total_present_days`, `total_absent_days`, `total_half_days`, `percentage`, `student_id`) VALUES
(1, 'August', 2024, 27, 0, 7, 0, '0.00', 12),
(2, 'August', 2024, 27, 0, 7, 0, '0.00', 16),
(3, 'August', 2024, 27, 0, 7, 0, '0.00', 17),
(4, 'August', 2024, 27, 0, 7, 0, '0.00', 18),
(5, 'August', 2024, 27, 0, 7, 0, '0.00', 15),
(6, 'August', 2024, 27, 0, 7, 0, '0.00', 14),
(7, 'August', 2024, 27, 0, 7, 0, '0.00', 13),
(8, 'January', 2024, 27, 0, 27, 0, '0.00', 12),
(9, 'January', 2024, 27, 0, 27, 0, '0.00', 16),
(10, 'January', 2024, 27, 0, 27, 0, '0.00', 17),
(11, 'January', 2024, 27, 0, 27, 0, '0.00', 18),
(12, 'January', 2024, 27, 0, 27, 0, '0.00', 15),
(13, 'January', 2024, 27, 0, 27, 0, '0.00', 14),
(14, 'January', 2024, 27, 0, 27, 0, '0.00', 13),
(15, 'February', 2024, 25, 0, 25, 0, '0.00', 12),
(16, 'February', 2024, 25, 0, 25, 0, '0.00', 16),
(17, 'February', 2024, 25, 0, 25, 0, '0.00', 17),
(18, 'February', 2024, 25, 0, 25, 0, '0.00', 18),
(19, 'February', 2024, 25, 0, 25, 0, '0.00', 15),
(20, 'February', 2024, 25, 0, 25, 0, '0.00', 14),
(21, 'February', 2024, 25, 0, 25, 0, '0.00', 13);

-- --------------------------------------------------------

--
-- Table structure for table `learning_notification`
--

CREATE TABLE `learning_notification` (
  `id` bigint(20) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `student_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_notification`
--

INSERT INTO `learning_notification` (`id`, `message`, `created_at`, `is_read`, `student_id`) VALUES
(1, 'Your late login request has been approved.', '2024-09-19 11:36:18.424177', 0, 12),
(2, 'Your late login request has been approved.', '2024-09-19 11:52:10.305772', 0, 12),
(3, 'Your late login request has been approved.', '2024-09-19 11:56:08.845578', 1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `learning_oauthcredentials`
--

CREATE TABLE `learning_oauthcredentials` (
  `id` bigint(20) NOT NULL,
  `token` varchar(255) NOT NULL,
  `refresh_token` varchar(255) NOT NULL,
  `token_uri` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_paymentfeatures`
--

CREATE TABLE `learning_paymentfeatures` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `photo` varchar(100) NOT NULL,
  `title1` varchar(100) NOT NULL,
  `content1` longtext NOT NULL,
  `photo1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_paymentfeatures`
--

INSERT INTO `learning_paymentfeatures` (`id`, `title`, `content`, `photo`, `title1`, `content1`, `photo1`) VALUES
(1, 'Course Enrollment Fees', 'Course enrollment fees in an LMS involve setting and managing charges for accessing courses. This can include one-time fees, subscription models, or tiered pricing based on course content. Integration with payment gateways like PayPal or Stripe ensures secure transactions. The system also handles discount codes, generates invoices and receipts automatically, and manages refund requests according to predefined policies.', 'images/course enrollment fee.avif', 'Invoicing and Receipts', 'Invoicing involves generating and sending detailed bills to learners when they sign up for a course. This includes information such as the course name, fee amount, payment terms, and a unique invoice number. Receipts, on the other hand, are issued once payment is completed, confirming the transaction. They typically include payment details, date, and a confirmation number.', 'images/invoice.jpg'),
(2, 'Secure Payment Processing', 'Secure payment processing in an LMS involves encrypting data during transactions, adhering to PCI-DSS standards, and using trusted payment gateways like PayPal or Stripe. It also employs secure communication protocols and tokenization to protect sensitive information, while incorporating fraud detection measures to prevent unauthorized activities.', 'images/secure.jpg', 'User Account Management', 'User account management in an LMS involves overseeing and maintaining learner profiles and their access to course materials. This includes features for creating and updating user accounts, managing login credentials, and tracking enrollment statuses. Users can view their course history, manage payment details, and monitor their progress. Administrators can handle user roles and permissions, ensuring appropriate access levels to different parts of the LMS.', 'images/useraccount.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `learning_payment_form`
--

CREATE TABLE `learning_payment_form` (
  `id` bigint(20) NOT NULL,
  `Upi` varchar(100) NOT NULL,
  `DebitCreat` bigint(20) NOT NULL,
  `UpiID` bigint(20) NOT NULL,
  `cardnumber` longblob NOT NULL,
  `expiry` date NOT NULL,
  `cvc` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_plans`
--

CREATE TABLE `learning_plans` (
  `id` bigint(20) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `amt` int(11) NOT NULL,
  `features` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_plans`
--

INSERT INTO `learning_plans` (`id`, `plan`, `amt`, `features`) VALUES
(1, 'Gold Plan', 134, 'Live Classes'),
(2, '', 12, 'Material Notes'),
(7, '', 243, 'Gamification Statistics'),
(9, '', 123, 'User Management'),
(10, '', 123, 'Course Creation and management'),
(11, '', 123, 'Assessment and Evalution'),
(12, '', 123, 'Security and Compliance');

-- --------------------------------------------------------

--
-- Table structure for table `learning_plans1`
--

CREATE TABLE `learning_plans1` (
  `id` bigint(20) NOT NULL,
  `plan1` varchar(100) NOT NULL,
  `amt1` int(11) NOT NULL,
  `features1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_plans1`
--

INSERT INTO `learning_plans1` (`id`, `plan1`, `amt1`, `features1`) VALUES
(1, 'Platinum Plan', 150, 'Live Classes'),
(2, 'Platinum Plan', 140, 'Material Notes'),
(3, 'Gold Plan', 278, 'Gamification Statistics'),
(4, '', 30, 'Previous Question Papers'),
(5, '', 50, 'Time Table Creation'),
(6, '', 40, 'Administration Fees'),
(7, '', 76, 'Cost Control'),
(8, '', 87, 'Information Resourse Management'),
(9, '', 87, 'Test Management'),
(10, '', 89, 'Attendance Monitoring'),
(11, '', 90, 'Time Tracking'),
(12, '', 76, 'Soft Scheduling System'),
(13, '', 98, 'Virtual Tracking Sessions'),
(14, '', 76, 'Payment Processing Platform'),
(15, '', 650, 'Transaction Processing System');

-- --------------------------------------------------------

--
-- Table structure for table `learning_plans2`
--

CREATE TABLE `learning_plans2` (
  `id` bigint(20) NOT NULL,
  `plan2` varchar(100) NOT NULL,
  `amt2` int(11) NOT NULL,
  `features2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_plans2`
--

INSERT INTO `learning_plans2` (`id`, `plan2`, `amt2`, `features2`) VALUES
(1, 'Silver Plan', 165, 'Live Classes'),
(2, 'Silver Plan', 165, 'Material Notes'),
(3, 'Silver Plan', 276, 'Gamification Statistics'),
(4, 'Silver Plan', 276, 'Previous Question Papers'),
(5, 'Silver Plan', 276, 'Time Table Creation\r\n'),
(6, 'Silver Plan', 276, 'Administration Fees'),
(7, 'Silver Plan', 276, 'Cost Control'),
(8, 'Silver Plan', 276, 'Fee Monitoring'),
(9, 'Silver Plan', 276, 'Application Tracking System\r\n'),
(10, 'Silver Plan', 276, 'Student Onboarding Platform\r\n'),
(11, 'Silver Plan', 276, 'Admission Workflow System\r\n'),
(12, 'Silver Plan', 276, 'Integrated Library System\r\n'),
(13, 'Silver Plan', 276, 'Assessment Management\r\n'),
(14, 'Silver Plan', 276, 'Online Exam Platform\r\n'),
(15, 'Silver Plan', 276, 'Exam Schedular System\r\n'),
(16, 'Silver Plan', 276, 'Time Tracking System\r\n'),
(17, 'Silver Plan', 276, 'Task Management Platform'),
(18, 'Silver Plan', 276, 'Staff Tracking System'),
(19, 'Silver Plan', 276, 'Web Based Class');

-- --------------------------------------------------------

--
-- Table structure for table `learning_pricingplan`
--

CREATE TABLE `learning_pricingplan` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price_monthly` decimal(10,2) NOT NULL,
  `price_yearly` decimal(10,2) NOT NULL,
  `days_monthly` int(10) UNSIGNED NOT NULL CHECK (`days_monthly` >= 0),
  `days_yearly` int(10) UNSIGNED NOT NULL CHECK (`days_yearly` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_pricingplan`
--

INSERT INTO `learning_pricingplan` (`id`, `name`, `price_monthly`, `price_yearly`, `days_monthly`, `days_yearly`) VALUES
(1, 'Basic', '98.00', '998.00', 30, 365),
(3, 'Premium', '299.00', '1299.00', 30, 365),
(4, 'Advanced ', '599.00', '1799.00', 30, 365);

-- --------------------------------------------------------

--
-- Table structure for table `learning_pricing_body`
--

CREATE TABLE `learning_pricing_body` (
  `id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `content` longtext NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_pricing_body`
--

INSERT INTO `learning_pricing_body` (`id`, `title`, `content`, `icon`) VALUES
(1, 'Fees Management', 'It is used as task management software that automates collecting fees and generating fee receipts.', 'fas fa-hand-holding-usd'),
(2, 'Admission Management', 'A digital solution to manage students enrollments in colleges,schools,universities and training instituitions.', 'far fa-id-card'),
(3, 'Attendance Management', 'This feature helps you to track the Attendance of the students.', 'far fa-calendar-check'),
(4, 'Payment Management', 'Allows users to monitor and facilitate payments in a single,centralized platform.', 'fas fa-rupee-sign'),
(5, 'Exam Management', 'It is designed to give different types of users the ability to manage and monitor their examination activities.', 'far fa-edit'),
(6, 'Time management', 'The time spent on specific task for planning and controlling.', 'far fa-clock'),
(7, 'Staff management', 'Important part of HR management that involves supervising,improving and guiding students performance overtime.', 'fa fa-users'),
(8, 'Library Management', 'Helps to carry out a range of important tasks such as creating,reading lists,cataloging new resources and circulating books.', 'fas fa-book'),
(9, 'Live Class Management', 'This is for conducting meetings/classes through virtual connection.', 'fas fa-tv');

-- --------------------------------------------------------

--
-- Table structure for table `learning_pricing_head`
--

CREATE TABLE `learning_pricing_head` (
  `id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_pricing_head`
--

INSERT INTO `learning_pricing_head` (`id`, `title`, `content`) VALUES
(1, 'Choose a plan which suits you', 'No hidden charges and extras will be added later, freedom of changing the plan or subscription and cancel when ever you want.');

-- --------------------------------------------------------

--
-- Table structure for table `learning_quiz_questions`
--

CREATE TABLE `learning_quiz_questions` (
  `id` bigint(20) NOT NULL,
  `question` longtext NOT NULL,
  `choice1` longtext NOT NULL,
  `choice2` longtext NOT NULL,
  `choice3` longtext NOT NULL,
  `choice4` longtext NOT NULL,
  `is_correct` longtext NOT NULL,
  `class_name_id` bigint(20) DEFAULT NULL,
  `subject_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_quiz_questions`
--

INSERT INTO `learning_quiz_questions` (`id`, `question`, `choice1`, `choice2`, `choice3`, `choice4`, `is_correct`, `class_name_id`, `subject_id`) VALUES
(1, 'what is html', 'werty', 'uionb', 'vcdr', 'tyuo', 'choice1', 1, 6),
(2, 'what is html', 'werty', 'uionb', 'vcdr', 'tyuo', 'choice1', 1, 10),
(3, 'what is html ', '12', '2e3', '656', '77', 'choice1', 1, 10),
(4, 'what is java', 'ppp', 'uuu', 'jj', 'uu', 'choice1', 7, 7),
(5, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>r</td>\r\n			<td>r</td>\r\n		</tr>\r\n		<tr>\r\n			<td>r</td>\r\n			<td>r</td>\r\n		</tr>\r\n		<tr>\r\n			<td>r</td>\r\n			<td>r</td>\r\n		</tr>\r\n		<tr>\r\n			<td>r</td>\r\n			<td>r</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>dwiygviyd</p>\r\n', '<p>gdiyfi</p>\r\n', '<p>gfdyufd</p>\r\n', '<p>yuf</p>\r\n', 'choice2', 11, 13),
(6, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>r</td>\r\n			<td>r</td>\r\n		</tr>\r\n		<tr>\r\n			<td>r</td>\r\n			<td>r</td>\r\n		</tr>\r\n		<tr>\r\n			<td>r</td>\r\n			<td>r</td>\r\n		</tr>\r\n		<tr>\r\n			<td>r</td>\r\n			<td>r</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>dwiygviyd</p>\r\n', '<p>gdiyfi</p>\r\n', '<p>gfdyufd</p>\r\n', '<p>yuf</p>\r\n', 'choice2', 11, 13),
(7, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>hhh</td>\r\n			<td>jjj</td>\r\n		</tr>\r\n		<tr>\r\n			<td>hhh</td>\r\n			<td>jkjj</td>\r\n		</tr>\r\n		<tr>\r\n			<td>hh</td>\r\n			<td>jj</td>\r\n		</tr>\r\n		<tr>\r\n			<td>tt</td>\r\n			<td>yy</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>jyg</p>\r\n', '<p>uf86</p>\r\n', '<p>jf</p>\r\n', '<p>fr</p>\r\n', 'choice1', 11, 13),
(8, '<p>what is django?</p>\r\n', '<p>djano is frameworl</p>\r\n', '<p>wdwed</p>\r\n', '<p>wdewd</p>\r\n', '<p>ddwd</p>\r\n', 'choice1', 1, 10),
(9, '<p>what is html</p>\r\n', '<p>hyper</p>\r\n', '<p>text</p>\r\n', '<p>markup</p>\r\n', '<p>lll</p>\r\n', 'choice1', 1, 10),
(10, '<p>what is bug?</p>\r\n', '<p>bug 1</p>\r\n', '<p>bug 2</p>\r\n', '<p>bug 3</p>\r\n', '<p>bug 4</p>\r\n', 'choice3', 21, 17),
(11, '<p>what is django?</p>\r\n', '<p>framework</p>\r\n', '<p>language</p>\r\n', '<p>scripting</p>\r\n', '<p>none</p>\r\n', 'choice1', 21, 17),
(12, '<p>what is&nbsp; html ?</p>\r\n', '<p>hypertextmarkup language</p>\r\n', '<p>none</p>\r\n', '<p>nadfj</p>\r\n', '<p>wqwsda</p>\r\n', 'choice1', 20, 16),
(13, '<p>what is html?</p>\r\n', '<p>hyper text markup language</p>\r\n', '<p>dkakj</p>\r\n', '<p>jjdsakj</p>\r\n', '<p>mmnsda</p>\r\n', 'choice1', 20, 16);

-- --------------------------------------------------------

--
-- Table structure for table `learning_razorpaypayment`
--

CREATE TABLE `learning_razorpaypayment` (
  `id` bigint(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `captured_at` datetime(6) DEFAULT NULL,
  `fee_payment_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_razorpaypayment`
--

INSERT INTO `learning_razorpaypayment` (`id`, `payment_id`, `order_id`, `amount`, `currency`, `status`, `method`, `description`, `created_at`, `captured_at`, `fee_payment_id`) VALUES
(17, 'pay_OfUPHMtC4uURpK', 'undefined', '125.00', 'INR', 'captured', 'unknown', NULL, '2024-08-01 03:38:40.712869', '2024-08-01 03:38:40.712869', 108);

-- --------------------------------------------------------

--
-- Table structure for table `learning_set_timer`
--

CREATE TABLE `learning_set_timer` (
  `id` bigint(20) NOT NULL,
  `houres` int(11) NOT NULL,
  `minutes` int(11) NOT NULL,
  `secondes` int(11) NOT NULL,
  `class_name_id` bigint(20) DEFAULT NULL,
  `subject_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_set_timer`
--

INSERT INTO `learning_set_timer` (`id`, `houres`, `minutes`, `secondes`, `class_name_id`, `subject_id`) VALUES
(1, 0, 1, 60, 1, 10),
(2, 11, 11, 11, 11, 13),
(3, 1, 45, 60, 1, 10),
(4, 3, 33, 33, 21, 17),
(5, 2, 0, 0, 21, 17),
(6, 1, 30, 0, 20, 16),
(7, 3, 0, 0, 20, 16),
(8, 0, 5, 0, 20, 16);

-- --------------------------------------------------------

--
-- Table structure for table `learning_shift_names`
--

CREATE TABLE `learning_shift_names` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_shift_names`
--

INSERT INTO `learning_shift_names` (`id`, `name`, `start_time`, `end_time`) VALUES
(1, 'shift -A', '05:00:00.405000', '06:00:00.060000');

-- --------------------------------------------------------

--
-- Table structure for table `learning_sociallink`
--

CREATE TABLE `learning_sociallink` (
  `id` bigint(20) NOT NULL,
  `facebook_link` varchar(200) DEFAULT NULL,
  `twitter_link` varchar(200) DEFAULT NULL,
  `instagram_link` varchar(200) DEFAULT NULL,
  `youtube_link` varchar(200) DEFAULT NULL,
  `linkdin_link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_sociallink`
--

INSERT INTO `learning_sociallink` (`id`, `facebook_link`, `twitter_link`, `instagram_link`, `youtube_link`, `linkdin_link`) VALUES
(1, 'https://hi-in.facebook.com/developtrees.facebook/', NULL, 'https://www.instagram.com/developtrees/', 'https://www.youtube.com/watch?v=NIAPLw3i1e8', 'https://in.linkedin.com/company/developtrees-dsr-it-solutions-private-limited');

-- --------------------------------------------------------

--
-- Table structure for table `learning_staff`
--

CREATE TABLE `learning_staff` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_staff`
--

INSERT INTO `learning_staff` (`id`, `heading`, `image`) VALUES
(1, 'STAFF MANAGEMENT SYSTEM', 'images/pexels-shvetsa-5324941.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `learning_staff_fea`
--

CREATE TABLE `learning_staff_fea` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `paragraph2` varchar(600) NOT NULL,
  `discription` varchar(100) NOT NULL,
  `p1` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_staff_fea`
--

INSERT INTO `learning_staff_fea` (`id`, `heading`, `paragraph2`, `discription`, `p1`) VALUES
(1, 'FEATURES OF STAFF MANAGEMENT SYSTEM', 'Time and Attendance Reports', 'Detailed reports on the staff time and attendance, providing insights into attendance patterns.', ''),
(2, '', 'Scheduling Tools', 'Features for creating and managing staff schedules, ensuring smooth operations and optimal staffing.', ''),
(3, '', 'Performance Reviews', 'Simple and fair systems for evaluating staff performance, providing feedback and opportunities for i', ''),
(4, '', 'Payroll Management', 'A user-friendly system for handling staff salaries, deductions and benefits.', '');

-- --------------------------------------------------------

--
-- Table structure for table `learning_staff_imp`
--

CREATE TABLE `learning_staff_imp` (
  `id` bigint(20) NOT NULL,
  `main_heading` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `paragraph1` varchar(600) NOT NULL,
  `paragraph2` varchar(600) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `main_heading1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_staff_imp`
--

INSERT INTO `learning_staff_imp` (`id`, `main_heading`, `image`, `paragraph1`, `paragraph2`, `image2`, `main_heading1`) VALUES
(1, 'Profile Management', 'images/staff4.webp', 'LMS centralizes staff information, including contact details, roles, qualifications, and schedules. It streamlines access to up-to-date profiles, aiding in effective staff management and communication.', 'Managing and organizing staff assignments, class timetables, and meetings. It streamlines the creation and adjustment of schedules, ensuring efficient allocation of time and resources. This feature helps prevent conflicts and overlaps, providing a clear view of staff availability and commitments.', 'images/scheduling.jpg', 'Scheduling'),
(3, 'Performance Evaluation', 'images/performance evaluation.jpg', 'Facilitates the assessment of staff performance through tools for conducting reviews, setting goals, and providing feedback. It streamlines the evaluation process by centralizing performance data and documentation, allowing for more effective and transparent assessments.', 'Manages the distribution of physical and digital resources, such as classrooms, equipment, and teaching materials. It ensures optimal use by tracking availability, scheduling resources, and preventing conflicts, thus supporting effective planning and efficient utilization.', 'images/resource allocation.jpg', 'Resource Allocation');

-- --------------------------------------------------------

--
-- Table structure for table `learning_staff_prob`
--

CREATE TABLE `learning_staff_prob` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `discription` varchar(300) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_staff_prob`
--

INSERT INTO `learning_staff_prob` (`id`, `heading`, `discription`, `image`) VALUES
(1, 'Communication Problems', 'Lack of clear communication can lead to misunderstandings, conflicts, and reduced productivity. Encourage open communication channels, provide regular feedback, and ensure that everyone understands their roles and responsibilities.', 'images/staff1.jpg'),
(3, 'Conflict Resolution', 'Conflicts among team members can disrupt workflow and morale. Train managers and employees in conflict resolution techniques, encourage a collaborative approach to problem-solving, and address conflicts promptly before they escalate.', 'images/staff2.jpg'),
(4, 'Workload Imbalance', 'Uneven distribution of workload can lead to burnout and resentment among team members. Monitor workload distribution, redistribute tasks as needed, and encourage a culture of teamwork and collaboration where team members support each other.', 'images/staff3.png');

-- --------------------------------------------------------

--
-- Table structure for table `learning_stdclass`
--

CREATE TABLE `learning_stdclass` (
  `id` bigint(20) NOT NULL,
  `subjects` varchar(100) NOT NULL,
  `intro` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `subid` varchar(200) NOT NULL,
  `chaptername` varchar(100) NOT NULL,
  `chapterdis` longtext NOT NULL,
  `pdf` varchar(100) NOT NULL,
  `classes` varchar(100) NOT NULL,
  `classid` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_stdclass`
--

INSERT INTO `learning_stdclass` (`id`, `subjects`, `intro`, `description`, `subid`, `chaptername`, `chapterdis`, `pdf`, `classes`, `classid`) VALUES
(1, 'Hindi', 'Solutions for Hindi', 'पहली कक्षा के लिए समाधानों पर काम करने से छात्रों को यह पता लगाने में मदद मिलती है कि समस्याओं को कैसे हल किया जाए। कक्षा 1 हिंदी (रिमज़ोम) के लिए इसकी मदद से आप बुनियादी अवधारणाओं को बेहतर और तेज़ी से समझ सकते हैं। इसके अलावा, यह परीक्षा में अच्छे अंक प्राप्त करने में आपकी मदद करने के लिए एक आदर्श मार्गदर्शिका है। संबंधित अध्याय का अभ्यास करने के लिए नीचे दिए गए अध्यायवार लिंक पर क्लिक करें।', '101', 'अध्याय 1-झूला', 'प्रस्तुत कविता ‘झूला’ में कवि ने एक बच्चे की कोमल भावनाओं को व्यक्त किया है। इस कविता में एक बच्चा अपनी माँ से झूले की माँग कर रहा है। बच्चा अपनी माँ से कहता है कि वह उसके लिए एक झूला लगवा दे। बच्चा कहता है कि मैं इस पर झूलूंगा। झूले पर बैठकर और ऊपर बढ़कर आसमान को छू लूंगा।” कवि कहता है कि पेड़-पौधों की डालियाँ झूले की तरह झूल रही हैं। पत्ते-पत्ते तक झूल रहे हैं। बच्चा सोचता है कि इस झूले पर झूलने में कितने मजे हैं। झूले पर बैठकर झूलते हुए वह कल्पना-लोक में कभी दिल्ली तो कभी कलकत्ता की सैर कर आता है। झूले में झूलते बच्चे को ऐसा प्रतीत हो रहा है, जैसे उसके झूले के साथ-साथ नीचे की धरती भी झूला झूल रही है। बच्चा झूले से और ऊपर उड़ने के लिए कहता है। रिमझिम-रिमझिम वर्षा हो रही है। झूले पर बैठे बच्चे के मन में आसमान पर उमड़ते-घुमड़ते बादलों के दल को लूटने के विचार आ रहे हैं।', 'pdf_files/Class_1_Hindi_new_chapter-1.pdf', 'Class 1', '1001'),
(2, '', '', '', '101', 'अध्याय 2-आम की कहानी', 'एक लड़की ने आम के एक पेड़ पर लटका हुआ एक पका आम देखा। उसके मुँह में पानी भर आया। सामने के पेड़ पर बैठा एक कौआ भी ललचाई नजरों से इस आम को देख रहा था। लड़की ने अपने भाई को बुलाया और गुलेल से उस पके हुए आम को पेड़ से तोड़ने के लिए कहा। लड़की के भाई ने गुलेल से आम पर निशाना लगाया। आम पेड की डाली से नीचे गिरने लगा। तभी सामने के पेड़ पर बैठा कौआ फुर्ती से उड़ा और उसने गिरते हुए आम को अपनी चोंच में दबोच लिया। किंतु पके आम को अपनी चोंच में दबाए कौआ जैसे ही आगे बढ़ा, मधुमक्खियों के एक छत्ते से टकरा गया। कौए की। चोंच से आम छूट गया और पेड़ पर बने एक घोंसले में जा गिरा।', 'pdf_files/Class_1_Hindi_new_chapter-2.pdf', '', '1001'),
(3, '', '', '', '101', 'अध्याय 3-आम की टोकरी', 'प्रस्तुत कविता ‘आम की टोकरी’ में सिर पर टोकरी रखकर आम बेचती एक छह साल की बच्ची के मनोभावों का बड़ा ही सुंदर चित्रण किया गया है। इस कविता के कवि रामकृष्ण शर्मा ‘खद्दर’ हैं। कवि कहता है कि एक छह साल की बच्ची टोकरी में आम रखकर बेच रही है, किंतु उनका दाम नहीं बताती। वह आम से भरी टोकरी सबको दिखाकर अपने पास बुला रही है। वह लड़की सबको आम तो दे रही है, पर अपना नाम नहीं बता रही है। कवि कहता है कि अब हमें उस बच्ची का नाम नहीं पूछना। अब तो हमें केवल उसके रसीले आम चूसने हैं।', 'pdf_files/Class_1_Hindi_new_chapter-3.pdf', '', '1001'),
(4, '', '', '', '101', 'अध्याय 4-पत्ते ही पत्ते', 'इस कहानी की लेखिका वर्षा सहस्रबुद्धे हैं। यह कहानी मौज मस्ती का खेल खेलते बच्चे और उनकी दीदी की है। खेल प्रारंभ होता है। दीदी बच्चों से कहती हैं कि मैं पाँच तक गिनती करूंगी और तुम लोग एक-एक करके गोला बनाकर बैठ जाओगे। दीदी के गिनती पूरी करते ही सभी बच्चे गोला बनाकर बैठ गए। आज दीदी पत्ते लेकर आई थीं और बच्चों को उनके बारे में जानकारी देना चाहती थीं। दीदी अपने साथ तरह-तरह के पत्ते लेकर आई थीं। कुछ पत्ते लंबे, कुछ गोल, कुछ छोटे और कुछ बड़े थे। एक पत्ता लाल, एक पीला और एक कत्थई रंग का था। एक पत्ते पर नसें दिख रही थीं, एक पत्ता कतरीला था। एक पत्ते का डंठल एकदम सीधा था तो एक पत्ता झालरवाला था। बच्चों ने जब पत्तों को छूकर देखा तो कोई पत्ता एक तरफ़ से मुलायम था तो दूसरी तरफ से खुरदरा। कुछ पत्ते बंदनवार जैसे लग रहे थे।', 'pdf_files/Class_1_Hindi_new_chapter-4.pdf', '', '1001'),
(5, '', '', '', '101', 'अध्याय 5-पकौड़ी', 'प्रस्तुत कविता ‘पकौड़ी’ के रचयिता सर्वेश्वरदयाल सक्सेना हैं। इस कविता में कवि ने गरमा-गरम पकौड़ी के तलने से लेकर उसे मुँह में जाने तक का वर्णन बड़े ही रोचक शब्दों में किया है। जब पकौड़ी को तेल में छाना जाता है तो ऐसा लगता है कि वह तेल में छुन छुन करके नाच रही हो। तली पकौड़ी प्लेट में आने पर शर्मायी-सी लगती है। दौड़ती हुई पकौड़ी हाथ से उछलकर सीधे पेट तक जा पहुँचती है। कवि कहता है कि पेट में जाकर पकौड़ी घबरा-सी जाती है। कवि के मन को पकौड़ी खूब भाती है।', 'pdf_files/Class_1_Hindi_new_chapter-5.pdf', '', '1001'),
(6, '', '', '', '101', 'अध्याय 6-छुक-छुक गाड़ी', 'इस कविता के रचयिता सुधीर जी हैं। ‘छुक-छुक गाड़ी’ नामक इस कविता में सुधीर जी एक ऐसी रेल के बारे में बता रहे हैं, जो स्टेशन से खुल चुकी है। वे लोगों को सावधान करते हुए कहते हैं कि सामने से हट जाओ, क्योंकि मेरी रेल खुल चुकी है और यदि टक्कर हो गई तो मेरी ज़िम्मेदारी नहीं होगी। रेल धक-धक, छू-छु, भक-भक, चू-चू, धक-धक, धू-धू करती आ चुकी है। कवि कहते हैं कि रेल का इंजन भारी-भरकम है तथा धम-धम, गम-गम करता आगे बढ़ता जाता है। गाड़ी ने सीटी दे दी है तथा टीटी टिकट देखता फिर रहा है कवि कहते हैं कि मेरी रेल पेलम पेल करती हुई छूट चुकी है।', 'pdf_files/Class_1_Hindi_new_chapter-6.pdf', '', '1001'),
(7, '', '', '', '101', 'अध्याय 7-रसोईघर', 'रसोईघर कविता का सारांश   ‘रसोईघर’ मधु पंत द्वारा लिखित एक रोचक कविता है। इस कविता के माध्यम से कवयित्री बड़े ही रोचक शब्दों में रसोईघर की चीजों का वर्णन कर रही हैं। खेलते हुए मुन्ना मुन्नी जब रसोईघर की खिड़की को खोलकर देखते हैं तो पाते हैं कि अंदर चकला-बेलन, चाकू-छलनी आदि बातें कर रहे हैं। चाकू कहता है कि मैं फल और सब्ज़ियाँ काटता हूँ और टुकड़े टुकड़े करके सभी को बाँटता हूँ। गाजर-मूली, प्याज-टमाटर आदि को मैं काटता तथा छीलता हूँ और लोग इसे सजाकर रखते हैं। थाली कहती है कि मेरा आकार गोल चौड़ा-सा है और मैं ताली की तरह बज भी सकती हूँ। मुझमें रोटी-सब्ज़ी डालकर सब झटपट खाते हैं।', 'pdf_files/Class_1_Hindi_new_chapter-7.pdf', '', '1001'),
(8, '', '', '', '101', 'अध्याय 8-चूहो! म्याऊँ सो रही है', '‘चूहो। म्याऊँ सो रही है’ नामक इस कविता के रचयिता धर्मपाल शास्त्री हैं। इस कविता में कवि ने एक दिन बिल्ली मौसी के सो जाने पर चूहों को स्वच्छंदतापूर्वक मनमानी करने हेतु ललकारा है। इस कविता में कवि कह रहे हैं कि घर के पीछे तथा छत के नीचे पाँव पसारे, पूँछ सँवारे बिल्ली मौसी सो रही है। उसकी साँसों से ‘घर घर घर घर’ की आवाज़ आ रही है। बिल्ली सोई है और रसोई में खाने-पीने की चीजों से भरे हुए पतीले और रसीले चने रखे हैं। कवि चूहों से कहता है कि झटका देकर मटके को उलट दो तथा जो कुछ मिले, उसे चट कर जाओ। आज तुम्हें किसी बात का डर नहीं है। आज तुम किसी भी चीज़ को कुतर सकते हो। तुम अपनी पूँछ मरोड़ों, पूँछ सिकोड़ों या कितना भी तबाही मचा दो, आज कोई कुछ कहनेवाला नहीं है, क्योंकि आज बिल्ली सो रही है। आज घर पर तुम्हारा ही राज है।', 'pdf_files/Class_1_Hindi_new_chapter-8.pdf', '', '1001'),
(9, '', '', '', '101', 'अध्याय 9-बंदर और गिलहरी', 'एक बंदर पेड़ पर बैठा था। उसकी पूँछ काफ़ी लंबी थी और जमीन तक लटक रही थी। एक गिलहरी ने बंदर की पूँछ को देखा। उसने सोचा कि यह कोई झूला है। वह उस पर चढ़कर झूलने लगी। बंदर को गुदगुदी होने लगी। उसने गिलहरी से हँसकर कहा कि उसे गुदगुदी हो रही है। इस पर गिलहरी चौंक गई। उसने बंदर से कहा कि यह तुम हो बंदर भैया, मैं तो समझ रही थी कि कोई झूला है। मुझे तो बड़ा मज़ा आ रहा था। यह कहकर हँसती हुई गिलहरी पेड़ की डाल पर चढ़ गई।', 'pdf_files/Class_1_Hindi_new_chapter-9.pdf', '', '1001'),
(10, '', '', '', '101', 'अध्याय 10-पगड़ी', '‘पगड़ी’ एक बड़ी रोचक कविता है, जिसके रचनाकार सर्वेश्वरदयाल सक्सेना हैं। इस कविता में विचित्र स्थितियों का सामना करती एक पगड़ी का वर्णन किया गया है। कवि कह रहा है कि एक पगड़ी को रगड़-रगड़कर इतना साफ़ किया गया कि मैल तो रह गई, किंतु पगड़ी फट गई। इस पर पगड़ी की हट्टी-कट्टी मालकिन इतनी झगड़ी कि मैल और पगड़ी दोनों ही तर-बतर हो गए।', 'pdf_files/Class_1_Hindi_new_chapter-10.pdf', '', '1001'),
(11, '', '', '', '101', 'अध्याय 11-पतंग', '‘पतंग’ कविता सोहनलाल द्विवेदी द्वारा लिखी गई है। इस कविता में कवि ने पतंग के गुणों को बताया है। कवि कहता है कि पतंग आसमान में सर-सर सर-सर, फर-फर फर-फर करके उड़ती है। एक पतंग दूसरी पतंग को काटती हुई आकाश में खूब सैर-सपाटा करती है। पतंगें एक-दूसरे से लड़ती हैं और फिर कटकर लुट जाती हैं। सर-सर, फर-फर करती पतंग आसमान में उड़ान भरती है।', 'pdf_files/Class_1_Hindi_new_chapter-11.pdf', '', '1001'),
(12, '', '', '', '101', 'अध्याय 12-गेंद-बल्ला', 'प्रस्तुत कहानी गेंद और बल्ले की है। गेंद ने बल्ले से कहा कि तुम मुझे क्यों मारते हो? बल्ले ने उत्तर दिया कि यदि मैं तुम्हें मारूंगा नहीं तो खेल कैसे होगा? फिर जब गेंद बल्ले के पास आई तो उसने जोर से उसे मारा। गेंद कूदती फुदकती दूर जाकर एक झाड़ी में छिप गई। बल्ला गेंद को ढूंढता रहा, किंतु गेंद नहीं मिली। शाम हो गई। बल्ले को परेशान देखकर गेंद खुश हो रही थी। जब अँधेरा घिरने लगा तो बल्ला निराश होकर लौटने लगा। तभी झाड़ी से गेंद ने चिल्लाकर कहा कि मैं यहाँ हूँ। बल्ले ने झाड़ी से खींचकर गेंद को उठा लिया। गेंद ने बल्ले से कहा कि अब मुझे मत मारना।', 'pdf_files/Class_1_Hindi_new_chapter-12.pdf', '', '1001'),
(13, '', '', '', '101', 'अध्याय 13-बंदर गया खेत में भाग', '‘बंदर गया खेत में भाग’ कविता के रचयिता सत्यप्रकाश कुलश्रेष्ठ हैं। इस कविता में उन्होंने एक बंदर के क्रियाकलापों का बड़े ही रोचक ढंग से वर्णन किया है। एक बंदर एक साग के खेत में गया और ढेर सारा साग तोड़ा। फिर उसने आग जलाकर साग पकाया और उसे सापड़-सूपड़ करके खूब मज़े से खाया। उसके बाद उसने दूब उखाड़कर अपना मुँह पोंछा। फिर बंदर राजा चलनी बिछाकर और सूप ओढ़कर मजे से सो गए।', 'pdf_files/Class_1_Hindi_new_chapter-13.pdf', '', '1001'),
(14, '', '', '', '101', 'अध्याय 14-एक बुढ़िया', 'कविता ‘एक बुढ़िया’ के रचयिता निरंकारदेव ‘सेवक’ हैं। इस कविता में कवि ने एक ऐसी बुढ़िया के बारे में बताया है, जिसके पास कोई काम न था। वह दिनभर खाली रहती और कोई काम नहीं करती थी। काम रहने के कारण वह दिनभर बैठी रहती और थक जाती थी। इसलिए उसे आराम भी नहीं था। काम न रहने के कारण उसके लिए सुबह, दोपहर, शाम और रात सब बराबर थे।', 'pdf_files/Class_1_Hindi_new_chapter-14.pdf', '', '1001'),
(15, '', '', '', '101', 'अध्याय 15-मैं भी…', 'एक अंडे में से बत्तख का एक बच्चा निकला। उसने निकलकर कहा कि मैं बाहर आ गया। एक और अंडे में से मुर्गी का चूजा निकला। बाहर निकलकर उसने भी कहा कि मैं भी आ गया। अब बत्तख का बच्चा घूमने के लिए जाने लगा तो चूजा भी उसके साथ जाने को तैयार हो गया। बत्तख का बच्चा गड्ढा खोदने लगा तो उसके साथ-साथ चूजा भी गड्ढा खोदने लगा। बत्तख का बच्चा बोला कि मुझे एक केंचुआ मिला तो चूजे ने भी कहा कि मुझे भी एक केंचुआ मिला। अब बत्तख का बच्चा जब तितली पकड़ने लगा तो नकलची चूजा भी तितली पकड़ने लगा। बत्तख का बच्चा जब तैरने के लिए गया तो चूजे ने कहा कि वह भी तैरेगा। किंतु चूजा पानी में नहाने के लिए जाते ही डूबने लगा और ‘बचाओ-बचाओ’ चिल्लाने लगा। तब बत्तख के बच्चे ने चूजे को बाहर निकाला।', 'pdf_files/Class_1_Hindi_new_chapter-15.pdf', '', '1001'),
(16, '', '', '', '101', 'अध्याय 16-लालू और पीलू', 'एक मुर्गी के दो चूजे थे। एक का नाम लालू और दूसरे का नाम था पीलू। लालू लाल चीजें तथा पीलू पीली चीजें खाता था। एक दिन लालू ने पौधे पर लाल-लाल कोई चीज देखी और उसे खा लिया। वह लाल मिर्च थी। लालू की जीभ जलने लगी और वह रोने लगा। मुर्गी और पीलू उसके पास दौड़े-दौड़े आए। उनके पास पीले-पीले गुड़ का टुकड़ा था। लालू ने झट से गुड़ का टुकड़ा खाया और उसके मुँह की जलन ठीक हो गई। मुर्गी ने अपने दोनों चूजों को प्यार से लिपटा लिया।', 'pdf_files/Class_1_Hindi_new_chapter-16.pdf', '', '1001'),
(17, '', '', '', '101', 'अध्याय 17-चकई के चकदुम', '‘चकई के चकदुम’ कविता के रचयिता रमेश तैलंग हैं। इस कविता के माध्यम से कवि ने ग्रामीण परिवेश का चित्रण बड़े ही सुंदर और सहज शब्दों में किया है। कवि बच्चों से कहता है कि आओ, हम तुम मिलकर गाँव में बनी झोंपड़ी में साथ-साथ रहें। ग्वाले की गाय का दूध हम-तुम मिलकर पिएँ। कवि कहता है कि हम-तुम मिलकर पानी में कागज़ की नाव तैराएँ और फुलवा की बगिया से फूल चुनें। अंत में वे खेल समाप्ति की घोषणा करते हैं और घर चलने को कहते हैं।', 'pdf_files/Class_1_Hindi_new_chapter-17.pdf', '', '1001'),
(18, '', '', '', '101', 'अध्याय 18-छोटी का कमाल', '‘छोटी का कमाल’ कविता के कवि सफ़दर हाश्मी हैं। इस कविता में उन्होंने एक मोटे लड़के और एक पतली लड़की का बड़े ही चुटीले शब्दों में वर्णन किया है। कवि कहता है कि समरसिंह नामक एक लड़का अपने मोटापे पर बहुत घमंड करता था। वह ‘छोटी’ नामक एक दुबली-पतली लड़की को हेय दृष्टि से देखता था। वह अपने को आलू भरा पराँठा और छोटी को पतली रोटी कहता था। वह अपने को लंबा, मोटा-तगड़ा तथा मोटा पटसन का रस्सा समझता था, जबकि छोटी को दुबली-पतली तथा छोटी कच्ची सुतली। लेकिन जब दोनों सी-सॉ पर बैठे तो समरसिंह के होश ठिकाने आ गए। हल्की होने के कारण छोटी झूले के दूसरे हिस्से में चोटी पर पहुँच गई और समरसिंह भारी होने के कारण झूले के दूसरे छोर पर नीचे रह गया। समरसिंह की अकड़ दूर हो गई।', 'pdf_files/Class_1_Hindi_new_chapter-18.pdf', '', '1001'),
(19, '', '', '', '101', 'अध्याय 19-चार चने', '‘चार चने’ कविता के रचयिता निरंकारदेव सेवक हैं। इस कविता में कवि ने यह बताया है कि यदि उसके पास पैसे होते तो वह क्या करता। कवि कहता है कि यदि उसके पास पैसे होते तो वह चार चने लाता। उनमें से एक चना वे तोते को खिलाते। चना खाते ही तोता टाँय-टॉय गाता और उन्हें बड़ा मज़ा आता। कवि फिर कहता है कि उसके पास यदि पैसे होते तो वह चार चने लाता। उनमें से एक चना वह घोड़े को खिलाता। इससे घोड़ा उन्हें पीठ पर बैठाता और उसे बड़ा मज़ा आता। अंत में, कवि पुन: कहता है कि यदि उसके पास पैसे होते तो वह चार चने लाता और एक चना चूहे को खिलाता। चूहा जब चना खाता तो उसका दाँत टूट जाता और उन्हें बड़ा मज़ा आता।', 'pdf_files/Class_1_Hindi_new_chapter-19.pdf', '', '1001'),
(20, '', '', '', '101', 'अध्याय 20-भगदड़', 'प्रस्तुत कविता ‘भगदड़’ के कवि पदुमलाल पुन्नालाल बख्शी हैं। इस कविता में उन्होंने घर के जीव-जंतुओं से परेशान साठ वर्ष की एक बुढ़िया का वर्णन किया है। कवि कहता है कि बुढिया चक्की चला रही थी, तभी दोने में रखी मिठाई पर मक्खी आकर बैठ गई। बुढ़िया जैसे ही बाँस उठाकर मक्खी को भगाने के लिए दौड़ी, बिल्ली पकौड़े खाने लगी। बुढिया घर के अंदर बिल्ली को भगाने के लिए झपटी, तभी कुत्ता रोटी लेकर भाग गया। तब बुढ़िया बाहर निकली। उसके बाहर निकलते ही एक बकरा घर के अंदर घुस गया। बुढ़िया जैसे ही बाहर निकली, मटका गिर गया। इससे बकरा भाग खड़ा हुआ। तब बुढ़िया थककर बैठ गई तथा बिल्ली को ही पूरा घर सौंप दिया।', 'pdf_files/Class_1_Hindi_new_chapter-20.pdf', '', '1001'),
(21, '', '', '', '101', 'अध्याय 21-हलीम चला चाँद पुर', 'हलीम नाम के एक लड़के को एक दिन चाँद पर जाने की इच्छा हुई। वह एक रॉकेट के कारखाने में बैठ गया। उसने एक रॉकेट लिया और रॉकेट पर बैठकर चाँद की तरफ़ चल पड़ा। रास्ते में चलते-चलते अँधेरा हो गया। अब हलीम को डर लगने लगा, क्योंकि उसे चाँद पर जाने के रास्ते का पता नहीं था। थोड़ी देर में उसने चाँद देखा और वह खुश हो गया। चाँद पर ढेर सारे बड़े-बड़े गड्ढे और बड़े-बड़े पहाड़ थे। लेकिन वहाँ कोई पेड़-पौधा, जानवर या मनुष्य नहीं था। हलीम को यह जगह बिलकुल ही पसंद नहीं आई और वह रॉकेट पर बैठकर अपने घर लौट आया।', 'pdf_files/Class_1_Hindi_new_chapter-21.pdf', '', '1001'),
(22, '', '', '', '101', 'अध्याय 22-हाथी चल्लम चल्लम', 'कविता ‘हाथी चल्लम चल्लम’ के रचयिता श्रीप्रसाद हैं। इस कविता में कवि ने एक हौदे में बैठकर बच्चों द्वारा की गई हाथी की सवारी का वर्णन किया है। बच्चे एक हौदे में बैठकर हाथी पर सवार होकर खूब मज़े कर रहे हैं। हाथी हौले-हौले चल रहा है। हाथी की सैंड लंबी है और दाँत भी लंबे-लंबे हैं। अपने सिर को मटकाता, नखरे दिखाता हाथी अपनी मस्त चाल में चला जा रहा है। जब हाथी चलता है। तो उसकी पर्वत जैसी देह थुलथुल कर हिलती है। हाथी के पाँव खंभे की तरह भारी हैं। हाथी अपने पैरों की ‘धम्म-धम्म’ की आवाज़ के साथ आगे बढ़ रहा है। बच्चे कह रहे हैं कि हाथी के जैसी कोई सवारी नहीं है। हाथी का महावत पगड़ी बाँधकर बैठा है। हम बच्चे हाथी पर हौदे में बैठे हैं। बच्चे कह रहे हैं। कि हम हाथी पर सवार होकर दिनभर घूमेंगे। पहले तो बच्चे हाथी को नाचने के लिए कहते हैं, फिर यह कहकर वे मना कर देते हैं कि कहीं वे गिर न जाएँ।', 'pdf_files/Class_1_Hindi_new_chapter-22.pdf', '', '1001'),
(23, '', '', '', '101', 'अध्याय 23-सात पूँछ का चूहा', 'एक चूहा था। उसके सात पूँछे थीं। सब उसे सात पूँछोंवाला चूहा कहकर चिढ़ाते थे। तंग आकर चूहे ने नाई से अपनी एक पूँछ कटवा ली। अब उसके पास केवल छह पूँछे बची। अगले दिन चूहा जैसे ही बाहर निकला तो फिर उसे सब मिलकर चिढ़ाने लगे-छह पूंछ का चूहा, छह पूंछ का चूहा।  तंग आकर चूहा पुनः नाई के पास पहुँचा और उसने एक-एक करके अपनी सारी पूँछे कटवा दीं। अब चूहे की एक भी पूँछ नहीं बची। लेकिन फिर भी सब चूहे को चिढ़ाते-बिना पूँछ का चूहा, बिना पूँछ का चूहा।', 'pdf_files/Class_1_Hindi_new_chapter-23.pdf', '', '1001'),
(24, 'Hindi', 'Solutions for Hindi', 'Hindi language and develop your grammar easily with Class 2 Hindi. Students of Class 2 have to focus on the Hindi subject as it helps in developing their language skills in the best way. By studying the chapters in their Hindi textbook, students will be able to improve their language and comprehension skills in the best way. The Class 2 Hindi Questions Answer PDFs have been designed by ’s experts to make sure that students are able to gain proper insights into the chapter properly. They can thoroughly understand the plot, characters, and examples in the story by practising these questions and answers.', '202', 'अध्याय 1-नीमा की दादी', '\"नीमा की दादी\" एक प्रे रक कहानी है जो छोिी सी बच्ची नीमा और उसकी प्य ारी दादी के बीच की गहराईयोीं को दशाणती है। नीमा और उसकी दादी का ररश्ता बहुत खास होता है।', 'pdf_files/chapter1_jqo9qwx.pdf', '', '1002'),
(25, '', '', '', '202', 'अध्याय 2-घर', 'इस कबवता में, कबव अपने बपता और उनके साथ घर के बारे में बात कर रहा है। घर को एक सुरबित, प्य ार भरा स् थान मानता है जो उसे खेलने, घमासान करने, और आराम से बवश्राम करने का अवसर प्र दान करता है। घर को माूँ की गोदी के समान ममता से भरा हु आ देखता है और जब भी वह थका हु आ वापस आता है', 'pdf_files/chapter2_f9QRPaN.pdf', '', '1002'),
(26, '', '', '', '202', 'अध्याय 3-माला की चादी की पायल', 'कहानी माला के चारोीं ओर घूमने वाली है, जो एक अनूठी चाूँदी की पायल (चाूँदी की पायल) के स्व ामी हैं। हालाींबक, इस पायल ने माला को डर का स्र ोत बना बदया है क् ोींबक इसे उसके जीवन में बवबभन्न व्यद्ध ियोीं को डरा रहा है, जैसे की एक बबल्ली , एक डाबकया, उसकी दादी, और उसके छोिे भाई को।', 'pdf_files/chapter3_zK0yzY5.pdf', '', '1002'),
(27, '', '', '', '202', 'अध्याय 4-मााँ', 'यह कबवता माूँ के प्र बत गहरी भावनाओीं और आदर का अबितीय अबभव्यद्धि करती है। इसमें माूँ को प्य ार और पबविता के अबितीय प्र तीक के रू प में बचबित बकया गया है, जैसा बक बमस्री की बमठास की अपेिा। पींद्धियाूँ माूँ की अनूठी गुर्धमों को हाबसल करने पर बल देती हैं', 'pdf_files/chapter4_MMwF1RM.pdf', '', '1002'),
(28, '', '', '', '202', 'अध्याय 5-थाथू और मैं', 'इस कहानी में एक छोिी सी बच्ची अपने दादाजी से जुडी हु ई है, बजन्ें वह \'थाथा\' कहती है। कहानी में बताया गया है बक बच्ची और उसके थाथा कैसे समय बबताते हैं और बकस तरह से उनके साथ बवबभन्न बियाएूँ करते हैं। वे साथ में समुद्र ति पर जाते हैं', 'pdf_files/chapter5_o5i0um5.pdf', '', '1002'),
(29, '', '', '', '202', 'अध्याय 6-चीींटा', 'यह कबवता एक चीींिे की कहानी है जो अपनी भूख को शाींत करने के बलए बा़िार जाता है। चीींिा पहले दूध लाता है, बजससे दही बनती है। इसके बाद शक्कर बनाने के बलए उसने दही का उपयोग बकया, और बफर शक्कर से शरबत बनाया।', 'pdf_files/chapter6_fOSzZRk.pdf', '', '1002'),
(30, '', '', '', '202', 'अध्याय 7-थाथू और मैं', 'बदवाकर एक पाूँच वषीय बच्चा है जो सबको हूँसाने में रु बच रखता है और गबर्त को सीखने की बहुत इच्छा है। उसकी बडी बबहन मीना उसे सींख्याओीं को जोडना बसखाती है और इसमें उसकी रु बच बढती है।', 'pdf_files/chapter7_BkT5tn9.pdf', '', '1002'),
(31, '', '', '', '202', 'अध्याय 8-तीन दोस्त', 'कबवता \"रींगीन दोस्त \" हमें यह बताती है बक बवबभन्न रींगोीं के बीच भी दोस्ती और एकता का महत्वपूर्ण स् थान है। तीन दोस्त , लाल, पीला, और नीला, बमलकर नए दोस्तोीं को बनाते हैं, जो नारींगी, हरा, और बैंगनी होते हैं।', 'pdf_files/chapter8_ZpSI4lw.pdf', '', '1002'),
(32, '', '', '', '202', 'अध्याय 9-दुबनया रींगीन है', '\"रींगाचारी\" एक प्रे रर्ादायक कबवता है जो बवबभन्न रींगोीं के माध्यम से जीवन की सुींदरता और बभन्नता की महत्वपूर्णता को बयान करती है।', 'pdf_files/chapter9_jfyKmrj.pdf', '', '1002'),
(33, '', '', '', '202', 'अध्याय 10-कौन', 'इस कबवता में कबव ने प्र ाकृबतक तत्वोीं की महत्वपूर्णता पर चचाण की है और यह प्रश् बकए हैं बक यबद इन प्र ाकृबतक तत्वोीं में कुछ भी अभाव होता तो हमारा जीवन कैसा होता। चाूँद, सरज, नबदयाूँ, पवणत, पेड, फूल, बादल, और हम खुद इस कबवता के माध्यम से यह सोचते हैं', 'pdf_files/chapter10_fzcpE30.pdf', '', '1002'),
(34, '', '', '', '202', 'अध्याय 11-िैंगनी ि ि', 'ि ि एक साफेद कुत्ते था ि एक पेड के नीचे स रहा था। वह ख िते हु ए िैंगनी िब्बे की तलाि में आकाि में चले िाने वाले िादल ीं क सवारी करता है। ि ि ने सरि, िादल, कौआ, गब्बारा , और घास से पूछा बक क्य ा उन् ीं ने िैंगनी िब्बे देखे हैं, लेबकन सभी ने इनक नहीीं देखा।', 'pdf_files/chapter11_DbrabPx.pdf', '', '1002'),
(35, '', '', '', '202', 'अध्याय 12-त बसया का सपना', 'िोबसया, एक उत्कृि स्वप्नदृ िा , ने एक सपना देखा बजसमें दुबनया से सभी रींग बलपिे हु ए थे, बजससे उसे गहरी बचींता हु ई। इस सपने में सभी रींगोीं का अभाव उसे एक रींगहीन वास्तबवकता की ओर बढाता था। जागते हु ए , िोबसया को बचींता में बमली, क् ा सचमुच रींग गए हैं।', 'pdf_files/chapter12_pRG88aT.pdf', '', '1002'),
(36, '', '', '', '202', 'अध्याय 13- तालाब', 'शबश सबलोक की कहानी \"तालाब\" में एक छोिे से तालाब की बेहद सुींदर बचिर् बकया गया है। यह तालाब बवबभन्न प्र कार के प्र ाबर्योीं के बलए एक साकारात्मक स् थान है। तालाब के पास देखने को कई प्र कार के जीवार्ु , सररसृप, कछुए, मेंढक, और मछबलयाूँ बसी हैं।', 'pdf_files/2ndHindi13-26-2-6.pdf', '', '1002'),
(37, '', '', '', '202', 'अध्याय 14-बीज', '  बीज कहानी एक छोटे से गाँव की है जहां एक बच्चा नामक है. गाँव के बच्चेबच्चियाँ एक दिन उससे पूछते हैं कि पेड़ और झाड़ी में क्या फर्क होता है, और उसका जवाब है कि फर्क तो कोई भी नहीं पड़ता। इसका मतलब है कि सभी पेड़झाड़ी बराबरी में होते हैं और कोई भी छोटा नहीं होता।', 'pdf_files/2ndHindi14-26-2-6.pdf', '', '1002'),
(38, '', '', '', '202', 'अध्याय 15-किसान  ', 'किसान एक महत्वपूर्ण और सामाजिक रूप से उत्कृष्ट चरित्र है जो हमारे देश की आत्मनिर्भरता और अन्न सुरक्षा में अहम भूमिका निभाता है। इस अध्याय का सारांश निम्नलिखित है:', 'pdf_files/2ndHindi14-26-7-11.pdf', '', '1002'),
(39, '', '', '', '202', 'अध्याय 16-मूली ', 'मूली एक सुपरफूड है जो विभिन्न स्वास्थ्य लाभों से भरपूर है। इसका वैज्ञानिक नाम Brassica rapa है और यह खासतर सर्दीयों में पैदा होने वाली सब्जियों में से एक है। मूली का स्वाद मीठा और थोड़ा कच्चा होता है जो इसे सलाद और सब्जियों में बनाने के लिए आदर्श बनाता है।', 'pdf_files/2ndHindi14-26-12-16.pdf', '', '1002'),
(40, '', '', '', '202', 'अध्याय 17-बरसात और मेंढक ', 'बरसात और मेंढ़क एक बच्चों के लिए रूचि पूर्ण और मनोहर कहानी है जो हमें वर्षा और मेंढ़क के बारे में सिखाती है। यह कहानी हमें विज्ञान और प्राकृतिक संस्कृति के महत्वपूर्ण तत्वों के बारे में बताती है। कहानी का एक हिस्सा एक छोटे से गाँव के एक छोटे से बच्चे की है, जो वर्षा के मौसम का आनंद लेता है और उसे मेंढ़कों को देखने का शौक है। उसका जीवन खुद सोने की तरह होता है, जब वह वर्षा के बाद अपने गाँव के किनारे बने झील में मेंढ़कों को देखता है।', 'pdf_files/2ndHindi14-26-17-23.pdf', '', '1002'),
(41, '', '', '', '202', 'अध्याय 18-शेर और चूहे की दोस्त', 'शेर और चूहे की दोस्त एक कहानी है जो जंगल में घटित हुई थी। इस कहानी में शेर और चूहा मुख्य पात्र हैं जो अपनी अलगअलग जीवनशैलियों के बावजूद एकदूसरे के साथ दोस्त बनते हैं। शेर ने एक दिन चूहे को एक खतरनाक स्थिति से बचाया, जिससे उनकी दोस्ती शुरू हुई। इसके बाद, वे एकदूसरे की मदद करने और सहयोग करने लगे। वे साथ में खेती करते थे और अन्य जीवों के साथ भी मित्रता बनाए रखने का प्रयास करते थे।', 'pdf_files/2ndHindi14-26-24-28.pdf', '', '1002'),
(42, '', '', '', '202', 'अध्याय 19-आउट', 'आउट एक क्रिकेट में एक महत्वपूर्ण हस्तक्षेप है जिससे एक खिलाड़ी बैटिंग के दौरान खेल से बाहर हो जाता है। यह एक महत्वपूर्ण मोमेंट होता है जो खेल का कोर बदल सकता है। खिलाड़ी आउट हो सकता है विभिन्न कारणों से, जैसे कि कैच, बॉल बाय, लीग बीफोर विकेट टच, रन आउट, हिट विकेट, इत्यादि। आउट होने पर खिलाड़ी उस इनिंग्स में और मैच में खेलने का हकदार नहीं रहता है और उसका स्कोर भी बदल जाता है। इससे दूसरे टीम को फायदा होता है और उसे बॉलर का क्रेडिट मिलता है जो विकेट लेता है। यह क्रिकेट मैच में रोमांच बढ़ाता है और जीतने वाली टीम को उत्साहित करता है।', 'pdf_files/2ndHindi14-26-29-33.pdf', '', '1002'),
(43, '', '', '', '202', 'अध्याय 20-छुपनछुपाई', '\"छुपनछुपाई\" एक मस्तिष्क और शारीरिक सक्रियता से भरपूर खेल है, जो बच्चों के बीच में आत्मीयता और मजेदारी को बढ़ावा देता है। इस खेल में एक बच्चा \"देनेवाला\" चुना जाता है जिसका कार्य होता है बाकी बच्चों को ढूंढ़ना। बच्चे अलगअलग स्थानों में छुपकर जाते हैं, और देनेवाला उन्हें ढूंढ़ने की कोशिश करता है।', 'pdf_files/2ndHindi14-26-34-38.pdf', '', '1002'),
(44, '', '', '', '202', 'अध्याय 21-हाथी साइकिल चला रहा था', 'यह वाक्य एक हास्यास्पद और विचारयोग्य चित्र बनाता है, जिसमें दो असमान और विरोधी तत्व  हाथी और साइकिल  एक साथ होने की कोशिश कर रहे हैं। इससे यह साबित होता है कि इस वाक्य में मेल नहीं हो रहा है और संयोजन में कोई कमी है। ', 'pdf_files/2ndHindi14-26-39-43.pdf', '', '1002'),
(45, '', '', '', '202', 'अध्याय 22-हाथी साइकिल चला रहा था', '\"चार दिशाएँ\" एक विशेष तरीके से आपको किसी स्थान की स्थिति और दिशा की जानकारी प्रदान करती हैं। इनमें उत्तर, दक्षिण, पश्चिम, और उत्तर पूर्व शामिल हैं, जो नेविगेशन और यात्रा के लिए महत्वपूर्ण हैं। यह सुनिश्चित करने में मदद करता है कि हम सही दिशा में जा रहे हैं और अपने लक्ष्य तक सुरक्षित रूप से पहुंच रहे हैं। चार दिशाएँ समय, स्थान, और स्थितियों के आधार पर बदल सकती हैं, और इसलिए इन्हें समझना और सही तरीके से उपयोग करना महत्वपूर्ण है।', 'pdf_files/2ndHindi14-26-44-48.pdf', '', '1002'),
(46, '', '', '', '202', 'अध्याय 23-चंदा मामा', '\"चंदा मामा\" कहानी है एक प्यारे से और आनंदमय चंदा के बारे में, जो रात्रि के समय बच्चों के साथ बहुत सुंदर गतिविधियों में शामिल होते हैं। चंदा मामा चंदनी चौक में रहते हैं और वहां से रात की चमक, शांति, और सौंदर्य का आनंद लेते हैं।', 'pdf_files/2ndHindi14-26-49-53.pdf', '', '1002'),
(47, '', '', '', '202', 'अध्याय 24-िगरे ताल में चंदा मामा', '\"चंदा मामा\" कविता एक बचपन की खासी और रोमांटिक दुनिया को चित्रित करती है जहां चंदा मामा, एक प्रसन्न रंग के साथ, बच्चों के साथ रात्रि में खेलते हैं। उनकी बड़ी और सुंदर टोपी उनकी उत्साही प्रकृति को दर्शाती है और बच्चों को खेलने और अपने प्रिय सपनों का पीछा करने के लिए प्रेरित करती है। कविता में रात्रि के सुंदर दृश्यों का आनंद लेने का वर्णन है', 'pdf_files/2ndHindi14-26-54-58.pdf', '', '1002'),
(48, '', '', '', '202', 'अध्याय 25-सबसे बड़ा छाता', '\"सबसे बड़ा छाता\" हमारा आकाशगंगा छाता है, जिसे हम ब्रह्मांड भी कहते हैं। इस छाते का अत्यंत विस्तारशील और अनंत आकार है जो समस्त ब्रह्मांड को आच्छादित करता है। इसमें सितारे, ग्रह, और ब्रह्मांडीय रास्ते होते हैं जो हमें ब्रह्मांड की अनगिनतता और सौंदर्य का आनंद देते हैं।', 'pdf_files/2ndHindi14-26-59-63.pdf', '', '1002'),
(49, '', '', '', '202', 'अध्याय 26-बादल', '\"बादल\" एक प्राकृतिक रचना है जो हमें आकाश में दिखाई देती है। ये प्रदूषण को स्वच्छ करने में मदद करती हैं और आसमान को सुंदर बनाए रखती हैं। बादल सूर्य की तपती हुई किरणों के कारण उत्पन्न होते हैं जो पानी को वाष्पित करते हैं। जब यह वाष्पित होता है और ऊपर उठता है, तो ठंडा हो जाता है और बादल बनता है।', 'pdf_files/2ndHindi14-26-64-68.pdf', '', '1002'),
(50, 'English', 'Solutions for English', 'English is an important and easy-scoring subject in Class 2. Going through the chapters covered in the  Class 2 English makes it easy for students to understand the basics of the English language. To implement an easy learning experience for the young students of Class 2,  provides the Class 2 English  Solutions. These solutions are compiled by the highly experienced faculty at  as per the guidelines of CBSE. Also, students can download and refer to these solutions from the  website and mobile app for free.', '201', 'Chapter-1 First Day at School', 'The poem First Day At School beautifully brings out the emotions of a kid’s first day at school. The anxiety and excitement of a kid are vividly expressed in the poem.', 'pdf_files/unit1_ja5ok5M.pdf', 'Class 2', '1002'),
(51, '', '', '', '201', 'Chapter-2 I Am Lucky', 'The poem I am Lucky imparts an inspiring lesson to kids. Everyone has something to be thankful for – a butterfly for its wings, a myna for its ability to sing, etc. Every creature has something that sets it apart from the rest. The poem teaches that one should be thankful for what one has', 'pdf_files/unit2.pdf', '', '1002'),
(52, '', '', '', '201', 'Chapter-3 A Smile', '“A Smile” is a poem about a wonderful thing called ‘Smile’. The poet calls a smile a funny thing, as it doesn’t even leave a trace once it’s gone from the face. A smile is wonderful because when one smiles at someone, he/she smiles back, and thus the smile becomes two.', 'pdf_files/unit3.pdf', '', '1002'),
(53, '', '', '', '201', 'Chapter-4 Rain', 'Rain is a very short and concise poem. It says that it is raining everywhere – on the field, on the trees, on the umbrellas held by the people and on the ships sailing at sea.', 'pdf_files/unit4.pdf', '', '1002'),
(54, '', '', '', '201', 'Chapter-5 Zoo Manners', 'The poem Zoo Manners has a beautiful message in its simple lines. It teaches kids that when they visit a zoo, they must exhibit zoo manners. They should not make fun of the animals but rather treat them well.', 'pdf_files/unit5.pdf', '', '1002'),
(55, '', '', '', '201', 'Chapter-6 Mr. Nobody', 'This is a poem which helps young students to intensify their mental horizon, creativity and imagination. The NCERT Solutions of this chapter are designed in a simple manner to make learning an interesting experience for your child.', 'pdf_files/unit6.pdf', '', '1002'),
(56, '', '', '', '201', 'Chapter-7 On My Blackboard I Can Draw', 'This poem is about a kid who enjoys drawing a variety of things on his blackboard, like a house with windows, chimneys, yellow marigolds', 'pdf_files/unit7.pdf', '', '1002'),
(57, '', '', '', '201', 'Chapter-8 I am the Music Man', 'In this poem, the narrator describes himself as a musician who can play the piano and the drum. ', 'pdf_files/unit8.pdf', '', '1002'),
(58, '', '', '', '201', 'Chapter-9 Granny Granny Please Comb My Hair', 'This poem expresses a young girl’s love and affection towards her grandmother, whom she requests to comb her hair.', 'pdf_files/unit9.pdf', '', '1002'),
(59, '', '', '', '201', 'Chapter-10 Strange Talk', 'This poem talks about the types of communication done by different animals and teaches young kids about how they can enhance their communication skills with their teachers and classmates.', 'pdf_files/unit10.pdf', '', '1002'),
(60, 'Maths', 'Solutions for Maths', 'In class 2 maths children learn to read and write numbers up to 100. They practice skip counting by 5s and 10s, and 100s as they notice patterns among numbers. As the child learns to count within 100, they also need to understand the concept of ones and tens place value of numbers.\n', '203', 'Chapter 1-A Day at the Beach', 'This chapter helps students gain a better idea about the long and round-shaped structures we come across in our daily lives. The methods of determining the length and shapes of structures are explained to students. It provides students with solutions in PDF format, which can be downloaded effortlessly.\n', 'pdf_files/chapter-1.pdf', '', '1002'),
(61, '', '', '', '203', 'Chapter 2-Shapes Around Us', 'The chapter Counting in Groups covers the concept of counting the number of objects that we see in groups. The set of similar objects can be counted using various operations like addition and subtraction. The concept of ‘more or less than’ is also explained in simple language in this chapter.\n', 'pdf_files/Chapter-2.pdf', '', '1002'),
(62, '', '', '', '203', 'Chapter 3-Fun with Numbers', 'From this chapter, kids get introduced to the concept of determining the weight of objects. The solutions contain shortcuts that kids can follow to find the weight of substances in their daily activities. Both direct questions and word problems are available in this chapter which can be easily understood by kids.\n', 'pdf_files/Chapter-3.pdf', '', '1002'),
(63, '', '', '', '203', 'Chapter 4-Shadow Story', 'Chapter 4 introduces kids to the concept of counting in tens. This chapter has problems based on determining the tens value for the given set of questions as per the NCERT textbook. Kids can obtain a better knowledge of these concepts from the PDF \n', 'pdf_files/Chapter-4.pdf', '', '1002'),
(64, '', '', '', '203', 'Chapter 5-Playing with Lines', 'Patterns are important topics which kids prefer to learn from an early age. This chapter helps kids gain better knowledge about various patterns which are covered as per the NCERT textbook for Class 2. It also boosts confidence among kids and helps them analyse the patterns which they come across in daily activities.\n', 'pdf_files/Chapter5_XUNfzjX.pdf', '', '1002'),
(65, '', '', '', '203', 'Chapter 6-Decoration for Festival', 'Footprints of animals, humans and birds are made easy to understand with the concepts explained in this chapter. For a better idea of these concepts, kids can use the solutions which are available in PDF format that are important from the exam point of view. The solutions have explanations in an interactive manner to make learning fun for kids.\n', 'pdf_files/chapter-6.pdf', '', '1002'),
(66, '', '', '', '203', 'Chapter 7-Rani’s Gift', 'The importance of jugs and mugs in our day-to-day lives are the topics which are discussed in this chapter. Pictorial representation provided in the solutions helps students analyse and solve problems accordingly. It improves logical thinking and analytical skills among kids, which helps them in higher classes.\n', 'pdf_files/chapter-7.pdf', '', '1002'),
(67, '', '', '', '203', 'Chapter 8-Grouping and Sharing', 'Place value in given numbers is the concept which is explained in Chapter 8 of the NCERT textbook. Kids can understand this concept and solve problems using PDFs of solutions as reference material. The solutions are designed by faculty having vast experience in the education industry as per the latest guidelines and exam patterns.\n', 'pdf_files/Chapter-8.pdf', '', '1002'),
(68, '', '', '', '203', 'Chapter 9-Which Season is it?', 'Number of days of the week is made easier for kids to understand in this chapter. Various direct and theoretical questions, as per the NCERT textbook, are covered in this chapter. The solutions are explained in an interesting way to help students with their exam preparation. It also helps kids understand the various days of the week.\n', 'pdf_files/Chapter-9.pdf', '', '1002'),
(69, '', '', '', '203', 'Chapter 10-Fun at the Fair', 'Chapter 10 of the NCERT textbook helps students understand operations like addition. Theoretical problems and direct questions according to the syllabus help kids perform well in the Class 2 exam. The solutions are prepared with the aim of helping kids ace the exam.\n', 'pdf_files/Chapter-10.pdf', '', '1002'),
(70, '', '', '', '203', 'Chapter 11-Data Handling', 'Various types of lines are covered under Chapter 11 of the NCERT textbook. The method of finding the types of lines and their construction are discussed here in simple language. This chapter helps kids obtain a broader view of lines. Kids need to understand these concepts to score well in the Class 2 exam.\n', 'pdf_files/Chapter-11.pdf', '', '1002'),
(71, 'Hindi', 'Solutions for Hindi', 'Class 3 Hindi is a very important subject that helps students develop language skills. This subject has a detailed syllabus that students need to complete and prepare well before the exams start. In order to make things easier, Hindi experts of have compiled  Class 3 Hindi from the different chapters. Students can register online and find solutions to all the Class 3 Hindi chapters. They can practice the solutions and gain a better understanding of the chapter in detail.', '303', 'अध्याय 1 - कक्क', '', 'pdf_files/3rd_Hindi_C1.pdf', '', '1003'),
(72, '', '', '', '303', 'अध्याय -2 शेखीबाज़ मक्खी', '', 'pdf_files/3rd_Hindi_C2.pdf', '', '1003'),
(73, '', '', '', '303', 'अध्याय 3 - मन करता है', '', 'pdf_files/3rd_Hindi_C3.pdf', '', '1003'),
(74, '', '', '', '303', 'अध्याय 4 - बहादुर बबत्तो', '', 'pdf_files/3rd_Hindi_C4.pdf', '', '1003'),
(75, '', '', '', '303', 'अध्याय 5 - हमसे सब कहते है', '', 'pdf_files/3rd_Hindi_C5.pdf', '', '1003'),
(76, '', '', '', '303', 'अध्याय 6 - बिपबिपवा', '', 'pdf_files/3rd_Hindi_C6.pdf', '', '1003'),
(77, '', '', '', '303', 'अध्याय 7-टिपटिपवा ', '\"बिपबिपवा\" कबवता एक खखलखखलाहि भरी कबवता है, जो एक िोिी बिपकली की खुशी, उत्साह और खखलखखलाहि पर आधाररत है। यह कबवता बिपकली के दोस्तोां के साथ खेलने और उसके जीवन की खाबसयतोां को बयाां करती है। ', 'pdf_files/chapter7_bbHqjUs.pdf ', '', '1003'),
(78, '', '', '', '303', 'अध्याय 8-बंदर – बांट', '\"बांदर – बाांि\" का अवधारर्ा एक कहानी के चारोां ओर घूमती है, जहाां एक बांदर, उत्सुकता और सोच बवचार बकए बबना, अपने शरीर के अांगोां, जैसे बक उसके बसर, दाांत और पैरोां का उपयोग करके एक नि को खोलने की कोबशश करता है।', 'pdf_files/chapter8_01dZaTm.pdf ', '', '1003'),
(79, 'English', 'Solutions for English', 'English is an important subject in the curriculum of Class 3. Therefore, to help students learn and understand the chapters covered in the Class 3 Marigold book, provides the Class 3 English . These solutions are prepared in a precise and easy-to-understand manner for the young students of Class 3. The Class 3  for English are provided in a chapter-wise manner on so students can thoroughly prepare one chapter at a time. The Solutions PDFs can be downloaded for free from the website and app.', '302', 'Chapter-1 Good Morning', 'The “Good Morning” poem of Class 3 is a short poem in which a young child greets the morning sun and sky happily. The kid is filled with joy to enjoy the beginning of a new day and gets ready to go out and play.', 'pdf_files/unit1_CyEMcdx.pdf', '', '1003'),
(80, '', '', '', '302', 'Chapter-2 BIRD TALK', 'In the poem “Bird Talk”, there is a short and sweet conversation between two birds who are discussing how humans differ from them.', 'pdf_files/unit-2.pdf', '', '1003'),
(81, '', '', '', '302', 'Chapter-3 LITTLE BY LITTLE', 'The poem “Little by Little” is about an acorn which expresses how its leaves appear and the branches spread across far and wide until it grows into a mighty oak tree.', 'pdf_files/unit-3.pdf', '', '1003'),
(82, '', '', '', '302', 'Chapter-4 SEA SONG', 'The poem “Sea Song” mentions a young boy who finds a sea shell near the shore and hears a sweet song from it when he holds the shell close to his ear.', 'pdf_files/unit-4.pdf', '', '1003'),
(83, '', '', '', '302', 'Chapter-5 THE BALLOON MAN', '“The Balloon Man” is about a balloon man who carries balloons with him. This poem mentions a kid who wishes that the balloon man would someday let loose all the balloons high up in the sky.', 'pdf_files/unit-5.pdf', '', '1003'),
(84, '', '', '', '302', 'Chapter-6 TRAINS', 'The poem “Trains” is all about trains which travel through mountains and plains, transporting things and people from one place to another.', 'pdf_files/unit-6.pdf', '', '1003'),
(85, '', '', '', '302', 'Chapter-7 PUPPY AND I', 'In the poem “Puppy and I”, a young kid narrates his story of how he meets a man, a horse and a puppy to accompany him. Finally, the kid decides to accompany the puppy and play with him.', 'pdf_files/unit-7.pdf', '', '1003'),
(86, '', '', '', '302', 'Chapter-8 What’s in the Mailbox?', '“What’s in the Mailbox?”, which mentions a young child who notices a postman visiting her house and bringing letters for her parents at regular intervals. Seeing this, she wishes to write letters to her friends with the expectation of receiving letters in return.', 'pdf_files/unit-8.pdf', '', '1003'),
(87, '', '', '', '302', 'Chapter-9 Don’t Tell', ' “Don’t Tell”, which talks about a young boy who diligently listens to everyone, yet nobody understands that although he is a kid, he is capable of doing things that elders can do.', 'pdf_files/unit-9.pdf', '', '1003'),
(88, '', '', '', '302', 'Chapter-10 How Creatures Move', '“How Creatures Move”, which talks about how different creatures move around and have a wonderful experience while doing so.', 'pdf_files/unit-10.pdf', '', '1003'),
(89, 'Maths', 'Solutions for Maths', 'Class 3 maths introduces children to some new concepts related to multiplication and division, mental arithmetic, and so on. Students build a competency to work comfortably with four-digit numbers and their arithmetic computations, like addition, subtraction, division, and multiplication.\n', '304', 'Chapter-1 Where to Look From', 'This chapter deals with the introduction to various types of views of an object – the top view and the side view. Kids are explained how the same thing can look different from different sides. The lesson also talks about mirror images of various objects, dividing images of objects into two equal halves', 'pdf_files/class_3_maths_chapter-01.pdf', '', '1003'),
(90, '', '', '', '304', 'Chapter-2 Fun with Numbers', 'The chapter Fun with Numbers covers the concept of counting numbers in a very interesting way. It discusses counting numbers above 100, word problems on numbers, and solving word problems using addition and subtraction. It also explains the concept of units, tens and hundreds.', 'pdf_files/class_3_maths_chapter-02.pdf', '', '1003'),
(91, '', '', '', '304', 'Chapter-3 Give and Take', 'Through this chapter, kids get introduced to a wider view of the addition of numbers. The chapter has short techniques that kids can follow to get the sum of numbers quickly. The chapter has word problems as well as direct questions on the addition of numbers.', 'pdf_files/class_3_maths_chapter-03.pdf', '', '1003'),
(92, '', '', '', '304', 'Chapter-4 Long and Short  ', 'This chapter introduces kids to the concept of measurement. The chapter has various exercises and questions to make the students understand the units of length – centimetres, metres and kilometres', 'pdf_files/class_3_maths_chapter-04.pdf', '', '1003'),
(93, '', '', '', '304', 'Chapter-5 Shapes and Designs  ', 'Shapes are one of the most interesting concepts which kids love to learn in their formative years. This chapter teaches kids about various shapes, edges and corners in a shape, etc. The chapter also helps young minds understand and recognise patterns around them.', 'pdf_files/class3_maths_chapter-05.pdf', '', '1003'),
(94, '', '', '', '304', 'Chapter-6 Fun with Give and Take  ', 'This chapter elaborates on the concept of addition and subtraction. The lesson uses various word problems and questions to explain to kids addition and subtraction in a faster way. It takes a deeper dive into the same concept through numbers having more digits. It explains addition and subtraction using the unit’s place, ten’s place and hundred’s place.', 'pdf_files/class3_maths_chapter-06.pdf', '', '1003'),
(95, '', '', '', '304', 'Chapter-7 Time Goes On......  ', 'This lesson talks about the concept of time. It makes kids ponder about the things/activities that happen in a few minutes, a few hours, a few days and even further. Then it introduces the students to calendars – weeks, months, years, dates, days, etc.', 'pdf_files/class_3_maths_chapter-07.pdf', '', '1003'),
(96, '', '', '', '304', 'Chapter-8 Who is Heavier', 'This chapter discusses the concept of weight and balance. The lesson uses various stories and puzzles to make kids understand these concepts easily.', 'pdf_files/class3_maths_chapter_8.pdf', '', '1003'),
(97, '', '', '', '304', 'Chapter-9 How Many Times?', 'This chapter explains how multiplication and addition are linked to each other and how instead of adding the same number multiple times, you can simply use multiplication. The chapter also teaches kids multiplication tables through interesting pictures, questions and puzzles.', 'pdf_files/class3_maths_chapter_9.pdf', '', '1003'),
(98, '', '', '', '304', 'Chapter-10 Play with Patterns', 'In this chapter, kids get more comprehension of patterns and sequences. The students are taught these concepts through numerous exciting questions and puzzles.', 'pdf_files/class3_maths_chapter_10.pdf', '', '1003'),
(99, '', '', '', '304', 'Chapter-11 Jugs and Mugs', 'This chapter lets kids get a broader view of measurements. Kids need to guess the amount of an entity which can fill another entity. It also delves deeper into word problems and interesting puzzles, which make it precise for kids’ understanding.', 'pdf_files/class3_maths_chapter_11.pdf', '', '1003'),
(100, '', '', '', '304', 'Chapter-12 Can We Share?', 'This chapter introduces kids to the concept of division. Sharing anything equally utilises division. This lesson covers the concept of distribution and division through brain-tickling word problems and puzzles. It also establishes the link between multiplication and division.', 'pdf_files/class3_maths_chapter_12.pdf', '', '1003'),
(101, '', '', '', '304', 'Chapter-13 Smart Charts!  ', 'This chapter deals with smart charts and how data can be easily represented through charts and tables.', 'pdf_files/class3_maths_chapter_13.pdf', '', '1003'),
(102, '', '', '', '304', 'Chapter-14 Rupees and Paise  ', 'This chapter introduces kids to the world of money. In India, money is used in terms of rupees and paise. This chapter explains how to get the sum of money where the money is in the form of notes of 500, 100, 50, 10, 20, 2, 1, and coins of 10, 5, 2 and 1. The chapter also includes word problems on the creation of cash memos, finding the price of tickets for covering a certain distance and other real-time problems.', 'pdf_files/class3maths_chapter_14.pdf', '', '1003'),
(103, 'Environmental studies', 'Solutions for Environmental studies', 'EVS stands for Environmental Studies. As a subject, this can be considered as a prelude to science. In Class 3 Science, students need a stepping stone before entering more serious subjects like science in middle school, for which EVS is a perfect bridge. EVS basically includes all chapters that talk about the general surrounding, nature and preservation and conservation of the mother earth and its elements.This subject is of utmost importance, especially in today’s day and age. Students need to be taught the value and importance of natural resources and the urgent need for their conservation.', '301', 'Chapter-1 POONAM’S DAY OUT', 'the chapter gives kids a chance to look outside their homes and see what nature has in treasure for them – animals and birds around them. The lesson educates kids about identifying the most common animals in the surroundings in a fun way.', 'pdf_files/chapter1_TZy50Dy.pdf', 'Class 3', '1003'),
(104, '', '', '', '301', 'Chapter-2 THE PLANT FAIRY', 'The Plant Fairy, is completely about plants and trees. It familiarises kids with the plants and trees which are usually found around them.', 'pdf_files/chapter2_cXnJ5IA.pdf', '', '1003'),
(105, '', '', '', '301', 'Chapter-3 WATER O’ WATER!', 'Water O’ Water!- The chapter talks about water, its sources, containers and a lot more. The chapter also discusses the activities which would have been impossible without water.', 'pdf_files/chapter3_HC2ioBH.pdf', '', '1003'),
(106, '', '', '', '301', 'Chapter-4 OUR FIRST SCHOOL', 'Our first school is our family. We start learning from our family. Our family teaches us many things like speaking, eating, writing, etc. We learn many things from our elders.', 'pdf_files/chapter4_Z54jXGz.pdf', '', '1003'),
(107, '', '', '', '301', 'Chapter-5 CHHOTU’S HOUSE', 'He made all the rooms in that small pipe. He made the bedroom, kitchen as well as the guest room. He used different parts of the pipe to make a lovely house. Chhotu needed a house because he was alone in the city called Mumba', 'pdf_files/chapter5_fqDE1ju.pdf', '', '1003'),
(108, '', '', '', '301', 'Chapter-6 FOODS WE EAT', 'The chapter “Foods we Eat” explains the various types of food, the importance of food, foods that are easily eatable by kids and old people, and how food differs from region to region.', 'pdf_files/chapter6_SyGTbPV.pdf', '', '1003'),
(109, '', '', '', '301', 'Chapter-7 SAYING WITHOUT SPEAKING', 'Take a dive into this lesson and know how facial expressions and body gestures can say a lot about the mood of people, even without them actually speaking!\n\n', 'pdf_files/chapter7_jEp6gQP.pdf', '', '1003'),
(110, '', '', '', '301', 'Chapter-8 FLYING HIGH', ' The lesson “Flying High” is dedicated to Birds – their beaks, colours, neck movements, characteristics, and so much more about them.', 'pdf_files/chapter8_S0gVM1I.pdf', '', '1003'),
(111, '', '', '', '301', 'Chapter-9 IT’S RAINING', '“It’s Raining”, is a very short lesson. The lesson talks about how rains are important for the existence of all living beings.', 'pdf_files/chapter9_JRC8ZhE.pdf', '', '1003'),
(112, '', '', '', '301', 'Chapter-10 WHAT IS COOKING', ' “What is cooking”, deals with cooking utensils and what they are made of. It also discusses the food items that are edible raw and the ones which have to be cooked for eating. It also talks about the methods that are used for cooking, food-boiling, roasting, etc.', 'pdf_files/chapter10_SWTsngH.pdf', '', '1003'),
(113, '', '', '', '301', 'Chapter-11 FROM HERE TO THERE', 'Different types of transports are used for moving from one place to another.', 'pdf_files/chapter11_drjj0LV.pdf', '', '1003'),
(114, '', '', '', '301', 'Chapter-12 WORK WE DO', ' “work”. It deals with the professions people belong to, doctors, teachers, engineers, grocers, beauticians and even homemakers.', 'pdf_files/chapter12_5vVDs2D.pdf', '', '1003'),
(115, '', '', '', '301', 'Chapter-13 SHARING OUR FEELINGS', 'Sharing Our Feelings, deals with helping and sharing people’s feelings. The lesson also teaches a lot through a simple game of blindfolding. It describes how the sense of touch and sound can help us recognise people and things.', 'pdf_files/chapter13_ZoxgIkh.pdf', '', '1003'),
(116, '', '', '', '301', 'Chapter-14 THE STORY OF FOOD', 'This chapter talks about how our food comes to us – the people who make it, the sources of the food items, etc. For instance, sources of dairy products are animals, whereas sources of spices are plants.', 'pdf_files/chapter14.pdf', '', '1003'),
(117, '', '', '', '301', 'Chapter-15 MAKING POTS', 'This chapter, “Making Pots”, explains to kids the things and people who are involved in making pots. The lesson also has some interesting activities for creating objects of clay.', 'pdf_files/chapter15.pdf', '', '1003'),
(118, '', '', '', '301', 'Chapter-16 GAMES WE PLAY', 'games plays a major role in their overall development. Delve into this lesson which discusses indoor and outdoor games often played by people of all ages.', 'pdf_files/chapter16.pdf', '', '1003'),
(119, '', '', '', '301', 'Chapter-17 HERA COMES A LETTTER', 'The chapter “Here Comes a Letter” discusses the journey of a letter. It also talks about the difference between letters, stamps and the items available in a post office.', 'pdf_files/chapter17.pdf', '', '1003'),
(120, '', '', '', '301', 'Chapter-18 A HOUSE LIKE THIS', 'This chapter deals with the way houses are built. It includes discussions on houses made of bamboo pillars, wood, mud, etc. It also talks about houseboats, igloos, multi-storeyed buildings, etc.', 'pdf_files/chapter18.pdf', '', '1003'),
(121, '', '', '', '301', 'Chapter-19 OUR FRIENDS -ANIMAL', '“Our Friends- Animals”, focuses on teaching kids how animals and birds are our friends. They, too, are a part of nature and thus, we must always be helpful towards them if they are in need.', 'pdf_files/chapter19.pdf', '', '1003');
INSERT INTO `learning_stdclass` (`id`, `subjects`, `intro`, `description`, `subid`, `chaptername`, `chapterdis`, `pdf`, `classes`, `classid`) VALUES
(122, '', '', '', '301', 'Chapter-20 DROP BY DROP', 'This chapter deals with the water scarcity problem faced by people living in hot and dry regions like deserts. Further, it advises how to conserve water and recycle it for different purposes. ', 'pdf_files/chapter20.pdf', '', '1003'),
(123, '', '', '', '301', 'Chapter-21 FAMILIES CAN BE DIFFERENT', 'Every family is different in its own way. Further, this chapter states how different families live in coordination and maintain a harmonious relationships among themselves.', 'pdf_files/chapter21.pdf', '', '1003'),
(124, '', '', '', '301', 'Chapter-22 LEFT-RIGHT', 'The chapter “Left-Right” imparts to children the knowledge of directions like up and down, left and right, etc. By studying this chapter, they also learn to distinguish the uses of various symbols used in maps. ', 'pdf_files/chapter22.pdf', '', '1003'),
(125, '', '', '', '301', 'Chapter-23 A BEAUTIFUL CLOTH', 'The dupatta was embellished with beautiful embroidery and small mirrors. Sajida experimented with different ways to wear the dupatta after finishing dinner. She eventually became tired of playing with the dupatta and fell asleep while wearing it“A Beautiful Cloth”, discusses traditional arts like cloth printing and how cloth can be used for different types of garments alternatively. This lesson offers a golden opportunity for the students to exhibit their talent while practising these arts.', 'pdf_files/chapter23.pdf', '', '1003'),
(126, '', '', '', '301', 'Chapter-24 WEB OF LIFE', '“Web of Life”, Class 3 students will learn about the interdependence of different things in our environment. Children get to know how we are dependent on our surroundings, plants, atmosphere, animals, etc., for our survival and day-to-day needs.', 'pdf_files/chapter24.pdf', '', '1003'),
(127, 'Hindi', 'Solutions for Hindi', 'The Hindi syllabus of Class 4 will help students focus on their language development and comprehension skills in the best way. There are a total of 14 chapters included in the syllabus of Class 4 Hindi for the students. Some of these chapters contain interactive stories and prose while the others contain important poems. Reading these chapters thoroughly will make sure that students are able to improve their skills in Hindi speaking, writing, reading, and much more. The chapters will also help students assess their Hindi grammar skills and improve them in the best way. Students can download the Class 4 Hindi Question Answer', '403', 'अध्याय 1- मन के भोले -भाले बादल', '\"मन के भोलेभाले बादल\" एक प्रसिद्ध हिंदी कविता है जिसे सुमित्रानंदन पंत ने रचा है। यह कविता बच्चों के साथसाथ बड़ों को भी प्रेरित करने वाली है और प्रकृति की सुंदरता, सरलता, और मासूमियत को बयान करती है।', 'pdf_files/HINDI-c1.pdf', '', '1004'),
(128, '', '', '', '403', 'अध्याय 2- जैसा सवाल वैसा जवाब', '\"जैसा सवाल वैसा जवाब\" एक प्रसिद्ध कहावत है, जिसका मतलब है कि किसी सवाल का उत्तर उसी तरीके से दिया जाए जैसा कि सवाल है। इस विधि का अर्थ है कि उत्तर को सीधे और संक्षेप में देना चाहिए, ताकि विषय की मुख्य बातें स्पष्ट हों और सुनने वाले को सारांश मिले। इस तरह, समरी से विषय की महत्वपूर्ण बिंदुओं को अच्छी तरह से समझाया जा सकता है, जिससे संवेदनशीलता और स्पष्टता बनी रहती है।', 'pdf_files/HINDI-c2.pdf', '', '1004'),
(129, '', '', '', '403', ' अध्याय 3-किरमिच की गेंद', '\"किरमिच की गेंद\" एक हिंदी कहानी है जो एक छोटे गाँव में रहने वाले बच्चे, मुन्ना, की जिंदगी को दर्शाती है। मुन्ना एक छोटे से गाँव में रहता है और उसका जीवन सामान्य होता है। एक दिन, उसे एक अज्ञात व्यक्ति द्वारा किरमिच की गेंद मिलती है।', 'pdf_files/HINDI-c3.pdf', '', '1004'),
(130, '', '', '', '403', 'अध्याय 4- पापा जब बच्चे थे', 'पापा जब बच्चे थे, उनका बचपन बहुत ही प्यार भरा और मस्तीभरा था। वे खेतों में खेलने, दोस्तों के साथ समय बिताने, और गाँव के साथी किसान से सीखने में रुचि रखते थे। पापा का प्रिय खेल क्रिकेट था और उनके बचपन की एक यादगार मोमेंट उनके पहले स्कूल प्रोजेक्ट में पुरस्कार जीतना था। ', 'pdf_files/HINDI-c4.pdf', '', '1004'),
(131, '', '', '', '403', 'अध्याय 5-दोस्त की पोशाक', '\"दोस्त की पोशाक\" एक दिलचस्प कहानी है जो हमें दोस्ती, सहयोग, और समर्पण के महत्वपूर्ण सिख देती है। कहानी एक छोटे गाँव के एक लड़के के चरित्र के माध्यम से बताती है कि छोटी सी मदद और सहयोग से हम दूसरों की जिंदगी में बदलाव ला सकते हैं।', 'pdf_files/HINDI-c5.pdf', '', '1004'),
(132, '', '', '', '403', 'अध्याय 6-नाव बनाओ नाव बनाओ', '\"नाव बनाओ नाव बनाओ\" कहानी बच्चों की सोचने की शक्ति और सहयोग की महत्वपूर्णता पर आधारित है। कहानी एक गाँव के छोटे से समूह के बच्चों की है, जो नाव बनाने का आइडिया पाते हैं।बच्चों को नाव बनाने का उत्साह होता है और वे अपनी शिक्षिका के साथ मिलकर काम करने का निर्णय करते हैं। उन्हें विभिन्न कलाएं सिखाई जाती हैं, जैसे कि विचारविमर्श, जोड़बंध, और हस्तकला।', 'pdf_files/HINDI-c6.pdf', '', '1004'),
(133, '', '', '', '403', 'अध्याय 7- दान का हिसाब', '\"दान का हिसाब\" एक क्रियाशील कहानी है जो हमें सामाजिक समर्पण और सहयोग की महत्वपूर्णता सिखाती है। कहानी में रामु, एक सामाजिक दिनचर्या के अनुसार जीने वाला युवक, अपने दान को सही तरीके से पहुंचाने और इसका हिसाब रखने के माध्यम से समाज में सकारात्मक परिवर्तन कैसे लाता है। ', 'pdf_files/HINDI-c7.pdf', '', '1004'),
(134, '', '', '', '403', 'अध्याय 8-कौन ?', '\"कौन\" एक शब्द है जो हिंदी भाषा में प्रश्न पूछने या जानकारी प्राप्त करने के लिए प्रयुक्त होता है। यह पूछने के लिए इस्तेमाल होता है कि किसी व्यक्ति, स्थान, या वस्तु की पहचान करने के लिए। \"कौन\" सामाजिक, सांस्कृतिक, राजनीतिक, या वैज्ञानिक संदर्भों में व्यापक रूप से प्रयुक्त हो सकता है और जीवन के विभिन्न पहलुओं में इसका महत्वपूर्ण स्थान है।', 'pdf_files/HINDI-c8.pdf', '', '1004'),
(135, '', '', '', '403', 'अध्याय 9- स्वतंत्रता की ओर', '\"स्वतंत्रता की ओर\" भारतीय इतिहास का एक महत्वपूर्ण युग है, जिसमें भारतीय जनता ने अपनी आज़ादी के लिए संघर्ष किया। इस युग में भारतीय समाज ने अपने अधिकारों और स्वतंत्रता के लिए समर्पित जन नेता को पैदा किया। इस संग्राम ने अंग्रेज शासन के खिलाफ विभिन्न आंदोलनों, सत्याग्रहों, और उप्रोक्तियों के माध्यम से देश को एकत्र किया।', 'pdf_files/HINDI-c9.pdf', '', '1004'),
(136, '', '', '', '403', 'अध्याय 10-थप्प रोटी थप्प दाल', '\"थप्प रोटी थप्प दाल\" भगत सिंह की आत्मकथा है जो उनके जीवन, संघर्ष, और स्वतंत्रता संग्राम के सफल और असफल पहलुओं को दर्शाती है। इस आत्मकथा में भगत सिंह ने अपने जीवन की विभिन्न घटनाओं को सुंदरता से वर्णन किया है और अपने विचारों, संघर्षों, और सपनों को साझा किया है।\nभगत सिंह की आत्मकथा उनके बचपन से लेकर उनके संघर्षों और स्वतंत्रता संग्राम के क्षणों की भरपूर चित्रण करती है। उनके सोशलिस्ट सिद्धांतों, समाजवाद, और स्वतंत्रता के प्रति उनकी अदम्य आस्था का वर्णन किया गया है।\n', 'pdf_files/HINDI-c10.pdf', '', '1004'),
(137, '', '', '', '403', 'अध्याय 11-पढ़क्कू की सूझ', '\"पढ़क्कू की सूझ\" एक लेख है जो शिक्षा के महत्व पर केंद्रित है और इसे समझाने के लिए विभिन्न पहलुओं को परिचित कराता है। लेखक ने बच्चों के जीवन से उदाहरण दिए हैं और यह बताया है कि शिक्षा कैसे उन्हें समझदार, सकारात्मक सोचने की क्षमता, और समाज में सकारात्मक परिवर्तन लाने में मदद करती है। ', 'pdf_files/HINDI-c11.pdf', '', '1004'),
(138, '', '', '', '403', 'अध्याय 12-सुनीता की पहिया कुर्सी', 'कहानी एक दिव्यांग बच्चे के खतरों के बारे में विस्तार से बात करती है जो बहुत बुरी तरह से समाज में फिट होना चाहता है और सोचता है कि वह दूसरों से अलग नहीं है।\nसुबह उठते ही सुनीता बहुत उत्साहित होती है क्योंकि वह उस दिन खरीदारी करने जाने को लेकर खुश होती है और वह भी पहली बार अकेले। वह उठती है और अपने पैरों को अपने हाथों से पकड़ लेती है और खुद को व्हीलचेयर में बैठने में मदद करती है। वह तेजी से तैयार हो जाती है और बाजार की यात्रा शुरू करने के लिए अपनी मां से पैसे लेती है। रास्ते में उसे बहुत सारे लोग मिलते हैं जो उसे देखकर मुस्कुराते हैं, भले ही वे उसे नहीं जानते हों। सुनीता इसे उनकी सहानुभूति मानती है और बहुत खुश नहीं है।', 'pdf_files/4th_hindi_C12.pdf', '', '1004'),
(139, '', '', '', '403', 'अध्याय 13- हुदहुद', 'हुदहुद की शुरुआत एक कहानी से होती है जहां सुलेमान नाम का एक राजा अपने विमान से यात्रा कर रहा था, मौसम बेहद गर्म था। गर्मी का मौसम था. बीच रास्ते में सुलेमान ने गिद्धों को उड़ते हुए देखा तो उसने उनसे गिद्धों को अपने पंखों से ढकने को कहा ताकि इससे सुलेमान को छाया मिल सके लेकिन गिद्धों ने छाया देने से इनकार कर दिया। तब सुलेमान ने हंगामा देखा और उनसे मदद करने के लिए कहा, वे सुलेमान को छाया प्रदान करने के लिए सहमत हुए।', 'pdf_files/HINDI-c13.pdf', '', '1004'),
(140, '', '', '', '403', 'अध्याय 14-मुफ्त ही मुफ्त (गुजराती लोककथा)', '\"मुफ्त ही मुफ्त\" सेवाएं किसी भी समय के व्यापार और समाज में एक चर्चित विषय रही हैं। इस योजना का उद्देश्य ग्राहकों को ब्रांड के साथ जोड़ना और उन्हें उनकी सेवाओं का अनुभव करने का मौका देना है। यहां कुछ मुख्य बिंदु हैं:\n \"मुफ्त ही मुफ्त\" योजनाएं ब्रांड के उत्पादों और सेवाओं को प्रमोट करने का एक प्रभावी तरीका है।\n ग्राहकों को पहले कुछ समय के लिए मुफ्त सेवाएं उपलब्ध कराकर उन्हें ब्रांड के साथ जुड़ाव बनाने का प्रयास किया जा सकता है।\n', 'pdf_files/HINDI-c14.pdf', '', '1004'),
(141, 'English', 'Solutions for English', 'The Class 4 English  provides answers to all the textbook questions covered in the chapters of  ‘Marigold’. The  of Class 4 English make learning easy for the students. Our subject experts have prepared the Solutions in such a way that it helps the students to learn with keen interest. The  for Class 4 English will act as a study guide for students for their exam preparation. Students can download ', '401', 'Chapter-1 WAKE UP NEHA’S ALARM CLOCK', 'The poem emphasises the necessity of rising early every day and admiring the beauty of the rising light. \n\nIt is said that waking up early allows one to watch the flowering leaves and flying birds.\n\nNature can teach us so much about how to lead a life and start a day and one can see when they wake up early.\n\nEarly hours is the right time to get up for school.', 'pdf_files/chapter1_IVGIV1M.pdf', 'Class 4', '1004'),
(142, '', '', '', '401', 'Chapter-2 NOSES The Little Fir Tree', 'The Little Fir story is an amazing lesson on how one should be accepting of all the good and bad about themselves.\n\nThe Little Fir Tree story is a great example of the best of nature, and that whatever we are given is for our good and we should be thankful for it.\n\nWe should embrace ourselves fully and not wish for something that is unnecessary.', 'pdf_files/chapter2_KVZzKjz.pdf', '', '1004'),
(143, '', '', '', '401', 'Chapter-3 Run Nasruddin’s Aim', 'The story, ‘Alice in Wonderland’ teaches us the value of curiosity and appreciating the beauty of nature.\n\nIt was Alice’s curiosity that made her follow the rabbit. If Alice had not been curious, she would have never discovered the beautiful garden.\n\nThe story also encourages us to appreciate the beauty of nature. Alice was so moved by the beauty of the garden, its wonderful flowers and the mountains that she wished that she was smaller so that she could go through the small door.', 'pdf_files/chapter3_FOCSOMD.pdf', '', '1004'),
(144, '', '', '', '401', 'Chapter-4 Why Alice in the wonderful', 'The story, ‘Alice in Wonderland’ teaches us the value of curiosity and appreciating the beauty of nature.\n\nIt was Alice’s curiosity that made her follow the rabbit. If Alice had not been curious, she would have never discovered the beautiful garden.\n\nThe story also encourages us to appreciate the beauty of nature. Alice was so moved by the beauty of the garden, its wonderful flowers and the mountains that she wished that she was smaller so that she could go through the small door.', 'pdf_files/chapter4_BYu4815.pdf', '', '1004'),
(145, '', '', '', '401', 'Chapter-5 DON’T BE AFRAID OF THE DARK HELLEN KILLER', 'Poem “Don\'t be Afraid of the Dark” by Ruskin Bond addresses ways to get over the fear of the dark.\n\nWhen one is afraid of anything the best way to deal with it is to befriend it.\n\nOne can learn to rest from nature after a tiring day. \n\nWe should appreciate both the sun and the moon, the light and the dark.\n\nImagine life without the sun, there would be no life.', 'pdf_files/chapter5_2Bh184M.pdf', '', '1004'),
(146, '', '', '', '401', 'Chapter-6 Hiawatha The Scholar’s Mother Tongue', 'The poem ‘Hiawatha’ is about a young boy of Native-American background. He lived in a hut with his grandmother, Nokomis. The poem describes the beautiful relationship between the young boy and nature.\n\nNokomis taught Hiawatha about the stars, trees, animals and birds. Hiawatha developed such a relationship with the birds and animals that he could talk with them and they also talked back. They were his friends and he knew all their secrets.', 'pdf_files/chapter6_TNXGb5f.pdf', '', '1004'),
(147, '', '', '', '401', 'Chapter-7 The Watering Rhyme The Giving Tree The Donkey', 'The poem ‘A Watering Rhyme’ is a short poem for children which teaches us the importance of nourishment and giving back to nature.\n\nWe should nourish our body and soul by enhancing our characteristics and bloom like a flower.\n\nThe poem also teaches us the moral of giving back to nature. Plants play a very important role in our life. They give us the air we breathe, shadow, food, etc. We should take care of plants and nature as a whole.', 'pdf_files/chapter7_6HfuMU9.pdf', '', '1004'),
(148, '', '', '', '401', 'Chapter-8 Books Going to buy a book', 'This story depicts the delight and astonishment of a tiny kid who visits a bookstore to select a book. It illustrates the compassionate thoughts of tiny children who love to share even the most insignificant things with others.\n\nThe author shows us in this chapter that even a modest activity like buying a book can be joyful since youngsters live in the now. This narrative also highlights the warm bond between a grandfather and his grandkids.', 'pdf_files/chapter8_Nw8t2AC.pdf', '', '1004'),
(149, '', '', '', '401', 'Chapter-9 The naughty boy Pinocchio', 'The poem ‘The Naughty Boy’ draws a comparison between things from two different places. It is human nature to think that ‘Grass is always greener on the other side.’ We always feel that things are better in a land far away.\n\nThis poem busts the myth that a new place has everything different and better.\n\nThe naughty boy realises that the basic things in the new land are exactly similar to the things that he experiences in his homeland.', 'pdf_files/chapter9_ZHAhYKp.pdf', '', '1004'),
(150, 'Maths', 'Solutions for Maths', 'The class 4 maths key topics include patterns, measurements, time, dimension, purchasing and selling, division, fractions, area and perimeter, and pictorial representation of information. Patterns: The study of patterns enables the students to understand and observe the shapes around them.\n', '404', 'Chapter-1 Building With Bricks', 'In this chapter, the students learn to make patterns with bricks. They come to understand the size and shape of bricks and learn to identify the different patterns formed by them.', 'pdf_files/CLASS_4_MATHAMATICS-c1.pdf', '', '1004'),
(151, '', '', '', '404', 'Chapter-2 Long And Short', 'In this chapter, students learn to deal with lengths. They learn about measurement in centimetres and meters, and of conversion between the same. They are taught this important concept in a simple way using dot to dot distances.', 'pdf_files/CLASS_4_MATHAMATICS-c2.pdf', '', '1004'),
(152, '', '', '', '404', 'Chapter-3 A Trip To Bhopal', 'This is a very exciting and interesting chapter for the students. They are introduced to everyday math through a short adventure in Bhopal.', 'pdf_files/CLASS_4_MATHAMATICS-c3.pdf', '', '1004'),
(153, '', '', '', '404', 'Chapter-4 Tick-Tick-Tick', 'This is one of the more important chapters in the syllabus. In this chapter, students learn to tell the time from analogue clocks. As they grow, babies develop a somewhat vague sense of time and understand how day transitions into night. This chapter will help them understand it better and will inculcate in them the value of punctuality.', 'pdf_files/CLASS_4_MATHAMATICS-c4.pdf', '', '1004'),
(154, '', '', '', '404', 'Chapter-5 The Way The World Looks', 'This chapter helps students appreciate dimensions and perspectives in the real world. They learn to intuitively differentiate between 3-D and 2-D objects, and understand how objects appear in different viewing profiles.', 'pdf_files/CLASS_4_MATHAMATICS-c5.pdf', '', '1004'),
(155, '', '', '', '404', 'Chapter-6 The Junk Seller', 'This chapter introduces students to the concept of buying and selling through a story format. They begin to grasp the idea of earning, expenditure, sales and loan. This in a way sets up the students to function better in the real world.', 'pdf_files/CLASS_4_MATHAMATICS-c6.pdf', '', '1004'),
(156, '', '', '', '404', 'Chapter-7 Jugs And Mugs', 'This chapter focusses on units of measurement of liquids. The students are introduced to this concept by measuring water. They begin from large units like litre and move on to smaller ones like millilitre. They are also taught how to convert between the two.', 'pdf_files/CLASS_4_MATHAMATICS-c7.pdf', '', '1004'),
(157, '', '', '', '404', 'Chapter-8 Carts And Wheels', 'Circles are the most difficult geometric shape for a student to master, as it does not have proper sides of fixed lengths. Hence, this chapter makes them comfortable with the idea of circles and radii. They also get an intuitive feel for the perimeter of a circle.', 'pdf_files/CLASS_4_MATHAMATICS-c8.pdf', '', '1004'),
(158, '', '', '', '404', 'Chapter-9 Halves And Quarters', 'Fractions are a difficult concept to master as until now, the students have learnt to deal only with whole numbers. So, this chapter introduces them to the concept gradually, using chapatis and chocolates. They understand about wholes, halves and quarters.', 'pdf_files/CLASS_4_MATHAMATICS-c9.pdf', '', '1004'),
(159, '', '', '', '404', 'Chapter-10 Play With Patterns', 'This chapter is one such example, as it introduces students to the concept of patterns. It develops their thinking and analysing skill as they learn to identify patterns in a string of characters.', 'pdf_files/CLASS_4_MATHAMATICS-c10.pdf', '', '1004'),
(160, '', '', '', '404', 'Chapter-11 Tables And Shares', 'This chapter teaches students the applications of division in everyday life. They learn to divide objects into rows and groups.', 'pdf_files/CLASS_4_MATHAMATICS-c11.pdf', '', '1004'),
(161, '', '', '', '404', 'Chapter-12 How Heavy ? How Light ?', 'This is one of the most important concepts in Maths that children must learn at this budding stage.\n\n\nWe need to measure a lot of things in our day-to-day life. We measure distance, length, weight, time, and temperature. All the things we measure are counted with the help of a unit. A unit is the smallest quantity of something that we can measureThis chapter teaches students the concept of weight measurement. They learn to use the various units of the same. They learn the practical application of weights in balances and learn how to use different loads to match up to a given weight.', 'pdf_files/CLASS_4_MATHAMATICS-c12.pdf', '', '1004'),
(162, '', '', '', '404', 'Chapter-13 Fields And Fences', 'This chapter introduces students to the idea of area and perimeter by talking about more understandable things, like fields and fences.', 'pdf_files/CLASS_4_MATHAMATICS-c13.pdf', '', '1004'),
(163, '', '', '', '404', 'Chapter-14 Smart Charts', 'This chapter introduces students to the very crucial concept of handling pictorial information. Data presented in pictorial forms are easier to analyse. Hence, the students are provided with the tools to work with pie charts and pictographs. This also helps them develop a keener intuition for numbers.', 'pdf_files/CLASS_4_MATHAMATICS-c14.pdf', '', '1004'),
(164, 'Environmental studies', 'Solutions for Environmental studies', 'EVS Class 4  helps you understand your environment with the help of various interesting stories. This will help you understand all the stories, concepts, and key points in an organized step-by-step manner, which will help you recall all the answers in the examination correctly.  provides very handy learning material that is easy to understand and learn from as it highlights important topics and explains the concepts through detailed explanations and examples in a systematic manner.', '402', 'Chapter-1 GOING TO SCHOOL', 'The chapter Going to school talks about how children in different states use different ways to travel to school.\n\nThe children are using the bamboo bridge, trolley, cement bridge, vallam, camel-cart, bullock-cart, and bicycle, across the jungle, moving on snow and through rocky paths to reach the school.\n\nThey end up making it to school regardless of whether they are passing through a dense forest, farmland, mountains, or snow.', 'pdf_files/chapter1_xdCuUYq.pdf', '', '1004'),
(165, '', '', '', '402', 'Chapter-2 Ear to ear', 'The chapter ear to ear talks about the types of ears present in the different types of creatures.\n\nThe chapter also discusses the types of skin present in the different types of creatures.\n\nThe chapter also talks about the ways of reproduction (either give birth to young ones or lay eggs) based on the presence of ear and skin.\n\nAnything in our lovely universe is felt or sensed primarily through five of our bodily parts.\n\nWe see it with our eyes, hear it with our ears, smell it with our noses, consume with our tongues, and feel it with our skin.', 'pdf_files/chapter2_FAx9bi9.pdf', '', '1004'),
(166, '', '', '', '402', 'Chapter-3 A Day With Nandu', 'The chapter a day with nandu talks about what happens to nandu (elephant) when he wakes up in the morning. He thought he was somewhere in the middle of the forest.\n\nThe sun was shining brightly, and the temperature was rising rapidly.\n\nHis family members surrounded him and with them, Nandu also started to move towards the jungle.\n\nAfter reaching a certain point, they found a river where all the baby elephants enjoyed playing in the water.', 'pdf_files/chapter3_NnaqfZ0.pdf', '', '1004'),
(167, '', '', '', '402', 'Chapter-4 The Story of Amrita', 'The chapter on the story of amrita is all about the girl amrita, who lived in a village called khejadli in Rajasthan.\n\nThe village was named after the growth of many khejadli trees.\n\nThe people in this village used to believe that plants and animals can survive without human beings but people cannot live without them.\n\nThe chapter also talks about how Amrita and other children consider trees as their friends. They used to play under the shade of the trees for many hours.', 'pdf_files/chapter4_7d9PmoO.pdf', '', '1004'),
(168, '', '', '', '402', 'Chapter-5 Anita and the Honeybees', 'The chapter Anita and the honeybees summarise that there was a girl named Anita Kushwaha (Girl star) who lived in Bochaha village, Bihar.\n\nShe lives with her parents and two younger brothers and also finished college. \n\nShe used to teach the young children and also keep a honeybee.\n\nShe struggled to go to school and convinced her father of the same. \n\nHer father has a mindset like girls should not go to school.\n\nAt a certain stage, Anita started to teach other children and paid the fees for her education.', 'pdf_files/chapter5_XK1fOT8.pdf', '', '1004'),
(169, '', '', '', '402', 'Chapter-6 Omanas Journey', 'This chapter is about how two best friends Omana and Radha were excited about their train journey to Kerala.\n\nOmana was planning to visit her grandmother with her family while Radha was supposed to go on a trip with her family.\n\nDue to an unexpected accident with Radha, her family cancelled the trip since she fractured her right leg and she should not move for six months.\n\nThe two best friends were disappointed about the situation since they had a lot of plans for the upcoming trip.', 'pdf_files/chapter6_shHlU6J.pdf', '', '1004'),
(170, '', '', '', '402', 'Chapter-7 From the Window', 'This chapter describes how Omana and Radha, two best friends, were looking forward to their train voyage to Kerala.\n\nOmana was going on a trip with her family to see her grandmother, while Radha was going on holiday with her family.\n\nRadha\'s family had to cancel the vacation due to an unanticipated mishap with her, as she broke her right leg and would be unable to move for six months.\n\nThe incident disappointed the two best friends because they had a lot of plans for the next trip.', 'pdf_files/chapter7_82HYjqk.pdf', '', '1004'),
(171, '', '', '', '402', 'Chapter-8 Reaching Grandmothers House', 'This chapter describes how two best friends, Omana and Radha, were looking forward to a train journey to Kerala. \n\nOmana took her family to her grandmother\'s house, and Radha took the family on vacation.\n\nRadha’s family had to cancel her vacation due to an unexpected accident with her, which broke her right leg and was stuck for six months. \n\nThe incident disappointed two best friends because there were so many plans for the trip. \n\nRadha’s mother suddenly came up with a great idea. She encouraged Omana to keep a diary throughout the tour and elaborate on all the incidents. As a result, when Omana returns, Radha can read her diary and never miss a train. ', 'pdf_files/chapter8_az8xXwR.pdf', '', '1004'),
(172, '', '', '', '402', 'Chapter-9 Changing Families', 'The chapter Changing families summarizes the three families namely Nimmi’s, Tsering’s, and Nazli’s.\n\nIn Nimmi’s family, members are excited since Nimmi now has a baby sister.\n\nIn Tsering’s family, his father received a letter from his office stating he is promoted from the current post and transferred to a new city.  \n\nThere is a change of place and life taking place in Tsering’s family.\n\nIn Nazil’s family, people are great joy since her elder cousin\'s brother is getting married.\n\nThe chapter also discusses the law enforced on child marriage. ', 'pdf_files/chapter9_yV5koVI.pdf', '', '1004'),
(173, '', '', '', '402', 'Chapter-10 Hu Tu Tu Hu Tu Tu', 'The chapter summarizes a game played by some girls with creating a sound Hu Tu Tu Out! Out!\n\nThe game the girls were playing is called kabaddi. In this type of game, both our mind and body should be used.\n\nThere were three sisters – Jwala, Leela, and Heera. When they were young, the sisters used to play kabaddi a lot.\n\nLater these sisters found a kabaddi club to teach other girls which are active even now.\n\nThough the sisters faced many difficulties while playing this game, they never lost the fun.\n\nHeera, the youngest among the three, also became a kabaddi coach.', 'pdf_files/chapter10_KYCfa0e.pdf', '', '1004'),
(174, '', '', '', '402', 'Chapter-11 The Valley of Flowers', 'Uttarakhand is a hilly area.\n\nIn the hills of Uttarakhand there is a place where there are flowers everywhere. \n\nThis place is called the ‘Valley of Flowers’. \n\nAt some places red flowers are blooming on bushes.\n\nWhile in other places white flowers peep out between the stones. \n\nThere are wide areas carpeted with the brightest yellow flowers. \n\nSomewhere, blue flowers shine like tiny stars between the grasses.\n\n All this seems like a beautiful dream.\n\nThese flowers bloom only for a few weeks in the year.', 'pdf_files/chapter11_zghwPVy.pdf', '', '1004'),
(175, '', '', '', '402', 'Chapter-12 Changing Times', 'Chetandas told us about his experience of partitioning India and Pakistan in 1947 when his family had to move from Pakistan to India.\n\nThey used to live in Dera Gazi Khan, a Place in Pakistan now.\n\nOne day his father told them that they all have to leave the village as soon as possible as there were lots of problems around them.\n\nChetandas was very upset because he has to leave his home and his village, and his friends and move away.\n\nChetandas and his family together, his father, mother, younger brother, and sisters took a train to Delhi and moved on. \n\nA lot of people were moving from India to Pakistan or Pakistan to India in those days.\n\nDue to a large number of immigrants tents and refugee camps were set up and people settled temporarily there first.\n\nChetandas and his family first settled in a big tent in a refugee camp near Delhi.', 'pdf_files/chapter12_JUgeNvV.pdf', '', '1004'),
(176, '', '', '', '402', 'Chapter-13 A Rivers Tale', 'The impact of man\'s activities on a river is the subject of this chapter.\n\nIt explains how the river becomes polluted and what steps must be taken to rescue it. \n\nThe chapter also discusses the sea and why we are unable to consume seawater.', 'pdf_files/chapter13_wnKbbSe.pdf', '', '1004'),
(177, '', '', '', '402', 'Chapter-14 Basva’s Farm', 'This lesson covers the steps involved in growing an onion crop.\n\nThis lesson helps us to understand the agricultural process.\n\nWe will get to know about different agricultural tools, their uses, and their regional names.', 'pdf_files/chapter14_U9XLtZK.pdf', '', '1004'),
(178, '', '', '', '402', 'Chapter-15 From Market to Home', 'This chapter will let us know the life of the sellers in the market.\n\nEspecially the small vegetable sellers in the market.\n\nVegetables are usually bought every day from the wholesale market (mandi) and sold to consumers.', 'pdf_files/chapter15_TBYUu9K.pdf', '', '1004'),
(179, '', '', '', '402', 'Chapter-16 A Busy Month', 'his chapter helps us to understand the important month in animal and bird life.\n\nBirds go through a month when the female birds were going to lay eggs and those preparations should be done.\n\nPreparations like making nests for the safety of the eggs.\n\nDifferent types of birds make different types of nests and lay eggs in different places.', 'pdf_files/chapter16_pn9OPf3.pdf', '', '1004'),
(180, '', '', '', '402', 'Chapter-17 NANDITA IN MUMBAI', 'There is a story about a girl named Nandita in this chapter. She makes a comparison between village and city life.\n\nIn the city, everything is so congested, and lower fights over the tiniest of matters.\n\nPoor individuals have numerous challenges, including access to water, a safe place to live, and employment.', 'pdf_files/chapter17_7sK2913.pdf', '', '1004'),
(181, '', '', '', '402', 'Chapter-18 Too Much Water Too Little Water', 'This chapter aims to the real-life problems regarding water.\n\nWe all know the world has 72% water, but still, a small amount of water is fit to drink.\n\nContamination of water with diseases stays a common problem in urban areas due to the low maintenance of pipelines.\n\nClean water is very essential for having a healthy life.', 'pdf_files/chapter18_i2j3Kcr.pdf', '', '1004'),
(182, '', '', '', '402', 'Chapter-19 Abdul in the Garden', 'This chapter will help us to understand the different types of plants and role of roots in a plant. \n\nThe part of a plant that connects it to the ground or to a support, usually underground, and transports water and nutrients to the rest of the plant through numerous branches and fibres is known as the roots of a plant.', 'pdf_files/chapter19_gBGO8q9.pdf', '', '1004'),
(183, '', '', '', '402', 'Chapter-20 Eating Together', 'For all of us, food is necessary. It provides us with vitality. We all require nourishment. \n\nWe are happier when we consume food together. We enjoy sharing meals with our friends and family. \n\nThere are numerous sorts of meals available. There are also some special foods that we eat on particular occasions, such as til ke ladoo on Makar Sankranti, bora rice with fish curry on Bihu, and siwaiya ki kheer on Eid.\n\nEvery children has the right to a midday meal. In our country, many children are unable to eat even one full meal every day.', 'pdf_files/chapter20_uWU8VyA.pdf', '', '1004'),
(184, '', '', '', '402', 'Chapter-21 Food and Fun', 'This chapter is about having food together at the langar, and Gurudwara’s Langar.\n\nIn gurudwara, it’s a belief that having food together and working together creates social harmony and peace.\n\nA small story of Gurnoor will help us to understand this more.', 'pdf_files/chapter21_TgmQUkn.pdf', '', '1004'),
(185, '', '', '', '402', 'Chapter-22 The World in my Home:', 'This chapter presents the modern-day social problems which we face.\n\nProblems of male domination, gender discrimination, exploitation, caste system, the dominance of earning members of the family, and female harassment.\n\nLet’s understand every social problem one by one by the stories', 'pdf_files/chapter22_gyMv6IP.pdf', '', '1004'),
(186, '', '', '', '402', 'Chapter-23 Pochampalli', 'This chapter is about the weavers of Ponchampalli and their woven sarees.\n\nThis chapter helps us to understand the importance of traditional arts and handicrafts in our country.', 'pdf_files/chapter23_gwSO7oW.pdf', '', '1004'),
(187, '', '', '', '402', 'Chapter-24 Home and Abroad ', 'This chapter makes us understand different countries’ habitats and our India’s.\n\nThe different climates of UAE and India.\n\nThe different means of transport used to travel outside the country and within the country.\n\nMaalu’s uncle had shifted to UAE with his family as he got a job in Abu Dhabi.\n\nThe UAE is a country in the Middle East Asia and the full form is the United Arab Emirates and the capital of the country is Abu Dhabi.\n\nThey were coming back from UAE after 5 years.\n\nNow Maalu and Shanta will share their experiences.', 'pdf_files/chapter24_cw94Pc5.pdf', '', '1004'),
(188, '', '', '', '402', 'Chapter-25 Spicy Riddles', 'This chapter helps us to know about different kinds of spices present in our surroundings.\n\nIn this chapter, spices have given riddles and we must solve the riddles to get the correct name of the spices. \n\nAlso, this chapter explains the recipe for making aloo chaat.', 'pdf_files/chapter25.pdf', '', '1004'),
(189, '', '', '', '402', 'Chapter-26 DEFENCE OFFICER: WAHIDA', 'The Indian Navy is the Indian Armed Forces\' naval branch.\n\nThe Supreme Commander of the Indian Navy is the President of India.\n\nOne can join the Indian Navy after completing 10+2 and meeting the necessary physical requirements.\n\nBoth males and females can join the Naval forces.\n\nThis story tells us about Wahida Prism, a Lieutenant Commander in the Indian Navy.\n\nShe was one of the few women who had worked on a naval ship.\n\nShe is the first female parade marshal.\n\nEven though she was from a small village, she always wanted to be someone special in life.\n\nShe was unusual from a young age.\n\nShe enjoyed riding her motorcycle.\n\nShe has an M.B.B.S degree and joined the Indian Navy as a medical officer.\n\nHer family always supported her throughout her journey.', 'pdf_files/chapter26.pdf', '', '1004'),
(190, '', '', '', '402', 'Chapter-27 Chuskit Goes to School', 'Chuskit is a ten years old girl who is unable to walk.\n\nShe saw the other children playing on their way to school.\n\nShe wanted to go to school but she could not as her wheelchair could not move on the uneven road.\n\nHer friend Abdul had a good idea and they made a plan so that Chuskit could bring her wheelchair on the road.\n\nLeveling on the road was done by one group while the other group made the area near the river even.\n\nThey made a small bridge with flat pieces of wood so that Chuskit could cross the river in her wheelchair.\n\nChuskit had a special day when she went to the school for the first time.', 'pdf_files/chapter27.pdf', '', '1004'),
(191, '', '', '', '503', 'रिमझिम पाठ- 1 राख की रस्सी', 'अब लोनपो गार ने अपने बेटे को उस लड़की से यह कहने को कहा कि उसे नौ हाथ लंबी राख की रस्सी बनाने को कहो। लोनपो गार को लगा कि ऐसी रस्सी बनाना ही संभव नहीं है इसलिए उसने उस लड़की की शर्त मान ली । लोनपो गार राख की रस्सी देखकर दंग रह गए और लड़की की समझदारी को देखकर प्रभावित हो गए और अपने बेटे की शादी उससे करा दी ।', 'pdf_files/5thhindi-ch-1.pdf', '', '1005'),
(192, '', '', '', '503', 'रिमझिम पाठ- 2 फसलें का त्योहार', 'जाड़ा का मौसम है। दस दिनों से सूरज नहीं उगा है। हम लोग सूरज के इंतजार में हैं। रजाई से निकलने की हिम्मत नहीं हो रही। लेकिन खिचड़ी (मकर संक्रांति) का त्योहार आ गया है। अतः जाड़ा के बावजूद हम सभी नहा-धोकर एक कमरे में इकट्ठा हो गए। दादा, चाचा और पापा ने सफेद चकाचक माँड़ लगी धोती और कुर्ता पहना हुआ है। सामने मचिया पर खादी की सफेद साड़ी पहने हुए दादी बैठी थीं। उनके बाल धुलने के बाद सफेद सेमल की रुई जैसे हो गए हैं। उनके सामने केले के कुछ पत्ते कतार में रखे हैं जिसपर तिल, मिट्ठा (गुड़), चावल आदि रखे हुए हैं। दादी ने हम सबसे इन चीजों को बारी-बारी से छूने और प्रणाम करने के लिए कहा। बाद में इन्हें दान दे दिया गया।', 'pdf_files/5thhindi-ch-2.pdf', '', '1005'),
(193, '', '', '', '503', 'रिमझिम पाठ- 3 खिलौनेवाला', 'बालक अपनी माँ से कहता है कि आज फिर खिलौनेवाला तरह-तरह के खिलौने लेकर आया है। उसके पास पिंजड़े में हरा-हरा तोता, गेंद, मोटरगाड़ी, गुड़िया आदि खिलौने हैं। रेलगाड़ी चाबी भर देने पर चलने लगती है। खिलौनेवाले के पास छोटे-छोटे धनुष-बाण भी हैं। वह जोर-जोर से आवाज दे रहा है ताकि बच्चे उसके पास आएं और खिलौने खरीदें। मुन्नू ने गुड़िया खरीदी है और मोहन ने मोटरगाडी। मुझे भी माँ से चार पैसे मिले हैं। लेकिन मैं अन्य बच्चों की तरह तोता, बिल्ली, मोटर आदि नहीं खरीदूंगा। मैं तो तलवार या तीर-कमान खरीदूंगा। फिर मैं जंगल में जाकर राम की तरह किसी ताड़का को मार गिराऊँगा। मैं राम बनूंगा और माँ को कौशल्या बनाऊँगा। बालक माँ से कहता है कि उसके आदेश पर वह हँसते-हँसते जंगल को चला जाएगा। लेकिन बालक तुरंत चिंतित हो उठता है। वह कहता है कि हे माँ, मैं तुम्हारे बिना जंगल में कैसे रह पाऊँगा? वहाँ पर किससे रूढ़ेगा और कौन मुझे मनाएगा और गोद में बिठाकर चीजें देगा?', 'pdf_files/5thhindi-ch-3.pdf', '', '1005'),
(194, '', '', '', '503', 'रिमझिम पाठ- 4 नन्हा फनकार', 'दस साल का नन्हा केशव अपने पिता की तरह पत्थर पर छेनी-हथौड़े से नक्काशी का काम करता था। दरअसल केशव अभी काम सीख रहा था। पिता के एक बार करके दिखा देने पर वह सीधी लकीरों वाले और घुमावदार डिज़ाइन उकेर सकता था। पर उसे घंटियाँ बनाना ज्यादा मुश्किल लगता था। वह होनहार बालक था। उसे पूरी तरह विश्वास था कि एक दिन वह अपने पिता की तरह बारीक जालियाँ, महीन-नफीस बेल बूटे, कमल के फूल, लहराते हुए साँप और इठलाकर चलते हुए घोड़े पत्थर पर उकेर पाने में अवश्य सफल होगा।', 'pdf_files/5thhindi-ch-4.pdf', '', '1005'),
(195, '', '', '', '503', 'रिमझिम पाठ- 5 जहाँ चाह वहाँ राह', 'जहां चाह वहां राह आज तक सबसे अधिक इस्तेमाल की जाने वाली कहावतों में से एक है। जब हम इसके बारे में सोचते हैं तो यह कहावत बहुत मायने रखती है। इसका मूल अर्थ यह है कि यदि आप कुछ करने का मन बना लें तो आप उसे आसानी से कर सकते हैं। दूसरे शब्दों में, यह हमें इच्छा शक्ति के महत्व को दिखाता है और यह कैसे किसी के जीवन में बदलाव ला सकता है। इच्छा शक्ति कुछ हासिल करने की इच्छा है। अगर आपमें कुछ करने की इच्छा शक्ति है तो आपको ऐसा करने से कोई नहीं रोक सकता। यह कहावत जीवन के लगभग सभी पहलुओं पर समान रूप से लागू होती है। इसी प्रकार यह कई मायनों में अत्यधिक महत्व रखता है।', 'pdf_files/5thhindi-ch-5.pdf', '', '1005'),
(196, '', '', '', '503', 'रिमझिम पाठ- 6 चिटठी का सफर', 'पत्रों का हमारे जीवन में महत्वपूर्ण स्थान प्राप्त है। पत्र लिखने की परम्परा बहुत पुरानी है। पत्र जिसके पास लिखा जा रहा है उस तक उचित समय पर पहुँच जाए, इसके लिए हम उस पर डाक टिकट लगाते हैं और पूरा एवं ठीक पता लिखते हैं। फिर पते में सबसे छोटी भौगोलिक इकाई से शुरू करके बड़ी की ओर बढ़ते हैं। छोटी से बड़ी भौगोलिक इकाई का मतलब है घर के नंबर के बाद गली-मोहल्ले का नाम, फिर गाँव, कस्बे, शहर के जिस हिस्से में है उसका नाम, फिर गाँव या शहर का नाम। शहर के नाम के बाद पिनकोड लिखा जाता है। पिनकोड लिखने से गंतव्य स्थान का पता लगाने में डाक छाँटने वाले कर्मचारियों को मदद मिलती है और पत्र जल्दी जल्दी बाँटे जा सकते हैं।', 'pdf_files/5thhindi-ch-6.pdf', '', '1005'),
(197, '', '', '', '503', 'रिमझिम पाठ- 7 डाकिए की कहानी ,कंवरसिंह की जुबानी', ' शिमला के मालरोड पर स्थिति जनरल पोस्ट ऑफिस के एक कमरे में डाक छाँटने का काम चल रहा है। सुबह के 11:30 बजे हैं। डाक छाँटने का काम दो पैकर और तीन महिला डाकिया कर रहे हैं। वहीं पर विराजमान हैं कँवरसिंह, जिन्हें भारत सरकार से पुरस्कार मिल चुका है। हमारी लेखिका प्रतीमा शर्मा ने उनसे बातचीत की जिसे संक्षेप में नीचे दिया जा रहा है-कँवरसिंह हिमाचल प्रदेश के शिमला जिले के नेरवा गाँव के निवासी हैं। उनकी उम्र पैंतालीस साल है। उनके चार बच्चे हैं–तीन लड़कियाँ और एक लड़का। दो लड़कियों की शादी हो चुकी है। ', 'pdf_files/5thhindi-ch-7.pdf', '', '1005'),
(198, '', '', '', '503', 'रिमझिम पाठ- 8 वे दिन भी क्या दिन थे', 'इस पाठ में भविष्य में होने वाले परिवर्तनों को बड़े ही मजेदार ढंग से बताया गया है। कुम्मी और रोहित नाम के दो बच्चे हैं। कुम्मी ने अपनी डायरी में 17 मई 2155 की रात को लिखा, “आज रोहित को सचमुच की एक पुस्तक मिली है।” पुस्तक पुरानी थी। कुम्मी के दादा ने बताया था कि जब वे बहुत छोटे थे तब उनके दादा ने कहा था कि उनके ज़माने में कहानियाँ कागज पर छपती थीं और पढ़ी जाती थीं। पाठक को पृष्ठ पलटने होते थे। सारे शब्द स्थिर थे, चलते नहीं थे। रोहित ने इस पर कहा कि तब तो पढ़ने के बाद ऐसी पुस्तकें बेकार हो जाती होंगी। इससे तो अच्छा हमारा टेलीविजन है जिसके पर्दे पर बहुत-सी पुस्तकों की सामग्री आ जाती है और फिर भी यह पुस्तक नई की नई रहती है।', 'pdf_files/5thhindi-ch-8.pdf', '', '1005'),
(199, '', '', '', '503', 'रिमझिम पाठ- 9 एक माँ की बेबसी', 'राजेश जोशी द्वारा रचित इस कविता में रतन नाम के एक अपंग बच्चे की दशा और उसकी माँ की बेबसी का वर्णन किया गया है। रतन देखने में अन्य बच्चों की तरह ही था परन्तु बोल नहीं सकता था। वह रोज बच्चों के साथ खेलने आया करता था। बच्चों के लिए वह अजूबा था क्योंकि वे उसे अपनों से अलग पाते थे। वे उससे घबराते भी थे क्योंकि न तो वे उसके इशारों को समझ पाते थे न ही उसकी घबराहट को। उसकी आँखों में हमेशा भय समाया रहता था। जब तक वह खेलता उसकी माँ उसके आस-पास बैठी रहती। उसकी नजर हमेशा रतन पर होती। शायद वह उसकी सुरक्षा को लेकर परेशान रहती थी। कवि उन दिनों बच्चा था। अतः रतन की माँ की बेबसी को समझ पाने में बिल्कुल असमर्थ था। परन्तु अब वह बड़ा हो गया है और बचपन की बातें उसे अच्छी तरह याद आ रही हैं। उसे रतन की माँ का वह बेबस चेहरा भी याद आ रहा है।', 'pdf_files/5thhindi-ch-9.pdf', '', '1005'),
(200, 'Hindi', 'Introduction', 'कक्षा 5 हिंदी एक महत्वपूर्ण विषय है जो छात्रों को भाषा कौशल विकसित करने में मदद करता है। इस विषय में एक विस्तृत पाठ्यक्रम है जिसे छात्रों को परीक्षा शुरू होने से पहले पूरा करना और तैयारी करना होगा। चीजों को आसान बनाने के लिए, हिंदी विशेषज्ञों ने विभिन्न अध्यायों से एनसीईआरटी समाधान कक्षा 5 हिंदी का संकलन किया है। छात्र ऑनलाइन पंजीकरण कर सकते हैं और कक्षा 5 के हिंदी अध्यायों का समाधान पा सकते हैं। वे समाधानों का अभ्यास कर सकते हैं और अध्याय की विस्तार से बेहतर समझ प्राप्त कर सकते हैं। विशेषज्ञों ने विशेष रूप से बच्चों के लिए हिंदी व्याकरण और समझ कौशल विकसित करने के लिए समाधान तैयार किए हैं। छात्र कक्षा 5 हिंदी प्रश्न उत्तर पीडीएफ का संदर्भ ले सकते हैं और अपने पाठ्यक्रम को आसानी से पूरा करने के लिए समाधानों का अभ्यास कर सकते हैं।', '503', 'रिमझिम पाठ- 10 एक दिन की बादशाहत', 'प्रस्तुत कहानी में दो बच्चे आरिफ़ और सलीम की एक दिन की बादशाहत का ख़ूबसूरत चित्रण किया गया है । दो बच्चे आरिफ़ और सलीम अपने माता पिता द्वारा हर बात पर टोके जाने से परेशान थे । कभी अम्मी और कभी दादी द्वारा टोका जाता था । उन्हें हर वक़्त पाबंदी में रहने को मजबूर रहना पड़ता था | बच्चों की अपनी मर्जी कभी नहीं चलती थी ।', 'pdf_files/5th_class_hindi_chapter-10.pdf', '', '1005'),
(201, '', '', '', '503', 'रिमझिम पाठ- 11 चावल की रोटियां', 'चावल की रोटियाँ एक एकांकी है, जिसमें कोको मुख्य भूमिका में है। वह आठ साल का एक बर्मी लड़का है। उसके तीन दोस्त हैं—नीनी, तिन सू और मिमि। नीनी और तिन सू बर्मी लड़के हैं और मिमि बर्मी लड़की। उ बा तुन जनता की दुकान का प्रबंधक है। एक दिन कोको अपने माता-पिता के खेत पर जाने के बाद उठता है। माँ की अनुपस्थिति में उसे घर की देखभाल करनी है। उसकी माँ उसके लिए चार चावल की रोटियाँ बनाकर अलमारी में रख गई है। कोको को चावल की रोटियाँ बेहद पसंद हैं। वह झट बैठ जाता है उन्हें खाने के लिए। तभी उसे दरवाजे पर किसी की दस्तक सुनाई देती है। वह दरवाजा खोलने से पहले उन रोटियों को छिपा देता है। फिर दरवाजा खोलता है। दरवाजे पर नीनी होता है। वह तुरंत कोको से पूछ बैठता है कि उसने दरवाजा खोलने में इतनी देर क्यों लगाई। कोको झूठ बोल जाता है कि वह नाश्ता करके मुँह धोने लगा था। नीनी उसके पास रेडियो पर परीक्षा संबंधी सूचना के बारे में जानकारी लेने आया है। कोको बहाना बनाता है। कि उसका रेडियो खराब हो गया है। नीनी को खबर जरूर सुनना है। अतः वह फौरन तिन सू के घर चला जाता है।', 'pdf_files/5th_class_hindi_chapter-11.pdf', '', '1005'),
(202, '', '', '', '503', 'रिमझिम पाठ- 12 गुरु औि चेला', 'एक थे गुरु और एक था उनका चेला। एक दिन बिना पैसे के वे घूमने निकल पड़े। चलते-चलते वे एक नगर में पहुँच गए। वहाँ उन्हें एक ग्वालिन मिली। उसने उन्हें बताया कि यह अंधेर नगरी है और इसका राजा बिल्कुल मूर्ख (अनबूझ) है। इस नगरी में सभी चीजों का दाम एक टका है। गुरुजी ने सोचा ऐसी नगरी में रहना ठीक नहीं है। अतः उन्होंने अपने चेले से वहाँ से चलने को कहा। चेले ने बात नहीं मानी। गुरुजी चले गए परन्तु चेला उसी नगरी में रह गया। एक दिन चेला बाजार में गया। वहाँ उसने देखा कि सभी चीजें टके सेर मिल रही हैं। चाहे वह खीरा हो या रबड़ी मलाई। चेले को सब कुछ अजीब लग रहा था।', 'pdf_files/5th_class_hindi_chapter-12.pdf', '', '1005'),
(203, '', '', '', '503', 'रिमझिम पाठ- 13 स्वामी की दादी', 'स्वामीनाथन की दादी एक बंद-सी कोठरी में अपने सामान के साथ रहती थीं। उनका सामान था–पाँच दरियाँ, तीन । चादरें, पाँच तकियों वाला भारी-भरकम बिस्तर और दो बक्से।। एक दिन रात को भोजन के बाद स्वामीनाथन अपनी दादी की गोद में सिर रखे लेटा हुआ था और उनसे बातें कर रहा था। बातों के दौरान उसने दादी को राजम और मणि की पहले दुश्मनी और फिर दोस्ती की कहानी कह सुनाई। उसने दादी को यह भी बताया कि राजम के पास सचमुच की पुलिस की वर्दी है। उसके पिता पुलिस अधीक्षक हैं अर्थात् पुलिस के सबसे बड़े अफसर। पुलिस अधीक्षक, पुलिस के सबसे बड़े अफसर …’ जैसी बातों ने दादी को बहुत प्रभावित किया। उनको अपने पुराने दिन याद आने लगे। उन्होंने पुरानी कहानी शुरू कर दीं जब स्वामीनाथन के दादा रौबदार सब-मजिस्ट्रेट थे और जिनके दफ्तर में पुलिस वाले काँपते हुए खड़े रहते थे। उन्होंने स्वामीनाथन को यह भी बताया कि उनसे (दादाजी)। डरकर खूखार से खूखार डाकू तक भाग खड़े होते थे। स्वामीनाथन दादी की कहानी से ऊबने लगा। उसने उन्हें बीच में ही रोक दिया और राजम के बारे में बताने लगा। राजम को गणित में 100 में से 90 अंक मिलते हैं।', 'pdf_files/5th_class_hindi_chapter-13.pdf', '', '1005'),
(204, '', '', '', '503', 'रिमझिम पाठ-14 बाघ आया उस रात', '“यह कविता बाघ के बारे में दो बच्चों की अभिव्यक्ति है। एक बच्चा अपने बाबा से कहता है-बाघ इधर से निकला था और उधर चला गया था। वह रात के समय आया था। हो सकता है वह फिर आ जाए। अतः आप रात के समय बाहर मत निकलना । बच्चा आगे बताता है-बाघ झरने के पास रहता है। मैं जब दिन के समय वहाँ गया था तो उसे देखा था। और उसे ही नहीं, उसके दो बच्चे और बाघिन को भी देखा था। बाघिन पूरा दिन पहरा देती रहती है। बाघ या तो सोता है या अपने बच्चों के साथ खेलता है। इस पर दूसरा बच्चा, छोटू, कहता है-बाघ कोई काम नहीं करता है। वह न तो ऑफिस जाता है न कॉलेज। वह स्कूल में भी नहीं जाता है। पाँच साल के बेटू ने एक बार फिर अपने बाबा को मना किया रात में बाहर होकर बाथरूम जाने के लिए।', 'pdf_files/5th_class_hindi_chapter-14.pdf', '', '1005'),
(205, '', '', '', '503', 'रिमझिम पाठ- 15 बिशन की दिलेरी', 'सुबह सुबह दस वर्ष का बिशन घर से बाहर निकल आया। वह रोज इसी समय, इसी रास्ते से कर्नल दत्ता के फार्म हाउस पर उनकी पत्नी से पढ़ने जाता है। अचानक उसे गोली चलने की आवाज़ सुनाई दी। थोड़ी ही देर बार दो-तीन गोलियाँ एकसाथ चलीं। गोलियों की आवाज़ से पूरी घाटी गूंज गई। बिशन डर गया और पेड़ों की आड़ में छिप गया। अभी वह सोच ही रहा था कि गोली किसने और क्यों चलाई होगी कि तभी एक और गोली की आवाज़ आई। अचानक बिशन को गोली चलने का कारण समझ में आ गया। दरअसल शिकारी गेहूं के खेतों में दाना चुगते तीतरों को मारने के लिए उन पर गोली चलाते हैं।', 'pdf_files/5th_class_hindi_chapter-15.pdf', '', '1005'),
(206, '', '', '', '503', 'रिमझिम पाठ- 16 पानी रे पानी', 'पानी हम हर काम में इस्तेमाल करते हैं लेकिन शायद ही कभी इसके बारे में सोचते हैं, जैसे—यह कहाँ से आता है? कहाँ चला जाता है? भूगोल की किताब में जलचक्र के बारे में बताया जाता है। समुद्र से उठी भाष बादल बनकर पानी में बदलती है और फिर वर्षा होती है। वर्षा का जल समुद्र में वापस मिलकर जलचक्र की प्रक्रिया पूरी करता है। हमारे घरों में, स्कूल में, दफ्तरों में, कारखानों आदि में नलों के माध्यम से पानी आता है। और मुसीबत यह है कि इन नलों में अब पूरे समय पानी नहीं आता। कभी देर रात में आता है तो कभी सुबह-सुबह। पानी की आवश्यकता तो सभी को है। अतः लोग नींद की परवाह किए बिना बाल्टियाँ, बर्तन, घड़े आदि लेकर नलों पर इकट्ठे हो जाते हैं। कभी-कभी पानी को लेकर लोगों में आपस में तकरार भी हो जाती है।', 'pdf_files/5th_class_hindi_chapter-16.pdf', '', '1005'),
(207, 'English', 'Introduction of English', 'Introduction to Class 5 English Grammar In this article, we will discuss the basics of English Grammar, like how a sentence forms, the rules for writing a grammatically correct sentence, transitive verb and intransitive verb, active voice and passive voice with their sentence structure, and noun and its types.', '501', 'UNIT-I  ICE CREAM MAN', 'Ice-cream Man is a poem that tells the readers about the most loved person of children during summers, the ice-cream man. The poem is written by Rachel Fields and tells the readers about the happiness he brings during hot summer days. Moreover, the poem also gives a perfect description of children’s love for ice-creams and the joy it brings. In addition, it also describes the cart of the ice cream man and the different kinds of ice-cream he brings. Thus, it is a very enjoyable read which makes children experience the joy they themselves get to feel whenever they see any ice cream man during summers. The poem has also got quite a nostalgic ring to it in the way it illustrates the behavior of little children whenever the ice-cream seller arrives. Therefore, this poem is also very apt and true in every sense.', 'pdf_files/ENGLISH5THCLASS FIANAL2.pdf', 'Class 5', '1005'),
(208, '', '', '', '501', 'UNIT-II  TEAM WORK', 'In this article, we will discuss the Teamwork summary for a better understanding. Teamwork is a poem that teaches us a great deal about how collaborating and working together can be beneficial. It is written by Jan Nigro. The poem is very essential for students as it will help them become better team members. The poem promotes the essence of partnership and teamwork. It tells the students that if we work together, there is nothing that can stop us from achieving our dream. Moreover, it also tells us how the sharing of joy is also equally rewarding. The poem gives examples of a Basketball game. Similarly, it says tells us that even relay races require teamwork for winning. Further, it states how we are all parts and makes up one whole. In conclusion, it appeals to everyone to work together. This way, we can become stronger and better when together than apart.', 'pdf_files/Class5th english 2.pdf', '', '1005');
INSERT INTO `learning_stdclass` (`id`, `subjects`, `intro`, `description`, `subid`, `chaptername`, `chapterdis`, `pdf`, `classes`, `classid`) VALUES
(209, '', '', '', '501', 'UNIT-III  MY SHADOW', 'This article discusses My Shadow summary which is a poem written by Robert Louis Stevenson. The poem revolves around a child and his shadow. He is fascinated by his own shadow that moves with him. The child starts noticing things about his shadow. He notices that it resembles him. Moreover, he also sees that the shadow does the same things as the child. For instance, when he gets in bed, the shadow does the same as well. Sometimes, it gets into bed before the child can. However, some things still confuse the child. It is that the shadow keeps changing its size. Sometimes, it grows very tall and other times it turns small. One day, the child decides to get up early. He notices dews on flowers but the shadow is missing. Thus, he assumes that his shadow is so lazy that it is still sleeping in bed.', 'pdf_files/5th class english chapter 3.pdf', '', '1005'),
(210, '', '', '', '501', 'UNIT-IV  CRYING', 'In this article, we will be discussing Crying summary which is a poem written by Galway Kinnell. The poem tells the students how crying a little will not help anyone. It urges the students to cry their heart out. Only then will they feel content. The poet appeals everyone to cry till their pillow drenches in tears. Further, it states that after crying your heart out you will achieve happiness. Once you are done crying, you can be happy and get in the shower. Moreover, crying your heart out will let you laugh cheerfully. The poet also says that doing this will definitely make people wonder. However, one should not pay heed to all this. Instead, it is advisable to tell everyone that your happiness was laying in the last tear. That is to say, the last tear of ours was carrying our happiness all along.', 'pdf_files/5th class english chapter 4.pdf', '', '1005'),
(211, '', '', '', '501', 'UNIT-V  THE LAZY FROG', 'Rip Van Winkle is a story about a man who is a Dutch-American villager. It is set in years before and after the American Revolutionary War took place. It tells us about his experience and how he meets some men who change his life forever. Everyone in the village likes him as he has a good nature but he is very lazy too. One day, it happens that he meets these men when he goes out to the hills. One of the men gives him something to drink which makes him fall into a very deep sleep slowly. Surprisingly, Rip wakes up to realize that he is at the same place he was where the met the man. He goes back to his village to find out that he has been away for almost 20 years and everything has changed completely now.', 'pdf_files/5th class english chapter 5.pdf', '', '1005'),
(212, '', '', '', '501', 'UNIT-VI  Class Discussion', 'Class Discussion summary will help in getting to know the gist of the poem. It is a poem written by Gervase Phinn. The poem is about a little girl who does not speak much. It is set in a class discussion that is happening with the teacher. During the discussion, the students and teachers are all engaging in the conversation. All of them are busy with discussing the topic. However, there is a girl Jane who is seen not participating in the conversation. She does not discuss anything and sit in silence and stares at everyone. On seeing her this silent, the teacher asks her if she has any problem. To this, Jane then gives a very befitting reply. She says that the world is full of all types of people. Similarly, it has some people who do not prefer talking that much as being quite is in their nature.', 'pdf_files/5th class english chapter 6.pdf', '', '1005'),
(213, '', '', '', '501', 'UNIT-VII   TOPSY-TURVY LAND', 'Topsy-turvy land is a poem written by H. E. Wilkinson. It is a very interesting poem that takes us to the land where everything is upside down. It tells us about a strange land where nothing is normal. In fact, the normal that we live in, everything is the opposite of that in this land. It has many amusing things, for instance, the sea does not contain water, and instead, it is full of sand. Similarly, there are many other strange things going on in this land which the poem mentions. Like how the children do not go to school during the day, rather they go to school at night. Further, the houses have a front doorstep at the back. What is most amusing is that, in this land, people walk on their hands instead of their feet. It is an entertaining poem with hilarious scenarios to think about.', 'pdf_files/5th class english chapter 7.pdf', '', '1005'),
(214, '', '', '', '501', 'UNIT VIII  NOBODY’S FRIEND', 'Nobody’s friend is a poem which teaches a great lesson to children. It tells you about the concept of sharing. The poem will help kids know to understand the happiness that comes with sharing. It does so by giving the example of kids who do not share. We come across children who do not prefer sharing their things with anyone. Thus, they fail miserably at making true friends and are nobody’s friend. Such children cannot establish a long-lasting friendship with anyone. So, they end up alone without any friends. However, if we look at children who love to share their things. They are the ones who can easily establish a friendship with anyone. They do not hesitate in sharing their things and help others in need. So, the poem tells us that such sharing children get a lot of friends in their lives. Thus, the moral is that one should always share their things and make others happy.', 'pdf_files/5th class english chapter 8.pdf', '', '1005'),
(215, '', '', '', '501', ' UNIT-IX  SING A SONG OF PEOPLE', 'Sing a song of people is a poem that explains the fast-paced world. It tells us how everyone is in a hurry nowadays. It does not matter where the people are going, the hurrying up is constant. You will see them going here and there is a very hurried manner. It describes how people are in a hurry everywhere, either a subway or elevator. Even when it rains, that does not stop the pace. People keep moving with umbrellas to reach their destination. You see them rush for the taxis and ride the elevators as well. Further, it tells us how people who are even walking individually are ultimately part of a big crowd. After that, the poem goes on to describe the different behaviours of people. Some like to talk in a loud manner while some remain quiet. No one has the time to even look at others.', 'pdf_files/5th class english chapter 9.pdf', '', '1005'),
(216, '', '', '', '501', 'UNIT-X   Malu Bhalu', 'The poem is about a little polar bear who goes by the name of Malu Bhalu. It takes us on a journey of her growing up. We see that she lives in an icy lair. Further, the poem describes how she learns to catch fish. She looks up to her parents and learns things from her. Malu wishes to see things that are beyond the blue sky. After realizing this wish, she asks her mother for the same. However, her mother suggests her to have a little patience. She asks her to wait until she learns how to swim properly. One day, her mother urges her to swim but she gets scared. The mother makes her comfortable and asks Malu to follow her footsteps. Thus, Malu learns the skill very effortlessly. On seeing her swim so smoothly, she is ensured that Malu is a strong and fearless girl.', 'pdf_files/5th class english chapter 10.pdf', '', '1005'),
(217, 'Environmental Studies', 'Introduction of Environmental Studies', 'This subject deals with all the significant concepts related to the environment. Students are the future of the world and it is important for them to learn about the environmental processes and changes that take place in the world.', '502', 'CHAPTER - 1  SUPER SENSES', 'This article deals with super senses class 5 notes. A sense refers to an organism’s psychological capacity that provides data for perception. Furthermore, the sensory nervous system of the body controls the super senses. Moreover, there is a sense organ and sensor in the body for each sense. Human beings have various sensors in the body which are sight, hearing, taste, touch, and smell. These five are the traditionally recognized senses. Most noteworthy, these five are the super senses in the body. The sensing of each sensor sends information to the brain. Then the brain interprets the information and helps in understanding and perceiving the world.  The nervous system receives and processes the information. Afterward, one is able to react, communicate, and keep the body safe. Moreover, most information comes through sensory organs. This is possible because the specialized cells in these organs receive and translate stimuli into useful signals. Eyes certainly translate light into image signals. On the other hand, ears transform sound waves into the sound signals using bone and fluids. Also, skin sends touch signals to the brain by making use of the specialized receptor. There are various chemicals in the air that stimulate signals in which the brain interprets them as smells. Finally, the brain is the principal organ of gustation and it consists of taste buds.', 'pdf_files/EVS_5TH_CLASS_removedchapter-1.pdf', '', '1005'),
(218, '', '', '', '502', 'CHAPTER - 2  A SNAKE CHARMER’S STORY', 'Did you know that snakes are a very important part of India’s culture and heritage? They have a very high status in Hindu mythology. And snake charmers are a part of these rituals as well. Let us learn more about these mystical snake charmers and the snakes that dance to their tune.', 'pdf_files/EVS_5TH_CLASS_removed_Chapter-2.pdf', '', '1005'),
(219, '', '', '', '502', 'CHAPTER - 3  FROM TASTING TO DIGESTING', 'This article discusses the class 5 concept, from tasting to digesting. Living organisms need food and water to survive.    Moreover, the food and water travel directly from the mouth to the stomach. Afterward, a conversion of this food into energy takes place. Also, it is the digestive system is responsible for this conversion of food into energy. Most noteworthy, digestion refers to the process of breaking down of food, so that it can be converted to energy. The mouth has saliva which softens the food and the tongue has taste receptors. When food enters the mouth, the first thing that happens is tasting due to the taste receptors in the mouth. As one swallows the food, a transition from tasting to digestion takes place. There is an involvement of several organs that complete the process of digestion. The primary area involving digestion is the gastrointestinal tract. Experts also call this tract as the digestive tract. This tract contains hollow organs and their connection is to a long, winding tube. The follow organs which form the digestive tract include the mouth, esophagus, stomach, small intestine, and large intestine. Besides these, liver, gallbladder, and pancreas are also part of the digestive tract. The small intestine absorbs almost all the nutrients from the food. Furthermore, the transportation of these nutrients to other parts of the body takes place due to the circulatory system. Also, the special cells across the intestinal lining help in the absorption of the nutrients.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-3.pdf', '', '1005'),
(220, '', '', '', '502', 'CHAPTER - 4  MANGOES ROUND THE YEAR', 'This article deals with mangoes round the year class 5 notes. Mango is a very important fruit in India. Furthermore, many people call it the king of all fruits. Furthermore, many people eagerly await for the mango season to eat this fruit. This is because Mango is extremely tasty and delicious fruit. Mango is certainly the national fruit of India. Everything about mango is awesome whether it be – taste, smell, color, or uses. Moreover, there are various types of mangoes in the world. The tree of mango is an evergreen tree. Also, this tree happens to be a deep-rooted tree. Tropical regions are famous for growing mango plants. The height of the mango tree happens to be 30-100 feet and their width is 80 feet.  Mangoes certainly have a lot of nutrient value. Besides being tasty, mangoes have a lot of essential nutrients like carbohydrates, sugar, fibers, calcium, iron, and important minerals. Moreover, mango has anti-oxidant properties. This property certainly helps to protect against various diseases. Furthermore, mangoes are of various types. In India alone, more than 100 varieties of mangoes exist. These varieties differ in taste, size, shape, and even colors. Also, the most popular varieties of mangoes are Langar, Dashahari, Kesar, Alphonso, Badami, etc. Many individuals prepare many types of dishes using mangoes. Slicing, canning, or processing of mangoes can take place to form various kinds of jellies, jams, jellies, powder flavors. Some people in India make chutneys and pickles using mangoes.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-4.pdf', '', '1005'),
(221, '', '', '', '502', 'CHAPTER - 5  SEEDS AND SEEDS', 'Chapter 5 of the EVS subject of class 5 – Seeds and seeds is a chapter-based totally on the study of seeds that teaches the students about the basic information and facts about the seeds. By giving a read to this chapter student of class 5 will be getting enough knowledge about this topic. Further, they can also study it in higher classes later and understand it clearly. Seeds and seeds class 5 notes tell that the seeds are also used in cooking after being soaked for a while before cooking. There are various types of seeds that are used as spices too. Further, there are various activities in this chapter that will let the students to clearly study this topic. Moreover, you can gain important knowledge through it. These exercises help in improving the educational and creative skills of the students of class 5.  There are many drawing and experiment activities that make the students aware of the life cycle of the seeds and their uses in day to day life. This chapter tells that there are so many seeds and they all can be used in different ways. There are exercises that ask the students to find out various types of seed used for different purposes and make a list of it. It tells about the wandering seeds that travel from place to place and change their location. The plants cannot move but the seeds are small and displace from their places with the help of the wind and storms.', 'pdf_files/EVS_5TH_CLASS_removed_Chapter-5.pdf', '', '1005'),
(222, '', '', '', '502', 'CHAPTER - 6  EVERY DROP COUNTS', 'Chapter 6 of class 5 EVS – Every drop counts, has a lot of information and important facts and news about the water bodies like ponds, lakes, oceans, rivers, etc. Further, every drop counts class 5 notes tell about the history of the water bodies and the value of water in different areas according to the availability of the water over there. Moreover, it tells about different ways of getting water and their sources from where we obtain them. In addition, to how we obtain them. The chapter discusses the various problems that people face around the country. Further, it also discusses many ways that tells how to solve the problem of the water crisis. The chapter tells about various stories of old times that help the students better understand the value and the importance of the water in one’s life. In some places, the water is available in a sufficient amount and people get more than enough water for their needs. Whereas at some places the water is not easily available for the basic needs of the people. This chapter has various exercises and activities that help the students better understand this topic. Moreover, to learn how to use water and not to waste it.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-6.pdf', '', '1005'),
(223, '', '', '', '502', 'CHAPTER - 7  EXPERIMENTS WITH WATER', 'Experiments with water of class 5 Environmental Science provides knowledge about the experiments that can be performed with water. Further, these experiments help a lot in understanding the basic concepts. They are related to water and other substances. Moreover, there are various activities that the students have to perform while studying experiments with water class 5. In order to know what would happen by doing various experiments with water. There are exercises that have filled in the blanks exercise. This chapter is based more on activities and experiments than questions. Some questions are also there that help in practicing the chapter. Also, in making students clear about the topics they have studied.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-7.pdf', '', '1005'),
(224, '', '', '', '502', 'CHAPTER - 8  A TREAT FOR MOSQUITOES', 'A Treat for Mosquitoes, of class 5 Environmental studies teaches about the insect that is present in everybody’s house and which is a mosquito. Further, this insect can fly up to a specific height. A mosquito is a tiny insect but can even cause death to a person. Moreover, it can cause many diseases like malaria, dengue, etc. which are dangerous and can even cause death. A treat for mosquitoes class 5 have various topics like blood tests, anemia, Baby mosquitoes, mosquito check, etc. Thus, by studying these topics carefully, the students will get enough knowledge about mosquitoes and their lives.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-8.pdf', '', '1005'),
(225, '', '', '', '502', 'CHAPTER - 9  UP YOU GO', 'Up you go! Of class 5 from the environmental studies is based on the information and facts about the mountains found in our nation. There is a story of the mountaineering camp conducted by the Nehru Institute of Mountaineering located in Uttarkashi. Further, the students will get to know about the mountains and the hills after giving a read to this chapter. Moreover, it tells about the qualities a leader must be having while leading the campers during the mountaineering. Therefore, the leader is responsible for where the group is going and what steps are to be taken during the movement of the members towards the destination.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-9.pdf', '', '1005'),
(226, '', '', '', '502', 'CHAPTER - 10  WALLS TELL STORIES', 'This article deals with the Wall Tell Stories class 5 concept. India is a country that boasts of a rich cultural heritage. An important aspect of that cultural heritage is the historical forts of India. India is certainly the land of the forts. Furthermore, the main reason for the construction of so many forts were the Indian leaders and architects. Moreover, these Indian leaders were very ambitious and brave. Also, Indian architects’ were quite skillful. Consequently, the result was the construction of magnificent and beautiful forts. These majestic forts attract a large number of tourists from India and abroad every year. Forts of India reflect high-quality on all aspects, whether it be design, style, material, or layout.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-10.pdf', '', '1005'),
(227, '', '', '', '502', 'CHAPTER - 11  SUNITA IN SPACE', 'This article deals with sunita in space class 5 notes. Space, without a doubt, is a mysterious realm. Space comprises the vast emptiness, moon, stars, planets, celestial objects, etc. Furthermore, one thing that raises curiosity is the thought that what the Earth would appear like from space. People certainly feel that the Earth is flat. However, the reality is that the Earth is in fact round. We know this fact from various proofs and pieces of evidence. The strongest proof among all is that the scientists have gone into space and have taken images of the Earth. Naturally, the next question is that why don’t we fall off the edge of the Earth? The answer to this question is the gravitational force of the Earth. Most noteworthy, Earth attracts everything to the center and that is why we don’t fall off.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-11.pdf', '', '1005'),
(228, '', '', '', '502', 'CHAPTER - 12  WHAT IF IT FINISHES', 'This article deals with what if it finishes? class 5 concept. The article revolves primarily around materials (resources). Furthermore, fuel refers to a substance which upon combustion produces energy. Examples of fuel can be biogas, fossil fuel, nuclear energy, etc. Moreover, fuel is reducing at a rapid rate due to human activities. Consequently, this makes fuel conservation as one of the biggest concerns of humanity. Also, there are various types of fuels in the world. A categorization of fuels can take place on the basis of the state- solid fuel, liquid fuel, and gaseous fuel. Another method of classifying fuels is on the basis of occurrence- man-made fuel or natural fuel.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-12.pdf', '', '1005'),
(229, '', '', '', '502', 'CHAPTER - 13  A SHELTER SO HIGH!', 'This article deals with a shelter so high class 5 concept. The roadway is an essential part of our lives. Comfortable and convenient traveling is possible because of the roadways. Furthermore, roadways are very important in any country. Roadways enable people to travel from one place to another without any hindrance. Automobiles can easily move on roadways. It is hard to imagine what the world would be like without roads. For any type of movement, roads are certainly a crucial form of infrastructure. Roadways are also important for the transportation of goods and materials from one place to another. Each day billions of people around the world make use of the roadways. They do so certainly by various means of transportation. Over the years, there definitely has been an improvement in the quality of roadways.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-13.pdf', '', '1005'),
(230, '', '', '', '502', 'CHAPTER - 14  When the Earth Shook!', 'The story \"A Shelter so High!\" follows the journey of Gaurav Jani and his motorcycle companion, Loner, as they travel from Mumbai to Leh in Ladakh, exploring diverse landscapes and cultures. Gaurav meticulously plans for the journey, packing essentials like a tent,sleeping bag, and warm clothes. The narrative takes readers through the bustling cities of Mumbai and Delhi to the serene mountains of Manali and Leh.In Ladakh, Gaurav encounters the Changpa tribe, nomadic people who thrive in the challenging terrain by herding goats. The Changpas\' unique tent, the Rebo, plays a crucial role in their survival amid harsh weather conditions. Gaurav learns about the significance of pashmina wool, derived from the Changpas\' goats, in the local economy.The story also touches upon the aftermath of an earthquake in Gujarat, witnessed through the eyes of a girl named Jasma. The earthquake leaves her village in ruins, prompting collaborative efforts to rebuild using traditional methods. The narrative emphasizes the resilience of communities in the face of natural disasters.Gaurav\'s journey becomes a testament to the diversity of shelters and lifestyles across India, showcasing houses adapted to specific climates and terrains. The story underscores the importance of understanding and appreciating different ways of life while fostering a sense of unity among diverse communities.', 'pdf_files/EVS_5TH_CLASS_removed__chapter-14.pdf', '', '1005'),
(231, '', '', '', '502', 'CHAPTER - 15  BLOW HOT, BLOW COLD', 'The story revolves around a woodcutter who goes into the forest daily to cut wood and then sells it in the city. One cold winter day, as he works, his fingers become numb, and he blows on them to warm up.Mian Balishtiye, an imaginary character, observes the woodcutter\'s actions with curiosity. When Balishtiye finally approaches and asks  the reason behind the blowing, the woodcutter explains it is to combat the cold.Later, as the woodcutter prepares lunch, he lights a fire to cook potatoes. Balishtiye, perplexed, watches him blow on the fire and the hot potatoes. The woodcutter clarifies that he blows on the potato not to make it hotter but to cool it down before eating.This confuses Balishtiye, who then becomes frightened and believes the woodcutter possesses supernatural abilities to blow hot and cold with the same breath. The woodcutter, unaware of Balishtiye\'s fear, demonstrates the warmth of his breath.The tale, penned by Dr. Zakir Hussain, former President of India, holds a whimsical element. It imparts a lesson about the inexplicable nature of some things, showcasing the woodcutter\'s simple yet  mystical actions that bewilder the imaginative Balishtiye. The narrative subtly conveys the idea that life may contain elements beyond logical explanation.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-15.pdf', '', '1005'),
(232, '', '', '', '502', 'CHAPTER - 16  WHO WILL DO THIS WORK?', 'The passage explores the challenges faced by individuals engaged in cleaning work and reflects on societal attitudes toward such occupations. Sudharak Olve, who has been involved in cleaning for two decades, highlights the lack of opportunities that lead people in his community to continue this work, even after obtaining a college  degree. The passage emphasizes the need for respectful interactions with cleaning staff and encourages students to inquire about their experiences. Drawing from a documentary film and personal narratives, the text discusses the historical context of cleaning work. In Gandhiji\'s Ashram, every person, including guests, had to participate in cleaning tasks, challenging traditional practices associated with certain communities. Narayan (Babla), reflecting on his experiences, raises  questions about the importance of changing societal attitudes toward those engaged in cleaning work. The narrative shifts to a contemporary school setting, where children from a specific community are tasked with cleaning toilets and face physical punishment if they fail to comply. The passage also includes  a historical anecdote about young Bhim Rao Baba Saheb Ambedkar, highlighting his later advocacy for justice and equality.Ultimately, the passage prompts readers to consider the societal implications of differentiating tasks based on social roles and emphasizes the importance of education in challenging stereotypes and promoting equality.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-16.pdf', '', '1005'),
(233, '', '', '', '502', 'CHAPTER - 17  ACROSS THE WALL', 'The narrative \"Across the Wall\" revolves around Afsana and the Nagpada girls\' basketball team, highlighting their journey to overcome societal barriers and excel in the sport. Afsana, a determined 13-year-old, defies her mother\'s initial opposition to playing basketball due to gender bias. With the support of her friends and Coach Bacchu Khan, Afsana and her teammates, including Zarin, Khushnoor, and Afreen, form the Nagpada Basketball Association.The girls face resistance from their families, challenging societal norms that restrict girls from playing sports. Despite initial hesitations, they persist, convincing their families and breaking gender stereotypes. Coach Noor Khan plays a crucial role in training and forming the girls\' team, emphasizing the importance of recognizing players based on ability rather than societal factors.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-17.pdf', '', '1005'),
(234, '', '', '', '502', 'CHAPTER - 18  NO PLACE FOR US?', 'The story of Jatryabhai revolves around his journey from Khedi village to Mumbai, depicting the challenges faced by many families migrating from rural to urban settings. Jatryabhai, along with his daughter Jhimli, had left Sinduri village due to financial struggles. In Mumbai, they faced hardships, trying to make ends meet by repairing  fishing nets. Sidya, Jatryabhai\'s son, worked in a fish factory to contribute to the family\'s income. Their life in Mumbai was marked by financial constraints, insufficient earnings, and the constant fear of  displacement. The narrative also delves into Jatryabhai\'s past in Khedi, a village brimming with natural beauty and a close-knit community. The construction of a dam, however, forced the villagers to leave their ancestral homes. Promises of a better life in a new village, Sinduri, turned out to be disappointing, with inadequate amenities and social  integration challenges.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-18.pdf', '', '1005'),
(235, '', '', '', '502', 'CHAPTER - 19  A SEED TELLS A FARMER’S STORY', 'The narrative unfolds through the perspective of a bajra seed, sharing its journey and intertwining it with the lives of farmers in Vangaam, Gujarat. Born in 1940, the seed describes the joyous times in the village marked by abundant crops and communal celebrations. Damjibhai, the farmer, meticulously stored seeds in a wooden box  with neem leaves for protection, symbolizing a traditional and sustainable approach.However, as time progresses, the village undergoes significant changes. Modernization, marked by the arrival of electricity and new crops, transforms farming practices. Damjibhai\'s son, Hasmukh, embraces these changes, introducing machines, electric pumps, and tractors for efficiency. Yet, with a shift towards monoculture and dependence on external inputs, the charm of traditional farming wanes. The once-close-knit community now only gathers on special occasions.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-19.pdf', '', '1005'),
(236, '', '', '', '502', 'CHAPTER - 20  WHOSE FORESTS?', 'In the narrative \"Whose Forests?,\" the protagonist Suryamani, a \'GirlStar\' associated with the Jharkhand Jungle Bachao Andolan, shares her inspiring journey. Raised in a forest-dwelling community, Suryamani\'s childhood was intertwined with the lush surroundings. However, the intrusion of a contractor, Shambhu, threatened their harmonious existence by exploiting the forest. Suryamani\'s family faced economic challenges, compelling her father to seek work in the town.Encouraged by Maniya Chacha, Suryamani pursued education in Bishanpur. Reluctantly leaving her beloved forest, she excelled in her studies and joined the Jharkhand Jungle Bachao Andolan. Suryamani  passionately worked to safeguard forest rights, educating others about their interconnectedness with the environment.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-20.pdf', '', '1005'),
(237, '', '', '', '502', 'CHAPTER - 21  LIKE FATHER, LIKE DAUGHTER', 'You must have often heard people say how you resemble your parents or your relatives. Why do you think that is? The chapter of inheritance explains this in detail as it will dive deep into this concept to make students learn about it better. You might find that you are often a spitting image of your father or mother, with a little variation. Similarly, this is explained under Mendel’s Law of Inheritance. Other than that, it will help you learn why you also acquire certain habits of your parents automatically. In addition to that, your like father, like daughter class 5 concept will play a great role in doing so.  Moreover, this introduction of inheritance will make a lot of things clear to you students. After that, it will give detail about environmental variation and hereditary variation. Thus, the like father, like daughter class 5 notes will be extremely useful in clearing your basics about this topic. In addition, Mendel’s law of inheritance will be explained in detail. It shows how there are possibilities of characters of both parents to appear in the offspring. Thus, it explains why you resemble your father or mother a lot.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-21.pdf', '', '1005'),
(238, '', '', '', '502', 'CHAPTER - 22  ON THE MOVE AGAIN', 'The story \"On the Move Again\" revolves around Dhanu\'s family and their annual migration from their village in search of work. The narrative begins with the festive celebration of Dussehra at Dhanu\'s house, where relatives gather, and traditional sweets are prepared.However, the joy is short-lived as preparations for migration begin in the evening. Dhanu\'s family, like many others in the village, relies on seasonal agricultural work and borrows money from the mukadam, an agent for sugarcane factories, to sustain themselves during the nonfarming months. The migration involves settling near sugarcane fields in huts made of sugarcane and its leaves. Dhanu\'s family works in the fields, cutting sugarcane, and the earnings are weighed at the factory. The mukadam keeps track of the loans and provides them with money for weekly expenses. During this period, Dhanu misses school, and his mami  expresses a desire for him to stay back and continue his education.The story sheds light on the challenges faced by families engaged in seasonal migration for livelihood, disrupting the education of children like Dhanu. It also highlights the importance of education and the aspirations of family members for a better future. The narrative  prompts reflection on the impact of migration on children\'s education and the need for solutions to ensure continuous learning for these communities.', 'pdf_files/EVS_5TH_CLASS_removed_chapter-22.pdf', '', '1005'),
(239, 'Sanskrit', 'Introduction', 'षष्ठवर्गस्य संस्कृतपाठ्यक्रमे आच्छादितानां मुख्यविषयाणां मध्ये सामान्यतया शब्दावलीविस्तारः, वाक्यनिर्माणं क्रियासंधिः च इत्यादयः व्याकरणसंकल्पनाः, पठनबोधः, अनुवादव्यायामाः, संस्कृतसाहित्यस्य सांस्कृतिकपक्षेषु अन्वेषणं च सन्ति', '607', 'Chapter-1  शब्द परिचयः1', 'एनसीईआरटी समाधान कक्षा 6 संस्कृत पाठ 1 शब्द परिचयः 1 पाठ्यपुस्तक रुचिरा भाग 1 के प्रश्न उत्तर सीबीएसई सत्र 2023-24 के लिए निशुल्क प्राप्त किए जा सकते हैं। कक्षा 6 संस्कृत के ये समाधान सभी प्रकार के छात्रों के लिए उपयोगी है क्योंकि इन्हें आसान बोलचाल की भाषा के माध्यम से सरल बनाया गया है ताकि कोई भी इसे आसानी से समझ सके। प्रत्येक प्रश्न के उत्तर के साथ साथ पाठ में दिए गए शब्दों के अर्थ तथा उनका वाक्यों में वर्णन भी दिया गया है।', 'pdf_files/SANSKRIT-ch-1.pdf', '', '1006'),
(240, '', '', '', '607', 'Chapter 2 शब्द परिचयः 2', 'शब्द परिचयः 2 पाठ्यपुस्तक रुचिरा भाग 1 के प्रश्न उत्तर सीबीएसई सत्र 2023-24 के लिए संशोधित रूप में छात्र यहाँ से प्राप्त कर सकते हैं। छठी कक्षा की संस्कृत के ये सभी समाधान विद्यार्थी यहाँ से निशुल्क प्राप्त कर सकते हैं और किसी औपचारिक पंजीकरण की भी कोई आवश्यकता नहीं है। प्रत्येक प्रश्न के उत्तर के साथ साथ पूरे पाठ की व्याख्या हिंदी में भी दी गई है ताकि किसी छात्र को समझने में कोई परेशानी न हो।', 'pdf_files/SANSKRIT-ch-2.pdf', '', '1006'),
(241, '', '', '', '607', 'Chapter 3 शब्द परिचयः 3', ' कक्षा 6 संस्कृत अध्याय 3 शब्द परिचयः 3 पाठ्यपुस्तक रुचिरा भाग 1 के प्रश्न उत्तर सीबीएसई सत्र 2023-24 के लिए विद्यार्थी यहाँ से मुफ़्त प्राप्त कर सकते हैं। छठी संस्कृत पाठ 3 के प्रत्येक प्रश्न को आसान शब्दों में विस्तार से समझाया गया है। विद्यार्थियों की मदद के लिए पाठ का हिंदी अनुवाद भी दिया गया है। हिंदी अनुवाद को सरल भाषा में विडियो के माध्यम से भी आसानी से समझा जा सकता है।', 'pdf_files/SANSKRIT-ch-3.pdf', '', '1006'),
(242, '', '', '', '607', 'Chapter 4 विद्यालयः', 'विद्यालय वह स्थान है, जहाँ शिक्षा ग्रहण की जाती है। \"विद्यालय एक ऐसी संस्था है, जहाँ बच्चों के शारीरिक, मानसिक, बौद्धिक एवं नैतिक गुणों का विकास होता है। \'विद्यालय\' शब्द के लिए अंग्रेज़ी में \'स्कूल\' शब्द का प्रयोग होता है, जिसकी उत्पत्ति यूनानी शब्द से हुई है, जिससे तात्पर्य।', 'pdf_files/SANSKRIT-ch-4.pdf', '', '1006'),
(243, '', '', '', '607', 'Chapter 5 वृक्षाः', 'वृक्ष का सामान्य अर्थ ऐसे पौधे से होता है जिसमें शाखाएँ निकली हों, जो कम से कम दो-वर्ष तक जीवित रहे, जिससे लकड़ी प्राप्त हो। वृक्ष की एक जड़ होती है जो प्रायः ज़मीन के अन्दर होती है, तथा जड़ से निकलकर तना तथा पत्तियां हवा में रहते हैं। यह प्रदूषण कम करने में कारगर सिद्ध हुआ है।', 'pdf_files/SANSKRIT-ch-5.pdf', '', '1006'),
(244, '', '', '', '607', 'Chapter 6 समुद्रतटः', 'समुद्रतटः वह स्थान होता है जहां समुद्र और भूमि मिलते हैं।', 'pdf_files/SANSKRIT-ch-6.pdf', '', '1006'),
(245, '', '', '', '607', 'Chapter 7 बकस्य प्रतिकारः', 'जब सियार शाम को बगुले के स्थान पर भोजन के लिए गया, तब बगुले ने छोटे मुख वाले कलश में खीर डाली, और सियार से कहा -\"दोस्त, हम दोनों इसी बर्तन में साथ ही भोजन करते हैं।\" बगुला ने कलश से चोंच द्वारा खीर खाई। परंतु सियार का मुँह कलश में नहीं जा सका। इसलिए बगुला सारी खीर खा गया। सियार केवल ईर्षा से देखता रहा।', 'pdf_files/SANSKRIT-ch-7.pdf', '', '1006'),
(246, '', '', '', '607', 'Chapter 8 सूक्तिस्तबकः', 'सब मनुष्य प्रिय वचन कहे जाने पर प्रसन्न हो जाते हैं। इस कारण मधुर वचन ही बोलने चाहिए। वाणी के उपयोग में कंजूसी क्यों की जाए। अर्थात उदार होकर अधिकाधिक मधुर वाणी का प्रयोग करना चाहिए।', 'pdf_files/SANSKRIT-ch-8.pdf', '', '1006'),
(247, '', '', '', '607', 'Chapter 9 क्रीडास्पर्धा', '', 'pdf_files/SANSKRIT-ch-9.pdf', '', '1006'),
(248, '', '', '', '607', 'Chapter 10 कृषिकाः कर्मवीराः', 'कृषिका कृषिको नित्यं शीतकालेSपि कर्मठौ।। चाहे सूरज तपाये या बादल अत्यधिक बरसें किसान तथा उसकी पत्नी सदा सरदी में भी काम में लगे रहते हैं।\\', 'pdf_files/SANSKRIT-ch-10.pdf', '', '1006'),
(249, '', '', '', '607', 'Chapter 11 दशमः त्वम असि', 'कक्षा 6 संस्कृत अध्याय 11 दशमः त्वम असि पाठ्यपुस्तक रुचिरा भाग एक के शब्द अर्थ के साथ साथ प्रश्न उत्तर तथा अन्य सभी छोटे बड़े प्रश्नों के उत्तर यहाँ से निशुल्क प्राप्त किए जा सकते हैं। पाठ को विस्तार से समझाने के लिए पाठ का हिंदी अनुवाद दिया गया है जो अर्थों को समझ कर पाठ को समझने में मदद करता है। कक्षा 6 संस्कृत पाठ 11 की पुस्तक तथा पुस्तक का समाधान दोनों साथ साथ दिए गए हैं ताकि विद्यार्थी इसे आसानी से ऑनलाइन पढ़ सकें।', 'pdf_files/SANSKRIT-ch-11.pdf', '', '1006'),
(250, '', '', '', '607', 'Chapter 12 विमानयानं रचयाम', 'कक्षा 6 संस्कृत अध्याय 12 विमानयानं रचयाम पाठ्यपुस्तक रुचिरा भाग 1 अभ्यास के सभी उत्तर, शब्दों के अर्थ, खाली स्थानों को भरना आदि प्रकार के प्रश्नों को यहाँ से प्राप्त करें। कक्षा 6 संस्कृत पाठ 12 के सभी प्रश्नों के उत्तर सीबीएसई सत्र 2023-24 के लिए पुनः संशोधित किए गए हैं ताकि छात्र नवीनतम पाठ्यक्रम के माध्यम से अपना अध्ययन कर सके। पाठ को हिंदी मीडियम में समझाने के लिए पाठ का हिंदी अनुवाद भी दिया गया है।', 'pdf_files/SANSKRIT-ch-12.pdf', '', '1006'),
(251, '', '', '', '607', 'Chapter 13 अहह आः च', 'अध्याय 13 अहह आः च पाठ्यपुस्तक रुचिरा के प्रथम भाग के सभी प्रश्न उत्तर सीबीएसई सत्र 2023-24 के लिए संशोधित रूप में यहाँ से प्राप्त किए जा सकते हैं। किसी भी छात्र को पाठ पढ़कर समझने को कोई परेशानी न हो इसलिए पाठ 13 का हिंदी रूपांतरण भी दिया गया है। एक एक पंक्ति को सरल शब्दों में हिंदी अनुवाद करके लिखा गया है। इसे पढ़कर छात्रों को पूरा पाठ आसानी से समझ आ जाता है और अध्याय आसानी से याद हो जाता है।', 'pdf_files/SANSKRIT-ch-13.pdf', '', '1006'),
(252, 'Hindi', 'Solutions for Hindi', 'कक्षा 6 हिंदी में एक जीवंत पाठ्यक्रम है जिसमें तीन महत्वपूर्ण खंड शामिल हैं। प्रत्येक अनुभाग में अध्यायों की एक व्यक्तिगत सूची होती है जिनका छात्रों को अध्ययन करने की आवश्यकता होती है। इन अध्यायों को सीबीएसई बोर्ड द्वारा हिंदी भाषा कौशल के विकास के लिए शामिल किया गया है। अपने अध्ययन सत्रों का समर्थन करने के लिए, कक्षा 6 हिंदी के प्रत्येक अनुभाग के सभी अध्यायों के लिए कक्षा 6 हिंदी प्रश्न उत्तर डाउनलोड करें और देखें।', '601', 'Chapter 1 - वह चिड़िया जो', 'चिच़िया की मौत के बाद, लोगों ने उसकी यादों को बहुत लम्बे समय तक बनाए रखा, और उसकी कहानी को लोगों में जीवंत रखा।', 'pdf_files/chapter ch-1.pdf', 'Class 6', '1006'),
(253, '', '', '', '601', 'Chapter 2 - बचपन', 'बचपन कवि मार्कस नैटन का है। बचपन सारांश में, कवि अपने बचपन के नुकसान की चर्चा करता है। कवि उसी क्षण की बात करता है जहाँ यह मासूमियत खो गई थी। वह उन विभिन्न उदाहरणों के बारे में बात करता है जब उसने अपना बचपन खो दिया होगा। इसके अलावा, कवि को यह अहसास होता है कि दुनिया वैसी नहीं है जैसी दिखती है। उन्हें याद है जब उनके विचारों में बदलाव आया था. कवि का मानना ​​है कि उसके आसपास के लोग पाखंडी हैं। ऐसा लगता है कि कवि कभी भी अपने आस-पास के लोगों पर भरोसा नहीं कर पाएगा। ऐसा इसलिए है क्योंकि वह उनके पाखंड से वाकिफ हैं।\' कवि का मानना ​​है कि वयस्क प्रेम का उपदेश देते हैं लेकिन उनके कार्य इसे प्रतिबिंबित नहीं करते हैं। लेखक हमें बताते हैं कि उनका बचपन किसी भूली-बिसरी जगह पर बीता। इसके अलावा, कवि बताते हैं कि उनका बचपन एक मासूम शिशु के चेहरे में छिपा है।', 'pdf_files/chapter ch-2.pdf', '', '1006'),
(254, '', '', '', '601', 'Chapter 3 - नादान दोस्त', 'केशव के घर कार्निस के ऊपर एक चिड़िया ने अंडे दिए थे। वह और उसकी बहन श्यामा बड़े ध्यान से उसे देखा करते। उनके मन में अंडों को लेकर कई सवाल थे। जैसे-अंडे कितने बड़े हैं? उनमें से बच्चे कैसे निकलेंगे? वे क्या खाएँगे? आदि। उनके सवालों का जवाब देने वाला कोई नहीं था। इसलिए वे आपस में ही सवाल-जवाब कर दिल को तसल्ली दे लिया करते थे। ', 'pdf_files/chapter ch-3.pdf', '', '1006'),
(255, '', '', '', '601', 'Chapter 4 - चाँद से थोड़ी सी गप्पे', 'कचव की उपयुषि पंक्ति के आधार पर हम कह सकते है चक कचव ने िाूँद से गप्पें अिमी के चदन लगाई होंगी।', 'pdf_files/chapter ch-4.pdf', '', '1006'),
(256, '', '', '', '601', 'Chapter 5 - अक्षरों का महत्व', 'अक्षरों का महत्व भाषा के विकास और संचार के लिए बहुत महत्वपूर्ण है। अक्षरों के बिना लिखने और पढ़ने की कला संभव नहीं होती। इससे हम एक दूसरे से अच्छी तरह से संवाद कर सकते हैं और विचारों को साझा कर सकते हैं।', 'pdf_files/chapter ch-5.pdf', '', '1006'),
(257, '', '', '', '601', 'Chapter 6 - ऐसे-ऐसे', 'स़िक के चकनारे एक सुंदर फ्लै ट में बैठक का दृश्य । उसका एक दरवाजा स़िक वाले बरामदे में खुलता है। बरामदे में रंग-चबरंगे फलों की क्याररयाँ रखी है, अंदर बैठक में दीवारों पर हल्का पीला रंग लगा है। एक तरफ़ सोफे-सेट और दसरी तरफ़ टी.वी रखा हु आ है।', 'pdf_files/chapter ch-6.pdf', '', '1006'),
(258, '', '', '', '601', 'Chapter 7 - टिकट अलबम', 'धुमक्खी चवचभन्न फलों से रस इकट्ठा करती है उसी प्र कार राजप्पा ने भी चवचभन्न थिानों और व्यक्त यों से चटकट इकट्ठा कर अपना अलबम तैयार चकया और नागराजन को उसके मामा ने बना-बनाया अलबम भेज चदया ।', 'pdf_files/chapter ch-7.pdf', '', '1006'),
(259, 'English', 'Introduction', 'Class 6 English HoneySuckle Syllabus is designed so that the students of Class 6 should understand the language and gain both written skills and reading skills concerning prose lessons and poems. Each lesson has been attached to a poem, and all lessons and poems explain a message to students.', '606', 'CHAPTER – 1   WHO DID PATRICK’S HOMEWORK?', 'Who Did Patrick’s Homework? Summary will tell you about the story of a boy who does not like his homework at all. Patrick is a boy who hates doing homework. He enjoys games even though his teachers warn him to complete it, he rarely listens. One day, he finds his cat playing with a doll and takes it away. Surprisingly, he realizes that it is not a doll but a little man. He pleads Patrick to save him and in return, promises to grant a wish. He asks the little man to do his homework in return. So, he agrees and begins to do the work. But, he constantly asks for Patrick’s help throughout in every subject. For instance, asking about the meaning of a word or explaining the events in history subject. Finally, the result comes out and Patrick gets an A grade. Finally, he becomes independent and happy.', 'pdf_files/CLASS_6_ENGLISH__ch-1.pdf', '', '1006'),
(260, '', '', '', '606', 'CHAPTER – 2   HOW THE DOG FOUND HIMSELF A NEW MASTER', 'How the Dog Found Himself a New Master Summary tells us a story about how dogs became to be man’s servant. It begins by telling us how dogs and wolves belong to the same family. This summary will take you through about one dog who changed the lives of dogs forever. One day, a dog realizes that he does not like the constant life of struggle. He is fed up of looking for food. So, he decides to serve a stronger animal to solve all these problems. He meets a big wolf and makes him his master. However, he sees that it is scared of the bear so he went to serve the bear. Similarly, when he notices the bear is scared of the lion, he became his servant. Finally, when he saw even the lion fears humans, he went to the man and became its loyal servant.', 'pdf_files/CLASS_6_ENGLISH__ch-2.pdf', '', '1006'),
(261, '', '', '', '606', 'CHAPTER – 3   TARO’S REWARD', 'Taros Reward Summary will tell you about the beautiful story of a devoted son. Taro is a woodcutter who lives with his old parents. He does not earn a lot and it upsets him as he wants to give his parents the best life. One day, his old father expresses his wish to have a cup of sake. Taro becomes sadder realizing that sake is expensive. Nonetheless, he gets up earlier than usual and starts chopping wood for a long time. Soon, he hears water falling and goes to drink it only to realize that it is sake. He brings it home happily and gives it to his parents. Soon, word spreads around the village and they all rush to the waterfall. However, it tastes like water only to them. Thus, they realize only Taro got the sake because he is a thoughtful son.', 'pdf_files/CLASS_6_ENGLISH__ch-3.pdf', '', '1006'),
(262, '', '', '', '606', 'CHAPTER – 4  AN INDIAN – AMERICAN WOMAN IN SPACE:   KALPANA CHAWLA', 'An Indian American Woman in Space Kalpana Chawla Summary throws light on the tragic incident about the life of Kalpana Chawla. It is about the famous Indian-American woman, Kalpana Chawla, who became the first woman born in India to go into space. It begins by telling us about her childhood. Kalpana always dreams of travelling the space. Thus, merely graduating from an engineering college will not do for her. She goes to the United States to get a master’s degree even though her father did not agree. Later, she also enrolled herself in P.hD. The story serves as an inspiration for all of us that hard work and determination can help us achieve our goals. She got selected for the NASA’s Space Shuttle Program and travelled to space. The news of the Columbia Disaster shattered everyone globally. Nonetheless, her legacy lives on for being an inspirational woman for everyone.', 'pdf_files/CLASS_6_ENGLISH__ch-4.pdf', '', '1006'),
(263, '', '', '', '606', 'CHAPTER – 5   A DIFFERENT KIND OF SCHOOL ', 'A Different Kind of School Summary will take us through a unique school of Miss Beam. The story begins with the writer getting curious about Miss Beam’s school. He decides to visit the school himself. Upon entering the school, he notices a girl with bandage covered eyes being led by a little boy. He proceeds to meet Miss Beam who tells him about her unique teaching methods. She explains that her main aim to teach children to be thoughtful and kind towards everyone. He notices that in the open field, many children were on crutches, while some had eyes covered with bandages and so on. To his surprise, Miss Beam tells him that the one with crutches is not lame. Similarly, one having bandages on the eyes is not blind. It is Miss Beam’s way of teaching them to experience the pain and struggles of those less fortunate than us.', 'pdf_files/CLASS_6_ENGLISH__ch-5.pdf', '', '1006'),
(264, '', '', '', '606', 'CHAPTER – 6   WHO I AM', 'The population of the world now is more than a whopping seven billion. In spite of such a massive population, one important fact remains that each person has their own unique personality and individuality. Let us focus on personality and individuality with this who am I essay.', 'pdf_files/CLASS_6_ENGLISH___ch-6.pdf', '', '1006'),
(265, '', '', '', '606', 'CHAPTER – 7   FAIR PLAY ', 'Fair Play Summary will take us through the life of two friends with a fair sense of justice. Jumman Shaikh and Algu Chaudhary are good friends. They are famous for their loyalty and service to each other. Jumman’s aunt transfers her property to Jumman only if he agrees to take care of her. However, after a few years, he changes and starts ill-treating her. She takes the matter to the Panchayat and chooses Algu as the head Panch. Even though he is Jumman’s best friend, he favours the truth and Jumman’s aunt wins. Jumman starts hating Algu but when another case comes regarding Algu, Jumman has to make the correct choice and give the right decision in favour of Algu despite his hatred. Thus, he realizes the position and responsibility of a Panch and says that the voice of the Panch is the voice of God.', 'pdf_files/CLASS_6_ENGLISH__ch-7.pdf', '', '1006'),
(266, '', '', '', '606', 'CHAPTER – 8   THE BANYAN TREE', 'The scientific name of the Banyan tree: Scientific name of the banyan tree is Ficus benghalensis. A banyan tree, also known as “banian,” belongs to the fig family, that grows additional trunks from its roots, helping it spread outward endlessly. This makes banyan trees different from other trees that start as epiphytes, which means they grow on other plants when their seeds germinate in cracks or crevices of a host tree or building. The term “banyan” is often specifically used for Ficus benghalensis, also called the “Indian banyan,” which is India’s national tree. However, the name is also used more generally for all fig trees that have a similar life cycle and are classified under the subgenus Urostigma in taxonomy.', 'pdf_files/CLASS_6_ENGLISH__ch-8.pdf', '', '1006'),
(267, 'Maths', 'Solutions for Maths', 'In mathematics, you are required to think logically from the start. But just because it requires analytical skills and logical thinking doesn’t mean that it is a tough subject. All you have to do is practice, and you will be able to master the subject. If you have NCERT Solutions for Class 6 Math, you will have a solution set handy that you can use to get answers instantly. It is one of the most important and useful study materials that you can use to prepare for your exam. Through these solutions, you will be able to get an in-depth understanding of all the concepts along with a step-by-step guide to solving the exercise questions.', '602', 'Chapter 1 - Knowing our number', 'It is easy to count objects in large numbers these days. Also, we are able to communicate large numbers with the help of suitable number names.\nIn the past, people knew only small numbers. With the progress of human beings, the need for the development of mathematics was realized and consequently, mathematics grew further and faster. People learned how to express large numbers in symbols.\nWe can count concrete objects with the help of numbers. They help us to know which collection of objects is bigger and consequently we can arrange things in increasing or decreasing order. In previous classes, we have worked with numbers. We know their addition, subtraction, multiplication and division. We have observed patterns in number sequences. In this chapter, we shall review and revise what we have done earlier.\n', 'pdf_files/chapter m1.pdf', '', '1006');
INSERT INTO `learning_stdclass` (`id`, `subjects`, `intro`, `description`, `subid`, `chaptername`, `chapterdis`, `pdf`, `classes`, `classid`) VALUES
(268, '', '', '', '602', 'Chapter 2 - Whole Numbers', 'Whole numbers are a set of numbers that include all natural numbers and zero. They are a collection of all the positive numbers from zero to infinity.\n\nLet’s learn about the symbol, properties and examples of whole numbers in detail.', 'pdf_files/chapter m2.pdf', '', '1006'),
(269, '', '', '', '602', 'Chapter 3 - Playing with Numbers', 'We use numbers in our day-to-day life. We buy everything with money and measure its quantity with the help of Numbers only. Therefore Numbers play a very significant role in our life. ', 'pdf_files/chapter m3.pdf', '', '1006'),
(270, '', '', '', '602', 'Chapter 4 - Basic Geometrical Ideas', 'Do you want to know what Geometry is? This word is actually derived from the Greek word ‘geometron’. Now, ‘geometron’ is actually made of two words – Geo and Metron. So geometry is the mathematical study of all shapes and figures. It can be seen everywhere in our everyday life. We live in a world of shapes and here we shall see how mathematics helps us understand the basics of geometry. Let us study this topic in detail.\n\n', 'pdf_files/chapter m4.pdf', '', '1006'),
(271, '', '', '', '602', 'Chapter 5 - Understanding Elementary Shapes', 'The first things that we tend to understand about objects that we see are colour and shape. In many instances, we understand the function of certain objects by seeing their shapes. Thus, it is important to understand the elementary shapes. Let’s study the topics below.\n\n', 'pdf_files/chapter m5.pdf', '', '1006'),
(272, '', '', '', '602', 'Chapter 6 - Integers', 'Today we are going to introduce ourselves to a unique idea in maths. It is called an ‘Integer’. What is an integer? Let’s suppose a farmer has 17 sheep and all but 9 of them die. So how many does he have left now? Yes, 9! This is actually the idea that we shall discuss here. Let’s understand what is an integer. Let us first understand the basics of integer here', 'pdf_files/chapter m6.pdf', '', '1006'),
(273, '', '', '', '602', 'Chapter 7 - Fractions', 'Fractions are numbers that represent a part of the whole. When an object or a group of objects is divided into equal parts, then each individual part is a fraction. A fraction is usually written as 1/2 or 5/12 or 7/18 and so on. It is divided into a numerator and denominator where the denominator represents the total number of equal parts into which the whole is divided. The numerator is the number of equal parts that are taken out. For e.g. in the fraction 3/4, 3 is the numerator and 4 is the denominator.\n\n', 'pdf_files/chapter m7.pdf', '', '1006'),
(274, '', '', '', '602', 'Chapter 8 - Decimals', 'Decimals have always been a problematic subject for the students. Many simply fail to understand the usability and its need for our study. But like everything that you are taught, it has a need and importance of their own as well. So, before we talk about decimals, you need to understand why was there ever a need for it? Let’s begin.', 'pdf_files/chapter m8.pdf', '', '1006'),
(275, '', '', '', '602', 'Chapter 9 - Data Handling', 'Nowadays, managing and representing data systematically has become very important especially when the data provided is large and complex, This is when Data Handling comes into the picture. The definition of Data handling is in the title itself, that is, Handling the data in such a way that it becomes easier for people to understand and comprehend the given information. Hence, The process of collecting, Recording, and representing data in some form of graph or chart to make it easy for people to understand is called Data handling.\nStatistics is another term for data handling, and it is useful not only in the field of Math and Science but also in the fields where the representation of data is required. Let’s learn about some forms of Data handling, and how they work.\n\n', 'pdf_files/chapter m9.pdf', '', '1006'),
(276, '', '', '', '602', 'Chapter 10 -Mensuration', 'Mensuration is the branch of geometry that deals with the measurement of area, length, or volume in 2D and 3D shapes. The 2D and 3D shapes are often called Geometrical Shapes. The 2D shapes can be drawn in a plane like square, rectangle, triangle, circle, etc. and 3D shapes cannot be represented in a plane like bricks, ice-cream cones, football, etc. Mensuration includes computation using mathematical formulas and algebraic equations.\nMensuration Formula is important for Class 8 students till higher secondary. This article contains mensuration formulas for class 8, class 9 and class 10 students. Lets us learn about mensuration, formulas for various 2-D and 3-D shapes in detail in this article.\n\n', 'pdf_files/chapter m10.pdf', '', '1006'),
(277, '', '', '', '602', 'Chapter 11 - Algebra', 'Algebra is the part of mathematics that helps represent problems or situations in the form of mathematical expressions. In algebra, we use numbers like 2, −7, 0.068 etc., which have a definite or fixed value. In algebra we use variables like x, y, and z along with numbers.', 'pdf_files/chapter m11.pdf', '', '1006'),
(278, '', '', '', '602', 'Chapter 12 - Ratio And Proportion', 'There is a 20 over cricket match going on between India and Zimbabwe. India scores 200 runs with Kohli playing a good knock of 76* runs. Zimbabwe gets bowled out at 100 runs. So India wins by a good margin. That’s a qualitative definition. But by how much did India win? This is answered by the concept of ratios and proportions. So come, let us know more about ratios and proportions.', 'pdf_files/chapter m12.pdf', '', '1006'),
(279, 'Science', 'Solutions for Science', 'Students in Class 6 often struggle to complete such a vast Science syllabus; thus, they might need guidance so they can perform well. This is where the NCERT Solutions for Class 6 Science can be a great help. Our experts have formulated the solutions to NCERT Class 6 Science questions. These solutions help the students gain a solid foundation in the subject. These solutions to the questions in the textbook have been provided in a detailed format, along with some other important questions as well.', '603', 'Chapter 1 - Components of Food', 'We often hear that it is necessary for us to be healthy. But how do we become healthy? Due to a balanced diet. Now, what is a balanced diet? Why is it so important? And is it the same for everyone? Let’s find out more about it.\n\n', 'pdf_files/chapter so1.pdf', '', '1006'),
(280, '', '', '', '603', 'Chapter 2 - Sorting Materials into Groups', 'The provided text discusses the diverse properties and classifications of materials in our surroundings. It emphasizes the various ways materials can be grouped, such as based on shape, material composition, and usage. Objects are made from a wide array of materials, including glass, metal, plastics, wood, cotton, paper, mud, or soil.', 'pdf_files/chapter so2.pdf', '', '1006'),
(281, '', '', '', '603', 'Chapter 3 - Separation of Substances', 'n the exploration of separation methods for substances mixed in various forms, this chapter delves into practical processes used in daily life and scientific contexts. Methods like handpicking, winnowing, sieving, sedimentation, decantation, and filtration are elucidated, each suited for specific scenarios.Most of the times the substances that are around us are not present in their pure form. These substances are basically a mixture of two or more substances. Though, mixtures tend to come in different forms too. Thereby, there are different types of separation techniques that are in use in segregating a mixture of substances. The basic need for separation is usually done to remove all the unwanted materials and obtain useful components.\n\n', 'pdf_files/chapter so3.pdf', '', '1006'),
(282, '', '', '', '603', 'Chapter 4 - Geeting to know Plants', 'The provided text discusses various aspects of plant anatomy, including leaves, stems, and roots. It introduces the classification of plants into herbs, shrubs, and trees based on their characteristics. The importance of stems in transporting water, leaves in absorbing sunlight and conducting photosynthesis, and roots in anchoring the plant and absorbing nutrients from the soil is highlighted.', 'pdf_files/chapter so4.pdf', '', '1006'),
(283, '', '', '', '603', 'Chapter 5 - Body Movements', 'The chapter explores the intricate mechanisms of body movements in animals, focusing on the human skeleton, joints, and various animal adaptations.', 'pdf_files/chapter so5.pdf', '', '1006'),
(284, '', '', '', '603', 'Chapter 6 - The Living Organisms and Their Surroundings', 'In ecosystems, sunlight stands out as the primary source of energy, fueling the intricate web of life. Biotic components, such as trees, contribute to the ecosystem\'s vitality, illustrating the dynamic interplay between living organisms. ', 'pdf_files/chapter so6.pdf', '', '1006'),
(285, '', '', '', '603', 'Chapter 7 - Motion and Measurement of Distance', 'he chapter on \"Motion and Measurement of Distance\" is related to the dynamic nature of objects and the quantification of spatial changes. ', 'pdf_files/chapter so7.pdf', '', '1006'),
(286, '', '', '', '603', 'Chapter 8 - Light, Shadow and Reflection', 'The chapter \"Light, Shadow, and Reflection\" explores essential concepts related to the behaviour of light. It covers the reflection of light, the formation of shadows, and the properties of mirrors.', 'pdf_files/chapter so8.pdf', '', '1006'),
(287, '', '', '', '603', 'Chapter 9 - Electricity and Circuits', 'The chapter \"Electricity and Circuits\" provides a foundational understanding of essential electrical concepts. It explores the nature of electric current, emphasizing its flow through conductors and the significance of materials as conductors or insulators. ', 'pdf_files/chapter so9.pdf', '', '1006'),
(288, '', '', '', '603', 'Chapter 10 - Fun with Magnets', '\"Fun with Magnets\" is an introduction to the captivating world of magnets and magnetism. Magnets, characterized by their ability to attract certain materials like iron, exhibit distinct properties such as having north and south poles. ', 'pdf_files/chapter so10.pdf', '', '1006'),
(289, '', '', '', '603', 'Chapter 11 - Air Around Us', 'The concept of \"Air Around Us\" focuses on the composition and significance of the Earth\'s atmosphere. Air is a mixture of gases, primarily nitrogen, oxygen, and trace amounts of others, essential for supporting life. ', 'pdf_files/chapter so11.pdf', '', '1006'),
(290, 'Social', 'Solutions for social', 'Class 6 social science solutions are framed by the subject experts. Develop your concepts and learn how to answer such questions. Students are more likely to score more marks if they practice solutions regularly. To ease the studying process, online PDFs and solutions are provided in detail. These solutions can be used by students as the best source for revising the subject before exams. These NCERT Solutions for Class 6 Social Science are also the best source of self-analysis of results for students. NCERT Class 6 Social Science subjects are geography, history, and civics.', '604', 'Chapter 1 - What, Where, How and When', 'The provided text introduces readers to the exploration of ancient history, emphasizing the methods used to uncover information about the past. ', 'pdf_files/chapter social 1.pdf', '', '1006'),
(291, '', '', '', '604', 'Chapter 2 - From Hunting – Gathering to Growing Food', 'The passage explores the transition of early humans from hunter- gatherer lifestyles to settled farming and herding. Beginning around two million years ago, hunter-gatherers roamed the subcontinent, relying on hunting, fishing, and gathering for sustenance. Their nomadic existence was driven by factors such as the seasonal availability of resources, the movement of animals, and the need for water.', 'pdf_files/chapter social 2.pdf', '', '1006'),
(292, '', '', '', '604', 'Chapter 3 - In the Earliest Cities', 'The provided text describes aspects of the Harappan civilization, focusing on the discovery of the ancient city of Harappa and insights into life in the earliest cities. ', 'pdf_files/chapter social 3.pdf', '', '1006'),
(293, '', '', '', '604', 'Chapter 4 - What Books and Burials Tell Us', 'The Rigveda, composed around 3500 years ago, is one of the oldest literary sources in the world, consisting of hymns in praise of various gods and goddesses', 'pdf_files/chapter social 4.pdf', '', '1006'),
(294, '', '', '', '604', 'Chapter 5 - Kingdoms, Kings and an Early Republic', 'The provided text discusses various aspects of ancient Indian history, focusing on kingdoms, rulers, and early governance systems. ', 'pdf_files/chapter social 5.pdf', '', '1006'),
(295, '', '', '', '604', 'Chapter 6 - New Questions and Ideas', 'The narrative begins with Anagha\'s school trip, where her mother advises the teacher to share the story of the Buddha and visit Sarnath.', 'pdf_files/chapter social 6.pdf', '', '1006'),
(296, '', '', '', '604', 'Chapter 7 - From a Kingdom to an Empire', 'The Mauryan Empire, initiated by Chandragupta Maurya, reached its zenith with Pataliputra as the imperial hub. Ashoka\'s transformative experience during the Kalinga war redirected the empire\'s trajectory', 'pdf_files/chapter social 7.pdf', '', '1006'),
(297, '', '', '', '604', 'Chapter 8 - Villages towns and Trade', 'The lesson explores the historical developments in villages, towns, and trade in ancient India. The use of iron, especially in agriculture, marked a significant advancement around 3000 years ago.', 'pdf_files/chapter social 8.pdf', '', '1006'),
(298, '', '', '', '604', 'Chapter 9 - New Empires and Kingdom', '\"New Empires and Kingdoms,\" the focus is on the Gupta period and the expansion of empires in ancient India. The chapter explores the significance of prashastis', 'pdf_files/chapter social 9.pdf', '', '1006'),
(299, '', '', '', '604', 'Chapter 10 - Bulidings, Paintings and Books', 'The chapter \"Buildings, Paintings, and Books\" delves into the cultural and technological achievements of ancient India, highlighting contributions ', 'pdf_files/chapter social 10.pdf', '', '1006'),
(300, 'Geography', 'Solutions for Geography', 'NCERT books are for you, which tell you about Earth and its environment. So we are offering you the NCERT Solutions for Class 6 Geography. In these, we are providing the NCERT solutions for the Class 6 Social Science Geography textbook in all the chapters for you. You can easily refer to these solutions while you are solving the questions from the book. The NCERT solutions for class 6 geography are prepared by our team of highly professional, qualified, and experienced faculties.', '605', 'Chapter 1 - THE EARTH IN THE SOLAR SYSTEM', '\"The Earth in the Solar System\" is a concept that explores the Earth\'s position and significance within our solar system. Our solar system consists of the Sun and the celestial bodies that orbit it, including planets, moons, asteroids, and comets', 'pdf_files/chapter social geo 1.pdf', '', '1006'),
(301, '', '', '', '605', 'Chapter 2 - GLOBE LATITUDES AND LONGITUDES', 'Latitudes and longitudes are geographical coordinates used to specify locations on the Earth\'s surface. These coordinates provide a global system for navigation and mapping, allowing people to pinpoint any location with accuracy.', 'pdf_files/chapter social geo 2.pdf', '', '1006'),
(302, '', '', '', '605', 'Chapter 3 - MOTIONS OF THE EARTH', 'The motions of the Earth refer to the various ways in which our planet moves and rotates in space. There are several key motions that contribute to Earth\'s dynamic behavior', 'pdf_files/chapter social geo 3.pdf', '', '1006'),
(303, '', '', '', '605', 'Chapter 4 - MAPS', 'The maps as representations or drawings of the Earth\'s surface on a flat plane, addressing the limitations of globes when studying specific areas. ', 'pdf_files/chapter social geo 4.pdf', '', '1006'),
(304, '', '', '', '605', 'Chapter 5 - MAJOR DOMAINS OF THE EARTH', 'The lesson \"Major Domains of the Earth\" explores the fundamental geographical divisions of the Earth\'s surface, focusing on four major domains: the lithosphere, hydrosphere, atmosphere, and biosphere.', 'pdf_files/chapter social geo 5.pdf', '', '1006'),
(305, '', '', '', '605', 'Chapter 6 - OUR COUNTRY INDIA', 'The lesson \"Our Country India\" aims to familiarize students with various aspects of India, encompassing its geographical features, historical significance, and rich cultural diversity. ', 'pdf_files/chapter social geo 6.pdf', '', '1006'),
(306, 'Sanskrit', 'Introduction', 'विषये संस्कृत कक्षा 7 (संस्कृत कक्षा 7) पाठ्यक्रमः 7 कक्षायाः छात्राणां कृते विनिर्मितः अस्ति ये संस्कृतभाषायाः ज्ञानं शिक्षितुं उन्नतिं च कर्तुम् इच्छन्ति। अस्मिन् पाठ्यक्रमे व्याकरणं, शब्दावली, साहित्यं च इत्यादयः विविधाः विषयाः सन्ति । आकर्षकं, अन्तरक्रियाशीलं च सामग्रीं कृत्वा छात्राः संस्कृतस्य अवगमनं वर्धयितुं, भाषायाः पठने, लेखने, वक्तुं च स्वकौशलं विकसितुं शक्नुवन्ति। पाठ्यक्रमे एकः व्यापकः शिक्षण-अनुभवः प्रदाति यः संस्कृते स्वस्य आधारं सुदृढं कर्तुम् इच्छन्तीनां छात्राणां कृते परिपूर्णः भवति। अस्मिन् पाठ्यक्रमे सम्मिलितं भवतु, आविष्कारस्य, शिक्षणस्य च यात्रां प्रारभत!', '705', 'Chapter 1-सुभाषितानि', 'मूढै: पाषाणखण्डेषु रत्नसंज्ञा विधीयते। परंतु मूर्ख पत्थर के टुकड़ों को ही रत्न मान लेते हैं। सत्येन धार्यते पृथ्वी सत्येन तपते रवि:। सत्य से ही पृथ्वी धारण की जाती है, सत्य से सूरज तपता है।', 'pdf_files/class_7_sanskrit_ch-1.pdf', '', '1007'),
(307, '', '', '', '705', 'Chapter 2-दुर्बुद्धिः विनश्यति', 'अस्ति मगधदेशे फुल्लोत्पलनाम सरः। तत्र संकटविकटनामको हंसौ निवसतः। कम्बुग्रीवनामा तयोः मित्रम् एकः कूर्मः अपि तत्रैव प्रतिवसति स्म। अथ एकदा धीवराः तत्र आगच्छन् अकथयन् च”वयं श्वः मत्स्यकूर्मादीन् मारयिष्यामः।” एतत् श्रुत्वा कूर्मः अवदत्-“मित्रे ! किं युवाभ्यां धीवराणां वार्ता श्रुता ? अधुना किम् अहं करोमि ?” हंसौ अवदताम्-“प्रातः यद् उचितं तत्कर्तव्यम्।” कूर्मः अवदत्-“मैवम्। तद् यथाऽहम् अन्य हृदं गच्छामि तथा कुरुतम्।” हंसी अवदताम्-“आवां किं करवाव ?” कुर्मः अवदत्”अहं भवद्भ्यां सह आकाशमार्गेण अन्यत्र गन्तुम् इच्छामि।”', 'pdf_files/class_7_sanskrit_ch-2.pdf', '', '1007'),
(308, '', '', '', '705', 'Chapter 3- स्वावलम्बनम्', 'स्वावलम्बनम् एक ऐसी प्रक्रिया है जिसमें व्यक्ति अपने आप को आर्थिक रूप से स्थायी रूप से समृद्ध बनाने के लिए अपनी क्षमताओं और संसाधनों का उपयोग करता है। इसका मकसद व्यक्ति को स्वतंत्रता, स्वाधीनता और स्वाभिमान की प्राप्ति देना है। ', 'pdf_files/class_7_sanskrit_ch-3.pdf', '', '1007'),
(309, '', '', '', '705', 'Chapter 4- पण्डिता रमाबाई', 'पण्डिता रमाबाई 19वीं सदी की महिला थीं जिन्होंने महिला शिक्षा और महिला सशक्तिकरण को बढ़ावा दिया। उन्होंने ब्राह्मण धर्मसंस्था से अपनी शिक्षा प्राप्त की थी, लेकिन उन्होंने विवाह के बाद ईसाई धर्म को अपनाया। उन्होंने उच्चतर शिक्षा प्राप्त की और विविध भाषाओं में विशेषज्ञता प्राप्त की।', 'pdf_files/class_7_sanskrit_ch-4.pdf', '', '1007'),
(310, '', '', '', '705', 'Chapter 5- सदाचारः', 'श्रेष्ठ जन॑ गुरु मातरं पितरं च अपि सदा मनसा कर्मणा तथा वाचा सततं सेवेत । सरलार्थ - सज्जन , गुरुजन और माता-पिता की भी हमेा मन से , कर्म से उसी प्रकार वाणी से निरंतर सेवा करनी चाहिए । (छ) मित्रेण कलहं कृत्वा न कदापि सुखी जनः। इति ज्ञात्वा प्रयासेन तदेव परिवर्जयेत्‌ ॥॥', 'pdf_files/class_7_sanskrit_ch-5.pdf', '', '1007'),
(311, '', '', '', '705', 'Chapter 6- सड.कल्पः सिद्धिदायकः', 'प्रस्तुत पाठ में दृढ़ निश्चय (संकल्प) के महत्त्व को बतलाते हुए प्रेरणा दी गई है कि मनुष्य दृढ़ इच्छाशक्ति के द्वारा कठिन से भी कठिन कार्य में सफलता प्राप्त कर लेता है। इस पाठ में नाट्यांश के रूप में वर्णित कथा के द्वारा बताया गया है कि पार्वती शिव को पति के रूप में प्राप्त करने का संकल्प लेकर कठोर तपस्या करती हैं। उनकी कठोर तपस्या से हिंसक पशु भी उनके मित्र बन जाते हैं।प्रस्तुत पाठ में दृढ़ निश्चय (संकल्प) के महत्त्व को बतलाते हुए प्रेरणा दी गई है कि मनुष्य दृढ़ इच्छाशक्ति के द्वारा कठिन से भी कठिन कार्य में सफलता प्राप्त कर लेता है। इस पाठ में नाट्यांश के रूप में वर्णित कथा के द्वारा बताया गया है कि पार्वती शिव को पति के रूप में प्राप्त करने का संकल्प लेकर कठोर तपस्या करती हैं। उनकी कठोर तपस्या से हिंसक पशु भी उनके मित्र बन जाते हैं।', 'pdf_files/class_7_sanskrit_ch-6.pdf', '', '1007'),
(312, '', '', '', '705', 'Chapter 7- त्रिवर्णः ध्वजः', 'पाठ-परिचय - प्रस्तुत पाठ में एक विद्यालय में आयोजित स्वतन्त्रता दिवस समारोह के प्रसंग में छात्र परस्पर में वार्तालाप करते हैं तथा हमारे देश के राष्ट्रीय प्रतीक तिरंगे झंडे के महत्त्व का सुन्दर वर्णन करते हैं। इसमें तिरंगे झंडे के तीन रंगों-केसरिया, सफेद तथा हरे रंग का महत्त्व बतलाते हुए कहा गया है कि तिरंगे झंडे में सबसे ऊपर केसरिया रंग है जो शौर्य एवं वीरता का सूचक है।  बीच में सफेद रंग सत्य तथा शान्ति का सूचक है एवं नीचे हरा रंग समृद्धि का सूचक है। इन तीनों रंगों का अन्य महत्त्व भी पाठ में बतलाया गया है। झंडे के बीच में नीले रंग का अशोक चक्र है जो न्याय तथा प्रगति का प्रवर्तक है। वस्तुतः यह झंडा हमारे राष्ट्र गौरव का प्रतीक है। इसलिए स्वतन्त्रता दिवस और गणतन्त्र दिवस के अवसर पर ध्वजारोहण किया जाता है।', 'pdf_files/class_7_sanskrit_ch-7.pdf', '', '1007'),
(313, '', '', '', '705', 'Chapter 8- अहमपि विद्यालयं गमिष्यामि', 'पाठ-परिचय - \'सभी पढ़ें और आगे बढ़ें\' इस भावना को स्वीकार करके तथा इसी भाव को प्रसारित करने के लिए प्रस्तुत पाठ की रचना की गई है। यह संवादात्मक पाठ है। जिसमें एक निर्धन परिवार की आठ वर्ष की बालिका को उसके शिक्षा के मौलिक अधिकार से वञ्चित करके धन कमाने के लिए दूसरे के घरों में काम करने के लिए भेज दिया जाता है, किन्तु गृहस्वामिनी मालिनी द्वारा उस बालिका की माता को समझाया जाता है और बताया जाता है कि आज सरकार द्वारा सभी बालक-बालिकाओं के लिए सरकारी विद्यालयों में निःशुल्क शिक्षा, पुस्तकें, वस्त्र व भोजन आदि की सुविधा दी जा रही है। इससे प्रेरित होकर वह निर्धन स्त्री अपनी पुत्री को विद्यालय में पढ़ने हेतु भेजने को कहती है, जिसे सुनकर वह बालिका प्रसन्नता व्यक्त करती हुई। कहती है कि \"मैं विद्यालय जाऊँगी। मैं भी पढूंगी।\"', 'pdf_files/class_7_sanskrit_ch-8.pdf', '', '1007'),
(314, '', '', '', '705', 'Chapter 9- विश्वबंधुत्वम्', 'यह बड़ी आवश्यकता है कि एक देश दूसरे देश के साथ शुद्ध हृदय से बन्धुता का व्यवहार करें । संसार के मनुष्यो में यह भावना आवश्यक हैं । इससे विकसित - अविकसित देशों के बीच में स्वस्थ होड़ होगी । सभी देश ज्ञान - विज्ञान के क्षेत्र में मैत्री भावना और सहयोग के द्वारा समृद्धि को प्राप्त करने में समर्थ हो जाएँगे ।', 'pdf_files/class_7_sanskrit_ch-9.pdf', '', '1007'),
(315, '', '', '', '705', 'Chapter 10- समवायो हि दुर्जयः', 'पुराने समय में एक वृक्ष पर एक चिड़िया रहती थी। समय पर उसकी सन्तान हुई। एक बार किसी मतवाले हाथी ने उस वृक्ष के नीचे आकर उसकी शाखा को सूंड से तोड़ दिया। चिड़िया का घोंसला भूमि पर गिर गया। उससे अंडे टूट गए। अब वह चिड़िया रोने लगी। उसका विलाप सुनकर काष्ठकूट नाम के पक्षी ने दुःखपूर्वक उससे पूछा-“भली चिड़िया, क्यों रो रही हो ?”', 'pdf_files/class_7_sanskrit_ch-10.pdf', '', '1007'),
(316, '', '', '', '705', 'Chapter 11- विद्याधनम्', ' प्रस्तुत पाठ में श्लोकों के द्वारा विद्या के महत्त्व को बताया गया है। विद्या मनुष्य का सर्वश्रेष्ठ धन है। विद्यावान् व्यक्ति का सर्वत्र सम्मान होता है, विद्या मनुष्य का सबसे बड़ा गुण है। विद्या कल्पतरु के समान मनुष्य के सभी कार्य पूर्ण करती है।', 'pdf_files/class_7_sanskrit_ch-11.pdf', '', '1007'),
(317, '', '', '', '705', 'Chapter 12- अमृतं संस्कृतम्', 'प्रतुत पाठ मसंकृत-भाषा के महव का वणन है। यह भाषा संसार की भाषाओंमप्राचीनतम और अिधकतर भाषाओं की जननी है। यह पिरमािजत और वैािनक भाषा है। इसका सािहय संकृित का ान प्रदान करता है। अतः संकृित, आचरण और श्रेठ ान प्रात करनेके िलए संकृत अवय पढ़नी चािहए।पाठ से ‘इकारात त्रीिलंग’ शदों का ान प्रात होगा।', 'pdf_files/class_7_sanskrit_ch-12.pdf', '', '1007'),
(318, '', '', '', '705', 'Chapter 13- लालनगीतम्', 'लालनगीतम् एक बच्चे को सुलाने के लिए गाए जाने वाला संगीतिक कविता होता है। इसे माता-पिता या दादी-नानी आदि बच्चे के करीबी लोग गाते हैं ताकि बच्चा आराम से सो सके और उनकी इमानदारी और उनके सपनों के बारे में सोच सके।', 'pdf_files/class_7_sanskrit_ch-13.pdf', '', '1007'),
(319, 'Hindi', 'Introduction', 'सीबीएसई कक्षा 7 की हिंदी पाठ्यपुस्तक को \'वसंत\' कहा जाता है। यह पुस्तक उन छात्रों को हिंदी सिखाने के लिए डिज़ाइन की गई है जो पहले से ही भाषा की मूल बातें से परिचित हैं।', '702', 'अध्याय 1- हम पंछी उन्मुक्त गगन', 'हम पंछी उन्मुक्त गगन केसम्पूर्ण कविता का आशय यह है कि पक्षी को गुलामी में मिलने वाली सुख -सुविधाओं और देखभाल से कही अच्छी कठिन आजादी लग रही है। वह आजाद हो कर बहता पानी पीना चाहता है , कड़वा नीम का फल खाना चाहता है , क्षितिज तक अपने साथियों संग प्रतिस्पर्धा करना चाहता है।', 'pdf_files/7th class hindi chapter 1.pdf', '', '1007'),
(320, '', '', '', '702', 'अध्याय 2- हिमालय की बेटियां', 'बड़ा सौभाग्यशाली है, जिसे पर्वतराज हिमालय की इन बेटियों का हाथ थामने का श्रेय मिला। का एक और धागा वह इन नदियों के साथ जोड़ रहा है। वह इन्हें बहन भी बना लेता है, क्योंकि थो-लिड़ (तिब्बत) में परेशानी के क्षणों में जब वह सतलज के किनारे जाकर बैठा तो शीघ्र ही उसका मन तरोताजा हो गया।', 'pdf_files/7th class hindi chapter 2.pdf', '', '1007'),
(321, '', '', '', '702', 'अध्याय 3-  कठपुतली', 'कठपुतली विश्व के प्राचीनतम रंगमंच पर खेला जाने वाले मनोरंजक कार्यक्रमो में से एक है। कठपुतलियों को विभिन्न प्रकार की गुड्डे गुड़ियों, जोकर आदि पात्रों के रूप में बनाया जाता है। इसका नाम कठपुतली इस कारण पड़ा क्योंकि पूर्व में भी लकड़ी अर्थात काष्ठ से बनाया जाता था। इस प्रकार काष्ठ से बनी पुतली का नाम कठपुतली पड़ा।', 'pdf_files/7th class hindi chapter 3.pdf', '', '1007'),
(322, '', '', '', '702', 'अध्याय 4-  मिठाईवाला', 'मिठाईवाला धनी होने के बावजूद भी सिर्फ बच्चों से मिलने वाले प्यार और आत्मिक सुख के लिए गलियों में मीठी गोलियाँ, बाँसुरी और खिलौने बेचकर उनकी तोतली बोली का आनंद लेता है। लेखक कहते हैं कि खिलौनेवाला – “बच्चों को बहलानेवाला, खिलौनेवाला !” की मीठी आवाज़ के साथ गलियों में घूमता था।', 'pdf_files/7th class hindi chapter 4.pdf', '', '1007'),
(323, '', '', '', '702', 'अध्याय 5-  पापा खो गए', 'बच्ची बहुत छोटी थी और उसे अपने घर का पता व अपने पिता का नाम तक भी नहीं पता था। इस नाटक में सभी पात्र मिलकर केवल बच्ची के पिता को ढुंढने के उपाय ढूँढ रहे है , इसी वजह से इस एकांकी का शीर्षक \'पापा खो गये\' रखा गया होगा। इस नाटक में बच्ची अपने पिता से बिछड़ कर खो गयी है।', 'pdf_files/7th class hindi chapter 5.pdf', '', '1007'),
(324, '', '', '', '702', 'अध्याय 6-  शाम-एक ककसान', 'कवि ने उपरोक्त पंक्तियों द्वारा शाम होने के समय दिखाई देने वाला प्राकृतिक दृश्य का वर्णन किया है। कवि के अनुसार, शाम के समय पहाड़ किसी बैठे हुए किसान की तरह दिख रहा है और आसमान उसके सिर पर रखी किसी पगड़ी की तरह दिख रहा है। पश्चिम दिशा में मौजूद सूरज चिलम पर रखी आग की तरह लग रहा है।', 'pdf_files/7th class hindi chapter 6.pdf', '', '1007'),
(325, '', '', '', '702', 'अध्याय 7-  अपूर्वअनुभर', '\'अपूववअनुभव\' शीषवक पाठ एक सींस्मरण है। इस सींस्मरण तेत्सुको कु ररयानागी नेएक लड़की तोत्तोचान के साहस और आत्मीयता का रोचक वणवन नकया है।', 'pdf_files/7th class hindi chapter 7.pdf', '', '1007'),
(326, '', '', '', '702', 'अध्याय 8-  रहीम के दोह', '“रहिमन धागा प्रेम का, मत तोरो चटकाय, टूटे पे फिर ना जुरे, जुरे गाँठ परी जाय||” इसी तरह के Rahim Ke Dohe इस ब्लॉग में आपको पढ़ने के लिए मिलेगें। आपको बता दें कि अब्दुल रहीम खानखाना का जन्म 17 दिसंबर 1556 ईस्वी में लाहौर में हुआ था। इनके पिता का नाम बैरम खां और माता का नाम जमाल खान था और माता का नाम सईदा बेगम था।', 'pdf_files/7th class hindi chapter 8.pdf', '', '1007'),
(327, '', '', '', '702', 'अध्याय 9- एक तिनका', ' उपर्युक्त काव्यांश के माध्यम से कवि ने यह संदेश दिया है कि अहंकार नहीं करना चाहिए । क्योंकि एक छोटा-सा तिनका भी अगर आँख में पड़ जाए तो मनुष्य को बेचैन कर देता है।', 'pdf_files/7th class hindi chapter 9.pdf', '', '1007'),
(328, '', '', '', '702', 'अध्याय 10-  खानपान की बदलती तसवीर', 'हो यह भी रहा है कि खानपान की मिश्रित संस्कृति में हम कई बार चीज़ों का असली और अलग स्वाद नहीं ले पा रहे। अकसर प्रीतिभोजों और पार्टियों में एक साथ ढेरों चीजें रख दी जाती हैं और उनका स्वाद गड्डमड्ड होता रहता है। खानपान की मिश्रित या विविध संस्कृति हमें कुछ चीजें चुनने का अवसर देती है, हम उसका लाभ प्रायः नहीं उठा रहे हैं।', 'pdf_files/7th cclass hindi chapter 10.pdf', '', '1007'),
(329, '', '', '', '702', 'अध्याय 11-   नीलकं ठ', 'नीलकंठ 26-27 सेंटीमीटर लम्बा एक गठीला पक्षी है और इसी के प्रवासी यूरोपीय रोलर पक्षी से अपनी बनावट में यह समान दिखाई देता है। यूरोपियन रोलर का अग्रणी भाग नीला होता है, उसके विपरीत भारतीय रोलर (नीलकंठ) भूरा होता है। इसके सिर का ऊपरी हिस्सा (ताज) और पिछला हिसा (वेंट) नीला होता हैं।', 'pdf_files/7th class hindi chapter 11.pdf', '', '1007'),
(330, '', '', '', '702', 'अध्याय 12-   भोर और बरखा', 'इस पाठ में कवियत्री मीरा बाई के दो पद दिये गए हैं। मीरा बाई श्रीकृष्ण की महान भक्त और एक अद्वितीय कवियत्री के रूप में जानी जाती हैं। इनकी प्रमुख रचनाएं नरसी का मायरा , राग सोरठा के पद , राग गोविंद आदि हैं। मीरा के पद एक ग्रन्थ में भी संकलित हैं।', 'pdf_files/7th class hindi chapter 12.pdf', '', '1007'),
(331, '', '', '', '702', 'अध्याय 13-  वीर कुँवर सिंह', 'वीर कुंवर सिंह का जन्म 13 नवम्बर 1777 को बिहार के भोजपुर जिले के जगदीशपुर गांव के एक क्षत्रिय जमीनदार परिवार में हुआ था। इनके पिता बाबू साहबजादा सिंह एक साधारण किसान थे। वे अंग्रेजी सरकार के प्रति विश्वासपात्र बने जिसके कारण उन्हें भोजपुर जिले की जमींदारी मिली थी। उनके माताजी का नाम पंचरत्न कुंवर था.', 'pdf_files/7th class hindi chapter 13.pdf', '', '1007'),
(332, '', '', '', '702', 'अध्याय 14-   संघर्षके कारण मैं  तुनुकममज़ाज हो गया धनराज', 'संघर्ष धनराज के तुनुकमिज़ाज होने का कारण है क्योंकि उन्हें अपने संघर्ष के परिणामों के लिए संभावित नतीजों से निराशा हो गई है। वे अपने अपेक्षित लक्ष्यों को प्राप्त नहीं कर पा रहे हैं जिसके कारण उनकी मनोदशा प्रभावित हो गई है।', 'pdf_files/7th class hindi chapter 14.pdf', '', '1007'),
(333, '', '', '', '702', 'अध्याय 15-  आश्रम का अनुमाननत व्यय', 'महात्मा गाँधी एक ऐसा नाम है , जिसे सुनते ही सत्य और अहिंसा की याद आ जाती है। महात्मा गाँधी का एक ऐसा व्यक्तित्व था जिन्होंने किसी दूसरे को सलाह देने से पहले उसका प्रयोग स्वंय पर किया। जिन्होंने बड़ी से बड़ी मुसीबत में भी अहिंसा का मार्ग नहीं छोड़ा। महात्मा गाँधी एक महान व्यक्तित्व के राजनैतिक नेता थे। इन्होंने भारत की स्वतंत्रता में महत्वपूर्ण भूमिका का निर्वहन किया था। गाँधी जी का मानना था कि हमें सादा जीवन जीना चाहिए और अपने विचारों को सदा उच्च रखना चाहिए, और इसे वे पूरी तरह अपने जीवन में लागू भी करते थे। उनके सम्पूर्णं जीवन में उनके इसी विचार की छवि प्रतिबिम्बित होती है। यहीं कारण है कि उन्हें 1944 में नेताजी सुभाष चन्द्र ने राष्ट्रपिता कहकर सम्बोधित किया था।', 'pdf_files/7th class hindi chapter 15.pdf', '', '1007'),
(334, 'English', 'Introduction', 'In this fast-growing world, knowledge of English is necessary to express oneself adequately. In all sectors, a specialist in English is required for smooth functioning. Studying a language like English develops the reasoning capacity and thought process of an individual. Designed for this purpose, the Class 7 English Honeycomb contains stories and poems that promote in-depth thinking. The Class 7 English Syllabus contains creative literature by well-known authors who share their views on human emotions and life.', '701', 'CHAPTER-1  Three Questions', 'Throughout his kingdom, he sent messengers and promised a reward of a heavy amount to the person who will satisfy the king with his answers. Many scholars came and pointed out their suggestions and views, but unfortunately, none of the answers could satisfy the king.', 'pdf_files/ENGLISH_7TH_CLASS_PART_2_chapter-1.pdf', 'Class 7', '1007'),
(335, '', '', '', '701', 'CHAPTER-2  A Gift of Chappals', 'The story is about the mischievous and simplicity of children’s behavior. They wish to explore every aspect but act according to their own logic.They gave chappals to the beggar and then to the music teacher without hesitation. Their sensitive heart melts easily.', 'pdf_files/ENGLISH_7TH_CLASS_PART_2_chapter-2.pdf', '', '1007'),
(336, '', '', '', '701', 'CHAPTER-3   Gopal and the Hilsa Fish', 'The lesson is a comic visualization of a story of a king who challenged his witty courtier Gopal to bring Hilsa fish to the court. He successfully completed the challenge in the funniest way possible.', 'pdf_files/ENGLISH_7TH_CLASS_PART_2_chapter-3.pdf', '', '1007'),
(337, '', '', '', '701', 'CHAPTER-4  The Ashes That Made Trees Bloom', 'The lesson is an adapted version of a Japanese story. It depicts that the bond between humans and animals can’t be broken even after death. However, there are a few people whose selfish interests blot their relationship.  The old man and his dog shared the warmth, integrity, association of lifetime rather beyond life. The spirit of the dog gave solace and support to his loving and caring master. The king rewarded the old gentleman with laurels and presents.', 'pdf_files/ENGLISH_7TH_CLASS_PART_2_chapter-4.pdf', '', '1007'),
(338, '', '', '', '701', 'CHAPTER-5   Quality', 'The lesson \'Quality\' written by John Galsworthy is about the sad story of the Gessler brothers who invested their lives in the art of bootmaking. The Gessler brother did their work with high quality and dedication. They were German immigrants who set up their business in the fashionable bystreet of London. The author had known him since his childhood. He was a loyal customer of Gessler.  The name Gessler Brothers was all that was written on Gessler\'s signboard. There were only a few pairs of boots on display as he did not make any ready-to-wear boots. He designed what the consumers wanted, and they (boots) never failed to fit. Gessler\'s boots were of exceptional quality. Furthermore, the Gessler brothers were confident in their skills and did not advertise their product.', 'pdf_files/ENGLISH_7TH_CLASS_PART_2_chapter-5.pdf', '', '1007'),
(339, '', '', '', '701', 'CHAPTER-6  Expert Detectives', 'Nishad thinks that the man looks impoverished because he is starving and kindly offers him his chocolates. He believes the scars are burn scars and that he is no criminal but a generous and kind man. Nishad declares that he is determined to become a friend of the lonely Mr Nath.', 'pdf_files/ENGLISH_7TH_CLASS_PART_2_c-6.pdf', '', '1007'),
(340, '', '', '', '701', ' CHAPTER-7   The Invention of Vita-Wonk', 'An inventor whose name was Willy Wonka, invented Wonka-Vite, which made people younger. However, it turned out to be a failure because it made Oompa-Loompa, who was volunteering for the testing of the product, so young that his age went into minus, meaning that he had to wait to be reborn. Hence, it was concluded that the product was too strong. Willy Wonka had to invent something else. After racking his brain, he came up with a new invention.', 'pdf_files/ENGLISH_7TH_CLASS_PART_2_c-7.pdf', '', '1007'),
(341, 'Mathematics', 'Introduction', 'NCERT solutions for class 7 math comprise solutions and analysis of all NCERT textbook sums based on triangles, area, and perimeter of different shapes, data handling, integers, etc. These class 7 math NCERT solutions are prepared by math geniuses to cater to students of all intelligence levels. Thus helping students develop auxiliary skills and mathematical acumen. NCERT solutions for class 7 math are extremely helpful for students preparing for home as well as competitive exams. These solutions provide an opportunity for students to develop a robust understanding of mathematics in grade 7. NCERT solutions for class 7 math can also be referred to by students belonging to a different board who want to have ironclad mathematical concepts.', '706', 'CHAPTER 1 - INTEGERS', 'Today we are going to introduce ourselves to a unique idea in maths. It is called an ‘Integer’. What is an integer? Let’s suppose a farmer has 17 sheep and all but 9 of them die. So how many does he have left now? Yes, 9! This is actually the idea that we shall discuss here. Let’s understand what is an integer. Let us first understand the basics of integer here.', 'pdf_files/CHAPTER_1_F63L5IU.pdf', '', '1007'),
(342, '', '', '', '706', 'CHAPTER 2 - Fractions and Decimals', 'Can you guess a pastry is what fraction of a cake? And that Paisa comprises a decimal part of a Rupee? Well, you will come across a plenty of daily examples where fractions and decimals are used. In this section, let’s study about their properties and operations, like their multiplication and division.', 'pdf_files/CHAPTER_2_04YMfiJ.pdf', '', '1007'),
(343, '', '', '', '706', 'CHAPTER 3 - Data Handing', 'Nowadays, managing and representing data systematically has become very important especially when the data provided is large and complex, This is when Data Handling comes into the picture. The definition of Data handling is in the title itself, that is, Handling the data in such a way that it becomes easier for people to understand and comprehend the given information. Hence, The process of collecting, Recording, and representing data in some form of graph or chart to make it easy for people to understand is called Data handling.  Statistics is another term for data handling, and it is useful not only in the field of Math and Science but also in the fields where the representation of data is required. Let’s learn about some forms of Data handling, and how they work.', 'pdf_files/CHAPTER_3_CrkckET.pdf', '', '1007'),
(344, '', '', '', '706', 'CHAPTER 4 - Simple Equations', 'CH An equation is a basic building block of a mathematical problem. Problem statements can be turned into simple equations, which help us to solve them in an easier and a quick manner. If 3 apples and 4 oranges cost 100 rupees, can you make an equation out of it? Well, let’s study more about how to make the mathematical equations.', 'pdf_files/CHAPTER_4_kHxsvNw.pdf', '', '1007'),
(345, '', '', '', '706', 'CHAPTER 5 - Lines and Angles', 'Lines and Angles are the basic terms used in the Geometry. They provide a base for understanding all the concepts of geometry. We define a line as a 1-D figure which can be extended to infinity in opposite directions, whereas an angle is defined as the opening created by joining two or more lines. An angle is measured in degrees or in radians depending on the concept of the problem.  All the geometrical figures have lines and angles and having an understanding of them helps us to better understand the world of Geometry. In this article, we will learn about lines, angles, their types, properties, and others in detail.,', 'pdf_files/CHAPTER_5_dEfas1v.pdf', '', '1007'),
(346, '', '', '', '706', 'CHAPTER 6 - The Triangle and its Properties', 'Triangles!!! The word comes from an old Latin word “triangulum” which means three-cornered. Triangles are basic shapes that we come across in our day to day life. You are surrounded by them. The slice of pizza, the hill nearby, the roof of your house are all triangles if you look at their 2-dimensional pictures. What are they and where do we see them? Let us now study the basics of triangles.', 'pdf_files/CHAPTER_6_Y9TZncY.pdf', '', '1007'),
(347, '', '', '', '706', 'CHAPTER 7 - Congruence of Triangles', 'Congruence of triangles is the property of two triangles in which all three corresponding sides and corresponding angles are equal. Two triangles are said to be congruent if and only if they can be overlapped with each other completely.  In this article, we are going to learn about the different criteria for the Congruence of Triangles with the help of solved examples.', 'pdf_files/CHAPTER_7_SaswRmb.pdf', '', '1007'),
(348, '', '', '', '706', 'CHAPTER 8 - Comparing Quantities', 'This Chapter deals with Comparing Quantities Class 7 formulas. It explains the calculations of percentages, the comparison of numbers using percentage formulas, uses of percentages and also their interpretation. In addition, it also deals with their application in real-life situations such as knowing ‘how much’ or ‘how many’, for the comparison of fractions, for finding the percentage increase or decrease in a particular thing, etc. Simple Interest formula has also been dealt with in the chapter.  Moreover, this chapter also explains the calculation of the amount and rate of discount and also of commission. You shall also learn the calculation of profit or loss so comparing quantities class 7 formulas will be handy.', 'pdf_files/CHAPTER_8_NEp1lah.pdf', '', '1007'),
(349, '', '', '', '706', 'CHAPTER 9 - Rational Numbers', 'What is a rational number?  The number of pages in a book, the fingers on your hand or the number of students in your classroom. These numbers are rational numbers. Let us study in detail about these numbers. Let’s find out more.', 'pdf_files/CHAPTER_9_KEdNXA1.pdf', '', '1007'),
(350, '', '', '', '706', 'CHAPTER 10 - Practical Geometry', 'Take in the beauty of your surroundings. Numerous objects of all forms and sizes can be found, and we even design several pictures that include other figures. Practical Geometry entails learning about drawing tools such as a scale, protractor, and a pair of compasses, as well as how to draw lines, line segments, perpendicular lines, angles, and circles using these tools. With the use of drawing tools such as a scale, protractor, and a set of compasses, we will learn to create preliminary figures of geometry such as lines, circles, angles, and so on. Continue reading to know more.', 'pdf_files/CHAPTER_10_JZUlrCZ.pdf', '', '1007'),
(351, '', '', '', '706', 'CHAPTER 11 - Perimeter and Area', 'If you want to fence a plot, how would you calculate how much fencing is required? Or if your parents want to put a new carpet in your room, how much carpet you need to buy? Clueless about the concepts of Area and Perimeter? Let us study them in detail.', 'pdf_files/CHAPTER_11_oiFvAoq.pdf', '', '1007'),
(352, '', '', '', '706', 'CHAPTER 12 - Algebraic Expressions', 'It’s your pet’s birthday and you want to build a house for your pet. How’re you going to get the measurements? Well, its simple you use Algebra! But how do we use it? We do it using algebraic expressions. Let us study more on the introduction to algebraic expressions.', 'pdf_files/CHAPTER_12_ca3YVSI.pdf', '', '1007'),
(353, '', '', '', '706', 'CHAPTER 13 -  Exponents and Powers ', 'When we have to repeatedly multiply a number by itself, we raise it to a power. This is known as Exponent. The power in the exponent represents the number of times that we want to carry out the multiplication operation. Exponents have their own set of rules when it comes to carrying out Arithmetic Operations. In this chapter, we will learn about powers, exponents and their peripheral rules.', 'pdf_files/CHAPTER_13_BnP2De8.pdf', '', '1007'),
(354, '', '', '', '706', 'CHAPTER 14 - Symmetry', 'Have you ever thought about how an artist makes a masterpiece through his artistry? Everything made by an artist is in the perfect line of symmetry. From sculptures to portraits an artist does wonders with his hands. But did you know that every creation of an artist is a balance of maths? Yes, the maths of symmetry harmonizes shapes and patterns. Let’s see how.', 'pdf_files/CHAPTER_14_yjFnY3F.pdf', '', '1007'),
(355, '', '', '', '706', 'CHAPTER 15 - Visualising Solid Shapes', 'In visualising solid shapes class 7 notes, the student will classify figures that have seen in terms of what is known as the dimension. Consequently, in our day to day life, we see several objects like books, balls, cones, etc. around us with different shapes. Similarly, one thing common in most of these objects is that they all have some length, breadth, and height. Therefore, they all occupy space and have three dimensions and as a result, are called three-dimensional shapes. Further, oblique sketches give a clear idea of how the cube looks like when seen from the front. Thus, the student will learn to draw the oblique sketches for other objects like cuboid also. We can make use of isometric sheets to draw the images. Moreover, these sheets divide the paper into small equilateral triangles made up of dots or lines. Moreover, to draw sketches in which measurements also agree with those of the solid, the student can use these easily. In addition, measurements are of exact size in an isometric sketch but not so in the case of an oblique sketch. So, visualising solid shapes class 7 notes will come handy in learning the same.', 'pdf_files/CHAPTER_15_UWZpC9F.pdf', '', '1007'),
(356, 'Science', 'Introduction', 'Class 7 is a crucial year for every student. It is the time when you are able to build the concepts of science on your own with a consistent and analytical approach to the subject. The Class 7 Science Syllabus comprises a rudimentary knowledge of learning and understanding biology, chemistry, and physics. The accumulation of the various sub-topics allows the students to get a better idea of the subject, and that entails theory-based topics and experimentation-based application of multiple concepts.', '703', 'CHAPTER 1 - NUTRITION IN PLANTS ', 'Photosynthesis is a vital process in plants where they use chlorophyll to capture sunlight, combining it with carbon dioxide and water to produce carbohydrates and release oxygen. This process is essential for plant nutrition and provides the foundation of the food web, sustaining both plants and animals. Plants exhibit autotrophic nutrition, producing their own food through processes like photosynthesis. Examples include green plants and algae. In contrast, heterotrophic nutrition involves organisms, like animals, relying on external  sources for food. Herbivores feed on plants, while carnivores consume other animals. Insectivorous plants, like the pitcher plant, capture and digest insects as a unique nutritional strategy. Saprotrophs, exemplified by mushrooms, decompose dead organic matter, playing a crucial role in nutrient cycling in ecosystems. These processes highlight the diverse ways in which plants obtain nutrition and contribute to the interconnectedness of life on Earth.', 'pdf_files/class_7_science_removedc-1.pdf', '', '1007'),
(357, '', '', '', '703', 'CHAPTER 2 -  NUTRITION IN ANIMALS ', 'In the chapter on \"Nutrition in Animals,\" the focus is on understanding the digestive process in humans and certain animals. The human digestive system comprises the alimentary canal and digestive glands, involving the buccal cavity, oesophagus, stomach, small and large intestines, and anus. The salivary glands, liver, and pancreas secrete digestive juices. Digestion initiates in the mouth, where starch is broken down, and continues in the stomach for proteins and the small intestine for all components. The liver produces bile, aiding fat digestion, and the pancreas secretes pancreatic juice. The process involves ingestion, digestion, absorption, assimilation, and egestion. The alimentary canal\'s various parts contribute to the breakdown of complex substances into simpler ones, facilitating nutrient absorption. The undigested food travels to the large intestine, where water absorption occurs, resulting in the formation of faces. Ruminant animals, like cows, exhibit rumination, involving the regurgitation and re-chewing of food, aiding in cellulose digestion. The chapter concludes by exploring amoeba\'s feeding and digestion, highlighting its unique process of engulfing food using pseudopodia. The digestion of ingested food occurs within food vacuoles, with absorbed nutrients contributing to growth and maintenance. The  fundamental principles of digestion are similar across animals, emphasizing the importance of nutrient breakdown for energy release and cellular function.', 'pdf_files/class_7_science_removed_c-2.pdf', '', '1007'),
(358, '', '', '', '703', 'CHAPTER 3 - HEAT ', 'In this chapter, we delve into the fascinating realm of heat,  temperature, and the ways in which these elements influence our daily  lives. We discover that our sense of touch, while intuitive, isn\'t always a  precise indicator of temperature. The tool we employ for this task is the  thermometer, with clinical thermometers dedicated to measuring body  temperature and laboratory thermometers serving broader applications.  The narrative unfolds to reveal that heat naturally flows from warmer  objects to cooler ones, and it does so through three distinct mechanisms:  conduction (in solids), convection (in liquids and gases), and radiation  (where no medium is required). We explore the characteristics of  conductors, such as metals that facilitate heat transfer, and insulators,  like plastics and wood, which impede it.  A noteworthy exploration is the role of color in heat absorption and  reflection. Dark-colored objects absorb more heat, making them ideal for  winter wear, while light-colored clothes reflect heat, offering comfort  during the summer. Woolen garments, acting as insulators due to poor  heat conductivity and trapped air, become our allies in staying warm  during winter.  Intriguing experiments and activities punctuate the chapter, making  these scientific principles tangible and relatable. The chapter doesn\'t just  provide knowledge but invites us to actively engage with the concepts,  fostering a deeper understanding of the intricate dance of heat in our live.', 'pdf_files/class_7_science_removed_c-3.pdf', '', '1007'),
(359, '', '', '', '703', 'CHAPTER 4  - ACID BASES AND SALTS ', 'In the chapter on \"Acids, Bases, and Salts,\" various concepts related to  the properties and uses of acids and bases are explored. The taste of  substances such as curd, lemon juice, and vinegar is discussed, and it is  explained that they taste sour due to the presence of natural acids. Bases,  on the other hand, are described as substances with a bitter taste and  soapy feel.  The chapter introduces indicators, such as litmus and turmeric, which  change color in the presence of acidic or basic substances. The process  of neutralization is explained, highlighting that when acids and bases  react, they form salt and water with the evolution of heat. Examples of  everyday applications of neutralization, such as in indigestion relief and  ant bites, are discussed.  Natural indicators like litmus and turmeric are demonstrated for testing  the nature of substances. The significance of distinguishing between  acidic, basic, and neutral solutions in various contexts, including  agriculture and environmental impact, is emphasized. ', 'pdf_files/class_7_science_removed_c-4.pdf', '', '1007');
INSERT INTO `learning_stdclass` (`id`, `subjects`, `intro`, `description`, `subid`, `chaptername`, `chapterdis`, `pdf`, `classes`, `classid`) VALUES
(360, '', '', '', '703', 'CHAPTER 5 - PHYSICAL AND CHEMICAL CHANGES ', 'In this chapter, we explored the concepts of physical and  chemical changes in substances. Physical changes involve  alterations in the physical properties of materials, such as size or  shape, without forming new substances. On the other hand,  chemical changes result in the creation of new substances with  distinct chemical properties.  Several activities were conducted to illustrate these changes. For  instance, the melting of ice represented a physical change, while  the burning of magnesium showcased a chemical change. The  importance of distinguishing between physical and chemical  changes was emphasized, especially in practical applications  like preventing rusting in iron.  Additionally, crystallization was discussed as a method to obtain  pure substances from their solutions. Examples of chemical  changes, such as rusting of iron, were explored, along with  preventive measures like galvanization. ', 'pdf_files/class_7_science_removed_c-5.pdf', '', '1007'),
(361, '', '', '', '703', 'CHAPTER 6 - RESPIRATION IN ORGANISM ', 'Boojho, excited to meet his grandparents, reflects on the connection between running and rapid breathing. This curiosity leads to an exploration of respiration in organisms. The text explains the importance of respiration in obtaining energy from food, with a focus on aerobic and anaerobic processes. It details how oxygen from the air aids in the breakdown of glucose, highlighting cellular respiration in all organisms. The narrative delves into breathing as a crucial part of the respiration process, emphasizing the mechanism in humans. It touches upon aerobic respiration during exercise, the occurrence of anaerobic respiration in muscle cells, and the consequences  like muscle cramps. Various organisms, including insects, earthworms, and fish, have unique respiratory adaptations such as spiracles, skin respiration, and gills. The text expands on how plants also respire, absorbing oxygen through roots and exchanging gases through stomata. It notes the role of leaves in the breakdown of glucose. The concept of breathing rate is introduced, illustrating how it increases during physical activities. The chapter concludes by encouraging practical activities to observe and understand respiration processes in living organisms.', 'pdf_files/class_7_science_removed_c-6.pdf', '', '1007'),
(362, '', '', '', '703', 'CHAPTER 7  - TRANSPORTATION IN ANIMALS AND PLANTS', 'we are discussing the fascinating world of transportation in animals and plants. In animals, the circulatory  system plays a vital role, consisting of the heart and blood vessels. Blood, composed of plasma, red and white blood cells, and platelets, circulates through arteries and veins, carrying oxygen, nutrients, and removing waste. The heart beats continuously, maintaining circulation. We delved into the human excretory system, where kidneys  filter waste from the blood, leading to the formation of urine. The importance of sweat in eliminating salts and urea was highlighted. Additionally, various animals exhibit different excretory mechanisms based on their habitat.  Shifting focus to plants, we explored how water and minerals are transported through xylem vessels, and food through phloem. Transpiration, the release of water vapor from leaves, contributes to this process and aids in cooling the plant. The chapter offered a comprehensive understanding of how living organisms ensure the efficient transport of essential substances for survival. ', 'pdf_files/class_7_science_removed_c-7.pdf', '', '1007'),
(363, '', '', '', '703', 'CHAPTER 8  - REPRODUCTION IN PLANTS', ' Here we discusses plant reproduction, which involves two main modes: asexual and sexual. Asexual reproduction includes methods like vegetative propagation, where new plants grow from roots, stems, leaves, or buds. The focus is on the role of flowers in sexual reproduction, acting as the reproductive parts of plants. Different methods of asexual reproduction, such as stem-cutting and leaf-cutting, are explained with practical activities. The importance of vegetative propagation is highlighted for its efficiency and the ability to produce exact copies of the parent plant. Sexual reproduction involves the fusion of male and female gametes. Flowers play a crucial role in this process, with stamens as the male reproductive parts and pistils as the female reproductive parts. The text also covers the concepts of pollination (self and cross-pollination), fertilization, and the development of fruits and seeds. Seed dispersal methods, including wind, water, and animals, are explored. The text emphasizes the advantages of seed dispersal, such as preventing overcrowding and facilitating plant growth in new habitats.  Overall, the text provides a comprehensive overview of plant reproduction, covering both asexual and sexual aspects, and highlights the significance of various reproductive mechanisms in the life cycle of plants.', 'pdf_files/class_7_science_removed_c-8.pdf', '', '1007'),
(364, '', '', '', '703', 'CHAPTER 9  - MOTION AND TIME ', 'In our daily life routine, we usually see some objects at rest and others in motion like birds fly, fish swimming, planets moving around the sun, etc., are all in motion. When an object changes its position with time, we often perceive an object to be in motion, e.g. when the position of a car changes with time, we say that the car is moving or the car is in motion.', 'pdf_files/class_7_science_removed_c-9.pdf', '', '1007'),
(365, '', '', '', '703', 'CHAPTER 10 -  ELECRIC CURRENT AND ITS EFFECTS ', 'Electric current is the movement of electrons through a conductor wire. Electric current refers to the number of charges which move through the wire per second. Also, we may say that the electric current is the flow of electrons through a complete electric circuit of conductors. Current electricity is in use to power everything from our house lights, trains, industries etc. Therefore, electricity is one of the forms of energy. It is the flow of electrons whereas the current is the combination of flow of charge per unit time. This article will explain the current electricity basic concept and related facts.', 'pdf_files/class_7_science_removed_c-10.pdf', '', '1007'),
(366, '', '', '', '703', 'CHAPTER 11 -  LIGHT ', 'Are everything visible to us ? Are everything visible to every living things? Are all the living things can see in same pattern?To understand this we have to start with what is visible to us. humans can see is known as visible light. Not all animals can see all types of lights. Like dogs can see only shades of gray and some insects can see light from the ultraviolet part of the spectrum only. Scientists says visible light are the lights that we can see. Light is also known as electromagnetic radiation. Visible light is only one small portion of a family of waves called electromagnetic (EM) radiation.', 'pdf_files/class_7_science_removed_c-11.pdf', '', '1007'),
(367, '', '', '', '703', 'CHAPTER 12 - FOREST: OUR LIFELINE', 'India is one of the twelve mega bio-diversity countries of the world. With about 47,000 plant species India occupies tenth place in the world and fourth in Asia in plant diversity. There are about 15,000 flowering plants in India which account for 6 per cent in the world\'s total number of flowering plants. The country has many non-flowering plants such ass ferns, algae and fungi. India also has 89,000 species of animals as well as rich variety of fish in its fresh and marine waters.  Nature has been very kind to man. Ever since its appearance on the earth’s surface man has been dependant on nature for his subsistence. He needed edible plants and animals.', 'pdf_files/class_7_science_removed_c-12.pdf', '', '1007'),
(368, '', '', '', '703', 'CHAPTER 13 - WASTEWATER STORY', 'Wastewater Story teaches students in detail about wastewater. It makes the students aware of what happens to wastewater and how it gets produced. Wastewater story aims to make students aware of the importance of wastewater. Moreover, it diverts attention to something important yet underrated. You can easily learn a great deal about wastewater and its treatment through this chapter.Other than that, it explains all about sewage. Moreover, you will also be made familiar with the journey of water getting freshened up. After that, students will be able to easily know how the polluted water gets treated. Furthermore, wastewater story notes throw light on the wastewater treatment plant. Finally, it helps in inculcating good housekeeping habits amongst students through tips and tricks. Sanitation and hygiene topics are also discussed in this chapter briefly.', 'pdf_files/class_7_science_removed_c-13.pdf', '', '1007'),
(369, 'Social and Political Life-2', 'Introduction', 'Social and Political life is a very important part of Social Science in Class 7. It deals with some of the vital concepts of the functioning of our government that every citizen is required to know. Learning this subject should not just be thought of from an exam point of view but also for the future of the country that we live in. Social and Political life covers some of the key topics with regard to our political understanding of where our country stands. It talks about Equality in the government, the concept of state government, women empowerment, media and advertising, study about markets and trade, and the working of a market. The subject deals with many social topics like gender roles in our community and the importance of women in our society. These are some of the most important things that a young mind should be probed to think about at this age.Social and Political life is a very important part of Social Science in Class 7. It deals with some of the vital concepts of the functioning of our government that every citizen is required to know. Learning this subject should not just be thought of from an exam point of view but also for the future of the country that we live in. Social and Political life covers some of the key topics with regard to our political understanding of where our country stands. It talks about Equality in the government, the concept of state government, women empowerment, media and advertising, study about markets and trade, and the working of a market. The subject deals with many social topics like gender roles in our community and the importance of women in our society. These are some of the most important things that a young mind should be probed to think about at this age.', '704', 'CHAPTER-1 ON EQUALITY', 'Equality is certainly one of the key concepts of democratic theory, and one of the basic values which it is claimed a democratic society realises. The English Utilitarian  philosopher  Jeremy  Bentham  asserted  as  a  maxim  that  ‘Everyone  should count for one, and no- one for more than one’. This has been seen as one of the foundations for the theory and practice of democracy.But what is equality? How can it be justified? In what ways is it connected with  the  democratic  ideal?  The  classic  and  deeply-  felt  analysis  of  the  concept  of inequality by Rousseau is a central point of reference here. As the extracts in this section reveal, Rousseau distinguishes between natural inequality and the inequality  created  by  political  and  social  institutions.  Like  other  egalitarians,  he does not deny that people are different, and have varying characteristics and abilities.  Yet  a  democratic  society,  created,  as  he  puts  it,  by  the  ‘fundamental  compact’, achieves a situation of legitimate moral equality. All are equal as citi-zens in the newly- created democratic society. Of course individual citizens will differ in terms of their strength, intelligence or other capacities. This is irrelevant to their equal status as members of a democratic community. ', 'pdf_files/viisocialpolitical_chapter-1.pdf', '', '1007'),
(370, '', '', '', '704', 'CHAPTER- 2 ROLE OF THE GOVERNMENT IN HEALTH', 'We blame the government for everything. Be it the de-constructed roads, frequent power cuts, etc. So why is it that when it comes to health, we blame the doctors but not the government? Doesn’t the government play a role when it comes to health? Let us know more!', 'pdf_files/viisocialpolitical_chapter-2.pdf', '', '1007'),
(371, '', '', '', '704', 'CHAPTER- 3 HOW THE STATE GOVERNMENT WORKS', 'India being the largest democracy in the world, the absence of a structure and proper rules and regulations for the administrators would create a chaos. The government in India is sub-divided into central government and state government. In this chapter, we will learn about how the state government works.', 'pdf_files/social_political-chapter-3.pdf', '', '1007'),
(372, '', '', '', '704', 'CHAPTER-4 GROWING UP AS BOYS AND GIRLS', 'Children till their late teenage years have very impressionable minds. It is during these years they pick their social cues and behaviour from their surroundings. If from a very early age we teach them the equality between genders, these boys and girls will grow up to be model citizens. Let us take a look.', 'pdf_files/viisocialpolitical_chapter-4.pdf', '', '1007'),
(373, '', '', '', '704', 'CHAPTER-5 WOMEN CHANGE THE WORLD', 'Feminism is a controversial topic these days. Women are becoming aware of their rights and are fighting against inequality. Has it always been the same for them? Why are people discriminating on the basis of gender? Let’s find out more about How Women Change the World.', 'pdf_files/viisocialpolitical_chapter-5.pdf', '', '1007'),
(374, '', '', '', '704', 'CHAPTER-6 UNDERSTANDING MEDIA', 'Print media has two aspects i.e. newspapers and magazines. It may or may not be influenced by powerful people, political parties, organizations, etc. This may lead to a biased coverage of that particular political party, organization, or person.', 'pdf_files/viisocialpolitical_chapter-6.pdf', '', '1007'),
(375, '', '', '', '704', 'CHAPTER -7 MARKETS AROUND US', 'As soon as we wake up, we require different products to start our day- toothbrush, toothpaste, groceries for breakfast, etc. It’s simple to go out and buy from the markets. But have you ever thought about the complex process of them being produced and reaching you? Let us look at the types of markets.', 'pdf_files/viisocialpolitical_chapter-7.pdf', '', '1007'),
(376, '', '', '', '704', 'CHAPTER- 8 A SHIRT IN THE MARKET', 'Can you wear the same shirt for 10 years in a row? No! Right? But then why not? Above all do you know where this shirt come in the market? Where does it’s journey actually start from? Let us know about the shirt in the market.', 'pdf_files/viisocialpolitical_chapter-8.pdf', '', '1007'),
(377, 'Sanskrit', 'Introduction', 'एनसीईआरटी कक्षा 8 संस्कृत पुस्तकें पीडीएफ फॉर्म में प्रदान की जाती हैं ताकि छात्र इसे कभी भी, कहीं भी एक्सेस कर सकें। कक्षा 8 एनसीईआरटी संस्कृत पुस्तकें सर्वश्रेष्ठ प्रोफेसरों द्वारा बनाई गई हैं जो संस्कृत में विशेषज्ञ हैं और विषय में अच्छा ज्ञान रखते हैं।', '806', 'अध्याय 1 सुभाषितानि', '‘सुभाषित’ शब्द सु + भाषित दो शब्दों के मेल से बना है। सु का अर्थ है-सुन्दर, मधुर और भाषित का अर्थ है-वचन। इस प्रकार सुभाषित का अर्थ है-सुन्दर/मधुर वचन। इस पाठ में सूक्तिमञ्जरी, नीतिशतकम्, मनुस्मृतिः, शिशुपालवधम्, पञ्चतन्त्रम् से रोचक और उदात्त विचारों को उभारने वाले श्लोकों का संग्रह ', 'pdf_files/chapter1_iF2cjdE.pdf', '', '1008'),
(378, '', '', '', '806', 'अध्याय 2  बिलस्य वाणी न कदापि मे श्रुता', 'प्रस्तुत पाठ संस्कृत के प्रसिद्ध कथाग्रन्थ ‘पञ्चतन्त्रम्’ के तृतीय तन्त्र ‘काकोलूकीयम्’ से संकलित है। पञ्चतन्त्र के मूल लेखक विष्णुशर्मा हैं। इसमें पाँच खण्ड हैं जिन्हें ‘तन्त्र’ कहा गया है। इनमें गद्य-पद्य रूप में कथाएँ दी गई हैं जिनके पात्र मुख्यतः पशु-पक्षी हैं।', 'pdf_files/chapter2_O5JQuvp.pdf', '', '1008'),
(379, '', '', '', '806', 'अध्याय 3  डिजीभारतम्', 'प्रस्तुत पाठ “डिजिटलइण्डिया” के मूल भाव को लेकर लिखा गया निबन्धात्मक पाठ है। इसमें वैज्ञानिक प्रगति के उन आयामों को छुआ गया है, जिनमें हम एक “क्लिक” द्वारा बहुत कुछ कर सकते हैं। आज इन्टरनेट ने हमारे जीवन को कितना सरल बना दिया है। हम भौगोलिक दृष्टि से एक दूसरे के अत्यन्त निकट आ गए हैं। इसके द्वारा जीवन के प्रत्येक क्रियाकलाप सुविधाजनक हो गए हैं। ऐसे ही भावों को यहाँ सरल संस्कृत में व्यक्त किया गया है।', 'pdf_files/chapter3_pywlMf0.pdf', '', '1008'),
(380, '', '', '', '806', 'अध्याय 4  सदैव पुरतो निधेहि चरणम', 'श्रीधरभास्कर वर्णेकर ने अपने इस गीत में चुनौतियों को स्वीकार करते हुए आगे बढ़ने का आह्वान किया है। श्रीधर राष्ट्रवादी कवि हैं जिन्होंने इस गीत के द्वारा जागरण और कर्मठता का सन्देश दिया है।', 'pdf_files/chapter4_Z6o1V5N.pdf', '', '1008'),
(381, '', '', '', '806', 'अध्याय 5  कण्टकेनैव कण्टकम्', 'यह कथा पंचतन्त्र की शैली में लिखी गई है। यह लोककथा मध्यप्रदेश के डिण्डोरी जिले में परधानों के बीच प्रचलित है। इस कथा में बताया गया है कि संकट में पड़ने पर भी चतुराई और तत्काल उचित उपाय की सूझ से, उससे निकला (बचा) जा सकता है।', 'pdf_files/chapter5_MUkiIrO.pdf', '', '1008'),
(382, '', '', '', '806', 'अध्याय 6  गृहं शून्यं सुतां विना', 'यह पाठ कन्याओं की हत्या पर रोक और उनकी शिक्षा सुनिश्चित करने की प्रेरणा हेतु निर्मित है। समाज में लड़के और लड़कियों के बीच भेद-भाव की भावना आज भी समाज में यत्र-तत्र देखी जाती है। जिसे दूर किए जाने की आवश्यकता है। संवादात्मक शैली में इस बात को सरल संस्कृत में प्रस्तुत किया गया है।', 'pdf_files/chapter6_wFOTR4B.pdf', '', '1008'),
(383, '', '', '', '806', 'अध्याय 7  भारतजनताऽहम्', 'प्रस्तुत कविता आधुनिक कविकुलशिरोमणि डॉ० रमाकान्त शुक्ल द्वारा रचित काव्य ‘भारतजनताऽहम्’ से साभार उद्धृत है। इस कविता में कवि भारतीय जनता के सरोकारों, विविध कौशलों, विविध रुचियों आदि का उल्लेख करते हुए बताते हैं कि भारतीय जनता की क्या-क्या विशेषताएँ हैं।', 'pdf_files/chapter7_bMCKqHB.pdf', '', '1008'),
(384, '', '', '', '806', 'अध्याय 8  संसारसागरस्य नायकाः', 'यह पाठ अनुपम मिश्रा द्वारा लिखित ‘आज भी खरे हैं तालाब’ में संकलित ‘संसार सागर के नायक’ नामक अध्याय से लिया गया है। लेखक ने यहाँ पानी के लिए मानव निर्मित तालाब, बावड़ी जैसे निर्माणों को संसार सागर के रूप में चित्रित किया है। इस पाठ में, विलुप्त होते जा रहे पारम्परिक ज्ञान, कौशल एवं शिल्प के धनी गजधर के संबंध में चर्चा की गयी है।', 'pdf_files/chapter8_AdNfZCG.pdf', '', '1008'),
(385, '', '', '', '806', 'अध्याय 9  सप्तभगिन्यः', 'सप्तभगिनी-यह एक उपनाम है। उत्तर-पूर्व के सात राज्य विशेष को उक्त उपाधि दी गई है। इन राज्यों का प्राकृतिक सौन्दर्य अत्यन्त विलक्षण है। इनकी सांस्कृतिक और सामाजिक विशेषता को ध्यान में रखकर यह पाठ लिखा गया है।', 'pdf_files/chapter9_LbdK1jO.pdf', '', '1008'),
(386, '', '', '', '806', 'अध्याय 10  नीतिनवनीतम्', 'प्रस्तुत पाठ ‘मनुस्मृति’ के कतिपय श्लोकों का संकलन है जो सदाचार की दृष्टि से अत्यन्त महत्त्वपूर्ण है। यहाँ माता-पिता तथा गुरुजनों को आदर और सेवा से प्रसन्न करने वाले अभिवादनशील मनुष्य को मिलने वाले लाभ की चर्चा की गई है। इसके अतिरिक्त सुख-दुख में समान रहना, अन्तरात्मा को आनन्दित करने वाले कार्य करना तथा इसके विपरीत कार्यों को त्यागना, सम्यक् विचारोपरान्त तथा सत्यमार्ग का अनुसरण करते हुए कार्य करना आदि शिष्टाचारों का उल्लेख भी किया गया है।', 'pdf_files/chapter10_WgxXPFk.pdf', '', '1008'),
(387, '', '', '', '806', 'अध्याय 11  सावित्री बाई फुले', 'इस अध्याय के माध्यम से हम जानेंगे सावित्रीबाई फुले (Savitribai Phule) से जुड़े महत्वपूर्ण एवं रोचक तथ्य जैसे उनकी व्यक्तिगत जानकारी, शिक्षा तथा करियर, उपलब्धि तथा सम्मानित पुरस्कार और भी अन्य जानकारियाँ। इस विषय में दिए गए सावित्रीबाई फुले से जुड़े महत्वपूर्ण तथ्यों को एकत्रित किया गया है जिसे पढ़कर आपको प्रतियोगी परीक्षाओं की तैयारी करने में मदद मिलेगी।', 'pdf_files/chapter11_Vri7Crc.pdf', '', '1008'),
(388, '', '', '', '806', 'अध्याय 12  कः रक्षति कः रक्षितः', 'प्रस्तुत पाठ स्वच्छता तथा पर्यावरण सुधार को ध्यान में रखकर सरल संस्कृत में लिखा गया एक संवादात्मक पाठ है। हम अपने आस-पास के वातावरण को किस प्रकार स्वच्छ रखें तथा यह भी ध्यान रखें कि नदियों को प्रदूषित न करें, वृक्षों को न काटें, अपितु अधिकाधिक वृक्षारोपण करें और धरा को शस्यश्यामला बनाएँ। प्लास्टिक का प्रयोग कम करके पर्यावरण संरक्षण में योगदान करें। इन सभी बिन्दुओं पर इस पाठ में चर्चा की गई है। पाठ का प्रारंभ कुछ मित्रों की बातचीत से होता है, जो सायंकाल में दिन भर की गर्मी से व्याकुल होकर घर से बाहर निकले हैं', 'pdf_files/chapter12_FEufXRD.pdf', '', '1008'),
(389, '', '', '', '806', 'अध्याय 13  क्षितौ राजते भारतस्वर्णभूमिः', 'प्रस्तुत पाठ्यांश डॉ. कृष्णचन्द्र त्रिपाठी द्वारा रचित है, जिसमें भारत के गौरव का गुणगान है। इसमें देश की खाद्यान्न सम्पन्नता, कलानुराग, प्राविधिक प्रवीणता, वन एवं सामरिक शक्ति की महनीयता को दर्शाया गया है। प्राचीन परम्परा, संस्कृति, आधुनिक मिसाइल क्षमता एवं परमाणु शक्ति सम्पन्नता के गीत द्वारा कवि ने देश की सामर्थ्यशक्ति का वर्णन किया है। छात्र संस्कृत के इन श्लोकों का सस्वर गायन करें तथा देश के गौरव को महसूस करें, इसी उद्देश्य से इन्हें यहाँ संकलित किया गया है।', 'pdf_files/chapter13_11hhGAE.pdf', '', '1008'),
(390, '', '', '', '806', 'अध्याय 14  आर्यभटः', 'भारतवर्ष की अमूल्य निधि है- ज्ञान-विज्ञान की सुदीर्घ परम्परा। इस परम्परा को सम्पोषित करने वाले प्रबुद्ध मनीषियों में अग्रगण्य थे-आर्यभट। दशमलव पद्धति का प्रयोग सबसे पहले आर्यभट ने किया, जिसके कारण गणित को एक नई दिशा मिली। इन्हें एवं इनके प्रवर्तित सिद्धान्तों को तत्कालीन रूढ़िवादियों का विरोध झेलना पड़ा। वस्तुत: गणित को विज्ञान बनाने वाले तथा गणितीय गणना पद्धति के द्वारा आकाशीय पिण्डों की गति का प्रवर्तन करने वाले ये (आर्यभट) प्रथम आचार्य थे। आचार्य आर्यभट के इसी वैदुष्य का उद्घाटन प्रस्तुत पाठ में है।', 'pdf_files/chapter14.pdf', '', '1008'),
(391, 'Hindi', 'Introduction', 'सीबीएसई (केंद्रीय माध्यमिक शिक्षा बोर्ड) द्वारा कक्षा 8 का हिंदी पाठ्यक्रम हिंदी भाषा में भाषा और समझ की प्रक्रियाओं में शक्तिशाली पाठ पढ़ाने के लिए बनाया गया है। यह पाठ्यक्रम छात्रों को आलोचनात्मक सोच, पढ़ने और लिखने में महत्वपूर्ण कौशल हासिल करने में मदद करेगा।', '805', 'अध्याय 1 लाख की चूड़ियाँ', '\"लाख की चूड़ियााँ\" डिल्म तीन बहनोंकी जीवन के चारोंओर घूमती है, ज हर एक कीअलग-अलग पहचान और सपनोंसेभरी हुई है।  कहानी प्राथडमक रूप सेमडहलाओोंद्वारा सामाडजक चुनौडतयोंऔर उनकी सशखिकरण की महत्ता पर ध्यान कें डद्रत करती है। ब़िी बहन, डजनका डकरदार नुतन नेडनभाया है, एक मजबूत इच्छाशखि और स्वतोंत्र मडहला हैज अपनेपररवार का सम्मान करनेके डलए प्रडतबद्ध है। मध्यम बहन, हेलेन द्वारा डनभाया गया, सिल अडभनेत्री बननेके सपनेदेखती है। सबसि टी बहन, डजसका डकरदार डवजया चौधरी नेडनभाया है, एक डशक्षा और कररयर की इच्छा रखती है, आडथथक स्वतोंत्रता के डलए आग्रह करती है।डिल्म मेंउनकी मुखिलों, आकाोंक्षाओोंऔर पुरानी स च वालेसमाज मेंआनेवाली बाधाओों क दशाथया गया है। इसनेमडहलाओोंके सशखिकरण, जाडतवादी समाज मेंल गोंकी भूडमका, सामाडजक डनयमोंऔर मडहलाओोंके डलए डशक्षा और आत्मडनभथरता के महत्त्व क उजागर डकया है।', 'pdf_files/chapter1_Hs0v9qE.pdf', '', '1008'),
(392, '', '', '', '805', 'अध्याय 2 बस की यात्रा', '\"बस की यात्रा\" कहानी एक ऐसेसमूह के बारेमेंहैज गुजरात के स मनाथ सेडबहार के गया शहर तक बस की यात्रा पर डनकलता है, भारतीय सांस्कृ डतक डवरासत क जाननेके डलए। डवष्णुप्रभाकर द्वारा डलखी गई यह कहानी उनके अनुभवोंऔर इन्ंगुजरात के डवडभन्न थथानोंपर रुककर डमलेअनुभवोंका वणथन करती है, ज भारतीय सोंस्कृ डत और परोंपराओों का महत्त्व दशाथतेहैं। बस की यात्रा भारतीय सांस्कृ डतक डवडवधता की एक उदाहरण है। यात्री, डवडभन्न क्षेत्रोंऔर पृष्ठभूडमयोंका प्रडतडनडधत्व करतेहैं, और उनके बीच डवडभन्न चचाथओोंमेंभारतीय सोंस्कृ डत और परोंपराओोंके महत्वपूणथपहलुओों क साझा करतेहैं। यात्रा का मुख्य उद्देश्य भारतीय सांस्कृ डतक धर हर और डवरासत क समझना और मानना ह ता है, डजससेयात्री अपनेदेश के इडतहास, परों पराओोंऔर मूल्योंके प्रडत समपथण और श्रद्धा की भावना क बढ़ातेहैं।', 'pdf_files/chapter2_qqINKAw.pdf', '', '1008'),
(393, '', '', '', '805', 'अध्याय 3   दीवानों की हस्ती', '\"दीवानोंकी हस्ती\" का अथथहैउन व्यखियोंकी समृखद्ध है, जो सामान्यता से अलग है और समाज मेंडवशेषता और अनूापन लाता है। येव्यखित्व अक्सर अलगाव, स च की अद्भुतता, सामाजिक मानकों से अलग होकर कुछ नया करते हैं। \"दीवानों की हस्ती\" समाज मेंडवचारों, प्रदर्शनों और अद्भुतता को समझने और समझाने की जरूरत बताती है। यह समाज को प्रोत्साहित करता है और नए विचारों को जन्म देता है।', 'pdf_files/chapter3_zDZKZKW.pdf', '', '1008'),
(394, '', '', '', '805', 'अध्याय 4 भगवान के डाकिये', 'डहोंदी ने दया और मानवता का महत्व बताते हुए \"भगवान के डाडकये\" कहा है। यह पाि व्यखित्व के बारे में बताता है जो दूसरों की मदद करते हैं और दया और सहानुभूति के गुणों को जीवन में अपनाते हैं। ', 'pdf_files/chapter4_SHKEAQH.pdf', '', '1008'),
(395, '', '', '', '805', 'अध्याय 5 क्या निराश हुआ जाए', '\"क्या डनराश हुआ जाए\" डहोंदी कक्षा 8 के पाि ोंमेंसेएक है, ज हमेंनकारात्मकता के बारेमेंस चनेसेबचाता हैऔर हमेंसकारात्मकता और उम्मीद के महत्व क समझाता है। यहपाि हमेंबताता हैडक हमेंअपनेजीवन मेंआत्मडवश्वास और सोंघषथके माध्यम सेआगेबढ़ना चाडहए और हर मुखिलता क उम्मीद और सकारात्मक स च सेदेखना चाडहए। इसपाि सेहमेंयह डसखनेक डमलता हैडक जीवन मेंहर बार क ई भी परेशानी आ सकती है,लेडकन हमेंइससेहार नहीोंमाननी चाडहए और सकारात्मकता क बनाए रखना चाडहए। यहहमेंप्रेररत करता हैडक हमेंजीवन मेंहमेशा उम्मीद और सकारात्मकता बनाए रखनीचाडहए', 'pdf_files/chapter5_e28lZQy.pdf', '', '1008'),
(396, '', '', '', '805', 'अध्याय 6 यह सबसे कठिन समय नहीं', 'यह सबसे कठिन समय नहीं पाठ प्रवेश अर्थात् जितनी भी क्रियाएँ समान्यरूप से हो रही है, तब तक यह नहीं कहा जा सकता कि इस दुनिया में, जीवन में कठिन समय की शुरुआत हो गई है। चिड़िया अपना काम कर रही है उसका काम है घोसला बनाना और अण्डे देना, अपने बच्चों को सहेज कर रखना ।', 'pdf_files/chapter6_GEjhtqk.pdf', '', '1008'),
(397, '', '', '', '805', 'अध्याय 7 कबीर की साखियाँ', 'इन दोहों में कबीर मानवीय प्रवर्तियों को प्रस्तुत करते हैं। पहले दोहे में कवि कहते हैं कि मनुष्य की जाति उसके गुणों से बड़ी नहीं होती है। दूसरे में कहते हैं कि अपशब्द के बदले अपशब्द कहना कीचड़ में हाथ डालने जैसा है। तीसरे दोहे में कवि अपने चंचल मन व्यंग कर रहें हैं कि माला और जीभ प्रभु के नाम जपते हैं पर मन अपनी चंचलता का त्याग नहीं करता। चौथे में कहते हैं कि किसी को कमजोर समझकर दबाना नहीं चाहिए क्योंकि कभी-कभी यही हमारे लिए कष्टकारी हो जाता है। जैसे हाथी और चींटी। एक छोटी सी चींटी हाथी को भी बहुत परेशान कर सकती है। पाँचवे दोहे का भाव यह हैं कि मनुष्य अपनी मानसिक कमजोरियों को दूर करके संसार को खुशहाल और दयावान बना सकता है।', 'pdf_files/chapter7_REJSFz0.pdf', '', '1008'),
(398, '', '', '', '805', 'अध्याय 8 सुदामा चरित', '‘सुदाम चरित्र’ कृष्ण और सुदाम पर आधारित एक बहुत सुन्दर रचना है। इसके कवि नरोत्तम दास जी हैं, नरोत्तम दास जी ने इस रचना को दोहे के रूप में प्रस्तुत किया है और ऐसा लगता है जैसे दोहा न हो कर श्री कृष्ण और सुदामा की कथा पर आधारित नाटक प्रस्तुत हो रहा है।   ‘सुदामा चरित’ के पदों में नरोत्तम दास जी ने श्री कृष्ण और सुदामा के मिलन, सुदामा की दीन अवस्था व कृष्ण की उदारता का वर्णन किया है। सुदामा जी बहुत दिनों के बाद द्वारिका आए। कृष्ण से मिलने के लिए कारण था, उनकी पत्नी के द्वारा उन्हें जबरदस्ती भेजा जाना। उनकी अपनी कोई इच्छा नहीं थी। बहुत दिनों के बाद दो मित्रों का मिलना और सुदामा की दीन अवस्था और कृष्ण की उदारता का वर्णन भी किया गया है। किस तरह से उन्होंने मित्रता धर्म निभाते हुए सुदामा के लिए उदारता दिखाई, वह सब किया जो एक मित्र को करना चाहिए। साथ ही में उन्होंने श्री कृष्ण और सुदामा की आपस की नोक-झोक का बड़ी ही कुशलता से वर्णन किया है। इसमें उन्होंने यह भी दर्शाया है कि श्री कृष्ण कैसे अपने मित्रता धर्म का पालन बिना सुदामा के कहे हुए उनके मन की बात जानकर कर देते हैं। मित्र का यह सबसे प्रथम कर्तव्य रहता है कि वह अपनी मित्र के बिना कहे उसके मन की बात और उसकी अवस्था को जान ले और उसके लिए कुछ करें और उदारता दिखाऐं यही उसकी महानता है।', 'pdf_files/chapter8_Wk9RIen.pdf', '', '1008'),
(399, '', '', '', '805', 'अध्याय 9 जहाँ पहिया हैं', '“जहाँ पहिया है” पाठ के लेखक “पालगम्मी साईनाथ जी” हैं। पालगम्मी साईनाथ जी इस लेख के द्वारा एक साईकिल आंदोलन की बात करते हैं और तमिलनाडू के क्षेत्र में प्रसिद्ध जिले में किस तरह से महिलाऐं साइकिल के पहिऐ को एक आंदोलन का रूप देती हैं और किस तरह से वह स्वतंत्र होती हैं। अपने घर और सामाज से बाहर निकलकर आत्मनिर्भर बनती हैं।', 'pdf_files/chapter9_OyvhGDR.pdf', '', '1008'),
(400, '', '', '', '805', 'अध्याय 10 अकबरी लोटा', 'अन्नपूर्णानन्द की कहानी “अकबरी लोटा” एक हास्य पूर्ण कहानी है। लेखक ने कहानी को बहुत ही रोचंक तरीके से प्रस्तुत किया गया है और साथ के साथ बताया गया है कि परेशानी के समय में परेशान न होकर समझदारी से किस तरह से एक समस्या का हल निकाला जा सकता है और दूसरी बात इस कहानी में यह भी बताया गया है कि एक सच्चा मित्र ही मित्र के काम आता है और उसके लिए बहुत कुछ कर गुजर जाता है। कहानी के माध्यम से लेखक हमें सीख देना चाहता है कि सही वक़्त पर सही समझ का उपयोग करना कितना जरुरी है। इस कहानी के मुख्य पात्र हैं – लाला झाऊलाल और उनके मित्र पंड़ित बिलवासी मिश्र जी।', 'pdf_files/chapter10_yR7UNJZ.pdf', '', '1008'),
(401, '', '', '', '805', 'अध्याय 11 सूरदास के पद', 'कृष्ण चाहते थे कि उनकी चोटी भाई बलराम की तरह ज़मीन पर लोटे। यद्यपि माँ यशोदा नियम से उनके बाल धोती थी और गूंथती थी। फिर भी उनके बाल लंबे नहीं होते थे। दूसरे पद में एक ग्वालन माँ यशोदा को उलाहना देते हुए कहती हैं कि नटखट कृष्ण प्रतिदिन उनके घर से मक्खन चोरी करके खा जाते हैं।', 'pdf_files/chapter11_3yqO5Qb.pdf', '', '1008'),
(402, '', '', '', '805', 'अध्याय 12 पानी की कहानी', 'पानी की कहानी में लेखक ने कल्पना और वैज्ञानिक तथ्य का आधार लेकर ओस की बूँद की यात्रा का वर्णन किया है। ओस की बूँद अनेक अवस्थाओं में सूर्यमंडल, पृथ्वी, वायु, समुद्र, ज्वालामुखी, बादल, नदी और जल से होते हुए पेड़ के पत्ते तक की यात्रा करती है। इस कहानी की भांति आप भी लोहे अथवा प्लास्टिक की कहानी लिखने का प्रयास कीजिए', 'pdf_files/chapter12_kCm8Ji0.pdf', '', '1008'),
(403, '', '', '', '805', 'अध्याय 13 बाज और साँप', 'निर्मल वर्मा की कहानी ‘बाज और साँप’ एक ‘बोध कथा’ है। इस कहानी के आधार दो पात्र हैं – बाज और साँप । इसमें साँप को कायर प्रकृति का जीव दिखाया गया है किन्तु बाज को स्वतंत्र प्रकृति का। यह बहुत ही सुन्दर कहानी है। इस कहानी के माध्यम से लेखक हमें बताना चाहते हैं कि किस तरह से हर प्राणी अपने स्वभाव के कारण अलग-अलग व्यवहार करता है। जिस तरह से एक साँप को कायर, डरकोप किस्म का बताया गया है और बाज को स्वतंत्र आजाद किस्म का, आसमान में स्वतंत्रता से उड़ना उसे बहुत अच्छा लगता है, जबकि साँप अपने ही बिल में चुप-चाप शांतिपवूर्क एक कायर जीवन व्यतीत करता है। ', 'pdf_files/chapter13_dyQ0X6Y.pdf', '', '1008'),
(404, 'English', 'Introduction', 'Class 8 English  – Here is a Detailed Explanation, Summary, Difficult words, and Question Answers provided for NCERT Class 8 English Honeydew and It So Happened books. The lessons have been provided here with complete explanations from beginning to end. It is ready to study material for class 8 students. In this you will get Chapter NCERT solutions for Class 8 English Honeydew and It So Happened Books.', '801', 'CHAPTER-I  THE BEST CHRISTMAS PRESENT IN THE WORLD', 'The Best Christmas present in the World is a story by Michael Morpurgo. In this story, the author buys a roll-top table from a junk shop, and to restore it starts working on it on Christmas Eve. While repairing it, he finds a secret space in the last drawer. In that secret space was a small tin box. He finds a letter inside the tin box written by Jim Macpherson, a captain of the English Army to his wife Connie. It was a narration of an incident that took place on the battlefield in 1914 on Christmas Day.On that day, the German and English soldiers were celebrating Christmas together forgetting the rivalry between them and also that they were at war. They shared wine and food. Also, they played a football match and sang carols at night. The author took this letter to Mrs. Macpherson to the hospital and gave her the best Christmas present in the World.', 'pdf_files/part1_chapter1.pdf', 'Class 8', '1008'),
(405, '', '', '', '801', ' CHAPTER-II  THE TSUNAMI', 'The author of this poem is Zulfikar Ghose. Ghose was born in  India before independence. Eventually, after independence, he  settled in Pakistan, and now, he resides in the USA. This is a single  stanza poem of 24 lines and does not have any rhyme scheme. In  this poem, Ghose talks about three things, firstly, how everything  looks from the sky, secondly, how civilization was set up, and  lastly, why people hate each other. The poet says that when he sees the city from a jet, he finds that  the cities are not well-planned. He realizes that water is very  essential for various activities such as agriculture, transport,  business, etc. As the jet moves higher, he reflects that people have  built boundaries and hate each other', 'pdf_files/part1_chapter2.pdf', '', '1008'),
(406, '', '', '', '801', 'CHAPTER-III  GLIMPSES OF THE PAST', 'The chapter describes the events and the  circumstances that took place in India during the year 1757 to  1857. It starts with the time when the East India Company was  very strong in India. The Indian princes and states were busy  fighting with each other. They often sought British help and thus  British took advantage of this to gain power and establish their  rule in India. The social conditions were also not in good shape.  Social evils such as child marriages, untouchability, sati pratha,  etc. were prevalent in society. Also, the farmers had to pay heavy  taxes. Raja Ram Mohan Roy worked a lot towards reforming society.  British also passed many resolutions to ruin India and Indian  industries. Lord Macaulay also brought a bill according to which  the medium of education could only be English. The main aim of  the British was to prepare clerks who can assist them in the  administration. By 1856, India had fully become a British colony.  However, after the revolt of 1857, the British rule started to shake.  The Indians revolted and struggled for freedom until 1947, i.e. till  they achieved it', 'pdf_files/part1_chapter3.pdf', '', '1008'),
(407, '', '', '', '801', 'CHAPTER-IV  BEPIN CHODHURY’S LAPSE OF MEMORY', 'The Last Bargain is a poem written by the famous and renowned Bengali poet Rabindranath Tagore. It is a poem about a person looking for a job. The speaker in the poem is searching for a job in which he does not have to lose his freedom. He receives the first proposal from a King. The king offers him power in return for his labor. But he refuses the king’s offer.He receives the second offer from a rich man. He offers the speaker lots of gold in return for his labor. But the speaker refuses his offer also. He receives the third offer from a beautiful girl. She says that she will give him smiles in return for his labor. The speaker refuses her offer too. In the end, he finds a child playing on the seashore. The child says that he will offer him nothing in return for his services. The speaker accepts the child’s offer as he can still be a free man.', 'pdf_files/part1_chapter4.pdf', '', '1008'),
(408, '', '', '', '801', 'CHAPTER-V  THE SUMMIT WITHIN', 'In this article, we will be reading the summary of The Summit  Within. The author and the narrator of this chapter is Major  H.P.S. Ahluwalia. The author here describes his experience and  feelings standing on Mount Everest. Major Ahluwalia was a  member of the Indian expedition to Mount Everest. It was the first  successful expedition and took place in 1965. He was too tired  physically when he reached the Everest. He felt humbled, joyful,  and also sad at the same time. Also, he was very thankful to God. After climbing the Everest, he concluded that to climb a submit a  person requires endurance, persistence, and will power. He  further says that he loves the mountains and has a strong urge to  climb them. The obstacles in climbing the mountains attract him.  He also says that after looking down from the peak of Mount  Everest, he felt that all the effort was worth it. According to him,  we all have a peek inside us that we need to climb. Both, climbing  the Everest peak and the internal peak change you', 'pdf_files/part1__chapter5.pdf', '', '1008'),
(409, '', '', '', '801', ' CHAPTER-VI THIS IS JODY’S FAWN', 'This is Jody’s Fawn is a very touching story that tells us about a little child and his consciousness. It revolves around the emotions of Jody and his pure heart. When a snake bites Jody’s father, he kills a doe to save him. He uses the heart and liver for drawing out the poison. However, the loss of that doe and thoughts about the fawn do not leave his mind. He thinks about it a lot and feels that abandoning him in the woods was not right. So, he convinces his family to let him raise the fawn. He even goes to the extent of saying that he will feed him his own share of milk. Everyone finally agrees and goes to the forest to find the fawn. On searching, he finally finds it and brings it home. Now, the fawn is safe and is being fed by Jody happily.', 'pdf_files/part1_chapter6.pdf', '', '1008'),
(410, '', '', '', '801', 'CHAPTER-VII  A VISIT TO CAMBRIDGE', 'The author of A Visit to Cambridge is Firdaus Kanga. He was a journalist and had traveled all over the world. He was also handicapped but he never let that become his disability in any way. Also, he was an inspiration to the people around him. In this story, the author shares one of his experiences in England. The author describes his visit to Cambridge University where he got a chance to interview Stephen Hawking.Hawking told him that he found it funny when people patronized him. He also added that he was not left with any choice other than being brave and accept his condition. The author found Stephen Hawking to be one of the most beautiful men in the world. At the  end of the interview, Hawking gave a bit of advice to the handicapped people to concentrate on what is good in them. They can thus surely succeed in life.', 'pdf_files/part1_chapter7.pdf', '', '1008'),
(411, '', '', '', '801', 'CHAPTER-VIII   A SHORT MONSOON DIARY', 'This poem is a fine piece of Petrarchan sonnet by the  famous poet John Keats. He wrote this poem in December 1816. It  is inspired by the beauty of nature. Poets usually find beauty and  poetry in spring and good weather. But Keats is different as he  finds nature beautiful in all seasons including hot summer and  cold winter. The poet symbolizes the grasshopper as hot summer and the  cricket as a very cold winter. He says that even when the birds stop  singing during the hot summers, the Earth still sings. The  grasshopper sings tirelessly during this time flying from the hedge.  The poet further says that during the cold winter also the Earth  keeps expressing pleasure through cricket. A cricket sings through  the stones', 'pdf_files/part1_chapter8.pdf', '', '1008'),
(412, 'Maths', 'Introduction', 'Class 8 maths is the base for developing higher-level computational skills in students. Students in class 8 learn to work basic algebraic equations, the arithmetic of rational numbers, factorization, and more. Learning class 8 maths requires students to have a clear understanding of previously studied concepts and skills. It focuses on working with advanced concepts related to geometry, arithmetic, and numbers. In class 8 maths, the basic arithmetic operations shift to a bit complex algebraic word problems that students have to interpret and understand. Thus, having complete knowledge of the class 8 Maths syllabus is a must for students.', '802', 'CHAPTER-1 Rational Numbers', 'A rational number is a number that is expressed as the ratio of two integers, where the denominator should not be equal to zero, whereas an irrational number cannot be expressed in the form of fractions. Rational numbers are terminating decimals but irrational numbers are non-terminating and non-recurring.', 'pdf_files/chapter1.pdf', '', '1008'),
(413, '', '', '', '802', 'CHAPTER-2 Linear Equations in One Variable', 'Linear equation in one variable is the equation that is used in algebra for finding unknown quantities. It is used for representing the conditions that are dependent on one variable. A linear equation in one variable is a linear equation i.e. the equation in which the degree of the equation is one, and it only has one variable. We can easily represent the linear equation in one variable in graphical form. We can use any variable such as x, y, z, etc to represent the linear equations. Other than the graphical method, the algebraical method is also used to solve linear equations in one variable. Linear equations are algebraic equations that are used to represent a straight line. It can also be considered as a polynomial of degree 1.', 'pdf_files/chapter2.pdf', '', '1008'),
(414, '', '', '', '802', 'CHAPTER-3 Understanding Quadrilaterals', 'Do you know that a quadrilateral is basically a type of a polygon? And there are different types of quadrilaterals that are classified on the basis of their properties. Have you seen a kite fly in the sky? Well, it’s shape is also a quadrilateral. So, let’s focus on understanding quadrilaterals and their types with properties.', 'pdf_files/chapter3.pdf', '', '1008'),
(415, '', '', '', '802', 'CHAPTER-4 Data Handling', 'Nowadays, managing and representing data systematically has become very important especially when the data provided is large and complex, This is when Data Handling comes into the picture. The definition of Data handling is in the title itself, that is, Handling the data in such a way that it becomes easier for people to understand and comprehend the given information. Hence, The process of collecting, Recording, and representing data in some form of graph or chart to make it easy for people to understand is called Data handling.  Statistics is another term for data handling, and it is useful not only in the field of Math and Science but also in the fields where the representation of data is required. Let’s learn about some forms of Data handling, and how they work.', 'pdf_files/chapter4.pdf', '', '1008'),
(416, '', '', '', '802', 'CHAPTER-5 Squares and Square Roots', 'A square root is a value that is obtained when the original number is multiplied by itself. When a number multiplies itself, the product that is obtained is known as the square number. The number is the square root. We get perfect square roots for a perfect square number. A square root is represented by a √ sign. If x2 is a square number then x is a square root of it. Students might still be confused and would want to know – what is square root? Let us look at some of the key concepts including square root definition, ways to figure out the square of a number, square root table, and the square root of numbers.', 'pdf_files/chapter5.pdf', '', '1008'),
(417, '', '', '', '802', 'CHAPTER-6 Cubes and Cube Roots', 'Cube and Cube Roots are fundamental concepts in algebra and it is introduced in the early classes. The multiplication of a number to itself gave rise to a square and then if we multiply the number by its square then the result becomes a cube and the inverse of the cube is the cube root which we will study in this article. In this article, we will learn about cubes and cubes and also learn about the methods to find both cubes of a number and cube roots of a number. So, let’s dive into the concept of Cubes and Cube Roots.', 'pdf_files/chapter6.pdf', '', '1008'),
(418, '', '', '', '802', 'CHAPTER-7 Comparing Quantities', 'We can use the concepts of ratio and percentage to compare quantities effectively. Taking a ratio in mathematics is equivalent to weighing a mass. When we take a ratio and percentage of quantities, the values that we get can tell us about the magnitude of these quantities. Let us see how!  Ratio and Percentage:A ratio is a comparison of two values expressed as a quotient. For example, if a class has 12 girls and 18 boys, the ratio of girls to boys is 12/18. This ratio can also be expressed as an equivalent fraction 2/3. Therefore, the ratio between girls and boys= 2:3.', 'pdf_files/chapter7.pdf', '', '1008'),
(419, '', '', '', '802', 'CHAPTER-8 Algebraic Expressions and Identities', 'In mathematics, an algebraic expression is an expression built up from integer constants, variables, and algebraic operations. This article is about Expressions and Identities in Algebra. In order to understand these terms, we need to have an understanding of terms, factors, and coefficients. There are many types of expressions and identities that are discussed in detail', 'pdf_files/chapter8.pdf', '', '1008'),
(420, '', '', '', '802', 'CHAPTER-9 Mensuration', 'Mensuration is the branch of geometry that deals with the measurement of area, length, or volume in 2D and 3D shapes. The 2D and 3D shapes are often called Geometrical Shapes. The 2D shapes can be drawn in a plane like square, rectangle, triangle, circle, etc. and 3D shapes cannot be represented in a plane like bricks, ice-cream cones, football, etc. Mensuration includes computation using mathematical formulas and algebraicequations. Mensuration Formula is important for Class 8 students till higher secondary.', 'pdf_files/chapter9.pdf', '', '1008'),
(421, '', '', '', '802', 'CHAPTER-10 Exponents and Powers', 'When we have to repeatedly multiply a number by itself, we raise it to a power. This is known as Exponent. The power in the exponent represents the number of times that we want to carry out the multiplication operation. Exponents have their own set of rules when it comes to carrying out Arithmetic Operations. In this chapter, we will learn about powers, exponents and their peripheral rules.', 'pdf_files/chapter10.pdf', '', '1008'),
(422, '', '', '', '802', 'CHAPTER-11 Direct and Indirect proportions', 'Sometimes a change in the proportions of one quantity means a change in the proportions of the other! For example, when you buy more apples, you’ll have to pay more money. Similarly, if we increase the speed of a vehicle, the time that it takes to cover some distance goes down. The first is an example of direct proportionality and the second is an example of quantities that are inversely proportional. Let’s read further.', 'pdf_files/chapter11.pdf', '', '1008'),
(423, '', '', '', '802', 'CHAPTER-12 Factorisation', 'Algebraic factorization is the process of finding all the factors of a number. Factors are numbers that can be multiplied together to produce the original number. Algebraic factorization is a technique that can be used to solve equations.', 'pdf_files/chapter12.pdf', '', '1008'),
(424, '', '', '', '802', 'CHAPTER13 Introduction to Graphs', 'A graph is a mathematical representation of networks. The purpose of the graph is to show mathematical relations in visual form so that it can be easily understood. There are many types of graph: 1.Bar graph, 2.Pie graph,3.Line graph', 'pdf_files/chapter13.pdf', '', '1008'),
(425, 'Science', 'Introduction', 'This lesson provides students with a brief introduction to science, including community resources such as \"Skype a Scientist\". Students will begin the unit by exploring laboratory safety, types of scientists, and creating connections to align their learning from previous grade levels. This lesson provides students with multiple forms of assessments and approaches learning from a project-based lens', '803', 'CHAPTER – 1 CROP PRODUCTION AND MANAGEMENT', 'Agriculture is the science, which specifically deals with the various tactics or the strategies used to grow plants and raise livestock or animal husbandry to suit human needs. When plants are grown on a large scale for consumption purposes, they are called to be crops. These crops are divided based on the seasons in which they grow:', 'pdf_files/chapter1_7mNwD9Q.pdf', '', '1008'),
(426, '', '', '', '803', 'CHAPTER – 2  MICROORGANISMS: FRIEND AND FOE', 'Microorganisms: Friend and Foe: Organisms that can be seen only through a microscope are known as Microorganisms or Microbes. These microorganisms are so small in size that they cannot be seen with the unaided eye. Some of these, such as the fungus that grows on bread, can be seen with a magnifying glass. Others cannot be seen without the help of a microscope. That is why these are called microorganisms or microbes. They exist in vast numbers and play vital roles in our lives.Friends and Foe explain that Microorganisms can be both our friends, providing numerous benefits, or our foes, causing harm and disease. Microorganisms are classified into four major groups. These groups are bacteria, fungi, protozoa, and some algae. Viruses are also microscopic but are different from other microorganisms. Common ailments like colds, influenza (flu) and most coughs are caused by viruses. Serious diseases like polio and chicken pox are also caused by viruses. Diseases like dysentery and malaria are caused by protozoa(protozoans) whereas typhoid and tuberculosis (TB) are bacterial diseases.', 'pdf_files/chapter2_HhCnwT2.pdf', '', '1008'),
(427, '', '', '', '803', 'CHAPTER -3 COAL AND PETROLEUM', 'Coal and petroleum are the consequence of the decomposition of ancient plant life that existed millions of years ago. These decomposing plant materials began to accumulate, eventually producing peat. Heat and pressure from geological processes turned these minerals into coal over time. They are also known as fossil fuels because they are made up of essential fossils.  Fossil fuels are flammable geologic deposits of organic matter, such as dead plants and animals, that have been buried beneath thousands of feet of sediment. Due to the intense heat and pressure inside the earth’s crust, these deposits decomposed over time and were changed to natural gas, coal, and petroleum. They are also considered non-renewable energy sources because they take a long time to recharge.', 'pdf_files/chapter3_xHH2V74.pdf', '', '1008'),
(428, '', '', '', '803', 'CHAPTER -4 COMBUSTION AND FLAME', 'Did you know that the Earth is the only planet where fire can burn? Any combustion reaction requires oxygen, so fire is only possible on our planet. In fact, fire is not really a thing as much as it is an event that occurs due to a chemical reaction. Come let us look at Combustion and the learn about the Flame.', 'pdf_files/chapter4_uZKU2cd.pdf', '', '1008'),
(429, '', '', '', '803', 'CHAPTER -5 CONSERVATION OF PLANTS AND ANIMALS', 'Conservation of Plants and Animals: Plants and animals play integral roles in sustaining life on Earth. They contribute to vital ecological processes such as pollination, nutrient cycling, and maintaining the overall health of ecosystems. However, human activities, including habitat destruction, climate change, pollution, and overexploitation, have put numerous species at risk of extinction. It is our responsibility to take action to prevent further loss and conserve these valuable resources for future generations.', 'pdf_files/chapter5_d60CeLW.pdf', '', '1008');
INSERT INTO `learning_stdclass` (`id`, `subjects`, `intro`, `description`, `subid`, `chaptername`, `chapterdis`, `pdf`, `classes`, `classid`) VALUES
(430, '', '', '', '803', 'CHAPTER -6  REPRODUCTION IN ANIMALS', 'Most animals are diploid organisms, meaning that their body (somatic) cells are diploid and haploid reproductive (gamete) cells are produced through meiosis. Some exceptions exist: for example, in bees, wasps, and ants, the male is haploid because it develops from unfertilized eggs. Most animals undergo sexual reproduction. This fact distinguishes animals from fungi, protists, and bacteria, where asexual reproduction is common or exclusive. However, a few groups, such as cnidarians, flatworm, and roundworms, undergo asexual reproduction, although nearly all of those animals also have a sexual phase to their life cycle.', 'pdf_files/chapter6_N98lAGC.pdf', '', '1008'),
(431, '', '', '', '803', 'CHAPTER -7 REACHING THE AGE OF ADOLESCENCE', 'Reaching The Age of Adolescence: Growing up is a natural process. Growth begins from the day one is born. But upon crossing the age of 10 or 11, there is a sudden spurt in growth which becomes noticeable. The changes taking place in the body are part of growing up. They indicate that the individual is no longer a child but is on the way to becoming an adult. The period of life, when the body undergoes changes, leading to reproductive maturity, is called Adolescence.', 'pdf_files/chapter7_e3siBTC.pdf', '', '1008'),
(432, '', '', '', '803', 'CHAPTER -8 FORCE AND PRESSURE', 'A push or pull that an object experiences as a result of its interaction with another item is referred to as a force.The total sum of all the forces acting on the object is what we refer to as the magnitude of forces. When exerting force on an object, interaction between the force source and the object is necessary.', 'pdf_files/chapter8_7crPPAe.pdf', '', '1008'),
(433, '', '', '', '803', 'CHAPTER -9 FRICTION', 'In physics, it becomes important to learn about friction. It helps you learn a lot about the various processes and the mechanisms behind these processes. It refers to the resistance to the motion of one object moving relative to another. It is not a fundamental force such as gravity and electromagnetism. Through this article, you will get a better understanding of this topic. Moreover, you will learn about its meaning, factors which affect it, applications, transportation and more.', 'pdf_files/chapter9_a8RfxJf.pdf', '', '1008'),
(434, '', '', '', '803', 'CHAPTER -10 SOUND', 'Have you ever thought about how your sound travel and reach another ear? If not, then let us discuss how a sound wave is generated and gets transferred through any medium. Before going deep into the topic of the sound waves, let us first brief a little bit about the sound and a wave.', 'pdf_files/chapter10_CYdMfWR.pdf', '', '1008'),
(435, '', '', '', '803', 'CHAPTER -11 CHEMICAL EFFECTS OF ELECTRIC CURRENT', 'Chemical reactions occur when an electric current flows through a conducting material. This chemical action of electric current is termed the Chemical Effect of Electric Current. For example, Hydrogen and oxygen separate from water when an electrical current is applied to it. Over the negative pole, hydrogen is deposited, and over the positive pole, oxygen is. Bubbles are evidence of hydrogen and oxygen deposition at various poles. Some liquids are good conductors and some are poor conductors of electricity. But, most of the liquids that conduct electricity are the solutions of acids, bases, and salts. Let’s understand the concepts of the Chemical Effects of Electric Current in this article!', 'pdf_files/chapter11_ChpRkfk.pdf', '', '1008'),
(436, '', '', '', '803', 'CHAPTER -12 SOME NATURAL PHENOMENA', 'Many scientists, in the early part of our century, defined Physics as the study of Nature and the natural Phenomena. A fascinating aspect of physics is that it can help you explain everything that goes around in your house, or your town, or the world and even throughout the Cosmos! Well in this chapter, we will focus on two of the most wonderful natural Phenomena. The Lightning and the Earthquakes. We will also talk about charges and what they are. Let us begin the study of Some Natural Phenomena:', 'pdf_files/chapter12_Ey6MeqQ.pdf', '', '1008'),
(437, '', '', '', '803', 'CHAPTER -13 LIGHT', 'Are everything visible to us ? Are everything visible to every living things? Are all the living things can see in same pattern?To understand this we have to start with what is visible to us. humans can see is known as visible light. Not all animals can see all types of lights. Like dogs can see only shades of gray and some insects can see light from the ultraviolet part of the spectrum only. Scientists says visible light are the lights that we can see. Light is also known as electromagnetic radiation. Visible light is only one small portion of a family of waves called electromagnetic (EM) radiation.', 'pdf_files/chapter13_fC3uuZu.pdf', '', '1008'),
(438, 'Social and Political Life-2', 'Introduction', 'There is a substantial difference between Civics and Social and Political Life, not only in terms of the topics covered but also in the pedagogic approaches required in each subject area. Keeping these in mind, this Introduction attempts to clarify certain aspects of Social and Political Life. What is Social and Political Life? Social and Political Life (SPL) is a new subject area in middle school social science that has replaced the earlier subject of Civics. The National Curriculum Framework (NCF) 2005 strongly argues that Civics should be discontinued and its focus on government institutions and functioning should be tempered in the new subject that replaces it. SPL, as its name suggests, focuses on topics related to social, political and economic life in contemporary India.', '804', 'CHAPTER-1   THE INDIAN CONSTITUTION', 'All of know about our rights and fundamental rights. But who gives us these rights? It is The Indian Constitution. When was our it formed? Where is it located? How was it formed? Why was it formed? Let’s find out more about The Indian Constitution.', 'pdf_files/chapter1_sGR7ZXa.pdf', '', '1008'),
(439, '', '', '', '804', 'CHAPTER-2  UNDERSTANDING SECULARISM', 'Secularism is freedom of choosing one’s religious beliefs and practices of a religion. It has its roots in Greek and Roman philosophies. To know more about Understanding Secularism explore the article further!', 'pdf_files/chapter2_TNhoa6O.pdf', '', '1008'),
(440, '', '', '', '804', 'CHAPTER-3  PARLIAMENT AND MAKING OF LAWS ', 'The primary function of every legislature is to make laws for the citizens of the country. The law making-process always follows a definite procedure, some of them are mentioned in the constitution while others have evolved gradually from conventions. The process of law-making is technical and systematic.', 'pdf_files/chapter3_Icdxbrd.pdf', '', '1008'),
(441, '', '', '', '804', 'CHAPTER-4  JUDICIARY', 'You may come across different incidents in your social surroundings where people approach the Local courts, High court or the Supreme Court. The rule of law governs the country of India. The judiciary is an important part of our government and plays a critical role in the way our democracy works.', 'pdf_files/chapter4_nRTARQH.pdf', '', '1008'),
(442, '', '', '', '804', 'CHAPTER-5  UNDERSTANDING MARGINALISATION', 'The Indian Constitution promises its citizens equality in all aspects. Every person must be treated equally in the eyes of the law and in society. However, the reality is slightly different than what is reflected in our constitution. So let us see how some sections of our society are marginalized and focus on understanding marginalization.', 'pdf_files/chapter5_RQZjERk.pdf', '', '1008'),
(443, '', '', '', '804', 'CHAPTER-6  CONFRONTING MARGINALISATION', 'You must have come across many instances where Adivasis, Dalits, Muslims, women and other marginal groups in the country argue to be conferred with equal rights as other citizens in this democratic country. A lot of these marginal groups also look up to the Indian Constitution to redress their grievances. A lot of laws have been implemented to protect these groups from exploitation and unfair practices from time to time. Let us look at how are they confronting marginalisation.', 'pdf_files/chapter6_JnhC7XG.pdf', '', '1008'),
(444, '', '', '', '804', 'CHAPTER- 7  PUBLIC FACILITIES', 'Public facilities: Public facilities refer to those essential facilities that need to be provided to everyone. Some important examples of essential public facilities include healthcare, sanitation facilities, educational institutions, public transport, and so forth.Public facilities are those services provided by the government to its citizens. The objective of the government is mainly to provide these facilities to citizens to maintain social and economic activities more smoothly. The benefits of public facilities once provided, benefits are shared by many people.', 'pdf_files/chapter7_VVq3e55.pdf', '', '1008'),
(445, '', '', '', '804', 'CHAPTER-8  LAW AND SOCIAL JUSTICE', 'Have you ever felt any shopkeeper or trader being exploited near your surroundings? Everywhere markets are exploitative of people, whether they are workers, consumers or producers. The government makes certain laws to protect people from any kind of exploitation. They try to ensure that the unfair practices are kept at minimum levels in the markets. This comes under the law and social justice. Let us know more!', 'pdf_files/chapter8_130soBu.pdf', '', '1008'),
(446, 'Hindi', 'Introduction', '  यह एक बहुत ही हल्की कहानी है। यह भविष्य पर आधारित है। यह आप सभी को स्कूल से प्यार कर देगा। यह कहानी स्कूली जीवन के बारे में है और कैसे जो बच्चे स्कूल नहीं जा पाते, उनका स्कूल छूट जाता है। कहानी की सेटिंग भविष्य में है जब शायद, कोई स्कूल नहीं होगा, कोई किताबें नहीं होंगी। अब वे छात्र स्कूल जाना कैसे भूलेंगे और महसूस करेंगे कि उनके पूर्वज यानी वर्तमान पीढ़ी- आप सभी को स्कूल जाने, मिलने और एक-दूसरे की मदद करने में मज़ा आया था। अंत में हमें पता चलता है कि यह मार्गी नाम की एक युवा लड़की की कल्पना है जिसे पता चलता है कि उनके पूर्वज स्कूल जाते थे, सभी बच्चे एक साथ पढ़ते थे। उसे लगता है कि जब वे सभी बहुत मज़ा करते थे वे स्कूल गए. इसलिए, जब हम कहानी पढ़ते हैं तो हमें लगता है कि स्कूली जीवन बहुत अच्छा है, और हम भाग्यशाली हैं कि हमारे पास वास्तविक स्कूल हैं जहाँ हम जाते हैं, दोस्तों से मिलते हैं और एक साथ पढ़ने का मौका मिलता है।', '903', 'अध्याय 1- दुःख का अधिकार', 'लेखक के अनुसार मनुष्यों का पहनावा ही समाज में मनुष्य का अधिकार और उसका दर्ज़ा निश्चित करता है। परन्तु लेखक कहता है कि समाज में कभी ऐसी भी परिस्थिति आ जाती है कि हम समाज के ऊँचे वर्गों के लोग छोटे वर्गों की भावनाओं को समझना चाहते हैं परन्तु उस समय समाज में उन ऊँचे वर्ग के लोगों का पहनावा ही उनकी इस भावना में बाधा बन जाती है। लेखक अपने द्वारा अनुभव किये गए एक दृश्य का वर्णन करता हुआ कहता है कि एक दिन लेखक ने बाज़ार में, फुटपाथ पर कुछ खरबूजों को टोकरी में और कुछ को ज़मीन पर रखे हुए देखा। खरबूजों के नज़दीक ही एक ढलती उम्र की औरत बैठी रो रही थी। लेखक कहता है कि खरबूज़े तो बेचने के लिए ही रखे गए थे, परन्तु उन्हें खरीदने के लिए कोई कैसे आगे बढ़ता? क्योंकि खरबूजों को बेचने वाली औरत ने तो कपड़े में अपना मुँह छिपाया हुआ था और उसने अपने सिर को घुटनों पर रखा हुआ था और वह बुरी तरह से बिलख – बिलख कर रो रही थी। लेखक कहता है कि उस औरत का रोना देखकर लेखक के मन में दुःख की अनुभूति हो रही थी, परन्तु उसके रोने का कारण जानने का उपाय लेखक को समझ नहीं आ रहा था क्योंकि फुटपाथ पर उस औरत के नज़दीक बैठ सकने में लेखक का पहनावा लेखक के लिए समस्या खड़ी कर रहा था क्योंकि लेखक ऊँचे वर्ग का था और वह औरत छोटे वर्ग की थी।', 'pdf_files\\9th_Hin_C1.pdf', '', '1009'),
(447, '', '', '', '903', 'अध्याय 2- एवरेस्ट : मेरी शिखर यात्रा', '   लेखिका बचेंद्री पाल एवरेस्ट विजय के जिस अभियान दल में एक सदस्य थीं, लेखिका उस अभियान दल के साथ 7 मार्च, 1984 को दिल्ली से काठमांडू के लिए हवाई जहाज़ से गयी। एक मजबूत अग्रिम दल  हमारे पहुचने से पहले ‘बेस कैम्प’ पहुँच गया जो उस उबड-खाबड़ हिमपात के रास्ते को साफ कर सके,लेखिका एक स्थान का जिक्र किया जिसका नाम नमचे बाज़ार है और वहाँ से एवरेस्ट की प्राकृतिक छटा का बहुत सुंदर निरीक्षण किया जा सकता है। लेखिका ने बहुत भारी बड़ा सा बर्फ का फूल (प्लूम) देखा जो उन्हें आश्चर्य में डाल दिया। लेखिका केअनुसार वह बर्फ़ का फूल 10 कि.मी. तक लंबा हो सकता था।  इस अभियान दल के सदस्य पैरिच नामक स्थान पर 26 मार्च को पहुँचे, जहाँ से आरोहियों और काफ़िलों के दल पर प्राकृतिक आपदा मँडराने लगी। यह संयोग की बात था कि 26 मार्च को अग्रिम दल में शामिल प्रेमचंद पैरिच लौट आए थे। उनसे खबर मिली कि 6000 मी. की ऊँचाई पर कैंप-1 तक जाने का रास्ता पुरी तरह से साफ़ कर दिया गया है। दूसरे-तीसरे दिन पार कर चौथे दिन दल के सदस्य अंगदोरजी, गगन बिस्सा और लोपसांग साउथ कोल पहुंच गए। 29 अप्रैल को 7900 मीटर की ऊँचाई पर उन लोगों ने कैंप-4 लगाया। लेखिका 15-16 मई, 1984 को बुद्ध पूर्णिमा के दिन ल्होत्से की बर्फीली सीधी ढलान पर लगाए गए सुंदर रंग के नाइलोन के बने टेंट के कैंप-3 में थी। कैंप में 10 और व्यक्ति थे। साउथ कोल कैंप पहुँचने पर लेखिका ने अपनी महत्वपूर्ण चढ़ाई की तैयारी शुरू कर दी। सारी तैयारिओं के बीच अभियान चल रही थी , पर्वतारोही दल आगे बढ़ता रहा और 23 मई, 1984 दोपहर के एक बजकर सात मिनट पर लेखिका एवरेस्ट की चोटी पर पहुँच गई।', 'pdf_files\\9th_Hin_C2.pdf', '', '1009'),
(448, '', '', '', '903', 'अध्याय 3- तुम कब जाओगे, अततति', ' लेखक के घर में एक अतिथि आए है। उस आये हुए अतिथि के सेवा-सत्कार में लेखक और उनकी पत्नी ने अपनी ओर से कोई कमी नहीं की है। यह सेवा-सत्कार इसलिए किया गया है कि अतिथि आने के बाद तुरंत चले जाये। परन्तु यह अतिथि नहीं जा रहे हैं। लेखक को अब शंका हो रही है कि अतिथि अब न जाने कितने दिन और रूकेंगे। लेखक अतिथि के थोड़े दिन और रुक जाने की आशंका से डर ही रहे थे कि अतिथि ने और कुछ दिन रुक जाने का संकेत दे दिया। अतिथि ने अपने कपड़े गंदे होने की बात कही और उस गंदे कपड़े को धुलाई के लिए धोबी को देने की चर्चा की। लेखक को इस बात से गुस्सा तो बहुत आया लेकिन लॉण्ड्री से कपड़े धुलाकर लाना ही सही समझा। लेकिन अब भी अतिथि वहाँ से चले जाएँगे, इसकी कोई गारंटी न थी। लेखक और उनकी पत्नी अतिथि से बहुत परेशान हो चुके थे। कल तक जिस अतिथि के प्रति यह भाव था कि अतिथि देवता के समान होते हैं, अब उस अतिथि के प्रति यह स्थिति हो गई है कि वह राक्षस प्रतीत होने लगे है। इस व्यंग्य के माध्यय से लेखक ने आज के अतिथियों की निर्लज्जता की परिस्थिति को स्पष्ट किया है। सम्मान माँगने से नहीं मिलता बल्कि सम्मानित व्यक्ति के साथ जैसा आचरण किया जाता है तब उस व्यक्ति के व्यवहार से मुग्ध होकर अन्य लोग स्वयं ही उस व्यक्ति को सम्मान देते हैं। लेखक ने यह भी दिखाया है कि थोड़े दिन के लिए आये अतिथि शानदार स्वागत के भागीदार होते हैं, लेकिन अत्यधिक समय के लिए आये अतिथि के आतिथ्य का सुख-भोग करने का जिनका इरादा होता है वैसे अतिथि का मेजबान द्वारा आदर सम्मान नहीं होता हैं।', 'pdf_files\\9th_Hin_C3.pdf', '', '1009'),
(449, '', '', '', '903', 'अध्याय 4- वैज्ञानिक चेतिा के वाहक चन्द्र शेखर वेंकट रामि', 'प्रस्तुत पाठ में वैज्ञानिक चेतना के वाहक चंद्रशेखर वेंकट रामन् का जीवन संघर्ष चित्रित किया गया है । रामन् की एक मेधावी छात्र से महान वैज्ञानिक तक की संघर्षमय जीवन यात्रा और उनकी उपलब्धियों की जानकारी यह पाठ बखूबी देता है । वेंकट रामन् ग्यारह साल की उम्र में मैट्रिक विशेष योग्यता के साथ इंटरमीडिएट , भौतिकी और अंग्रेज़ी में स्वर्णपदक के साथ बी ० ए ० और प्रथम श्रेणी में एम ० ए ० करके मात्र अट्ठारह वर्ष की उम्र में कोलकाता में भारत सरकार की फाइनेंस डिपार्टमेंट में सहायक जनरल एकाउंटेंट के पद पर नियुक्त कर लिए गए थे । पेड़ से सेब गिरने के रहस्य को न्यूटन से पहले कोई नहीं समझ पाया । ठीक उसी प्रकार नीले समुद्र की आभा को लोगों ने देखा था , परंतु इस आभा पर पड़े पर्दे को हटाने का कार्य चंद्रशेखर वेंकट रामन् ने किया था । समुद्र के नीले रंग के कारण को जानते ही वे विश्व प्रसिद्ध हो गए ।', 'pdf_files\\9th_Hin_C4.pdf', '', '1009'),
(450, '', '', '', '903', 'अध्याय 5- शक्र तारे के समान', '‘ शुक्रतारे के समान ‘ पाठ के लेखक स्वामी आनंद हैं । इस पाठ में लेखक ने गांधी जी के निजी सचिव महादेव भाई देसाई की बेजोड़ प्रतिभा और व्यस्ततम दिनचर्या का वर्णन किया है । लेखक का मानना है कि जिस प्रकार शुक्रतारा अपनी आभा दिखाकर घंटे दो घंटे में अस्त हो जाता है , उसी प्रकार गांधी जी के सचिव महादेव भाई भी भारत की स्वतंत्रता के उषाकाल में अपनी आभा दिखाकर अचानक ही अस्त हो गए । गांधी जी उन्हें अपने पुत्र से भी अधिक मानते थे । वे सन् 1917 ई ० में गांधी जी के पास आए थे । सन् 1919 ई ० में जलियाँवाला बाग हत्याकांड के संदर्भ में जब गांधी जी को पंजाब हुए पलवल स्टेशन पर गिरफ्तार कर लिया गया तो उसी समय उन्होंने महादेव भाई को अपना वारिस कह दिया था । सन् 1929 ई ० में महादेव भाई ने सारे देश में यात्राएँ की थीं । इन्हीं दिनों पंजाब से फौजी शासन के अत्याचारों और नेताओं की गिरफ्तारी के समाचार आ रहे थे । गांधी जी के सामने जुल्मों और अत्याचारों की कहानियाँ पेश करने के लिए बहुत से लोग आते थे । महादेव जी उनकी संक्षिप्त टिप्पणी करके गांधी जी को सुनाया करते थे । गांधी जी मुख्य राष्ट्रीय अंग्रेजी दैनिक ‘ बाम्बे क्रॉनिकल ‘ में इन सब विषयों पर लेख लिखा करते थे । कुछ दिनों में ‘ क्रॉनिकल ‘ के निडर अंग्रेज़ संपादक हार्नीमैन को सरकार ने देश निकाला की सज़ा देकर इंग्लैंड भेज दिया गया । उन दिनों बम्बई के तीन बड़े नेता थे- शंकरलाल वैंकट , डम्मर सोवानी और जमनादास द्वारकादास । ये नेता ‘ यंग इंडिया ‘ नाम का अंग्रेजी साप्ताहिक निकालते थे । हार्नीमैन के चले जाने से इसमें लिखनेवालों की कमी खलने लगी । फलस्वरूप इन लोगों ने गांधी जी से संपादक बनने की विनती की । तब गांधी जी ने उनकी इच्छा पूर्ण करते हुए ‘ यंग इंडिया ‘ का संपादन कार्य संभाल लिया । काम इतना बढ़ गया था कि साप्ताहि पत्र भी कम पड़ने लगा । ‘ यंग इंडिया ‘ को दो बार प्रकाशित किया गया बाद में ‘ नवजीवन ‘ नामक समाचार पत्र भी गांधी जी के पास आ गया । इन दोनों के लेख और टिप्पणियाँ आदि का काम महादेव देखने लगे थे । इन पत्रों में महादेव लेखन के अलावा गांधी जी के कार्यकलापों का विवरण भी देते थे ।', 'pdf_files\\9th_Hin_C5.pdf', '', '1009'),
(451, '', '', '', '903', 'अध्याय 6- रैदास के पद', 'यहाँ रैदास के दो पद लिए गए हैं। पहले पद ‘प्रभु जी, तुम चंदन हम पानी’ में कवि अपने आराध्य को याद करते हुए उनसे अपनी तुलना करता है। पहले पद में कवि ने भगवान् की तुलना चंदन, बादल, चाँद, मोती, दीपक से और भक्त की तुलना पानी, मोर, चकोर, धागा, बाती से की है। उसका प्रभु बाहर कहीं किसी मंदिर या मस्जिद में नहीं विराजता अर्थात कवि कहता है कि उनके आराध्य प्रभु किसी मंदिर या मस्जिद में नहीं रहता बल्कि कवि का प्रभु अपने अंतस में सदा विद्यमान रहता है। यही नहीं, कवि का आराध्य प्रभु हर हाल में, हर काल में उससे श्रेष्ठ और सर्वगुण संपन्न है। इसीलिए तो कवि को उन जैसा बनने की प्रेरणा मिलती है। दूसरे पद में भगवान की अपार उदारता, कृपा और उनके समदर्शी स्वभाव का वर्णन है। रैदास कहते हैं कि भगवान ने नामदेव, कबीर, त्रिलोचन, सधना और सैनु जैसे निम्न कुल के भक्तों को भी सहज-भाव से अपनाया है और उन्हें लोक में सम्माननीय स्थान दिया है। कहने का तात्पर्य यह है कि भगवान् ने कभी किसी के साथ कोई भेद-भाव नहीं किया। दूसरे पद में कवि ने भगवान को गरीबों और दीन-दुःखियों पर दया करने वाला कहा है। रैदास ने अपने स्वामी को गुसईआ (गोसाई) और गरीब निवाजु (गरीबों का उद्धार करने वाला) पुकारा है।', 'pdf_files\\9th_Hin_C6.pdf', '', '1009'),
(452, '', '', '', '903', 'अध्याय 7- दोह', 'रहीम के नीति के दोहे अत्यधिक प्रसिद्ध हैं । उन्होंने अनुभव के आधार पर दोहे की रचना की है । इसमें उन्होंने मानव जीवन के लिए उपयोगी सभी बातों का बड़ा मार्मिक वर्णन किया है ।  उन्होंने अपने पहले दोहे के माध्यम से प्रेम संबंधों को कभी न तोड़ने की प्रेरणा दी है । दूसरे दोहे में उन्होंने अपने मन की पीड़ा को मन में ही छिपाकर रखने की प्रेरणा दी है । तीसरे दोहे में बताया गया है कि एक परमात्मा का ध्यान करने से अन्य सब कार्य भी पूर्ण रूप से संपन्न हो जाते हैं । चौथे दोहे में – चित्रकूट को शांतिदायक और दुख निवारक स्थान कहा गया है । पाँचवें दोहे के अनुसार थोड़े – से अक्षरों में गहरा अर्थ छिपा होता है । छठे दोहे में – जिसकी जहाँ प्यास बुझती है , वही उसके लिए सागर के समान होता है । सातवें दोहे में – जो लोग प्रसन्न होने पर भी दान नहीं करते , वे पशु से भी हीन हैं । आठवें दोहे में – बिगड़ी हुई बात लाख सँवारने पर भी नहीं सँवरती । नवें दोहे में – बड़ों के प्रभाव के सामने छोटों की उपेक्षा नहीं करनी चाहिए । दसवें दोहे में – विपत्ति के समय अपनी पूँजी ही सहायक होती है । ग्यारहवें दोहे में – पानी , चमक और सम्मान- इन तीनों का जीवन में महत्त्व सर्वोपरि है ।', 'pdf_files\\9th_Hin_C7.pdf', '', '1009'),
(453, '', '', '', '903', 'अध्याय 8- गीत – अगीत', 'श्री रामधारी सिंह ‘ दिनकर ‘ द्वारा रचित कविता गीत – अगीत शृंगारिक चेतना से परिपूर्ण है । प्रस्तुत काव्य के द्वारा जीवन में प्रेम और कोमलता के महत्त्व को प्रतिपादित किया गया है । कवि मानता है कि प्रेम की पहचान प्रदर्शन में नहीं है बल्कि मौन भाव से सारी पीड़ा को पी जाने में है । कविता में मौन और मुखर दोनों अभिव्यक्तियों को सुंदर कहा गया है । कवि के अनुसार नदी कलकल स्वर में अपना सुख – दुख कहती चली जाती है । वह किनारे पड़े पत्थरों से कुछ – कुछ कहकर अपना हृदय हलका कर लेती है । उधर गुलाब मौन रहकर सुंदरता बिखेरता है । गुलाब मौन भाव में सोच में डूबा रहता है । वह अपने प्रेम भावों को प्रकट नहीं कर पाता । दोनों का अपना – अपना सौंदर्य हैं । प्रातः कालीन सूर्य की सुनहरी धूप का स्पर्श पाकर शुक गा पड़ता है जबकि शुकी उस गान को सुनकर प्रफुल्लित हो जाती है । दोनों ही अपनी – अपनी जगह सुंदर हैं । एक प्रेमी प्रेम में मग्न होकर आल्हा – गीत गाता है , वह अपने प्रेम को गीत के माध्यम से व्यक्त करता है , पर उसकी प्रेमिका नीम की छाया में चुपचाप गीत सुनती है कुछ बोलती नहीं पर सोचती अवश्य है कि भाग्य ने उसे गीत की कड़ी क्यों नहीं बना दिया । इस प्रकार अभिव्यक्ति के दो रूप हैं- मुखर और मौन । दोनों ही अपनी – अपनी जगह सुंदर हैं ।', 'pdf_files\\9th_Hin_C8.pdf', '', '1009'),
(454, '', '', '', '903', 'अध्याय 9- अग्नि पथ', 'प्रस्तुत कविता में कवि ने संघर्ष से भरे जीवन को ‘अग्नि पथ’ कहते हुए मनुष्य को यह संदेश दिया है कि हमें अपने जीवन के रास्ते में सुख रूपी छाँह की इच्छा न करते हुए अपनी मंशिल की ओर मेहनत के साथ बिना थकान महसूस किए बढ़ते ही जाना चाहिए। कविता में शब्दों की पुनरावृत्ति कैसे मनुष्य को आगे बढ़ने की प्रेरणा देती है, यह देखने योग्य है। प्रस्तुत कविता में कवि ने संघर्ष से भरे जीवन को ‘अग्नि पथ’ कहते हुए मनुष्य को यह संदेश दिया है कि जीवन में जब कभी भी कठिन समय आता है तो यह समझ लेना चाहिए कि यही कठिन समय तुम्हारी असली परीक्षा है। यदि मनुष्य को जीवन में सफल होना है तो कभी भी किसी भी कठिन समय में किसी की मदद नहीं लेनी चाहिए। मनुष्य को एक प्रतिज्ञा करनी चाहिए कि चाहे मंजिल तक पहुँचने के रास्ते में कितनी भी मुश्किलें क्यों न आए मनुष्य कभी भी मेहनत करने से थकेगा नहीं, कभी रुकेगा नहीं और ना ही कभी पीछे मुड़ कर देखेगा। जब कोई मनुष्य किसी कठिन रास्ते से होते हुए अपनी मंजिल की ओर आगे बढ़ता है तो उसका वह संघर्ष दूसरों के लिए प्रेरणा दायक होता है। कवि कहता है कि अपनी मंजिल पर वही मनुष्य पहुँच पाते हैं जो कड़ी मेहनत कर के आगे बढ़ते हैं।', 'pdf_files\\9th_Hin_C9.pdf', '', '1009'),
(455, 'English', 'Introduction', 'The Class 9 students can master the language by using the NCERT Solutions for Class 9 English Beehive at LMS. The questions from the textbook are solved to improve their command of the language. The solutions are carefully drafted by the teachers in a way to strengthen the vocabulary and help students to score good marks in the exam. The usage of a language like English is prominent in different fields, and students should be fluent in it. The linguistic themes are explained in a comprehensive way which helps students to grasp them effectively.', '901', 'Chapter 1 - The Fun They Had', 'The Fun They Had will help Class 9 students learn about this chapter in English Literature with great ease. The Fun They Had throws light on an interesting aspect of the technological world we will have in the future. Consequently, it is set in the future where two children discuss the way things functioned in the earlier days. Further, they talk about the ‘books’ which comprise of paper instead of the telebooks they have now. It is rather interesting to read about the conversation between the little kids. They get fascinated by the concept of ‘school’ which prevailed in the days of their grandparents. Moreover, they also talk about how those days were much more fun. The Fun They Had does show us the reality of technology taking over in the near future.', 'pdf_files\\9th_Eng_C1.pdf', 'Class 9', '1009'),
(456, '', '', '', '901', 'CHAPTER -2 The Sound of Music', 'The Sound of Music  is a great way for students in Class 9 to learn about the chapter in short. This chapter is about two music maestros and their lives. We will learn about multi-percussionist, Evelyn Glennie and Bismillah Khan, the shehnai player. The Sound of Music summary recaps the whole chapter in a simpler and easier form. In this chapter, students will learn about the interesting lives of the two musical legends. One part is about the Scottish musician, Evelyn and the other is about Indian legend, Bismillah Khan. Further, this chapter chooses these two musicians because of their interesting lives. It will help students gain insight into their struggles and hard work. You will learn how hard work and determination can serve us well. It stays true to its name and gives inside stories and facts behind the glitz and glamour of these musicians.', 'pdf_files\\9th_Eng_C2.pdf', '', '1009'),
(457, '', '', '', '901', 'CHAPTER 3 - The Little Girl', 'The Little Girl – As the title suggests, the little girl refers to the main characters of the story who goes by the name Kezia. Moreover, the main theme of the story is the relationship between parents and their children. Also, the writer Katherine Mansfield wishes to tell us that children share a very deep bond of love with their parents. Even though young children do not feel that their parents love and care for them because they are strict, and to them, many of their parents’ action appears unfair. Besides, when children grow up they realize that all the acts of their parents were favourable for them. In addition, all along the parents were afraid for them and below their strictness lies a heart full of love for them. Most importantly, this bond of love between parents and their children has been underlined through the little girl concept.', 'pdf_files\\9th_Eng_C3.pdf', '', '1009'),
(458, '', '', '', '901', 'CHAPTER 4 – A Truly Beautiful Mind', 'A Truly Beautiful Mind – This chapter is about Albert Einstein. The title of the chapter ‘A Truly Beautiful Mind’ refers to Albert Einstein as he was a great scientist. Moreover, this chapter is a short biography of his. Where they highlight some of his qualities. Also, the chapter shows Albert’s interest in Mathematics and Physics and his ordinary human attribute. However, the title – ‘A Truly Beautiful Mind’ may let you wonder how a scientist’s mind can be beautiful. It is because, in this lesson, we get to know about another aspect of his life. His other side that he believes in humanity. Moreover, he advocates world peace, non-violence his entire life. That’s why the title refers to him as a truly beautiful mind.', 'pdf_files\\9th_Eng_C4.pdf', '', '1009'),
(459, '', '', '', '901', 'CHAPTER 5 – The Snake and The Mirror', 'This is the snake and the mirror summary which is a story within a story. In this story, a writer tells us a story which he himself heard from a homoeopathic doctor. Furthermore, this story revolves around two aspects- the snake and the mirror. Moreover, in this story, a doctor reflects on a day in his youth, when he was unmarried. The doctor enters his room on a hot summer night and then he indulges in deep thinking. In the midst of it, the doctor had a sudden encounter with a snake as it fell on the doctor. The doctor went into shock, but soon the snake saw its reflection on a mirror nearby and made a move towards it. It seems that the snake was more interested in his own reflection than the doctor. Consequently, the doctor’s life was saved.', 'pdf_files\\9th_Eng_C5.pdf', '', '1009'),
(460, '', '', '', '901', 'CHAPTER 6 – My Childhood', 'My childhood deals with the famous biography “Wings of Fire” of the celebrated Indian APJ Abdul Kalam. My Childhood refers to a section in this book. This section or chapter talks about the early days’ of Kalam. Furthermore, the chapter gives us an idea of how the childhood of Abdul Kalam prepared him to become a successful scientist and president in the future. Much has to do with his upbringing which Kalam discusses in this section from “Wings of Fire”. Moreover, Kalam tells us about his parents and siblings here. He also mentions the important role of his friends in his life. In short, one can say, that in My Childhood, Kalam mentions everything that had an impact on his life. These things shaped him into the successful man he became in the future.', 'pdf_files\\9th_Eng_C6.pdf', '', '1009'),
(461, '', '', '', '901', 'CHAPTER 7 - Reach For the Top', 'Reach for the Top is a biographical story that tells us about the lives of two great women, Santosh Yadav and Maria Sharapova. It celebrates the achievements of these two strong ladies who achieved success despite hardships. One thing common between these two was that they defied all odds to pursue their passion and succeeded in it. Through Reach for the Top summary, students will learn how hard work and determination can help you go a long way. Moreover, it also shows us that in order to achieve immense success, we require determination, training, and sacrifice as well. It shows us that the path of success is not easy but the results are surely sweet and satisfying. Thus, this chapter serves as an inspiration for anyone looking to find some motivation to pursue their dreams and walk the path of success.', 'pdf_files\\9th_Eng_C7.pdf', '', '1009'),
(462, '', '', '', '901', 'CHAPTER 8 – Kathmandu', 'Kathmandu will help students learn about the story written by Vikram Seth, which is an excerpt from his book ‘Heaven Lake’. This story tells us about the author’s visit to the capital of Nepal, Kathmandu. We see that he was coming from China to visit India via hitchhiking. In this hitchhiking, he crosses Tibet and Nepal. Thus, this story gives us an account of his experience in Kathmandu. This travelogue gives an insight on his trip to the city and what he feels about it. On his trip to Kathmandu, Vikram visits the two most popular temples of the city. One is the Pashupatinath temple and the other is Baudhnath Stupa. He notices the difference between the two temples and the atmosphere surrounding them. Thus, through Kathmandu summary, we travel to the city without actually going there, through Vikram’s magical words.', 'pdf_files\\9th_Eng_C8.pdf', '', '1009'),
(463, '', '', '', '901', 'CHAPTER 9 – If I Were You', ' If I Were You will assist students in getting to know about this play in a simple manner. This play follows the life of a playwright who is named Gerrard. This play by Douglas James is an account of how Gerrard escapes a killer through his sheer cleverness. In this play, we see Gerrard is ready to leave for a rehearsal when he encounters an intruder. Thus, upon finding himself in a fix, Gerrard manages to convince the intruder to not kill him. We learn that the intruder was planning to assume Gerrard’s identity as the police were looking for him. Lucky for Gerrard, his cleverness and wit save him from getting killed. Gerrard not only successfully saves his own life but also catches a criminal and finds a new plot for his next play too. Thus, it is a very interesting story to read.', 'pdf_files\\9th_Eng_C9.pdf', '', '1009'),
(464, 'Science', 'Introduction', 'Science is an interesting subject. Students who want to take the Science stream in Class 11 should have a good command of the subject. Most of the topics in which students study in Class 9 will be further explained in higher classes. So, Class 9 Science builds the foundation of the students. It’s important that students should study Science in such a way that they understand the concepts thoroughly. Knowing the NCERT Syllabus for Class 9 Science will help students in their studies. Also, they can create a study plan for themselves. Here, we have provided the NCERT Syllabus for Class 9 Science.  The NCERT Syllabus helps in preparing the subject in a systematic manner. Most of the topics in Science are interrelated. So, students are suggested to study the topic in the same sequence as provided in the syllabus. They can also download the NCERT Syllabus for Class 9 in PDF format from the link provided below. After downloading, students must take the printout of the syllabus for their reference.', '902', 'Chapter 1 - Matter in our Surroundings', 'Matter in our surroundings class 9 notes- This is the 1st Chapter of Class 9th Science. Moreover, the matter is something that is everywhere. Everything is made up of matter. These things can be of a variety of sizes, textures, and shapes. Besides, the matter is made up of small particles. These particles can be classified as solid, liquid, and gas. Furthermore, the force of attraction is maximum in solids and minimum in gases. In addition, kinetic energy and constituents particles are minimum in solid and intermediate in liquids and maximum in gases. Moreover, the particles can move freely in gases and are restricted in solids.  The matter has inter-convertible means that we can change their state by changing pressure or temperature. Most noteworthy, by sublimation we can directly change a solid into a gas. Also, by deposition, we can directly change gas into solid. In addition, boiling is a phenomenon that changes liquid into the vapor state. Also, evaporation is a surface phenomenon in which particle changes into a vapor (gas) state. The rate of evaporation depends upon various factors like the exposed surface area, temperature, wind speed, and humidity. Besides, latent heat is also described in the chapter.', 'pdf_files\\9th_Sci_C1.pdf', '', '1009'),
(465, '', '', '', '902', 'Chapter 2 - Is Matter around Us Pure', 'Is Matter Around Us Pure Class 9 Notes- This is the second chapter of class 9th Science. Also, this chapter tells that matter can be made up of mixtures. Generally, the mixture contains more than one element or compounds in any proportion. Furthermore, we can separate them in pure substance-using appropriate separation techniques. Moreover, a solution is a homogenous mixture of two or more substances. The major component of a solution is referred to as solvent and minor as solute.  Most noteworthy, things that are insoluble in a solvent and have particles big enough that can be seen with naked eyes, form a suspension. Also, the suspension is a heterogeneous mixture. Moreover, collides are that heterogeneous mixtures in which particle size is small and can’t be seen with naked eyes but they are big enough to scatter light. Besides, pure substances can be compounds or elements.', 'pdf_files\\9th_Sci_C2.pdf', '', '1009'),
(466, '', '', '', '902', 'Chapter 3 - Atoms and Molecules', 'Atoms and Molecules Class 9 Notes- This is the 3rd chapter of class 9th Science. Furthermore, in this chapter, we have learned that during a chemical reaction the mass of reactants and products remains unchanged. Moreover, this is known as the law of conservation of mass. Furthermore, the law of definite proportions states that in a pure chemical compound, elements are always present in definite proportions by mass. In addition, the atom is the smallest particle that cannot exist freely. Besides, a molecule is the smallest particle of an element or compound that can exist independently.  Besides, the chemical formula of a compound shows its components elements and number of atoms. In addition, ions are a cluster of atoms. Also, cations are positively charged ions and anions are negatively charged ions. Furthermore, the chemical formula of a molecular compound is determined by the valency of each element.', 'pdf_files\\9th_Sci_C3.pdf', '', '1009'),
(467, '', '', '', '902', 'Chapter 4 - Structure of the Atom', 'An atom is present at the most basic level in everything we see around us. In fact, atoms compose every living organism. Matter makes up every non-living thing around us such as tables, chairs, water, etc. But the building blocks of matter are atoms. Thus, the composition of everything, living or non-living, is atoms. Let us study about atom and structure of atom.', 'pdf_files\\9th_Sci_C4.pdf', '', '1009'),
(468, '', '', '', '902', 'Chapter 5 - The Fundamental Unit of Life', 'The cell is regarded as a fundamental structural and functional unit of life because the basic structure of all the living organisms is made up of cells. Hence cell is known as the structural unit of life. Let us learn about cell study and cell theory.', 'pdf_files\\9th_Sci_C5.pdf', '', '1009'),
(469, '', '', '', '902', 'Chapter 6 - Tissues', 'How would you react if I say that your body is made up of building blocks? I bet you would just laugh it off! If you look at things from a science perspective, then the building blocks that I am talking about are nothing but the cells and tissue. Even plants are made of cells and tissue! Every living organism is made up of cells that form the basic unit of life. Let us know more about these tissues!', 'pdf_files\\9th_Sci_C6.pdf', '', '1009'),
(470, '', '', '', '902', 'Chapter 7 - Motion', 'This article deals with motion class 9 notes. Every day we notice some objects which are in a state of rest while others are in motion. Furthermore, one can notice motion in several aspects of life. Birds flying in the sky, fish swimming in the ocean, and water flowing in the river. All of these are examples of motion. Something as small as an atom or as big as a galaxy is all in motion. Moreover, one can detect motion when the position of an object changes with time. However, there are certain situations where indirect evidence detects motion. Evidence of indirect motion is the movement of air which we can observe from the movement of dust.  The motion refers to a change of position. Furthermore, one can describe motion by the distance traveled or displacement. Moreover, an object’s movement can be uniform or non-uniform. This depends on whether the velocity is changing or is uniform. Also, one can define the speed of an object as the distance covered per unit time. On the other hand, velocity refers to displacement per unit time. Acceleration is the change in velocity which takes place per unit time. One can certainly depict the uniform and non-uniform motions through the help of graphs. Equations are used to describe an object’s motion.', 'pdf_files\\9th_Sci_C7.pdf', '', '1009'),
(471, '', '', '', '902', 'Chapter 8 - Forces and Laws of Motion', 'This chapter of Class 9 Science deals in force and laws of motion. Students have already been made familiar with the motion of an object along a straight line. This has been done with reference to its position, velocity and acceleration. You already know that motion can either be uniform or non-uniform. However, students don’t know yet what causes the motion. The Force and laws of motion class 9 notes will answer such similar questions. This chapter helps you learn about why speed of an object changes with time. Moreover, you can learn whether all motions require a cause or not.  Other than that, it will come in handy in explaining the nature of the cause of motions. After this chapter, one can successfully learn about all the three laws of motion by Newton. Furthermore, it also elucidates the force of friction. The chapter will explain in detail about force and how this common phenomenon is much more than what meets the eye. Similarly, it explains about the balanced and unbalanced forces through real life examples for a better understanding. The topics of inertia and mass are also covered over here. In other words, it allows students to easily understand the laws of motion.', 'pdf_files\\9th_Sci_C8.pdf', '', '1009'),
(472, '', '', '', '902', 'Chapter 9 - Gravitation', 'Earth attracts all things towards it through an unseen force of attraction. This force of attraction is called as gravitation or gravitational pull. You must have noticed that every time you throw an object upwards, it reaches a certain height and then falls down on the earth’s surface. So, we can conclude that these objects move under the gravitational forces or gravitational pull of the Earth which is nothing but a force of attraction. Gravitational force or gravity of earth is the reason why you remain on earth and it pulls you down. In this article, let us take a look at gravitation for class 9.', 'pdf_files\\9th_Sci_C9.pdf', '', '1009'),
(473, '', '', '', '902', 'Chapter 10 - Work and energy', 'Work and Energy chapter in Class 9 Science deals in work and how it is helpful in understanding various natural phenomena. Other than that, it also explains the concept of energy and what things possess energy. Similarly, it also deals in the field of power. In your daily life, you might come across various things that make you wonder about them. For instance, you see a pen lying, do you think it possesses any energy? Or if you write with that pen, are you doing any work? If yes, does it require power? All these questions will be answered through work and energy class 9 notes.  Furthermore, students will also learn about the law of conservation of energy. It gives you a clearer picture of what happens when energy transforms. Similarly, it also throws light upon the various types of energy like kinetic, potential, heat, chemical, mechanical and more. In addition to learning about power, students will also study the unit of power and energy. Thus, work and energy class 9 notes are very essential for understanding this.', 'pdf_files\\9th_Sci_C10.pdf', '', '1009'),
(474, '', '', '', '902', 'Chapter 11 - Sound', 'The chapter of Sound in Class 9 Science is essential due to the role it plays in making students understand it. It is natural that you hear a number of sounds every day that come from a lot of different sources. All this is a mixture of sounds from humans, machines, animals and more. However, you can easily identify the sound from its source. Thus, Sound class 9 notes will let you understand how you are able to do so. It also comes in handy in learning all about the human ear. Furthermore, it explains its functions and more.  Not only that, but it also explains how different beings communicate with each other using sounds. Sound class 9 notes will be very useful in discussing the use of energy in producing any kind of sound. Similarly, you will be able to identify the kind of energy you will use for producing any sound. The transmission of sound from one medium to another and how we perceive it will also be explained here. Thus, it carries a lot of importance.', 'pdf_files\\9th_Sci_C11.pdf', '', '1009'),
(475, '', '', '', '902', 'Chapter 12 - Improvement in Food Resources', 'This Chapter of Class 9 Science is all about food resources and how to enhance them. In other words, this chapter deals with how the quality of the food we consume is deteriorating. Similarly, it will teach you ways on how to enhance this dropping quality of the food resources. This will help in enhancing the overall condition of the crops, seeds and more for a better outcome. Furthermore, Improvement in food resources class 9 notes also explains the importance of agriculture and animal husbandry in obtaining food resources.  Moreover, it will give a number of practical suggestions which will be useful in improving the food resources. As it is our country is quite populated and faces a lot of poverty. In accordance with that, the food quality keeps dropping due to a number of issues. This chapter aims to bring out solutions to such issues so that we may develop as a nation. It will teach how to enhance the crop variety in addition to managing the crop production efficiently. Similarly, animal husbandry will be taught in detail for a clearer understanding. Thus, Improvement in food resources class 9 notes will be very beneficial.', 'pdf_files\\9th_Sci_C12.pdf', '', '1009'),
(476, 'Social Science', 'Introduction', 'It primarily includes the subjects of history, geography, economics, civics and sociology. Through all of that, the elements of ethics, psychology, philosophy, anthropology, art and literature are incorporated into the subject field itself. Social studies can also be referred to as social sciences. It\'s a field which deals with human behavior, relationships, resources, and institutions. Specific topics within social studies that are studied in school coursework include geography, anthropology, economics, history, sociology, political science, and civics.', '907', 'Chapter 1 - What is Democracy? Why Democracy? ', 'We are a part of a democratic society. Indian Constitution is a part of the democracy. But what exactly is the democracy? How did it come into existence? How does it work? Let’s find out more about it.', 'pdf_files\\9th_Soc_Sci_C1.pdf', '', '1009'),
(477, '', '', '', '907', 'Chapter 2 - Constitutional Design ', 'India had a tough struggle to achieve independence. There was a general consensus about the way democratic India would shape after Independence. There were various opinions involved that were taken into consideration to form the democratic India that we see today. We will look at the making of the Indian Constitution and its constitutional design in brief.', 'pdf_files\\9th_Soc_Sci_C2.pdf', '', '1009'),
(478, '', '', '', '907', 'Chapter 3 - Electoral Politics ', 'What actually makes a country democratic? You must have heard that Democracy is the rule of the people, for the people and by the people. To ensure this very ‘rule by the people’, elections are held. Hence, elections are the process by which people select their representatives in the government.', 'pdf_files\\9th_Soc_Sci_C3.pdf', '', '1009'),
(479, '', '', '', '907', 'Chapter 4 - Working Of Institution', 'You go to school, what is a school? It’s an institution where people study. Right? Similarly, we can call India an institution wherein people of India work only to contribute towards its institution. But who heads these institutions? How do they work? Let us study in-depth the working of institutions.', 'pdf_files\\9th_Soc_Sci_C4.pdf', '', '1009'),
(480, '', '', '', '907', 'Chapter 5 - Democratic Rights', 'We live in a democratic system. And this democracy provides us with some right. But what are these right? How many rights do we have? What are fundamental rights? Let’s find out more about the Democratic Rights in the section below.', 'pdf_files\\9th_Soc_Sci_C5.pdf', '', '1009'),
(481, 'Social Economics', 'Introduction', 'Social economics studies the economic and social issues such as: how values, attitudes, and other factors such as social standards and ethics have an impact on the economy.Economics talks about the study of production, distribution, and consumption of goods and services.', '906', 'Chapter 1 - The Story of Village Palampur', 'The purpose of the story is to introduce some basic concepts relating to production and this we do through a story of a hypothetical village called Palampur.* Farming is the main activity in Palampur, whereas several other activities such as small scale manufacturing, dairy, transport, etc. are carried out on a limited scale. These production activities need various types of resources — natural resources, manmade items, human effort, money, etc. As we read through the story of Palampur, we will learn how various resources combine to produce the desired goods and services in the village.', 'pdf_files\\9th_Ecnms_C1.pdf', '', '1009'),
(482, '', '', '', '906', 'Chapter 2 - People as Resource', 'The chapter \'People as Resource\' is an effort to explain population as an asset for the economy rather than a liability. Population becomes human capital when there is investment made in the form of education, training and medical care. In fact, human capital is the stock of skill and productive knowledge embodied in them. \'People as Resource\' is a way of referring to a country’s working people in terms of their existing productive skills and abilities. Looking at the population from this productive aspect emphasises its ability to contribute to the creation of the Gross National Product. Like other resources population also is a resource — a \'human resource\'.', 'pdf_files/9th_Ecnms_C2_kzORbfm.pdf', '', '1009'),
(483, '', '', '', '906', 'Chapter 3 - Poverty as a Challenge', 'This chapter deals with one of the most difficult challenges faced by independent India—poverty. After discussing this multi-dimensional problem through examples, the chapter discusses the way poverty is seen in social sciences. Poverty trends in India and the world are illustrated through the concept of the poverty line. Causes of poverty as well as anti-poverty measures taken by the government are also discussed. The chapter ends with broadening the official concept of poverty into human poverty.', 'pdf_files/9th_Ecnms_C3_yty28AB.pdf', '', '1009'),
(484, '', '', '', '906', 'Chapter 4 - Food Security in India', 'Food security means availability, accessibility and affordability of food to all people at all times. The poor households are more vulnerable to food insecurity whenever there is a problem of production or distribution of food crops. Food security depends on the Public Distribution System (PDS) and government vigilance and action at times, when this security is threatened.', 'pdf_files/9th_Ecnms_C4_iihoiYx.pdf', '', '1009'),
(485, 'History', 'Introduction', 'Class 9 History offer an in-depth analysis of major events in our past, their impact on present-day societies, and how they can help us understand our present better.Class 9 social science has 4 subjects and History is one of them. This Class 9 history is divided into 2 parts, the first as Events and Processes and the second as Livelihoods, Economies, and Societies. The parts are further divided into different chapters like The French Revolution, Europe, and Russian Revolution, Nazis and Hitler, etc. ', '904', 'Chapter 1 - The French Revolution', 'In the year 1789, French Revolution started leading to a series of the events started by the middle class. The people had revolted against the cruel regime of the monarchy. This revolution had put forth the ideas of liberty, fraternity as well as equality.  The start of the revolution took place on the morning of 14th July 1789 in the state of Paris with the storming of the Bastille which is a fortress prison. The Bastille stood for the repressive power of the king due to which it was hated by all. The revolt became so strong that the fortress was eventually demolished.', 'pdf_files\\9th_Soc_C1.pdf', '', '1009');
INSERT INTO `learning_stdclass` (`id`, `subjects`, `intro`, `description`, `subid`, `chaptername`, `chapterdis`, `pdf`, `classes`, `classid`) VALUES
(486, '', '', '', '904', 'Chapter 2 -Socialism In Europe And The Russian  REVOLUTION', 'Socialism in Europe and the Russian Revolution lets the students discover the incidents that took place in the revolution and how socialism was brought to Europe. This chapter is a bit complex to understand for which students need beneficial study material. We aim to do exactly that with our easy to understand solutions. Most importantly, they will enable the students to grasp the concept in a comprehensible way.', 'pdf_files\\9th_Soc_C2.pdf', '', '1009'),
(487, '', '', '', '904', 'Chapter 3 - Nazism and The Rise of Hitler', 'The Second World War was the most destructive event of modern times and the first time when nuclear weapons were used. The warring countries were divided into two military alliances—the allied powers and the axis powers. The allied powers were led by the United States, the United Kingdom and France. The axis powers were led by Germany, Italy and Japan.  Germany was the reason for conflict led by Adolf Hitler and his National Socialist German Workers’ Party or the Nazi Party. Adolf Hitler was the leader of Germany from 1933 to 1945. During his government, Germany was called as Nazi Germany.  Nazi Germany followed the ideology called Nazism or National Socialism that promoted violent practices to restore German pride. In September 1939, to conquer more land and resources for Germany, Hitler invaded Poland, sparking off world war two.  In the end of World War in 1945, the Allied Powers demanded justice from the defeated Axis Powers, especially Germany. A Tribunal was set up in the German city of Nuremberg to prosecute Nazi leaders. Nazi Germany’s efforts to eliminate the Jews and other communities are referred to as genocidal crimes. The term Genocide was coined in 1944 to describe the act of destroying a community based on nationalism, racism, religion or ethnicity.  At the Nuremberg Trials Hitler and his Nazi government were accused of committing genocide against Jews. Hitler was not tried at Nuremberg because he committed suicide a month before world war two ended.  The genocide committed by Nazi Germany between 1933 and 1945 is referred to as the Holocaust.', 'pdf_files\\9th_Soc_C3.pdf', '', '1009'),
(488, '', '', '', '904', 'Chapter 4 - Forest Society and  Colonialism', 'One of the pressing needs of our times is the conservation of nature and the natural resources. One of the most important natural resources for any country is its forests. In India, the forests have been disappearing at a very high rate. This phenomenon is called deforestation. During the industrialization phase of 1700 and 1995, around 13.9 million square km of the forest land was cleared for industrial uses, agriculture, pasture, and fuelwood. Although deforestation started many centuries ago it became more organized during the colonial period. Forest Society and Colonialism is an important aspect of our life!  Today, we’re discussing Forest Society and Colonialism and certain important aspects related to the topic such as the advantages of forests, the reasons for deforestation, commercial forestry, etc. Towards the end of the article, we’ve also included some important questions and answers pertaining to the CBSE Class 9 Social Science chapter for Forest Society and Colonialism.', 'pdf_files\\9th_Soc_C4.pdf', '', '1009'),
(489, '', '', '', '904', 'Chapter 5 -Pastoralistsin the Modern World', 'It may surprise you but there are still millions of nomads and nomadic communities around the world who have no permanent homes. One such type of nomads are pastoral nomads who are cattle herders and roam around in search for pastures for their cattle. Let us learn more about them.', 'pdf_files\\9th_Soc_C5.pdf', '', '1009'),
(490, 'Sanskrit', 'Introduction', 'कक्षा 10 संस्कृत – शेमुषी भाग 2 के प्रश्न उत्तर तथा सभी पाठों का हिंदी में अनुवाद तिवारी अकादमी से मुफ्त प्राप्त कर सकते हैं। दसवीं कक्षा संस्कृत के समाधान सीबीएसई सत्र 2023-24 के लिए संशोधित किए गए हैं। पाठ का संस्कृत से हिंदी अनुवाद सरल तथा आसान भाषा में दिया गया है। 10वीं कक्षा के छात्र यदि संस्कृत को अपने कैरियर के रूप में अपनाना चाहते है तो कक्षा 10 संस्कृत की तीनों पुस्तकों को ध्यान से पढ़ें। तिवारी अकादमी पर सभी समाधान निशुल्क उपलब्ध हैं और इन्हें प्राप्त करने के लिए किसी लॉग इन या पासवर्ड की भी आवश्यकता नहीं पड़ती है।', '1005', 'Chapter 1 - शुचिपर्यावरणम्', 'कक्षा 10 संस्कृत अध्याय 1 – प्रथम: पाठ: शुचिपर्यावरणम्‌ शेमुषी भाग 2 के प्रश्न उत्तर हिंदी अनुवाद सीबीएसई सत्र 2023-24 के लिए विद्यार्थी यहाँ से निशुल्क प्राप्त कर सकते हैं। कक्षा 10 संस्कृत के पाठ 1 अभ्यास के सभी प्रश्न उत्तरों के साथ साथ, पूरे पाठ का हिंदी अनुवाद भी दिया गया है ताकि किसी विद्यार्थी को अध्याय समझने में कोई दिक्कत न आए। तिवारी अकादमी वेबसाइट तथा ऐप में ये सभी समाधान मुफ़्त दिए गए हैं।', 'pdf_files/10th_Sans_C1.pdf', '', '1010'),
(491, '', '', '', '1005', 'Chapter 2 - बुद्धिर्बलवती सदा', 'अध्याय 2 – द्वितीय: पाठ: बुद्धिर्बलवती सदा शेमुषी भाग 2 के प्रश्न उत्तर हिंदी अनुवाद सीबीएसई सत्र 2023-24 के अनुसार यहाँ दिए गए हैं। कक्षा 10 संस्कृत पाठ 2 में हम पढ़ते हैं कि किस प्रकार सुबुद्धि से बड़ी बड़ी समस्याओं को भी हल किया जा सकता है जैसे बुद्धिमती ने अपने विवेक से शेर को भगा दिया था। पाठ को अच्छी तरह से समझने के लिए, विद्यार्थी पाठ का हिंदी अनुवाद प्रयोग कर सकते हैं।', 'pdf_files/10th_Sans_C2.pdf', '', '1010'),
(492, '', '', '', '1005', 'Chapter 3 -  शिशुलालनम', ' अध्याय 3 – तृतीय: पाठ: शिशुलालनम्‌ शेमुषी भाग 2 के अभ्यास के प्रश्नों के विस्तार से उत्तर हिंदी अनुवाद सीबीएसई सत्र 2023-24 के लिए विद्यार्थी यहाँ से मदद ले सकते हैं। कक्षा 10 संस्कृत पाठ 3 में हमें राम के साथ लव और कुश के संवाद तथा उनकी सुन्दरता का व्याख्यान देखने को मिलता है। पाठ का हिंदी अनुवाद दिया गया है ताकि प्रत्येक छात्र पूरे पाठ को आसानी से समझ सके।', 'pdf_files/10th_Sans_C3.pdf', '', '1010'),
(493, '', '', '', '1005', 'Chapter 4 - जननी तुल्यवत्सला', 'संस्कृत अध्याय 4 – चतुर्थ: पाठ: जननी तुल्यवत्सला शेमुषी भाग 2 के सभी प्रश्न उत्तर और रिक्त स्थान सीबीएसई सत्र 2023-24 के लिए यहाँ से प्राप्त किए जा सकते हैं। 10वीं संस्कृत पाठ 4 का हिंदी अनुवाद तथा पाठ के अंत में दिए गए अभ्यास के प्रश्न उत्तर विद्यार्थियों के लिए सरल भाषा में प्रस्तुत किए गए हैं ताकि सभी विद्यार्थी इसे आसानी से समझकर परीक्षा में अच्छे अंक ला सकें।', 'pdf_files/10th_Sans_C4.pdf', '', '1010'),
(494, '', '', '', '1005', 'Chapter 5 - सुभाषितानि', 'संस्कृत अध्याय 5 – पञ्चम: पाठ: सुभाषितानि शेमुषी भाग 2 के अभ्यास में दिए गए सभी प्रश्न उत्तर विद्यार्थी सीबीएसई सत्र 2023-24 के लिए यहाँ से प्राप्त कर सकते हैं। कक्षा 10 संस्कृत के पाठ 5 में संस्कृत के सार्वभौमिक सत्य को बताने वाले पदों को बहुत ही मार्मिक रूप से प्रस्तुत किया गया है। एक एक पद का हिंदी अनुवाद सरल भाषा में यहाँ दिया गया है ताकि किसी भी छात्र को कोई परेशानी न हो।', 'pdf_files/10th_Sans_C5.pdf', '', '1010'),
(495, '', '', '', '1005', 'Chapter 6 - सौहार्दं प्रकृतेः शोभा', 'अध्याय 6 – षष्ठ: पाठ: सौहार्दं प्रकृते: शोभा शेमुषी भाग 2 के प्रश्न उत्तर और शब्द अर्थ शैक्षणिक सत्र 2023-24 के लिए यहाँ दिए गए हैं। कक्षा 10 संस्कृत के समाधान और हिंदी अनुवाद सीबीएसई तथा राजकीय बोर्ड दोनों के लिए बहुत उपयोगी हैं। 10वीं कक्षा संस्कृत के पाठ 6 में हम पढ़ते हैं कि किस प्रकार हमें सभी प्राकृतिक तत्वों से तालमेल बनाकर चलना चाहिए और सबका आदर करना चाहिए।', 'pdf_files/10th_Sans_C6.pdf', '', '1010'),
(496, '', '', '', '1005', 'Chapter 7 -  विचित्रः साक्षी', 'कक्षा 10 संस्कृत अध्याय 7 – सप्तम: पाठ: विचित्र: साक्षी शेमुषी भाग 2 के प्रश्न उत्तर और अभ्यास के हल सीबीएसई और राजकीय बोर्ड के सत्र 2023-24 के लिए यहाँ से मुफ़्त प्राप्त किए जा सकता है। कक्षा 10 संस्कृत पाठ 7 एक बहुत ही रोचक कहानी हैं जिसमें हम देखते हैं कि किस प्रकार न्यायधीश साक्ष्य के आभाव में भी सही और न्यायसंगत फैसला सुनते हैं। पाठ का हिंदी अनुवाद भी सरल भाषा में विस्तार से दिया गया है।', 'pdf_files/10th_Sans_C7.pdf', '', '1010'),
(497, '', '', '', '1005', 'Chapter 8 - सूक्तयः', 'अध्याय 8 – अष्टम: पाठ: सूक्तय: शेमुषी भाग 2 के प्रश्न उत्तर तथा पाठ का हिंदी अनुवाद सीबीएसई सत्र 2023-24 के लिए संशोधित किए गए हैं। कक्षा 10 संस्कृत के पाठ 8 की कहानी तमिल भाषा के एक प्रसिद्ध ग्रन्थ से ली गई है जिसमें मानव जाति के लिए जीवन उपयोगी सत्य को बताया गया है। यहाँ दिए गए हिंदी अनुवाद की मदद से विद्यार्थी पूरे पाठ को आसानी से समझकर अभ्यास के प्रश्नों को स्वयं कर सकते हैं।', 'pdf_files/10th_Sans_C8.pdf', '', '1010'),
(498, '', '', '', '1005', 'Chapter 9 - भूकंपविभीषिका', 'अध्याय 9 – नवम: पाठ: भूकम्पविभीषिका शेमुषी भाग 2 के उत्तर और पाठ का हिंदी अनुवाद शैक्षणिक सत्र 2023-24 के लिए यहाँ से निशुल्क प्राप्त किए जा सकते हैं। कक्षा 10 संस्कृत के ये समाधान सीबीएसई बोर्ड के साथ साथ अन्य राजकीय बोर्ड के विद्यार्थियों के लिए भी उपयोगी हैं। यहाँ दिए गए पाठ के हिंदी अनुवाद की मदद से विद्यार्थी परीक्षा की तैयारी कर सकते हैं।', 'pdf_files/10th_Sans_C9.pdf', '', '1010'),
(499, '', '', '', '1005', 'Chapter 10 - अनयोक्त्यः', ' अध्याय 10 – दशम: पाठ: अन्योक्तय: शेमुषी भाग 2 के प्रश्न उत्तर और अभ्यास के अन्य प्रश्नों के हल सीबीएसई सत्र 2023-24 के लिए यहाँ दिए गए हैं। यदि किसी की प्रशंशा या निंदा, किसी दूसरे से करते हैं तो उसका फल क्या मिलता है। कक्षा 10 संस्कृत पाठ 10 में यही समझाने का प्रयत्न किया गया है। यहाँ पूरे पाठ का हिंदी में अनुवाद भी दिया गया है ताकि पाठ का सारांश आसानी से समझ आ सके।', 'pdf_files/10th_Sans_C10.pdf', '', '1010'),
(500, 'English', 'Introduction', 'They say faith can move mountains. But what should we put our faith in? This is the question this story delicately poses. Lencho is a farmer who writes a letter to God when his crops are ruined, asking for a hundred pesos. Does Lencho’s letter reach God? Does God send him the money? Think what your answers to these questions would be, and guess how the story continues, before you begin to read it', '1001', 'Chapter 1 - A Letter To God', 'They say faith can move mountains. But what should we put our faith in? This is the question this story delicately poses. Lencho is a farmer who writes a letter to God when his crops are ruined, asking for a hundred pesos. Does Lencho’s letter reach God? Does God send him the money? Think what your answers to these questions would be, and guess how the story continues, before you begin to read it', 'pdf_files/10th_Eng_C1_JuRmsrj.pdf', 'Class 10', '1010'),
(501, '', '', '', '1001', 'Chapter 2 -  Nelson Mandela Long Walk To Freedom ', 'Apartheid’ is a political system that separates people according to their race. Can you say which of the three countries named below had such a political system until very recently? (i) United States of America (ii) South Africa (iii) Australia • Have you heard of Nelson Mandela? Mandela, and his African National Congress, spent a lifetime fighting against apartheid. Mandela had to spend thirty years in prison. Finally, democratic elections were held in South Africa in 1994, and Mandela became the first black President of a new nation', 'pdf_files/10th_Eng_C2_raMUYju.pdf', '', '1010'),
(502, '', '', '', '1001', 'Chapter 3 -  Two Stories About Flying', 'Since the earliest times, humans have dreamt of conquering the skies. Here are two stories about flying. I. A young seagull is afraid to fly. How does he conquer his fear? II. A pilot is lost in storm clouds. Does he arrive safe? Who helps him?', 'pdf_files/10th_Eng_C3_CGkKdQq.pdf', '', '1010'),
(503, '', '', '', '1001', ' Chapter 4 -  From The Diary Of Anne Frank', 'Anneliese Marie ‘Anne’ Frank (12 June 1929 – February/March 1945) was a German – born Jewish girl who wrote while in hiding with her family and four friends in Amsterdam during the German occupation of the Netherlands in World War II. Her family had moved to Amsterdam after the Nazis gained power in Germany but were trapped when the Nazi occupation extended into the Netherlands. As persecutions against the Jewish population increased,', 'pdf_files/10th_Eng_C4.pdf', '', '1010'),
(504, '', '', '', '1001', 'Chapter 5 - Glimpses Of India', 'OUR elders are often heard reminiscing nostalgically about those good old Portuguese days, the Portuguese and their famous loaves of bread. Those eaters of loaves might have vanished but the makers are still there. We still have amongst us the mixers, the moulders and those who bake the loaves. Those age-old, timetested furnaces still exist. The fire in the furnaces has not yet been extinguished. The thud and jingle of the traditional baker’s bamboo, heralding his arrival in the morning, can still be heard in some places. Maybe the father is not alive but the son still carries on the family profession. These bakers are, even today, known as pader in Goa', 'pdf_files/10th_Eng_C5.pdf', '', '1010'),
(505, '', '', '', '1001', 'Chapter 6 - Mijibil The Otter ', 'Gavin Maxwell lives in a cottage in Camusfearna, in the West Highlands in Scotland. When his dog Jonnie died, Maxwell was too sad to think of keeping a dog again. But life without a pet was lonely... Read what happened then, in Maxwell’s own ', 'pdf_files/10th_Eng_C6.pdf', '', '1010'),
(506, '', '', '', '1001', 'Chapter 7 - Madam Rides The Bus', 'In this sensitive story, an eight-year old girl’s first bus journey into the world outside her village is also her induction into the mystery of life and death. She sees the gap between our knowing that there is death, and our understanding of it.', 'pdf_files/10th_Eng_C7.pdf', '', '1010'),
(507, '', '', '', '1001', 'Chapter 8 - The Sermon At Benares', 'GAUTAMA Buddha (563 B.C. – 483 B.C.) began life as a prince named Siddhartha Gautama, in northern India. At twelve, he was sent away for schooling in the Hindu sacred scriptures and four years later he returned home to marry a princess. They had a son and lived for ten years as befitted royalty. At about the age of twenty-five, the Prince, heretofore shielded from the sufferings of the world, while out hunting chanced upon a sick man, then an aged man, then a funeral procession, and finally a monk begging for alms. These sights so moved him that he at once went out into the world to seek enlightenment concerning the sorrows he had witnessed. He wandered for seven years and finally sat down under a peepal tree,', 'pdf_files/10th_Eng_C8.pdf', '', '1010'),
(508, '', '', '', '1001', 'Chapter 9 - The Proposal', 'Preparations for a Russian Wedding: A Russian wedding is very simple. The planning only includes arranging for rings, brides’ dress, cars, and a reception. Earlier, the bride’s family paid for the reception, but now-a-days brides’ and grooms’ families usually share expenses. A Russian wedding lasts for two days, some weddings last as long as a week, and the occasion becomes something to remember for years. The necessary part of the wedding ceremony is a wedding procession of several cars. The best friends of the groom/ bride meet before the wedding a few times, make posters, write speeches and organise contests. When the groom arrives to fetch the bride for the registration, he has to fight to get her! Russians usually live in apartments in tall buildings, and the groom has to climb several stairs to reach his bride. But at each landing he must answer a question to be allowed to go up. The bride’s friends ask difficult questions (sometimes about the bride, sometimes just difficult riddles), and the groom must answer with the help of his friends. For example, he may be shown a few photos of baby girls and he must say which one his bride is. If he guesses wrong, he must pay cash to move ahead.', 'pdf_files/10th_Eng_C9.pdf', '', '1010'),
(509, 'Maths', 'Introduction', 'Class 10 maths is outlined to impart the knowledge of analytical and practical skills in students. It develops a basic understanding of applying maths, for instance, using trigonometric functions to calculate the height or applying algebraic formulas to solve real-life problems.', '1004', 'Chapter 1 - Real Numbers', 'In Class IX, you began your exploration of the world of real numbers and encountered irrational numbers. We continue our discussion on real numbers in this chapter. We begin with two very important properties of positive integers in Sections 1.2 and 1.3, namely the Euclid’s division algorithm and the Fundamental Theorem of Arithmetic', 'pdf_files\\10th_Math_C1.pdf', '', '1010'),
(510, '', '', '', '1004', 'Chapter 2 - Polynomials', 'In mathematics, a polynomial is an equation composed of coefficients and variables, often known as indeterminates. As the name implies, poly means many, and nominal means terms, therefore a polynomial represents many terms. Polynomials are often the sum or difference of variables and exponents.', 'pdf_files/10th_Math_C2.pdf', '', '1010'),
(511, '', '', '', '1004', 'Chapter 3 - Pair Of Linear Equations In Two Variables', 'A pair of linear equations in two variables, which has a solution, is called a consistent pair of linear equations. A pair of linear equations which are equivalent has infinitely many distinct common solutions. Such a pair is called a dependent pair of linear equations in two variables', 'pdf_files/10th_Math_C3.pdf', '', '1010'),
(512, '', '', '', '1004', 'Chapter 4 - Quadratic Equations', 'A quadratic equation is a second-degree equation. This signifies it has at least one squared phrase. The usual formula for solving quadratic equations is \'ax² + bx + c = 0\', where a, b, and c are constants or numerical coefficients. \'X\' represents an unknown variable.', 'pdf_files/10th_Math_C4.pdf', '', '1010'),
(513, '', '', '', '1004', 'Chapter 5 - Arithmetic Progressions', 'An arithmetic progression, also known as an arithmetic sequence (AP), is a sequence of numbers in which the difference between each subsequent term and the preceding term remains constant throughout the sequence. The constant difference is known as the common difference of the arithmetic progression.', 'pdf_files/10th_Math_C5.pdf', '', '1010'),
(514, '', '', '', '1004', 'Chapter 6 - Triangles', 'A triangle contains three sides, three angles, and three vertices. Triangle ABC, represented as Δ ABC (see Fig. 7.1), has three sides (AB, BC, CA), three angles (∠ A, ∠ B, ∠ C), and three vertices (A, B, and C). In Chapter 6, you also learned the properties of triangles.', 'pdf_files/10th_Math_C6.pdf', '', '1010'),
(515, '', '', '', '1004', 'Chapter 7 - Coordinate Geometry', 'A coordinate plane is a two-dimensional plane produced by the intersection of two perpendicular lines, the x-axis and y-axis. This formula is used to identify the locations where a line divides into two equal halves.', 'pdf_files/10th_Math_C7.pdf', '', '1010'),
(516, '', '', '', '1004', 'Chapter 8 - Introduction To Trigonometry', 'Trigonometry is a discipline of mathematics that studies the relationships between triangles\' sides and angles. The term trigonometry is derived from the Latin translation of the Greek words for triangle (trigonon) and measure (metron). The term \'trigonometry\' comes from the Greek terms \'tri\' (meaning three), \'gon\' (meaning sides), and\'metron\' (meaning measurement). Trigonometry is the study of the relationships between a triangle\'s sides and angles.', 'pdf_files/10th_Math_C8.pdf', '', '1010'),
(517, '', '', '', '1004', 'Chapter 9 - Some Applications Of Trigonometry', 'The term \'trigonometry\' comes from the Greek terms \'tri\' (meaning three), \'gon\' (meaning sides), and\'metron\' (meaning measurement). Trigonometry is the study of the relationships between a triangle\'s sides and angles. The first known works on trigonometry were written in Egypt and Babylon.', 'pdf_files/10th_Math_C9.pdf', '', '1010'),
(518, '', '', '', '1004', 'Chapter 10 - Circles', 'A circle is also known as the locus of points drawn equidistant from the centre. Radius is the distance between the circle\'s center and the outer line. Diameter is the line that splits a circle into two equal pieces and is equal to twice its radius.', 'pdf_files/10th_Math_C10.pdf', '', '1010'),
(519, '', '', '', '1004', 'Chapter 11 - Areas Related To Circles', 'In Class 10\'s \"Areas Related to Circles\" chapter, we will learn how to calculate the areas of circles, segments and sectors of circles, circumference, length of the arc of a sector, and so on. Circles are two-dimensional shapes. It is a curved shape with all of its points at the same distance from the center.', 'pdf_files/10th_Math_C11.pdf', '', '1010'),
(520, '', '', '', '1004', 'Chapter 12 - Surface Areas And Volumes', 'The surface area of any particular object refers to the area or region occupied by its surface. Whereas volume refers to the quantity of space accessible in a thing. Geometry includes a variety of shapes and sizes such as spheres, cubes, cuboids, cones, and cylinders. Each shape has both surface area and volume.', 'pdf_files/10th_Math_C12.pdf', '', '1010'),
(521, '', '', '', '1004', 'Chapter 13 - Statistics', 'Statistics is a discipline of applied mathematics that collects, describes, analyzes, and draws conclusions from quantitative data. Statistics\' mathematical theories are strongly based on differential and integral calculus, linear algebra, and probability theory.', 'pdf_files/10th_Math_C13.pdf', '', '1010'),
(522, '', '', '', '1004', 'Chapter 14 - Probability', 'Probability is a measure of the possibility that an event will occur. Many occurrences cannot be foreseen with absolute accuracy. We can only anticipate the likelihood of an event occurring by using it.', 'pdf_files/10th_Math_C14.pdf', '', '1010'),
(523, 'Social Science ', 'Introduction', 'The subject covers a variety of topics from different subjects such as history, geography, political science, economics, and many others which help to develop a complete understanding of the society as a wholeThese Notes will aid students to focus on their studies as the compilation of the concepts and fundamental principles of the chapters have been done in a concise manner.', '1003', 'Chapter 1 - Resources and development', 'Everything available in our environment which can be used to satisfy our needs, provided, it is technologically accessible, economically feasible and culturally acceptable can be termed as ‘Resource’. Do you think that resources are free gifts of nature as is assumed by many? They are not. Resources are a function of human activities. Human beings themselves are essential components of resources. They transform material available in our environment into resources and use them. These resources can be classified in the following ways – (a) On the basis of origin – biotic and abiotic (b) On the basis of exhaustibility – renewable and non-renewable (c) On the basis of ownership – individual, community, national and international (d) On the basis of status of development – potential, developed stock and reserves.', 'pdf_files\\10th_Soc_C1.pdf', '', '1010'),
(524, '', '', '', '1003', 'Chapter 2 - Forest And Wild Life Resources', 'We share this planet with millions of other living beings, starting from micro-organisms and bacteria, lichens to banyan trees, elephants and blue whales. This entire habitat that we live in has immense biodiversity. We humans along with all living organisms form a complex web of ecological system in which we are only a part and very much dependent on this system for our own existence. For example, the plants, animals and micro-organisms re-create the quality of the air we breathe, the water we drink and the soil that produces our food without which we cannot survive. Forests play a key role in the ecological system as these are also the primary producers on which all other living beings depend.', 'pdf_files/10th_Soc_C2.pdf', '', '1010'),
(525, '', '', '', '1003', 'Chapter 3 - Water Resources', 'You already know that three-fourth of the earth’s surface is covered with water, but only a small proportion of it accounts for freshwater that can be put to use. This freshwater is mainly obtained from surface run off and ground water that is continually being renewed and recharged through the hydrological cycle. All water moves within the hydrological cycle ensuring that water is a renewable resource. You might wonder that if three-fourth of the world is covered with water and water is a renewable resource, then how is it that countries and regions around the globe suffer from water scarcity? Why is it predicted that by 2025, nearly two billion people will live in absolute water scarcity?', 'pdf_files/10th_Soc_C3.pdf', '', '1010'),
(526, '', '', '', '1003', 'Chapter 4 - Agriculture', 'India is an agriculturally important country. Two-thirds of its population is engaged in agricultural activities. Agriculture is a primary activity, which produces most of the food that we consume. Besides food grains, it also produces raw material for various industries.', 'pdf_files/10th_Soc_C4.pdf', '', '1010'),
(527, '', '', '', '1003', 'Chapter 5 - Minerals And Energy Resources', 'We use different things in our daily life made from metal. Can you list a number of items used in your house made of metals. Where do these metals come from? You have studied that the earth’s crust is made up of different minerals embedded in the rocks. Various metals are extracted from these minerals after proper refinement. Minerals are an indispensable part of our lives. Almost everything we use, from a tiny pin to a towering building or a big ship, all are made from minerals. The railway lines and the tarmac (paving) of the roads, our implements and machinery too are made from minerals. Cars, buses, trains, aeroplanes are manufactured from minerals and run on power resources derived from the earth. Even the food that we eat contains minerals. In all stages of development, human beings have used minerals for their livelihood, decoration, festivities, religious and ceremonial rites.', 'pdf_files/10th_Soc_C5.pdf', '', '1010'),
(528, '', '', '', '1003', 'Chapter 6 - Manufacturing Industries', 'Production of goods in large quantities after processing from raw materials to more valuable products is called manufacturing. Do you know that paper is manufactured from wood, sugar from sugarcane, iron and steel from iron ore and aluminium from bauxite? Do you also know that some types of clothes are manufactured from yarn which itself is an industrial product? People employed in the secondary activities manufacture the primary materials into finished goods. The workers employed in steel factories, car, breweries, textile industries, bakeries etc. fall into this category. Some people are employed in providing services. In this chapter, we are mainly concerned with manufacturing industries which fall in the secondary sector.', 'pdf_files/10th_Soc_C6.pdf', '', '1010'),
(529, '', '', '', '1003', 'Chapter 7 - Lifelines Of National Economy', 'We use different materials and services in our daily life. Some of these are available in our immediate surroundings, while other requirements are met by bringing things from other places. Goods and services do not move from supply locales to demand locales on their own. The movement of these goods and services from their supply locations to demand locations necessitates the need for transport. Some people are engaged in facilitating these movements. These are known to be traders who make the products come to the consumers by transportation. Thus, the pace of development of a country depends upon the production of goods and services as well as their movement over space. Therefore, efficient means of transport are prerequisites for fast development.', 'pdf_files/10th_Soc_C7.pdf', '', '1010'),
(530, 'Economic Development', 'Introduction', 'Economic Development is programs, policies or activities that seek to improve the economic well-being and quality of life for a community. What “economic development” means to you will depend on the community you live in. Each community has its own opportunities, challenges, and priorities.', '1002', 'Chapter 1 - Development', 'The idea of development or progress has always been with us. We have aspirations or desires about what we would like to do and how we would like to live. Similarly, we have ideas about what a country should be like. What are the essential things that we require? Can life be better for all? How should people live together? Can there be more equality? Development involves thinking about these questions and about the ways in which we can work towards achieving these goals. This is a complex task and in this chapter we shall make a beginning at understanding development. You will learn more about these issues in greater depth in higher classes. Also, you will find answers to many of these questions not just in economics but also in your course in history and political science', 'pdf_files/10th_Ecns_C1.pdf', '', '1010'),
(531, '', '', '', '1002', 'Chapter 2 - Sectors Of The Indian Economy', 'An economy is best understood when we study its components or sectors. Sectoral classification can be done on the basis of several criteria. In this chapter, three types of classifications are discussed: primary/secondary/tertiary, organised/ unorganised, and public/private. You can create a discussion about these types by taking examples familiar to the students and relate them to their daily life. It is important to emphasise the changing roles of sectors. This can be highlighted further by drawing attention of the students to the rapid growth of service sector. While elaborating the ideas provided in the chapter, the students may need to be familiarised with a few fundamental concepts such as Gross Domestic Product.', 'pdf_files/10th_Ecns_C2.pdf', '', '1010'),
(532, '', '', '', '1002', 'Chapter 3 - Money And Credit', 'The use of money spans a very large part of our everyday life. Look around you and you would easily be able to identify several transactions involving money in any single day. Can you make a list of these? In many of these transactions, goods are being bought and sold with the use of money. In some of these transactions, services are being exchanged with money. For some, there might not be any actual transfer of money taking place now but a promise to pay money later', 'pdf_files/10th_Ecns_C3.pdf', '', '1010'),
(533, '', '', '', '1002', 'Chapter 4 - Globalisation And The Indian Economy', 'Most regions of the world are getting increasingly interconnected. While this interconnectedness across countries has many dimensions — cultural, political, social and economic — this chapter looks at globalisation in a more limited sense. It defines globalisation as the integration between countries through foreign trade and foreign investments by multinational corporations (MNCs). As you will notice, the more complex issues of portfolio investment have been left out.', 'pdf_files/10th_Ecns_C4.pdf', '', '1010'),
(534, '', '', '', '1002', 'Chapter 5 - Consumer Rights', 'This chapter proposes to discuss the issue of consumer rights within the context of the ways markets operate in our country. There are many aspects of unequal situations in a market and poor enforcement of rules and regulations. Hence, there is a need to sensitise learners and encourage them to participate in the consumer movement. This chapter provides case histories — how some consumers were exploited in real life situation and how legal institutions helped consumers in getting compensated and in upholding their rights. The case histories would enable the students to link these narratives to their life experiences', 'pdf_files/10th_Ecns_C5.pdf', '', '1010'),
(535, 'Hindi', 'Introduction', 'दसवीं कक्षा तक हिंदी का अध्ययन करने वाला विद्यार्थी समझते हुए पढ़ने व सुनने के साथ-साथ हिंदी में सोचने और उसे मौखिक एवं लिखित रूप में व्यक्त कर पाने की सामान्य दक्षता अर्जित कर चुका होता है। उच्चतर माध्यमिक स्तर पर आने के बाद इन सभीदक्षताओं को सामान्य से ऊपर उस स्तर तक ले जाने की आवश्यकता होती है, जहाँ भाषा का प्रयोग भिन्न-भिन्न व्यवहार क्षेत्रों की मांगों के अनुरूप किया जा सके। आधार पाठ्यक्रम, साहित्यिक बोध के साथ-साथ भाषाई दक्षता के विकास को ज्यादा महत्त्व देता है। यह पाठ्यक्रम उन विद्यार्थियों के लिए उपयोगी साबित होगा, जो आगे विश्वविद्यालय में अध्ययन करते हुए हिंदी को एक विषय के रूप में पढ़ेंगे या विज्ञान / सामाजिक विज्ञान के किसी विषय को हिंदी माध्यम से पढ़ना चाहेंगे।', '1112', 'Chapter 1 - ईदगाह', '', 'pdf_files/Chapter_1_ryhFach.pdf', '', '1011'),
(536, '', '', '', '1112', 'Chapter 2 - दोपहर का भोजन', '', 'pdf_files/Chapter_2_k1BfmQa.pdf', '', '1011'),
(537, '', '', '', '1112', 'Chapter 3 - टार्च बेचने वाले', '', 'pdf_files/Chapter_3_ZjyW9yh.pdf', '', '1011'),
(538, '', '', '', '1112', 'Chapter 4 - गूँगे', '', 'pdf_files/Chapter_4_6PIu0Xx.pdf', '', '1011'),
(539, '', '', '', '1112', 'Chapter 5 - ज्योतिबा फुले', '', 'pdf_files/Chapter_5_GsR6XOs.pdf', '', '1011'),
(540, '', '', '', '1112', 'Chapter 6 - खानाबदोश', '', 'pdf_files/Chapter_6_3jnDXBs.pdf', '', '1011'),
(541, '', '', '', '1112', 'Chapter 7 - उसकी माँ', '', 'pdf_files/Chapter_7_527yYpR.pdf', '', '1011'),
(542, '', '', '', '1112', 'Chapter 8 - भारतवर्ष की उन्नति कैसे हो सकती है?', '', 'pdf_files/Chapter_8_0KxbMGj.pdf', '', '1011'),
(543, '', '', '', '1112', 'Chapter 9 - अरे इन दोहुन राह न पाई बालम; आवो हमारे गेह रे', '', 'pdf_files/Chapter_9.pdf', '', '1011'),
(544, '', '', '', '1112', 'Chapter 10 - खेलन में को काको गुसैयाँ, मुरली तऊ गुपालहिं भावति', '', 'pdf_files/Chapter_10.pdf', '', '1011'),
(545, '', '', '', '1112', 'Chapter 11 - हँसी की चोट, सपना, दरबार', '', 'pdf_files/Chapter_11.pdf', '', '1011'),
(546, '', '', '', '1112', 'Chapter 12 - संध्या के बाद', '', 'pdf_files/Chapter_12.pdf', '', '1011'),
(547, '', '', '', '1112', 'Chapter 13 - जाग तुझको दूर जाना', '', 'pdf_files/Chapter_13.pdf', '', '1011'),
(548, '', '', '', '1112', 'Chapter 14 - बादल को घिरते देखा है', '', 'pdf_files/Chapter_14.pdf', '', '1011'),
(549, '', '', '', '1112', 'Chapter 15 - हस्तक्षेप', '', 'pdf_files/Chapter_15.pdf', '', '1011'),
(550, '', '', '', '1112', 'Chapter 16 - घर में वापसी', '', 'pdf_files/Chapter_16.pdf', '', '1011'),
(551, 'English', 'Introduction', 'The aim of this selection is to make learners approach reading as a pleasurable activity. The stories are followed by exercises under four heads—textual comprehension, talking about the texts, literary appreciation and language work. These aim at fostering critical reading in the learners and instilling in them the confidence to express their responses. The second head encourages learners to discuss their responses with each other in pairs or small groups.', '1110', 'Chapter 1 - THE PORTRAIT OF A LADY', 'The author tells her narrative in The Portrait of a Lady. He discusses his bond with his grandmother over the years. He records her daily activities and how her character grew over time. He describes her appearance, which helps the reader form an image in their head.', 'pdf_files/11th_Eng_C1.pdf', '', '1011'),
(552, '', '', '', '1110', 'Chapter 2 - “WE’RE NOT AFRAID TO DIE…  IF WE CAN ALL BE TOGETHER', 'The concept of \"We are not afraid to die\" is about the human spirit and its ability to overcome danger and misfortune with courage and resolve. In the story, the crew of the boat meets numerous problems and perils, including a tremendous storm and the prospect of drowning in the middle of the ocean.', 'pdf_files/11th_Eng_C2.pdf', '', '1011'),
(553, '', '', '', '1110', 'Chapter 3 - DISCOVERING TUT: THE SAGA  CONTINUES', 'This chapter is about Tutankhamun, the last heir to the great Pharaoh Dynasty, who died as a teenager after ruling for nine years. He died mysteriously, and this chapter sheds light on all of the probable mysteries, including the curse, the location of his tomb, his life, and, eventually, his death.', 'pdf_files/11th_Eng_C3.pdf', '', '1011'),
(554, '', '', '', '1110', 'Chapter 4 - LANDSCAPE OF THE SOUL', 'The chapter\'s main focus is on the arts. It focuses on the craft of painting and is told through numerous stories. We learn about Chinese painters, their works, and the stories that surround them. Similarly, the second section delves into the concept of \'art brut\', which refers to the art of those who have no right.', 'pdf_files/11th_Eng_C4.pdf', '', '1011'),
(555, '', '', '', '1110', 'Chapter 5 - THE AILING PLANET: THE ROLE MOVEMENT’S THE ROLE', 'According to The Ailing Planet: The Green Movement\'s Role, we must consume sustainably while yet leaving something for future generations. According to him, we must think of ourselves as partners rather than resource owners. It belongs to everyone, both now and in the future.', 'pdf_files/11th_Eng_C5.pdf', '', '1011'),
(556, '', '', '', '1110', 'Chapter 6 - THE BROWNING VERSION', 'The Browning Version is a drama about a teenage student\'s attitude towards his teacher. The student\'s words against his teacher are horrifying and startling because they are so true to life. He imitates Mr. Crocker-Harris\' voice and describes him as virtually inhuman.', 'pdf_files/11th_Eng_C6.pdf', '', '1011'),
(557, '', '', '', '1110', 'Chapter 7 - THE ADVENTURE', 'The adventure narrative falls within a literary genre that mixes science and history. Professor Gangadhar Pant Gaitonde is thrown into an unusual environment. He was undoubtedly in Pune, but for unclear reasons, the evidence contradicted historical facts. He chose to go to Bombay and study history books.', 'pdf_files/11th_Eng_C7.pdf', '', '1011'),
(558, '', '', '', '1110', 'Chapter 8 - SILK ROAD', 'This chapter tells the story of the narrator\'s journey from Ravu\'s slopes to Mount Kailash to complete the Kora. To say goodbye, Lhamo handed him an extended-sleeve sheepskin coat. He hired Tsetan\'s automobile for his expedition, and Daniel accompanied him to Darchen.', 'pdf_files/11th_Eng_C8.pdf', '', '1011'),
(559, 'Maths', 'Solutions for Maths', 'Maths focuses on developing various real-life skills in students. At this stage, students progress on advanced concepts like functions, calculus, probability, etc. A thorough understanding of mathematics class 11 concepts can be implemented through various interactive activities and visualization.', '1105', 'Chapter 1 - Sets', 'The concept of set serves as a fundamental part of the\npresent day mathematics. Today this concept is being used\nin almost every branch of mathematics. Sets are used to\ndefine the concepts of relations and functions. The study of\ngeometry, sequences, probability, etc. requires the knowledge\nof sets.\nThe theory of sets was developed by German\nmathematician Georg Cantor (1845-1918). He first\nencountered sets while working on “problems on trigonometric\nseries”. In this Chapter, we discuss some basic definitions\nand operations involving sets.', 'pdf_files/Class_-_11_-_MathsLMS_chapter-1.pdf', '', '1011'),
(560, '', '', '', '1105', 'Chapter 2 - Relations and Functions', 'In our\ndaily life, we come across many patterns that characterise\nrelations such as brother and sister, father and son, teacher\nand student. In mathematics also, we come across many\nrelations such as number m is less than number n, line l is\nparallel to line m, set A is a subset of set B. In all these, we\nnotice that a relation involves pairs of objects in certain\norder. In this Chapter, we will learn how to link pairs of\nobjects from two sets and then introduce relations between\nthe two objects in the pair. Finally, we will learn about\nspecial relations which will qualify to be functions. The\nconcept of function is very important in mathematics since it captures the idea of a\nmathematically precise correspondence between one quantity with the other.', 'pdf_files/Class_-_11_-_MathsLMS_chapter-2.pdf', '', '1011'),
(561, '', '', '', '1105', 'Chapter 3 - Trigonometric Functions', '\"Trigonometric Functions,\" provides a comprehensive exploration of fundamental trigonometric concepts and their applications. The chapter begins by introducing the basic trigonometric functions—sine, cosine, tangent, cotangent, secant, and cosecant—within the context of right-angled triangles. Emphasis is placed on understanding these functions as ratios of sides in a triangle and their significance in geometry.\nThe word ‘trigonometry’ is derived from the Greek words\n‘trigon’ and ‘metron’ and it means ‘measuring the sides of\na triangle’. The subject was originally developed to solve\ngeometric problems involving triangles. It was studied by\nsea captains for navigation, surveyor to map out the new\nlands, by engineers and others. Currently, trigonometry is\nused in many areas such as the science of seismology,\ndesigning electric circuits, describing the state of an atom,\npredicting the heights of tides in the ocean, analysing a\nmusical tone and in many other areas.\n', 'pdf_files/Class_-_11_-_MathsLMS_c-3.pdf', '', '1011'),
(562, '', '', '', '1105', 'Chapter 4 - Principle of Mathematical Induction', 'Mathematical induction is widely applied in various branches of mathematics, including algebra, number theory, and combinatorics. It provides a rigorous and systematic way to prove statements that involve an infinite number of cases, offering a valuable tool for mathematicians in establishing the validity of conjectures and theorems.', 'pdf_files/Class_-_11_-_MathsLMS_c-4.pdf', '', '1011'),
(563, '', '', '', '1105', 'Chapter 5 - Complex Numbers and Quadratic Equations', 'This chapter introduces complex numbers, which are numbers in the real numbers and the imaginary unit. It covers the representation of complex numbers in the form of a complex plane, operations on complex numbers (addition, subtraction, multiplication, and division), and the modulus and argument of a complex number.', 'pdf_files/Class_-_11_-_MathsLMS_c-5.pdf', '', '1011'),
(564, '', '', '', '1105', 'Chapter 6 - Linear Inequalities', '“Linear in equalities” in the Class 11 NCERT Mathematics textbook. However, the topic of linear inequalities is often covered in mathematics curricula, and it\'s possible that the content or chapter numbering may vary based on different editions or boards.', 'pdf_files/Class_-_11_-_MathsLMS_c-6.pdf', '', '1011'),
(565, '', '', '', '1105', 'Chapter 7 - Permutations and Combinations', 'The curriculum for Class 11 Maths Chapter 7 presents the ideas of permutation and combination in an engaging way. Students will solve the practice questions by applying new mathematical concepts and ideas that they have learned. Use the NCERT solutions for each of the exercises in this chapter to improve the process. Learn how to approach and resolve these issues in order to receive a higher score in', 'pdf_files/Class_-_11_-_MathsLMS_c-7.pdf', '', '1011'),
(566, '', '', '', '1105', 'Chapter 8 - Binomial Theorem', 'The binomial theorem simplifies the process of expanding expressions involving binomials, providing a concise and efficient way to represent these expressions without having to multiply out each term individually. By understanding and applying the binomial theorem, students gain insights into the algebraic structure of binomial expressions, and they can easily compute the expansion of expressions raised to any positive integer power.', 'pdf_files/Class_-_11_-_MathsLMS_c-8.pdf', '', '1011'),
(567, '', '', '', '1105', 'Chapter 9 -  Sequences and Series', 'A sequence is an ordered list of numbers. It can be finite or infinite. In mathematics, sequences are often denoted as 1,2,3,…,a1,a2,a3,…,an, where ai represents the ithof the sequence. Sequences can be arithmetic, geometric, or more general.', 'pdf_files/Class_-_11_-_MathsLMS_c-9.pdf', '', '1011'),
(568, '', '', '', '1105', 'Chapter 10 - Straight Lines', '\"Straight Lines,\" delves into the fundamental concepts related to lines and their equations in a plane. The chapter commences with an introduction to the basics of a line, exploring different forms of its equation, such as the slope-intercept form, point-slope form, two-point form, and intercept form.', 'pdf_files/Class_-_11_-_MathsLMS_c-10.pdf', '', '1011'),
(569, '', '', '', '1105', 'Chapter 11 - Conic Sections', 'The chapter begins by introducing the concept of a conic section and elucidating how varying the inclination of the cutting plane results in distinct shapes. Students delve into the characteristics of a circle, understanding its definition in terms of locus and exploring its key properties. ', 'pdf_files/Class_-_11_-_MathsLMS_c-11.pdf', '', '1011'),
(570, '', '', '', '1105', 'Chapter 12 - Introduction to Three Dimensional Geometry', 'This chapter introduces students to the realm of three-dimensional space, exploring the coordinates and geometric properties of points, lines, and planes in three dimensions.', 'pdf_files/Class_-_11_-_MathsLMS_c-12.pdf', '', '1011'),
(571, '', '', '', '1105', 'Chapter 13 - Limits and Derivations', '\"Limits and Derivatives.\" chapter lays the groundwork for the fundamental concepts of calculus, introducing students to the idea of limits and derivatives. The concept of a limit is essential in understanding the behavior of a function as its input approaches a particular value', 'pdf_files/Class_-_11_-_MathsLMS_c-13.pdf', '', '1011'),
(572, '', '', '', '1105', 'Chapter 14 - Mathematical Reasoning', '\"Mathematical Reasoning.\" chapter serves as a valuable introduction to the principles of logical reasoning and its application in mathematical contexts. Students explore the basics of mathematical reasoning, including the notion of statements, logical connectives (like \'and,\' \'or,\' \'not\'), and the importance of forming clear and precise mathematical statements.', 'pdf_files/Class_-_11_-_MathsLMS_c-14.pdf', '', '1011'),
(573, '', '', '', '1105', 'Chapter 15 - Statistics', 'The chapter begins by discussing the concept of data, which can be classified as primary or secondary. Students learn about the presentation of data through various graphical representations, including histograms, bar graphs, and frequency polygons. Measures of central tendency, such as mean, median, and mode, are explored as ways to summarize and describe a dataset.', 'pdf_files/Class_-_11_-_MathsLMS_c-15.pdf', '', '1011'),
(574, '', '', '', '1105', 'Chapter 16 - Probability', 'Probability is the branch of mathematics concerning numerical descriptions of how likely an event is to occur, or how likely it is that a proposition is true.', 'pdf_files/Class_-_11_-_MathsLMS_c-16.pdf', '', '1011'),
(575, ' Financial Accounting', 'Solutions for Financial Accouting', 'Financial Accounting is that branch of accounting which involves identifying, measuring, recording, classifying, summarising the business transactions, i.e. it involves the steps from Identifying, Recording of transactions to Summarisation, and communicating the financial data.', '1108', 'Chapter 1 - Introduction to Accounting', 'Accounting enjoys a remarkable heritage. The history of accounting is as old as civilisation. The seeds of accounting were most likely first sown in Babylonia and Egypt around 4000 B.C. who recorded transactions of payment of wages and taxes on clay tablets. Historical evidences reveal that Egyptians used some form of accounting for their treasuries where gold and other valuables were kept. The incharge of treasuries had to send day wise reports to their superiors known as Wazirs (the prime minister) and from there month wise reports were sent to kings. Babylonia, known as the city of commerce, used accounting for business to uncover losses taken place due to frauds and lack of efficiency. In Greece, accounting was used for apportioning the revenues received among treasuries, maintaining total receipts, total payments and balance of government financial transactions. Romans used memorandum or daybook where in receipts and payments were recorded and wherefrom they were posted to ledgers on monthly basis. (700 B.C to 400 A.D).', 'pdf_files/CHAPTER_1_WH8C0V8.pdf', '', '1011'),
(576, '', '', '', '1108', 'Chapter 2 - Theory Base of Accounting', 'The importance of accounting theory need not be over-emphasised as no discipline can develop without a sound theoretical base. The theory base of accounting consists of principles, concepts, rules and guidelines developed over a period of time to bring uniformity and consistency to the process of accounting and enhance its utility to different users of accounting information. Apart from these, the Institute of Chartered Accountants of India, (ICAI), which is the regulatory body for standardisation of accounting policies in the country has issued Accounting Standards which are expected to be uniformly adhered to, in order to bring consistency in the accounting practices', 'pdf_files/CHAPTER_2_C9wfop7.pdf', '', '1011'),
(577, '', '', '', '1108', 'Chapter 3 - Recording of Transactions- 1', 'while explaining the development and importance of accounting as a source of disseminating the financial information along with the discussion on basic accounting concepts that guide the recording of business transactions, it has been indicated that accounting involves a process of identifying and analysing the business transactions, recording them, classifying and summarising their effects and finally communicating it to the interested users of accounting information. In this chapter, we will discuss the details of each step involved in the accounting process. The first step involves identifying the transactions to be recorded and preparing the source documents which are in turn recorded in the basic book of original entry called journal and are then posted to individual accounts in the principal book called ledger.', 'pdf_files/CHAPTER_3_XZlT2Ft.pdf', '', '1011');
INSERT INTO `learning_stdclass` (`id`, `subjects`, `intro`, `description`, `subid`, `chaptername`, `chapterdis`, `pdf`, `classes`, `classid`) VALUES
(578, '', '', '', '1108', 'Chapter 4  - Recording of Transactions- 2', 'In chapter 3, you learnt that all the business transactions are first recorded in the journal and then they are posted in the ledger accounts. A small business may be able to record all its transactions in one book only, i.e., the journal. But as the business expands and the number of transactions becomes large, it may become cumbersome to jour-nalise each transaction. For quick, efficient and accurate recording of business transactions, Journal is sub-divided into special journals. Many of the business transactions are repetitive in nature. They can be easily recorded in special journals, each meant for recording all the transactions of a similar nature. For example, all cash transactions may be recorded in one book, all credit sales transactions in another book and all credit purchases transactions in yet another book and so on. These special journals are also called daybooks or subsidiary books', 'pdf_files/CHAPTER_4_zP1rPDB.pdf', '', '1011'),
(579, '', '', '', '1108', 'Chapter 5 - Bank Reconciliation Statement', 'In chapter 4, you have learnt that the business organisations keep a record of their cash and bank transactions in a cash book. The cash book also serves the purpose of both the cash account and the bank account and shows the balance of both at the end of the period. Once the cash book has been balanced, it is usual to check its details with the records of the firm’s bank transactions as recorded by the bank. To enable this check, the cashier needs to ensure that the cash book is completely up to date and a recent bank statement (or a bank passbook) has been obtained from the bank. A bank statement or a bank passbook is a copy of a bank account as shown by the bank records. This enable the bank customers to check their funds in the bank regularly and update their own records of transactions that have occurred.', 'pdf_files/CHAPTER_5_RziEy5a.pdf', '', '1011'),
(580, '', '', '', '1108', 'Chapter 6 - Trial Balance and Rectification of Errors', 'In the earlier chapters, you have learnt about the basic principles of accounting that for every debit there will be an equal credit. It implies that if the sum of all debits equals the sum of all credits, it is presumed that the posting to the ledger in terms of debit and credit amounts is accurate. The trial balance is a tool for verifying the correctness of debit and credit amounts. It is an arithmetical check under the double entry system which verifies that both aspects of every transaction have been recorded accurately. This chapter explains the meaning and process of preparation of trial balance and the types of errors and their rectification.', 'pdf_files/CHAPTER_6_akscAt7.pdf', '', '1011'),
(581, '', '', '', '1108', 'Chapter 7 - Depreciation, Provisions and Reserves', 'Matching principle requires that the revenue of a given period is matched against the expenses for the same period. This ensures ascertainment of the correct amount of profit or loss. If some cost is incurred whose benefit extend to more than one accounting period, it is not justified to charge the entire cost as expense in the year in which it is incurred. In fact, such a cost must be spread over the periods in which it provides benefits. Depreciation, on fixed assets, which is the main subject matter of the present chapter, deals with such a situation. Further, it may not always be possible to ascertain with certainty the amount of some particular expense. Recall the principle of conservatism (prudence) which requires that instead of ignoring such items of costs, adequate provision must be made and charged against profits of the current period. Moreover, a part of profit may be retained in the business in the form of reserves to provide for growth, expansion or meeting certain specific needs of the business in future. This chapter deals with two distinct topics and hence is being presented in two different sections. First section deals with depreciation and second section deals with provisions and reserves.', 'pdf_files/CHAPTER___7.pdf', '', '1011'),
(582, 'Home Science', 'Introduction', 'Home Science covers a few areas of specialization such as Food and nutrition, Communication and Extension, Resource Management, Human Development, Fabric and apparel science. We learn and develop good interpersonal relationships within and outside the family.', '1109', 'Chapter 1 - Human Ecology and Family Sciences', 'The Human Ecology and Family Sciences (HEFS) curriculum is designed to help students develop an awareness of themselves in connection to their families and society. Recognize one\'s duty and obligations as a contributing member of one\'s family, community, and society.', 'pdf_files/11th_homeSci_C1.pdf', '', '1011'),
(583, '', '', '', '1109', 'Chapter 2 - Understanding the Self A. What makes me ‘I’', 'Understanding oneself means having insight into one\'s own conduct, attitudes, strengths, and weaknesses. It refers to an individual\'s capacity to express and understand what he or she excels in and where they need to grow. Self-awareness is one of the highest aims in psychology.', 'pdf_files/11th_homeSci_C2.pdf', '', '1011'),
(584, '', '', '', '1109', 'Chapter 3 - Food, Nutrition, Health and Fitness', 'Nutrition starts with food. Nutrition is the process by which the body feeds itself by converting food into energy and tissues. The science of nutrition is concerned with everything the body does with food in order to function properly.', 'pdf_files/11th_homeSci_C3.pdf', '', '1011'),
(585, '', '', '', '1109', 'Chapter 4 - Management of 4 Resources', 'In every culture, some people are more likely to have access to valuable resources such money, property, education, health, and power. These social assets can be classified into three forms of capital. Financial resources include both income and tangible assets.', 'pdf_files/11th_homeSci_C4.pdf', '', '1011'),
(586, '', '', '', '1109', 'Chapter 5 - Fabrics Around Us', 'A fibre is a tiny thread of a natural or synthetic material, particularly one used to manufacture cloth or rope. Fibre refers to the sections of plants or seeds that your body cannot digest. Examples of man-made fibers include nylon.', 'pdf_files/11th_homeSci_C5.pdf', '', '1011'),
(587, '', '', '', '1109', 'Chapter 6 - Media and Communication Technology', 'An important field of study that has an impact on adolescents is that of media and communication. In this chapter we will discuss how these two aspects of our everyday ecology have become an integral part of our lives, usually adding to the quality of our lives. We will begin with the concept of communication first', 'pdf_files/11th_homeSci_C6.pdf', '', '1011'),
(588, '', '', '', '1109', 'Chapter 7 - Concerns and Needs in Diverse Contexts A. Nutrition, Health  and Hygiene', '. The Universal Declaration of Human Rights said in 1948 that \"everyone has the right to a standard of living adequate for the health and well-being of oneself and one\'s family, including food\". However, numerous environmental factors and our own habits have an impact on our health, which can be damaging at times. Let us first define the term \"health\". The World Health Organization (WHO), the world\'s leading health organization, defines health as \"a state of complete mental, physical, and social well-being, rather than the absence of disease.\" Disease is defined as a deterioration of body health that disrupts normal function and deviates from a state of complete well-being. It can affect any portion or organ of the body. Health is a fundamental human right.', 'pdf_files/11th_homeSci_C7.pdf', '', '1011'),
(589, '', '', '', '1109', 'Chapter 8 - Nutrition, Health and Well-being', 'Now let us focus on children\'s diet, health, and well-being.Children\'s nutritional demands are determined by their pace of growth, body weight, and the effectiveness with which nutrients are used at each stage of their development. Children\'s rapid physical and mental development can lead to lasting impairments and disabilities if they do not receive adequate nutrition. Adequate nutrition helps children reach their full potential. As a result, we must grasp how to balance their food consumption while enjoying a diverse range of meals from all food categories. Good nutrition is commonly thought to reflect in children\'s height and weight gain, but it really improves and maintains their well-being.', 'pdf_files/11th_homeSci_C8.pdf', '', '1011'),
(590, '', '', '', '1109', 'Chapter 9 -  Clothing Functions and the Selections Clothes', '', 'pdf_files/11th_homeSci_C9.pdf', '', '1011'),
(591, '', '', '', '1109', 'Chapter 10 - Financial Management and Planning', 'Financial management in the context of a family is simply the management of finances. Finances refer to all sources of revenue available to a family, including salaries, wages, rent, interest, dividends, bonuses, retirement benefits, and any other monetary receipts. Financial management refers to the planning, control, and evaluation of various income streams. Its goal is to maximize the family\'s contentment using the resources at hand. The standard of living that can be exchanged for financial resources is determined not only by the amount of money available, but also by its regularity and stability. As a result, it is critical to have the ability to manage money as a resource.  ', 'pdf_files/11th_homeSci_C10.pdf', '', '1011'),
(592, '', '', '', '1109', 'Chapter 11 - Care and Maintenance of Fabrics', 'Some of the earlier chapters discussed the relevance of the fabrics around us. They safeguard and improve people and their environments. Fabric products, such as clothing, furniture, and other household items, must be cared for and maintained properly. The appearance, quality, and functionality of a product or material heavily influence final buying decisions. Maintaining these properties is crucial for the material\'s predicted lifespan. Care and maintenance can thus entail', 'pdf_files/11th_homeSci_C11.pdf', '', '1011'),
(593, 'Computer Science', 'Introduction', 'Computer Science in class 11 covers various topics such as computer systems and organization, data management, etc. Is Computer Science hard class 11.It totally depends upon your hard work and dedication to study computer science. All these components function together as a single unit to deliver the desired output.', '1111', 'Chapter 1 - Computer System', 'A computer is an electronic device capable of accepting, processing, and generating data. A computer system consists of a computer, additional hardware, and software. A computer system consists essentially of a central processing unit (CPU), memory, input/output devices, and storage units. All components work together to achieve the intended effect. Computer systems come in a variety of shapes and sizes. It can range from a powerful server to a personal desktop, laptop, tablet computer, or smartphone. ', 'pdf_files/11th_CPUS_C1.pdf', '', '1011'),
(594, '', '', '', '1111', 'Chapter 2 - Encoding Schemes and Number   System', 'Have you ever considered how the computer system interprets the human-recognisable keys on a computer keyboard? This section briefly examines text interpretation by computers. In the last chapter, we learned that computers only understand binary language, consisting of 0s and 1. As a result, when you hit a key on your keyboard, it is internally mapped to a unique code that is then transformed to binary.', 'pdf_files/11th_CPUS_C2.pdf', '', '1011'),
(595, '', '', '', '1111', 'Chapter 3 - Emerging Trends', 'Computers have been around for quite some time. New technology and initiatives develop every day. To better grasp present technology and the advancements around us, we must keep an eye out for upcoming trends. New technologies are introduced almost every day. Some of these fail and eventually fade away. New technologies can thrive and acquire popularity among consumers over time. Emerging trends are cutting-edge technologies that gain popularity and establish new trends among consumers. This chapter explores upcoming themes that will significantly effect the digital economy and society.', 'pdf_files/11th_CPUS_C3.pdf', '', '1011'),
(596, '', '', '', '1111', 'Chapter 4 - Introduction to Problem Solving', 'Nowadays, computers are all around us. We use them to complete various activities faster and more accurately. For example, using a computer or smartphone, we can book rail tickets online. India is a large country with an extensive railway network. Thus, railway reservations are a complicated task. Reservations require detailed information on train kinds, berths, compartments, schedules, and simultaneous booking by numerous users, among other considerations. ', 'pdf_files/11th_CPUS_C4.pdf', '', '1011'),
(597, '', '', '', '1111', 'Chapter 5 - Getting Started with Python', 'We wrote algorithms for various issues in Chapter 4. Let us now take a step farther and construct applications with any version of Python 3. However, before learning about the Python programming language, let us first define what a programming language is and how it works. A program is an ordered set of instructions that a computer will execute to complete a specified task, and the language used to specify this set of instructions to the computer is known as a programming language. Computers use machine language, often known as low-level language, to understand binary data. However, people find it challenging to write or understand instructions that use 0s and 1s.', 'pdf_files/11th_CPUS_C5.pdf', '', '1011'),
(598, '', '', '', '1111', 'Chapter 6 - Flow of Control', 'Flow control statements are used to control the flow of execution based on the stated condition or reasoning. Sequential control statement - Sequential execution occurs when statements are executed one after the other in order. We don\'t need to do anything else to make this happen, the Python compiler does it automatically. The order in which statements are executed in a program is referred to as the flow of control. Control structures can help to implement the flow of control. Python offers two types of control structures: selection and repetition. ', 'pdf_files/11th_CPUS_C6.pdf', '', '1011'),
(599, '', '', '', '1111', 'Chapter 7 - Functions', 'In programming, the use of functions is one way to create modularity and reusability. A function is a designated sequence of instructions that, when invoked, perform a specific task.Having created programs, we may have seen that as problems become more difficult, the number of lines in the program increases. The application appears big and difficult to manage.', 'pdf_files/11th_CPUS_C7.pdf', '', '1011'),
(600, '', '', '', '1111', 'Chapter 8 - Strings', 'Strings in Python are arrays of bytes that represent Unicode characters. A string is a collection of one or more characters enclosed in a single, double, or triple quote. In Python, there is no character data type, a character is a one-length string. It is represented by the str class. A string is a sequence of one or more Unicode characters. Characters may include letters, digits, spaces, or symbols. A string is formed by surrounding one or more letters in single, double, or triple quotes.', 'pdf_files/11th_CPUS_C8.pdf', '', '1011'),
(601, '', '', '', '1111', 'Chapter 9 - Lists', 'The data type list is an ordered, mutable sequence with one or more members. A list can contain items of several data types, including integers, floats, strings, tuples, and other lists, unlike a string, which only contains characters. A list is useful for grouping components of different data types. A list contains elements contained in square brackets and separated by commas. List indices, like string indices, start at 0.', 'pdf_files/11th_CPUS_C9.pdf', '', '1011'),
(602, '', '', '', '1111', 'Chapter 10 - Tuples and Dictionaries', 'A tuple is an ordered sequence of items of various data kinds, including integers, floats, strings, lists, and even tuples. Tuple elements are enclosed in parenthesis (round brackets) and separated by commas. Tuple items, like those in lists and strings, can be accessed using index values beginning with 0. ', 'pdf_files/11th_CPUS_C10.pdf', '', '1011'),
(603, '', '', '', '1111', 'Chapter 11 - Societal Impact', 'The adoption of \'Digital Technologies\' has brought about significant changes in our world. These adjustments have significantly improved our convenience, speed, and ease of use. Previously, letters took days to arrive, with each receiver receiving their own copy and responding individually. Emails can now be sent and received simultaneously by multiple recipients. Electronic communication has led to increased efficiency and productivity. Computers and digital technology are increasingly used in various industries, including banking, aviation, industrial production, and e-commerce, to deliver goods and services.', 'pdf_files/11th_CPUS_C11.pdf', '', '1011'),
(604, 'Psycology', 'Solutions for Psycology', 'Psychology is a social science because it studies the behaviour of human beings in their social tests cultural context. Psychology as a social science discipline focuses on humans as social beings. It focuses on the individual and communities in relation to their social, cultural and physical environment.', '1107', 'Chapter 1 - What is Psychology?', 'Any knowledge discipline is hard to define. Firstly, because it evolves continuously. Secondly, because the range of phenomena it studies cannot be captured by any one definition. This is even more true of \r\n sychology. Long time back, students like yourself were told that the term psychology is derived from two\r\nGreek words psyche meaning soul and logos meaning science or study of a subject. Thus,psychology was a study of the soul or mind.', 'pdf_files/CHAPTER__1.pdf', '', '1011'),
(605, '', '', '', '1107', 'Chapter 2 - Methods of Enquiry in Psychology', 'Psychology is the study of experiences, behaviours, and mental processes. You may now be curious to know how psychologists study these phenomena. In other words, what methods are used to study behaviour and mental processes? Like all scientists, psychologists seek to describe, predict, explain and control what they study. For this, psychologists rely on formal, systematic observations to address their questions. It is the methodology that makes psychology a scientific endeavour. Psychologists use a variety of research methods because questions about human behaviour are numerous and all of them cannot be studied by a single method. Methods such as observation, experimental, correlational research, survey, psychological testing and case study are more frequently used to study the problems of psychology. This chapter will familiarise you with the goals of psychological enquiry, the nature of information or data that we collect in psychological studies, the diverse range of methodological devices available for the study of psychology, and some important issues related to psychological studies.', 'pdf_files/CHAPTER__2.pdf', '', '1011'),
(606, '', '', '', '1107', 'Chapter 3 - Human development', 'Development is influenced by an interplay of biological, cognitive, and socio-emotional processes. Development due to genes inherited from parents, such as in height and weight, brain, heart, and lungs development, etc. all point towards the role of biological processes. The role of cognitive processes in development relate to mental activities associated with the processes of knowing, and experiencing, such as thought, perception, attention, problem solving, etc. Socio-emotional processes that influence development refer to changes in an individual’s interactions with other people, changes in emotions, and in personality. A child’s hug to her/his mother, a young girl’s affectionate gesture to her/his sibling, or an adolescent’s sorrow at losing a match are all reflections of socio-emotional processes deeply involved in human development.', 'pdf_files/CHAPTER__3.pdf', '', '1011'),
(607, '', '', '', '1107', 'Chapter 4 - Sensory, Attentional And Perceptual Processes', 'While some of our receptors are clearly observable (for example, eyes or ears), others lie inside our body, and are not observable without the help of electrical or mechanical devices. This chapter will introduce you to various receptors that collect a variety of information from the external and internal worlds. You will also know some important things about attention, which helps us to notice and register the information that our sense organs carry to us. Different types of attention will be described along with the factors that influence them. At the end, we will discuss the process of perception that allows us to understand the world in a meaningful way. You will also have an opportunity to know how we are sometimes deceived by certain types of stimuli such as figures and pictures.', 'pdf_files/CHAPTER__4.pdf', '', '1011'),
(608, '', '', '', '1107', 'Chapter 5 - Learning', 'At the time of birth every human baby is equipped with the capacity to make a limited number of responses. These responses occur reflexively whenever appropriate stimuli are present in the environment. As the child grows and matures, s/he becomes capable of making diverse types of responses. These include identifying the images of some persons as one’s mother, father or grandfather, using a spoon when eating food, and learning how to identify alphabets, to write, and to combine them into words. S/he also observes others doing things in specific environmental conditions, and imitates them. Learning names of objects such as book, orange, mango, cow, boy, and girl, and retaining them is another important task. One also learns to drive a scooter or a car, to communicate with others effectively, and to interact with others. It is all due to learning that a person becomes hard working or indolent, socially knowledgeable, skilled, and professionally competent. Each individual manages her or his life and solves all kinds of problems because of the capacity to learn and adapt. This chapter focuses on the various aspects of learning. First, learning is defined and characterised as a psychological process. Second, an account is presented that explains how one learns. A number of learning methods that account for simple to complex types of learning are described. In the third section, some empirical phenomena, that occur in the course of learning, are explained. In the fourth section, different factors that determine the speed and extent of learning are described including different learning disabilities', 'pdf_files/CHAPTER__5.pdf', '', '1011'),
(609, '', '', '', '1107', 'Chapter 6 - Human memory', 'All of us are aware of the tricks that memory plays on us throughout our lives. Have you ever felt embarrassed because you could not remember the name of a known person you were talking to? Or anxious and helpless because everything you memorised well the previous day before taking your examination has suddenly become unavailable? Or felt excited because you can now flawlessly recite lines of a famous poem you had learnt as a child? Memory indeed is a very fascinating yet intriguing human faculty. It functions to preserve our sense of who we are, maintains our interpersonal relationships and helps us in solving problems and taking decisions. Since memory is central to almost all cognitive processes such as perception, thinking and problem solving, psychologists have attempted to understand the manner in which any information is committed to memory, the mechanisms through which it is retained over a period of time, the reasons why it is lost from memory, and the techniques which can lead to memory improvement. In this chapter, we shall examine all these aspects of memory and understand various theories which explain the mechanisms of memory', 'pdf_files/CHAPTER__6.pdf', '', '1011'),
(610, '', '', '', '1107', 'Chapter 7 - Thinking', 'All of us are aware of the tricks that memory plays on us throughout our lives. Have you ever felt embarrassed because you could not remember the name of a known person you were talking to? Or anxious and helpless because everything you memorised well the previous day before taking your examination has suddenly become unavailable? Or felt excited because you can now flawlessly recite lines of a famous poem you had learnt as a child? Memory indeed is a very fascinating yet intriguing human faculty. It functions to preserve our sense of who we are, maintains our interpersonal relationships and helps us in solving problems and taking decisions. Since memory is central to almost all cognitive processes such as perception, thinking and problem solving, psychologists have attempted to understand the manner in which any information is committed to memory, the mechanisms through which it is retained over a period of time, the reasons why it is lost from memory, and the techniques which can lead to memory improvement. In this chapter, we shall examine all these aspects of memory and understand various theories which explain the mechanisms of memory', 'pdf_files/CHAPTER__7.pdf', '', '1011'),
(611, '', '', '', '1107', 'Chapter 8 - Motivation And Emotion', 'Sunita, a girl from a little known town, puts in 10-12 hours of hard work everyday\nin order to get through the various engineering entrance examinations. Hemant, a\nphysically challenged boy, wants to take part in an expedition and trains himself\nextensively in a mountaineering institute. Aman saves money from his scholarship\nso that he can buy a gift for his mother. These are just a few examples, which\nindicate the role motivation plays in human behaviour. Each of these behaviours\nare caused by an underlying motive. Behaviour is goal-driven. Goal-seeking\nbehaviour tends to persist until the goal is achieved. For achieving their goals people\nplan and undertake different activities. How is Sunita going to feel if after all the\nhard work she has put in, she does not succeed or Aman’s scholarship money gets\nstolen. Sunita, perhaps, will be sad and Aman angry. This chapter will help you to\nunderstand the basic concepts of motivation and emotion, and related developments\nin these two areas. The basic emotions, their biological bases, overt expressions,\ncultural influences, their relationship with motivation, and some techniques to help\nyou manage your emotions better will also be dealt with.', 'pdf_files/CHAPTER__8.pdf', '', '1011'),
(612, 'Chemistry', 'Solutions for Chemistry', '\nDive deep into the magical world of matter and its transformations with NCERT Class 12 Chemistry! Unravel the mysteries of the periodic table, where elements dance in a symphony of properties. Witness the elegance of chemical reactions, as bonds form and break, orchestrating the creation of new substances. Peer into the intricate dance of electrons, deciphering their energy levels and shaping the building blocks of our universe. Master the art of stoichiometry, calculating the precise weights and measures that fuel these transformations. Prepare to explore the fascinating realms of organic chemistry, where intricate carbon skeletons weave tales of life itself. This isn\'t just about memorizing formulas, it\'s about understanding the very essence of nature\'s grand design. Are you ready to embark on this captivating journey through the wonders of chemistry?\n', '1103', 'Chapter 1 - Some Basic Concepts of Chemistry', 'Chemistry is the science of molecules and their\ntransformations. It is the science not so much of the one\nhundred elements but of the infinite variety of molecules\nthat may be built from them.\nPeople in ancient India, already had the knowledge of\nmany scientific phenomenon much before the advent of\nmodern science. They applied that knowledge in various\nwalks of life. Chemistry developed mainly in the form\nof Alchemy and Iatrochemistry during 1300-1600 CE.\nModern chemistry took shape in the 18th century Europe,\nafter a few centuries of alchemical traditions which were\nintroduced in Europe by the Arabs. \n', 'pdf_files/11th_chemistry_chapter-1.pdf', '', '1011'),
(613, '', '', '', '1103', 'Chapter 2 - Structure of Atom', 'The chapter on the \"Structure of Atom\" delves into the fundamental building blocks of matter, exploring the intricate details of atomic structure. The chapter begins with the historical development of atomic models, ranging from Dalton\'s indivisible atom to Rutherford\'s nuclear model. The Bohr model introduces quantized energy levels and orbits for electrons, providing insights into the electronic configuration of atoms. The existence of atoms has been proposed since the time\nof early Indian and Greek philosophers (400 B.C.) who\nwere of the view that atoms are the fundamental building\nblocks of matter. According to them, the continued\nsubdivisions of matter would ultimately yield atoms\nwhich would not be further divisible. The word ‘atom’\nhas been derived from the Greek word ‘a-tomio’ which\nmeans ‘uncut-able’ or ‘non-divisible’. These earlier ideas\nwere mere speculations and there was no way to test\nthem experimentally. These ideas remained dormant for\na very long time and were revived again by scientists in\nthe nineteenth century.', 'pdf_files/11th_chemistry_chapter-2.pdf', '', '1011'),
(614, '', '', '', '1103', 'Chapter 3 -Classification of Elements and Periodicity in Properties', 'The \"Classification of Elements and Periodicity in Properties\" chapter explores the systematic arrangement of elements in the periodic table and the patterns in their properties. The modern periodic table, organized based on the increasing atomic number, serves as the backbone for understanding the behaviour of elements.The existence of atoms has been proposed since the time\nof early Indian and Greek philosophers (400 B.C.) who\nwere of the view that atoms are the fundamental building\nblocks of matter. According to them, the continued\nsubdivisions of matter would ultimately yield atoms\nwhich would not be further divisible. The word ‘atom’\nhas been derived from the Greek word ‘a-tomio’ which\nmeans ‘uncut-able’ or ‘non-divisible’. These earlier ideas\nwere mere speculations and there was no way to test\nthem experimentally. These ideas remained dormant for\na very long time and were revived again by scientists in\nthe nineteenth century.', 'pdf_files/11th_chemistry_chapter-3.pdf', '', '1011'),
(615, '', '', '', '1103', 'Chapter 4 - Chemical Bonding and Molecular Structure', 'The chapter on \"Chemical Bonding and Molecular Structure\" explores the fundamental principles governing the formation of chemical bonds and the three-dimensional arrangement of atoms in molecules. Under normal conditions no other element exists as an\nindependent atom in nature, except noble gases. However,\na group of atoms is found to exist together as one species\nhaving characteristic properties. Such a group of atoms\nis called a molecule. Obviously there must be some force\nwhich holds these constituent atoms together in the\nmolecules. The attractive force which holds various\nconstituents (atoms, ions, etc.) together in different\nchemical species is called a chemical bond.', 'pdf_files/11th_chemistry_chapter-4.pdf', '', '1011'),
(616, '', '', '', '1103', 'Chapter 5 - Thermodynamics', 'Thermodynamics, a foundational branch of physical science, delves into the intricate relationships between heat, energy, and work within diverse systems. The discipline is guided by four fundamental laws. The Zeroth Law establishes the concept of temperature and thermal equilibrium between systems. The First Law, rooted in the principle of energy conservation, asserts that energy can neither be created nor destroyed, only transformed. Chemical energy stored by molecules can be released as\nheat during chemical reactions when a fuel like methane,\ncooking gas or coal burns in air. The chemical energy may\nalso be used to do mechanical work when a fuel burns\nin an engine or to provide electrical energy through a\ngalvanic cell like dry cell.', 'pdf_files/11th_chemistry_chapter-5.pdf', '', '1011'),
(617, '', '', '', '1103', 'Chapter 6 - Equilibrium', 'The study of chemical equilibrium forms a cornerstone in understanding the behaviour of reversible reactions and the dynamic interplay between reactants and products. At equilibrium, the rates of the forward and reverse reactions reach a state of balance, resulting in a consistent concentration of both reactants and products. Chemical equilibria are important in numerous biological\nand environmental processes. For example, equilibria\ninvolving O2 molecules and the protein hemoglobin play\na crucial role in the transport and delivery of O2 from\nour lungs to our muscles. Similar equilibria involving CO\nmolecules and hemoglobin account for the toxicity of CO.', 'pdf_files/11th_chemistry_chapter-6.pdf', '', '1011'),
(618, 'Biology', 'Solutions for biology', 'Biology is the study of biological organisms and processes. The living world contains a diverse range of species. Early humans could easily distinguish between inanimate objects and living beings. Early humans worshiped both inanimate objects (e.g., wind, sea, fire) and living things. Inanimate and animate items often inspire a sense of awe or dread. The description of living entities, including humans, started later in history. Societies with an anthropocentric understanding of biology may experience limited growth in scientific knowledge. The systematic and massive description of biological forms necessitated sophisticated methods for identification, nomenclature, and classification. ', '1101', 'Chapter 1-The Living World', 'The living world\r\ncomprises an amazing diversity of living organisms. Early man could\r\neasily perceive the difference between inanimate matter and living\r\norganisms. Early man deified some of the inanimate matter (wind, sea,\r\nfire etc.) and some among the animals and plants. A common feature of\r\nall such forms of inanimate and animate objects was the sense of awe\r\nor fear that they evoked. The description of living organisms including\r\nhuman beings began much later in human history. Societies which\r\nindulged in anthropocentric view of biology could register limited\r\nprogress in biological knowledge. Systematic and monumental\r\ndescription of life forms brought in, out of necessity, detailed systems\r\nof identification, nomenclature and classification.', 'pdf_files/biology_11__class_-_for_merge_2_chapter-1.pdf', 'Class 11', '1011'),
(619, '', '', '', '1101', 'Chapter 2 - Biological Classification', 'Since the dawn of civilisation, there have been many attempts to classify\nliving organisms. It was done instinctively not using criteria that were\nscientific but borne out of a need to use organisms for our own use – for\nfood, shelter and clothing. Aristotle was the earliest to attempt a more\nscientific basis for classification. He used simple morphological characters\nto classify plants into trees, shrubs and herbs. He also divided animals\ninto two groups, those which had red blood and those that did not.', 'pdf_files/biology_11__class_-_for_merge_2_chapter-2.pdf', '', '1011'),
(620, '', '', '', '1101', 'Chapter 3 - Plant Kingdom', 'Let us also look at classification within angiosperms to understand\nsome of the concerns that influenced the classification systems. The\nearliest systems of classification used only gross superficial morphological\ncharacters such as habit, colour, number and shape of leaves, etc. They\nwere based mainly on vegetative characters or on the androecium\nstructure (system given by Linnaeus). Such systems were artificial, they\nseparated the closely related species since they were based on a few\ncharacteristics. Also, the artificial systems gave equal weightage to\nvegetative and sexual characteristics, this is not acceptable since we know\nthat often the vegetative characters are more easily affected by\nenvironment. As against this, natural classification systems developed,\nwhich were based on natural affinities among the organisms and consider.', 'pdf_files/biology_11__class_-_for_merge_2_chapter-3.pdf', '', '1011'),
(621, '', '', '', '1101', 'Chapter 4 - Animal Kingdom', 'Inspite of differences in structure and form of different animals, there are\nfundamental features common to various individuals in relation to the\narrangement of cells, body symmetry, nature of coelom, patterns of\ndigestive, circulatory or reproductive systems. These features are used\nas the basis of animal classification and some of them are discussed here.Though all members of Animalia are multicellular, all of them do not\nexhibit the same pattern of organisation of cells. For example, in sponges,\nthe cells are arranged as loose cell aggregates, i.e., they exhibit cellular\nlevel of organisation. Some division of labour (activities) occur among\nthe cells. In coelenterates, the arrangement of cells is more complex. Here\nthe cells performing the same function are arranged into tissues, hence is\ncalled tissue level of organisation. A still higher level of organisation, i.e.,\norgan level is exhibited by members of Platyhelminthes and other higher\nphyla where tissues are grouped together to form organs, each specialised\nfor a particular function. In animals like Annelids, Arthropods, Molluscs.', 'pdf_files/biology_11__class_-_for_merge_2_chapter-4.pdf', '', '1011'),
(622, '', '', '', '1101', 'Chapter 5-morphology Of Flowering Plants', 'The description of the diverse forms of life on earth was made only by\nobservation – through naked eyes or later through magnifying lenses\nand microscopes. This description is mainly of gross structural features,\nboth external and internal. In addition, observable and perceivable\nliving phenomena were also recorded as part of this description. Before\nexperimental biology or more specifically, physiology, was established\nas a part of biology, naturalists described only biology. Hence, biology\nremained as a natural history for a long time. The description, by itself,\nwas amazing in terms of detail. While the initial reaction of a student\ncould be boredom, one should keep in mind that the detailed description,\nwas utilised in the later day reductionist biology where living processes\ndrew more attention from scientists than the description of life forms\nand their structure. Hence, this description became meaningful and\nhelpful in framing research questions in physiology or evolutionary\nbiology. In the following chapters of this unit, the structural organisation\nof plants and animals, including the structural basis of physiologial or\nbehavioural phenomena, is described. For convenience, this description\nof morphological and anatomical features is presented separately for\nplants and animals.\n', 'pdf_files/biology_11__class_-_for_merge_2_chapter-5.pdf', '', '1011'),
(623, '', '', '', '1101', 'Chapter 6 - Anatomy Of Flowering Plants', 'The structural similarities and variations in the\nexternal morphology of the larger living organism, both plants and\nanimals. Similarly, if we were to study the internal structure, one also\nfinds several similarities as well as differences. This chapter introduces\nyou to the internal structure and functional organisation of higher plants.\nStudy of internal structure of plants is called anatomy. Plants have cells\nas the basic unit, cells are organised into tissues and in turn the tissues\nare organised into organs. Different organs in a plant show differences in\ntheir internal structure. Within angiosperms, the monocots and dicots\nare also seen to be anatomically different. Internal structures also show\nadaptations to diverse environments.', 'pdf_files/biology_11__class_-_for_merge_2_chapter-6.pdf', '', '1011'),
(624, '', '', '', '1101', 'Chapter 7 - Structural Organisation in Animals', 'In unicellular\norganisms, all functions like digestion, respiration and reproduction\nare performed by a single cell. In the complex body of multicellular\nanimals the same basic functions are carried out by different groups of\ncells in a well organised manner. The body of a simple organism like\nHydra is made of different types of cells and the number of cells in each\ntype can be in thousands. The human body is composed of billions of\ncells to perform various functions. How do these cells in the body work\ntogether? As you have already learnt in your earlier classes, in\nmulticellular animals, a group of similar cells alongwith intercellular\nsubstances perform a specific function. Such an organisation is called\ntissue.', 'pdf_files/biology_11__class_-_for_merge_2_chapter-7.pdf', '', '1011'),
(625, '', '', '', '1101', 'Chapter 8 - Cell : The Unit of Life', 'The detailed description of\ntheir form and appearance only brought out their diversity. It is the\ncell theory that emphasised the unity underlying this diversity of forms,\ni.e., the cellular organisation of all life forms. A description of cell\nstructure and cell growth by division is given in the chapters comprising\nthis unit. Cell theory also created a sense of mystery around living\nphenomena, i.e., physiological and behavioural processes. This mystery\nwas the requirement of integrity of cellular organisation for living\nphenomena to be demonstrated or observed. In studying and\nunderstanding the physiological and behavioural processes, one can\ntake a physico-chemical approach and use cell-free systems to\ninvestigate. This approach enables us to describe the various processes\nin molecular terms. The approach is established by analysis of living\ntissues for elements and compounds. It will tell us what types of organic\ncompounds are present in living organisms. In the next stage, one can\nask the question: What are these compounds doing inside a cell? And,\nin what way they carry out gross physiological processes like digestion,\nexcretion, memory, defense, recognition, etc. In other words we answer\nthe question, what is the molecular basis of all physiological processes?\nIt can also explain the abnormal processes that occur during any\ndiseased condition. This physico-chemical approach to study and\nunderstand living organisms is called ‘Reductionist Biology’. The\nconcepts and techniques of physics and chemistry are applied to\nunderstand biology. In Chapter 9 of this unit, a brief description of\nbiomolecules is provided.\n', 'pdf_files/biology_11__class_-_for_merge_2_chapter-8.pdf', '', '1011'),
(626, '', '', '', '1101', 'Chapter 9 - Biomolecules', 'The detailed description of\ntheir form and appearance only brought out their diversity. It is the\ncell theory that emphasised the unity underlying this diversity of forms,\ni.e., the cellular organisation of all life forms. A description of cell\nstructure and cell growth by division is given in the chapters comprising\nthis unit. Cell theory also created a sense of mystery around living\nphenomena, i.e., physiological and behavioural processes. This mystery\nwas the requirement of integrity of cellular organisation for living\nphenomena to be demonstrated or observed. In studying and\nunderstanding the physiological and behavioural processes, one can\ntake a physico-chemical approach and use cell-free systems to\ninvestigate. This approach enables us to describe the various processes\nin molecular terms. The approach is established by analysis of living\ntissues for elements and compounds. It will tell us what types of organic\ncompounds are present in living organisms. In the next stage, one can\nask the question: What are these compounds doing inside a cell? And,\nin what way they carry out gross physiological processes like digestion,\nexcretion, memory, defense, recognition, etc. In other words we answer\nthe question, what is the molecular basis of all physiological processes?\nIt can also explain the abnormal processes that occur during any\ndiseased condition. This physico-chemical approach to study and\nunderstand living organisms is called ‘Reductionist Biology’. The\nconcepts and techniques of physics and chemistry are applied to\nunderstand biology. In Chapter 9 of this unit, a brief description of\nbiomolecules is provided.\n', 'pdf_files/biology_11__class_-_for_merge_2_chapter-9.pdf', '', '1011'),
(627, '', '', '', '1101', 'Chapter 10 - Cell Cycle and Cell Division', 'Growth and reproduction are characteristics of cells,\nindeed of all living organisms. All cells reproduce by dividing into two,\nwith each parental cell giving rise to two daughter cells each time they\ndivide. These newly formed daughter cells can themselves grow and divide,\ngiving rise to a new cell population that is formed by the growth and\ndivision of a single parental cell and its progeny. In other words, such\ncycles of growth and division allow a single cell to form a structure\nconsisting of millions of cells.Cell division is a very important process in all living organisms. During\nthe division of a cell, DNA replication and cell growth also take place. All\nthese processes, i.e., cell division, DNA replication, and cell growth, hence,\nhave to take place in a coordinated way to ensure correct division and\nformation of progeny cells containing intact genomes. The sequence of\nevents by which a cell duplicates its genome, synthesises the other\nconstituents of the cell and eventually divides into two daughter cells is\ntermed cell cycle. Although cell growth (in terms of cytoplasmic increase)\nis a continuous process, DNA synthesis occurs only during one specific\nstage in the cell cycle. The replicated chromosomes (DNA) are then\ndistributed to daughter nuclei by a complex series of events during cell\ndivision. These events are themselves under genetic control.\n', 'pdf_files/biology_11__class_-_for_merge_2_chapter-10.pdf', '', '1011'),
(628, '', '', '', '1101', 'Chapter 11 - Photosynthesis in Higher plants', 'The description of structure and variation of living organisms over a\nperiod of time, ended up as two, apparently irreconcilable perspectives\non biology. The two perspectives essentially rested on two levels of\norganisation of life forms and phenomena. One described at organismic\nand above level of organisation while the second described at cellular\nand molecular level of organisation. The first resulted in ecology and\nrelated disciplines. The second resulted in physiology and biochemistry.\nDescription of physiological processes, in flowering plants as an\nexample, is what is given in the chapters in this unit. The processes of\nphotosynthesis, respiration and ultimately plant growth and\ndevelopment are described in molecular terms but in the context of\ncellular activities and even at organism level. Wherever appropriate,\nthe relation of the physiological processes to environment is also\ndiscussed.', 'pdf_files/biology_11__class_-_for_merge_2_c-11_am5oSZy.pdf', '', '1011'),
(629, '', '', '', '1101', 'Chapter 12 - Respiration In Plants', 'All of us breathe to live, but why is breathing so essential to life? What\nhappens when we breathe? Also, do all living organisms, including plants\nand microbes.All living organisms need energy for carrying out daily life activities,\nbe it absorption, transport, movement, reproduction or even breathing.All the energy required for ‘life’ processes is obtained by oxidation of\nsome macromolecules that we call ‘food’. Only green plants and\ncyanobacteria can prepare their own food, by the process of photosynthesis\nthey trap light energy and convert it into chemical energy that is stored in\nthe bonds of carbohydrates like glucose, sucrose and starch. We must\nremember that in green plants too, not all cells, tissues and organs\nphotosynthesise, only cells containing chloroplasts, that are most often\nlocated in the superficial layers, carry out photosynthesis. Hence, even\nin green plants all other organs, tissues and cells that are non-green,\nneed food for oxidation.', 'pdf_files/biology_11__class_-_for_merge_2_c-12.pdf', '', '1001'),
(630, '', '', '', '1101', 'Chapter 13 - Plant Growth And Development', 'Growth is one of the most conspicuous events in any living organism. It is an irreversible increase expressed in parameters such as size, area, length, height, volume, cell number etc. It conspicuously involves increased protoplasmic material. In plants, meristems are the sites of growth. Root and shoot apical meristems sometimes alongwith intercalary meristem, contribute to the elongation growth of plant axes. Growth is indeterminate in higher plants. Following cell division in root and shoot apical meristem cells, the growth could be arithmetic or geometrical. Growth may not be and generally is not sustained at a high rate throughout the life of cell/ tissue/organ/organism. One can define three principle phases of growth – the lag, the log and the senescent phase. When a cell loses the capacity to divide, it leads to differentiation. Differentiation results in development of structures that is commensurate with the function the cells finally has to perform. General principles for differentiation for cell, tissues and organs are similar. A differentiated cell may dedifferentiate and then redifferentiate. Since differentiation in plants is open, the development could also be flexible, i.e., the development is the sum of growth and differentiation. Plant exhibit plasticity in development. Plant growth and development are under the control of both intrinsic and extrinsic factors. Intercellular intrinsic factors are the chemical substances, called plant growth regulators (PGR).', 'pdf_files/biology_11__class_-_for_merge_2_c-13.pdf', '', '1011');
INSERT INTO `learning_stdclass` (`id`, `subjects`, `intro`, `description`, `subid`, `chaptername`, `chapterdis`, `pdf`, `classes`, `classid`) VALUES
(631, '', '', '', '1101', 'Chapter 14 - Breathing and Exchange of Gases.', 'The reductionist approach to study of life forms resulted in increasing\nuse of physico-chemical concepts and techniques. Majority of these\nstudies employed either surviving tissue model or straightaway cellfree systems. An explosion of knowledge resulted in molecular biology.\nMolecular physiology became almost synonymous with biochemistry\nand biophysics. However, it is now being increasingly realised that\nneither a purely organismic approach nor a purely reductionistic\nmolecular approach would reveal the truth about biological processes\nor living phenomena. Systems biology makes us believe that all living\nphenomena are emergent properties due to interaction among\ncomponents of the system under study. Regulatory network of\nmolecules, supra molecular assemblies, cells, tissues, organisms and\nindeed, populations and communities, each create emergent\nproperties. In the chapters under this unit, major human physiological\nprocesses like, exchange of gases, blood circulation, locomotion and\nmovement are described in cellular and molecular terms. The last\ntwo chapters point to the coordination and regulation of body events\nat the organismic level.\n', 'pdf_files/biology_11__class_-_for_merge_2_c-14.pdf', '', '1011'),
(632, '', '', '', '1101', 'Chapter 15 - Body Fluids And Circulation', 'Vertebrates circulate blood, a fluid connective tissue, in their body, to transport essential substances to the cells and to carry waste substances from there. Another fluid, lymph (tissue fluid) is also used for the transport of certain substances. Blood comprises of a fluid matrix, plasma and formed elements. Red blood cells (RBCs, erythrocytes), white blood cells (WBCs, leucocytes) and platelets (thrombocytes) constitute the formed elements. Blood of humans are grouped into A, B, AB and O systems based on the presence or absence of two surface antigens, A, B on the RBCs. Another blood grouping is also done based on the presence or absence of another antigen called Rhesus factor (Rh) on the surface of RBCs. The spaces between cells in the tissues contain a fluid derived from blood called tissue fluid. This fluid called lymph is almost similar to blood except for the protein content and the formed elements.', 'pdf_files/biology_11__class_-_for_merge_2_c-15.pdf', '', '1011'),
(633, '', '', '', '1101', 'Chapter 16- Excretory products and Their Elimation', 'Many nitrogen containing substances, ions, CO2, water, etc., that accumulate in the body have to be eliminated. Nature of nitrogenous wastes formed and their excretion vary among animals, mainly depending on the habitat (availability of water). Ammonia, urea and uric acid are the major nitrogenous wastes excreted. Protonephridia, nephridia, malpighian tubules, green glands and the kidneys are the common excretory organs in animals. They not only eliminate nitrogenous wastes but also help in the maintenance of ionic and acid-base balance of body fluids. In humans, the excretory system consists of one pair of kidneys, a pair of ureters, a urinary bladder and a urethra. Each kidney has over a million tubular structures called nephrons. Nephron is the functional unit of kidney and has two portions  glomerulus and renal tubule. Glomerulus is a tuft of capillaries formed from afferent arterioles, fine branches of renal artery. The renal tubule starts with a double walled Bowman’s capsule and is further differentiated into a proximal convoluted tubule (PCT), Henle’s loop (HL) and distal convoluted tubule (DCT). The DCTs of many nephrons join to a common collecting duct many of which ultimately open into the renal pelvis through the medullary pyramids. ', 'pdf_files/biology_11__class_-_for_merge_2_c-16.pdf', '', '1011'),
(634, '', '', '', '1101', 'Chapter 17 - Locomotion and Movement ', 'Movement is one of the significant features of living beings. Animals and\nplants exhibit a wide range of movements. Streaming of protoplasm in\nthe unicellular organisms like Amoeba is a simple form of movement.\nMovement of cilia, flagella and tentacles are shown by many organisms.\nHuman beings can move limbs, jaws, eyelids, tongue, etc. Some of the\nmovements result in a change of place or location. Such voluntary\nmovements are called locomotion. Walking, running, climbing, flying,\nswimming are all some forms of locomotory movements. Locomotory\nstructures need not be different from those affecting other types of\nmovements. For example, in Paramoecium, cilia helps in the movement of\nfood through cytopharynx and in locomotion as well. Hydra can use its\ntentacles for capturing its prey and also use them for locomotion. We use\nlimbs for changes in body postures and locomotion as well. The above\nobservations suggest that movements and locomotion cannot be studied\nseparately. The two may be linked by stating that all locomotions are\nmovements but all movements are not locomotions.', 'pdf_files/biology_11__class_-_for_merge_2_c-17.pdf', '', '1011'),
(635, '', '', '', '1101', 'Chapter 18 - Neural Control And Coordination', ' Coordination is the\nprocess through which two or more organs interact and complement the\nfunctions of one another. For example, when we do physical exercises,\nthe energy demand is increased for maintaining an increased muscular\nactivity. The supply of oxygen is also increased. The increased supply of\noxygen necessitates an increase in the rate of respiration, heart beat and\nincreased blood flow via blood vessels. When physical exercise is stopped,\nthe activities of nerves, lungs, heart and kidney gradually return to their\nnormal conditions. Thus, the functions of muscles, lungs, heart, blood\nvessels, kidney and other organs are coordinated while performing physical\nexercises. In our body the neural system and the endocrine system jointly\ncoordinate and integrate all the activities of the organs so that they function\nin a synchronised fashion.\nThe neural system provides an organised network of point-to-point\nconnections for a quick coordination. The endocrine system provides\nchemical integration through hormones. In this chapter, you will learn\nabout the neural system of human, mechanisms of neural coordination\nlike transmission of nerve impulse, impulse conduction across a synapse.', 'pdf_files/biology_11__class_-_for_merge_2_c-18.pdf', '', '1011'),
(636, '', '', '', '1101', 'Chapter 19 -Chemical Coordination and Integration ', 'The neural\ncoordination is fast but short-lived. As the nerve fibres do not innervate\nall cells of the body and the cellular functions need to be continuously\nregulated, a special kind of coordination and integration has to be\nprovided. This function is carried out by hormones. The neural system\nand the endocrine system jointly coordinate and regulate the\nphysiological functions in the body.There are special chemicals which act as hormones and provide chemical coordination, integration and regulation in the human body. These hormones regulate metabolism, growth and development of our organs, the endocrine glands or certain cells. The endocrine system is composed of hypothalamus, pituitary and pineal, thyroid, adrenal, pancreas, parathyroid, thymus and gonads (testis and ovary). In addition to these, some other organs, e.g., gastrointestinal tract, kidney, heart etc., also produce hormones. The pituitary gland is divided into three major parts, which are called as pars distalis, pars intermedia and pars nervosa', 'pdf_files/biology_11__class_-_for_merge_2_c-19.pdf', '', '1011'),
(637, 'Biotechnology', 'Solutions for Biotechnology ', 'Knowledge of natural sciences has been applied to develop technologies since long for the welfare and comfort of human beings. It has also contributed to enhance the value of human lives. Research in the fields of physics and chemistry gave rise to engineering and technology industries. Among the many fields of science is a broad area of biology called Biotechnology, which has now expanded to diverse fields such as genetics, immunology, agriculture, genomics, etc. This unit provides a comprehensive description to develop the understanding of early history of biotechnology along with the recent developments in this field. ', '1102', 'Chapter 1 -An Introduction to Biotechnology', 'Biotechnology isn\'t just science fiction, it\'s blending biology and engineering to make life better! Think medicines, super crops, and even cleaning up the environment – that\'s biotech\'s power. White biotech tackles healthcare, from vaccines to personalized medicine. Red biotech focuses on agriculture, boosting crops and fighting pests. Green biotech champions sustainability, using microbes to clean up messes and create biofuels.Biotechnology, the term, is a combination of two words\n‘bio’ and ‘technology’, ‘bio’ means biological systems or\nprocesses, and ‘technology’ refers to methods, systems,\nand devices used to make useful products from these\nbiological systems. Thus, biotechnology refers to the\ndifferent technologies that make use of living cells and/\nor biological molecules to generate useful products for the\nbenefit of mankind. \n ', 'pdf_files/Biotechnology_3_chapter-1.pdf', '', '1011'),
(638, '', '', '', '1102', 'Chapter 2 - Cellular Organelles', 'Being the structural and functional unit of a living\norganism, cell has got a very important place in\nunderstanding the entire functioning of a living\nsystem. Therefore, it is required to have a thorough\nunderstanding of the structure and functions of a cell.\nThis unit gives a detailed description of the general\ncharacteristics of cell, its structure and growth. Cell\ntheory, which will be explained in Chapter 2 of this\nunit, offered an intriguing explanation of the living\nphenomena. It filled the researchers with wonder and\ncompelled them to investigate the molecular structure\nand physiochemical characteristics of a cell. Chapter\n3 deals with details of the molecular compounds\nresponsible for carrying out various cellular\nprocesses and sustaining living systems. Central to\nthe various molecular processes are the biocatalysts,\nwithout the help of which, all the biochemical\nreactions in a living system would slow down', 'pdf_files/Biotechnology_3_chapter-2.pdf', '', '1011'),
(639, '', '', '', '1102', 'Chapter 3 - Biomolecules', 'Each organelle has distinct structure and\ntherefore performs different function. For example, cell\nmembrane is made up of lipids and proteins. Cell wall is\nmade up of carbohydrates. Chromosomes are made up of\nprotein and nucleic acid, i.e., DNA and ribosomes are made\nup of protein and nucleic acids, i.e., RNA. These ingredients\nof cellular organelles are also called macromolecules or\nbiomolecules. There are four major types of biomolecules—\ncarbohydrates, proteins, lipids and nucleic acids. Apart from\nbeing structural entities of the cell, these biomolecules play\nimportant functions in cellular processes. In this chapter you\nwill study the structure and functions of these biomolecules.', 'pdf_files/Biotechnology_3_chapter-3.pdf', '', '1011'),
(640, '', '', '', '1102', 'Chapter 4 - Enzymes and Bioenergetics', 'Enzymes are biocatalysts and they catalyse the\nbiochemical reactions both in vivo as well as in vitro. They\nare highly specific to its substrate and have great catalytic\npower, i.e., they enhance the rate of reaction tremendously\nwithout being changed. All enzymes are proteins with\nexception of some small group of catalytic RNA molecules\ncalled ribozymes. Like proteins, the molecular weight of\nenzymes ranges from about 2000 to more than one million\nDalton. Enzymatic activity of proteinaceous enzymes may\nbe affected depending on the conformational structure as\nwell as its denaturation. There are many enzymes which\nrequire cofactors for their catalytic activity. The cofactor\nmay be a complex organic molecule called coenzyme\nor it may be a metal ion such as Fe2+, Mn2+,\nZn2+, Mg2+ . An enzyme plus its cofactor is called\nholoenzyme. In such cases, the protein component in\ncofactor requiring enzyme is called apoenzyme.', 'pdf_files/Biotechnology_3_chapter-4.pdf', '', '1011'),
(641, '', '', '', '1102', 'Chapter 5 - Cellular Processes', 'Cells are not simply the building blocks of our body.\nAn important property of both, the prokaryotic and the\neukaryotic cells, is that they constantly receive and\ninterpret environmental cues and respond to them in real\ntime. These signals include light, heat, sound, and touch.\nThe cell fates during development are specified by signal\ning pathways in response to extracellular signals. Cells\ninteract with their neighbouring cells by transmitting\nand receiving signals. These signals are synthesised by\nthe cells in the form of chemicals and released in the\nextracellular milieu. However, cells can also respond to\n‘external’ signals which are not synthesised by the cells\nof our body. Therefore, one can assume that the cells are\ncapable of sensing a wide variety of signals. It is important\nto note that a cell can only respond to a particular signal if it\npossesses the corresponding receptor for it. A receptor is a\nglycoprotein located either on the cell surface or inside the\ncytoplasm or the nucleus. A chemical messenger to which\na receptor responds is a ligand.', 'pdf_files/Biotechnology_3_c-5.pdf', '', '1011'),
(642, '', '', '', '1102', 'Chapter 6 - Basic Principles of Inheritance', 'The idea of inheritance patterns emerged from the\nwork of Mendel and other scientists who followed\nhim. What was not clear was the nature of the\n‘factors’ which are responsible for determining a\nparticular phenotype. It became crucial to have an\nunderstanding of the structure of genetic material\nand the patterns of inheritance. The foundation\nof molecular biology and genetics was laid down\nby many eminent scientists of that time, such as\nWatson, Crick, Nirenberg, Khorana, Monod, Benzer,\netc..', 'pdf_files/Biotechnology_3_c-6.pdf', '', '1011'),
(643, '', '', '', '1102', 'Chapter 7 -Basic Processes', 'Credit of discovery of DNA goes to Johann Friedrich\nMiescher, who for the first time isolated an acidic substance\nfrom nuclei of pus cells and named nuclein having DNA\nand protein. Due to presence in chromosome and nucleus\nthese two chemical components, nucleic acid (mainly DNA)\nand protein became possible candidates to be the genetic\nmaterial. Still, the nature of genetic material remained\nunknown for a long time. Gradually, experiments with\nmicroorganisms by different investigators yielded results\nthat provided evidences in favour of DNA as genetic material.', 'pdf_files/Biotechnology_3_c-7.pdf', '', '1011'),
(644, '', '', '', '1102', 'Chapter 8 - Genetic Disorder', 'The\nchange in structure is called structural chromosomal\nabnormality (or aberration) and the change in number is\ncalled numerical chromosomal abnormalities. When one\nchromosome of the pair is absent, the condition is called\nmonosomy (2n-1) for that chromosome e.g., monosomy of\nchromosome 1. When a chromosome is present in three\ncopies, this condition is called trisomy (2n+1) e.g., trisomy\nof chromosome X. It is important to notice that both\nmonosomy and trisomy come under the broad category of\naneuploidy. However, when the entire set of chromosome\nis multiplied (e.g., 69: 23 ´ 3, 92: 23 ´ 4), the condition\nis called polyploidy. The artificial breeding of plants has\nresulted in several polyploid varieties that we commonly\nuse in our food. For example, bread wheat has six sets\nof chromosomes (hexaploid), cabbages or mustards are tetraploids. Likewise, banana and apple are triploid (3 sets\nof chromosomes), strawberry and sugar cane are octoploid\n(8 sets of chromosomes). Both structural or numerical\nchanges can result in significant changes in phenotypic\ncondition in the form of diseases or syndromes. ', 'pdf_files/Biotechnology_3_c-8.pdf', '', '1011'),
(645, '', '', '', '1102', 'Chapter 9 - Introduction to Bioinformatics', 'The objective of this chapter is to let you know why\nunderstanding of the basic concepts of mathematics and\nstatistics is important to a biologist.\nThe outcome of any biological experiment is data.\nPreviously, biologists used to generate and analyse data\nwithout the help of sophisticated software, computational\ntools, and statistical tests. However, this is not the case\nanymore. With the advent of instruments like highthroughput DNA sequencers, powerful microscopes, and\nother imaging systems, and analytical instruments capable\nof generating large volumes of data, biologists can no\nlonger deal with the data using their notebooks and Excel\nsheets. Instead, they need computational and statistical\ntools to handle data. Large volumes of data often require\nquantitative analyses to interpret and generate biological\nmeaning. ', 'pdf_files/Biotechnology_3_c-9.pdf', '', '1011'),
(646, '', '', '', '1102', 'Chapter 10 -Protein Informatics and Cheminformatics', 'Collecting information about any protein using\ntechniques of information technology comes under protein\ninformatics. Protein informatics has been of tremendous\nhelp in getting the geometrical location of the functional\nsite, the biochemical function and the biological function\nof the hypothetical proteins. In addition, it has led to\nthe determination of the tertiary structures of many\nhypothetical proteins, whose molecular functions could not\nbe understood using conventional methods. Heterogeneous\ndatabases and various descriptors of amino acid sequences,\ntertiary structures and pathways on the proteome scale\nhave also been of help in developing protein informatics.\nProtein Informatics and Cheminformatics play integral roles in advancing biotechnological research, particularly in the fields of drug discovery, protein engineering, and molecular biology. This chapter explores the computational approaches and techniques employed in understanding and manipulating biological systems at the molecular level', 'pdf_files/Biotechnology_3_c-10.pdf', '', '1011'),
(647, '', '', '', '1102', 'Chapter 11 - Programming and Systems Biology', 'From an era of manual computation, we are currently in a\nphase of large scale (i.e., high-throughput) data generation,\nautomated analysis and prediction. Technological\nadvancements have proven to be a boon for generating\nhuge data, unthinkable a few decades ago which handles\nmore difficult questions. However, the arrival of massive\ndata has also thrown massive challenges in the storage,\nvisualisation, transfer, analysis and interpretation of data.\nThe task that looked gigantic a decade back appears\ntrivial now.\nThe emergence of artificial intelligence and machine\nlearning techniques has changed research practices in\nalmost every field. It is increasingly evident that, in future,\nyoung biotechnology students working at the cutting edge\nof science may require basic programming knowledge and\ncomfort with chemistry and statistical methods.The fact that biotechnology is\nan experimental science and involves a lot of\nexperimentations, therefore, research in this field\ndepends highly on sophisticated laboratory methods.\nAdvances in biotechnology were closely followed by\nthe development of newer tools and techniques in\nbiological sciences. These new methods opened new\navenues for research and investigation in the field\nof biotechnology. It is, thus, important to appreciate\nthe experimental tools available to biotechnologists\nin order to understand the progress and future\ndirections of this rapidly moving area of science.\nSome of the important experimental methods\nincluding methods of cell and molecular biology\nwill be discussed in this unit. ', 'pdf_files/Biotechnology_3_c-11.pdf', '', '1011'),
(648, '', '', '', '1102', 'Chapter 12 - Tools and Technologies', 'Biological studies and explorations cannot be imagined\nwithout a microscope as it enables us to see something\nwhich is beyond the scope of our eyes. Today, the technique\nof microscopy has become so much advanced that a\nresearcher can not only see a highly magnified image of\na very minute structure but also can visualise the three\ndimensional structure of such objects. Using powerful\nelectron microscopic techniques, even the DNA molecule\nof bacteria and viruses have been visualised.The fact that biotechnology is\nan experimental science and involves a lot of\nexperimentations, therefore, research in this field\ndepends highly on sophisticated laboratory methods.\nAdvances in biotechnology were closely followed by\nthe development of newer tools and techniques in\nbiological sciences. These new methods opened new\navenues for research and investigation in the field\nof biotechnology. It is, thus, important to appreciate\nthe experimental tools available to biotechnologists\nin order to understand the progress and future\ndirections of this rapidly moving area of science.\nSome of the important experimental methods\nincluding methods of cell and molecular biology\nwill be discussed in this unit. ', 'pdf_files/Biotechnology_3_c-12.pdf', '', '1011'),
(649, 'History', 'Solutions for History', 'In  this section, we will read about early societies which is often traced to the beginnings of human existence, from the remote past, millions of years ago. Your teachers will inform you how humans first emerged in Africa and how archaeologists have studied these early phases of history from remains of bones and stone tools', '1104', 'Chapter 1 - Writing and City Life-1', 'On another occasion, Nabonidus’s men brought to him a broken statue inscribed with the name of Sargon, king of Akkad. (We know today that the latter ruled around 2370 BCE.) Nabonidus, and indeed many intellectuals, had heard of this great king of remote times. Nabonidus felt he had to repair the statue. ‘Because of my reverence for the gods and respect for kingship,’ he writes, ‘I summoned skilled craftsmen, and replaced the head.', 'pdf_files/class-11-history_chapter-1.pdf', '', '1011'),
(650, '', '', '', '1104', 'Chapter 2 - Writing and City Life-2', 'conomic dynamism opened up one of the avenues of social mobility in the Roman empire. Social advancement was thus not dependent solely on birth, patronage, good luck, or even extraordinary ability. ', 'pdf_files/class-11-history_c-2.pdf', '', '1011'),
(651, '', '', '', '1104', 'Chapter 3 - Nomadic Empires', 'The term ‘nomadic empires’ can appear contradictory: nomads\nare arguably quintessential wanderers, organised in family\nassemblies with a relatively undifferentiated economic life and\nrudimentary systems of political organisation. The term ‘empire’,\non the other hand, carries with it the sense of a material location,\na stability derived from complex social and economic structures\nand the governance of an extensive territorial dominion through\nan elaborate administrative system. But the juxtapositions on\nwhich these definitions are framed may be too narrowly and\nahistorically conceived. They certainly collapse when we study\nsome imperial formations constructed by nomadic groups.\n', 'pdf_files/class-11-history_c-3.pdf', '', '1011'),
(652, '', '', '', '1104', 'Chapter 4 - The Three Orders', 'We also caused to be painted, by the exquisite hands of many masters from different regions, a splendid variety of new windows… Because these windows are very valuable on account of their wonderful execution and the profuse expenditure of painted glass and sapphire glass', 'pdf_files/class-11-history_c-4.pdf', '', '1011'),
(653, '', '', '', '1104', 'Chapter 5 - Changing Cultural Traditions', 'to the intent they might sit in the consciences of the people, through vain superstition and false doctrine, to satisfy their proud ambition, and insatiable covetousness, and to exalt their own honour above king and emperor, yea, and above God himself', 'pdf_files/class-11-history_c-5.pdf', '', '1011'),
(654, '', '', '', '1104', 'Chapter 6 - Displacing Indigenous Peoples', 'Thomas Jefferson, third President of the USA, and a contemporary of Wordsworth, spoke of the natives in words that would lead to a public outcry today: This unfortunate race which we have been taking so much pains to civilize… have justified extermination. Two further developments in world history\ncreated a context for what has been called ‘modernisation’. These\nwere the Industrial Revolution and a series of political revolutions\nthat transformed subjects into citizens, beginning with the\nAmerican Revolution (1776-81) and the French Revolution\n(1789-94).\nBritain has been the world’s first industrial nation. For long\nit was believed that British industrialisation provided the model\nfor industrialisation in other countries. However, historians\nhave begun to question some of the earlier ideas about the\nIndustrial Revolution. Each country drew upon the experiences\nof other nations, without necessarily reproducing any model.\nIn Britain, for instance, coal and cotton textile industries were\ndeveloped in the first phase of industrialisation', 'pdf_files/class-11-history_c-6.pdf', '', '1011'),
(655, '', '', '', '1104', 'Chapter 7 - Paths to Modernization', 'This required writing an eight-legged essay [pa-ku wen] in classical Chinese in a prescribed form. The examination was held twice every three years, at different levels and of those allowed to sit only 1-2 per cent passed the first level,', 'pdf_files/class-11-history_c-7.pdf', '', '1011'),
(656, 'Geography', 'solutions for Geography', 'The Class 11 Geography curriculum is divided into two sections: Fundamentals of Physical Geography and India\'s Physical Environment. The curriculum is intended to provide students with a solid foundation in geography principles as well as the abilities required to understand and analyse the physical environment.', '1106', 'Chapter 1 - Geography as a Discipline', 'The geographical factors have modified the course of history in different parts of the world. Every geographical phenomenon undergoes change through time and can be explained temporarily. The changes in landforms, climate, vegetation, economic activities, occupations and cultural developments have followed a definite historical course.', 'pdf_files/11_th_class_Geography_Chapter-1.pdf', '', '1011'),
(657, '', '', '', '1106', 'Chapter 2- The Origin and Evolution of the Earth', 'The earth was mostly in a volatile state during its primordial stage. Due to gradual increase in density the temperature inside has increased. As a result the material inside started getting separated depending on their densities. This allowed heavier materials (like iron) to sink towards the centre of the earth and the lighter ones to move towards the surface.', 'pdf_files/11_th_class_Geography_Chapter-2.pdf', '', '1011'),
(658, '', '', '', '1106', 'Chapter 3 -Interior of the Earth', ' It should look something like a piece of a ruler. All maps are different. On your map, one centimetre could be equal to 100 kilometres or something like that. Figure out how long the distance to the epicentre (in centimetres) is on your map. ', 'pdf_files/11_th_class_Geography_chapter-3.pdf', '', '1011'),
(659, '', '', '', '1106', 'Chapter 4 - Distribution of Oceans and Continents', 'It is very rightly said. The strips of normal and reverse magnetic field that parallel the mid-oceanic ridges help scientists determine the rates of plate movement. These rates vary considerably', 'pdf_files/11_th_class_Geography_chapter-4.pdf', '', '1011'),
(660, '', '', '', '1106', 'Chapter 5 - Geomorphic Processes', 'In areas with alternating wetting and drying conditions salt crystal growth is favoured and the neighbouring grains are pushed aside. Sodium chloride and gypsum crystals in desert areas heave up overlying layers of materials and with the result polygonal cracks develop all over the heaved surface. With salt crystal growth, chalk breaks down most readily, followed by limestone, sandstone, shale, gneiss and granite', 'pdf_files/11_th_class_Geography_chapter-5.pdf', '', '1011'),
(661, '', '', '', '1106', 'Chapter 6 -Landforms and their Evolution', 'ectonic stability of landmasses and climate, which influence the evolution of landforms. Any disturbance in any of these three controlling factors can upset the systematic and sequential stages in the development and evolution of landforms.', 'pdf_files/11_th_class_Geography_chapter-6.pdf', '', '1011'),
(662, '', '', '', '1106', 'Chapter 7 - Composition and Structure of Atmosphere', 'The main elements of atmosphere which are subject to change and which influence human life on earth are temperature, pressure, winds, humidity, clouds and precipitation. ', 'pdf_files/11_th_class_Geography_chapter-7.pdf', '', '1011'),
(663, '', '', '', '1106', 'chapter 8 - Solar Radiation, Heat Balance and Temperature', 'Smoke and dust particles get collected beneath the inversion layer and spread horizontally to fill the lower strata of the atmosphere. Dense fogs in mornings are common occurrences especially during winter season', 'pdf_files/11_th_class_Geography_chapter-8.pdf', '', '1011'),
(664, '', '', '', '1106', 'Chapter 9 - Atmospheric Circulation and Weather Systems', 'The air with distinctive characteristics in terms of temperature and humidity is called an air mass. In other words, it is defined as a large body of air having little horizontal variation in temperature and moisture.', 'pdf_files/11_th_class_Geography_chapter-9.pdf', '', '1011'),
(665, '', '', '', '1106', 'Chapter 10 - Water in the Atmosphere', 'Evaporation is a process by which water is transformed from liquid to gaseous state. Heat is the main cause for evaporation. Movement of air replaces the saturated layer with the unsaturated layer. Hence, the greater the movement of air, the greater is the evaporation', 'pdf_files/11_th_class_Geography_chapter-10.pdf', '', '1011'),
(666, '', '', '', '1106', 'Chapter 11 - World Climate and Climate Change', 'The major areas are the Amazon Basin in South America, western equatorial Africa and the islands of East Indies. Significant amount of rainfall occurs in every month of the year as thunder showers in the afternoon.', 'pdf_files/11_th_class_Geography_chapter-11.pdf', '', '1011'),
(667, '', '', '', '1106', 'Chapter 12 - \n Water (Oceans)', 'The continental slope connects the continental shelf and the ocean basins. It begins where the bottom of the continental shelf sharply drops off into a steep slope. The gradient of the slope region varies between 2-5°.', 'pdf_files/11_th_class_Geography_chapter-12.pdf', '', '1011'),
(668, '', '', '', '1106', 'Chapter 13 - Movements of Ocean Water', 'The moon’s gravitational pull to a great extent and to a lesser extent the sun’s gravitational pull, are the major causes for the occurrence of tides. Another factor is centrifugal force, which is the force that acts to counter balance the gravity. Together, the gravitational pull and the centrifugal force are responsible for creating the two major tidal bulges on the earth', 'pdf_files/11_th_class_Geography_chapter-13.pdf', '', '1011'),
(669, '', '', '', '1106', 'Chapter 14 - Life on the Earth', 'A biome is a plant and animal community that covers at large geographical area. Abiome can be defined as the total assemblage of plant and animal species interacting within specific conditions. These include rainfall, temperature, humidity and soil conditions. ', 'pdf_files/11_th_class_Geography_chapter-14.pdf', '', '1011'),
(670, 'Sociology', 'Introduction', 'You will recall that the earlier book Introducing Sociology, Class XI had begun with a discussion on the relationship between personal problems and social issues. We also saw how individuals are located within collectivities such as groups, classes, gender, castes and tribes. Indeed each of you, is a member of not just one kind of collectivity, but many overlapping ones. For instance, you are a member of your own peer group, your family and kin, your class and gender, your country and region. Each individual thus has a specific location in the social structure and social stratification system . This also implies that they have different levels and types of access to social resources. In other words the choices an individual has in life in terms of the school s/he goes to or if s/he goes to school at all would depend on the social stratum that s/he belongs to. Likewise with the clothes s/he gets to wear, the food s/he consumes,', '1113', 'Chapter 1 -  SOCIAL STRUCTURE, STRATIFICATION AND SOCIAL  PROCESSES IN SOCIETY', 'One of the central concerns of the sociological perspective has been to understand the dialectical relationship between the individual and society. You will recall C.Wright Mill’s elaboration of the sociological imagination that seeks to unfold the interplay between an individual’s biography and society’s history. It is towards understanding this dialectical relationship between the society and individual that we need to discuss the three central concepts of structure, stratification and social processes in this chapter. In the next few chapters we then move on to how social structure in rural and urban societies are different, ', 'pdf_files/11th_Sociology_C1.pdf', '', '1011'),
(671, '', '', '', '1113', 'Chapter 2 - SOCIAL CHANGE AND SOCIAL ORDER IN RURAL AND  URBAN SOCIETY', 'Anyone living in modern society does not need to be reminded that constant change is among the most permanent features of our society. In fact, the discipline of sociology itself emerged as an effort to make sense of the rapid changes that Western European society had experienced between the seventeenth and nineteenth centuries. But though social change seems such a common and obvious fact about modern life, it is – comparatively speaking – a very new and recent fact. It is estimated that human beings have existed on planet earth for approximately 500,000 (five lakh) years, but they have had a civilised existence for only about 6,000 years. Of these civilised years, it is only in the last 400 years that we have seen constant and rapid change, even within these years of change, the pace has accelerated only in the last 100 years.', 'pdf_files/11th_Sociology_C2.pdf', '', '1011'),
(672, '', '', '', '1113', 'Chapter 3 - ENVIRONMENT AND SOCIETY', 'In this chapter, we will study social relationships with the environment as they have changed over time and as they vary from place to place. It is important to analyse and interpret such variations in a systematic way. There are many urgent environmental problems that demand our attention. To address these crises effectively, we need a sociological framework for understanding why they occur and how they might be prevented or resolved. All societies have an ecological basis. The term ecology denotes the web of physical and biological systems and processes of which humans are one element. Mountains and rivers, plains and oceans, and the flora and fauna that they support, are a part of ecology. The ecology of a place is also affected by the interaction between its geography and hydrology.', 'pdf_files/11th_Sociology_C3.pdf', '', '1011'),
(673, '', '', '', '1113', 'Chapter 4 - INTRODUCING WESTERN SOCIOLOGISTS', 'Sociology is sometimes called the child of the ‘age of revolution’. This is because it was born in 19th century Western Europe, after revolutionary changes in the preceding three centuries that decisively changed the way people lived. Three revolutions paved the way for the emergence of sociology: the Enlightenment, or the scientific revolution, the French Revolution, and the Industrial Revolution. These processes completely transformed not only European society, but also the rest of the world as it came into contact with Europe. In this chapter the key ideas of three sociological thinkers: Karl Marx, Emile Durkheim and Max Weber will be discussed. As part of the classical tradition of sociology, they laid the foundation of the subject. Their ideas and insights have remained relevant even in the contemporary period. ', 'pdf_files/11th_Sociology_C4.pdf', '', '1011'),
(674, '', '', '', '1113', 'Chapter 5 - INDIAN SOCIOLOGISTS ', 'As you saw in the opening chapter of your first book, Introducing Sociology, the discipline is a relatively young one even in the European context, having been established only about a century ago. In India, interest in sociological ways of thinking is a little more than a century old, but formal university teaching of sociology only began in 1919 at the University of Bombay. In the 1920s, two other universities — those at Calcutta and Lucknow — also began programmes of teaching and research in sociology and anthropology. Today, every major university has a department of sociology, social anthropology or anthropology, and often more than one of these disciplines is represented. Now-a-days sociology tends to be taken for granted in India, like most established things. But this was not always so. In the early days, it was not clear at all what an Indian sociology would look like, and indeed, whether India really needed something like sociology. ', 'pdf_files/11th_Sociology_C5.pdf', '', '1011'),
(675, 'Hindi', 'Introduction', 'दसवीं कक्षा तक हिंदी का अध्ययन करने वाला विद्यार्थी समझते हुए पढ़ने व सुनने के साथ-साथ हिंदी में सोचने और उसे मौखिक एवं लिखित रूप में व्यक्त कर पाने की सामान्य दक्षता अर्जित कर चुका होता है। उच्चतर माध्यमिक स्तर पर आने के बाद इन सभीदक्षताओं को सामान्य से ऊपर उस स्तर तक ले जाने की आवश्यकता होती है, जहाँ भाषा का प्रयोग भिन्न-भिन्न व्यवहार क्षेत्रों की मांगों के अनुरूप किया जा सके। आधार पाठ्यक्रम, साहित्यिक बोध के साथ-साथ भाषाई दक्षता के विकास को ज्यादा महत्त्व देता है। यह पाठ्यक्रम उन विद्यार्थियों के लिए उपयोगी साबित होगा, जो आगे विश्वविद्यालय में अध्ययन करते हुए हिंदी को एक विषय के रूप में पढ़ेंगे या विज्ञान / सामाजिक विज्ञान के किसी विषय को हिंदी माध्यम से पढ़ना चाहेंगे।', '1212', 'Chapter 1 - आत्मपरिचय ', 'आत्म-परिचय एक महत्वपूर्ण योग्यता है जो हमें अपने आप को दुनिया के सामने प्रस्तुत करने में मदद करती है। यह न केवल हमारे व्यक्तिगत और सामाजिक जीवन में महत्वपूर्ण है, बल्कि यह हमारी करियर और व्यापार में भी महत्वपूर्ण भूमिका निभाती है।', 'pdf_files/12th_Hindi_C1.pdf', '', '1012'),
(676, '', '', '', '1212', 'Chapter 2 - पतोंग', 'कवि शरद ऋतु को बालक की संज्ञा देते हुए कहता है कि बालक शरद अपने चमकीले इशारों से बच्चों के समूह को पतंग उड़ाने के लिए बुलाता है। उसने आकाश को मुलायम बना दिया हैं ताकि बच्चों की पतंग आसमान में आसानी से बहुत ऊंची उड़ सके। शरद ऋतु में आसमान में पतंगों के साथ-साथ बच्चों की अपनी कल्पनाएं भी आसमान में उड़ती हैं।', 'pdf_files/12th_Hindi_C2.pdf', '', '1012'),
(677, '', '', '', '1212', 'Chapter 3 - कविता के बहान', 'कविता के बहाने पाठ कविता का सार कवि को शक है कि आधुनिक यंत्रों के दबाव से कविता का अस्तिव नहीं रहेगा। ऐसे में यह कविता – कविता की अपार संभावनाओं को टटोलने का एक अवसर देती है। कवि कहते हैं कि कविता की उड़ान और चिड़िया की उड़ान एक ही तरह की होती है।', 'pdf_files/12th_Hindi_C3.pdf', '', '1012'),
(678, '', '', '', '1212', 'Chapter 4 - कै मिेमेंबोंद अपावहज', 'कैमरे में बन्द अपाहिज करुणा के मुखौटे में छिपी क्रूरता की कविता है- विचार लिखिए। उत्तर: कवि ने इस कविता के माध्यम से विकलांगता और उसके बाजार को बहुत अच्छी तरह से समझाने कि कोशिश की है। लोग हमेशा ही विकलांगो को दया दिखाते हैं और यह अच्छी बात है परन्तु कुछ लोग ऐसे भी होते हैं जो बस दयावान होने का दिखावा करते हैं।', 'pdf_files/12th_Hindi_C4.pdf', '', '1012'),
(679, '', '', '', '1212', 'Chapter 5 - उषा', '\'उषा\' कविता कवि \'शमशेर बहादुर सिंह\' द्वारा लिखित सुंदर कविता है। इस कविता में कवि ने सूर्योदय से ठीक पहले आकाश में होने वाले परिवर्तनों को सुंदर शब्दों में उकेरा है। कवि ने नए बिंब, नए उपमान, नए प्रतीकों का प्रयोग किया है।', 'pdf_files/12th_Hindi_C5.pdf', '', '1012'),
(680, '', '', '', '1212', 'Chapter 6 -  बादल िाग', 'बादल-राग कविता के माध्यम से निराला जी ने बादलों के महत्व का वर्णन किया है। वे बादलों को उनके गुणों के कारण महत्वपूर्ण स्थान देते हैं। उनका मानना है कि बादल मनुष्य जीवन में क्रांतिकारी परिवर्तन करने का सामर्थ्य रखते हैं। इस धरती को नवजीवन देने का भी सामर्थ्य उनके अंदर है।', 'pdf_files/12th_Hindi_C6.pdf', '', '1012'),
(681, '', '', '', '1212', 'Chapter 7 - कवितािली', 'कवितावली (उत्तर काण्ड से) – कवित्त में गोस्वामी तुलसीदास जी ने बताया है कि संसार के सभी लोग अच्छे-बुरे काम बिना धर्म-अधर्म की परवाह किए केवल \'पेट की आग\' को शांत करने के लिए करते है, इस पेट की आग को बुझाने के लिए कोई बुरे कर्म न करने पड़े इसके लिए कवि एक उपाय बताते हैं और वह उपाय है – राम-रूपी घनश्याम का कृपा-जल।', 'pdf_files/12th_Hindi_C7.pdf', '', '1012'),
(682, '', '', '', '1212', 'Chapter 8 - रुबाइयाा', 'फ़िराक गोरखपुरी की \'रुबाइयाँ\' में हिंदी का एक घरेलू रूप दिखता है। इस रचना में कवि ने वात्सल्य वर्णन किया है। एक माँ अपने घर के आंगन में अपने चांद के टुकड़े को अपने हाथों पर झूला झूलती है तो कभी उसे प्यार से गोद में भर लेती है। कभी-कभी वह माँ उस बच्चे को हवा में उछाल भी लेती हैं।', 'pdf_files/12th_Hindi_C8.pdf', '', '1012'),
(683, '', '', '', '1212', 'Chapter 9 - छोटा मेिा खेत\n', 'छोटा मेरा खेत\' कविता में कवि ने कागज़ को खेत के रूप में प्रस्तुत किया है। कवि को कागज का पन्ना एक चौकोर खेत की तरह लगता है। इस खेत में किसी आँधी के प्रभाव से किसी क्षण एक बीज बोया जाता है। कहने का तात्पर्य यह है कि कवि के मन में कहीं से कोई भावनात्मक तूफान आया और उसके मन में विचार नामक बीज बोकर चला गया।', 'pdf_files/12th_Hindi_C9.pdf', '', '1012'),
(684, '', '', '', '1212', 'chapter 10 - भस्िन', '', 'pdf_files/12th_Hindi_C10.pdf', '', '1012'),
(685, '', '', '', '1212', 'Chapter 11 - बाजाि दशणन', '\'बाजार दर्शन\'  निबंध में गहरी वैचारिकता व साहित्य के सुलभ लालित्य का संयोग है। कई दशक पहले लिखा गया यह लेख आज भी उपभोक्तावाद व बाजारवाद को समझाने में बेजोड़ है। जैनेंद्र जी अपने परिचितों, मित्रों से जुड़े अनुभव बताते हुए यह स्पष्ट करते हैं कि बाजार की जादुई ताकत मनुष्य को अपना गुलाम बना लेती है।  ', 'pdf_files/12th_Hindi_C11.pdf', '', '1012'),
(686, '', '', '', '1212', 'Chapter 12 -  बाजाि दशणन', '', 'pdf_files/12th_Hindi_C12.pdf', '', '1012'),
(687, '', '', '', '1212', 'Chapter 13 - पहलिान की ढोलक', 'पहलवान की ढोलक\' कहानी व्यवस्था के बदलने के साथ लोक-कला और इसके कलाकार के अप्रासंगिक हो जाने की कहानी है। राजा साहब की जगह नए राजकुमार का आकर जम जाना सिर्फ़ व्यक्तिगत सत्ता-परिवर्तन नहीं, बल्कि जमीनी पुरानी व्यवस्था के पूरी तरह उलट जाने और उस पर सभ्यता के नाम पर एकदम नई व्यवस्था के आरोपित हो जाने का प्रतीक है।', 'pdf_files/12th_Hindi_C13.pdf', '', '1012'),
(688, '', '', '', '1212', 'Chapter 14 - वशिीष के फू ल', '', 'pdf_files/12th_Hindi_C14.pdf', '', '1012'),
(689, '', '', '', '1212', 'Chapter 15 - श्रमविभाजन औि जावतप्रिा\n', '', 'pdf_files/12th_Hindi_C15.pdf', '', '1012'),
(690, 'Accountancy', 'Introduction', 'Accountancy is not just about crunching numbers, it is a subject that empowers you with the knowledge to understand financial transactions, analyze statements, and make informed business decisions. it deals with the systematic study of recording and classifying and also maintaining reports on every transaction, business or otherwise.', '1209', 'Chapter 1 - Accounting for Partnership : Basic Concepts', 'Accounting for partnership firms has its own set of rules, as a partnership firm is formed when two or more people join forces to start a business and split earnings. Many concerns impacting profit distribution may be resolved without an explicit agreement between the partners.', 'pdf_files/12th_class_Accountancy_Part_I_Chapter-1.pdf', '', '1012'),
(691, '', '', '', '1209', 'Chapter 2 - Reconstitution of a Partnership Firm – Admission of a  Partner', 'A partnership is an agreement between two or more people (referred to as partners) to share the earnings of a business operated by all or any of them acting on behalf of all. Any modification to the existing agreement constitutes a reconstitution of the partnership entity. This terminates the previous agreement and creates a new agreement with an altered relationship and/or composition among the members of the partnership firm. Nonetheless, the company continues. Partners may reconstitute the firm through several means, including adding new partners, changing profit sharing ratios, retiring partners, or death or insolvency. ', 'pdf_files/12th_class_Accountancy_Part_I_Chapter-2.pdf', '', '1012'),
(692, '', '', '', '1209', 'Chapter 3 - Reconstitution of a Partnership Firm – Retirement/Death of a Partner', 'Retirement or death of a partner might result in the reconstitution of a partnership. When a partner retires or dies, the partnership deed ends and a new one is drafted. The remaining partners continue to conduct business under new terms and circumstances. The accounting treatment at retirement and death is very similar. In both circumstances, we must calculate the amount owed to the retiring partner (if retired) and the legal representatives (if deceased) after accounting for goodwill, asset revaluation, and liabilities.', 'pdf_files/12th_Accountancy_C3.pdf', '', '1012'),
(693, '', '', '', '1209', 'Chapter 4 - Dissolution of Partnership Firm', 'You learned about the process of reorganizing a partnership after a partner\'s admittance, retirement, or death. In this case, while the existing partnership is dissolved, the firm may continue under the same name if the partners so choose. In other words, it causes the breakup of a partnership but not the firm. Section 39 of the Partnership Act 1932 defines \"firm dissolution\" as the dissolution of a partnership among all partners. The Act distinguishes between broken relationships between all partners of a firm and those between specific partners.', 'pdf_files/12th_class_Accountancy_Part_I_Chapter-4.pdf', '', '1012'),
(694, '', '', '', '1209', 'Chapter 5 -  Accounting for Share Capital', 'The firm form is the third stage of organizational evolution. The corporation is owned by its shareholders, who provide funds. However, not all of them are able or desirable to engage in the company\'s management. As a result, they elect a Board of Directors to oversee the company\'s operations. The Companies Act of 2013 governs all aspects of the company\'s operations. A corporation is defined as one that has been incorporated or registered under the Companies Act of 2013 or any preceding Companies Acts. Chief Justice Marshal defines a firm as \"a person, artificial, invisible, and intangible.\"', 'pdf_files/12th_class_Accountancy_Part_2_Chapter-1.pdf', '', '1012'),
(695, '', '', '', '1209', 'Chapter 6 - Issue and Redemption of Debentures', 'Companies raise capital by issuing shares. Share issuance often fails to meet a company\'s long-term financial needs. As a result, most corporations seek to raise long-term funding through debentures, which are issued either through private placement or public sale. Debentures are a type of long-term debt financing. This chapter covers the accounting for issuing and redeeming debentures, as well as associated concerns.', 'pdf_files/12th_class_Accountancy_Part_2_Chapter-2.pdf', '', '1012'),
(696, '', '', '', '1209', 'Chapter 7 - Financial Statements of a Company', 'After understanding how a firm raises cash, it\'s important to understand the several sorts of financial statements it must prepare, including their content, format, uses, and restrictions. Financial statements are the ultimate result of the accounting procedure. They are created in accordance with accounting policies, accounting standards set by the Companies Act, accounting concepts, principles, procedures, and the legal context in which the business organizations operate. These statements are the result of the accounting summation process and so serve as sources of information for drawing conclusions about a company\'s profitability and financial status. As a result, they must be organized properly and contain appropriate information for the shareholders.', 'pdf_files/12th_class_Accountancy_Part_2_Chapter-3.pdf', '', '1012'),
(697, '', '', '', '1209', 'Chapter 8 - Analysis of Financial Statements', 'You learned about financial statements (Income Statement and Balance Sheet) for corporations. Summarized financial reports provide thorough information on a company\'s operating outcomes and financial situation, allowing for assessment of operational efficiency and financial stability. Financial specialists have created many strategies to properly analyze and understand information. In this chapter, we will provide an overview of various strategies.', 'pdf_files/12th_class_Accountancy_Part_2_Chapter-4.pdf', '', '1012'),
(698, 'Pyscology', 'Introduction', 'Psychology is introduced as an elective subject at the higher secondary stage of school education. As a discipline, psychology specialises in the study of experiences, behaviours and mental processes of human beings within a socio-cultural and socio-historical context.', '1211', 'Chapter 1 - Intelligence And Aptitude', 'Intelligence refers to a person\'s ability to solve problems, make decisions, learn, understand emotions, plan, think critically, and be creative. It might be defined as the ability to understand data. Retaining knowledge can be regarded as intelligence.', 'pdf_files/class_12_Psychology_chap-1.pdf', '', '1012'),
(699, '', '', '', '1211', 'Chapter 2 - Self And Personality', 'Self and personality are the distinctive ways in which we interpret who we are. They also allude to how our experiences are structured and manifest in our actions. It is general knowledge that various persons have diverse self-perceptions.', 'pdf_files/class_12_Psychology_chap-2.pdf', '', '1012'),
(700, '', '', '', '1211', 'Chapter 3 - Meeting Life Challenges', 'Therefore, the pattern of reactions an organism has to a stimulus event that upsets equilibrium and surpasses an individual\'s capacity for coping can be used to characterize stress. The Latin words \"strictus,\" which means tight or narrow, and \"stringere,\" which means to tighten, are the sources of the English term stress.\\', 'pdf_files/class_12_Psychology_chap-3.pdf', '', '1012');
INSERT INTO `learning_stdclass` (`id`, `subjects`, `intro`, `description`, `subid`, `chaptername`, `chapterdis`, `pdf`, `classes`, `classid`) VALUES
(701, '', '', '', '1211', 'Chapter 4 - Psychological Disorders', 'Abnormal thoughts, feelings, and behaviors are hallmarks of psychological disorders. While difficult, consensus among psychologists and mental health practitioners is crucial about the feelings and behaviors that indicate the existence of a psychological disorder.', 'pdf_files/class_12_Psychology_chap-4.pdf', '', '1012'),
(702, '', '', '', '1211', 'Chapter 5 - Therapeutic Approaches', 'Every therapy strategy has a helping and correcting purpose. The therapist and the patient or client have an interpersonal interaction in all of them. Certain approaches are non-directive, like person-centered, while others, like psychodynamic, are directive.', 'pdf_files/class_12_Psychology_chap-5.pdf', '', '1012'),
(703, '', '', '', '1211', 'Chapter 6 - Attitude And Social Cognition', 'Social cognition is the branch of social psychology that examines how individuals perceive themselves, other people, and the social environment. Social cognition researchers look at how people interpret themselves and other people in order to generate opinions, attitudes, and future predictions.', 'pdf_files/class_12_Psychology_chap-6.pdf', '', '1012'),
(704, '', '', '', '1211', 'Chapter 7 - Social Influence And Group Processes', 'Psychology\'s \"social influence\" theory describes how people tend to follow what they perceive to be the norm. It asserts that people\'s conduct is prone to alter in response to those around them, with close relationships having a greater influence than those farther away.', 'pdf_files/class_12_Psychology_chap-7.pdf', '', '1012'),
(705, 'Economics', 'Introduction', 'This book covers basic principles of microeconomics and macroeconomic analysis. Principles shall be stated as simply as possible. Elementary algebra may be utilized in the treatment to introduce readers to rigor.', '1206', 'Chapter 1 - Introduction', 'Macroeconomics is the study of how economies function, including inflation, the decrease of poverty, shifts in economic production, balance of payments, interest and foreign exchange rates, social equality, and sustainable growth.', 'pdf_files/12th_Eco_C1.pdf', '', '1012'),
(706, '', '', '', '1206', 'Chapter 2 - Theroy of Consumer Equilibrium', 'The study of how individual customers, groups, or organisations select, buy, use, and dispose of the ideas, goods, and services to meet their needs and wants is known as consumer behaviour. It refers to the consumer\'s actions in the marketplace and the motivations behind those actions.', 'pdf_files/12th_Eco_C2.pdf', '', '1012'),
(707, '', '', '', '1206', 'Chapter 3 - Production and Costs', 'Cost of Production: The expenses a company incurs to generate a specific output, including labor, materials, equipment, and other costs, are referred to as the cost of production. The whole cost of a company\'s production is known as its cost of production. It is sometimes referred to as the market price of output or the all-in factor.', 'pdf_files/12th_Eco_C3.pdf', '', '1012'),
(708, '', '', '', '1206', 'Chapter 4 - Perfect Competition', 'When there is perfect competition, every firm has the same power to affect costs and prices as other firms have by altering its output or pricing. A market with perfect competition is one in which numerous businesses that produce similar goods are in direct competition with one another.', 'pdf_files/12th_Eco_C4.pdf', '', '1012'),
(709, '', '', '', '1206', 'Chapter 5 - Market Equilibrium', 'The price and quantity at which the supply and demand of an item in the market are equal is known as the market equilibrium. Price equilibrium, or the price at which the demands of producers (suppliers) and consumers (demanders) align, is another facet of equilibrium.', 'pdf_files/12th_Eco_C5.pdf', '', '1012'),
(710, 'Bussiness Studies', 'Introduction', 'The subject covers evolving business models, entrepreneurship, ethics, corporate social responsibility, and small businesses.  Issues such as industry scale, intellectual property rights, and goods and services tax might impact internal business operations. The course emphasizes entrepreneurship and innovation in the unorganized sector, as well as corporate material. This will improve learners\' awareness of their surroundings and business environment.The subject concentrates on principles and concepts that elaborate on the science of management and its significance. They also focus on different business environments as well as functions like planning and organisation.a general overview of the various elements of running a business.\n\n', '1207', 'Chapter 1 -  Nature and Significance of Management', 'Management is a perpetual process: The method of management is a set of consecutive, composite, but distinct purposes (organising, planning, staffing, controlling and directing). These operations are concurrently executed by all managers. The responsibility of a manager comprises a continuous series of duties.', 'pdf_files/12th_Buss_C1.pdf', '', '1012'),
(711, '', '', '', '1207', 'Chapter 2 - Principles of Management', 'Predicting the cause and effect relationship of managers\' decisions is made easier with the use of management principles. Consequently, it is possible to prevent the resource waste that could be related to the hit-and-trail approach. As a result, the best use of resources makes management concepts important.', 'pdf_files/12th_Buss_C2.pdf', '', '1012'),
(712, '', '', '', '1207', 'Chapter 3 - Business Environment', 'The term \"business environment\" refers to all the elements that impact a business\'s performance but are not under its direct control. The business environment includes the external social, political, economic, and technological elements.', 'pdf_files/12th_Buss_C3.pdf', '', '1012'),
(713, '', '', '', '1207', 'Chapter 4 - Planning', 'Planning, then, is establishing goals and targets and creating a plan of action to reach them. It is focused on both goals and methods, or what has to be done and how. A time limit must be included in the plan that is produced, but time is a finite resource.', 'pdf_files/12th_Buss_C4.pdf', '', '1012'),
(714, '', '', '', '1207', 'Chapter 5 - Organising', 'In order to enable people to collaborate most effectively in achieving goals, \"organizing is the process of identifying and grouping the work to be performed, defining and delegating responsibility and authority, and establishing relationships.\"', 'pdf_files/12th_Buss_C5.pdf', '', '1012'),
(715, '', '', '', '1207', 'Chapter 6 - Staffing', 'Staffing is the next step after planning and selection of the organization structure. In this step the right people are placed in the right positions. This involves various steps like recruitment, selection, training, development, promotion, compensation and performance appraisal of the workforce.', 'pdf_files/12th_Buss_C6.pdf', '', '1012'),
(716, '', '', '', '1207', 'Chapter 7 - Directing', 'The practice of directing involves a superior giving a subordinate instructions, advice, and guidance in order to inspire and guide them to successfully complete tasks.', 'pdf_files/12th_Buss_C7.pdf', '', '1012'),
(717, '', '', '', '1207', 'Chapter 8 - Controlling', 'Controlling is the practice of comparing actual performance to desired outcomes in order to guarantee that objectives are met successfully. The administrative responsibility of the controlling function includes setting standards, measuring actual performance, and taking corrective action when deviations occur.', 'pdf_files/12th_Buss_C8.pdf', '', '1012'),
(718, '', '', '', '1207', 'Chapter 9 - Financial Management', 'Financial management is concerned with the proper procurement and use of funds. It involves business actions such as raising finances, lowering funding costs, managing risk, and deploying those funds. Financial management combines two dimensions: money and management.', 'pdf_files/12th_Buss_C9.pdf', '', '1012'),
(719, '', '', '', '1207', 'Chapter 10 - Marketing', 'Marketing management is the planning, organizing, directing, and controlling of operations that facilitate the exchange of commodities and services between producers and consumers, or users of products and services. The primary responsibility is to share information and foster goodwill for the firm. Concrete actions will be done to monitor the public\'s attitudes and produce favorable publicity.', 'pdf_files/12th_Buss_C10.pdf', '', '1012'),
(720, '', '', '', '1207', 'Chapter 11 - Consumer Protection', 'Consumer protection refers to the process of protecting consumers from unfair practices, teaching them about their rights and obligations, and resolving their complaints.', 'pdf_files/12th_Buss_C11.pdf', '', '1012'),
(721, 'Sociology', 'Introduction', 'The field of sociology studies virtually every aspect of human society: the family, gender, race and ethnic relations, aging, education, work, population, and many others. Its principle goal as a discipline is to understand the workings of human society and to explain social behavior. ', '1208', 'Chapter 1 - Introducing Indian Society', 'The establishment of democracy in India, founded on the ideas of equality, freedom, and universal franchise, altered the traditional structure of Indian society. During the colonial period, a new level of awareness evolved. During this time, while all Indians banded together for a single cause, many social, economic, political, and administrative changes occurred as a result of modernization and capitalist pressures. Throughout the British period, various change processes were engaged. Some of these processes were entirely external, while others were inside. External processes include Westernization, Modernization, Secularization, Industrialization, and others, whilst Sanskritization and Urbanization are internal processes. Our interaction with Britain marked the beginning of modernity and westernization.', 'pdf_files/12th_Sociology_C1_97L7q3c.pdf', '', '1012'),
(722, '', '', '', '1208', 'Chapter 2 - The Demographic Structure of the Indian Society', 'Demography is the study of population trends and processes, such as changes in population number, birth, death, and migration patterns, as well as population structure and composition, such as gender and age group proportions.', 'pdf_files/12th_Sociology_C2.pdf', '', '1012'),
(723, '', '', '', '1208', 'Chapter 3 - Social Institutions: Continuity and Change', 'A population consists of related communities and classes. Social interactions and institutions provide support and control over these. Caste, tribe, and family are the three primary institutions of Indian society.', 'pdf_files/12th_Sociology_C3.pdf', '', '1012'),
(724, '', '', '', '1208', 'Chapter 4 - The Market as a Social Institution', 'Markets are social institutions in which buyers and sellers trade products and services. While the creation and ownership of commodities and services might take place outside of the market, the exchange of such goods and services is what constitutes a market.', 'pdf_files/12th_Sociology_C4.pdf', '', '1012'),
(725, '', '', '', '1208', 'Chapter 5 - Patterns of Social Inequality and Exclusion', 'Social exclusion and inequality are universal concerns. Because of their prevalence, social inequality and exclusion can appear to be unavoidable and even natural. We frequently believe they have been \"earned\" or \"justified\" in some way.', 'pdf_files/12th_Sociology_C5.pdf', '', '1012'),
(726, '', '', '', '1208', 'Chapter 6 - The Challenges of Cultural Diversity', '\"Diversity\" emphasizes differences rather than unfairness. When we say India has a vast cultural diversity, we mean the many different social groups and cultures that live there. Language, religion, sect, race, or caste are cultural characteristics that can help identify communities. Conflict or competition between these diverse communities may emerge when they are also members of a larger entity, such as a country. The difficulties originate from the power of cultural identities, which can elicit strong emotions and frequently draw large crowds of people. This complicates matters further because economic and social inequalities can sometimes coexist with cultural inequities. Measures to address injustices or inequities in one community may be met with opposition from other groups. When limited resources, such as river water, jobs, or government funds, must be shared, the situation deteriorates.', 'pdf_files/12th_Sociology_C6.pdf', '', '1012'),
(727, '', '', '', '1208', 'Chapter 7 - Suggestions for Project Work', 'Projects help learners build creative skills by requiring them to research and investigate a certain subject before presenting it based on their imagination and intellect.', 'pdf_files/12th_Sociology_C7.pdf', '', '1012'),
(728, 'Physics I & II', 'Introduction', 'Physics is the branch of science that deals with the structure of matter and how the fundamental constituents of the universe interact. It studies objects ranging from the very small using quantum mechanics to the entire universe using general relativity.', '1214', 'Chapter 1 - Electric Charges and Fields', 'We\'ve all experienced sparks or crackles when removing synthetic clothing, especially in dry weather. Have you ever attempted to find an explanation for this phenomenon? Lightning during thunderstorms is a common example of an electric discharge. We may feel an electric shock when opening a car door or grasping an iron bar on a bus after sliding from our seat. These sensations are caused by the discharge of stored electric charges from rubbing against insulating surfaces. You may have heard that this is caused by static electricity. ', 'pdf_files/12th_PHY_C1.pdf', '', '1012'),
(729, '', '', '', '1214', 'Chapter 2 - Electrostatic Potential and Capacitance', 'The concept of potential energy was introduced. External forces, such as springs or gravity, can cause a body to store potential energy as it moves from one location to another. When an external force is eliminated, the body gains kinetic energy but loses potential energy. The total of kinetic and potential energy is conserved. These forces are referred to as conservative forces. Conservative forces include springs and gravity. Coulomb force between two (stationary) charges is also considered conservative. ', 'pdf_files/12th_PHY_C2.pdf', '', '1012'),
(730, '', '', '', '1214', 'Chapter 3 - Current Electricity', 'In Chapter 1, all charges, whether free or bound, were assumed to be at rest. Charges in motion form an electric current. These currents occur naturally in many conditions. Lightning is a natural occurrence that occurs when charged particles move from clouds to the earth\'s atmosphere, often with fatal consequences. Although the flow of charges in lightning is not constant, we often find devices where charges flow steadily, similar to how water flows in a river. Examples of such gadgets include a flashlight and a cell-driven clock. This chapter covers basic rules for stable electric currents.', 'pdf_files/12th_PHY_C3.pdf', '', '1012'),
(731, '', '', '', '1214', 'Chapter 4 - Moving Charges and Magnetism', 'Electricity and magnetism have been known for about 2000 years. Only in 1820 did it become clear that they were closely linked. In 1820, Danish physicist Hans Christian Oersted observed that a current in a straight wire deflected a nearby magnetic compass needle. He explored this phenomenon. The needle\'s alignment is tangential to an imaginary circle centered on a straight wire, with a plane perpendicular to it. ', 'pdf_files/12th_PHY_C4.pdf', '', '1012'),
(732, '', '', '', '1214', 'Chapter 5 - Magnetism and Matter', 'Magnetic phenomena are ubiquitous in nature. Magnetic fields from many sources pervade everything, including distant galaxies, atoms, humans, and animals. Earth\'s magnetism predates human evolution. The term \"magnet\" comes from the Greek island of Magnesia, where magnetic ore reserves were discovered around 600 BC. In the last chapter, we learnt that moving charges or electric currents generate magnetic fields. Oersted, Ampere, Biot, and Savart, among others, are credited with making this early nineteenth-century discovery.', 'pdf_files/12th_PHY_C5.pdf', '', '1012'),
(733, '', '', '', '1214', 'Chapter 6 - Electromagnetic Induction', 'For a long time, electricity and magnetism were thought unrelated. In the early 1800s, experiments by Oersted, Ampere, and others demonstrated the connection between electricity and magnetism. They discovered that moving electric charges create magnetic fields. For instance, an electric current can deflect a nearby magnetic compass needle. This naturally generates queries such as, \"Is the converse effect possible?\" Can moving magnets generate electric current? Is it possible for electricity and magnetism to have a natural relationship? Yes, absolutely! In 1830, investigations by Michael Faraday in England and Joseph Henry in the United States proved that electric currents could be produced in closed coils. ', 'pdf_files/12th_PHY_C6.pdf', '', '1012'),
(734, '', '', '', '1214', 'Chapter 7 - Alternating Current', 'So far, we\'ve focused on direct current (dc) sources and their circuits. These currents don\'t shift direction over time. However, time-varying voltages and currents are ubiquitous. The electricity supply in our homes and offices varies like a sine function throughout time. An alternating voltage (ac voltage) and the current it drives in a circuit are referred to as alternating current (ac current). Today, the majority of electrical gadgets demand alternating current (AC) voltage. The majority of electricity sold by power companies is distributed as alternating current.', 'pdf_files/12th_PHY_C7.pdf', '', '1012'),
(735, '', '', '', '1214', 'Chapter 8 - Electromagnetic Waves', 'In Chapter 4, we learned that an electric current creates a magnetic field and that two current-carrying wires impose a magnetic pull on one another. In Chapter 6, we learned that a magnetic field changes over time and creates an electric field. Is the converse also true? Is it possible for an electric field to become magnetic as it changes over time? According to James Clerk Maxwell (1831-1879), both an electric current and a time-varying electric field generate a magnetic field. Maxwell discovered a contradiction in Ampere\'s circuital law while calculating the magnetic field at a point outside a capacitor with variable current.', 'pdf_files/12th_PHY_C8.pdf', '', '1012'),
(736, '', '', '', '1214', 'Chapter 9 - Ray Optics and Optical Instruments', 'The human eye (retina) has the ability to detect electromagnetic waves within a narrow spectrum. Light refers to electromagnetic radiation with a wavelength between 400 and 750 nm. Light and eyesight play a crucial role in understanding and interpreting our surroundings. Light can be described intuitively in two ways based on common experiences. It travels at high speed and in a straight line. ', 'pdf_files/12th_PHY_C9.pdf', '', '1012'),
(737, '', '', '', '1214', 'Chapter 10 - Wave Optics', 'In 1637, Descartes proposed the corpuscular model of light and developed Snell\'s Law. It explained how light is reflected and refracted at an interface. According to the corpuscular model, if a light ray bends towards the normal during refraction, it will travel faster in the second medium. Isaac Newton\'s work OPTICKS popularized the corpuscular model of light, which is commonly credited to him. In 1678, Dutch physicist Christiaan Huygens proposed the wave theory of light, which we shall study in this chapter. ', 'pdf_files/12th_PHY_C10.pdf', '', '1012'),
(738, '', '', '', '1214', 'Chapter 11 - Dual Nature of Radiation and Matter', 'In 1887, Maxwell\'s equations of electromagnetism and Hertz\'s work on generating and detecting electromagnetic waves established light\'s wave nature. During the late 19th century, experiments on the conduction of electricity through low-pressure gases in a discharge tube resulted in significant findings. Roentgen\'s discovery of X-rays in 1895 and J. J. Thomson\'s discovery of electrons in 1897 marked significant advances in our understanding of atomic structure. Applying an electric field to the gas in the discharge tube resulted in a discharge between the two electrodes at a low pressure of around 0.001 mm of mercury column. ', 'pdf_files/12th_PHY_C11.pdf', '', '1012'),
(739, '', '', '', '1214', 'Chapter 12 - Atoms', 'By the eighteenth century, there was sufficient data to support the atomic concept of matter. In 1897, English physicist J. J. Thomson (1856-1940) discovered that atoms of different elements have similar negatively charged electrons. Atoms are electrically neutral. An atom must have a positive charge to balance the negative charge of its electrons. What is the arrangement of the positive charge and electrons within the atom? In other words, what exactly is an atom\'s structure? J.J. Thomson proposed the first model of the atom in 1898.', 'pdf_files/12th_PHY_C12.pdf', '', '1012'),
(740, '', '', '', '1214', 'Chapter 13 - Nuclei', 'at the last chapter, we learned that positive charge and mass are concentrated at the center of an atom, forming the nucleus. A nucleus has significantly lower dimensions compared to an atom. Experiments on scattering of a-particles revealed that the radius of a nucleus is approximately 104 times less than that of an atom. The volume of a nucleus is approximately 10-12 times that of an atom. In other terms, an atom is nearly empty. Enlarging an atom to the size of a classroom results in a pinhead-sized nucleus. The nucleus accounts for more than 99.9% of an atom\'s mass.', 'pdf_files/12th_PHY_C13.pdf', '', '1012'),
(741, '', '', '', '1214', 'Chapter 14 - Semiconductor Electronics', 'Electronic circuits rely on devices that allow for controlled flow of electrons. Prior to 1948, vacuum tubes (also known as valves) included vacuum diodes with two electrodes (anode and cathode), triodes with three electrodes (cathode, plate, and grid), and tetrodes and pentodes with four or five electrodes. Vacuum tubes use a heated cathode to supply electrons, which are then controlled by altering the voltage between electrodes. The inter-electrode space requires vacuum to prevent electrons from losing energy due to collisions with air molecules.', 'pdf_files/12th_PHY_C14.pdf', '', '1012'),
(742, 'Biology', 'Introduction', 'The NCERT Class 12 Biology textbook is a thorough and well-written resource that will assist you in understanding these complicated topics. The book has been divided into four units. Each unit is further separated into chapters, which provide in-depth coverage of a single topic. The chapters are well-organized and simple to navigate, with clear explanations, illustrations, and photographs. The NCERT Class 12 Biology textbook is a valuable resource for students studying for the Class 12 board exams. It is also a helpful resource for students who want to learn more about biology.', '1201', 'Chapter 1 - Sexual Reproduction in Flowering Plants', 'Pollen tube growth, pollen germination, gamete production, and fertilization are all facilitated by flowers. The fruit receives the ovarian component of the carpel. After fertilization, the ovules become seeds. In the case of heterosporous plants, the gametophytes also develop inside the spores.', 'pdf_files\\12th_Bio_C1.pdf', 'Class 12', '1012'),
(743, '', '', '', '1201', 'Chapter 2 - Human Reproduction', 'Every human has a sexual method of reproduction. In this procedure, the creation of a new person involves the involvement of two parents. Gametes, or sex cells, from both parents combine to become offspring. Because of this, the newly created individual will differ from parents in both a genetic and physical sense.', 'pdf_files/12th_Bio_C2.pdf', '', '1012'),
(744, '', '', '', '1201', 'Chapter 3 - Reproductive Health', 'Reproductive health refers to a total well-being in all aspects of reproduction, i.e., physical, emotional, behavioural and social. Our nation was the first nation in the world to initiate various action plans at national level towards attaining a reproductively healthy society.', 'pdf_files/12th_Bio_C3.pdf', '', '1012'),
(745, '', '', '', '1201', 'Chapter 4 - Principles of Inheritance and Variation', 'Physical, emotional, behavioral, and social well-being in all facets of reproduction is referred to as reproductive health. Initiating many national action programs aimed at achieving a society with a healthy reproductive system, our country was a global first.', 'pdf_files/12th_Bio_C4.pdf', '', '1012'),
(746, '', '', '', '1201', 'Chapter 5 - Molecular Basis of Inheritance.', 'This topic addresses the transfer of traits from parents to children as well as inheritance. Heredity is based on inheritance, which is the process by which traits are passed down from parents to offspring. The degree to which offspring deviate from their parents is called variation.', 'pdf_files/12th_Bio_C5.pdf', '', '1012'),
(747, '', '', '', '1201', 'Chapter 6 - Evolution', 'Evolution: Evolution is the process of accumulation of genetic differences in the living organism over the period and generating new varieties of living organisms. Examples of evolution: Darwin explained in his theory of evolution by natural selection, how nature selects a reproductively fit organism over others.', 'pdf_files/12th_Bio_C6.pdf', '', '1012'),
(748, '', '', '', '1201', 'Chapter 7 - Human Health and Diseases', 'The World Health Organization defines health as more than just the absence of illness and disability, it also includes a condition of whole physical, mental, and social well-being. Among the numerous advantages of good health is that it keeps us happier. In addition to supporting muscles, boosting immunity, fortifying bones, and preventing heart disease, diabetes, and certain types of cancer, our skin, teeth, and eyes stay healthy. It also encourages women to breastfeed and have healthy pregnancies. ', 'pdf_files/12th_Bio_C7.pdf', '', '1012'),
(749, '', '', '', '1201', 'Chapter 8 - Microbes in Human Welfare', 'Microbe introduction for human well-being. Microorganisms, often known as microbes, are a major part of all biological systems on Earth. They are pervasive, found all around us, in the water, the air we breathe, the earth, and both inside and on our bodies.', 'pdf_files/12th_Bio_C8.pdf', '', '1012'),
(750, '', '', '', '1201', 'Chapter 9 - Biotechnology: Principles and Processes', 'Large-scale manufacturing and marketing of goods and procedures utilizing living things, cells, or enzymes are the focus of biotechnology. It was not until man discovered how to modify the chemistry of DNA and create recombinant DNA that modern biotechnology—which makes use of genetically modified organisms—was founded.', 'pdf_files/12th_Bio_C9.pdf', '', '1012'),
(751, '', '', '', '1201', 'Chapter 10 - Biotechnology and Its Applications', 'It is described as the study of plant, animal, and microbe cells with the goal of producing goods that are helpful for human use. With applications in genetic engineering, agriculture, energy production, medicine, and gene therapy, biotechnology is a broad field of research.', 'pdf_files/12th_Bio_C10.pdf', '', '1012'),
(752, '', '', '', '1201', 'Chapter 11 - Organisms and Population', 'Ecology, the study of organisms and populations, is a significant branch of biology. A single living being that is able to perform all essential life functions is called an organism. Both unicellular and multicellular organisms are possible. On the other hand, a population was a collection of people living in a certain area. The four layers of biological organization that ecology primarily studies are organisms, populations, communities, and biomes.', 'pdf_files/12th_Bio_C11.pdf', '', '1012'),
(753, '', '', '', '1201', 'Chapter 12 - Ecosystem', 'The study of ecosystems emphasizes the relationships that exist between living things and their natural surroundings, with a focus on the energy flow and interdependence among species. Students can study about biodiversity and ecological pyramids, among other ecological concepts, here.', 'pdf_files/12th_Bio_C12.pdf', '', '1012'),
(754, '', '', '', '1201', 'Chapter 13 - Biodiversity and Its Conservation', 'Biodiversity is the variation among living organisms from different sources including terrestrial, marine and desert ecosystems, and the ecological complexes of which they are a part.” Biodiversity conservation has three main objectives: To preserve the diversity of species. Sustainable utilization of species and ecosystem. To maintain life-supporting systems and essential ecological processes.', 'pdf_files/12th_Bio_C13.pdf', '', '1012'),
(755, 'Chemistry I & II', 'Introduction', 'The students are introduced to different concepts of Organic and Inorganic Chemistry in Class 12. The units in Class 12 Chemistry include Solutions, Electrochemistry, Chemical Kinetics, d- and f- Block Elements, Coordination Compounds, Haloalkanes & Haloarenes, Amines, Biomolecules, Aldehydes, etc.', '1204', 'Chapter 1 - Solutions', 'We discover that matter is defined as everything that has mass and can fill space. Matter can exist in any of the three states—solid, liquid, or gas. Strong interactions arise from the constituent particles of a solid state of matter being packed extremely tightly to one another.', 'pdf_files/12th_CH_C1.pdf', '', '1012'),
(756, '', '', '', '1204', 'Chapter 2 - Electrochemistry', 'The process of converting chemical energy into electrical energy. This refers to the production of electricity by spontaneous redox reactions. Electricity can be generated when electrons transfer from one element to another in certain sorts of reactions (such as redox reactions).', 'pdf_files/12th_CH_C2.pdf', '', '1012'),
(757, '', '', '', '1204', 'Chapter 3 - Chemical Kinetics', 'The book explores the various factors that determine how fast or slowly a chemical reaction proceeds and describes a variety of experimental methods for measuring reaction rates. The link between the reaction rate and the sequence of steps that makes up the reaction mechanism is also investigated.', 'pdf_files/12th_CH_C3.pdf', '', '1012'),
(758, '', '', '', '1204', 'Chapter 4 - The d & f block Elements', 'The elements in the d block make up the middle layer of the periodic table. Groups 3 through 13 have their inner d orbits gradually filled. Conversely, the elements of the f block are located outside and at the base of the periodic table. The 4f and 5f orbitals of these elements are gradually filled.', 'pdf_files/12th_CH_C4.pdf', '', '1012'),
(759, '', '', '', '1204', 'Chapter 5 - Coordination Compounds', 'Coordination Compounds are the backbone of modern inorganic and bio–inorganic chemistry and chemical industry. Alfred Werner (1866-1919), a Swiss chemist was the first to formulate his ideas about the structures of coordination compounds.', 'pdf_files/12th_CH_C5.pdf', '', '1012'),
(760, '', '', '', '1204', 'Chapter 6 -  Haloalkanes and Haloarenes', 'Hydrocarbons having one or more hydrogen atoms swapped out for halogen atoms are known as haloalkanes and haloarenes. The main distinction between haloarenes and haloalkanes is that the former are formed from aromatic hydrocarbons, while the latter are derived from open-chain hydrocarbons (alkanes).', 'pdf_files/12th_CH_C6.pdf', '', '1012'),
(761, '', '', '', '1204', 'Chapter 7 - Alcohols, Phenols & Ethers ', 'When a saturated carbon atom bonds with a hydroxyl (-OH) group, alcohol is created. When the -OH group of a benzene molecule takes the place of a hydrogen atom, phenol is created. When an oxygen atom is joined to two alkyl or aryl groups, ether is created.', 'pdf_files/12th_CH_C7.pdf', '', '1012'),
(762, '', '', '', '1204', 'Chapter 8 - Aldehydes, Ketones & Carboxylic Acids', 'What are carboxylic acids, ketones, and aldehydes? Aldehydes, ketones, and carboxylic acids are examples of carbonyl compounds that have a double bond between carbon and oxygen. These organic compounds have numerous industrial uses in addition to being highly significant in the science of organic chemistry.', 'pdf_files/12th_CH_C8.pdf', '', '1012'),
(763, '', '', '', '1204', 'Chapter 9 - Amines', 'The elements in the d block make up the middle layer of the periodic table. Groups 3 through 13 have their inner d orbits gradually filled. Conversely, the elements of the f block are located outside and at the base of the periodic table. The 4f and 5f orbitals of these elements are gradually filled.', 'pdf_files/12th_CH_C9.pdf', '', '1012'),
(764, '', '', '', '1204', 'Chapter 10 - Biomolecules', 'Complex biomolecules such as proteins, lipids, carbohydrates, and nucleic acids make up living systems. Carbs and proteins are necessary components of our diet. The molecular logic of life processes is composed of these biomolecules interacting with one another.', 'pdf_files/12th_CH_C10.pdf', '', '1012'),
(765, 'Political Science', 'Introduction', 'NCERT\'s Contemporary World Politics course aims to enhance students\' understanding of politics. Other publications for Political Science students in Classes XI and XII cover topics such as the Indian Constitution, Indian politics, and political theory. Contemporary World Politics extends the scope of politics to the global stage. The revised Political Science course now includes a section on international politics. This is an important development. As India\'s influence on global politics grows, it\'s crucial to gain a better understanding of the world beyond our borders. India has a strong interest in international events, although there is often a lack of comprehension.', '1205', 'Chapter 1 - The End of Bipolarity', 'Students are introduced to the Soviet system and the USSR\'s dissolution in this chapter. Additionally, it emphasizes NATO and Warsaw, the eastern and western alliances. The chapter also discusses the effects of shock therapy.', 'pdf_files/12th_POL_C1.pdf', '', '1012'),
(766, '', '', '', '1205', 'Chapter 2 - Contemporary Centres Of Power ', 'By then, a number of alternative centers of political and economic power had developed in international society, such as the European Union (EU) in Europe and the Association of South East Asian Nations (ASEAN) in Asia, that could challenge US supremacy.', 'pdf_files/12th_POL_C2.pdf', '', '1012'),
(767, '', '', '', '1205', 'Chapter 3 - Contemporary South Asia', 'We attempt to comprehend the nature of cooperation and conflict among the many nations in the region in this chapter. We first provide an overview of the region and the domestic politics of some of the major nations in it, as much of this is influenced by or entrenched in these politics.', 'pdf_files/12th_POL_C3.pdf', '', '1012'),
(768, '', '', '', '1205', 'Chapter 4 - Internal Organisations', 'A legal body created at the international level through a treaty or other instrument is referred to as a \"International Organization.\" It has a distinct worldwide legal identity. The World Health Organization, NATO, and the United Nations are examples of organizations that enjoy international recognition.', 'pdf_files/12th_POL_C4.pdf', '', '1012'),
(769, '', '', '', '1205', 'Chapter 5 - Security In Contemporary World', 'When dangers and the hazards they pose are reduced or eliminated, we are said to be in a condition of security. • A state of security is one in which the object in question does not perceive any threat to its legal interests. • A complicated web of social relationships regulated by the law is regarded as security. ', 'pdf_files/12th_POL_C5.pdf', '', '1012'),
(770, '', '', '', '1205', 'Chapter 6 - Enviornment and Natural Resources', 'Global politics are concerned with environmental issues such as diminishing agricultural land fertility, grazing, depletion of water supplies, loss of biodiversity, actual threat to ecosystems, coastal pollution, degradation of the marine environment, 2.', 'pdf_files/12th_POL_C6.pdf', '', '1012'),
(771, '', '', '', '1205', 'Chapter 7 - Globalisation', 'Globalization seems to be the talk of the day. Although the term \"globalization\" has many different connotations for various people, opening up economies to international competition and facilitating the free flow of capital, goods, ideas, and certain people across nations is unquestionably one of its most important economic aspects.', 'pdf_files/12th_POL_C7.pdf', '', '1012'),
(772, 'Geography', 'Introduction', 'Get ready to embark on a captivating voyage of discovery with NCERT Class 12 Geography! Prepare to delve into the intricate relationship between humanity and the Earth, exploring the dynamic forces that shape our planet and the societies upon it. Journey across diverse landscapes, from towering mountain ranges to sprawling deserts, and uncover the secrets they hold. Dive into the heart of bustling cities and tranquil villages, examining how human activities interact with and impact the environment. Unravel the complex tapestry of cultures, religions, and economies that make up our world, understanding how they are shaped by geographical factors. This isn\'t just about memorizing facts and figures, it\'s about developing a critical lens to analyze the world around you, its challenges, and its possibilities. Are you ready to become a citizen of the world, equipped with the knowledge and understanding to navigate its complexities and contribute to a sustainable future? Buckle up, explorer, and prepare to be amazed by the wonders of geography! [Image of A diverse group of students studying a globe together.', '1203', 'Chapter 1 - Human Geography', 'The study of human geography examines the relationships that humans have built between the physical environment and the sociocultural environment via their interactions with one another. It placed a strong focus on experience as well as how different social categories—such as race, ethnicity, and religion—perceive space.', 'pdf_files/12th_Geo_C1.pdf', '', '1012'),
(773, '', '', '', '1203', 'Chapter 2 - The World Population', 'The population of the planet has increased from 8 million to 7 billion people between 8000 and 12000 years ago. There is an addition of 1 billion people every 12 years. Death rates have decreased as a result of improved medical services, vaccination against epidemics, and increased industrial and agricultural output.', 'pdf_files/12th_Geo_C2.pdf', '', '1012'),
(774, '', '', '', '1203', 'Chapter 3 - Human Development', 'Human development is a process that encompasses the whole spectrum of human choices, from a healthy physical environment to economic, social, and political freedom. It also increases people\'s opportunities for education, health care, income, and empowerment.', 'pdf_files/12th_Geo_C3.pdf', '', '1012'),
(775, '', '', '', '1203', 'Chapter 4 - Primary Activities', 'Primary activities are directly dependent on environment as these refer to utilisation of earth\'s resources such as land, water, vegetation, building materials and minerals. It, thus includes, hunting and gathering, pastoral activities, fishing, forestry, agriculture, and mining and quarrying.', 'pdf_files/12th_Geo_C4.pdf', '', '1012'),
(776, '', '', '', '1203', 'Chapter 5 - Secondary Activities', 'It includes all sectors of the economy that use natural resources taken from the primary sector to produce finished items. This industry comprises the manufacturing of sugar, cotton fabric, and industrial output. Thus, rather than producing raw materials, this sector—that is, secondary activities—produces commodities.', 'pdf_files/12th_Geo_C5.pdf', '', '1012'),
(777, '', '', '', '1203', 'Chapter 6 - Tertiary and Quaternary Activities', 'The study of human geography examines the relationships that humans have built between the physical environment and the sociocultural environment via their interactions with one another. It placed a strong focus on experience as well as how different social categories—such as race, ethnicity, and religion—perceive space.', 'pdf_files/12th_Geo_C6.pdf', '', '1012'),
(778, '', '', '', '1203', 'Chapter 7 - Transport and Communication', 'Transportation typically refers to modes of transportation as roads, trains, airplanes, etc. Email, phones, letters, and other forms of correspondence are examples of communication means. Communication and transportation are complimentary to one another. However, they can also function as stand-ins for one another.', 'pdf_files/12th_Geo_C7.pdf', '', '1012'),
(779, '', '', '', '1203', 'Chapter 8 - International Trade', 'The cross-border exchange of commodities and services between nations is known as international trade. Commodities are something that nations must trade since they are either impossible to produce domestically or can only be bought cheaper outside.', 'pdf_files/12th_Geo_C8.pdf', '', '1012'),
(780, 'History - I', 'Introduction', 'History is the study of past stories of the events, peoples and countries that have brought political, social and economical changes to the society. Studying history allows us to observe and understand how people and societies behaved. For example, we are able to evaluate war, even when a nation is at peace, by looking back at previous events. History provides us with the data that is used to create laws, or theories about various aspects of society.', '1213', 'Chapter 1 - Bricks, Beads And Bones The Harappan Civilisation ', 'There were several archaeological cultures in the region prior to the Mature Harappan. These cultures were associated with distinctive pottery, evidence of agriculture and pastoralism, and some crafts. Settlements were generally small, and there were virtually no large buildings. It appears that there was a break between the Early Harappan and the Harappan civilisation, evident from large-scale burning at some sites, as well as the abandonment of certain settlements.', 'pdf_files/12th_Hist_1_C1.pdf', '', '1012'),
(781, '', '', '', '1213', 'Chapter 2 -Kings, Farmers And Towns Early States And Economies', 'Some of the most momentous developments in Indian epigraphy took place in the 1830s. This was when James Prinsep, an officer in the mint of the East India Company, deciphered Brahmi and Kharosthi, two scripts used in the earliest inscriptions and coins. He found that most of these mentioned a king referred to as Piyadassi – meaning “pleasant to behold”, there were a few inscriptions which alsoreferred to the king as Asoka, one of the most famous rulers known from Buddhist texts. This gave a new direction to investigations into early Indian political history as European and Indian scholars used inscriptions and texts composed in a variety of languages to reconstruct the lineages of major dynasties that had ruled the subcontinent. As a result, the broad contours of political history were in place by the early decades of the twentieth century.', 'pdf_files/12th_Hist_1_C2.pdf', '', '1012'),
(782, '', '', '', '1213', 'Chapter 3 - Kinship,Caste And Class Earl Societies', 'In the previous chapter we saw that there were several changes in economic and political life between c. 600 BCE and 600 CE. Some of these changes influenced societies as well. For instance, the extension of agriculture into forested areas transformed the lives of forest dwellers, craft specialists often emerged as distinct social groups, the unequal distribution of wealth sharpened social differences. Historians often use textual traditions to understand these processes. Some texts lay down norms of social behaviour, others describe and occasionally comment on a wide range of social situations and practices. We can also catch a glimpse of some social actors from inscriptions. As we will see, each text (and inscription) was written from the perspective of specific social categories. So we need to keep in mind who composed what and for whom. ', 'pdf_files/12th_Hist_1_C3.pdf', '', '1012'),
(783, '', '', '', '1213', 'Chapter 4 - Thinkers, Beliefs And Buildings Cultural Developments', 'In this chapter we shall go on a long journey across a thousand years to read about philosophers and their attempts to understand the world they inhabited. We will also see how their ideas were compiled as oral and written texts as well as expressed in architecture and sculpture. These are indicative of the enduring influence these thinkers had on people. While we will be focusing on Buddhism, it is important to remember that this tradition did not develop in isolation – there were several other traditions, each engaged in debates and dialogues with the others. The sources that historians use to reconstruct this exciting world of ideas and beliefs include Buddhist, Jaina and Brahmanical texts, as well as a large and impressive body of material remains including monuments and inscriptions. Among the best preserved monuments of the time is the stupa at Sanchi which is a major focus in this chapter.', 'pdf_files/12th_Hist_1_C4.pdf', '', '1012'),
(784, 'History - II', 'Introduction', 'History is the study of past stories of the events, peoples and countries that have brought political, social and economical changes to the society. Studying history allows us to observe and understand how people and societies behaved. For example, we are able to evaluate war, even when a nation is at peace, by looking back at previous events. History provides us with the data that is used to create laws, or theories about various aspects of society.History is the study of past stories of the events, peoples and countries that have brought political, social and economical changes to the society. Studying history allows us to observe and understand how people and societies behaved. For example, we are able to evaluate war, even when a nation is at peace, by looking back at previous events. History provides us with the data that is used to create laws, or theories about various aspects of society.history also truly tells about world wars happened and what is the cause of world war 1 and world war 2.', '1202', 'Chapter 1 - Through the Eyes of Travellers Perceptions of Society', 'Both sexes have traveled in quest of employment, to flee from natural calamities, as traders, merchants, soldiers, pilgrims, or motivated by a spirit of adventure. Everybody who travels to or stays in a foreign country discovers that not only is there a difference in the physical surroundings and terrain, but also in the customs, languages, beliefs, and practices of the populace. Many of them make an effort to adjust to these variances, a few, who are somewhat extraordinary, meticulously document what they find uncommon or noteworthy in their recollections. Despite the fact that women are known to have traveled, we sadly have very few records of their travels.', 'pdf_files/12th_His_C1.pdf', '', '1012'),
(785, '', '', '', '1202', 'Chapter 2 - Bhakti- Sufi Traditions', 'The Sufi movement is Islamic, while the Bhakti movement is Hindu. Although the two were completely different, they shared certain traits. They both emphasized the value of having a personal commitment to God and thought that this was the greatest method to have a relationship with him.', 'pdf_files/12th_His_C2.pdf', '', '1012'),
(786, '', '', '', '1202', 'Chapter 3 - An Imperial Capital Vijayanagara', 'Vijayanagara, which means \"city of victory,\" was the name of an empire as well as a city. In the fourteenth century, the empire was established. During its peak, it spanned from the northern Krishna River to the southernmost tip of the peninsula. The city was abandoned after being sacked in 1565.', 'pdf_files/12th_His_C3.pdf', '', '1012'),
(787, '', '', '', '1202', 'Chapter 4 - Peasants, Zamindars and the State  Agrarian Society and the Mughal Empire', 'In the 16th and 17th centuries, almost 85% of India\'s people resided in its villages. Landed aristocrats and peasants both participated in agricultural production and asserted claims to a portion of the harvest. As a result, they developed ties of rivalry, cooperation, and conflict. Rural society was the result of various agrarian ties taken together. Outside agencies also started to operate in rural areas at the same time. The most significant of these was the Mughal state, whose primary source of revenue was agriculture. State agents, such as revenue assessors, collectors, and record keepers, attempted to maintain control over rural communities in order to facilitate cultivation and guarantee that the state received its allotted portion of produce taxes.', 'pdf_files/12th_His_C4.pdf', '', '1012'),
(788, 'Physics I', 'Introduction', 'class 11 physics deals with the different types of chapters like units and measurements in this students learn about different types of units ,and this subject also deals with motions and straight lines,motion in a plane,laws of motion,work energy and power,gravitation.students also able to get to know about newtons laws and vice-versa.', '1114', 'Chapter 1 - Units and Measurement', 'With the senses like ears, eyes etc., scientists gather information and make observations. A few of them are like figuring out the colour and texture, while others would be complex where measurement is necessary. It is a basic concept in Science without which scientists will not be able to conduct any experiments. Students will learn about the units of physical quantities and the method to be followed to evaluate them. ', 'pdf_files/11th_PHY1_C1.pdf', '', '1011'),
(789, '', '', '', '1114', 'Chapter 2 - Motion in a Straight Line', 'This chapter will cover essential topics like comparing objects as point object and the method of plotting graphs and finding the values based on them. The method plotting x-t motion graph can be learnt easily.The time taken by a biker, the speed of a car and the time taken by a bus to travel can be found effortlessly by referring to these solutions. Students will learn the difference between magnitude of displacement and the total length of the path covered.', 'pdf_files/11th_PHY1_C2.pdf', '', '1011');
INSERT INTO `learning_stdclass` (`id`, `subjects`, `intro`, `description`, `subid`, `chaptername`, `chapterdis`, `pdf`, `classes`, `classid`) VALUES
(790, '', '', '', '1114', 'Chapter 3 - Motion in a plane', 'Students will learn about the scalar and vector quantities and their difference. The method of performing algebraic expressions on various scalar quantities are also explained here. Besides, true or false questions based on these concepts and their justification are elaborated under each answer. We will also learn the concept of magnitude of vectors and their co-linearity, magnitude of displacement vector and the various types of displacement of a moving vehicle.', 'pdf_files/11th_PHY1_C3.pdf', '', '1011'),
(791, '', '', '', '1114', 'Chapter 4 - Laws of Motion', 'This chapter is very important in mechanics. Problems based on the conservation of momentum are frequently asked in the exam. By going through this chapter, students will become well-versed with the laws of motion and their applications in our daily activities. Various numerical problems based on mechanics are solved clearly in this chapter to boost the exam preparation of students.', 'pdf_files/11th_PHY1_C4.pdf', '', '1011'),
(792, '', '', '', '1114', 'Chapter 5 - Work Energy and Power', 'The Work Energy Theorem is an important concept in this chapter. Students are highly recommended to learn this chapter effectively as it is continued in future classes also. The work done by a person and the energy required to do that work is explained briefly with suitable examples to make the students well-versed with the concepts. Problems on determining the energy and power are solved.', 'pdf_files/11th_PHY1_C5.pdf', '', '1011'),
(793, '', '', '', '1114', 'Chapter 6 - System of Particles & Rotational Motion ', 'This chapter will help students understand the motion of extended bodies, such as the system of particles. The centre of mass of a system of particles is the main concept in this chapter. ', 'pdf_files/11th_PHY1_C6.pdf', '', '1011'),
(794, '', '', '', '1114', 'Chapter 7 - Gravitation', 'We know that all material objects are attracted towards the Earth. The things which we throw up fall down. Climbing a hill is difficult when compared to going downhill. Gravitation is a very popular concept as most of them which we study in the future are in accordance with this phenomenon. To understand the more complex concepts in this chapter, students should know the difference between gravity and gravitation.', 'pdf_files/11th_PHY1_C7.pdf', '', '1011'),
(795, 'Science', 'Introduction', 'Science is interested in a nice activity about the world and how it behaves. Science can be isolated into various branches dependent on the matter of study. The physical sciences study the inorganic world and contain the fields of stargazing, physical science, science, and the Earth sciences. The natural sciences, for example, science and medication study the natural universe of life and its cycles. Sociologies like human studies and financial matters study the social and social parts of human conduct.', '1006', 'Chapter 1 -  Chemical Reactions and  Equations', ' Chemical reactions: Chemical equation, Balanced chemical equation, implications of a balanced chemical equation, types of chemical reactions: combination, decomposition, displacement, double displacement, precipitation, endothermic exothermic reactions, oxidation and reduction.', 'pdf_files/10th_SCI_C1.pdf', '', '1010'),
(796, '', '', '', '1006', 'Chapter 2 - Acids Bases and Salts', 'Acids, bases and salts: Their definitions in terms of furnishing of H+ and OH– ions, General properties, examples and uses, neutralization, concept of pH scale (Definition relating to logarithm not required), importance of pH in everyday life; preparation and uses of Sodium Hydroxide, Bleaching powder, Baking soda, Washing soda and Plaster of Paris.', 'pdf_files/10th_SCI_C2.pdf', '', '1010'),
(797, '', '', '', '1006', 'Chapter 3 - Metals and Non-Metals', 'Here in Chapter 3 of Class 10 Science, students will learn about the physical properties of metals and non-metals. Metals are lustrous, malleable, ductile and are good conductors of heat and electricity. They are solid at room temperature, except mercury which is a liquid. The physical properties of metals are explained on various parameters such as ductility, malleability, tensile nature, strength, etc. On the basis of physical properties, metals and non-metals are differentiated. Some of the examples of non-metals are carbon, sulphur, iodine, oxygen, hydrogen, etc', 'pdf_files/10th_SCI_C3.pdf', '', '1010'),
(798, '', '', '', '1006', 'Chapter 4 - Carbon and its Compounds', 'Carbon compounds: Covalent bonding in carbon compounds. Versatile nature of carbon. Homologous series. Nomenclature of carbon compounds containing functional groups (halogens, alcohol, ketones, aldehydes, alkanes and alkynes), difference between saturated hydro carbons and unsaturated hydrocarbons. Chemical properties of carbon compounds (combustion, oxidation, addition and substitution reaction). Ethanol and Ethanoic acid (only properties and uses), soaps and detergents.', 'pdf_files/10th_SCI_C4.pdf', '', '1010'),
(799, '', '', '', '1006', 'Chapter 5 - Life Processes', ' There are six life processes that all living organisms perform. They are movement, respiration, growth, reproduction, excretion and nutrition. The chapter also teaches about nutrition which means the process of taking in food and using it for growth, metabolism and repair. Nutritional stages are ingestion, digestion, absorption, transport, assimilation, and excretion. Nutrition is further divided into Autotrophic Nutrition and Heterotrophic Nutrition. Autotrophic nutrition involves the intake of simple inorganic materials from the environment and using an external energy source like the Sun to synthesize complex high-energy organic material.', 'pdf_files/10th_SCI_C5.pdf', '', '1010'),
(800, '', '', '', '1006', 'Chapter 6 - Control and Coordination', 'control and coordination, which are the functions of the nervous system and hormones in our bodies. The responses of the nervous system can be classified as a reflex action, voluntary action or involuntary action. The nervous system uses electrical impulses to transmit messages. It gets information from our sense organs and acts through our muscles. Chemical coordination is seen in both plants and animals. Hormones produced in one part of an organism move to another part to achieve the desired effect. A feedback mechanism regulates the action of the hormones.', 'pdf_files/10th_SCI_C6.pdf', '', '1010'),
(801, '', '', '', '1006', 'Chapter 7 - How do Organisms Reproduce?', 'How do Organisms Reproduce chapter involves the creation of a DNA copy and additional cellular apparatus by the cell involved in the process. Depending on their body design, various organisms use different modes of reproduction. In fission, many bacteria and protozoa simply divide into two or more daughter cells. Organisms such as hydra can regenerate if they are broken into pieces. ', 'pdf_files/10th_SCI_C7.pdf', '', '1010'),
(802, '', '', '', '1006', 'Chapter 8 - Heredity and Evolution', 'We have seen that reproductive processes give rise to new individuals that are similar, but subtly different. We have discussed how some amount of variation is produced even during asexual reproduction. The Rules for the Inheritance of Traits in human beings relate to the fact that both the father and the mother contribute practically equal amounts of genetic material to the child. This means that each trait can be influenced by both paternal and maternal DNA. Sex can be determined by different factors in various species. ', 'pdf_files/10th_SCI_C8.pdf', '', '1010'),
(803, '', '', '', '1006', 'Chapter 9 - Light – Reflection and Refraction', 'Reflection of light by curved surfaces; Images formed by spherical mirrors, centre of curvature, principal axis, principal focus, focal length, mirror formula (Derivation not required),magnification. Refraction; Laws of refraction, refractive index. Refraction of light by spherical lens; Image formed by spherical lenses; Lens formula(Derivation not required); Magnification. Power of a lens.', 'pdf_files/10th_SCI_C9.pdf', '', '1010'),
(804, '', '', '', '1006', 'Chapter 10 - The Human Eye and the Colourful  World', 'Functioning of a lens in human eye, defects of vision and their corrections, applications of spherical mirrors and lenses. Refraction of light through a prism, dispersion of light, scattering of light, applications in daily life (excluding colour of the sun at sunrise and sunset).', 'pdf_files/10th_SCI_C10.pdf', '', '1010'),
(805, '', '', '', '1006', 'Chapter 11 - Electricity', 'Electric current, potential difference and electric current. Ohm’s law; Resistance, Resistivity, Factors on which the resistance of a conductor depends. Series combination of resistors, parallel combination of resistors and its applications in daily life. Heating effect of electric current and its applications in daily life. Electric power, Interrelation between P, V, I and R.', 'pdf_files/10th_SCI_C11.pdf', '', '1010'),
(806, '', '', '', '1006', 'Chapter 12 - Magnetic Effects of Electric Current', 'In this chapter, students will study magnetic fields and such electromagnetic effects, along with electromagnets and electric motors, which involve the magnetic effect of electric current, and electric generators, which involve the electric effect of moving magnets. A compass needle is a small magnet. Its one end, which points towards the north, is called a north pole, and the other hand, which points towards the south, is called a south pole. A magnetic field exists in the region surrounding a magnet in which the force of the magnet can be detected. Field lines are used to represent a magnetic field. A field line is a path along which a hypothetical free north pole would tend to move. The direction of the magnetic field at a point is given by the direction that a north pole placed at that point would take. Field lines are shown closer together where the magnetic field is greater. A metallic wire carrying an electric current has associated with it a magnetic field. ', 'pdf_files/10th_SCI_C12.pdf', '', '1010'),
(807, '', '', '', '1006', 'Chapter 13 - Our Environment', 'This chapter discusses how various components in the environment interact with each other and how we impact the environment. The various components of an ecosystem are interdependent. The producers make the energy from sunlight available to the rest of the ecosystem. There is a loss of energy as we go from one trophic level to the next, this limits the number of trophic levels in a food chain. The food-chain is explained in detail with examples according to nature, such as in the forest, in grassland and in the pond. Human activities have an impact on the environment. ', 'pdf_files/10th_SCI_C13.pdf', '', '1010'),
(808, 'Business Studies', 'Introduction', 'Business Studies has great importance in our day-to-day life and plays a huge role in how we look at money and purchases. Not only does it talk about businesses in general but it goes in-depth about concepts like finances and accounts, markets, human resources, staff and trade.', '1115', 'Chapter 1 - Business, Trade and Commerce', 'This chapter is introductory to the Business Studies subject where students become familiar with concepts of business, trade and commerce and what those three entail along with their features. It talks about banking systems, intermediaries, merchant corporations and the main trade centres. It also touches upon the industry.', 'pdf_files/11th_Business_Std_C1.pdf', '', '1011'),
(809, '', '', '', '1115', 'Chapter 2 - Forms of Business Organisation', 'The chapters primarily discuss the varied nature of a business organisation, and students can appreciate how one differs from the other. Other concepts from this chapter include proprietorship and partnership, types of companies and also a brief mention of joint-stock companies. This is a very important chapter.', 'pdf_files/11th_Business_Std_C2.pdf', '', '1011'),
(810, '', '', '', '1115', 'Chapter 3 - Private, Public and Global Enterprises ', 'The nature of ownership patterns or holding structure is elucidated in private, public and global enterprises. There is an introduction to public and government companies, the role of public sectors, and also about joint ventures.', 'pdf_files/11th_Business_Std_C3.pdf', '', '1011'),
(811, '', '', '', '1115', 'Chapter 4 - Business Services', 'Chapter 4 encompasses the different types of services extended by businesses and the broad categorisation of the same. Some of the topics covered include banks and the function of commercial banks, e-banking, all about Insurances, postal and telecom, warehouse services and transport.', 'pdf_files/11th_Business_Std_C4.pdf', '', '1011'),
(812, '', '', '', '1115', 'Chapter 5 - Emerging Modes of Business', 'Changing business scenarios has brought a paradigm shift to newer business models. Students get a glimpse of a few emerging business models in this chapter. This chapter also talks in detail about the concept of e-business, its advantages and disadvantages, the concept of outsourcing, B2B, B2C, C2C commerce and how they work.', 'pdf_files/11th_Business_Std_C5.pdf', '', '1011'),
(813, '', '', '', '1115', 'Chapter 6 - Social Responsibilities of Business and Business Ethics', 'Chapter 6 introduces students to corporate social responsibilities and the role business entities may play in social engineering. This is a very important chapter as it talks about the different kinds of social responsibilities, the cases against it, pollution due to businesses, ethics in business and the elements of it.', 'pdf_files/11th_Business_Std_C6.pdf', '', '1011'),
(814, '', '', '', '1115', 'Chapter 7 - Formation of a Company', 'Details relating to the incorporation of the company have been laid down in chapter 7. This chapter also includes the forming of a company, its promotion, the concept of incorporation and the effects of its certification.', 'pdf_files/11th_Business_Std_C7.pdf', '', '1011'),
(815, '', '', '', '1115', 'Chapter 8 - Sources of Business Finance', 'Different financing options are discussed which ranges from a conventional source of funds, i.e., banks, to that of investors. It also introduces period basis, generation basis and the various sources of finance. This includes credit, lease, public deposits and factoring.', 'pdf_files/11th_Business_Std_C8.pdf', '', '1011'),
(816, '', '', '', '1115', 'Chapter 9 -  Small Business and  Entrepreneurship', 'The markers and basic features of small businesses are elucidated in Chapter 9. This chapter has great importance as it covers a whole lot of topics including the importance of small businesses in rural and urban areas, the problems that could arise, how the government helps the rural projects, NABARD, RSBDC, NSIC, SIDBI, and RWED.', 'pdf_files/11th_Business_Std_C9.pdf', '', '1011'),
(817, '', '', '', '1115', 'Chapter 10 - Internal Trade', 'Students are introduced to the concept of trade within the country and its various characteristics. The students also learn about the concepts of retail trade, itinerants, fixed and large-scale retailers, different types of stores and shops, markets and even vending machines. ', 'pdf_files/11th_Business_Std_C10.pdf', '', '1011'),
(818, '', '', '', '1115', 'Chapter 11 - International Business', 'Finally, Chapter 11 touches upon some elementary understanding of international business but does not delve into it in further detail. This last chapter talks about the scope and benefits of any foreign ventures, joint ventures in an international setup, India in international trade and business, including import and export of goods and services.', 'pdf_files/11th_Business_Std_C11.pdf', '', '1011'),
(819, 'Hindi', 'Introduction', 'Focuses on Hindi literature, including poetry and prose, and requires students to understand major works of Hindi literature and their historical and cultural context. The syllabus includes activities like reading and analyzing texts, writing assignments, and creative writing.', '1007', 'Chapter 1 - साखी', 'This chapter by Surdas defines the emotions of separations felt by girls when Lord Krishna left Mathura, and he sent a message from there through a friend. The entire sequence is presented beautifully throughout the poem. The poem is being taken from \"Bhrmar Geet\", a compilation of Suryasagar by Surdas.', 'pdf_files/10th_Hin_C1.pdf', '', '1010'),
(820, '', '', '', '1007', 'Chapter 2 - पद', 'Tulsidas chapter consists of a dialogue between Ram, Laxman and Parshurama taken from \"Balkhand\", a part of Ramcharitramanas. The same is expressed in a poem format. This entire scenario happened during the Swayamvar of Goddess Sita, where Lord Ram impressed everyone by breaking the bow of Lord Shiva and won Sita’s heart to become his wife.', 'pdf_files/10th_Hin_C2.pdf', '', '1010'),
(821, '', '', '', '1007', 'Chapter 3 - मनुष्यता', 'Munshi Premchand requested to write an autobiography with Mr Jaishankar Prasad to print his magazine \'Hans\", but he refused to do so. He wrote \"Aathmkatha\" poem instead of autobiography, which appeared in Hans in 1932.', 'pdf_files/10th_Hin_C3.pdf', '', '1010'),
(822, '', '', '', '1007', 'Chapter 4 -  पर्वत प्रदेश मेंपार्स', 'There are two parts to this poem. The first poem, Utsaah is an invocation song. The poet reveals it through clouds. The poem is reflected in the context of Navjivan, and Nirala Ji expressed his feelings through clouds. In the second poem, the poet in Nahi Rahi expresses his feeling in the form of an illustration of Phagun Month.', 'pdf_files/10th_Hin_C4.pdf', '', '1010'),
(823, '', '', '', '1007', 'Chapter 5 - तोप', ' Nagarjun consists of two poems. In the first poem, the poet is happy to see the grin of a small child, who has small teeth in his mouth. The second poem Fasal shows crops are the basis of our lives.', 'pdf_files/10th_Hin_C5.pdf', '', '1010'),
(824, '', '', '', '1007', 'Chapter 6 -  कर चलेहम फ़िदा', 'The Sangatkar poem points to the importance of the accompanist who coordinates the lead singer.', 'pdf_files/10th_Hin_C6.pdf', '', '1010'),
(825, '', '', '', '1007', 'Chapter7 - आत्मत्राण', 'Saviya Prakash describes the important contribution of those anonymous citizens of the country, who are actively helping to build the country.', 'pdf_files/10th_Hin_C7.pdf', '', '1010'),
(826, '', '', '', '1007', 'CHAPTER 8 - बडेभाई साहब', 'Through this sketch, the author describes a sanyasi who did not look like a sanyasi with costumes. The author says the basis of being a sanyasi is love for humans.', 'pdf_files/10th_Hin_C8.pdf', '', '1010'),
(827, '', '', '', '1007', 'CHAPTER 9 - डायरी का एक पन्ना', 'Through this poem, the poet wants to say that no characters or any story can be written, but an independent composition can be depicted.', 'pdf_files/10th_Hin_C9.pdf', '', '1010'),
(828, '', '', '', '1007', 'CHAPTER 10 - ततााँरा-र्ामीरो कथा', 'This story is an autobiography of Mannu Bhandari. In this finely written story, she describes events of her life, which helped her turn into a writer. It is a story of a young girl from a small town struggling for freedom through her lie and finding difficulty in a way to protest.', 'pdf_files/10th_Hin_C10.pdf', '', '1010'),
(829, '', '', '', '1007', 'CHAPTER 11 - तीसरी कसम के फशल्पकार शैलेंद', 'This chapter is a short biography of Ustad Bismillah written by Yatindra Mishra. Amiruddin, a six-year-old man in Kashi from 1916 to 1922, with his nine-year-old elder brother Shamsuddin comes to live with his two maternal uncles Sadiq Hussain and Alivkash.', 'pdf_files/10th_Hin_C11.pdf', '', '1010'),
(830, '', '', '', '1007', 'CHAPTER 12 - अब कहााँदूसरेकेदुख सेदुखी होनेर्ाल', 'In this essay, the author tries to clarify relations and differences in culture and civilization. According to the author, today there are only two words used: \'civilization\' and \'culture\'.', 'pdf_files/10th_Hin_C12.pdf', '', '1010'),
(831, '', '', '', '1007', 'CHAPTER 13 -  पतझर मेंटू टी पफियाा', 'It is believed that saying more in less words is the most important quality of a poem. Whenever this quality is used by poets as well as writers, that is, whenever this quality (saying more in less words) is used in poetry as well as prose, then the person reading that prose remembers this idiom. It goes the same way - \'Saar-Saar Ko Gahi Rahe, Thotha Deya Uday\' i.e. using correct and meaningful words (which have any meaning) and should not use meaningless words (which have no meaning anywhere).', 'pdf_files/10th_Hin_C13.pdf', '', '1010'),
(832, '', '', '', '1007', 'CHAPTER 14 -  कारतूस', 'The British came to this country disguised as traders. To ensure that no one has any doubt, they were doing business in the beginning, but their intention was not to do business only. The East India Company, which he had established for trade, gradually started establishing its authority over the princely states of the country. As soon as the countrymen became aware of his intentions, they started efforts to expel the British from the country.', 'pdf_files/10th_Hin_C14.pdf', '', '1010'),
(833, 'Biotechnology', 'Introduction', 'Biotechnology is a wide branch that involves the exploitation of living organisms using technologies to develop products that would sustain human welfare. Genetic engineering and bioprocess engineering are the two main techniques that have gives rise to modern biotechnology.', '1215', 'Chapter 1 - An Overview of Recombinant DNA Technology', 'Recombinant DNA technology is also known as Genetic Engineering. It is the process of joining together two DNA molecules from two different organisms. This is known as recombinant DNA.', 'pdf_files/12th_BioTech_C1.pdf', '', '1012'),
(834, '', '', '', '1215', 'Chapter 2 -  Host–Vector System', 'A host should allow easy entry of the rDNA into the cell and should not consider the recombinant DNA as a foreign DNA and degrade it.The host must supply all the required enzymes and proteins for smooth replication of the vector DNA along with insert. A wide variety of genetically defined strains are available as hosts. ', 'pdf_files/12th_BioTech_C2.pdf', '', '1012'),
(835, '', '', '', '1215', 'Chapter 3 - Gene Cloning', 'Gene cloning is a customary procedure to use a gene for its product in the biotechnology industry and various other purposes. Traditionally, it engages the transfer of a DNA fragment containing the gene of interest to a host cell by a vector so that many copies of the gene will be available for its characterisation and future application.', 'pdf_files/12th_BioTech_C3.pdf', '', '1012'),
(836, '', '', '', '1215', 'Chapter 4 - Application of Recombinant DNA Technology', 'In this chapter,students will be acquainted with a few applications of rDNA technology, like DNA fingerprinting, developing transgenic organisms gene therapy, recombinant vaccines and production of therapeutic agents/molecules.', 'pdf_files/12th_BioTech_C4.pdf', '', '1012'),
(837, '', '', '', '1215', 'Chapter 5 - Genome Technology and Engineering', 'Gradual development in the area of biotechnology and molecular biology especially in genome mapping and its implication has led to the opening of new frontiers for research as well as its applications in many fields. Advancement in genome research has opened up scope for understanding of transcriptome and proteome of any organism on one hand, and application of genomics and related engineering in prediction and treatment of diseases on the other. Applications in crop improvement, gene therapy and remediation of environmental hazards are yet another frontier in which genome technology has tremendous potential and scope.', 'pdf_files/12th_BioTech_C5.pdf', '', '1012'),
(838, '', '', '', '1215', 'Chapter 6 - Microbial Culture', 'Gradual development in the area of biotechnology and molecular biology especially in genome mapping and its implication has led to the opening of new frontiers for research as well as its applications in many fields. Advancement in genome research has opened up scope for understanding of transcriptome and proteome of any organism on one hand, and application of genomics and related engineering in prediction and treatment of diseases on the other. Applications in crop improvement, gene therapy and remediation of environmental hazards are yet another frontier in which genome technology has tremendous potential and scope.', 'pdf_files/12th_BioTech_C6_G0eIO2D.pdf', '', '1012'),
(839, '', '', '', '1215', 'Chapter 7 - Plant Tissue Culture', 'Plant tissue culture (PTC) refers to the cultivation of undifferentiated plant cells, tissues or organs on synthetic media under aseptic environment and suitable controlled physical conditions. It is an important tool for both basic research as well as commercial applications. Plant tissue culture is based upon the unique characteristic of a plant cell i.e.,  totipotency. Totipotency is the ability of a vegetative cell to divide and differentiate into any type of specialised cell or to regenerate into a whole plant.', 'pdf_files/12th_BioTech_C7.pdf', '', '1012'),
(840, '', '', '', '1215', 'Chapter 8 - Animal Cell Culture', 'Animal cell culture is described as the in vitro maintenance and proliferation of animal cells that will continue to grow outside the living organisms if supplied with appropriate nutrients and growth conditions. The process of growing cells under laboratory conditions is termed as Cell Culture. It is carried out in vitro (within glass) as opposed to in vivo (within the living). It deals with the isolation of cells from animal tissue, surgical intervention for removal of tissues or organs from animal and their placement into an environment (media) in order to enhance their survival and proliferation.', 'pdf_files/12th_BioTech_C8.pdf', '', '1012'),
(841, '', '', '', '1215', 'Chapter 9 - Stem Cell Culture and Organ Culture', 'Stem cell study forms an exciting and attractive area of contemporary biomedical research that has enormous potential for both basic and translational research. Stem cells can be used for alleviating suffering for many diseases that currently have no effective therapy. The field has progressed to the clinic and it is very important that the basics of stem cells be reinforced by excellent science and rigorous standards of clinical research. Besides this, organ culture is another modern culture approach that involves developing a part of organ or the whole organ using tissue culture techniques. In this chapter, we are going to study in detail about stem cell culture and organ culture along with their applications.', 'pdf_files/12th_BioTech_C9.pdf', '', '1012'),
(842, '', '', '', '1215', 'Chapter 10 - Bioprocessing and Biomanufacturing', 'Nowadays, most of these secondary metabolites have a variety of applications in the form of pharmaceuticals, dyes, food additives, enzymes, vitamins, etc. In view of the variety of applications, production of these compounds (biochemicals) at commercial level requires their production in bulk quantities, as quantities produced naturally are not sufficient. These compounds are usually produced at commercial level in a purified form through a series of steps covered under bioprocessing.', 'pdf_files/12th_BioTech_C10.pdf', '', '1012'),
(843, '', '', '', '1215', 'Chapter 11 - Bioremediation', 'In this chapter, we will discuss the management of wastes and pollutants by conventional approach as well as by using microorganisms and plants. Since living organisms (bios) are employed to remediate or solve the problem of damage caused by chemical toxicants, the process is often referred to as bioremediation.', 'pdf_files/12th_BioTech_C11.pdf', '', '1012'),
(844, '', '', '', '1215', 'Chapter 12 - Recent Innovations in Biotechnology', 'Biotechnological innovations have grown steadily over the past 10 years or so, and have benefited the human lives in agriculture, medical science, environment and energy. These technological innovations include GM crops, diagnostics, bacteria that can eat oil, growing human organs in labs for transplants, and advances in biofuel, that can help reduce our nation’s carbon footprint. Innovations could help improve cost effectiveness and resource efficiency of biogas energy technology in a sustainable manner. We now even have plants and meat grown in labs that can be genetically regulated to taste and look in a particular way reflecting on the importance of synthetic biology.', 'pdf_files/12th_BioTech_C12.pdf', '', '1012'),
(845, '', '', '', '1215', 'Chapter 13 - Entrepreneurship', 'Entrepreneurs are the harbingers of prosperous society. An entrepreneur not only creates employment but also contributes to the economic development of the country. With the growth of scientific temperament in society people who have created enterprises based on scientific discoveries have grown in large numbers. One such field of entrepreneurship is based on biotechnology. This chapter highlights the role and relevance of entrepreneurs in general and biotech entrepreneurs in particular. The chapter also has exhibits of cases from the real world about entrepreneurs who have curved a niche for themselves by successfully launching biotechnology-based enterprises.Besides, the chapter also discusses the contemporary legislations governing biotechnology-based enterprises.', 'pdf_files/12th_BioTech_C13.pdf', '', '1012'),
(846, 'Economics', 'Introduction', 'Economics is a social science that deals with the production, distribution (allocation) and expenditure or utilisation of goods and services. It is the study of how individuals, trades, governments and countries make choices in distributing resources to balance their needs and wants to attain maximum output. Economic analysis generally advances through analytical processes, more like mathematical logic, where the inferences of distinct human pursuits are contemplated in a “means-ends” substructure. ', '1116', 'Chapter 1 -   INDIAN ECONOMY ON THE EVE OF INDEPENDENCE', 'Indian Economy on the Eve of Independence   Low Level of Economic Development Under the Colonial Rule   Agricultural Sector  Industrial Sector  Foreign Trade  Demographic Condition  Occupational Structure   Infrastructure ', 'pdf_files/12th_Eco_C1_dDSlNCG.pdf', '', '1011'),
(847, '', '', '', '1116', 'Chapter 2 - : INDIAN ECONOMY 1950-1990', 'Indian Economy 1950-1990  The Goals of Five Year Plans   Agriculture   Industry And Trade  Trade Policy: Import Substitution ', 'pdf_files/12th_Eco_C2_SNFGsdb.pdf', '', '1011'),
(848, '', '', '', '1116', 'Chapter 3 - LIBERALISATION, PRIVATISATION AND GLOBALISATION: AN APPRAISAL', 'Liberalisation, Privatisation, And Globalisation : An Appraisal  Background  Liberalisation   Privatisation   Globalisation   Indian Economy During Reforms: An Assessment', 'pdf_files/12th_Eco_C3_ZxdWepy.pdf', '', '1011'),
(849, '', '', '', '1116', 'Chapter 4 - HUMAN CAPITAL FORMATION IN INDIA', 'Human Capital Formation in India   What is Human Capital?   Sources of Human Capital  Human Capital And Human Development   State of Human Capital Formation in India   Education Sector in India   Future Prospect', 'pdf_files/12th_Eco_C4_xhPiFqd.pdf', '', '1011'),
(850, '', '', '', '1116', 'Chapter 5 - : RURAL DEVELOPMENT', 'Rural Development  What is Rural Development?  Credit And Marketing in Rural Areas  Agricultural Market System  Diversification Into Productive Activities  Sustainable Development And Organic Farming', 'pdf_files/12th_Eco_C5_LQxow2S.pdf', '', '1011'),
(851, '', '', '', '1116', 'Chapter 6 - EMPLOYMENT: GROWTH, INFORMALISATION AND OTHER ISSUES', 'Employment: Growth, Informalisation, And Other Issues  Workers And Employment  Participation of People in Employment  Self-Employed And Hired Workers  Employment in Firms, Factories, And Offices  Growth And Changing Structure of Employment  Informalisation of Indian Workforce  Unemployment  Government And Employment Generation', 'pdf_files/12th_Eco_C6.pdf', '', '1011'),
(852, '', '', '', '1116', 'Chapter 7 - ENVIRONMENT AND SUSTAINABLE DEVELOPMENT', 'Environment And Sustainable Development  Environment — Definition And Functions  State of India’s Environment  Sustainable Development  Strategies for Sustainable Development', 'pdf_files/12th_Eco_C7.pdf', '', '1011'),
(853, '', '', '', '1116', 'Chapter 8 - COMPARATIVE DEVELOPMENT EXPERIENCES OF 134  INDIA AND ITS NEIGHBOURS', 'Comparative Development Experiences of India and Its Neighbours  Developmental Path - A Snapshot View  Demographic Indicators  Gross Domestic Product And Sectors  Indicators of Human Development  Development Strategies - An Appraisal', 'pdf_files/12th_Eco_C8.pdf', '', '1011'),
(854, 'Home Science 1', 'Introduction', 'Home Science will give you scientific knowledge and develop skill for efficient performance of household responsibilities. Skill is the process of applying theory based knowledge into your daily life. For example, countering social pressures to adopt unhealthy eating practices by refusal is a skill.', '1216', 'Chapter 1 - WORK, LIVELIHOOD AND  CAREER', 'Work, Livelihood and Career Reading this Chapter will help students pick up useful vocational skills, determine the course of life and work they choose to take as well as learn all about the various facets that contribute to a good life and work-life balance. They will learn to be sensitive to several issues that affect an individual at work, especially vulnerable groups such as elderly people, children and women.', 'pdf_files/12th_HomeSci_C1.pdf', '', '1012'),
(855, '', '', '', '1216', 'Chapter 2 - CLINICAL NUTRIRION  AND DIETETICS', ' Clinical Nutrition and Dietetics Among the several things that this Chapter deals with, the topics that need the most attention are the significance of nutrition (especially clinical nutrition and dietetics in our lives) and the scope of such a career. The academic qualifications and skills required to pursue a career in nutrition and dietetics are also explained in detail in this Chapter of the book.', 'pdf_files/12th_HomeSci_C2.pdf', '', '1012'),
(856, '', '', '', '1216', 'Chapter 3 - PUBLIC NUTRITION AND HEALTH', ' Public Nutrition and Health In your previous Classes, you have learnt how important a well-balanced diet and proper nutrition is, for good health. In this Chapter, besides nutrition, you will further learn about the various problems plaguing public health, the causative factors behind nutritional problems and various public health programmes.', 'pdf_files/12th_HomeSci_C3.pdf', '', '1012'),
(857, '', '', '', '1216', 'Chapter 4 - FOOD PROCESSING AND TECHNOLOGY', 'Food items in the country and elsewhere, have been subject to various rounds of processing since time immemorial. The grains we consume, such as rice, wheat, maize and barley have long been processed to be more fit for consumption. For instance, grains are dried post-harvest to increase their longevity.', 'pdf_files/12th_HomeSci_C4.pdf', '', '1012'),
(858, '', '', '', '1216', 'Chapter 5 - FOOD QUALITY AND FOOD SAFETY', 'In any community, country or part of the world, food is one of the most significant factors that determine the health, productivity, efficiency and nutritional conditions of that place. It is only natural that attention is paid to the kind of food we consume, and whether it is safe and healthy.', 'pdf_files/12th_HomeSci_C5.pdf', '', '1012'),
(859, '', '', '', '1216', 'Chapter 6 - HUMAN DEVELOPMENT AND  FAMILY STUDIES', 'Early Childhood Care and Education students were introduced to the subject of early childhood and adolescent development. Several changes take place in the body of a child developing from an infant to a teenager, and further into an adult. For those looking at a career in human development and related studies, this Chapter comes in very handy.', 'pdf_files/12th_HomeSci_C6.pdf', '', '1012'),
(860, '', '', '', '1216', 'Chapter 7 - MANAGEMENT OF SUPPORT SERVICES  INSTITUTIONS AND PROGRAMMMES FOR CHILDREN,YOUTH AND ELDE', 'Management of Support Services, Institutions and Programmes for Children, Youth, and Elderly  A family is the structural backbone of a society, and although, from the outside, it seems to merely serve the purpose of love and service to its members, the concept of a family has a far greater implication.', 'pdf_files/12th_HomeSci_C7.pdf', '', '1012'),
(861, 'Sanskrit', 'Introduction', 'प्रस्तुत गीत आधुतनक सांस्कृ त सातहत्य के प्रख्यात कतव पां० जानकी वल्लभ शास्त्री की रिना\r\n‘काकली’ नामक गीत सांग्रह सेसांकतलत है। शास्त्री जी नेसांस्कृ त सातहत्य मेंआधुतनक तवधा\r\nकी रिनाओांको प्रारां भ तकया। इनके द्वारा गीत, गज़ल, श्लोक आतद तवधाओांमेंतलिी गई\r\nसांस्कृ त कतवताएाँबहुत लोकतप्रय हुईां। उन्नीस वषणकी आयुमेंइनकी सांस्कृ त कतवताओांका\r\nसांग्रह ‘काकली’ का प्रकाशन हुआ र्ा।\r\n', '905', 'Chapter 1 - भारतीवसन्तगीतिः', '', 'pdf_files/9th_Sans_C1.pdf', '', '1009'),
(862, '', '', '', '905', 'Chapter 2 -  स्वर्णकाकः', '', 'pdf_files/9th_Sans_C2.pdf', '', '1009'),
(863, '', '', '', '905', 'Chapter 3 - गोदोहनम्', '', 'pdf_files/9th_Sans_C3.pdf', '', '1009'),
(864, '', '', '', '905', 'Chapter 4 - कल्पतरूः', '', 'pdf_files/9th_Sans_C4.pdf', '', '1009'),
(865, '', '', '', '905', 'Chapter 5 - सूक्तिमौक्तिकम्', '', 'pdf_files/9th_Sans_C5.pdf', '', '1009'),
(866, '', '', '', '905', 'Chapter 6 - भ्रान्तो बालः', '', 'pdf_files/9th_Sans_C6.pdf', '', '1009'),
(867, '', '', '', '905', 'Chapter 7 - प्रत्यभिज्ञानम्', '', 'pdf_files/9th_Sans_C7.pdf', '', '1009'),
(868, '', '', '', '905', 'Chapter 8 - लौहतुला', '', 'pdf_files/9th_Sans_C8.pdf', '', '1009'),
(869, '', '', '', '905', 'Chapter 9 -  सिकतासेतुः', '', 'pdf_files/9th_Sans_C9.pdf', '', '1009'),
(870, '', '', '', '905', 'Chapter 9 - सिकतासेतुः', '', 'pdf_files/9th_Sans_C9.pdf', '', '1009'),
(871, '', '', '', '905', 'Chapter 11 - पर्यावरणम्', '', 'pdf_files/9th_Sans_C11.pdf', '', '1009'),
(872, '', '', '', '905', 'Chapter 12 - वाडमनःप्राणस्वरूपम्', '', 'pdf_files/9th_Sans_C12_3hh6zDi.pdf', '', '1009'),
(873, 'Sanskrit', 'Introduction', 'संस्कृत विश्व की अत्यन्त प्राचीन भाषा है। भारतीय संस्कृति का स्रोत भी यही भाषा है। इसमें न केवल हमारे प्राचीन उदात्त संस्कार निहित हैं, अपितु हमारा गम्भीर शास्त्र-ज्ञान एवं पारलौकिक चिन्तन भी इसी भाषा में उपलब्ध है। ज्ञान-विज्ञान के क्षेत्र में जितने ग्रन्थ इस भाषा में लिखे गए हैं, उतने विश्व की अन्य किसी भी प्राचीन भाषा में नहीं मिलते। संस्कृत का साहित्य ऋग्वेद काल से लेकर आज तक अबाध गति से प्रवाहित होता रहा है। वेद, व्याकरण, ज्योतिष, छन्द, निर्वचनशास्त्र, अर्थशास्त्र, राजनीति, ज्यामिति, षड्दर्शन आदि के साथ-साथ यह साहित्य कोमल काव्यानुभूतियों से ओत-प्रोत गद्य-पद्य की उर्वर जन्मभूमि है। Shed\r\nसंस्कृत भाषा ने समस्त भारत की आधुनिक भाषाओं को प्रत्यक्ष अथवा परोक्ष रूप से पर्याप्त प्रभावित किया है। मध्यकाल में प्राकृत तथा अपभ्रंश साहित्य को तो संस्कृत के बिना समझ पाना बहुत कठिन था। आधुनिक भारतीय साहित्य का अधिकांश भाग संस्कृत साहित्य की ही देन है। आधुनिक भारत की लगभग सभी भाषाओं ने संस्कृत से शब्दावली ग्रहण की है। विदेशों में भी संस्कृत की महत्ता बड़े आदर से स्वीकृत की गई है। विश्व के अनेक विश्वविद्यालयों में संस्कृत भाषा का सम्यक् अनुशीलन हो रहा है। राष्ट्रीय एकता की दृष्टि से संस्कृत का बहुत महत्त्व है। यद्यपि भारतवर्ष में क्षेत्रीय विषमताएँ एवं विविधताएँ अनन्त हैं, तो भी जिन तत्त्वों का इस देश को एक सूत्र में बाँधे रखने में सर्वाधिक योगदान है, उनमें संस्कृत भाषा तथा इसका साहित्य प्रमुख है। पुराणों में भारत के समस्त भूगोल को इस रूप में चित्रित किया गया है कि उसे पढ़कर प्रत्येक भारतीय के मन में अपने देश के प्रति अगाध आस्था एवं श्रद्धा स्वतः ही उत्पन्न हो जाती है। संस्कृत साहित्य की मूल चेतना समूचे भारतवर्ष को एक राष्ट्र के रूप में देखने की रही है।', '1117', 'Chapter 1 - वेदामृतम्', '', 'pdf_files/11th_Sans_C1.pdf', '', '1011'),
(874, '', '', '', '1117', 'Chapter 2 - परोपकारय संता विभूत्य:', '', 'pdf_files/11th_Sans_C2.pdf', '', '1011'),
(875, '', '', '', '1117', 'Chapter 3 - मानो ही महंतI धनम्', '', 'pdf_files/11th_Sans_C3.pdf', '', '1011'),
(876, '', '', '', '1117', 'Chapter 4 - सौवर्णशकटीका', '', 'pdf_files/11th_Sans_C4.pdf', '', '1011'),
(877, '', '', '', '1117', 'Chapter 5 - आहारविचार:', '', 'pdf_files/11th_Sans_C5.pdf', '', '1011'),
(878, '', '', '', '1117', 'Chapter 6 - संततीप्रबोधनम्', '', 'pdf_files/11th_Sans_C6.pdf', '', '1011'),
(879, '', '', '', '1117', 'Chapter 7 - विज्ञाननौका', '', 'pdf_files/11th_Sans_C7.pdf', '', '1011'),
(880, '', '', '', '1117', 'Chapter 8 - कांथामणिक्यम्', '', 'pdf_files/11th_Sans_C8.pdf', '', '1011'),
(881, '', '', '', '1117', 'Chapter 9 - ईश: कुत्रIस्ती', '', 'pdf_files/11th_Sans_C9.pdf', '', '1011'),
(882, '', '', '', '1117', 'Chapter 10 - त्त्वमा जिम ', '', 'pdf_files/11th_Sans_C10.pdf', '', '1011'),
(883, '', '', '', '1117', 'Chapter 11 - नवद्रव्या ण', '', 'pdf_files/11th_Sans_C11.pdf', '', '1011'),
(884, 'Social and Political Life', 'Introduction', 'A new learning area of social science curriculum at the upper primary stage replacing the earlier learning area of \'Civics\' explain different socio-political concepts such as diversity, discrimination, governments, and democratic rule.', '608', 'Chapter 1 - Understanding Diversity', 'Everyone on this earth differs from each other in terms of appearance, behaviour, culture, region and so on. India can be considered a country of vast diversity. Understanding diversity means comprehending that each individual is unique. It also means recognising our individual differences along the dimensions of race, ethnicity, gender, sexual orientation, socio-economic status, age, physical abilities, religious beliefs, political beliefs and other ideologies.', 'pdf_files/6th_SocPoli_C1.pdf', '', '1006'),
(885, '', '', '', '608', 'Chapter 2 - Diversity and Discrimination', 'India is well known for its diversity of people who speak different languages, living together as a community. What distinguishes India from other diverse nations is its unity that has stayed despite various conflicts that exist in society. People from different caste, creed, religion, gender live together. However, do they all get equal rights? Do they get discriminated against? Do stereotypes affect communal harmony? Find out further about Diversity and Discrimination.', 'pdf_files/6th_SocPoli_C2.pdf', '', '1006'),
(886, '', '', '', '608', 'Chapter 3 -  Electoral Politics', 'On the surface level, George Orwell’s timeless allegorical novella ‘Animal Farm’ is a book about animals living on a farm. The book tells the story of a group of farm animals rebelling against their human farmer, hoping to create a society where the animals can be equal, free and happy. Orwell states that this book reflects on the events leading up to the Russian Revolution of 1917 and then on the Stalinist era of the Soviet Union. Thus, we can say that the book tries to portray the functioning of a government. It is important to know how a country runs and the role that citizens play in it.', 'pdf_files/6th_SocPoli_C3.pdf', '', '1006'),
(887, '', '', '', '608', 'Chapter 4 -  Panchayati Raj', 'Panchayati Raj refers to the system of local self-government in India. It was introduced by a constitutional amendment in 1992, although it is based upon the traditional panchayat system of the Indian subcontinent. The Panchayati Raj, originating from the Indian subcontinent, is found mainly in India, Pakistan, Bangladesh, Sri Lanka and Nepal. The word raj means “rule” and panchayat means “assembly”(ayat) of five (panch). Students can refer to Chapter 5 of CBSE Class 6 Civics. This chapter talks about the roles, responsibilities and duties of the gram sabha and gram panchayats.', 'pdf_files/6th_SocPoli_C4.pdf', '', '1006'),
(888, '', '', '', '608', 'Chapter 5 -  Rural Administration', 'The 2011 Census reveals that there are 6,40,867 villages in India. If things have to run smoothly, the administration of these villages has to be extremely efficient. Take a look at the structure of rural administration in our country and the problems it faces the roles, responsibilities and duties of the police, patwari and tehsildar.', 'pdf_files/6th_SocPoli_C5.pdf', '', '1006'),
(889, '', '', '', '608', 'Chapter 6 - Urban Administration', 'Do you live in a city? From where do you get the water and electricity in your home? Do you know who fixes the lamp posts in your street? you will learn that urban administration is required to provide basic amenities like street lights, garbage collection and water supply. The urban administration is also required to collect taxes (house and water taxes) and is responsible for cleaning the city’s drainage system and maintaining parks and the market. The municipal corporations or councils carry out duties related to urban administration in India. This chapter talks about the roles, responsibilities and duties of the urban administration in making sure that the city functions smoothly.', 'pdf_files/6th_SocPoli_C6.pdf', '', '1006'),
(890, '', '', '', '608', 'Chapter 7 - Rural Livelihoods', 'In most of the rural areas of the world, a major portion of the population earns their living via farming. At the same time, other common livelihoods that these populations survive on include fishing, raising livestock and other non-farm activities,students will see the different ways in which people earn their living in villages. This chapter talks about the livelihoods of people living in rural areas, the kind of jobs that they have, the problems associated with being landless farmers and the reasons behind debt.', 'pdf_files/6th_SocPoli_C7.pdf', '', '1006'),
(891, '', '', '', '608', 'Chapter 8: Urban Livelihoods', 'People in urban areas are either self-employed or work for someone. They earn their living in various ways. It is also seen that various people travel from rural to urban areas in search of work and a better life. A large portion of these workers are self-employed and work on streets selling goods, repairing items, or providing a variety of services talks about the livelihoods of people living in urban areas, the kind of jobs that they have, the positives of permanent jobs, and the negatives associated with non-permanent jobs. ', 'pdf_files/6th_SocPoli_C8.pdf', '', '1006'),
(892, 'Mathematics', 'Introduction', 'Class 9 Maths is the base of secondary-stage math learning that promotes various computational skills. It solidifies the mathematical understanding of concepts based on coordinate geometry, number system, algebra, trigonometry, mensuration, statistics, graphs, etc.', '908', 'Chapter 1 - NUMBER SYSTEMS', 'This chapter discusses different topics, including rational numbers and irrational numbers. Students will also be learning the extended version of the number line and how to represent numbers (integers, rational and irrational) on it. A total of 6 exercises are present in this chapter that contains the problems based on all the topics asked in the chapter. This chapter also teaches students the representation of terminating/non-terminating recurring decimals (and successive magnification method) as well as the presentation of square roots of 2, 3 and other non-rational numbers on the number line. The chapter also deals with the laws of integral powers and rational exponents with positive real bases in the Number System.', 'pdf_files/9th_maths_C1.pdf', '', '1009'),
(893, '', '', '', '908', 'Chapter 2 - POLYNOMIALS', 'This chapter discusses a particular type of algebraic expression called polynomial and the terminology related to it. Polynomial is an expression that consists of variables and coefficients involving the operations of addition, subtraction, multiplication, and non-negative integer exponents of variables. The chapter also deals with the Remainder Theorem and the Factor Theorem with the uses of these theorems in the factorisation of polynomials. Students will be taught several examples as well as the definition of different terms like polynomials, degrees, coefficients, zeros and terms of a polynomial.', 'pdf_files/9th_maths_C2.pdf', '', '1009'),
(894, '', '', '', '908', 'Chapter 3 - COORDINATE GEOMETRY', 'The chapter Coordinate Geometry includes the concepts of the cartesian plane, coordinates of a point in xy–plane, terms, and notations associated with the coordinate plane, including the x-axis, y-axis, x- coordinate, y-coordinate, origin, quadrants and more. Students, in this chapter, will also be studying the concepts of abscissa and ordinates of a point as well as plotting and naming a point in xy–plane.', 'pdf_files/9th_maths_C3.pdf', '', '1009'),
(895, '', '', '', '908', 'Chapter 4 - LINEAR EQUATIONS IN TWO VARIABLES', 'Along with recalling the knowledge of linear equations in one variable, this chapter will introduce the students to the linear equation in two variables, i.e. ax + by + c = 0. Students will also learn to plot the graph of a linear equation in two variables.', 'pdf_files/9th_maths_C4.pdf', '', '1009'),
(896, '', '', '', '908', 'Chapter 5 -  INTRODUCTION TO EUCLID’S GEOMETRY', 'This chapter discusses Euclid’s approach to geometry and tries to link it with present-day geometry. Introduction to Euclid’s Geometry provides the students with a method of defining common geometrical shapes and terms.', 'pdf_files/9th_maths_C5.pdf', '', '1009'),
(897, '', '', '', '908', 'Chapter 6 - LINES AND ANGLES', '1.If a ray stands on a line, then the sum of the two adjacent angles so formed is 180° and the converse. 2.If two lines intersect, the vertically opposite angles are equal. 3.Results on corresponding angles, alternate angles, and interior angles when a transversal intersects two parallel lines. 4.Lines, which are parallel to a given line, are parallel. 5.The sum of the angles of a triangle is 180°. 6.If a side of a triangle is produced, the exterior angle so formed is equal to the sum of the two interior opposite angles.', 'pdf_files/9th_maths_C6.pdf', '', '1009');
INSERT INTO `learning_stdclass` (`id`, `subjects`, `intro`, `description`, `subid`, `chaptername`, `chapterdis`, `pdf`, `classes`, `classid`) VALUES
(898, '', '', '', '908', 'Chapter 7 - TRIANGLES', 'In this chapter, students will study in detail the congruence of triangles, rules of congruence, some properties of triangles and the inequalities in triangles. The chapter has a total of 5 exercises, in which the students are asked “to-prove” as well as application-level problems. With this chapter, students will also learn to prove the properties that they learnt in earlier classes.', 'pdf_files/9th_maths_C7.pdf', '', '1009'),
(899, '', '', '', '908', 'Chapter 8 - QUADRILATERALS', 'A figure obtained by joining four points in order is called a quadrilateral. This chapter takes the students to the depth of the topics of Quadrilaterals. The angle sum property of a quadrilateral, types of quadrilaterals, properties of a parallelogram, and the mid-point theorem are explained in this chapter.', 'pdf_files/9th_maths_C8.pdf', '', '1009'),
(900, '', '', '', '908', 'Chapter 9 - CIRCLES', 'A circle can be defined as a collection of all the points in a plane at a fixed distance from a fixed point in the plane. Topics like Angle Subtended by a Chord at a Point, Equal Chords and their respective distances from the Centre, the Angle Subtended by an Arc of a Circle, Cyclic Quadrilaterals and other terms related to circles are covered in this chapter. A total of twelve theorems are present in this chapter, learning which the students will get a clearer idea of the concepts taught.', 'pdf_files/9th_maths_C9.pdf', '', '1009'),
(901, '', '', '', '908', 'Chapter 10 - HERON’S FORMULA', 'The chapter discusses Heron’s formula, which can be used to calculate the area of a triangle when the length of all three sides is given. In this method, there is no need to calculate the angles or other distances in the triangle. This formula can be used not only to find the area of triangles but also to find the areas of quadrilaterals and other polygons by dividing them into triangles.', 'pdf_files/9th_maths_C10.pdf', '', '1009'),
(902, '', '', '', '908', 'Chapter 11 - SURFACE AREAS AND VOLUMES', 'In this chapter, students shall learn to find the surface areas and volumes of cuboids and cylinders in detail and broaden the study to some other solids, such as cones and spheres. This chapter is just an extended version of the chapter mensuration, in which the students learnt about the surface areas and volumes in earlier classes. ', 'pdf_files/9th_maths_C11.pdf', '', '1009'),
(903, '', '', '', '908', 'Chapter 12 - STATISTICS', 'The branch of Mathematics in which the extraction of meaningful information is studied is known as Statistics. It can also be defined as the collection of data on different aspects of the life of people useful to the State. The chapter teaches about the different presentations of the data, including the frequency distribution as well. The chapter also helps the students learn the graphical representation of data using different graphs such as Bar graphs, Histograms, Frequency polygons, etc. ', 'pdf_files/9th_maths_C12.pdf', '', '1009'),
(904, '', '', '', '303', 'अध्याय 9-अक्ल बड़ी या भैंस ', 'अक्ल बड़ी या भैंस\" कहानी गौरीशांकर और उसके मेंदक रामलाल के बीच होती है। गौरीशांकर एक बुखिमान बकसान है जो बकसानी के क्षेत् में अपनी बुखि और मेहनत से बनरांतर उन्नबत करता है।', 'pdf_files/chapter9_ffCI35U.pdf ', '', '1003'),
(905, '', '', '', '303', 'अध्याय 10-क्योंजीमल और कैसे -कैसलिया ', 'क् ोांजीमल और कैसेकैसबलया\" एक बहांदी कहानी है जो सुनदरलाल शमाच द्व ारा बलखी गई है। यह कहानी एक माउांिेबनयसच कॉलेज की िात्ा कैसबलया और गरीब लड़के क् ोांजीमल के बीच की अनूठी दोस्ती को दशाचती है। ', 'pdf_files/chapter10_vaYZcHs.pdf', '', '1003'),
(906, '', '', '', '303', 'अध्याय 11-मीरा बहन और बाघ', '\"मीरा बहन और बाघ\" कहानी में मीरा बहन की सहानुभूबत और वीरता के साथ एक बाघ की मदद करने की कहानी है। मीरा बहन ने जांगल में एक फांसे हु ए बाघ को खोजा और उसकी मदद की.', 'pdf_files/chapter11_Ukolos7.pdf          ', '', '1003'),
(907, '', '', '', '303', 'अध्याय 12-जब मुझको सॉप ने काटा', '\"जब मुझको सॉप ने कािा\" कहानी मुख्य रू प से उस घिना के चारोां ओर घूमती है जब पात्क नामक व्य खक्त को एक साबुन के बारे में हाबनकारक घिना में आहत बकया जाता है। इस साबुन को \'सोप\' कहा जाता है। सोप को अहांकारी और असांवेदनशील तरीके से दशाचया गया है, जो पात्क को कािता है और उसे भावनात्मक तौर पर पीबड़त करता है। ', 'pdf_files/chapter12_uh2QplW.pdf ', '', '1003'),
(908, '', '', '', '303', 'अध्याय 13-टमिक र्मज़ा ', 'बबिुल! \"बमचच का मजा\" एक कहानी है जो दोस्तोां — गोपाल, राजू और श्य ाम के बीच की बमत्ता की बात करती है। गोपाल, एक उत्साही और मददगार लड़का, अपने साबथयोां के साथ मजबूत दोस्ती का आनांद लेता है।', 'pdf_files/chapter13_DndXqE7.pdf ', '', '1003'),
(909, '', '', '', '303', 'अध्याय 14-सबसे अच्छा पेड़     ', '\"सबसे अच्छा पेड़\" का बवचार बमत्ता , सहयोग और प्र कृबत के महत्त्व पर बनभचर करता है। यह एक कहानी है बजसमें बच्े एक पेड़ से बमलते हैं, जो सहयोग और समथचन का प्र तीक है। ब', 'pdf_files/chapter14_PjHUl8l.pdf', '', '1003'),
(910, 'Mathematics', 'Introduction', 'They get to learn about the Area of different objects, multiplication and division methods, tenths and hundredths, ways to make charts, identifying the common figure, etc. They will also be familiarized with the topics of counting, mapping, weight, volume, factors and multiples.', '504', 'Chapter 1 - The Fish Tale', ' The Fish Tale chapter deals with simple questions that involve using multiplication rules. ', 'pdf_files/5th_Maths_C1.pdf', '', '1005'),
(911, '', '', '', '504', 'Chapter 2 - Shapes and Angles', 'This chapter covers the different shapes and angles in an interactive manner. In this, the students will be learning using interesting pictures and videos, and 3D models. It also covers calculating the angle between the hands in the clock. Other questions will include the angle formed between a thigh and an abdomen, angle the clock’s hands make at a specific time. ', 'pdf_files/5th_Maths_C2.pdf', '', '1005'),
(912, '', '', '', '504', 'Chapter 3 - How Many Squares', 'In this chapter, you will have references about rectangles including which rectangle has the longest perimeter, how many rectangles can be created with the given dots, etc.', 'pdf_files/5th_Maths_C4.pdf', '', '1005'),
(913, '', '', '', '504', 'Chapter 4 - Parts and Whole', 'This chapter is about fractions. You will have to solve different questions based on parts and whole and using different shapes for area models.   ', 'pdf_files/5th_Maths_C4_jVnVRBy.pdf', '', '1005'),
(914, '', '', '', '504', 'Chapter 5 - Does it Look the Same?', 'This chapter has been designed in a way that students are able to understand the different shapes and patterns. The solutions provided by Vedantu will provide them with a step-by-step guide as well as tricks and tips that make it easier for them to learn. There are several concepts covered in this chapter including the different types of patterns and how you can identify them, changing the position of the alphabet figures, comparing them, learning shapes of different patterns, etc. ', 'pdf_files/5th_Maths_C5.pdf', '', '1005'),
(915, '', '', '', '504', 'Chapter 6 - Be My Multiple, I’ll be Your Factor', 'This chapter involves students learning about skipping and jumping 2 or 3 numbers and creating a series using it. This includes figuring out numbers that can be divided by 2, 3, and 4. They will learn about the multiples of a number in the sequence along with the smallest common factors and other such concepts.', 'pdf_files/5th_Maths_C6.pdf', '', '1005'),
(916, '', '', '', '504', 'Chapter 7 - Can you See the Pattern', 'Ability to see the pattern and understand the different types of shapes and patterns, examples like fill the square using numbers from 47 to 55 while ensuring that each line’s total is not more than 120.', 'pdf_files/5th_Maths_C7.pdf', '', '1005'),
(917, '', '', '', '504', 'Chapter 8 - Mapping Your Way', 'Distance, area, shapes, etc. in the context of maps. This will include questions based on landmarks, rivers, buildings, etc.   ', 'pdf_files/5th_Maths_C8.pdf', '', '1005'),
(918, '', '', '', '504', 'Chapter 9 - Boxes and Sketches', 'Animated videos, models, and 3D images. This way, it ensures that students will be able to easily understand the concepts. Also, the book contains assignments as well as worksheets for practice. There are several examples in this chapter that students can solve for practice. The main concepts discussed in this chapter include using an open box’s figure to find the boxes’ shape. Students will have to figure out which figure they can use for forming a box.', 'pdf_files/5th_Maths_C9.pdf', '', '1005'),
(919, '', '', '', '504', 'Chapter 10 - Tenths and Hundredths', 'They will find questions on how to measure the length of an animals’ tail.What is the length of a 100 rupee note, which is the longest line among the given to, etc. It will help them get a better understanding of this chapter.', 'pdf_files/5th_Maths_C10.pdf', '', '1005'),
(920, '', '', '', '504', 'Chapter 11 - Area and its Boundary', 'calculate the areas of rectangles and squares, the difference between length and area, and how they can measure these. Students will be using the basic formulas for finding the problems as well as their solutions. The chapter also discusses some other techniques such as multiplying and counting tiles. Other examples that are discussed in this chapter include perimeter, finding the area of rectangles, etc.', 'pdf_files/5th_Maths_C11.pdf', '', '1005'),
(921, '', '', '', '504', 'Chapter 12 -  Smart Charts', 'When data is expressed visually through diagrams and charts, it will help you understand it better, you will learn how to represent data through tables, deduce conclusions, and solve different problems.  ', 'pdf_files/5th_Maths_C12.pdf', '', '1005'),
(922, '', '', '', '504', 'Chapter 13 - Ways to Divide and Multiply', ' This chapter mainly deals with the different concepts of multiplications and division. From the perspective of academics and non-academics, these are very important concepts. Also, the questions provided in this chapter are related to real-life scenarios.', 'pdf_files/5th_Maths_C13.pdf', '', '1005'),
(923, '', '', '', '504', ' Chapter 14 - How Big How Heavy', ' This chapter covers the different units and methods that can be used for measurements and weighing. It includes different questions related to areas and volumes.', 'pdf_files/5th_Maths_C14.pdf', '', '1005'),
(924, 'Political Science', 'Introduction', 'Human beings are unique in two respects: they possess reason and\r\nthe ability to reflect on their actions. They also have the capacity to\r\nuse language and communicate with each other. Unlike other species,\r\nthey can express their innermost thoughts and desires; they can\r\nshare their ideas and discuss what they consider to be good and\r\ndesirable. Political theory has its roots in the twin aspects of the\r\nhuman self. It analyses certain basic questions such as how should\r\nsociety be organised? Why do we need government? What is the best\r\nform of government? Does law limit our freedom? What does the\r\nstate owe its citizens? What do we owe each other as citizens?\r\nPolitical theory examines questions of this kind and\r\nsystematically thinks about the values that inform political life —\r\nvalues such as freedom, equality and justice. It explains the meaning\r\nand significance of these and other related concepts. It clarifies the\r\nexisting definitions of these concepts by focusing on some major\r\npolitical thinkers of the past and present.', '1118', 'Chapter 1 - Political Theory: An Introduction', '', 'pdf_files/11th_PoliticalSci_C1.pdf', '', '1011'),
(925, '', '', '', '1118', 'Chapter 2 - Freedom', '', 'pdf_files/11th_PoliticalSci_C2.pdf', '', '1011'),
(926, '', '', '', '1118', 'Chapter 3 - Equality', '', 'pdf_files/11th_PoliticalSci_C3.pdf', '', '1011'),
(927, '', '', '', '1118', 'Chapter 4 - Social Justice', '', 'pdf_files/11th_PoliticalSci_C4.pdf', '', '1011'),
(928, '', '', '', '1118', 'Chapter 5 - Rights', '', 'pdf_files/11th_PoliticalSci_C5.pdf', '', '1011'),
(929, '', '', '', '1118', 'Chapter 6 - Citizenship', '', 'pdf_files/11th_PoliticalSci_C6.pdf', '', '1011'),
(930, '', '', '', '1118', 'Chapter 7 - Nationalism', '', 'pdf_files/11th_PoliticalSci_C7.pdf', '', '1011'),
(931, '', '', '', '1118', 'Chapter 8 - Secularism', '', 'pdf_files/11th_PoliticalSci_C8.pdf', '', '1011'),
(932, '', '', '', '1118', 'Chapter 9 - Peace', '', 'pdf_files/11th_PoliticalSci_C9.pdf', '', '1011'),
(933, '', '', '', '1118', 'Chapter 10 - Development', '', 'pdf_files/11th_PoliticalSci_C10.pdf', '', '1011'),
(934, 'Physics II', 'Introduction', 'Physics is an important study material which helps students to master the subject. Physics is a crucial subject from the exam perspective, which is difficult to master as it deals with various properties of nature and matter. It forms a strong base for students who wish to pursue higher levels of education in the field of Science. The solutions are planned out to aid the Class 11 students in achieving good marks in the exam. The expert teachers answer each and every question in an elaborate manner so that students do not miss any concept which is important for the exam.', '1119', 'Chapter 1 - MECHANICAL PROPERTIES OF SOLIDS', '', 'pdf_files/11th_Phy2_C1.pdf', '', '1011'),
(935, '', '', '', '1119', 'Chapter 2 - MECHANICAL PROPERTIES OF FLUIDS', '', 'pdf_files/11th_Phy2_C2.pdf', '', '1011'),
(936, '', '', '', '1119', 'Chapter 3 - THERMAL PROPERTIES OF MATTER', '', 'pdf_files/11th_Phy2_C3.pdf', '', '1011'),
(937, '', '', '', '1119', 'Chapter 4 - THERMODYNAMICS', '', 'pdf_files/11th_Phy2_C4.pdf', '', '1011'),
(938, '', '', '', '1119', 'Chapter 5 - KINETIC THEORY', '', 'pdf_files/11th_Phy2_C5.pdf', '', '1011'),
(939, 'Sanskrit', 'Introduction', '', '1217', 'Chapter 1 - विद्ययाऽमृतमश्नुते', '', 'pdf_files/12th_Sanskrit_C1.pdf', '', '1012'),
(940, '', '', '', '1217', 'Chapter 2 - रघुकौत्ससंवादः', '', 'pdf_files/12th_Sanskrit_C2.pdf', '', '1012'),
(941, '', '', '', '1217', 'Chapter 3 - बालकौतुकम्', '', 'pdf_files/12th_Sanskrit_C3.pdf', '', '1012'),
(942, '', '', '', '1217', 'Chapter 4 - कर्मगौरवम्', '', 'pdf_files/12th_Sanskrit_C4.pdf', '', '1012'),
(943, '', '', '', '1217', 'Chapter 5 - शुकनासोपदेशः', '', 'pdf_files/12th_Sanskrit_C5.pdf', '', '1012'),
(944, '', '', '', '1217', 'Chapter 6 - सूक्तिसुधा', '', 'pdf_files/12th_Sanskrit_C6.pdf', '', '1012'),
(945, '', '', '', '1217', 'Chapter 7 -विक्रमस्यौदार्यम्', '', 'pdf_files/12th_Sanskrit_C7.pdf', '', '1012'),
(946, '', '', '', '1217', 'Chapter 8 - कार्यं वा साधयेयम् देहं वा पातयेयम्', '', 'pdf_files/12th_Sanskrit_C8.pdf', '', '1012'),
(947, '', '', '', '1217', 'Chapter 9 - दीनबन्धुः श्रीनायारः', '', 'pdf_files/12th_Sanskrit_C9.pdf', '', '1012'),
(948, 'History - III', 'Introduction', 'Class 12 History Themes in India Part 3 deals with the modern history of India. It discusses the period between from the end of the Mughal dynasty and the beginning of colonial rule to India gaining independence.', '1218', 'Chapter 1 -  Colonialism and countryside', 'The first chapter from Class 12 History Part three talks about the effect of the laws and rules introduced by English East India Company on individuals from various strata of society like zamindars, peasants, tribes like Santhals, settled and shifting agriculturists etc.', 'pdf_files/12th_His_C1_WFhRdYh.pdf', '', '1012'),
(949, '', '', '', '1218', 'Chapter 2 - Rebels and the Raj', 'Most students are already aware of the factors that lead to sepoy mutiny of 1857. In this chapter, they will be analysing the patterns of the revolution. Consequently, they will concern themselves with questions like who were the leaders, how were the critical decisions made, who made them, and how were they communicated among the sepoys all over the country.', 'pdf_files/12th_His_C2_EMhcBll.pdf', '', '1012'),
(950, '', '', '', '1218', 'Chapter 3 - Mahatma Gandhi and the nationalist movement', 'One Man is synonymous with India’s freedom struggle – Mahatma Gandhi. This chapter will focus on his role in India’s nationalist movement.Readers will learn about Gandhi\'s non-cooperation movement or satyagraha against the Rowlatt act, which made him a national leader. He also couples it with the Khilafat movement to unite two major religions.', 'pdf_files/12th_His_C3_smFSMFe.pdf', '', '1012'),
(951, '', '', '', '1218', 'Chapter 4 - Framing the Constitution', 'Beginning of a New Era- The final chapter from CBSE Class 12 history book Part 3 is about the framing of the Indian Constitution on 26th January 1950, which marked the beginning of a new era. The years preceding the framing of the Constitution were tumultuous, filled with riots, massacres, upsurges, protests, and so on, which led our diverse country to be scarred and deeply divided.', 'pdf_files/12th_His_C4_OaTc97O.pdf', '', '1012'),
(952, 'Social History', 'Introduction', '', '707', 'CHAPTER-1 Introduction: TRACING CHANGES TO A THOUSAND YEARS', '', 'pdf_files/7th_History_C2.pdf', '', '1007'),
(953, '', '', '', '707', 'Chapter-2 Kings and Kingdoms', '', 'pdf_files/7th_History_C3.pdf', '', '1007'),
(954, '', '', '', '707', 'Chapter-3 Delhi: 12th to 15th Century', '', 'pdf_files/7th_History_C4.pdf', '', '1007'),
(955, '', '', '', '707', 'Chapter- 4 The Mughals (16th to 17th Century)', '', 'pdf_files/7th_History_C1.pdf', '', '1007'),
(956, '', '', '', '707', 'Chapter 5 - Tribes, Nomads and Settled Communities', '', 'pdf_files/7th_History_C5.pdf', '', '1007'),
(957, '', '', '', '707', 'Chapter 6 - Devotional Paths to the Divine', '', 'pdf_files/7th_History_C6.pdf', '', '1007'),
(958, '', '', '', '707', 'Chapter 7 - The Making of Regional Cultures', '', 'pdf_files/7th_History_C7.pdf', '', '1007'),
(959, '', '', '', '707', 'Chapter 8 - Eighteenth-Century Political Formations', '', 'pdf_files/7th_History_C8.pdf', '', '1007'),
(960, 'English', 'Solutions for English', 'Most of the school that follows the NCERT curriculum for grade 1 also follows the two languages in study program. In many states Hindi is used as a language of communication, to build familiarity with the words, meaning, and sentences mainly through spoken input in a meaningful, age-appropriate manner. The other objective is to help students build a working proficiency in the language by listening and understanding and speaking words, phrases, formulaic expressions. The practices of reciting poems, rhymes, revision of the Hindi worksheets improve the writing skill as well as spelling. Compared to English, Hindi is much more difficult to write, read, and comprehend.', '102', 'chapter 1-Clap,Clap,Clap', 'I emailed a friend, and received my most satisfactory answer thus far:\r\n\r\n\"clap clap clapclap clap\" is the most condensed version of mi-mi-ma structure (\'minor-minor-major\', where minor = short phrase and major = long phrase). In otherwords, it is the shortest way to create the ideal structure in rhythm.', 'pdf_files/1-English-Raindrops-NCERT-Chapter-1.pdf', '', '1001'),
(961, '', '', '', '102', 'chapter 2-One,Two', '', 'pdf_files/1-English-Raindrops-NCERT-Chapter-2.pdf', '', '1001'),
(962, '', '', '', '102', 'chapter 3- The Little Bird', '', 'pdf_files/1-English-Raindrops-NCERT-Chapter-3.pdf', '', '1001'),
(963, '', '', '', '102', 'chapter 4- Bubbles', '', 'pdf_files/1-English-Raindrops-NCERT-Chapter-4.pdf', '', '1001'),
(964, '', '', '', '102', 'chapter 5- Chhotu', '', 'pdf_files/1-English-Raindrops-NCERT-Chapter-5.pdf', '', '1001'),
(965, '', '', '', '102', 'chapter 6- Animals And Birds', '', 'pdf_files/1-English-Raindrops-NCERT-Chapter-6.pdf', '', '1001'),
(966, '', '', '', '102', 'chapter 7- Fruits And Vegetables', '', 'pdf_files/1-English-Raindrops-NCERT-Chapter-7.pdf', '', '1001'),
(967, '', '', '', '102', 'chapter 8- Who Am I', '', 'pdf_files/1-English-Raindrops-NCERT-Chapter-8.pdf', '', '1001'),
(968, '', '', '', '102', 'chapter 9- Hide And Seek', '', 'pdf_files/1-English-Raindrops-NCERT-Chapter-9.pdf', '', '1001'),
(969, 'Maths', 'Solutions for Maths', 'Introduce students to basic mathematical concepts such as numbers, shapes, patterns, and simple addition and subtraction. The well-structured lessons and activities in these books help children develop their logical thinking and problem-solving abilities from an early age.', '103', 'Chapter 1- Shapes and Space', '', 'pdf_files/1-Maths-NCERT-Chapter-1.pdf', '', '1001'),
(970, '', '', '', '103', 'Chapter 2- Numbers from One to Nine', '', 'pdf_files/1-Maths-NCERT-Chapter-2.pdf', '', '1001'),
(971, '', '', '', '103', 'Chapter 3- Addition', '', 'pdf_files/1-Maths-NCERT-Chapter-3.pdf', '', '1001'),
(972, '', '', '', '103', 'Chapter 4- Subtraction', '', 'pdf_files/1-Maths-NCERT-Chapter-4.pdf', '', '1001'),
(973, '', '', '', '103', 'Chapter 5- Numbers from Ten to Twenty ', '', 'pdf_files/1-Maths-NCERT-Chapter-5.pdf', '', '1001'),
(974, '', '', '', '103', 'Chapter 6- Time ', '', 'pdf_files/1-Maths-NCERT-Chapter-6.pdf', '', '1001'),
(975, '', '', '', '103', 'Chapter 7- Measurement', '', 'pdf_files/1-Maths-NCERT-Chapter-7.pdf', '', '1001'),
(976, 'Mathematics', '', '', '104', 'All Chapters', '', 'pdf_files/MATHEMATICS12.pdf', '', '1012');

-- --------------------------------------------------------

--
-- Table structure for table `learning_stdclass1`
--

CREATE TABLE `learning_stdclass1` (
  `id` bigint(20) NOT NULL,
  `subjects` varchar(100) NOT NULL,
  `intro` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `subid` int(11) NOT NULL,
  `chaptername` varchar(100) NOT NULL,
  `chapterdis` longtext NOT NULL,
  `pdf` varchar(100) NOT NULL,
  `classes` varchar(100) NOT NULL,
  `classid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_std_result`
--

CREATE TABLE `learning_std_result` (
  `id` bigint(20) NOT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `classes_id` bigint(20) DEFAULT NULL,
  `questionstd` varchar(100) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `subject_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_std_result`
--

INSERT INTO `learning_std_result` (`id`, `answer`, `classes_id`, `questionstd`, `student_id`, `subject_id_id`) VALUES
(1, NULL, 1, 'what is html', 6, 10),
(2, NULL, 1, 'what is html ', 6, 10),
(3, NULL, 1, 'what is html', 6, 10),
(4, NULL, 1, 'what is html ', 6, 10),
(5, 'werty', 1, 'what is html', 6, 10),
(6, '12', 1, 'what is html ', 6, 10),
(7, NULL, 7, 'what is java', 7, 7),
(8, NULL, 7, 'what is java', 7, 7),
(9, NULL, 7, 'what is java', 2, 7),
(10, NULL, 1, 'what is html', 6, 10),
(11, NULL, 1, 'what is html ', 6, 10),
(12, NULL, 1, 'what is html', 6, 10),
(13, NULL, 1, 'what is html ', 6, 10),
(14, NULL, 1, 'what is html', 6, 10),
(15, NULL, 1, 'what is html ', 6, 10),
(16, 'werty', 1, 'what is html', 6, 10),
(17, '2e3', 1, 'what is html ', 6, 10),
(18, NULL, 7, 'what is java', 2, 7),
(19, NULL, 1, 'what is html', 6, 10),
(20, NULL, 1, 'what is html ', 6, 10),
(21, NULL, 1, '<p>what is django?</p>\r\n', 6, 10),
(22, NULL, 1, '<p>what is html</p>\r\n', 6, 10),
(23, NULL, 20, '<p>what is&nbsp; html ?</p>\r\n', 12, 16),
(24, NULL, 20, '<p>what is html?</p>\r\n', 12, 16),
(25, NULL, 20, '<p>what is&nbsp; html ?</p>\r\n', 12, 16),
(26, NULL, 20, '<p>what is html?</p>\r\n', 12, 16);

-- --------------------------------------------------------

--
-- Table structure for table `learning_studentnav`
--

CREATE TABLE `learning_studentnav` (
  `id` bigint(20) NOT NULL,
  `nav_name` varchar(200) NOT NULL,
  `nav_url` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `parent_category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_studentnav`
--

INSERT INTO `learning_studentnav` (`id`, `nav_name`, `nav_url`, `icon`, `order`, `parent_category_id`) VALUES
(1, 'Dashboard', '/student_sidebar/', 'fa fa-list', 0, NULL),
(2, 'Attendance', '/alldata3/', 'fa fa-address-book', 1, NULL),
(3, 'Assessment', '', 'fa fa-book', 2, NULL),
(4, 'Notification', '/notification1', 'fa fa-bell', 3, NULL),
(5, 'Calendar', '', 'fa fa-calendar', 4, NULL),
(6, 'View Result', '', 'fa fa-square', 5, NULL),
(7, 'Apply Leave', '/student_applyforleave', 'fa fa-paper-plane', 6, NULL),
(8, 'Inbox Message', '/student_showmessage', 'fa fa-inbox', 7, NULL),
(10, 'Test', '/general_instructions/', 'fa fa-inbox', 0, NULL),
(11, 'fee_pay', '/studentfeepay_form/', 'fa fa-money-bill', 0, NULL),
(12, 'Meetings', '/student_meetings/', 'fa fa-video', 0, NULL),
(13, 'Apply Permission', '/student_apply_for_late_login_permission', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `learning_subject`
--

CREATE TABLE `learning_subject` (
  `id` bigint(20) NOT NULL,
  `name` varchar(120) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `school_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_subject`
--

INSERT INTO `learning_subject` (`id`, `name`, `updated_at`, `created_at`, `school_id_id`) VALUES
(3, 'SCIENCE', '2024-07-29 04:56:44.804483', '2024-01-10 11:23:29.631586', NULL),
(4, 'SOCIAL', '2024-07-29 04:56:38.809544', '2024-01-10 11:23:36.546844', NULL),
(6, 'HINDI', '2024-07-29 04:57:03.087920', '2024-02-21 14:50:46.912579', 6),
(7, 'English', '2024-02-21 14:50:52.422263', '2024-02-21 14:50:52.422263', 6),
(11, 'BUSINESSECONOMICS', '2024-07-29 04:57:25.875468', '2024-03-11 16:32:14.784537', 6),
(12, 'PYHYSICS', '2024-07-29 04:57:44.018659', '2024-03-11 16:33:46.914285', 6),
(13, 'ADC', '2024-07-29 04:57:57.954552', '2024-03-20 11:19:20.567195', 11),
(14, 'GEOGRAPHY', '2024-07-29 04:58:15.615622', '2024-03-20 11:19:23.383131', 11),
(15, 'HISTORY', '2024-07-29 04:56:26.818797', '2024-03-20 11:19:28.278800', 11),
(16, 'ELECTOMAGNETIC', '2024-07-29 04:56:16.602854', '2024-04-16 11:31:31.390890', 15),
(29, 'EDC', '2024-07-29 04:55:49.705079', '2024-07-24 04:12:33.724562', 14),
(30, 'PSYCOLOGY', '2024-07-29 04:55:14.838534', '2024-07-24 05:30:13.986517', 14),
(31, 'ECA', '2024-07-29 04:55:40.104131', '2024-07-29 04:20:14.388073', 14),
(33, 'BEE', '2024-07-29 04:55:25.894925', '2024-07-29 04:53:26.822673', 17),
(34, 'Mathematics', '2024-07-29 12:39:56.973560', '2024-07-29 12:39:56.973560', 25),
(35, 'Hindi', '2024-07-29 12:40:03.457825', '2024-07-29 12:40:03.457825', 25),
(36, 'Science', '2024-07-29 12:40:11.566450', '2024-07-29 12:40:11.566450', 25),
(37, 'History', '2024-07-29 12:40:21.544171', '2024-07-29 12:40:21.544171', 25),
(38, 'English', '2024-07-29 12:40:34.031197', '2024-07-29 12:40:34.032196', 25),
(39, 'Music', '2024-07-29 12:40:39.587034', '2024-07-29 12:40:39.587034', 25),
(40, 'Drawing', '2024-07-29 12:40:46.082556', '2024-07-29 12:40:46.082556', 25),
(41, 'PT', '2024-07-29 12:40:50.461205', '2024-07-29 12:40:50.461205', 25),
(42, 'Geography', '2024-07-29 12:41:23.296757', '2024-07-29 12:41:23.296757', 25),
(43, 'Social Science', '2024-07-29 12:41:40.375049', '2024-07-29 12:41:40.375049', 25),
(44, 'Maths', '2024-07-29 15:59:57.253230', '2024-07-29 15:59:57.253230', 30),
(45, 'Science', '2024-07-29 16:00:01.606013', '2024-07-29 16:00:01.606013', 30),
(46, 'history', '2024-07-29 16:00:10.470030', '2024-07-29 16:00:10.470030', 30),
(47, 'Geography', '2024-07-29 16:00:26.230417', '2024-07-29 16:00:26.231415', 30),
(48, 'PT', '2024-07-29 16:00:41.212710', '2024-07-29 16:00:41.212710', 30),
(49, 'English', '2024-07-29 16:00:47.742210', '2024-07-29 16:00:47.742210', 30),
(50, 'Drawing', '2024-07-29 16:00:59.892499', '2024-07-29 16:00:59.892499', 30),
(51, 'Music', '2024-07-29 16:01:09.801024', '2024-07-29 16:01:09.801024', 30),
(52, 'Social Science', '2024-07-29 16:01:17.552076', '2024-07-29 16:01:17.553065', 30),
(53, 'Hindi', '2024-07-29 16:02:48.793967', '2024-07-29 16:02:48.793967', 30),
(54, 'Music', '2024-07-29 16:47:48.164396', '2024-07-29 16:47:48.164396', 31),
(55, 'Science', '2024-07-29 16:47:53.704482', '2024-07-29 16:47:53.704482', 31),
(56, 'history', '2024-07-29 16:47:59.203003', '2024-07-29 16:47:59.203003', 31),
(57, 'Hindi', '2024-07-29 16:48:17.930888', '2024-07-29 16:48:17.930888', 31),
(58, 'Science', '2024-07-29 16:48:28.352249', '2024-07-29 16:48:28.352249', 31),
(59, 'Drawing', '2024-07-29 16:48:36.111244', '2024-07-29 16:48:36.112255', 31),
(60, 'MATHEMATICS', '2024-07-29 16:48:47.095807', '2024-07-29 16:48:47.095807', 31),
(61, 'PT', '2024-07-29 16:49:05.555734', '2024-07-29 16:49:05.555734', 31),
(62, 'Social Science', '2024-07-29 16:49:49.189397', '2024-07-29 16:49:49.189397', 31),
(63, 'Geography', '2024-07-29 16:49:59.398986', '2024-07-29 16:49:59.398986', 31),
(64, 'Hindi', '2024-07-30 03:52:36.990906', '2024-07-30 03:52:36.990906', 31),
(65, 'English', '2024-07-30 03:52:48.603895', '2024-07-30 03:52:48.603895', 31),
(66, 'Mathematics', '2024-07-30 03:52:56.972148', '2024-07-30 03:52:56.972148', 31),
(67, 'History', '2024-07-30 03:53:03.206408', '2024-07-30 03:53:03.206408', 31),
(68, 'Science', '2024-07-30 03:53:10.645532', '2024-07-30 03:53:10.645532', 31),
(69, 'Social Science', '2024-07-30 03:53:19.829026', '2024-07-30 03:53:19.829026', 31),
(70, 'Drawing', '2024-07-30 03:53:27.013109', '2024-07-30 03:53:27.013109', 31),
(71, 'Geography', '2024-07-30 03:53:34.253562', '2024-07-30 03:53:34.253562', 31),
(72, 'Music', '2024-07-30 03:53:39.421701', '2024-07-30 03:53:39.421701', 31),
(73, 'PT', '2024-07-30 03:53:43.732787', '2024-07-30 03:53:43.732787', 31),
(74, 'Hindi', '2024-07-30 04:17:58.063408', '2024-07-30 04:17:58.063408', 32),
(75, 'History', '2024-07-30 04:18:04.648583', '2024-07-30 04:18:04.648583', 32),
(76, 'Drawing', '2024-07-30 04:18:09.256954', '2024-07-30 04:18:09.257137', 32),
(77, 'English', '2024-07-30 04:18:14.663668', '2024-07-30 04:18:14.663668', 32),
(78, 'Mathematics', '2024-07-30 04:18:20.298186', '2024-07-30 04:18:20.298186', 32),
(79, 'Music', '2024-07-30 04:18:25.401431', '2024-07-30 04:18:25.401431', 32),
(80, 'PT', '2024-07-30 04:18:31.258267', '2024-07-30 04:18:31.258267', 32),
(81, 'Science', '2024-07-30 04:18:37.222692', '2024-07-30 04:18:37.222692', 32),
(82, 'Social Science', '2024-07-30 04:18:43.218780', '2024-07-30 04:18:43.218780', 32),
(83, 'Geography', '2024-07-30 04:18:49.204628', '2024-07-30 04:18:49.204628', 32),
(84, 'Hindi', '2024-07-30 04:39:01.861647', '2024-07-30 04:39:01.861647', 26),
(85, 'History', '2024-07-30 04:39:09.767946', '2024-07-30 04:39:09.767946', 26),
(86, 'English', '2024-07-30 04:39:15.600698', '2024-07-30 04:39:15.600698', 26),
(87, 'Mathematics', '2024-07-30 04:39:21.265969', '2024-07-30 04:39:21.265969', 26),
(88, 'Music', '2024-07-30 04:39:26.508981', '2024-07-30 04:39:26.508981', 26),
(89, 'Drawing', '2024-07-30 04:39:32.890463', '2024-07-30 04:39:32.890463', 26),
(90, 'Science', '2024-07-30 04:39:38.307814', '2024-07-30 04:39:38.307814', 26),
(91, 'Social Science', '2024-07-30 04:39:43.751879', '2024-07-30 04:39:43.751879', 26),
(92, 'PT', '2024-07-30 04:39:50.289496', '2024-07-30 04:39:50.289496', 26),
(93, 'Geography', '2024-07-30 04:39:57.369679', '2024-07-30 04:39:57.369679', 26),
(94, '', '2024-07-30 04:39:58.834768', '2024-07-30 04:39:58.834768', 26),
(95, 'English', '2024-07-30 05:02:10.490783', '2024-07-30 05:02:10.490783', 27),
(96, 'Hindi', '2024-07-30 05:02:14.720045', '2024-07-30 05:02:14.720045', 27),
(97, 'History', '2024-07-30 05:02:19.072889', '2024-07-30 05:02:19.072889', 27),
(98, 'Geography', '2024-07-30 05:02:23.286226', '2024-07-30 05:02:23.286226', 27),
(99, 'Science', '2024-07-30 05:02:28.656500', '2024-07-30 05:02:28.656500', 27),
(100, 'Social Science', '2024-07-30 05:02:33.866540', '2024-07-30 05:02:33.867568', 27),
(101, 'Mathematics', '2024-07-30 05:02:38.105270', '2024-07-30 05:02:38.106305', 27),
(102, 'Music', '2024-07-30 05:02:43.175269', '2024-07-30 05:02:43.175269', 27),
(103, 'Drawing', '2024-07-30 05:02:48.741248', '2024-07-30 05:02:48.741248', 27),
(104, 'P', '2024-07-30 05:02:52.322180', '2024-07-30 05:02:52.322180', 27),
(105, 'PT', '2024-07-30 05:03:07.767461', '2024-07-30 05:03:07.767461', 27),
(106, 'Hindi', '2024-07-30 05:29:30.626408', '2024-07-30 05:29:30.626408', 28),
(107, 'History', '2024-07-30 05:29:37.090088', '2024-07-30 05:29:37.090088', 28),
(108, 'Mathematics', '2024-07-30 05:29:42.197420', '2024-07-30 05:29:42.197420', 28),
(109, 'Music', '2024-07-30 05:29:48.400758', '2024-07-30 05:29:48.400758', 28),
(110, 'English', '2024-07-30 05:29:53.780877', '2024-07-30 05:29:53.780877', 28),
(111, 'Geography', '2024-07-30 05:29:59.566219', '2024-07-30 05:29:59.566219', 28),
(112, 'Drawing', '2024-07-30 05:30:09.040956', '2024-07-30 05:30:09.040956', 28),
(113, 'Social Science', '2024-07-30 05:30:15.727965', '2024-07-30 05:30:15.727965', 28),
(114, 'Science', '2024-07-30 05:30:21.509620', '2024-07-30 05:30:21.509620', 28),
(115, 'PT', '2024-07-30 05:30:26.975990', '2024-07-30 05:30:26.975990', 28),
(116, 'Drawing', '2024-07-30 05:30:36.772005', '2024-07-30 05:30:36.772005', 28),
(117, 'Hindi', '2024-07-30 05:50:11.395721', '2024-07-30 05:50:11.395721', 29),
(118, 'History', '2024-07-30 05:50:17.407492', '2024-07-30 05:50:17.407492', 29),
(119, 'English', '2024-07-30 05:50:22.709048', '2024-07-30 05:50:22.709048', 29),
(120, 'Mathematics', '2024-07-30 05:50:30.665092', '2024-07-30 05:50:30.665472', 29),
(121, 'Music', '2024-07-30 05:50:35.649139', '2024-07-30 05:50:35.649139', 29),
(122, 'Geography', '2024-07-30 05:50:41.048248', '2024-07-30 05:50:41.048248', 29),
(123, 'PT', '2024-07-30 05:50:46.390494', '2024-07-30 05:50:46.390494', 29),
(124, 'Science', '2024-07-30 05:50:56.221486', '2024-07-30 05:50:56.221486', 29),
(125, 'Social Science', '2024-07-30 05:51:02.200257', '2024-07-30 05:51:02.200257', 29),
(126, 'Drawing', '2024-07-30 05:51:07.994685', '2024-07-30 05:51:07.994685', 29),
(127, 'English', '2024-07-30 05:51:16.327409', '2024-07-30 05:51:16.327409', 29),
(128, 'Hindi', '2024-07-30 06:08:08.130255', '2024-07-30 06:08:08.130255', 33),
(129, 'History', '2024-07-30 06:08:17.701707', '2024-07-30 06:08:17.701707', 33),
(130, 'Mathematics', '2024-07-30 06:08:34.775346', '2024-07-30 06:08:34.775346', 33),
(131, 'Music', '2024-07-30 06:08:39.858781', '2024-07-30 06:08:39.858781', 33),
(132, 'Drawing', '2024-07-30 06:08:44.226053', '2024-07-30 06:08:44.226053', 33),
(133, 'English', '2024-07-30 06:08:54.639730', '2024-07-30 06:08:54.639730', 33),
(134, 'Science', '2024-07-30 06:08:59.203728', '2024-07-30 06:08:59.203728', 33),
(135, 'Social Science', '2024-07-30 06:09:03.403954', '2024-07-30 06:09:03.403954', 33),
(136, 'PT', '2024-07-30 06:09:19.554371', '2024-07-30 06:09:19.554371', 33),
(137, 'Geography', '2024-07-30 06:09:25.783187', '2024-07-30 06:09:25.783187', 33),
(138, 'Mathematics', '2024-07-30 06:25:26.441999', '2024-07-30 06:25:26.441999', 34),
(139, 'Music', '2024-07-30 06:25:31.774062', '2024-07-30 06:25:31.774062', 34),
(140, 'Science', '2024-07-30 06:25:36.477644', '2024-07-30 06:25:36.478632', 34),
(141, 'Social Science', '2024-07-30 06:25:41.342459', '2024-07-30 06:25:41.342459', 34),
(142, 'English', '2024-07-30 06:25:46.177078', '2024-07-30 06:25:46.177078', 34),
(143, 'Hindi', '2024-07-30 06:25:52.836028', '2024-07-30 06:25:52.836028', 34),
(144, 'History', '2024-07-30 06:25:57.525640', '2024-07-30 06:25:57.525640', 34),
(145, 'Drawing', '2024-07-30 06:26:02.920641', '2024-07-30 06:26:02.920641', 34),
(146, 'Geography', '2024-07-30 06:26:10.879110', '2024-07-30 06:26:10.879110', 34),
(147, 'PT', '2024-07-30 06:26:17.029200', '2024-07-30 06:26:17.029200', 34),
(148, 'English', '2024-07-30 06:44:26.182429', '2024-07-30 06:44:26.182429', 35),
(149, 'Science', '2024-07-30 06:44:31.463678', '2024-07-30 06:44:31.463678', 35),
(150, 'Social Science', '2024-07-30 06:44:36.629164', '2024-07-30 06:44:36.629164', 35),
(151, 'Mathematics', '2024-07-30 06:44:40.899273', '2024-07-30 06:44:40.899273', 35),
(152, 'Music', '2024-07-30 06:44:44.817755', '2024-07-30 06:44:44.817755', 35),
(153, 'Hindi', '2024-07-30 06:44:50.449544', '2024-07-30 06:44:50.449544', 35),
(154, 'History', '2024-07-30 06:44:54.602913', '2024-07-30 06:44:54.602913', 35),
(155, 'Drawing', '2024-07-30 06:44:58.908109', '2024-07-30 06:44:58.908109', 35),
(156, 'Geography', '2024-07-30 06:45:05.229398', '2024-07-30 06:45:05.229398', 35),
(157, 'PT', '2024-07-30 06:45:09.690288', '2024-07-30 06:45:09.690288', 35),
(158, 'Drawing', '2024-07-30 06:45:14.389546', '2024-07-30 06:45:14.389546', 35),
(159, '', '2024-07-30 06:45:16.788737', '2024-07-30 06:45:16.788737', 35),
(160, 'English', '2024-07-30 07:01:51.832557', '2024-07-30 07:01:51.832557', 36),
(161, 'Hindi', '2024-07-30 07:01:57.332911', '2024-07-30 07:01:57.332911', 36),
(162, 'History', '2024-07-30 07:02:01.678062', '2024-07-30 07:02:01.678062', 36),
(163, 'Mathematics', '2024-07-30 07:02:05.758685', '2024-07-30 07:02:05.758685', 36),
(164, 'Music', '2024-07-30 07:02:09.957493', '2024-07-30 07:02:09.957493', 36),
(165, 'Drawing', '2024-07-30 07:02:15.244262', '2024-07-30 07:02:15.244262', 36),
(166, 'Science', '2024-07-30 07:02:19.565873', '2024-07-30 07:02:19.565873', 36),
(167, 'Social Science', '2024-07-30 07:02:24.625556', '2024-07-30 07:02:24.625556', 36),
(168, 'Geography', '2024-07-30 07:02:29.021422', '2024-07-30 07:02:29.021422', 36),
(169, 'PT', '2024-07-30 07:02:37.827144', '2024-07-30 07:02:37.827144', 36);

-- --------------------------------------------------------

--
-- Table structure for table `learning_subject_class_name`
--

CREATE TABLE `learning_subject_class_name` (
  `id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `cls_name_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_subject_class_name`
--

INSERT INTO `learning_subject_class_name` (`id`, `subject_id`, `cls_name_id`) VALUES
(8, 16, 20),
(2, 17, 20),
(4, 17, 21),
(1, 20, 20),
(14, 22, 20);

-- --------------------------------------------------------

--
-- Table structure for table `learning_teacherattendance`
--

CREATE TABLE `learning_teacherattendance` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_teacherattendance`
--

INSERT INTO `learning_teacherattendance` (`id`, `title`, `description`) VALUES
(1, 'ONLINE STAFF APPEAREANCE MADE EASY', 'With online attendance, teachers can mark their attendance daily and apply for holidays too. After teachers submit their attendance, School admin can view it immediately. Admin can also create, edit and delete groups according to shifts assigned to different staff members and can personalise different holidays as per the need. Attendance sheet can be exported in Excel Format for any time period and much more!');

-- --------------------------------------------------------

--
-- Table structure for table `learning_teachermenu`
--

CREATE TABLE `learning_teachermenu` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `parent_category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_teachermenu`
--

INSERT INTO `learning_teachermenu` (`id`, `title`, `url`, `icon`, `parent_category_id`) VALUES
(1, 'Dashboard', '/teacher_sidebar/', 'fa fa-list', NULL),
(2, 'Attendance', '/students_view/', 'fa fa-address-book', NULL),
(3, 'Assesement', '#', 'fa fa-book', NULL),
(4, 'View Result', '/#/', 'fa fa-file', NULL),
(5, 'calander', '#', 'fa fa-calendar', NULL),
(6, 'Meetings', '/teacher_meetings/', 'fa fa-file', NULL),
(7, 'Apply Leave', '/teacher_applyforleave', 'fa fa-newspaper', NULL),
(8, 'Notification', '#', 'fa fa-bell', NULL),
(9, 'Inbox Messages', '/teacher_sidebar2', 'fa fa-inbox', NULL),
(10, 'Create Exam', '/dealing_subjects\n', 'fa fa-newspaper', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `learning_teachers`
--

CREATE TABLE `learning_teachers` (
  `id` bigint(20) NOT NULL,
  `organizationname` varchar(100) NOT NULL,
  `registrationno` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneno` varchar(100) NOT NULL,
  `course1` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirm_password` varchar(100) NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `department` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `experiance` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `subject1` varchar(100) NOT NULL,
  `shift_name_id` bigint(20) NOT NULL,
  `schoolid_id` int(11) DEFAULT NULL,
  `photo` varchar(100) NOT NULL,
  `staff_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_teachers`
--

INSERT INTO `learning_teachers` (`id`, `organizationname`, `registrationno`, `address`, `username`, `first_name`, `last_name`, `email`, `phoneno`, `course1`, `password`, `confirm_password`, `admin_id`, `department`, `designation`, `dob`, `experiance`, `gender`, `qualification`, `subject1`, `shift_name_id`, `schoolid_id`, `photo`, `staff_type`) VALUES
(12, 'Sridhar', '87566', 'guntur', 'sridhar123', 'sri', 'dhar', 'sridhar@gmail.com', '7878899990', '', '123456', '123456', 54, 'mech', 'Teaching', '2024-04-18', '2', 'Male', 'Mtech', '', 1, 15, '', 'Teaching'),
(13, 'zenken', '787987', 'Hyd', 'Zenken ', 'naveen', 'krishna', 'zen@gmail.com', '9898965678', '', '123456', '123456', 55, 'Teach', 'Teaching', '2024-04-17', '3', 'Male', 'Mtech', '', 1, 15, '', 'Non-Teaching'),
(14, 'Global', '787987', 'Hyd', 'global', 'naveen22', 'krishna22', 'global@gmail.com', '9898965678', '', '123456', '123456', 56, 'Teach', 'Teaching', '2024-04-17', '3', 'Male', 'Mtech', '', 1, 15, '', 'Teaching'),
(15, 'viswa', '7678878', 'guntur', 'premium1', 'Sridhar1', 's', 'aa@gmail.com', '989896567', '', '123456', '123456', 65, 'Teach', 'Teaching', '2013-06-04', '7', 'Male', 'Mtech', '', 1, NULL, '', 'Teaching'),
(16, 'hamsa', '767899', 'nellore', 'hamsa123', 'hamsa', 'Babu', 'hamsababu@gmail.com', '7878899990', '', '123456', '123456', 66, 'mech', 'Teaching', '2024-04-18', '2', 'Female', 'Mtech', '', 1, 15, '', 'Teaching'),
(17, 'viswa', '8788899', 'Ongole', 'njhhhfgjn', 'sdfeer', 'dffffjgnfsj', 'kgefkklll@gmail.com', '656668989', '', '123456', '123456', 70, 'qcwsc', 'Teaching', '2024-04-25', '8', 'Male', 'Mtech', '', 2, 15, '', 'Teaching'),
(18, 'viswa', '76777', 'guntur', 'Viswa', 'viswa', 'kishore', 'vishwakishore@gmail.com', '989896567', '', '123456', '123456', 71, 'ECE', 'Teaching', '2024-04-21', '2', 'Male', 'Mtech', '', 1, 15, '', 'Teaching'),
(19, 'sri chaitanya', '734556', 'Vizag', 'chai1234', 'vinay', 'babu', 'vinaybabu@gmail.com', '7678098789 ', '', '123456', '123456', 73, 'it', 'Teaching', '2024-04-24', '2', 'Male', 'Mtech', '', 1, 15, '', 'Non-Teaching'),
(20, 'lakireddy', '634332', 'hyderabad', 'chenna', 'chenna', 'reddy', 'chenna@gmail.com', '654678789', '', '123456', '123456', 74, 'it', 'Teaching', '2024-04-24', '2', 'Male', 'Mtech', '', 1, 15, '', 'Non-Teaching'),
(21, 'hari', '00001', 'rtsyausquwikjdiwuy', 'vamsi', 'v', 'vamsi', 'hari@gmail.com', '9876543123', '', '123456', '123456', 78, 'cse', 'coding', '2008-06-16', '5', 'Male', 'btech', '', 1, 18, '', 'Teaching'),
(22, 'Era International School', '123456', 'Godambe chowk, Kalewadi - Rahatani Rd, Rahatani, pune, Pimpri-Chinchwad, Maharashtra 411017', 'Radha', 'Radha', 'S', 'radha@gmail.com', '8182019797', '', '123456', '123456', 105, 'Math', 'Teacher', '1985-10-25', '10', 'Female', 'B.Ed (Mathematics)', '', 1, 25, '', 'Teaching'),
(23, 'Era International School', '243753796', 'Godambe chowk, Kalewadi - Rahatani Rd, Rahatani, Pune, Pimpri-Chinchwad, Maharashtra 411017', 'Sheela', 'Sheela', 'Bhaave', 'sheela@gmail.com', '9960941812', '', '123456', '123456', 106, 'English', 'Teacher', '1988-04-27', '7', 'Female', 'M.Ed', '', 1, 25, '', 'Teaching'),
(24, 'Era International School', '1248785', 'Godambe chowk, Kalewadi - Rahatani Rd, Rahatani, Pune, Pimpri-Chinchwad, Maharashtra 411017', 'Rakesh', 'Rakesh', 'Mahire', 'rakesh@gmail.com', '9960941812', '', '123456', '123456', 107, 'Science', 'Teacher', '1978-02-27', '13', 'Male', 'B.Ed ', '', 1, 25, '', 'Teaching'),
(25, 'Era International School', '4565432', 'Godambe chowk, Kalewadi - Rahatani Rd, Rahatani, Pune, Pimpri-Chinchwad, Maharashtra 411017', 'Ajay', 'Ajay', 'Lathi', 'ajay@gmail.com', '9960941812', '', '123456', '123456', 108, 'Hindi', 'Teacher', '1989-03-05', '5', 'Male', 'B.Ed ', '', 1, 25, '', 'Teaching'),
(26, 'Happy International School', '23432123', ' Shri Chatrapati Shivaji Maharaj Rd, Pratham Reflections Society, Wakad, Pimpri-Chinchwad, Maharasht', 'Monica', 'Monica', 'Smith', 'monica@gmail.com', '9934692911', '', '123456', '123456', 114, 'History', 'Teacher', '1975-04-13', '20', 'Female', 'B.Ed ', '', 2, 30, '', 'Teaching'),
(27, 'Happy International School', '4534121', 'Shri Chatrapati Shivaji Maharaj Rd, Pratham Reflections Society, Wakad, Pimpri-Chinchwad, Maharashtr', 'Ayush', 'Ayush', 'Patel', 'ayush@gmail.com', '8784384692', '', '123456', '123456', 115, 'Music', 'Teacher', '1999-03-04', '2', 'Male', 'MA Arts', '', 2, 30, '', 'Teaching'),
(28, 'Happy International School', '8743234', 'Shri Chatrapati Shivaji Maharaj Rd, Pratham Reflections Society, Wakad, Pimpri-Chinchwad, Maharashtr', 'Priyanka', 'Priyanka', 'Nair', 'priyanka@gmail.com', '9881158797', '', '123456', '123456', 116, 'Geography', 'Teacher', '1996-12-18', '3', 'Female', 'M.Ed', '', 1, 30, '', 'Teaching'),
(29, 'Happy International School', '975534877', 'Shri Chatrapati Shivaji Maharaj Rd, Pratham Reflections Society, Wakad, Pimpri-Chinchwad, Maharashtr', 'Jay', 'Jay', 'Reddy', 'jay@gmail.com', '783465298', '', '123456', '123456', 117, 'Social Science', 'Teacher', '1991-12-17', '4', 'Male', 'B.Ed ', '', 1, 30, '', 'Teaching'),
(30, 'City Pride School', '93577392', '55/1 Village Tathawade, Near Akshar Elementa Society Bhumkar Chowk Road Tathawade, Wakad, Pune, Maha', 'Vani123', 'Vani', 'Swami', 'vani@gmail.com', '937483824', '', '123456', '123456', 126, 'Drawing', 'Teacher', '1994-03-12', '4', 'Female', 'MA Arts', '', 1, 31, '', 'Teaching'),
(31, 'City Pride School', '93275753', '55/1 Village Tathawade, Near Akshar Elementa Society Bhumkar Chowk Road Tathawade, Wakad, Pune, Maha', 'Swati', 'Swati', 'Gore', 'swati@gmail.com', '937878392', '', '123456', '123456', 127, 'Geography', 'Teacher', '1990-03-23', '5', 'Female', 'B.Ed', '', 1, 31, '', 'Teaching'),
(32, 'City Pride School', '83478932', '55/1 Village Tathawade, Near Akshar Elementa Society Bhumkar Chowk Road Tathawade, Wakad, Pune, Maha', 'Tejas123', 'Tejas', 'Kale', 'tejas@gmail.com', '9377437489', '', '123456', '123456', 128, 'Social sience', 'Teacher', '1988-12-14', '6', 'Male', 'B.Ed', '', 1, 31, '', 'Teaching'),
(33, 'City Pride School', '97347832', '55/1 Village Tathawade, Near Akshar Elementa Society Bhumkar Chowk Road Tathawade, Wakad, Pune, Maha', 'Kiran123', 'Kiran', 'Sawant', 'kiran@gmail.com', '9374872874', '', '123456', '123456', 129, 'PT', 'Teacher', '1992-03-27', '3', 'Male', 'B.Ed', '', 1, 31, '', 'Teaching'),
(34, 'SNBP International School', '82364828', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Prakash123', 'Prakash', 'S', 'prakash@gmail.com', '9374874313', '', '123456', '123456', 134, 'Geography', 'Teacher', '1984-04-13', '15', 'Male', 'B.Ed', '', 1, 32, '', 'Teaching'),
(35, 'SNBP International School', '92374824', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Avinash123', 'Avinash', 'M', 'avi@gmail.com', '91723871311', '', '123456', '123456', 135, 'Science', 'Teacher', '1983-09-15', '17', 'Male', 'B.Ed', '', 1, 32, '', 'Teaching'),
(36, 'SNBP International School', '9873487183', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Pranita123', 'Pranita', 'S', 'pranita@gmail.com', '972348692', '', '123456', '123456', 136, 'English', 'Teacher', '1988-11-18', '11', 'Female', 'B.Ed', '', 1, 32, '', 'Teaching'),
(37, 'SNBP International School', '827348712', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Aruna123', 'Aruna', 'K', 'aruna@gmail.com', '927482742', '', '123456', '123456', 137, 'Drawing', 'Teacher', '1989-10-26', '8', 'Female', 'B.Ed', '', 1, 32, '', 'Teaching'),
(38, 'Loyola High School', '8234821', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Kunal123', 'Kunal', 'M', 'kunal@gmail.com', '989124874', '', '123456', '123456', 144, 'Hindi', 'Teacher', '1994-08-19', '3', 'Male', 'B.Ed', '', 1, 26, '', 'Teaching'),
(39, 'Loyola High School', '9823787214', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Mohan1234', 'Mohan', 'Desai', 'Mohand@gmail.com', '932489181', '', '123456', '123456', 146, 'Mathematics', 'Teacher', '1990-10-16', '7', 'Male', 'M.Ed', '', 1, 26, '', 'Teaching'),
(40, 'Loyola High School', '97478134', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Seema123', 'Seema', 'S', 'seema@gmail.com', '97232978713', '', '123456', '123456', 147, 'history', 'Teacher', '1988-12-01', '9', 'Female', 'B.Ed', '', 1, 26, '', 'Teaching'),
(41, 'Loyola High School', '9374832742', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Hema123', 'Hema', 'Sawant', 'hema@gmail.com', '9127347098', '', '123456', '123456', 148, 'Arts', 'Teacher', '1989-11-14', '9', 'Female', 'BA', '', 1, 26, '', 'Teaching'),
(42, 'St. Xavier\'s School, Pune', '9274817248', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Vina123', 'Vina', 'M', 'vina@gmail.com', '928747234', '', '123456', '123456', 153, 'Hindi', 'Teacher', '1988-09-17', '8', 'Female', 'B.Ed', '', 1, 27, '', 'Teaching'),
(43, 'St. Xavier\'s School, Pune', '9273821736', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Pravin123', 'Pravin', 'G', 'pravin@gmail.com', '9773787498', '', '123456', '123456', 154, 'Geography', 'Teacher', '1987-03-17', '7', 'Male', 'B.Ed', '', 1, 27, '', 'Teaching'),
(44, 'St. Xavier\'s School, Pune', '928773893', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Rita123', 'Rita', 'S', 'rita@gmail.com', '9183278123', '', '123456', '123456', 155, 'English', 'Teacher', '1990-02-18', '3', 'Female', 'B.Ed', '', 1, 27, '', 'Teaching'),
(45, 'St. Xavier\'s School, Pune', '93748283', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Misha123', 'Misha', 'H', 'misha@gmail.com', '987347889', '', '123456', '123456', 156, 'Mathematics', 'Teacher', '1990-07-18', '6', 'Female', 'M.Ed', '', 1, 27, '', 'Teaching'),
(46, 'Golden Horizon School', '73467441', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Vinayak123', 'Vinayak', 'Vyaas', 'Vinayak@gmail.com', '9872837123', '', '123456', '123456', 161, 'Mathematics', 'Teacher', '1988-11-25', '6', 'Male', 'B.Ed', '', 1, 28, '', 'Teaching'),
(47, 'Golden Horizon School', '97248724', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Vishal123', 'Vishal', 'J', 'Vishal@gmail.com', '877768987', '', '123456', '123456', 162, 'Science', 'Teacher', '1989-12-17', '6', 'Male', 'B.Ed', '', 1, 28, '', 'Teaching'),
(48, 'Golden Horizon School', '97428782', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Vishnu123', 'Vishnu', 'Swami', 'vishnu@gmail.com', '9782387203', '', '123456', '123456', 163, 'history', 'Teacher', '1987-03-15', '9', 'Male', 'B.Ed', '', 1, 28, '', 'Teaching'),
(49, 'Golden Horizon School', '836478923', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Vasu123', 'Vasu', 'Reddy', 'Vasu@gmail.com', '926733322', '', '123456', '123456', 164, 'Social sience', 'Teacher', '1990-06-14', '4', 'Male', 'B.Ed', '', 1, 28, '', 'Teaching'),
(50, 'Mahesh Vidyalaya English Medium', '924789741', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Krishna123', 'Krishna', 'Nair', 'krishna@gmail.com', '9827382332', '', '123456', '123456', 169, 'Mathematics', 'Teacher', '1984-09-26', '13', 'Male', 'M.Ed', '', 1, 29, '', 'Teaching'),
(51, 'Mahesh Vidyalaya English Medium', '827637823', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Suraj123', 'Suraj', 'N', 'suraj@gmail.com', '9377487587', '', '123456', '123456', 170, 'Mathematics', 'Teacher', '1990-12-05', '4', 'Male', 'M.Ed', '', 1, 29, '', 'Teaching'),
(52, 'Mahesh Vidyalaya English Medium', '897437293', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Aparna123', 'Aparna', 'R', 'Aparna@gmail.com', '923764884', '', '123456', '123456', 171, 'Hindi', 'Teacher', '1983-07-19', '17', 'Female', 'B.Ed', '', 1, 29, '', 'Teaching'),
(53, 'Mahesh Vidyalaya English Medium', '97767866', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Mahara', 'Simran123', 'Simran', 'Khanna', 'Simran@gmail.com', '9877348921', '', '123456', '123456', 172, 'Arts', 'Teacher', '1992-02-17', '3', 'Female', 'MA Arts', '', 1, 29, '', 'Teaching'),
(54, 'Kaka\'s International Schoo', '937487984', ' DP Rd, opp. Eklavya Polytechnic College, Eklavya Colony, Kothrud, Pune, Maharashtra 411038', 'Gopal123', 'Gopal', 'R', 'gopal@gmail.com', '87347898', '', '123456', '123456', 177, 'Science', 'Teacher', '1982-12-17', '19', 'Male', 'M.Ed', '', 2, 33, '', 'Teaching'),
(55, 'Kaka\'s International Schoo', '983482478', ' DP Rd, opp. Eklavya Polytechnic College, Eklavya Colony, Kothrud, Pune, Maharashtra 411038', 'Iram123', 'Iram', 'Shaikh', 'iram@gmail.com', '837482326', '', '123456', '123456', 178, 'Social sience', 'Teacher', '1990-08-12', '4', 'Female', 'B.Ed', '', 2, 33, '', 'Teaching'),
(56, 'Kaka\'s International Schoo', '63846722234', ' DP Rd, opp. Eklavya Polytechnic College, Eklavya Colony, Kothrud, Pune, Maharashtra 411038', 'Mohim123', 'Mohim', 'Dange', 'mohim@gmail.com', '7347812406', '', '123456', '123456', 180, 'Geography', 'Teacher', '1989-03-27', '8', 'Male', 'B.Ed', '', 2, 33, '', 'Teaching'),
(57, 'Kaka\'s International Schoo', '893488234', ' DP Rd, opp. Eklavya Polytechnic College, Eklavya Colony, Kothrud, Pune, Maharashtra 411038', 'Nelton123', 'Nelton', 'Kasi', 'nelton@gmail.com', '738472892', '', '123456', '123456', 181, 'English', 'Teacher', '1992-04-15', '3', 'Male', 'M.Ed', '', 2, 33, '', 'Teaching'),
(58, 'Marathwada Mitra Mandal Vidya Mandir High Schoo', '78924733', 'Sangeetkar Shrikant Thakare Rd, Gananjay Society, Nalawade Baug, Kothrud, Pune, Maharashtra 411038', 'Ratan123', 'Ratan', 'Kishan', 'ratan@gmail.com', '9723891823', '', '123456', '123456', 186, 'Geography', 'Teacher', '1993-07-18', '2', 'Male', 'M.Ed', '', 1, 34, '', 'Teaching'),
(59, 'Marathwada Mitra Mandal Vidya Mandir High Schoo', '67347242', 'Sangeetkar Shrikant Thakare Rd, Gananjay Society, Nalawade Baug, Kothrud, Pune, Maharashtra 411', 'Nilesh123', 'Nilesh', 'Shinde', 'nilesh@gmail.com', '8974379214', '', '123456', '123456', 187, 'PT', 'Teacher', '1990-11-30', '4', 'Male', 'MA Arts', '', 1, 34, '', 'Teaching'),
(60, 'Marathwada Mitra Mandal Vidya Mandir High Schoo', '97289822', 'Sangeetkar Shrikant Thakare Rd, Gananjay Society, Nalawade Baug, Kothrud, Pune, Maharashtra 411', 'Jitu123', 'Jitu', 'shetty', 'jitu@gmail.com', '98238223', '', '123456', '123456', 188, 'Hindi', 'Teacher', '1991-05-18', '2', 'Male', 'B.Ed', '', 1, 34, '', 'Teaching'),
(61, 'Marathwada Mitra Mandal Vidya Mandir High Schoo', '83984983', 'Sangeetkar Shrikant Thakare Rd, Gananjay Society, Nalawade Baug, Kothrud, Pune, Maharashtra 411', 'Kasim123', 'Kasim', 'Shaikh', 'kasim@gmail.com', '923881923', '', '123456', '123456', 189, 'Science', 'Teacher', '1983-12-01', '15', 'Male', 'M.Ed', '', 1, 34, '', 'Teaching'),
(62, 'Swami Vivekanand National School', '890866768', 'NALANDA, RANJAI RESIDENCY, Lane Number 4, opp. PMT Bus Depot, Paud Road, Bhusari Colony, Kothrud, Pu', 'Vinati123', 'Vinati', 'G', 'vinati@gmail.com', '987612838', '', '123456', '123456', 195, 'history', 'Teacher', '1989-07-18', '5', 'Female', 'M.Ed', '', 2, 35, '', 'Teaching'),
(63, 'Swami Vivekanand National School', '97877687', 'NALANDA, RANJAI RESIDENCY, Lane Number 4, opp. PMT Bus Depot, Paud Road, Bhusari Colony, Kothrud, Pu', 'Deepa123', 'Deepa', 'Swami', 'deepa@gmail.com', '983788322', '', '123456', '123456', 196, 'Hindi', 'Teacher', '1988-08-19', '7', 'Female', 'B.Ed', '', 2, 35, '', 'Teaching'),
(64, 'Swami Vivekanand National School', '8934729', 'NALANDA, RANJAI RESIDENCY, Lane Number 4, opp. PMT Bus Depot, Paud Road, Bhusari Colony, Kothrud, Pu', 'Dipali123', 'Dipali', 'H', 'dipali@gmail.com', '8721839134', '', '123456', '123456', 197, 'Drawing', 'Teacher', '1987-09-14', '7', 'Female', 'MA Arts', '', 2, 35, '', 'Teaching'),
(65, 'Swami Vivekanand National School', '868767555', 'NALANDA, RANJAI RESIDENCY, Lane Number 4, opp. PMT Bus Depot, Paud Road, Bhusari Colony, Kothrud, Pu', 'Dipak123', 'Dipak', 'J', 'dipak@gmail.com', '9874878932', '', '123456', '123456', 198, 'Geography', 'Teacher', '1987-07-14', '9', 'Male', 'B.Ed', '', 2, 35, '', 'Teaching'),
(66, 'HEMS INTERNATIONAL SCHOOL', '46162567', '1, Erandanvana Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 'Mohit123', 'Mohit', 'Roy', 'mohit@gmail.com', '939849823', '', '123456', '123456', 203, 'Music', 'Teacher', '1992-06-28', '5', 'Male', 'MA Arts', '', 1, 36, '', 'Teaching'),
(67, 'HEMS INTERNATIONAL SCHOOL', '68786556', '1, Erandanvana Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 'Keshav123', 'Keshav', 'Mane', 'keshav@gmail.com', '8919127781', '', '123456', '123456', 204, 'history', 'Teacher', '1990-07-29', '4', 'Male', 'M.Ed', '', 2, 36, '', 'Teaching'),
(68, 'HEMS INTERNATIONAL SCHOOL', '679898555', '1, Erandanvana Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 'Pratik123', 'Pratik', 'Kale', 'pratik@gmail.com', '890097758', '', '123456', '123456', 205, 'Science', 'Teacher', '1988-05-04', '6', 'Male', 'M.Ed', '', 1, 36, '', 'Teaching'),
(69, 'HEMS INTERNATIONAL SCHOOL', '678986567', '1, Erandanvana Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 'Rucha123', 'Rucha', 'Dev', 'rucha@gmail.com', '978989678', '', '123456', '123456', 206, 'Geography', 'Teacher', '1989-09-23', '6', 'Female', 'M.Ed', '', 1, 36, '', 'Teaching');

-- --------------------------------------------------------

--
-- Table structure for table `learning_teachersidebar`
--

CREATE TABLE `learning_teachersidebar` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `parent_category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_teacher_class_sub`
--

CREATE TABLE `learning_teacher_class_sub` (
  `id` bigint(20) NOT NULL,
  `class_name_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  `is_control` tinyint(1) NOT NULL,
  `school_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_teacher_class_sub`
--

INSERT INTO `learning_teacher_class_sub` (`id`, `class_name_id`, `subject_id`, `teacher_id`, `is_control`, `school_id_id`) VALUES
(14, 1, 6, 8, 0, 6),
(15, 1, 10, 2, 0, 6),
(16, 8, 12, 3, 1, 6),
(17, 8, 12, 2, 0, 6),
(18, 7, 7, 10, 1, 6),
(19, 8, 7, 10, 0, 6),
(20, 11, 13, 11, 1, 11),
(21, 12, 13, 11, 1, 11),
(22, 13, 13, 11, 1, 11),
(23, 2, 11, 8, 0, 6),
(24, 1, 6, 10, 0, 6),
(25, 20, 16, 13, 1, 15),
(26, 21, 17, 12, 0, 15),
(27, 20, 16, 13, 0, 15),
(28, 20, 16, 13, 0, 15),
(29, 20, 17, 12, 0, 15),
(30, 21, 16, 16, 0, 15),
(31, 22, 18, 17, 0, 15),
(32, 20, 16, 12, 0, 15),
(33, 20, 16, 13, 0, 15),
(34, 20, 16, 13, 0, 15),
(35, 21, 16, 13, 0, 15),
(36, 20, 16, 12, 0, 15),
(37, 20, 16, 12, 0, 15),
(38, 20, 16, 12, 0, 15),
(39, 21, 17, 12, 0, 15),
(40, 20, 22, 12, 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `learning_teacher_shifts`
--

CREATE TABLE `learning_teacher_shifts` (
  `id` bigint(20) NOT NULL,
  `weekly_off` varchar(100) NOT NULL,
  `in_time` time(6) NOT NULL,
  `late_mark_time` time(6) NOT NULL,
  `out_time` time(6) NOT NULL,
  `half_daytime` time(6) NOT NULL,
  `facult_name_id` bigint(20) DEFAULT NULL,
  `shift_name_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_teacher_shifts`
--

INSERT INTO `learning_teacher_shifts` (`id`, `weekly_off`, `in_time`, `late_mark_time`, `out_time`, `half_daytime`, `facult_name_id`, `shift_name_id`) VALUES
(1, 'TUE', '09:45:00.000000', '09:55:00.000000', '15:30:00.000000', '18:26:00.000000', 2, 1),
(2, 'FRI', '09:54:00.000000', '10:10:00.000000', '16:09:00.000000', '12:56:00.000000', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `learning_text`
--

CREATE TABLE `learning_text` (
  `id` bigint(20) NOT NULL,
  `details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_text`
--

INSERT INTO `learning_text` (`id`, `details`) VALUES
(1, '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msqrt><mn>54</mn><mo>+</mo><mn>77</mn></msqrt></math></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `learning_timage`
--

CREATE TABLE `learning_timage` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_timage`
--

INSERT INTO `learning_timage` (`id`, `image`) VALUES
(1, 'images/timetable1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `learning_time`
--

CREATE TABLE `learning_time` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `photo` varchar(100) NOT NULL,
  `title1` varchar(100) NOT NULL,
  `content1` longtext NOT NULL,
  `photo1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_time`
--

INSERT INTO `learning_time` (`id`, `title`, `content`, `photo`, `title1`, `content1`, `photo1`) VALUES
(1, 'Schedule Creation', 'Effortlessly create and manage class schedules with our intuitive tools. Set up class times, dates, and recurring sessions to fit your course requirements. Customize schedules to accommodate different time zones and special needs, ensuring a smooth and organized learning experience for all participants.', 'images/schedule creation.jpg', 'Calendar Integration', 'Seamlessly sync schedules with personal calendars to ensure everyone stays up-to-date. This feature allows students and instructors to view class times, deadlines, and events directly in their preferred calendar applications, minimizing conflicts and enhancing time management.\r\n\r\n\r\n\r\n', 'images/calender integration.avif'),
(2, 'Real-Time Updates', 'Receive instant notifications for any changes to the schedule, such as class time adjustments or new events. This feature ensures that both students and instructors are always informed and can quickly adapt to any modifications, maintaining smooth and efficient course management.', 'images/realtime  updates.jpg', 'Automated Scheduling', 'Simplify timetable management with Automated Scheduling. This feature handles complex scheduling tasks by automatically arranging class times, resolving conflicts, and managing recurring sessions. It ensures efficient use of resources and reduces administrative overhead, allowing for a smoother scheduling process.\r\n\r\n', 'images/automated scheduling.avif');

-- --------------------------------------------------------

--
-- Table structure for table `learning_timetablecards`
--

CREATE TABLE `learning_timetablecards` (
  `id` bigint(20) NOT NULL,
  `images` varchar(100) NOT NULL,
  `heading` longtext NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_timetablecards`
--

INSERT INTO `learning_timetablecards` (`id`, `images`, `heading`, `content`) VALUES
(1, 'images/cardstimt.png', 'Curriculum Organization:', 'A school timetable has defined period lengths. It also has specific subjects for each period. Hence, it allows administrators to distribute enough resources to most curriculum parts. The organization of a good timetable is such that important subjects are at the best times.'),
(2, 'images/cards_time_ylqgHne.png', 'Flexibility To Adjust The Schedule:	', 'When a student is absent, it affects his/her studies. However, when a teacher is on leave, it affects the studies of the whole class! To be honest, when a teacher is absent due to health issues or any personal reasons, it becomes plodding to allocate another teacher to the class for time-being'),
(3, 'images/class-wisetimetable.png', 'Powerful Timetable Construction And Management:', 'Created and update your timetable by either an automated or manual process.  Auto-staff and auto-room the timetable. Automatically fix teacher and room clashes. Automatically spread manage your timetable - managing lesson spreads and balancing class sizes.');

-- --------------------------------------------------------

--
-- Table structure for table `learning_timetablecarl`
--

CREATE TABLE `learning_timetablecarl` (
  `id` bigint(20) NOT NULL,
  `images` varchar(100) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_timetablecarl`
--

INSERT INTO `learning_timetablecarl` (`id`, `images`, `content`) VALUES
(1, 'images/crltimetable.jpg', 'Easily view and print timetables in multiple formats: individual teacher, student and room timetables, faculty timetables, year timetables and whole school timetables. View reports on student subject selections including a course popularity report.'),
(2, 'images/crl-2timetable.jpg', 'It’s an integrated timetable of all classes in a school. A copy of it should be in the principal office and staff room.'),
(3, 'images/carl-3timeta.webp', 'The system contains important data from schools and institutes which is secure with safe backup procedures.'),
(4, 'images/cards_time.png', 'A school timetable has defined period lengths. It also has specific subjects for each period. Hence, it allows administrators to distribute enough resources to most curriculum parts. The organization of a good timetable is such that important subjects are at the best times.');

-- --------------------------------------------------------

--
-- Table structure for table `learning_timetablecont`
--

CREATE TABLE `learning_timetablecont` (
  `id` bigint(20) NOT NULL,
  `images` varchar(100) NOT NULL,
  `heading` longtext NOT NULL,
  `content` longtext NOT NULL,
  `content1` longtext NOT NULL,
  `photo1` varchar(100) NOT NULL,
  `title1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_timetablecont`
--

INSERT INTO `learning_timetablecont` (`id`, `images`, `heading`, `content`, `content1`, `photo1`, `title1`) VALUES
(1, 'images/timetable.jpg', 'Error & Clash-Free Classroom Management:', 'A time table management system has the provision to generate a clash-free timetable based on parameters such as – number of classrooms, availability of teachers, number of subjects, number of branches, sections, and much more. It ensures optimal utilization of resources and evenly distributes the lectures including library, laboratory, sports, and extracurricular activities', '', '', ''),
(2, 'images/timetablefex.jpg', 'Flexibility To Adjust The Schedule:', 'When a student is absent, it affects his/her studies. However, when a teacher is on leave, it affects the studies of the whole class! To be honest, when a teacher is absent due to health issues or any personal reasons, it becomes plodding to allocate another teacher to the class for time-being. The faculty members need to check out the availability of different staff to plan out the entire day. It may seem easy for a day but when a teacher is on leave for several days, everything just gets mismatched.', '', '', ''),
(3, 'images/timetablerepoting.jpg', 'Reporting:', 'Easily view and print timetables in multiple formats: individual teacher, student and room timetables, faculty timetables, year timetables and whole school timetables. View reports on student subject selections including a course popularity report.', '', '', ''),
(4, 'images/timetablecust.jpg', 'Powerful Timetable Construction And Management:', 'Created and update your timetable by either an automated or manual process.  Auto-staff and auto-room the timetable. Automatically fix teacher and room clashes. Automatically spread manage your timetable - managing lesson spreads and balancing class sizes. Drag-and-drop to manually adjust your timetable.', '', '', ''),
(5, 'images/timetableph.jpg', 'Easy Updates And Edits', 'The system allows easy changes and updates in the time table in case of teacher’s absenteeism to avoid wasting student’s time.', '', '', ''),
(6, 'images/timetablehig_tec.jpg', 'Ensures High Security:', 'The system contains important data from schools and institutes which is secure with safe backup procedures.', '', '', ''),
(7, 'images/timetablecircl.jpg', 'Curriculum Organization:', 'A school timetable has defined period lengths. It also has specific subjects for each period. Hence, it allows administrators to distribute enough resources to most curriculum parts. The organization of a good timetable is such that important subjects are at the best times.', '', '', ''),
(8, 'images/timetablectime.jpg', 'Consolidated Timetable:', 'It’s an integrated timetable of all classes in a school. A copy of it should be in the principal office and staff room.', '', '', ''),
(9, 'images/great-custo-servertimetable.png', 'Great Customer Service:', 'Timetables are part of your core services, and your student and staff rely on their availability and correctness. Student satisfaction, timetable availability, and quick incident response and resolution times are all very important', '', '', ''),
(10, 'images/holisttimetabe.jpg', 'Holistic Timetable:', 'Provides teachers with sufficient workload and gaps over the whole semester and boosts work productivity.', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `learning_topics`
--

CREATE TABLE `learning_topics` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `subject1` longtext NOT NULL,
  `subject2` longtext NOT NULL,
  `subject3` longtext NOT NULL,
  `subject4` longtext NOT NULL,
  `subject5` longtext NOT NULL,
  `subject6` longtext NOT NULL,
  `subject7` longtext NOT NULL,
  `subject8` longtext NOT NULL,
  `subject9` longtext NOT NULL,
  `subject10` longtext NOT NULL,
  `subject11` longtext NOT NULL,
  `subject12` longtext NOT NULL,
  `subject13` longtext NOT NULL,
  `subject14` longtext NOT NULL,
  `subject15` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_t_table`
--

CREATE TABLE `learning_t_table` (
  `id` bigint(20) NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `period_time` int(10) UNSIGNED NOT NULL CHECK (`period_time` >= 0),
  `reces_break1` int(10) UNSIGNED NOT NULL CHECK (`reces_break1` >= 0),
  `reces_break2` int(10) UNSIGNED NOT NULL CHECK (`reces_break2` >= 0),
  `lunch_break` int(10) UNSIGNED NOT NULL CHECK (`lunch_break` >= 0),
  `w_break1` int(11) NOT NULL,
  `w_break2` int(11) NOT NULL,
  `w_lunch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_uploadedfile`
--

CREATE TABLE `learning_uploadedfile` (
  `id` bigint(20) NOT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `subjectname` varchar(100) NOT NULL,
  `chapter_no` varchar(100) NOT NULL,
  `urls` varchar(100) NOT NULL,
  `parent_category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_zoommeeting`
--

CREATE TABLE `learning_zoommeeting` (
  `id` bigint(20) NOT NULL,
  `meeting_date` date NOT NULL,
  `Teacher_name_id` bigint(20) DEFAULT NULL,
  `class_name_id` bigint(20) DEFAULT NULL,
  `mystudent_id` bigint(20) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `subject_name_id` bigint(20) DEFAULT NULL,
  `endtime` time(6) DEFAULT NULL,
  `starttime` time(6) DEFAULT NULL,
  `event_details` longtext DEFAULT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_zoommeeting`
--

INSERT INTO `learning_zoommeeting` (`id`, `meeting_date`, `Teacher_name_id`, `class_name_id`, `mystudent_id`, `school_id`, `subject_name_id`, `endtime`, `starttime`, `event_details`, `status`) VALUES
(1, '2024-03-28', 2, 1, NULL, 6, 5, NULL, NULL, NULL, 'upcoming'),
(2, '2024-03-29', 8, 1, NULL, 6, 7, NULL, NULL, NULL, 'upcoming'),
(3, '2024-03-29', 3, 1, NULL, 6, 12, NULL, NULL, NULL, 'upcoming'),
(4, '2024-04-02', 2, 1, NULL, 6, 5, NULL, NULL, NULL, 'upcoming'),
(5, '2024-04-18', 12, 20, NULL, 15, 16, NULL, NULL, NULL, 'upcoming'),
(6, '2024-04-19', 12, 21, NULL, 15, 17, NULL, NULL, NULL, 'upcoming'),
(7, '2024-04-24', 12, 21, NULL, 15, 17, NULL, NULL, NULL, 'upcoming'),
(8, '2024-04-24', 12, 21, NULL, 15, 17, '10:56:00.000000', '09:25:00.000000', NULL, 'upcoming'),
(9, '2024-04-24', 13, 20, NULL, 15, 16, '11:00:00.187000', '10:58:00.000000', NULL, 'upcoming'),
(10, '2024-04-24', 12, 21, NULL, 15, 17, '11:13:00.000000', '11:11:00.000000', NULL, 'upcoming'),
(11, '2024-04-24', 12, 20, NULL, 15, 17, '11:17:00.000000', '11:15:00.000000', NULL, 'upcoming'),
(12, '2024-04-24', 16, 21, NULL, 15, 16, '11:19:00.000000', '11:17:00.000000', NULL, 'upcoming'),
(13, '2024-04-24', 17, 22, NULL, 15, 18, '11:32:00.000000', '11:30:00.000000', NULL, 'upcoming'),
(14, '2024-04-29', 12, 20, NULL, 15, 16, '10:06:00.000000', '10:04:00.000000', NULL, 'upcoming'),
(15, '2024-06-26', 12, 20, NULL, 15, 17, '05:52:00.000000', '04:52:00.000000', NULL, 'upcoming'),
(16, '2024-07-10', 12, 20, NULL, 15, 17, '13:00:00.000000', '12:00:00.000000', 'book\r\nWednesday, July 10 · 12:00 – 1:00pm\r\nTime zone: Asia/Kolkata\r\nGoogle Meet joining info\r\nVideo call link: https://meet.google.com/rmx-hafm-udv', 'upcoming'),
(17, '2024-07-25', 12, 20, NULL, 15, 17, NULL, NULL, '', 'upcoming'),
(18, '2024-07-25', 12, 20, NULL, 15, 17, NULL, NULL, '', 'upcoming'),
(19, '2024-07-25', 12, 20, NULL, 15, 17, '14:35:00.000000', '01:00:00.000000', 'pavan\r\nThursday, July 25 · 1:00 – 2:35pm\r\nTime zone: Asia/Kolkata\r\nGoogle Meet joining info\r\nVideo call link: https://meet.google.com/cqp-kgxt-iuf', 'upcoming'),
(20, '2024-07-26', 12, 20, NULL, 15, 22, '13:15:00.000000', '12:15:00.000000', 'maths\r\nFriday, July 26 · 12:15 – 1:15pm\r\nTime zone: Asia/Kolkata\r\nGoogle Meet joining info\r\nVideo call link: https://meet.google.com/zsz-ibdw-kpe', 'upcoming');

-- --------------------------------------------------------

--
-- Table structure for table `lms`
--

CREATE TABLE `lms` (
  `id` bigint(20) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `image4` varchar(100) NOT NULL,
  `image5` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `organizationname` varchar(100) NOT NULL,
  `registrationno` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `phoneno` bigint(20) NOT NULL,
  `strength` varchar(100) NOT NULL,
  `usernumber_id` bigint(20) DEFAULT NULL,
  `plan_id_id` bigint(20) DEFAULT NULL,
  `plan_end_date` date DEFAULT NULL,
  `plan_start_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `organizationname`, `registrationno`, `address`, `username`, `first_name`, `last_name`, `email`, `image1`, `phoneno`, `strength`, `usernumber_id`, `plan_id_id`, `plan_end_date`, `plan_start_date`) VALUES
(14, 'Montessori', '7678878', 'guntur', 'basic', 'basic', 'nbjjn', 'basic@gmail.com', 'images/Screenshot_1_V6LZORA.png', 989896567, '3000', 49, 1, NULL, NULL),
(15, 'SridharInternational', '8788899', 'Ongole', 'Sridhar', 'Sridhar', 'Nidamanuri', 'sridhar@gmail.com', 'images/Screenshot_1_8ndWpHS.png', 9890076787, '9000', 52, 3, NULL, NULL),
(16, 'DelhiPublic', '76778', 'Vijayawada', 'advanced', 'adv', 'nbjjn', 'ad@gmail.com', 'images/Screenshot_1_SmmwgD6.png', 878999090, '8777', 53, 4, NULL, NULL),
(17, 'Indus', '0001', 'Kurnool', 'nani', 'pavan', 'm', 'dtl@gmail.com', 'images/Screenshot_1_R4d82lA.png', 908738948, '3', 63, 1, NULL, NULL),
(18, 'PallaviInternational', '00004', 'Hyderabad', 'ravi', 'phani', 'h', 'phani@gmail.com', 'images/istockphoto-1219923993-1024x1024.jpg', 9876543212, '10', 76, 1, NULL, NULL),
(22, 'premiumPlan', '22', 'knl', 'premiumpremium', 'premiumpremium', 'premiumpremium', 'premiumpremium@gmail.com', 'images/4c223bdf0718490ecda3d77306c50c0a.jpg', 9059443947, '200', 82, 3, NULL, NULL),
(23, 'advancePlan', '33', 'knl', 'advanceadvance', 'advanceadvance', 'advanceadvance', 'advanceadvance@gmail.com', 'images/spiderman-7786392_640_jgv7MuN.jpg', 9059443948, '300', 83, 4, NULL, NULL),
(25, 'Era International School', '12345678', 'Plot No. 78, Sr. No. 70, CIDCO, N-2, colony, Aurangabad - 431 003, Maharashtra State INDIA.', 'Admin', 'Satish', 'Gore', 'info@aiera.in', 'images/download_3.jfif', 9960941812, '400', 86, 1, NULL, NULL),
(26, 'Loyola High School', '23456789', 'Loyola High School and Junior College Pashan Road, Pune 411 008', 'Principal', 'Nelton', 'Thomas', 'primaryloyolapune@gmail.com', 'images/download_4_06rvVjp.jfif', 20256566, '450', 92, 3, NULL, NULL),
(27, 'St. Xavier\'s School, Pune', '3456789', 'Survey no. 39, Shankar Sheth Rd, near St. Joseph\'s Technical, Vrindavan Society, Gultekadi, Pune, Ma', 'Administrator', 'Ratnakar', 'Dushing', 'stxavierspune37@gmail.com', 'images/X_LOGO_tJVxTCp.png', 814983010, '500', 93, 3, NULL, NULL),
(28, 'Golden Horizon School', '45678910', 'Nr Dream Flower, New Tapovan-Ramghat Road, Nashik - Pune Rd, opposite Inox Multiplex, Uttara Nagar, ', 'Founder', 'K', 'Gupta', 'infinitydiagnosticnsk@gmail.com', 'images/download_5_wczYKFh.jfif', 25324176, '500', 94, 3, NULL, NULL),
(29, 'Mahesh Vidyalaya English Medium', '567891011', ' Sangeetkar Shrikant Thakare Rd, Gananjay Society, Nalawade Baug, Kothrud, Pune, Maharashtra 411038', 'Chairman', 'Sachin', 'Mantri', 'info@mvem.in', 'images/download_6_g8MRJH0.jfif', 937016944, '500', 95, 3, NULL, NULL),
(30, 'Happy International School', '6789101112', 'Happy International School, Godambe chowk, Kalewadi - Rahatani Rd, Rahatani, Pune, Pimpri-Chinchwad,', 'Manager', 'Rajesh', 'Pimple', 'info@happyschoolindia.com', 'images/2023-04-27.jpg', 7887881588, '200', 96, 1, NULL, NULL),
(31, 'City Pride School', '6789101113', 'Near, HS-2, Sector No. : 27A, Sant Tukaram Garden Rd, Pradhikaran, Nigdi, Pimpri-Chinchwad, Maharash', 'Director', 'Ashwini', 'Kulkarni', 'info@cityprideschool.com', 'images/Nigdi_school.JPG', 727603559, '600', 97, 1, NULL, NULL),
(32, 'SNBP International School', '6789101114', 'Survey No. 29 / 2, Off Rahatani- Pimple Saudagar Road Near Akashganga Society, Pune, Maharashtra 411', 'VDirector', 'D', 'Bhosale', 'snbp.morwadi@gmail.com', 'images/2021-10-16.jpg', 7770003823, '600', 99, 1, NULL, NULL),
(33, 'Kaka\'s International School', '76281923', ' Kaka homes, DP Rd, Krushna Colony, Rahatani, Pimpri-Chinchwad, Maharashtra 411017', 'MChairman', 'Navin', 'Tapkir', 'admin@kakainternationalschool.com', 'images/SCHOOL_PIC.png', 8182019797, '550', 101, 4, NULL, NULL),
(34, 'Marathwada Mitra Mandal Vidya Mandir High School', '762819123', '  Sector No. 33, Chinchwad, Pimpri, Road, Sector No. 34, Thergaon, Pimpri-Chinchwad, Maharashtra 411', 'VoiceChairman', 'Sandesh', 'Vyaas', 'mmmv@gmail.com', 'images/IMG_20181001_121614.jpg', 202565012, '550', 102, 4, NULL, NULL),
(35, 'Swami Vivekanand National School', '7628192435', '   Sajjangad Colony, Rahatni Link Road, Gabaji Thopate Marg, Sinhagad Colony, Somdas Colony, Rahatan', 'Coardinator', 'Sandesh', 'murti', 'svns@gmail.com', 'images/download_1.jfif', 20272726, '550', 103, 4, NULL, NULL),
(36, 'HEMS INTERNATIONAL SCHOOL', '54264347897', '   Vivekanand Nagar, Dange Chowk, Bhumkar Chowk, Tathawade, Pune, Maharashtra 411033', 'Cofounder', 'Asha', 'Kokane', 'hems@gmail.com', 'images/download_2.jfif', 988110091, '550', 104, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `registration_date` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `parents_name` varchar(255) NOT NULL,
  `parents_mobile_number` varchar(10) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` longtext NOT NULL,
  `mystudent_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `schoolid_id` int(11) DEFAULT NULL,
  `className_id` bigint(20) DEFAULT NULL,
  `student_class` varchar(20) NOT NULL,
  `shift_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `email`, `password`, `confirm_password`, `registration_date`, `gender`, `mobile_number`, `parents_name`, `parents_mobile_number`, `date_of_birth`, `address`, `mystudent_id`, `username`, `schoolid_id`, `className_id`, `student_class`, `shift_id`) VALUES
(12, 'Navya', 'Naidu', 'www@gmail.com', '123456', '123456', '2024-04-18', 'Male', '8788880900', 'nananan', '989900090', '2024-05-02', 'guntur', 58, 'NavyaNaidu', 15, 20, '0', 1),
(13, 'Madhu', 'Babu', 'baba@gmail.com', '123456', '123456', '2024-04-25', 'Male', '677878900', 'rama', '7688888777', '2024-04-19', 'Vizag', 60, 'babu@123', 15, 24, '0', 1),
(14, 'Vamsi', 'Reddy', 'vamsi@gmail.com', '123456', '123456', '2024-04-18', 'Male', '7678567890', 'ramana', '8767809900', '2024-04-27', 'Nellore', 61, 'vamsi2123', 15, 23, '1', 1),
(15, 'Pavan', 'BabU', 'pavan@gmail.com', '123456', '123456', '2024-04-18', 'Male', '7678898988', 'raju', '7677888877', '2024-04-25', 'Ongole', 62, 'pavan@123', 15, 22, '0', 1),
(16, 'Madhu', 'Naik', 'madhu123@gmail.com', '123456', '123456', '2024-04-27', 'Male', '8887688990', 'rama', '8789008000', '2024-04-13', 'guntur', 67, 'madhu@333', 15, 21, '0', 1),
(17, 'Narayana', 'Reddy', 'narayana@gmail.com', '123456', '123456', '2024-04-25', 'Male', '8765780990', 'madhu', '8789000098', '2024-04-24', 'guntur', 72, 'narayana@123', 15, 21, '0', 1),
(18, 'Anusha', 'Reddy', 'anu@gmail.com', '123456', '123456', '2024-04-23', 'Female', '4325456', 'krishna', '42521541', '2024-04-23', 'warangal', 75, 'anu123', 15, 21, '', 1),
(19, 'Anita', 'Kambale', 'anita@gmail.com', '123456', '123456', '2021-08-15', 'Female', '8454681631', 'Ajay Kambale', '9887376438', '2012-12-22', 'ac Chowk,Pune 452368', 110, 'Anita123', 25, 39, '', 1),
(20, 'Karan', 'Patel', 'karan@gmail.com', '123456', '123456', '2016-07-15', 'Male', '998783478', 'Mahesh Patel', '998783478', '2011-02-23', 'Thergoan,Gujar nagar,Pune,PCMC 445677 ABC society ', 111, 'Karan123', 25, 40, '', 1),
(21, 'Rani', 'Bhosale', 'rani@gmail.com', '123456', '123456', '2024-07-15', 'Female', '7485972301', 'Nikhil Bhosalee', '7485972301', '2016-03-06', 'Pune', 112, 'Rani123', 25, 37, '', 1),
(22, 'Mohan', 'Mhaske', 'mohan@gmail.com', '123456', '123456', '2024-07-15', 'Male', '9874672919', 'Vinit Mhaske', '9874672919', '2020-11-12', 'Sai Sadan Bunglow,Wakad Near Sai mandir Pune 435625', 113, 'Mohan123', 25, 33, '', 1),
(23, 'Neha', 'Lingait', 'neha@gmail.com', '123456', '123456', '2024-02-07', 'Female', '8723491323', 'Omkar Lingait', '8734923711', '2015-11-07', 'Shri Chatrapati Shivaji Maharaj Rd, Pratham Reflections Society, Wakad, Pimpri-Chinchwad, Maharashtra 41105', 118, 'Neha123', 30, 46, '', 1),
(24, 'Sayali', 'Mhatre', 'sayali@gmail.com', '123456', '123456', '2024-07-08', 'Female', '987867965', 'Naresh mhatre', '8762391272', '2010-08-01', 'Shri Chatrapati Shivaji Maharaj Rd, Pratham Reflections Society, Wakad, Pimpri-Chinchwad, Maharashtra 41105', 119, 'Sayali123', 30, 52, '', 1),
(25, 'Ankita', 'Patil', 'ankita@gmail.com', '123456', '123456', '2024-07-15', 'Female', '784767023', 'Kishan Patil', '748327013', '2012-03-04', 'Shri Chatrapati Shivaji Maharaj Rd, Pratham Reflections Society, Wakad, Pimpri-Chinchwad, Maharashtra 41105', 120, 'Ankita123', 30, 49, '', 1),
(26, 'Arun', 'Thakur', 'arun@gmail.com', '123456', '123456', '2024-07-15', 'Male', '9346192390', 'Vikas Thakur', '8972941827', '2012-05-18', 'Shri Chatrapati Shivaji Maharaj Rd, Pratham Reflections Society, Wakad, Pimpri-Chinchwad, Maharashtra 411057', 121, 'Arun123', 30, 47, '', 1),
(27, 'Raj', 'M', 'raj@gmail.com', '123456', '123456', '2024-07-15', 'Male', '8934664278', 'Rohit ', '9734878199', '2016-02-14', 'At Post Thergoan Gujar Nagar Matoshree building 4512471', 122, 'Raj123', 31, 55, '', 1),
(28, 'Rohan', 'M', 'rohan@gmail.com', '123456', '123456', '2024-07-15', 'Male', '9724672468', 'Nita', '9743867923', '2017-03-22', 'At post Wakad Near Dutta mandir Sai colony 445432', 123, 'Rohan123', 31, 54, '', 1),
(29, 'Nisha', 'K', 'nisha@gmail.com', '123456', '123456', '2024-07-15', 'Female', '937857293', 'Karan', '8374882123', '2015-12-21', 'At post Thergoan PCMC Pune 445137', 124, 'Nisha123', 31, 56, '', 1),
(30, 'Priya', 'R', 'priya@gmail.com', '123456', '123456', '2024-07-15', 'Female', '927487182', 'Balkrishna', '983721847', '2011-12-12', 'AT Post Kothrudt Near Petrol Punp Radha krishna Bunglow', 125, 'Priya123', 31, 60, '', 1),
(31, 'Sachin', 'Shinde', 'sachin@gmail.com', '123456', '123456', '2024-07-15', 'Male', '998273849', 'suresh', '9723879132', '2014-11-22', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 130, 'Sachin123', 32, 67, '', 1),
(32, 'Shruti', 'M', 'shruti@gmail.com', '123456', '123456', '2024-07-15', 'Female', '927388122', 'Nita', '9217381244', '2013-12-13', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 131, 'Shruti123', 32, 68, '', 1),
(33, 'Nikhil', 'Patil', 'nikhil@gmail.com', '123456', '123456', '2024-07-15', 'Male', '9273887123', 'Karan', '8917437211', '2010-12-31', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 132, 'Nikhil123', 32, 71, '', 1),
(34, 'Rahul', 'S', 'rahul@gmail.com', '123456', '123456', '2024-07-15', 'Male', '9172371223', 'Prakash', '9273487231', '2009-12-28', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 133, 'Rahul123', 32, 72, '', 1),
(35, 'Neha', 'Patil', 'nehap@gmail.com', '123456', '123456', '2024-07-15', 'Female', '92734847', 'Ramesh', '9827487812', '2018-11-26', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038\r\nAreas served: \r\nKothrud', 140, 'Neha1234', 26, 73, '', 1),
(36, 'Akshata', 'Nazare', 'akshata@gmail.com', '123456', '123456', '2024-07-15', 'Female', '9837487389', 'Manoj', '9274878976', '2018-02-13', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 141, 'Akshata123', 26, 73, '', 1),
(37, 'Vinay', 'Mali', 'vinay@gmail.com', '123456', '123456', '2024-07-15', 'Male', '837847234', 'Arun', '8438739813', '2018-12-20', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 142, 'Vinay123', 26, 73, '', 1),
(38, 'Rohan', 'Patil', 'rohanp@gmail.com', '123456', '123456', '2024-07-15', 'Male', '9874871872', 'Nitin', '9274128478', '2018-03-05', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 143, 'Rohan1234', 26, 73, '', 1),
(39, 'Maria', 'S', 'maria@gmail.com', '123456', '123456', '2024-07-15', 'Female', '9274874289', 'JOO', '9274873489', '2020-05-21', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 149, 'Maria123', 27, 79, '', 1),
(40, 'Kevin', 'N', 'kevin@gmail.com', '123456', '123456', '2014-07-15', 'Male', '9127372873', 'Rita', '8712386124', '2020-12-29', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 150, 'Kevin123', 27, 79, '', 1),
(41, 'Joe', 'A', 'joe@gmail.com', '123456', '123456', '2024-07-15', 'Female', '983748378', 'Roy', '973487283', '2020-12-20', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 151, 'Joe123', 27, 79, '', 1),
(42, 'Roy', 'J', 'roy@gmail.com', '123456', '123456', '2024-07-15', 'Male', '927487124', 'Vina', '374872334', '2020-07-13', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 152, 'Roy123', 27, 79, '', 1),
(43, 'Komal', 'Nidan', 'komal@gmail.com', '123456', '123456', '2024-07-15', 'Female', '91278387', 'Ramesh', '7738217373', '2017-02-06', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 157, 'Komal123', 28, 91, '', 1),
(44, 'Renu', 'J', 'renu@gmail.com', '123456', '123456', '2024-07-15', 'Female', '927348729', 'Ashok', '923487334', '2018-02-12', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 158, 'Renu123', 28, 91, '', 1),
(45, 'Asha', 'K', 'asha@gmail.com', '123456', '123456', '2024-07-15', 'Female', '917238787', 'Yogesh', '9823787323', '2017-08-13', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 159, 'Asha123', 28, 91, '', 1),
(46, 'Yogesh', 'Dhumal', 'yogesh@gmail.com', '123456', '123456', '2024-07-15', 'Male', '9273817239', 'Kisan', '732643274', '2018-12-04', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 160, 'Yogesh123', 28, 91, '', 1),
(47, 'Ruta', 'P', 'ruta@gmail.com', '123456', '123456', '2024-07-15', 'Female', '988809888', 'Akshay', '9778667876', '2018-02-10', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 165, 'Ruta123', 29, 101, '', 1),
(48, 'Sneha', 'Khade', 'sneha@gmail.com', '123456', '123456', '2024-07-15', 'Female', '987897679', 'Vanita', '827387183', '2018-08-17', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 166, 'Sneha123', 29, 101, '', 1),
(49, 'Guddi', 'K', 'guddi@gmail.com', '123456', '123456', '2024-07-15', 'Female', '9872387273', 'Rani', '8974873849', '2018-05-18', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 167, 'Guddi123', 29, 99, '', 1),
(50, 'Sonu', 'J', 'sonu@gmail.com', '123456', '123456', '2024-07-15', 'Male', '9812387932', 'Rahul', '9278723422', '2017-03-18', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 168, 'Sonu123', 29, 100, '', 1),
(51, 'Sagar', 'A', 'sagar@gmail.com', '123456', '123456', '2024-07-15', 'Male', '9128738732', 'suresh', '866237613', '2015-07-14', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 173, 'Sagar123', 33, 109, '', 1),
(52, 'Nitu', 'B', 'nitu@gmail.com', '123456', '123456', '2024-07-15', 'Female', '9873487330', 'Tarun', '836476834', '2015-07-18', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 174, 'Nitu123', 33, 109, '', 1),
(53, 'RitC', 'c', 'ritu@gmail.com', '123456', '123456', '2024-07-15', 'Female', '921783891', 'Raju', '8888382242', '2018-04-23', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 175, 'Ritu123', 33, 109, '', 1),
(54, 'Swami', 'R', 'swami@gmail.com', '123456', '123456', '2024-07-15', 'Male', '812637822', 'Gopal', '8237487233', '2018-08-14', 'Sr. No. 127, MIT, Vishwashanti Gurukul School, 1A, Paud Rd, Mahaganesh Colony, Kothrud, Pune, Maharashtra 411038', 176, 'Swami123', 33, 109, '', 1),
(55, 'Venu', 'D', 'venu@gmail.com', '123456', '123456', '2024-07-15', 'Male', '9327481123', 'Renu', '673248491', '2017-07-17', 'Sangeetkar Shrikant Thakare Rd, Gananjay Society, Nalawade Baug, Kothrud, Pune, Maharashtra 411038', 182, 'Venu123', 34, 119, '', 1),
(56, 'Vidhya', 'S', 'vidhya@gmail.com', '123456', '123456', '2024-07-15', 'Female', '786568788', 'Suman', '7937481724', '2018-12-16', 'Sangeetkar Shrikant Thakare Rd, Gananjay Society, Nalawade Baug, Kothrud, Pune, Maharashtra 411038', 183, 'Vidhya123', 34, 119, '', 1),
(57, 'Suman', 'S', 'suman@gmail.com', '123456', '123456', '2024-07-15', 'Female', '872179827', 'Vikas', '837847369', '2017-06-17', 'Sangeetkar Shrikant Thakare Rd, Gananjay Society, Nalawade Baug, Kothrud, Pune, Maharashtra 411038', 184, 'Suman123', 34, 119, '', 1),
(58, 'Mangesh', 'D', 'mangesh@gmail.com', '123456', '123456', '2024-07-15', 'Male', '9723982378', 'Bhagshree', '836468223', '2018-05-27', 'Sangeetkar Shrikant Thakare Rd, Gananjay Society, Nalawade Baug, Kothrud, Pune, Maharashtra 411038', 185, 'Mangesh123', 34, 119, '', 1),
(59, 'Mira', 'A', 'mira@gmail.com', '123456', '123456', '2024-07-15', 'Female', '896778997', 'Swami', '890787669', '2016-05-14', 'NALANDA, RANJAI RESIDENCY, Lane Number 4, opp. PMT Bus Depot, Paud Road, Bhusari Colony, Kothrud, Pune, Maharashtra 411038\r\n\r\n   ', 190, 'Mira123', 35, 130, '', 1),
(60, 'Kirti', 's', 'kirti@gmail.com', '123456', '123456', '2024-07-15', 'Female', '7992919829', 'Ramesh', '9891827791', '2016-03-08', 'NALANDA, RANJAI RESIDENCY, Lane Number 4, opp. PMT Bus Depot, Paud Road, Bhusari Colony, Kothrud, Pune, Maharashtra 411038', 191, 'Kirti123', 35, 130, '', 1),
(61, 'Monica', 'S', 'monicaS@gmail.com', '123456', '123456', '2024-07-15', 'Female', '977867878', 'Rita', '778172617', '2016-06-13', 'NALANDA, RANJAI RESIDENCY, Lane Number 4, opp. PMT Bus Depot, Paud Road, Bhusari Colony, Kothrud, Pune, Maharashtra 411038', 193, 'MonicaS123', 35, 130, '', 1),
(62, 'Reha', 'D', 'reha@gmail.com', '123456', '123456', '2024-07-15', 'Female', '8929137889', 'Asha', '786678776', '2017-09-14', 'NALANDA, RANJAI RESIDENCY, Lane Number 4, opp. PMT Bus Depot, Paud Road, Bhusari Colony, Kothrud, Pune, Maharashtra 411038', 194, 'Reha123', 35, 130, '', 1),
(63, 'Rashi', 'Thomas', 'rashi@gmail.com', '123456', '123456', '2024-07-15', 'Female', '977279921', 'Rohit', '9278981167', '2013-05-16', 'Shastri Nagar, Kothrud, Pune, Maharashtra 411038', 199, 'Rashi123', 36, 142, '', 1),
(64, 'Sandy', 'Jose', 'sandy@gmail.com', '123456', '123456', '2014-07-15', 'Male', '9787896678', 'John', '898769977', '2010-12-28', 'Shastri Nagar, Kothrud, Pune, Maharashtra 411038', 200, 'Sandy123', 36, 143, '', 1),
(65, 'Ritesh', 'D', 'ritesh@gmail.com', '123456', '123456', '2024-07-15', 'Male', '9789779987', 'Vilas', '9717299977', '2010-07-15', 'Shastri Nagar, Kothrud, Pune, Maharashtra 411038', 201, 'Ritesh123', 36, 143, '', 1),
(66, 'Jenny', 'Kim', 'jenny@gmail.com', '123456', '123456', '2024-07-15', 'Female', '898128389', 'Maria', '899219387', '2010-09-16', 'Shastri Nagar, Kothrud, Pune, Maharashtra 411038', 202, 'Jenny123', 36, 143, '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_main`
--
ALTER TABLE `admin_main`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_learning_customuser_id` (`user_id`);

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
-- Indexes for table `footer_content`
--
ALTER TABLE `footer_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learnapp_homenav`
--
ALTER TABLE `learnapp_homenav`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_homenav_parent_category_id_58e6dd2a_fk_learning_` (`parent_category_id`),
  ADD KEY `learning_homenav_nav_name_124a2165` (`nav_name`);

--
-- Indexes for table `learning_admindrop`
--
ALTER TABLE `learning_admindrop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_admindrop_parent_category_id_c91df26d_fk_learning_` (`parent_category_id`);

--
-- Indexes for table `learning_adminhod`
--
ALTER TABLE `learning_adminhod`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Indexes for table `learning_adminphoto`
--
ALTER TABLE `learning_adminphoto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_admissioncards`
--
ALTER TABLE `learning_admissioncards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_admissioncarl`
--
ALTER TABLE `learning_admissioncarl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_admissioncont`
--
ALTER TABLE `learning_admissioncont`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_applogo`
--
ALTER TABLE `learning_applogo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_attendancemenu`
--
ALTER TABLE `learning_attendancemenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_attendancerecord`
--
ALTER TABLE `learning_attendancerecord`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_attendancerecord_student_id_9e33a6c7_fk_Student_id` (`student_id`);

--
-- Indexes for table `learning_attendmanagecards`
--
ALTER TABLE `learning_attendmanagecards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_attendmanagecarousel`
--
ALTER TABLE `learning_attendmanagecarousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_attendmanagecontent`
--
ALTER TABLE `learning_attendmanagecontent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_card`
--
ALTER TABLE `learning_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_cardfee`
--
ALTER TABLE `learning_cardfee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_carditems`
--
ALTER TABLE `learning_carditems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_cardpaymentfeatures`
--
ALTER TABLE `learning_cardpaymentfeatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_cards`
--
ALTER TABLE `learning_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_carousel_img`
--
ALTER TABLE `learning_carousel_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_cimage`
--
ALTER TABLE `learning_cimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_class`
--
ALTER TABLE `learning_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_class_school_id_id_ba00d6b2_fk_learning_schools_id` (`school_id_id`);

--
-- Indexes for table `learning_cls_name`
--
ALTER TABLE `learning_cls_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_cls_name_school_id_id_97f5b85f_fk_learning_schools_id` (`school_id_id`);

--
-- Indexes for table `learning_compose_message`
--
ALTER TABLE `learning_compose_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_compose_message_studentname_id_7feab311_fk_Student_id` (`studentname_id`),
  ADD KEY `learning_compose_mes_teachername_id_bbe8b2a8_fk_learning_` (`teachername_id`),
  ADD KEY `learning_compose_mes_schoolid_id_23865a5c_fk_learning_` (`schoolid_id`);

--
-- Indexes for table `learning_contactinfo`
--
ALTER TABLE `learning_contactinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_contactinfo2`
--
ALTER TABLE `learning_contactinfo2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_contactmessage`
--
ALTER TABLE `learning_contactmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_content_image`
--
ALTER TABLE `learning_content_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_course`
--
ALTER TABLE `learning_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_crfee`
--
ALTER TABLE `learning_crfee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_crpaymentfeatures`
--
ALTER TABLE `learning_crpaymentfeatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_customuser`
--
ALTER TABLE `learning_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `learning_customuser_email_5ad9da1d_uniq` (`email`),
  ADD KEY `learning_customuser_shift_id_02c91dad_fk_learning_shift_names_id` (`shift_id`);

--
-- Indexes for table `learning_customuser_groups`
--
ALTER TABLE `learning_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `learning_customuser_groups_customuser_id_group_id_439ddbd5_uniq` (`customuser_id`,`group_id`),
  ADD KEY `learning_customuser_groups_group_id_0a485cf6_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `learning_customuser_user_permissions`
--
ALTER TABLE `learning_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `learning_customuser_user_customuser_id_permission_f0a06f3f_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `learning_customuser__permission_id_ab888abf_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `learning_different_shifts`
--
ALTER TABLE `learning_different_shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_employeeloginlogout`
--
ALTER TABLE `learning_employeeloginlogout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_employeelog_employee_id_ac8e78cc_fk_learning_` (`employee_id`),
  ADD KEY `learning_employeelog_shift_id_1443b4ac_fk_learning_` (`shift_id`);

--
-- Indexes for table `learning_event`
--
ALTER TABLE `learning_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_examcards`
--
ALTER TABLE `learning_examcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_examcarl`
--
ALTER TABLE `learning_examcarl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_examcont`
--
ALTER TABLE `learning_examcont`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_excel`
--
ALTER TABLE `learning_excel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_feature`
--
ALTER TABLE `learning_feature`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_feature_plan_id_75017bdf_fk_learning_pricingplan_id` (`plan_id`);

--
-- Indexes for table `learning_fee`
--
ALTER TABLE `learning_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_fee_payment`
--
ALTER TABLE `learning_fee_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_fee_payment_schoolid_id_2b40e229_fk_learning_schools_id` (`schoolid_id`),
  ADD KEY `learning_fee_payment_student_class_id_fbd94da0_fk_Student_id` (`student_class_id`);

--
-- Indexes for table `learning_footerlink`
--
ALTER TABLE `learning_footerlink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_footerservice`
--
ALTER TABLE `learning_footerservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_hero`
--
ALTER TABLE `learning_hero`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_instructions11`
--
ALTER TABLE `learning_instructions11`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_instruction_headings`
--
ALTER TABLE `learning_instruction_headings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_lateloginrequest`
--
ALTER TABLE `learning_lateloginrequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_lateloginrequest_student_id_1a5d9060_fk_Student_id` (`student_id`);

--
-- Indexes for table `learning_latestcourse`
--
ALTER TABLE `learning_latestcourse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_leave`
--
ALTER TABLE `learning_leave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_leave_admin_id_59b15e15_fk_learning_customuser_id` (`admin_id`),
  ADD KEY `learning_leave_Leave_Type_id_8d1df301_fk_learning_leavestype_id` (`Leave_Type_id`),
  ADD KEY `learning_leave_schoolid_id_a8ecfc27_fk_learning_schools_id` (`schoolid_id`);

--
-- Indexes for table `learning_leavemanagement`
--
ALTER TABLE `learning_leavemanagement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_leavestype`
--
ALTER TABLE `learning_leavestype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_library`
--
ALTER TABLE `learning_library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_liveclasscards`
--
ALTER TABLE `learning_liveclasscards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_liveclasscarousel`
--
ALTER TABLE `learning_liveclasscarousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_liveclasscontent`
--
ALTER TABLE `learning_liveclasscontent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_logo`
--
ALTER TABLE `learning_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_meeting`
--
ALTER TABLE `learning_meeting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_meeting1`
--
ALTER TABLE `learning_meeting1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_meetlink`
--
ALTER TABLE `learning_meetlink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_menuitem`
--
ALTER TABLE `learning_menuitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_menuitem_parent_category_id_b5f0ee89_fk_learning_` (`parent_category_id`);

--
-- Indexes for table `learning_monthlyattendancesummary`
--
ALTER TABLE `learning_monthlyattendancesummary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_monthlyatte_student_id_9b98db0d_fk_Student_i` (`student_id`);

--
-- Indexes for table `learning_notification`
--
ALTER TABLE `learning_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_notification_student_id_ca1e8243_fk_Student_id` (`student_id`);

--
-- Indexes for table `learning_oauthcredentials`
--
ALTER TABLE `learning_oauthcredentials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `learning_paymentfeatures`
--
ALTER TABLE `learning_paymentfeatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_payment_form`
--
ALTER TABLE `learning_payment_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_plans`
--
ALTER TABLE `learning_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_plans1`
--
ALTER TABLE `learning_plans1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_plans2`
--
ALTER TABLE `learning_plans2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_pricingplan`
--
ALTER TABLE `learning_pricingplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_pricing_body`
--
ALTER TABLE `learning_pricing_body`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_pricing_head`
--
ALTER TABLE `learning_pricing_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_quiz_questions`
--
ALTER TABLE `learning_quiz_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_quiz_questi_class_name_id_5ac85618_fk_learning_` (`class_name_id`),
  ADD KEY `learning_quiz_questi_subject_id_4f4d0939_fk_learning_` (`subject_id`);

--
-- Indexes for table `learning_razorpaypayment`
--
ALTER TABLE `learning_razorpaypayment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_id` (`payment_id`),
  ADD KEY `learning_razorpaypay_fee_payment_id_29f0cda0_fk_learning_` (`fee_payment_id`);

--
-- Indexes for table `learning_set_timer`
--
ALTER TABLE `learning_set_timer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_set_timer_class_name_id_b8343261_fk_learning_` (`class_name_id`),
  ADD KEY `learning_set_timer_subject_id_ee5451d8_fk_learning_subject_id` (`subject_id`);

--
-- Indexes for table `learning_shift_names`
--
ALTER TABLE `learning_shift_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_sociallink`
--
ALTER TABLE `learning_sociallink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_staff`
--
ALTER TABLE `learning_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_staff_fea`
--
ALTER TABLE `learning_staff_fea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_staff_imp`
--
ALTER TABLE `learning_staff_imp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_staff_prob`
--
ALTER TABLE `learning_staff_prob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_stdclass`
--
ALTER TABLE `learning_stdclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_stdclass1`
--
ALTER TABLE `learning_stdclass1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_std_result`
--
ALTER TABLE `learning_std_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_std_result_classes_id_e24662cb_fk_learning_cls_name_id` (`classes_id`),
  ADD KEY `learning_std_result_student_id_8807713f_fk_Student_id` (`student_id`),
  ADD KEY `learning_std_result_subject_id_id_2a363641_fk_learning_` (`subject_id_id`);

--
-- Indexes for table `learning_studentnav`
--
ALTER TABLE `learning_studentnav`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_studentnav_parent_category_id_d3b73484_fk_learning_` (`parent_category_id`),
  ADD KEY `learning_studentnav_nav_name_f5a0b20b` (`nav_name`);

--
-- Indexes for table `learning_subject`
--
ALTER TABLE `learning_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_subject_school_id_id_f5fd0b99_fk_learning_schools_id` (`school_id_id`);

--
-- Indexes for table `learning_subject_class_name`
--
ALTER TABLE `learning_subject_class_name`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `learning_subject_classes_subject_id_cls_name_id_db68b5df_uniq` (`subject_id`,`cls_name_id`),
  ADD KEY `learning_subject_cla_cls_name_id_12919c91_fk_learning_` (`cls_name_id`);

--
-- Indexes for table `learning_teacherattendance`
--
ALTER TABLE `learning_teacherattendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_teachermenu`
--
ALTER TABLE `learning_teachermenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_teachermenu_parent_category_id_55b8c979_fk_learning_` (`parent_category_id`);

--
-- Indexes for table `learning_teachers`
--
ALTER TABLE `learning_teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`),
  ADD KEY `learning_teachers_shift_name_id_0b090936_fk_learning_` (`shift_name_id`),
  ADD KEY `learning_teachers_schoolid_id_fb81402a_fk_learning_schools_id` (`schoolid_id`);

--
-- Indexes for table `learning_teachersidebar`
--
ALTER TABLE `learning_teachersidebar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_teacherside_parent_category_id_8bcc2205_fk_learning_` (`parent_category_id`);

--
-- Indexes for table `learning_teacher_class_sub`
--
ALTER TABLE `learning_teacher_class_sub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_teacher_cla_class_name_id_23a202a3_fk_learning_` (`class_name_id`),
  ADD KEY `learning_teacher_cla_subject_id_48760edf_fk_learning_` (`subject_id`),
  ADD KEY `learning_teacher_cla_teacher_id_4f7aa970_fk_learning_` (`teacher_id`),
  ADD KEY `learning_teacher_cla_school_id_id_827eca84_fk_learning_` (`school_id_id`);

--
-- Indexes for table `learning_teacher_shifts`
--
ALTER TABLE `learning_teacher_shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_teacher_shi_facult_name_id_e641fa5f_fk_learning_` (`facult_name_id`),
  ADD KEY `learning_teacher_shi_shift_name_id_854080c7_fk_learning_` (`shift_name_id`);

--
-- Indexes for table `learning_text`
--
ALTER TABLE `learning_text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_timage`
--
ALTER TABLE `learning_timage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_time`
--
ALTER TABLE `learning_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_timetablecards`
--
ALTER TABLE `learning_timetablecards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_timetablecarl`
--
ALTER TABLE `learning_timetablecarl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_timetablecont`
--
ALTER TABLE `learning_timetablecont`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_topics`
--
ALTER TABLE `learning_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_t_table`
--
ALTER TABLE `learning_t_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_uploadedfile`
--
ALTER TABLE `learning_uploadedfile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_uploadedfil_parent_category_id_55ed286d_fk_learning_` (`parent_category_id`);

--
-- Indexes for table `learning_zoommeeting`
--
ALTER TABLE `learning_zoommeeting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_zoommeeting_Teacher_name_id_d3206fab_fk_learning_` (`Teacher_name_id`),
  ADD KEY `learning_zoommeeting_class_name_id_d7addf86_fk_learning_` (`class_name_id`),
  ADD KEY `learning_zoommeeting_mystudent_id_d92413fe_fk_Student_id` (`mystudent_id`),
  ADD KEY `learning_zoommeeting_school_id_4724f0b9_fk_learning_schools_id` (`school_id`),
  ADD KEY `learning_zoommeeting_subject_name_id_a5569716_fk_learning_` (`subject_name_id`);

--
-- Indexes for table `lms`
--
ALTER TABLE `lms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usernumber_id` (`usernumber_id`),
  ADD KEY `learning_schools_plan_id_id_177ce36b_fk_learning_pricingplan_id` (`plan_id_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Student_mystudent_id_dbb0be39_fk_learning_customuser_id` (`mystudent_id`),
  ADD KEY `Student_schoolid_id_fafd6df1_fk_learning_schools_id` (`schoolid_id`),
  ADD KEY `Student_className_id_4f7e7bbe_fk_learning_cls_name_id` (`className_id`),
  ADD KEY `Student_shift_id_d1bb26e5_fk_learning_shift_names_id` (`shift_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_main`
--
ALTER TABLE `admin_main`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `footer_content`
--
ALTER TABLE `footer_content`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `learnapp_homenav`
--
ALTER TABLE `learnapp_homenav`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `learning_admindrop`
--
ALTER TABLE `learning_admindrop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `learning_adminhod`
--
ALTER TABLE `learning_adminhod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_adminphoto`
--
ALTER TABLE `learning_adminphoto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `learning_admissioncards`
--
ALTER TABLE `learning_admissioncards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `learning_admissioncarl`
--
ALTER TABLE `learning_admissioncarl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `learning_admissioncont`
--
ALTER TABLE `learning_admissioncont`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `learning_applogo`
--
ALTER TABLE `learning_applogo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_attendancemenu`
--
ALTER TABLE `learning_attendancemenu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `learning_attendancerecord`
--
ALTER TABLE `learning_attendancerecord`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_attendmanagecards`
--
ALTER TABLE `learning_attendmanagecards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `learning_attendmanagecarousel`
--
ALTER TABLE `learning_attendmanagecarousel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `learning_attendmanagecontent`
--
ALTER TABLE `learning_attendmanagecontent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `learning_card`
--
ALTER TABLE `learning_card`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `learning_cardfee`
--
ALTER TABLE `learning_cardfee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `learning_carditems`
--
ALTER TABLE `learning_carditems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `learning_cardpaymentfeatures`
--
ALTER TABLE `learning_cardpaymentfeatures`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `learning_cards`
--
ALTER TABLE `learning_cards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `learning_carousel_img`
--
ALTER TABLE `learning_carousel_img`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `learning_cimage`
--
ALTER TABLE `learning_cimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_class`
--
ALTER TABLE `learning_class`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `learning_cls_name`
--
ALTER TABLE `learning_cls_name`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `learning_compose_message`
--
ALTER TABLE `learning_compose_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `learning_contactinfo`
--
ALTER TABLE `learning_contactinfo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_contactinfo2`
--
ALTER TABLE `learning_contactinfo2`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_contactmessage`
--
ALTER TABLE `learning_contactmessage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `learning_content_image`
--
ALTER TABLE `learning_content_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_course`
--
ALTER TABLE `learning_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `learning_crfee`
--
ALTER TABLE `learning_crfee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `learning_crpaymentfeatures`
--
ALTER TABLE `learning_crpaymentfeatures`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `learning_customuser`
--
ALTER TABLE `learning_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `learning_customuser_groups`
--
ALTER TABLE `learning_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_customuser_user_permissions`
--
ALTER TABLE `learning_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_different_shifts`
--
ALTER TABLE `learning_different_shifts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `learning_employeeloginlogout`
--
ALTER TABLE `learning_employeeloginlogout`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `learning_event`
--
ALTER TABLE `learning_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `learning_examcards`
--
ALTER TABLE `learning_examcards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `learning_examcarl`
--
ALTER TABLE `learning_examcarl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `learning_examcont`
--
ALTER TABLE `learning_examcont`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `learning_excel`
--
ALTER TABLE `learning_excel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_feature`
--
ALTER TABLE `learning_feature`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `learning_fee`
--
ALTER TABLE `learning_fee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `learning_fee_payment`
--
ALTER TABLE `learning_fee_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `learning_footerlink`
--
ALTER TABLE `learning_footerlink`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `learning_footerservice`
--
ALTER TABLE `learning_footerservice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `learning_hero`
--
ALTER TABLE `learning_hero`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_instructions11`
--
ALTER TABLE `learning_instructions11`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_instruction_headings`
--
ALTER TABLE `learning_instruction_headings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_lateloginrequest`
--
ALTER TABLE `learning_lateloginrequest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `learning_latestcourse`
--
ALTER TABLE `learning_latestcourse`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `learning_leave`
--
ALTER TABLE `learning_leave`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `learning_leavemanagement`
--
ALTER TABLE `learning_leavemanagement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_leavestype`
--
ALTER TABLE `learning_leavestype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `learning_library`
--
ALTER TABLE `learning_library`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `learning_liveclasscards`
--
ALTER TABLE `learning_liveclasscards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `learning_liveclasscarousel`
--
ALTER TABLE `learning_liveclasscarousel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `learning_liveclasscontent`
--
ALTER TABLE `learning_liveclasscontent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `learning_logo`
--
ALTER TABLE `learning_logo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_meeting`
--
ALTER TABLE `learning_meeting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_meeting1`
--
ALTER TABLE `learning_meeting1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `learning_meetlink`
--
ALTER TABLE `learning_meetlink`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `learning_menuitem`
--
ALTER TABLE `learning_menuitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `learning_monthlyattendancesummary`
--
ALTER TABLE `learning_monthlyattendancesummary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `learning_notification`
--
ALTER TABLE `learning_notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `learning_oauthcredentials`
--
ALTER TABLE `learning_oauthcredentials`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `learning_paymentfeatures`
--
ALTER TABLE `learning_paymentfeatures`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `learning_payment_form`
--
ALTER TABLE `learning_payment_form`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_plans`
--
ALTER TABLE `learning_plans`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `learning_plans1`
--
ALTER TABLE `learning_plans1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `learning_plans2`
--
ALTER TABLE `learning_plans2`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `learning_pricingplan`
--
ALTER TABLE `learning_pricingplan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `learning_pricing_body`
--
ALTER TABLE `learning_pricing_body`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `learning_pricing_head`
--
ALTER TABLE `learning_pricing_head`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_quiz_questions`
--
ALTER TABLE `learning_quiz_questions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `learning_razorpaypayment`
--
ALTER TABLE `learning_razorpaypayment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `learning_set_timer`
--
ALTER TABLE `learning_set_timer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `learning_shift_names`
--
ALTER TABLE `learning_shift_names`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_sociallink`
--
ALTER TABLE `learning_sociallink`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_staff`
--
ALTER TABLE `learning_staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `learning_staff_fea`
--
ALTER TABLE `learning_staff_fea`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `learning_staff_imp`
--
ALTER TABLE `learning_staff_imp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `learning_staff_prob`
--
ALTER TABLE `learning_staff_prob`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `learning_stdclass`
--
ALTER TABLE `learning_stdclass`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=982;

--
-- AUTO_INCREMENT for table `learning_stdclass1`
--
ALTER TABLE `learning_stdclass1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_std_result`
--
ALTER TABLE `learning_std_result`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `learning_studentnav`
--
ALTER TABLE `learning_studentnav`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `learning_subject`
--
ALTER TABLE `learning_subject`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `learning_subject_class_name`
--
ALTER TABLE `learning_subject_class_name`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `learning_teacherattendance`
--
ALTER TABLE `learning_teacherattendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_teachermenu`
--
ALTER TABLE `learning_teachermenu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `learning_teachers`
--
ALTER TABLE `learning_teachers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `learning_teachersidebar`
--
ALTER TABLE `learning_teachersidebar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_teacher_class_sub`
--
ALTER TABLE `learning_teacher_class_sub`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `learning_teacher_shifts`
--
ALTER TABLE `learning_teacher_shifts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `learning_text`
--
ALTER TABLE `learning_text`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_timage`
--
ALTER TABLE `learning_timage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_time`
--
ALTER TABLE `learning_time`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `learning_timetablecards`
--
ALTER TABLE `learning_timetablecards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `learning_timetablecarl`
--
ALTER TABLE `learning_timetablecarl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `learning_timetablecont`
--
ALTER TABLE `learning_timetablecont`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `learning_topics`
--
ALTER TABLE `learning_topics`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_t_table`
--
ALTER TABLE `learning_t_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_uploadedfile`
--
ALTER TABLE `learning_uploadedfile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_zoommeeting`
--
ALTER TABLE `learning_zoommeeting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `lms`
--
ALTER TABLE `lms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `learnapp_homenav`
--
ALTER TABLE `learnapp_homenav`
  ADD CONSTRAINT `learning_homenav_parent_category_id_58e6dd2a_fk_learning_` FOREIGN KEY (`parent_category_id`) REFERENCES `learnapp_homenav` (`id`);

--
-- Constraints for table `learning_class`
--
ALTER TABLE `learning_class`
  ADD CONSTRAINT `learning_class_school_id_id_ba00d6b2_fk` FOREIGN KEY (`school_id_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `learning_cls_name`
--
ALTER TABLE `learning_cls_name`
  ADD CONSTRAINT `learning_cls_name_school_id_id_97f5b85f_fk` FOREIGN KEY (`school_id_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `learning_compose_message`
--
ALTER TABLE `learning_compose_message`
  ADD CONSTRAINT `learning_compose_message_schoolid_id_23865a5c_fk` FOREIGN KEY (`schoolid_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `learning_fee_payment`
--
ALTER TABLE `learning_fee_payment`
  ADD CONSTRAINT `learning_fee_payment_schoolid_id_2b40e229_fk` FOREIGN KEY (`schoolid_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `learning_lateloginrequest`
--
ALTER TABLE `learning_lateloginrequest`
  ADD CONSTRAINT `learning_lateloginrequest_student_id_1a5d9060_fk_Student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);

--
-- Constraints for table `learning_leave`
--
ALTER TABLE `learning_leave`
  ADD CONSTRAINT `learning_leave_schoolid_id_a8ecfc27_fk` FOREIGN KEY (`schoolid_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `learning_monthlyattendancesummary`
--
ALTER TABLE `learning_monthlyattendancesummary`
  ADD CONSTRAINT `learning_monthlyatte_student_id_9b98db0d_fk_Student_i` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);

--
-- Constraints for table `learning_notification`
--
ALTER TABLE `learning_notification`
  ADD CONSTRAINT `learning_notification_student_id_ca1e8243_fk_Student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);

--
-- Constraints for table `learning_subject`
--
ALTER TABLE `learning_subject`
  ADD CONSTRAINT `learning_subject_school_id_id_f5fd0b99_fk` FOREIGN KEY (`school_id_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `learning_teachers`
--
ALTER TABLE `learning_teachers`
  ADD CONSTRAINT `learning_teachers_schoolid_id_fb81402a_fk` FOREIGN KEY (`schoolid_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `learning_teacher_class_sub`
--
ALTER TABLE `learning_teacher_class_sub`
  ADD CONSTRAINT `learning_teacher_class_sub_school_id_id_827eca84_fk` FOREIGN KEY (`school_id_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `learning_zoommeeting`
--
ALTER TABLE `learning_zoommeeting`
  ADD CONSTRAINT `learning_zoommeeting_school_id_4724f0b9_fk` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `Student_schoolid_id_fafd6df1_fk` FOREIGN KEY (`schoolid_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `Student_shift_id_d1bb26e5_fk_learning_shift_names_id` FOREIGN KEY (`shift_id`) REFERENCES `learning_shift_names` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
