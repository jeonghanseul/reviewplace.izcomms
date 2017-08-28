# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: opin.xyz (MySQL 5.5.44-0ubuntu0.14.04.1)
# Database: intranet
# Generation Time: 2015-08-24 04:09:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table g5_auth
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_auth`;

CREATE TABLE `g5_auth` (
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `au_menu` varchar(20) NOT NULL DEFAULT '',
  `au_auth` set('r','w','d') NOT NULL DEFAULT '',
  PRIMARY KEY (`mb_id`,`au_menu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table g5_autosave
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_autosave`;

CREATE TABLE `g5_autosave` (
  `as_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL,
  `as_uid` bigint(20) unsigned NOT NULL,
  `as_subject` varchar(255) NOT NULL,
  `as_content` text NOT NULL,
  `as_datetime` datetime NOT NULL,
  PRIMARY KEY (`as_id`),
  UNIQUE KEY `as_uid` (`as_uid`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_autosave` WRITE;
/*!40000 ALTER TABLE `g5_autosave` DISABLE KEYS */;

INSERT INTO `g5_autosave` (`as_id`, `mb_id`, `as_uid`, `as_subject`, `as_content`, `as_datetime`)
VALUES
	(1,'soulpam',15081207212065,'123123123','132123132','2015-08-12 07:22:20'),
	(2,'admin',15081722284111,'1팀 테스트 제품','이글을 진행으로 복사한다\n\n[이 게시물은 최고관리자님에 의해 2015-08-17 22:27:13 등록에서 복사 됨]','2015-08-17 22:29:41');

/*!40000 ALTER TABLE `g5_autosave` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_board
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_board`;

CREATE TABLE `g5_board` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `bo_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `bo_admin` varchar(255) NOT NULL DEFAULT '',
  `bo_list_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_write_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_reply_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_comment_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_upload_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_download_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_html_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_link_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_delete` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_modify` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_point` int(11) NOT NULL DEFAULT '0',
  `bo_write_point` int(11) NOT NULL DEFAULT '0',
  `bo_comment_point` int(11) NOT NULL DEFAULT '0',
  `bo_download_point` int(11) NOT NULL DEFAULT '0',
  `bo_use_category` tinyint(4) NOT NULL DEFAULT '0',
  `bo_category_list` text NOT NULL,
  `bo_use_sideview` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_file_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_secret` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_dhtml_editor` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_rss_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_good` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_nogood` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_name` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_ip_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_file` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_table_width` int(11) NOT NULL DEFAULT '0',
  `bo_subject_len` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_subject_len` int(11) NOT NULL DEFAULT '0',
  `bo_page_rows` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `bo_new` int(11) NOT NULL DEFAULT '0',
  `bo_hot` int(11) NOT NULL DEFAULT '0',
  `bo_image_width` int(11) NOT NULL DEFAULT '0',
  `bo_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_include_head` varchar(255) NOT NULL DEFAULT '',
  `bo_include_tail` varchar(255) NOT NULL DEFAULT '',
  `bo_content_head` text NOT NULL,
  `bo_mobile_content_head` text NOT NULL,
  `bo_content_tail` text NOT NULL,
  `bo_mobile_content_tail` text NOT NULL,
  `bo_insert_content` text NOT NULL,
  `bo_gallery_cols` int(11) NOT NULL DEFAULT '0',
  `bo_gallery_width` int(11) NOT NULL DEFAULT '0',
  `bo_gallery_height` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_gallery_width` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_gallery_height` int(11) NOT NULL DEFAULT '0',
  `bo_upload_size` int(11) NOT NULL DEFAULT '0',
  `bo_reply_order` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_search` tinyint(4) NOT NULL DEFAULT '0',
  `bo_order` int(11) NOT NULL DEFAULT '0',
  `bo_count_write` int(11) NOT NULL DEFAULT '0',
  `bo_count_comment` int(11) NOT NULL DEFAULT '0',
  `bo_write_min` int(11) NOT NULL DEFAULT '0',
  `bo_write_max` int(11) NOT NULL DEFAULT '0',
  `bo_comment_min` int(11) NOT NULL DEFAULT '0',
  `bo_comment_max` int(11) NOT NULL DEFAULT '0',
  `bo_notice` text NOT NULL,
  `bo_upload_count` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_email` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_cert` enum('','cert','adult','hp-cert','hp-adult') NOT NULL DEFAULT '',
  `bo_use_sns` tinyint(4) NOT NULL DEFAULT '0',
  `bo_sort_field` varchar(255) NOT NULL DEFAULT '',
  `bo_1_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_2_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_3_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_4_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_5_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_6_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_7_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_8_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_9_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_10_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_1` varchar(255) NOT NULL DEFAULT '',
  `bo_2` varchar(255) NOT NULL DEFAULT '',
  `bo_3` varchar(255) NOT NULL DEFAULT '',
  `bo_4` varchar(255) NOT NULL DEFAULT '',
  `bo_5` varchar(255) NOT NULL DEFAULT '',
  `bo_6` varchar(255) NOT NULL DEFAULT '',
  `bo_7` varchar(255) NOT NULL DEFAULT '',
  `bo_8` varchar(255) NOT NULL DEFAULT '',
  `bo_9` varchar(255) NOT NULL DEFAULT '',
  `bo_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`bo_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_board` WRITE;
/*!40000 ALTER TABLE `g5_board` DISABLE KEYS */;

INSERT INTO `g5_board` (`bo_table`, `gr_id`, `bo_subject`, `bo_mobile_subject`, `bo_device`, `bo_admin`, `bo_list_level`, `bo_read_level`, `bo_write_level`, `bo_reply_level`, `bo_comment_level`, `bo_upload_level`, `bo_download_level`, `bo_html_level`, `bo_link_level`, `bo_count_delete`, `bo_count_modify`, `bo_read_point`, `bo_write_point`, `bo_comment_point`, `bo_download_point`, `bo_use_category`, `bo_category_list`, `bo_use_sideview`, `bo_use_file_content`, `bo_use_secret`, `bo_use_dhtml_editor`, `bo_use_rss_view`, `bo_use_good`, `bo_use_nogood`, `bo_use_name`, `bo_use_signature`, `bo_use_ip_view`, `bo_use_list_view`, `bo_use_list_file`, `bo_use_list_content`, `bo_table_width`, `bo_subject_len`, `bo_mobile_subject_len`, `bo_page_rows`, `bo_mobile_page_rows`, `bo_new`, `bo_hot`, `bo_image_width`, `bo_skin`, `bo_mobile_skin`, `bo_include_head`, `bo_include_tail`, `bo_content_head`, `bo_mobile_content_head`, `bo_content_tail`, `bo_mobile_content_tail`, `bo_insert_content`, `bo_gallery_cols`, `bo_gallery_width`, `bo_gallery_height`, `bo_mobile_gallery_width`, `bo_mobile_gallery_height`, `bo_upload_size`, `bo_reply_order`, `bo_use_search`, `bo_order`, `bo_count_write`, `bo_count_comment`, `bo_write_min`, `bo_write_max`, `bo_comment_min`, `bo_comment_max`, `bo_notice`, `bo_upload_count`, `bo_use_email`, `bo_use_cert`, `bo_use_sns`, `bo_sort_field`, `bo_1_subj`, `bo_2_subj`, `bo_3_subj`, `bo_4_subj`, `bo_5_subj`, `bo_6_subj`, `bo_7_subj`, `bo_8_subj`, `bo_9_subj`, `bo_10_subj`, `bo_1`, `bo_2`, `bo_3`, `bo_4`, `bo_5`, `bo_6`, `bo_7`, `bo_8`, `bo_9`, `bo_10`)
VALUES
	('1team_r','1team','진행','','both','soulpam|8sk1983|izweb',1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,'제품|체험|기자단',0,0,2,0,0,0,0,0,0,0,0,0,0,100,60,30,15,15,24,100,600,'basic','basic','_head.php','_tail.php','','','','','',4,174,124,125,100,1048576,1,1,0,2,0,0,0,0,0,'',2,0,'',0,'','','','','','','','','','','','','','','','','','','','',''),
	('1team_block','1team','블랙리스트','블랙리스트','both','we4242|8sk1983|izweb',1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,'블럭',0,0,0,0,0,0,0,0,0,0,0,0,0,100,60,30,15,15,24,100,600,'basic_block','basic','_head.php','_tail.php','','','','','',4,174,124,125,100,1048576,1,1,0,0,0,0,0,0,0,'',2,0,'',0,'','','','','','','','','','','','','','','','','','','','',''),
	('1team_m','1team','수정','','both','we4242|8sk1983|izweb',1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,100,60,30,15,15,24,100,600,'basic_qna','basic','_head.php','_tail.php','','','','','',4,174,124,125,100,1048576,1,1,0,1,0,0,0,0,0,'',2,0,'',0,'wr_datetime desc','','','','','','','','','','','','','','','','','','','',''),
	('1team_e','1team','종료','','both','we4242|8sk1983|izweb',1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,'제품|체험|기자단',0,0,2,0,0,0,0,0,0,0,0,0,0,100,60,30,15,15,24,100,600,'basic','basic','_head.php','_tail.php','','','','','',4,174,124,125,100,1048576,1,1,1000,2,0,0,0,0,0,'',2,0,'',0,'','','','','','','','','','','','','','','','','','','','',''),
	('1team_w','1team','등록','','both','we4242|8sk1983|izweb',1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,'제품|체험|기자단',0,0,2,0,0,0,0,0,0,0,0,0,0,100,60,30,15,15,24,100,600,'basic_qna','basic','_head.php','_tail.php','','','','','',4,174,124,125,100,1048576,1,1,0,6,0,0,0,0,0,'',2,0,'',0,'wr_datetime desc','','','','','','','','','','','','','','','','','','','','');

/*!40000 ALTER TABLE `g5_board` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_board_file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_board_file`;

CREATE TABLE `g5_board_file` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `bf_no` int(11) NOT NULL DEFAULT '0',
  `bf_source` varchar(255) NOT NULL DEFAULT '',
  `bf_file` varchar(255) NOT NULL DEFAULT '',
  `bf_download` int(11) NOT NULL,
  `bf_content` text NOT NULL,
  `bf_filesize` int(11) NOT NULL DEFAULT '0',
  `bf_width` int(11) NOT NULL DEFAULT '0',
  `bf_height` smallint(6) NOT NULL DEFAULT '0',
  `bf_type` tinyint(4) NOT NULL DEFAULT '0',
  `bf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`bo_table`,`wr_id`,`bf_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table g5_board_good
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_board_good`;

CREATE TABLE `g5_board_good` (
  `bg_id` int(11) NOT NULL AUTO_INCREMENT,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bg_flag` varchar(255) NOT NULL DEFAULT '',
  `bg_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`bg_id`),
  UNIQUE KEY `fkey1` (`bo_table`,`wr_id`,`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table g5_board_new
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_board_new`;

CREATE TABLE `g5_board_new` (
  `bn_id` int(11) NOT NULL AUTO_INCREMENT,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `bn_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`bn_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_board_new` WRITE;
/*!40000 ALTER TABLE `g5_board_new` DISABLE KEYS */;

INSERT INTO `g5_board_new` (`bn_id`, `bo_table`, `wr_id`, `wr_parent`, `bn_datetime`, `mb_id`)
VALUES
	(43,'1team_r',65,65,'2015-08-23 15:34:46','luvsweater'),
	(47,'1team_m',3,3,'2015-08-23 15:55:30','luvsweater'),
	(45,'1team_w',24,24,'2015-08-23 15:36:41','we4242'),
	(41,'1team_w',20,20,'2015-08-23 15:34:07','lsw880'),
	(42,'1team_w',21,21,'2015-08-23 15:34:26','izweb'),
	(40,'1team_w',19,19,'2015-08-23 15:27:09','mile03'),
	(48,'1team_w',26,26,'2015-08-23 16:00:37','mile03'),
	(49,'1team_w',27,27,'2015-08-24 09:47:37','mile03'),
	(50,'1team_e',52,52,'2015-08-24 11:00:07','admin');

/*!40000 ALTER TABLE `g5_board_new` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_cert_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_cert_history`;

CREATE TABLE `g5_cert_history` (
  `cr_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `cr_company` varchar(255) NOT NULL DEFAULT '',
  `cr_method` varchar(255) NOT NULL DEFAULT '',
  `cr_ip` varchar(255) NOT NULL DEFAULT '',
  `cr_date` date NOT NULL DEFAULT '0000-00-00',
  `cr_time` time NOT NULL DEFAULT '00:00:00',
  PRIMARY KEY (`cr_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table g5_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_config`;

CREATE TABLE `g5_config` (
  `cf_title` varchar(255) NOT NULL DEFAULT '',
  `cf_theme` varchar(255) NOT NULL DEFAULT '',
  `cf_admin` varchar(255) NOT NULL DEFAULT '',
  `cf_admin_email` varchar(255) NOT NULL DEFAULT '',
  `cf_admin_email_name` varchar(255) NOT NULL DEFAULT '',
  `cf_add_script` text NOT NULL,
  `cf_use_point` tinyint(4) NOT NULL DEFAULT '0',
  `cf_point_term` int(11) NOT NULL DEFAULT '0',
  `cf_use_copy_log` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_email_certify` tinyint(4) NOT NULL DEFAULT '0',
  `cf_login_point` int(11) NOT NULL DEFAULT '0',
  `cf_cut_name` tinyint(4) NOT NULL DEFAULT '0',
  `cf_nick_modify` int(11) NOT NULL DEFAULT '0',
  `cf_new_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_new_rows` int(11) NOT NULL DEFAULT '0',
  `cf_search_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_connect_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_faq_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_read_point` int(11) NOT NULL DEFAULT '0',
  `cf_write_point` int(11) NOT NULL DEFAULT '0',
  `cf_comment_point` int(11) NOT NULL DEFAULT '0',
  `cf_download_point` int(11) NOT NULL DEFAULT '0',
  `cf_write_pages` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_pages` int(11) NOT NULL DEFAULT '0',
  `cf_link_target` varchar(255) NOT NULL DEFAULT '',
  `cf_delay_sec` int(11) NOT NULL DEFAULT '0',
  `cf_filter` text NOT NULL,
  `cf_possible_ip` text NOT NULL,
  `cf_intercept_ip` text NOT NULL,
  `cf_analytics` text NOT NULL,
  `cf_add_meta` text NOT NULL,
  `cf_syndi_token` varchar(255) NOT NULL,
  `cf_syndi_except` text NOT NULL,
  `cf_member_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_use_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_point` int(11) NOT NULL DEFAULT '0',
  `cf_icon_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_recommend` tinyint(4) NOT NULL DEFAULT '0',
  `cf_recommend_point` int(11) NOT NULL DEFAULT '0',
  `cf_leave_day` int(11) NOT NULL DEFAULT '0',
  `cf_search_part` int(11) NOT NULL DEFAULT '0',
  `cf_email_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_group_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_board_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_write` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_comment_all` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_po_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_prohibit_id` text NOT NULL,
  `cf_prohibit_email` text NOT NULL,
  `cf_new_del` int(11) NOT NULL DEFAULT '0',
  `cf_memo_del` int(11) NOT NULL DEFAULT '0',
  `cf_visit_del` int(11) NOT NULL DEFAULT '0',
  `cf_popular_del` int(11) NOT NULL DEFAULT '0',
  `cf_optimize_date` date NOT NULL DEFAULT '0000-00-00',
  `cf_use_member_icon` tinyint(4) NOT NULL DEFAULT '0',
  `cf_member_icon_size` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_width` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_height` int(11) NOT NULL DEFAULT '0',
  `cf_login_minutes` int(11) NOT NULL DEFAULT '0',
  `cf_image_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_flash_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_movie_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_formmail_is_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_page_rows` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `cf_visit` varchar(255) NOT NULL DEFAULT '',
  `cf_max_po_id` int(11) NOT NULL DEFAULT '0',
  `cf_stipulation` text NOT NULL,
  `cf_privacy` text NOT NULL,
  `cf_open_modify` int(11) NOT NULL DEFAULT '0',
  `cf_memo_send_point` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_new_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_search_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_connect_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_faq_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_member_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_captcha_mp3` varchar(255) NOT NULL DEFAULT '',
  `cf_editor` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_cert_ipin` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_hp` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcb_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcp_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mid` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mert_key` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_limit` int(11) NOT NULL DEFAULT '0',
  `cf_cert_req` tinyint(4) NOT NULL DEFAULT '0',
  `cf_sms_use` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_id` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_pw` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_ip` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_port` varchar(255) NOT NULL DEFAULT '',
  `cf_googl_shorturl_apikey` varchar(255) NOT NULL DEFAULT '',
  `cf_facebook_appid` varchar(255) NOT NULL,
  `cf_facebook_secret` varchar(255) NOT NULL,
  `cf_twitter_key` varchar(255) NOT NULL,
  `cf_twitter_secret` varchar(255) NOT NULL,
  `cf_kakao_js_apikey` varchar(255) NOT NULL,
  `cf_1_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_2_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_3_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_4_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_5_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_6_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_7_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_8_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_9_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_10_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_1` varchar(255) NOT NULL DEFAULT '',
  `cf_2` varchar(255) NOT NULL DEFAULT '',
  `cf_3` varchar(255) NOT NULL DEFAULT '',
  `cf_4` varchar(255) NOT NULL DEFAULT '',
  `cf_5` varchar(255) NOT NULL DEFAULT '',
  `cf_6` varchar(255) NOT NULL DEFAULT '',
  `cf_7` varchar(255) NOT NULL DEFAULT '',
  `cf_8` varchar(255) NOT NULL DEFAULT '',
  `cf_9` varchar(255) NOT NULL DEFAULT '',
  `cf_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_config` WRITE;
/*!40000 ALTER TABLE `g5_config` DISABLE KEYS */;

INSERT INTO `g5_config` (`cf_title`, `cf_theme`, `cf_admin`, `cf_admin_email`, `cf_admin_email_name`, `cf_add_script`, `cf_use_point`, `cf_point_term`, `cf_use_copy_log`, `cf_use_email_certify`, `cf_login_point`, `cf_cut_name`, `cf_nick_modify`, `cf_new_skin`, `cf_new_rows`, `cf_search_skin`, `cf_connect_skin`, `cf_faq_skin`, `cf_read_point`, `cf_write_point`, `cf_comment_point`, `cf_download_point`, `cf_write_pages`, `cf_mobile_pages`, `cf_link_target`, `cf_delay_sec`, `cf_filter`, `cf_possible_ip`, `cf_intercept_ip`, `cf_analytics`, `cf_add_meta`, `cf_syndi_token`, `cf_syndi_except`, `cf_member_skin`, `cf_use_homepage`, `cf_req_homepage`, `cf_use_tel`, `cf_req_tel`, `cf_use_hp`, `cf_req_hp`, `cf_use_addr`, `cf_req_addr`, `cf_use_signature`, `cf_req_signature`, `cf_use_profile`, `cf_req_profile`, `cf_register_level`, `cf_register_point`, `cf_icon_level`, `cf_use_recommend`, `cf_recommend_point`, `cf_leave_day`, `cf_search_part`, `cf_email_use`, `cf_email_wr_super_admin`, `cf_email_wr_group_admin`, `cf_email_wr_board_admin`, `cf_email_wr_write`, `cf_email_wr_comment_all`, `cf_email_mb_super_admin`, `cf_email_mb_member`, `cf_email_po_super_admin`, `cf_prohibit_id`, `cf_prohibit_email`, `cf_new_del`, `cf_memo_del`, `cf_visit_del`, `cf_popular_del`, `cf_optimize_date`, `cf_use_member_icon`, `cf_member_icon_size`, `cf_member_icon_width`, `cf_member_icon_height`, `cf_login_minutes`, `cf_image_extension`, `cf_flash_extension`, `cf_movie_extension`, `cf_formmail_is_member`, `cf_page_rows`, `cf_mobile_page_rows`, `cf_visit`, `cf_max_po_id`, `cf_stipulation`, `cf_privacy`, `cf_open_modify`, `cf_memo_send_point`, `cf_mobile_new_skin`, `cf_mobile_search_skin`, `cf_mobile_connect_skin`, `cf_mobile_faq_skin`, `cf_mobile_member_skin`, `cf_captcha_mp3`, `cf_editor`, `cf_cert_use`, `cf_cert_ipin`, `cf_cert_hp`, `cf_cert_kcb_cd`, `cf_cert_kcp_cd`, `cf_lg_mid`, `cf_lg_mert_key`, `cf_cert_limit`, `cf_cert_req`, `cf_sms_use`, `cf_icode_id`, `cf_icode_pw`, `cf_icode_server_ip`, `cf_icode_server_port`, `cf_googl_shorturl_apikey`, `cf_facebook_appid`, `cf_facebook_secret`, `cf_twitter_key`, `cf_twitter_secret`, `cf_kakao_js_apikey`, `cf_1_subj`, `cf_2_subj`, `cf_3_subj`, `cf_4_subj`, `cf_5_subj`, `cf_6_subj`, `cf_7_subj`, `cf_8_subj`, `cf_9_subj`, `cf_10_subj`, `cf_1`, `cf_2`, `cf_3`, `cf_4`, `cf_5`, `cf_6`, `cf_7`, `cf_8`, `cf_9`, `cf_10`)
VALUES
	('그누보드5','basic','admin','help@reviewplace.co.kr','리뷰플레이스','',1,0,1,0,100,15,60,'basic',15,'basic','basic','basic',0,0,0,0,10,5,'_blank',30,'18아,18놈,18새끼,18년,18뇬,18노,18것,18넘,개년,개놈,개뇬,개새,개색끼,개세끼,개세이,개쉐이,개쉑,개쉽,개시키,개자식,개좆,게색기,게색끼,광뇬,뇬,눈깔,뉘미럴,니귀미,니기미,니미,도촬,되질래,뒈져라,뒈진다,디져라,디진다,디질래,병쉰,병신,뻐큐,뻑큐,뽁큐,삐리넷,새꺄,쉬발,쉬밸,쉬팔,쉽알,스패킹,스팽,시벌,시부랄,시부럴,시부리,시불,시브랄,시팍,시팔,시펄,실밸,십8,십쌔,십창,싶알,쌉년,썅놈,쌔끼,쌩쑈,썅,써벌,썩을년,쎄꺄,쎄엑,쓰바,쓰발,쓰벌,쓰팔,씨8,씨댕,씨바,씨발,씨뱅,씨봉알,씨부랄,씨부럴,씨부렁,씨부리,씨불,씨브랄,씨빠,씨빨,씨뽀랄,씨팍,씨팔,씨펄,씹,아가리,아갈이,엄창,접년,잡놈,재랄,저주글,조까,조빠,조쟁이,조지냐,조진다,조질래,존나,존니,좀물,좁년,좃,좆,좇,쥐랄,쥐롤,쥬디,지랄,지럴,지롤,지미랄,쫍빱,凸,퍽큐,뻑큐,빠큐,ㅅㅂㄹㅁ','','','','','','','basic',0,0,0,0,0,0,0,0,0,0,0,0,2,1000,2,0,0,30,10000,1,0,0,0,0,0,0,0,0,'admin,administrator,관리자,운영자,어드민,주인장,webmaster,웹마스터,sysop,시삽,시샵,manager,매니저,메니저,root,루트,su,guest,방문객','',30,180,180,180,'2015-08-24',2,5000,22,22,10,'gif|jpg|jpeg|png','swf','asx|asf|wmv|wma|mpg|mpeg|mov|avi|mp3',1,15,15,'오늘:1,어제:4,최대:8,전체:39',0,'해당 홈페이지에 맞는 회원가입약관을 입력합니다.','해당 홈페이지에 맞는 개인정보처리방침을 입력합니다.',0,500,'basic','basic','basic','basic','basic','basic','smarteditor2',0,'','','','','','',2,0,'','','','211.172.232.124','7295','','','','','','','','','','','','','','','','','','','','','','','','','','');

/*!40000 ALTER TABLE `g5_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_content`;

CREATE TABLE `g5_content` (
  `co_id` varchar(20) NOT NULL DEFAULT '',
  `co_html` tinyint(4) NOT NULL DEFAULT '0',
  `co_subject` varchar(255) NOT NULL DEFAULT '',
  `co_content` longtext NOT NULL,
  `co_mobile_content` longtext NOT NULL,
  `co_skin` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `co_tag_filter_use` tinyint(4) NOT NULL DEFAULT '0',
  `co_hit` int(11) NOT NULL DEFAULT '0',
  `co_include_head` varchar(255) NOT NULL,
  `co_include_tail` varchar(255) NOT NULL,
  PRIMARY KEY (`co_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_content` WRITE;
/*!40000 ALTER TABLE `g5_content` DISABLE KEYS */;

INSERT INTO `g5_content` (`co_id`, `co_html`, `co_subject`, `co_content`, `co_mobile_content`, `co_skin`, `co_mobile_skin`, `co_tag_filter_use`, `co_hit`, `co_include_head`, `co_include_tail`)
VALUES
	('company',1,'회사소개','<p align=center><b>회사소개에 대한 내용을 입력하십시오.</b></p>','','','',0,0,'',''),
	('privacy',1,'개인정보 처리방침','<p align=center><b>개인정보 처리방침에 대한 내용을 입력하십시오.</b></p>','','','',0,0,'',''),
	('provision',1,'서비스 이용약관','<p align=center><b>서비스 이용약관에 대한 내용을 입력하십시오.</b></p>','','','',0,0,'','');

/*!40000 ALTER TABLE `g5_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_faq
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_faq`;

CREATE TABLE `g5_faq` (
  `fa_id` int(11) NOT NULL AUTO_INCREMENT,
  `fm_id` int(11) NOT NULL DEFAULT '0',
  `fa_subject` text NOT NULL,
  `fa_content` text NOT NULL,
  `fa_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fa_id`),
  KEY `fm_id` (`fm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table g5_faq_master
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_faq_master`;

CREATE TABLE `g5_faq_master` (
  `fm_id` int(11) NOT NULL AUTO_INCREMENT,
  `fm_subject` varchar(255) NOT NULL DEFAULT '',
  `fm_head_html` text NOT NULL,
  `fm_tail_html` text NOT NULL,
  `fm_mobile_head_html` text NOT NULL,
  `fm_mobile_tail_html` text NOT NULL,
  `fm_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_faq_master` WRITE;
/*!40000 ALTER TABLE `g5_faq_master` DISABLE KEYS */;

INSERT INTO `g5_faq_master` (`fm_id`, `fm_subject`, `fm_head_html`, `fm_tail_html`, `fm_mobile_head_html`, `fm_mobile_tail_html`, `fm_order`)
VALUES
	(1,'자주하시는 질문','','','','',0);

/*!40000 ALTER TABLE `g5_faq_master` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_group`;

CREATE TABLE `g5_group` (
  `gr_id` varchar(10) NOT NULL DEFAULT '',
  `gr_subject` varchar(255) NOT NULL DEFAULT '',
  `gr_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `gr_admin` varchar(255) NOT NULL DEFAULT '',
  `gr_use_access` tinyint(4) NOT NULL DEFAULT '0',
  `gr_order` int(11) NOT NULL DEFAULT '0',
  `gr_1_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_2_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_3_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_4_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_5_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_6_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_7_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_8_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_9_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_10_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_1` varchar(255) NOT NULL DEFAULT '',
  `gr_2` varchar(255) NOT NULL DEFAULT '',
  `gr_3` varchar(255) NOT NULL DEFAULT '',
  `gr_4` varchar(255) NOT NULL DEFAULT '',
  `gr_5` varchar(255) NOT NULL DEFAULT '',
  `gr_6` varchar(255) NOT NULL DEFAULT '',
  `gr_7` varchar(255) NOT NULL DEFAULT '',
  `gr_8` varchar(255) NOT NULL DEFAULT '',
  `gr_9` varchar(255) NOT NULL DEFAULT '',
  `gr_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_group` WRITE;
/*!40000 ALTER TABLE `g5_group` DISABLE KEYS */;

INSERT INTO `g5_group` (`gr_id`, `gr_subject`, `gr_device`, `gr_admin`, `gr_use_access`, `gr_order`, `gr_1_subj`, `gr_2_subj`, `gr_3_subj`, `gr_4_subj`, `gr_5_subj`, `gr_6_subj`, `gr_7_subj`, `gr_8_subj`, `gr_9_subj`, `gr_10_subj`, `gr_1`, `gr_2`, `gr_3`, `gr_4`, `gr_5`, `gr_6`, `gr_7`, `gr_8`, `gr_9`, `gr_10`)
VALUES
	('1team','1팀','both','soulpam|we4242|sk1983|izweb',0,0,'','','','','','','','','','','','','','','','','','','','');

/*!40000 ALTER TABLE `g5_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_group_member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_group_member`;

CREATE TABLE `g5_group_member` (
  `gm_id` int(11) NOT NULL AUTO_INCREMENT,
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `gm_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`gm_id`),
  KEY `gr_id` (`gr_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table g5_login
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_login`;

CREATE TABLE `g5_login` (
  `lo_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `lo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lo_location` text NOT NULL,
  `lo_url` text NOT NULL,
  PRIMARY KEY (`lo_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_login` WRITE;
/*!40000 ALTER TABLE `g5_login` DISABLE KEYS */;

INSERT INTO `g5_login` (`lo_ip`, `mb_id`, `lo_datetime`, `lo_location`, `lo_url`)
VALUES
	('222.112.8.156','admin','2015-08-24 11:10:57','등록 글쓰기','');

/*!40000 ALTER TABLE `g5_login` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_mail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_mail`;

CREATE TABLE `g5_mail` (
  `ma_id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_subject` varchar(255) NOT NULL DEFAULT '',
  `ma_content` mediumtext NOT NULL,
  `ma_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ma_ip` varchar(255) NOT NULL DEFAULT '',
  `ma_last_option` text NOT NULL,
  PRIMARY KEY (`ma_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table g5_member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_member`;

CREATE TABLE `g5_member` (
  `mb_no` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_password` varchar(255) NOT NULL DEFAULT '',
  `mb_name` varchar(255) NOT NULL DEFAULT '',
  `mb_nick` varchar(255) NOT NULL DEFAULT '',
  `mb_nick_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_email` varchar(255) NOT NULL DEFAULT '',
  `mb_homepage` varchar(255) NOT NULL DEFAULT '',
  `mb_level` tinyint(4) NOT NULL DEFAULT '0',
  `mb_sex` char(1) NOT NULL DEFAULT '',
  `mb_birth` varchar(255) NOT NULL DEFAULT '',
  `mb_tel` varchar(255) NOT NULL DEFAULT '',
  `mb_hp` varchar(255) NOT NULL DEFAULT '',
  `mb_certify` varchar(20) NOT NULL DEFAULT '',
  `mb_adult` tinyint(4) NOT NULL DEFAULT '0',
  `mb_dupinfo` varchar(255) NOT NULL DEFAULT '',
  `mb_zip1` char(3) NOT NULL DEFAULT '',
  `mb_zip2` char(3) NOT NULL DEFAULT '',
  `mb_addr1` varchar(255) NOT NULL DEFAULT '',
  `mb_addr2` varchar(255) NOT NULL DEFAULT '',
  `mb_addr3` varchar(255) NOT NULL DEFAULT '',
  `mb_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `mb_signature` text NOT NULL,
  `mb_recommend` varchar(255) NOT NULL DEFAULT '',
  `mb_point` int(11) NOT NULL DEFAULT '0',
  `mb_today_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_login_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_leave_date` varchar(8) NOT NULL DEFAULT '',
  `mb_intercept_date` varchar(8) NOT NULL DEFAULT '',
  `mb_email_certify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_memo` text NOT NULL,
  `mb_lost_certify` varchar(255) NOT NULL,
  `mb_mailling` tinyint(4) NOT NULL DEFAULT '0',
  `mb_sms` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_profile` text NOT NULL,
  `mb_memo_call` varchar(255) NOT NULL DEFAULT '',
  `mb_1` varchar(255) NOT NULL DEFAULT '',
  `mb_2` varchar(255) NOT NULL DEFAULT '',
  `mb_3` varchar(255) NOT NULL DEFAULT '',
  `mb_4` varchar(255) NOT NULL DEFAULT '',
  `mb_5` varchar(255) NOT NULL DEFAULT '',
  `mb_6` varchar(255) NOT NULL DEFAULT '',
  `mb_7` varchar(255) NOT NULL DEFAULT '',
  `mb_8` varchar(255) NOT NULL DEFAULT '',
  `mb_9` varchar(255) NOT NULL DEFAULT '',
  `mb_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mb_no`),
  UNIQUE KEY `mb_id` (`mb_id`),
  KEY `mb_today_login` (`mb_today_login`),
  KEY `mb_datetime` (`mb_datetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_member` WRITE;
/*!40000 ALTER TABLE `g5_member` DISABLE KEYS */;

INSERT INTO `g5_member` (`mb_no`, `mb_id`, `mb_password`, `mb_name`, `mb_nick`, `mb_nick_date`, `mb_email`, `mb_homepage`, `mb_level`, `mb_sex`, `mb_birth`, `mb_tel`, `mb_hp`, `mb_certify`, `mb_adult`, `mb_dupinfo`, `mb_zip1`, `mb_zip2`, `mb_addr1`, `mb_addr2`, `mb_addr3`, `mb_addr_jibeon`, `mb_signature`, `mb_recommend`, `mb_point`, `mb_today_login`, `mb_login_ip`, `mb_datetime`, `mb_ip`, `mb_leave_date`, `mb_intercept_date`, `mb_email_certify`, `mb_memo`, `mb_lost_certify`, `mb_mailling`, `mb_sms`, `mb_open`, `mb_open_date`, `mb_profile`, `mb_memo_call`, `mb_1`, `mb_2`, `mb_3`, `mb_4`, `mb_5`, `mb_6`, `mb_7`, `mb_8`, `mb_9`, `mb_10`)
VALUES
	(1,'admin','*65F081D7C560410900AD97AA7BBB9A67F9BD0AE1','리뷰플레이스','리뷰플레이스','0000-00-00','admin@domain.com','',10,'','','','','',0,'','','','','','','','','',1300,'2015-08-24 01:29:23','121.190.155.11','2015-08-11 10:28:50','39.115.210.114','','','2015-08-11 10:28:50','','',1,0,1,'0000-00-00','','','','','','','','','','','',''),
	(2,'soulpam','*65F081D7C560410900AD97AA7BBB9A67F9BD0AE1','장진수','장진수','0000-00-00','sdfsdfsfd@sfsdfsfd.com','',1,'','','','','',0,'','','','','','','','','',800,'2015-08-23 12:53:27','61.39.33.188','2015-08-12 06:09:34','222.99.89.132','','','2015-08-12 06:09:34','','',1,0,1,'0000-00-00','','','','','','','','','','','',''),
	(3,'soulpam2','*65F081D7C560410900AD97AA7BBB9A67F9BD0AE1','장진수2','장진수2','0000-00-00','sfdsdf@wefwefwef.com','',1,'','','','','',0,'','','','','','','','','',500,'2015-08-23 12:53:44','61.39.33.188','2015-08-12 06:56:37','222.99.89.132','','','2015-08-12 06:56:37','','',1,0,1,'0000-00-00','','','','','','','','','','','',''),
	(4,'soulpam3','*65F081D7C560410900AD97AA7BBB9A67F9BD0AE1','장진수3','장진수3','0000-00-00','qwdqwd23@qwdqwd.com','',1,'','','','','',0,'','','','','','','','','',200,'2015-08-17 11:38:49','39.115.210.114','2015-08-12 06:58:47','222.99.89.132','','','2015-08-12 06:58:47','','',1,0,1,'0000-00-00','','','','','','','','','','','',''),
	(5,'sk1983','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','김선길','김선길','2015-08-21','sk1983@hanmail.net','',3,'','','','','',0,'','','','','','','','','',1300,'2015-08-24 10:52:04','222.112.8.156','2015-08-21 15:45:22','222.112.8.156','','','2015-08-21 15:45:22','','',1,0,1,'2015-08-21','','','','','','','','','','','',''),
	(6,'izweb','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','임지혜','임지혜','2015-08-21','izweb@groonet.co.kr','',1,'','','','','',0,'','','','','','','','','',1200,'2015-08-23 15:30:16','221.139.152.148','2015-08-21 15:45:29','222.112.8.156','','','2015-08-21 15:45:29','','',1,0,1,'2015-08-21','','','','','','','','','','','',''),
	(7,'qmanse','*A5BF80B01A424D755BB3D357FBF882C08D731661','김승환','김승환','2015-08-21','qmanse@nate.com','',2,'','','','','',0,'','','','','','','','','',1000,'2015-08-21 15:45:33','222.112.8.156','2015-08-21 15:45:33','222.112.8.156','','','2015-08-21 15:45:33','','',1,0,1,'2015-08-21','','','','','','','','','','','',''),
	(8,'lsw880','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','이승원','이승원','2015-08-21','lsw880@naver.com','',1,'','','','','',0,'','','','','','','','','',1100,'2015-08-23 15:33:55','221.139.152.148','2015-08-21 15:46:07','222.112.8.156','','','2015-08-21 15:46:07','','',1,0,1,'2015-08-21','','','','','','','','','','','',''),
	(9,'luvsweater','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','김연','김연','2015-08-21','luvsweaterrr@naver.com','',3,'','','','','',0,'','','','','','','','','',1100,'2015-08-23 15:34:38','221.139.152.148','2015-08-21 15:46:26','222.112.8.156','','','2015-08-21 15:46:26','','',1,0,1,'2015-08-21','','','','','','','','','','','',''),
	(10,'mile03','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','김정태','김정태','2015-08-21','rase031@naver.com','',2,'','','','','',0,'','','','','','','','','',1300,'2015-08-24 09:47:17','222.112.8.156','2015-08-21 15:48:47','222.112.8.156','','','2015-08-21 15:48:47','','',1,0,1,'2015-08-21','','','','','','','','','','','',''),
	(11,'we4242','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','김소은','김소은','2015-08-21','kkims4242@naver.com','',2,'','','','','',0,'','','','','','','','','',1300,'2015-08-24 09:31:44','222.112.8.156','2015-08-21 15:48:58','222.112.8.156','','','2015-08-21 15:48:58','','',1,0,1,'2015-08-21','','','','','','','','','','','','');

/*!40000 ALTER TABLE `g5_member` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_memo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_memo`;

CREATE TABLE `g5_memo` (
  `me_id` int(11) NOT NULL DEFAULT '0',
  `me_recv_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_read_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_memo` text NOT NULL,
  PRIMARY KEY (`me_id`),
  KEY `me_recv_mb_id` (`me_recv_mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table g5_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_menu`;

CREATE TABLE `g5_menu` (
  `me_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `me_name` varchar(255) NOT NULL DEFAULT '',
  `me_link` varchar(255) NOT NULL DEFAULT '',
  `me_target` varchar(255) NOT NULL DEFAULT '',
  `me_order` int(11) NOT NULL DEFAULT '0',
  `me_use` tinyint(4) NOT NULL DEFAULT '0',
  `me_mobile_use` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`me_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_menu` WRITE;
/*!40000 ALTER TABLE `g5_menu` DISABLE KEYS */;

INSERT INTO `g5_menu` (`me_id`, `me_code`, `me_name`, `me_link`, `me_target`, `me_order`, `me_use`, `me_mobile_use`)
VALUES
	(6,'10','1팀','http://opin.xyz/bbs/bbs/group.php?gr_id=1team','self',0,1,1),
	(7,'20','2팀','http://opin.xyz/bbs/bbs/group.php?gr_id=2team','self',0,1,1),
	(8,'30','3팀','http://opin.xyz/bbs/bbs/group.php?gr_id=3team','self',0,1,1),
	(9,'40','4팀','http://opin.xyz/bbs/bbs/group.php?gr_id=4team','self',0,1,1),
	(10,'50','5팀','http://opin.xyz/bbs/bbs/group.php?gr_id=5team','self',0,1,1);

/*!40000 ALTER TABLE `g5_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_new_win
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_new_win`;

CREATE TABLE `g5_new_win` (
  `nw_id` int(11) NOT NULL AUTO_INCREMENT,
  `nw_device` varchar(10) NOT NULL DEFAULT 'both',
  `nw_begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_disable_hours` int(11) NOT NULL DEFAULT '0',
  `nw_left` int(11) NOT NULL DEFAULT '0',
  `nw_top` int(11) NOT NULL DEFAULT '0',
  `nw_height` int(11) NOT NULL DEFAULT '0',
  `nw_width` int(11) NOT NULL DEFAULT '0',
  `nw_subject` text NOT NULL,
  `nw_content` text NOT NULL,
  `nw_content_html` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nw_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table g5_point
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_point`;

CREATE TABLE `g5_point` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `po_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `po_content` varchar(255) NOT NULL DEFAULT '',
  `po_point` int(11) NOT NULL DEFAULT '0',
  `po_use_point` int(11) NOT NULL DEFAULT '0',
  `po_expired` tinyint(4) NOT NULL DEFAULT '0',
  `po_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `po_mb_point` int(11) NOT NULL DEFAULT '0',
  `po_rel_table` varchar(20) NOT NULL DEFAULT '',
  `po_rel_id` varchar(20) NOT NULL DEFAULT '',
  `po_rel_action` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`po_id`),
  KEY `index1` (`mb_id`,`po_rel_table`,`po_rel_id`,`po_rel_action`),
  KEY `index2` (`po_expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_point` WRITE;
/*!40000 ALTER TABLE `g5_point` DISABLE KEYS */;

INSERT INTO `g5_point` (`po_id`, `mb_id`, `po_datetime`, `po_content`, `po_point`, `po_use_point`, `po_expired`, `po_expire_date`, `po_mb_point`, `po_rel_table`, `po_rel_id`, `po_rel_action`)
VALUES
	(1,'admin','2015-08-11 10:29:17','2015-08-11 첫로그인',100,0,0,'9999-12-31',100,'@login','admin','2015-08-11'),
	(2,'admin','2015-08-12 00:29:16','2015-08-12 첫로그인',100,0,0,'9999-12-31',200,'@login','admin','2015-08-12'),
	(3,'soulpam','2015-08-12 06:09:59','2015-08-12 첫로그인',100,0,0,'9999-12-31',100,'@login','soulpam','2015-08-12'),
	(4,'soulpam2','2015-08-12 06:56:51','2015-08-12 첫로그인',100,0,0,'9999-12-31',100,'@login','soulpam2','2015-08-12'),
	(5,'soulpam3','2015-08-12 06:58:57','2015-08-12 첫로그인',100,0,0,'9999-12-31',100,'@login','soulpam3','2015-08-12'),
	(6,'admin','2015-08-14 14:17:02','2015-08-14 첫로그인',100,0,0,'9999-12-31',300,'@login','admin','2015-08-14'),
	(7,'soulpam','2015-08-14 14:18:35','2015-08-14 첫로그인',100,0,0,'9999-12-31',200,'@login','soulpam','2015-08-14'),
	(8,'admin','2015-08-15 00:37:01','2015-08-15 첫로그인',100,0,0,'9999-12-31',400,'@login','admin','2015-08-15'),
	(9,'soulpam2','2015-08-16 17:00:13','2015-08-16 첫로그인',100,0,0,'9999-12-31',200,'@login','soulpam2','2015-08-16'),
	(10,'admin','2015-08-16 17:25:11','2015-08-16 첫로그인',100,0,0,'9999-12-31',500,'@login','admin','2015-08-16'),
	(11,'soulpam','2015-08-16 17:40:03','2015-08-16 첫로그인',100,0,0,'9999-12-31',300,'@login','soulpam','2015-08-16'),
	(12,'soulpam','2015-08-17 11:37:42','2015-08-17 첫로그인',100,0,0,'9999-12-31',400,'@login','soulpam','2015-08-17'),
	(13,'soulpam3','2015-08-17 11:38:49','2015-08-17 첫로그인',100,0,0,'9999-12-31',200,'@login','soulpam3','2015-08-17'),
	(14,'admin','2015-08-17 16:28:53','2015-08-17 첫로그인',100,0,0,'9999-12-31',600,'@login','admin','2015-08-17'),
	(15,'soulpam2','2015-08-17 22:15:23','2015-08-17 첫로그인',100,0,0,'9999-12-31',300,'@login','soulpam2','2015-08-17'),
	(16,'soulpam','2015-08-18 00:00:12','2015-08-18 첫로그인',100,0,0,'9999-12-31',500,'@login','soulpam','2015-08-18'),
	(17,'admin','2015-08-18 00:05:00','2015-08-18 첫로그인',100,0,0,'9999-12-31',700,'@login','admin','2015-08-18'),
	(18,'soulpam','2015-08-19 11:25:35','2015-08-19 첫로그인',100,0,0,'9999-12-31',600,'@login','soulpam','2015-08-19'),
	(19,'soulpam2','2015-08-19 12:07:00','2015-08-19 첫로그인',100,0,0,'9999-12-31',400,'@login','soulpam2','2015-08-19'),
	(20,'admin','2015-08-19 12:08:03','2015-08-19 첫로그인',100,0,0,'9999-12-31',800,'@login','admin','2015-08-19'),
	(21,'admin','2015-08-20 13:10:25','2015-08-20 첫로그인',100,0,0,'9999-12-31',900,'@login','admin','2015-08-20'),
	(22,'admin','2015-08-21 10:28:17','2015-08-21 첫로그인',100,0,0,'9999-12-31',1000,'@login','admin','2015-08-21'),
	(23,'soulpam','2015-08-21 13:13:51','2015-08-21 첫로그인',100,0,0,'9999-12-31',700,'@login','soulpam','2015-08-21'),
	(24,'sk1983','2015-08-21 15:45:22','회원가입 축하',1000,0,0,'9999-12-31',1000,'@member','sk1983','회원가입'),
	(25,'izweb','2015-08-21 15:45:29','회원가입 축하',1000,0,0,'9999-12-31',1000,'@member','izweb','회원가입'),
	(26,'qmanse','2015-08-21 15:45:33','회원가입 축하',1000,0,0,'9999-12-31',1000,'@member','qmanse','회원가입'),
	(27,'lsw880','2015-08-21 15:46:07','회원가입 축하',1000,0,0,'9999-12-31',1000,'@member','lsw880','회원가입'),
	(28,'luvsweater','2015-08-21 15:46:26','회원가입 축하',1000,0,0,'9999-12-31',1000,'@member','luvsweater','회원가입'),
	(29,'mile03','2015-08-21 15:48:47','회원가입 축하',1000,0,0,'9999-12-31',1000,'@member','mile03','회원가입'),
	(30,'we4242','2015-08-21 15:48:58','회원가입 축하',1000,0,0,'9999-12-31',1000,'@member','we4242','회원가입'),
	(31,'admin','2015-08-22 15:05:28','2015-08-22 첫로그인',100,0,0,'9999-12-31',1100,'@login','admin','2015-08-22'),
	(32,'we4242','2015-08-22 15:06:57','2015-08-22 첫로그인',100,0,0,'9999-12-31',1100,'@login','we4242','2015-08-22'),
	(33,'mile03','2015-08-22 15:08:39','2015-08-22 첫로그인',100,0,0,'9999-12-31',1100,'@login','mile03','2015-08-22'),
	(34,'izweb','2015-08-22 15:12:04','2015-08-22 첫로그인',100,0,0,'9999-12-31',1100,'@login','izweb','2015-08-22'),
	(35,'sk1983','2015-08-22 15:12:14','2015-08-22 첫로그인',100,0,0,'9999-12-31',1100,'@login','sk1983','2015-08-22'),
	(36,'admin','2015-08-23 00:50:30','2015-08-23 첫로그인',100,0,0,'9999-12-31',1200,'@login','admin','2015-08-23'),
	(37,'soulpam','2015-08-23 12:53:27','2015-08-23 첫로그인',100,0,0,'9999-12-31',800,'@login','soulpam','2015-08-23'),
	(38,'soulpam2','2015-08-23 12:53:44','2015-08-23 첫로그인',100,0,0,'9999-12-31',500,'@login','soulpam2','2015-08-23'),
	(39,'we4242','2015-08-23 15:06:53','2015-08-23 첫로그인',100,0,0,'9999-12-31',1200,'@login','we4242','2015-08-23'),
	(40,'mile03','2015-08-23 15:07:03','2015-08-23 첫로그인',100,0,0,'9999-12-31',1200,'@login','mile03','2015-08-23'),
	(41,'izweb','2015-08-23 15:30:16','2015-08-23 첫로그인',100,0,0,'9999-12-31',1200,'@login','izweb','2015-08-23'),
	(42,'sk1983','2015-08-23 15:30:30','2015-08-23 첫로그인',100,0,0,'9999-12-31',1200,'@login','sk1983','2015-08-23'),
	(43,'lsw880','2015-08-23 15:33:55','2015-08-23 첫로그인',100,0,0,'9999-12-31',1100,'@login','lsw880','2015-08-23'),
	(44,'luvsweater','2015-08-23 15:34:38','2015-08-23 첫로그인',100,0,0,'9999-12-31',1100,'@login','luvsweater','2015-08-23'),
	(45,'admin','2015-08-24 01:29:23','2015-08-24 첫로그인',100,0,0,'9999-12-31',1300,'@login','admin','2015-08-24'),
	(46,'we4242','2015-08-24 09:31:44','2015-08-24 첫로그인',100,0,0,'9999-12-31',1300,'@login','we4242','2015-08-24'),
	(47,'mile03','2015-08-24 09:47:17','2015-08-24 첫로그인',100,0,0,'9999-12-31',1300,'@login','mile03','2015-08-24'),
	(48,'sk1983','2015-08-24 10:52:04','2015-08-24 첫로그인',100,0,0,'9999-12-31',1300,'@login','sk1983','2015-08-24');

/*!40000 ALTER TABLE `g5_point` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_poll
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_poll`;

CREATE TABLE `g5_poll` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `po_subject` varchar(255) NOT NULL DEFAULT '',
  `po_poll1` varchar(255) NOT NULL DEFAULT '',
  `po_poll2` varchar(255) NOT NULL DEFAULT '',
  `po_poll3` varchar(255) NOT NULL DEFAULT '',
  `po_poll4` varchar(255) NOT NULL DEFAULT '',
  `po_poll5` varchar(255) NOT NULL DEFAULT '',
  `po_poll6` varchar(255) NOT NULL DEFAULT '',
  `po_poll7` varchar(255) NOT NULL DEFAULT '',
  `po_poll8` varchar(255) NOT NULL DEFAULT '',
  `po_poll9` varchar(255) NOT NULL DEFAULT '',
  `po_cnt1` int(11) NOT NULL DEFAULT '0',
  `po_cnt2` int(11) NOT NULL DEFAULT '0',
  `po_cnt3` int(11) NOT NULL DEFAULT '0',
  `po_cnt4` int(11) NOT NULL DEFAULT '0',
  `po_cnt5` int(11) NOT NULL DEFAULT '0',
  `po_cnt6` int(11) NOT NULL DEFAULT '0',
  `po_cnt7` int(11) NOT NULL DEFAULT '0',
  `po_cnt8` int(11) NOT NULL DEFAULT '0',
  `po_cnt9` int(11) NOT NULL DEFAULT '0',
  `po_etc` varchar(255) NOT NULL DEFAULT '',
  `po_level` tinyint(4) NOT NULL DEFAULT '0',
  `po_point` int(11) NOT NULL DEFAULT '0',
  `po_date` date NOT NULL DEFAULT '0000-00-00',
  `po_ips` mediumtext NOT NULL,
  `mb_ids` text NOT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table g5_poll_etc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_poll_etc`;

CREATE TABLE `g5_poll_etc` (
  `pc_id` int(11) NOT NULL DEFAULT '0',
  `po_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `pc_name` varchar(255) NOT NULL DEFAULT '',
  `pc_idea` varchar(255) NOT NULL DEFAULT '',
  `pc_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table g5_popular
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_popular`;

CREATE TABLE `g5_popular` (
  `pp_id` int(11) NOT NULL AUTO_INCREMENT,
  `pp_word` varchar(50) NOT NULL DEFAULT '',
  `pp_date` date NOT NULL DEFAULT '0000-00-00',
  `pp_ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pp_id`),
  UNIQUE KEY `index1` (`pp_date`,`pp_word`,`pp_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table g5_qa_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_qa_config`;

CREATE TABLE `g5_qa_config` (
  `qa_title` varchar(255) NOT NULL DEFAULT '',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_use_email` tinyint(4) NOT NULL DEFAULT '0',
  `qa_req_email` tinyint(4) NOT NULL DEFAULT '0',
  `qa_use_hp` tinyint(4) NOT NULL DEFAULT '0',
  `qa_req_hp` tinyint(4) NOT NULL DEFAULT '0',
  `qa_use_sms` tinyint(4) NOT NULL DEFAULT '0',
  `qa_send_number` varchar(255) NOT NULL DEFAULT '0',
  `qa_admin_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_admin_email` varchar(255) NOT NULL DEFAULT '',
  `qa_use_editor` tinyint(4) NOT NULL DEFAULT '0',
  `qa_subject_len` int(11) NOT NULL DEFAULT '0',
  `qa_mobile_subject_len` int(11) NOT NULL DEFAULT '0',
  `qa_page_rows` int(11) NOT NULL DEFAULT '0',
  `qa_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `qa_image_width` int(11) NOT NULL DEFAULT '0',
  `qa_upload_size` int(11) NOT NULL DEFAULT '0',
  `qa_insert_content` text NOT NULL,
  `qa_include_head` varchar(255) NOT NULL DEFAULT '',
  `qa_include_tail` varchar(255) NOT NULL DEFAULT '',
  `qa_content_head` text NOT NULL,
  `qa_content_tail` text NOT NULL,
  `qa_mobile_content_head` text NOT NULL,
  `qa_mobile_content_tail` text NOT NULL,
  `qa_1_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_2_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_3_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_4_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_5_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_qa_config` WRITE;
/*!40000 ALTER TABLE `g5_qa_config` DISABLE KEYS */;

INSERT INTO `g5_qa_config` (`qa_title`, `qa_category`, `qa_skin`, `qa_mobile_skin`, `qa_use_email`, `qa_req_email`, `qa_use_hp`, `qa_req_hp`, `qa_use_sms`, `qa_send_number`, `qa_admin_hp`, `qa_admin_email`, `qa_use_editor`, `qa_subject_len`, `qa_mobile_subject_len`, `qa_page_rows`, `qa_mobile_page_rows`, `qa_image_width`, `qa_upload_size`, `qa_insert_content`, `qa_include_head`, `qa_include_tail`, `qa_content_head`, `qa_content_tail`, `qa_mobile_content_head`, `qa_mobile_content_tail`, `qa_1_subj`, `qa_2_subj`, `qa_3_subj`, `qa_4_subj`, `qa_5_subj`, `qa_1`, `qa_2`, `qa_3`, `qa_4`, `qa_5`)
VALUES
	('1:1문의','회원|포인트','basic','basic',1,0,1,0,0,'0','','',1,60,30,15,15,600,1048576,'','','','','','','','','','','','','','','','','');

/*!40000 ALTER TABLE `g5_qa_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_qa_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_qa_content`;

CREATE TABLE `g5_qa_content` (
  `qa_id` int(11) NOT NULL AUTO_INCREMENT,
  `qa_num` int(11) NOT NULL DEFAULT '0',
  `qa_parent` int(11) NOT NULL DEFAULT '0',
  `qa_related` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `qa_name` varchar(255) NOT NULL DEFAULT '',
  `qa_email` varchar(255) NOT NULL DEFAULT '',
  `qa_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_type` tinyint(4) NOT NULL DEFAULT '0',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_email_recv` tinyint(4) NOT NULL DEFAULT '0',
  `qa_sms_recv` tinyint(4) NOT NULL DEFAULT '0',
  `qa_html` tinyint(4) NOT NULL DEFAULT '0',
  `qa_subject` varchar(255) NOT NULL DEFAULT '',
  `qa_content` text NOT NULL,
  `qa_status` tinyint(4) NOT NULL DEFAULT '0',
  `qa_file1` varchar(255) NOT NULL DEFAULT '',
  `qa_source1` varchar(255) NOT NULL DEFAULT '',
  `qa_file2` varchar(255) NOT NULL DEFAULT '',
  `qa_source2` varchar(255) NOT NULL DEFAULT '',
  `qa_ip` varchar(255) NOT NULL DEFAULT '',
  `qa_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`qa_id`),
  KEY `qa_num_parent` (`qa_num`,`qa_parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table g5_scrap
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_scrap`;

CREATE TABLE `g5_scrap` (
  `ms_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` varchar(15) NOT NULL DEFAULT '',
  `ms_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ms_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table g5_uniqid
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_uniqid`;

CREATE TABLE `g5_uniqid` (
  `uq_id` bigint(20) unsigned NOT NULL,
  `uq_ip` varchar(255) NOT NULL,
  PRIMARY KEY (`uq_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_uniqid` WRITE;
/*!40000 ALTER TABLE `g5_uniqid` DISABLE KEYS */;

INSERT INTO `g5_uniqid` (`uq_id`, `uq_ip`)
VALUES
	(15081206540777,'222.99.89.132'),
	(15081206553235,'222.99.89.132'),
	(15081206565480,'222.99.89.132'),
	(15081206570830,'222.99.89.132'),
	(15081206571320,'222.99.89.132'),
	(15081206571987,'222.99.89.132'),
	(15081207065744,'222.99.89.132'),
	(15081207074748,'222.99.89.132'),
	(15081207120272,'222.99.89.132'),
	(15081207152169,'222.99.89.132'),
	(15081207161646,'222.99.89.132'),
	(15081207210783,'222.99.89.132'),
	(15081207212065,'222.99.89.132'),
	(15081207222686,'222.99.89.132'),
	(15081207242775,'222.99.89.132'),
	(15081207261876,'222.99.89.132'),
	(15081207273865,'222.99.89.132'),
	(15081207284991,'222.99.89.132'),
	(15081207291662,'222.99.89.132'),
	(15081207490861,'222.99.89.132'),
	(15081207491685,'222.99.89.132'),
	(15081207494859,'222.99.89.132'),
	(15081207524027,'222.99.89.132'),
	(15081207533150,'222.99.89.132'),
	(15081207550674,'222.99.89.132'),
	(15081207563412,'222.99.89.132'),
	(15081207595183,'222.99.89.132'),
	(15081417263163,'110.70.14.85'),
	(15081419001271,'221.139.152.148'),
	(15081419042425,'221.139.152.148'),
	(15081419444449,'221.139.152.148'),
	(15081617003212,'222.99.89.132'),
	(15081617405725,'222.99.89.132'),
	(15081617473165,'222.99.89.132'),
	(15081617493365,'222.99.89.132'),
	(15081617501546,'222.99.89.132'),
	(15081618035132,'222.99.89.132'),
	(15081618040963,'222.99.89.132'),
	(15081618174062,'222.99.89.132'),
	(15081618191113,'222.99.89.132'),
	(15081622030022,'221.139.152.148'),
	(15081716272399,'222.112.8.156'),
	(15081718010168,'39.115.210.114'),
	(15081722152726,'121.190.155.11'),
	(15081722181996,'121.190.155.11'),
	(15081722284111,'121.190.155.11'),
	(15081722310463,'121.190.155.11'),
	(15081722311427,'121.190.155.11'),
	(15081722314651,'121.190.155.11'),
	(15081723550577,'121.190.155.11'),
	(15081800184951,'121.190.155.11'),
	(15081912072328,'222.112.8.156'),
	(15081912082373,'222.112.8.156'),
	(15081912215632,'222.112.8.156'),
	(15081912500293,'39.115.210.114'),
	(15081912502340,'39.115.210.114'),
	(15081912503034,'39.115.210.114'),
	(15081912504044,'39.115.210.114'),
	(15081912511364,'39.115.210.114'),
	(15081914533713,'39.115.210.114'),
	(15081915013502,'39.115.210.114'),
	(15081915013678,'39.115.210.114'),
	(15081917230080,'222.112.8.156'),
	(15081918444262,'222.112.8.156'),
	(15081918473615,'222.112.8.156'),
	(15082014364993,'222.112.8.156'),
	(15082014470747,'222.112.8.156'),
	(15082016452909,'222.112.8.156'),
	(15082016471769,'222.112.8.156'),
	(15082016513188,'222.112.8.156'),
	(15082016514736,'222.112.8.156'),
	(15082016572558,'222.112.8.156'),
	(15082016574396,'222.112.8.156'),
	(15082016581417,'222.112.8.156'),
	(15082016583836,'222.112.8.156'),
	(15082017002239,'222.112.8.156'),
	(15082017014851,'222.112.8.156'),
	(15082017021281,'222.112.8.156'),
	(15082017053362,'222.112.8.156'),
	(15082017054862,'222.112.8.156'),
	(15082020552248,'221.139.152.148'),
	(15082112393382,'39.115.210.114'),
	(15082112434426,'39.115.210.114'),
	(15082112453377,'39.115.210.114'),
	(15082112580882,'39.115.210.114'),
	(15082113471716,'39.115.210.114'),
	(15082114113457,'175.223.33.74'),
	(15082115175201,'222.112.8.156'),
	(15082115183099,'222.112.8.156'),
	(15082115212355,'39.115.210.114'),
	(15082115215683,'39.115.210.114'),
	(15082115235442,'39.115.210.114'),
	(15082115500850,'222.112.8.156'),
	(15082115503428,'222.112.8.156'),
	(15082115515039,'222.112.8.156'),
	(15082115533122,'222.112.8.156'),
	(15082115541120,'222.112.8.156'),
	(15082116052280,'222.112.8.156'),
	(15082116063375,'222.112.8.156'),
	(15082116072228,'222.112.8.156'),
	(15082116072901,'222.112.8.156'),
	(15082116312808,'39.7.53.219'),
	(15082116345449,'222.112.8.156'),
	(15082116421543,'222.112.8.156'),
	(15082116422202,'222.112.8.156'),
	(15082117194466,'222.112.8.156'),
	(15082117195830,'222.112.8.156'),
	(15082117315787,'39.115.210.114'),
	(15082118451024,'222.112.8.156'),
	(15082118464455,'222.112.8.156'),
	(15082118472379,'222.112.8.156'),
	(15082118473486,'222.112.8.156'),
	(15082118474020,'222.112.8.156'),
	(15082118490959,'222.112.8.156'),
	(15082118493023,'222.112.8.156'),
	(15082118494011,'222.112.8.156'),
	(15082118511813,'222.112.8.156'),
	(15082118513022,'222.112.8.156'),
	(15082118521964,'39.115.210.114'),
	(15082118522906,'222.112.8.156'),
	(15082118554744,'222.112.8.156'),
	(15082118595956,'222.112.8.156'),
	(15082119003200,'222.112.8.156'),
	(15082119020344,'222.112.8.156'),
	(15082119293710,'222.112.8.156'),
	(15082119305580,'222.112.8.156'),
	(15082119332391,'222.112.8.156'),
	(15082119351663,'222.112.8.156'),
	(15082119400817,'222.112.8.156'),
	(15082119440354,'222.112.8.156'),
	(15082119455685,'222.112.8.156'),
	(15082120333327,'39.7.53.219'),
	(15082120454629,'39.7.53.219'),
	(15082215085212,'221.139.152.148'),
	(15082215103490,'221.139.152.148'),
	(15082215104222,'221.139.152.148'),
	(15082222115287,'221.139.152.148'),
	(15082222130885,'221.139.152.148'),
	(15082312213774,'61.39.33.188'),
	(15082312214226,'61.39.33.188'),
	(15082312534975,'61.39.33.188'),
	(15082315145449,'221.139.152.148'),
	(15082315161164,'221.139.152.148'),
	(15082315165496,'221.139.152.148'),
	(15082315172301,'221.139.152.148'),
	(15082315192249,'221.139.152.148'),
	(15082315214766,'221.139.152.148'),
	(15082315265940,'221.139.152.148'),
	(15082315271445,'221.139.152.148'),
	(15082315271983,'221.139.152.148'),
	(15082315282278,'221.139.152.148'),
	(15082315292141,'221.139.152.148'),
	(15082315335837,'221.139.152.148'),
	(15082315341784,'221.139.152.148'),
	(15082315342046,'221.139.152.148'),
	(15082315344009,'221.139.152.148'),
	(15082315345850,'221.139.152.148'),
	(15082315362968,'221.139.152.148'),
	(15082315404552,'221.139.152.148'),
	(15082315410044,'221.139.152.148'),
	(15082315442331,'221.139.152.148'),
	(15082315443943,'221.139.152.148'),
	(15082315470828,'221.139.152.148'),
	(15082315472252,'221.139.152.148'),
	(15082315501788,'221.139.152.148'),
	(15082315511709,'221.139.152.148'),
	(15082315531120,'221.139.152.148'),
	(15082315545803,'221.139.152.148'),
	(15082315551872,'221.139.152.148'),
	(15082316003319,'221.139.152.148'),
	(15082319505988,'221.139.152.148'),
	(15082409392387,'222.112.8.156'),
	(15082409392710,'222.112.8.156'),
	(15082409394801,'222.112.8.156'),
	(15082409405174,'222.112.8.156'),
	(15082409411221,'222.112.8.156'),
	(15082409444346,'222.112.8.156'),
	(15082409453079,'222.112.8.156'),
	(15082409471957,'222.112.8.156'),
	(15082409473064,'222.112.8.156'),
	(15082409475370,'222.112.8.156'),
	(15082409494047,'222.112.8.156'),
	(15082410545436,'222.112.8.156'),
	(15082410575859,'222.112.8.156'),
	(15082410594004,'222.112.8.156'),
	(15082411105746,'222.112.8.156');

/*!40000 ALTER TABLE `g5_uniqid` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_visit
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_visit`;

CREATE TABLE `g5_visit` (
  `vi_id` int(11) NOT NULL DEFAULT '0',
  `vi_ip` varchar(255) NOT NULL DEFAULT '',
  `vi_date` date NOT NULL DEFAULT '0000-00-00',
  `vi_time` time NOT NULL DEFAULT '00:00:00',
  `vi_referer` text NOT NULL,
  `vi_agent` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`vi_id`),
  UNIQUE KEY `index1` (`vi_ip`,`vi_date`),
  KEY `index2` (`vi_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_visit` WRITE;
/*!40000 ALTER TABLE `g5_visit` DISABLE KEYS */;

INSERT INTO `g5_visit` (`vi_id`, `vi_ip`, `vi_date`, `vi_time`, `vi_referer`, `vi_agent`)
VALUES
	(1,'39.115.210.114','2015-08-11','10:28:53','http://opin.xyz/bbs/install/install_db.php','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36'),
	(2,'110.70.47.46','2015-08-11','13:02:59','','Mozilla/5.0 (Linux; Android 5.0; SM-N900K Build/LRX21V) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.133 Mobile Safari/537.36'),
	(3,'222.99.89.132','2015-08-12','00:29:08','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36'),
	(4,'110.70.46.93','2015-08-12','09:48:33','','Mozilla/5.0 (Linux; Android 5.0; SM-N900K Build/LRX21V) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.133 Mobile Safari/537.36'),
	(5,'39.115.210.114','2015-08-12','10:49:17','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36'),
	(6,'61.39.33.198','2015-08-14','14:16:57','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
	(7,'58.123.249.208','2015-08-14','15:50:50','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36'),
	(8,'110.70.14.85','2015-08-14','16:34:45','http://opin.xyz/bbs/bbs/group.php?gr_id=1team','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36'),
	(9,'222.99.89.132','2015-08-14','17:12:15','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36'),
	(10,'219.249.227.12','2015-08-14','18:33:01','','facebookexternalhit/1.1;kakaotalk-scrap/1.0;'),
	(11,'211.36.145.198','2015-08-14','18:33:17','','Mozilla/5.0 (Linux; Android 5.0; SM-N900L Build/LRX21V) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile Safari/537.36;KAKAOTALK'),
	(12,'221.139.152.148','2015-08-14','18:58:22','','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),
	(13,'207.46.13.117','2015-08-14','22:28:21','','Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)'),
	(14,'221.139.152.148','2015-08-15','02:17:18','http://opin.xyz/bbs/main.php','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),
	(15,'222.99.89.132','2015-08-16','16:59:42','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36'),
	(16,'157.55.39.39','2015-08-16','17:26:25','','Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)'),
	(17,'221.139.152.148','2015-08-16','22:02:38','','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),
	(18,'39.115.210.114','2015-08-17','11:37:32','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36'),
	(19,'222.112.8.156','2015-08-17','16:27:07','','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),
	(20,'121.190.155.11','2015-08-17','22:01:03','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36'),
	(21,'39.115.210.114','2015-08-18','12:16:32','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36'),
	(22,'222.112.8.156','2015-08-19','08:38:04','','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),
	(23,'39.115.210.114','2015-08-19','12:17:30','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36'),
	(24,'219.249.227.16','2015-08-20','14:23:24','','facebookexternalhit/1.1;kakaotalk-scrap/1.0;'),
	(25,'222.112.8.156','2015-08-20','14:23:27','','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),
	(26,'219.249.227.13','2015-08-20','16:40:17','','facebookexternalhit/1.1;kakaotalk-scrap/1.0;'),
	(27,'221.139.152.148','2015-08-20','20:54:41','','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),
	(28,'39.115.210.114','2015-08-21','12:33:27','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36'),
	(29,'222.112.8.156','2015-08-21','15:17:30','','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),
	(30,'39.7.53.219','2015-08-21','16:25:01','','Mozilla/5.0 (Windows NT x.y; rv:10.0) Gecko/20100101 Firefox/27.0'),
	(31,'219.249.227.12','2015-08-22','12:27:03','','facebookexternalhit/1.1;kakaotalk-scrap/1.0;'),
	(32,'110.76.142.159','2015-08-22','12:27:06','','facebookexternalhit/1.1;kakaotalk-scrap/1.0;'),
	(33,'219.249.227.11','2015-08-22','12:27:06','','facebookexternalhit/1.1;kakaotalk-scrap/1.0;'),
	(34,'221.139.152.148','2015-08-22','15:05:24','','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),
	(35,'221.139.152.148','2015-08-23','00:50:20','','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),
	(36,'61.39.33.188','2015-08-23','12:21:01','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
	(37,'110.76.142.179','2015-08-23','15:04:13','','facebookexternalhit/1.1;kakaotalk-scrap/1.0;'),
	(38,'219.249.227.17','2015-08-23','15:04:14','','facebookexternalhit/1.1;kakaotalk-scrap/1.0;'),
	(39,'222.112.8.156','2015-08-24','09:30:50','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36');

/*!40000 ALTER TABLE `g5_visit` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_visit_sum
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_visit_sum`;

CREATE TABLE `g5_visit_sum` (
  `vs_date` date NOT NULL DEFAULT '0000-00-00',
  `vs_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vs_date`),
  KEY `index1` (`vs_count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_visit_sum` WRITE;
/*!40000 ALTER TABLE `g5_visit_sum` DISABLE KEYS */;

INSERT INTO `g5_visit_sum` (`vs_date`, `vs_count`)
VALUES
	('2015-08-11',2),
	('2015-08-12',3),
	('2015-08-14',8),
	('2015-08-15',1),
	('2015-08-16',3),
	('2015-08-17',3),
	('2015-08-18',1),
	('2015-08-19',2),
	('2015-08-20',4),
	('2015-08-21',3),
	('2015-08-22',4),
	('2015-08-23',4),
	('2015-08-24',1);

/*!40000 ALTER TABLE `g5_visit_sum` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_write_1team_block
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_write_1team_block`;

CREATE TABLE `g5_write_1team_block` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table g5_write_1team_e
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_write_1team_e`;

CREATE TABLE `g5_write_1team_e` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_write_1team_e` WRITE;
/*!40000 ALTER TABLE `g5_write_1team_e` DISABLE KEYS */;

INSERT INTO `g5_write_1team_e` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`)
VALUES
	(52,-26,'',52,0,0,'','제품','','종료된캠페인 테스트','종료된캠페인 테스트','종료된캠페인 테스트','종료된캠페인 테스트',0,0,1,2,0,'admin','*65F081D7C560410900AD97AA7BBB9A67F9BD0AE1','리뷰플레이스','admin@domain.com','','2015-08-24 11:00:07',0,'2015-08-24 11:00:07','222.112.8.156','','','','','2015-08-24','','','','','','종료된캠페인 테스트',''),
	(51,-25,'',51,0,0,'','체험','secret','김정태계장테스트','김정태계장테스트\r\n\r\n[이 게시물은 리뷰플레이스님에 의해 2015-08-24 09:41:00 등록에서 복사 됨]\n\n[이 게시물은 리뷰플레이스님에 의해 2015-08-24 09:41:57 진행에서 이동 됨]','','',0,0,9,1,0,'mile03','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','김정태','rase031@naver.com','','2015-08-23 15:27:09',0,'2015-08-23 15:27:09','221.139.152.148','','','2015-08-24','2015-08-24','2015-08-24','2015-08-24','','2015-08-25','2015-08-27','','김정태계장테스트','1|1|1|1|1|1|1|1|');

/*!40000 ALTER TABLE `g5_write_1team_e` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_write_1team_m
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_write_1team_m`;

CREATE TABLE `g5_write_1team_m` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_write_1team_m` WRITE;
/*!40000 ALTER TABLE `g5_write_1team_m` DISABLE KEYS */;

INSERT INTO `g5_write_1team_m` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`)
VALUES
	(3,-1,'',3,0,0,'','제품','','3팀 팀원','3팀 팀원','','',0,0,3,0,0,'luvsweater','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','김연','luvsweaterrr@naver.com','','2015-08-23 15:55:30',0,'2015-08-23 15:55:30','221.139.152.148','','','','','','','','','','','3팀 팀원','');

/*!40000 ALTER TABLE `g5_write_1team_m` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_write_1team_r
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_write_1team_r`;

CREATE TABLE `g5_write_1team_r` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_write_1team_r` WRITE;
/*!40000 ALTER TABLE `g5_write_1team_r` DISABLE KEYS */;

INSERT INTO `g5_write_1team_r` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`)
VALUES
	(65,-1,'',65,0,0,'','기자단','secret','3팀 팀원 테스트','3팀 팀원 테스트\n\n[이 게시물은 리뷰플레이스님에 의해 2015-08-24 09:45:25 등록에서 이동 됨]','','',0,0,5,1,0,'luvsweater','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','김연','luvsweaterrr@naver.com','','2015-08-23 15:34:46',0,'2015-08-23 15:34:46','221.139.152.148','','','','','','','','','','','3팀 팀원 테스트',''),
	(66,-2,'',66,0,0,'','체험','secret','mile03','mile03\n\n[이 게시물은 리뷰플레이스님에 의해 2015-08-24 11:10:07 등록에서 복사 됨]','','',0,0,5,2,0,'mile03','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','김정태','rase031@naver.com','','2015-08-23 16:00:37',0,'2015-08-23 16:00:37','221.139.152.148','','','','','','','','','','','mile03','');

/*!40000 ALTER TABLE `g5_write_1team_r` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table g5_write_1team_w
# ------------------------------------------------------------

DROP TABLE IF EXISTS `g5_write_1team_w`;

CREATE TABLE `g5_write_1team_w` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `g5_write_1team_w` WRITE;
/*!40000 ALTER TABLE `g5_write_1team_w` DISABLE KEYS */;

INSERT INTO `g5_write_1team_w` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`)
VALUES
	(26,-7,'',26,0,0,'','체험','secret','mile03','mile03','','',0,0,5,0,0,'mile03','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','김정태','rase031@naver.com','','2015-08-23 16:00:37',0,'2015-08-23 16:00:37','221.139.152.148','','','','','','','','','','','mile03',''),
	(24,-6,'',24,0,0,'','제품','','2팀 팀장 테스트','2팀 팀장 테스트','','',0,0,6,0,0,'we4242','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','김소은','kkims4242@naver.com','','2015-08-23 15:36:41',0,'2015-08-23 15:36:41','221.139.152.148','','','','','','','','','','','2팀 팀장 테스트',''),
	(19,-1,'',19,0,0,'','체험','secret','김정태계장테스트','김정태계장테스트','','',0,0,7,0,0,'mile03','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','김정태','rase031@naver.com','','2015-08-23 15:27:09',0,'2015-08-23 15:27:09','221.139.152.148','','','','','','','','','완료','','김정태계장테스트',''),
	(20,-2,'',20,0,0,'','체험','secret','1팀 팀원 테스트','1팀 팀원 테스트','','',0,0,5,0,0,'lsw880','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','이승원','lsw880@naver.com','','2015-08-23 15:34:07',0,'2015-08-23 15:34:07','221.139.152.148','','','','','','','','','','','1팀 팀원 테스트',''),
	(21,-3,'',21,0,0,'','제품','','1팀 팀장 테스트','1팀 팀장 테스트','','',0,0,4,0,0,'izweb','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','임지혜','izweb@groonet.co.kr','','2015-08-23 15:34:26',0,'2015-08-23 15:34:26','221.139.152.148','','','','','','','','','','','1팀 팀장 테스트',''),
	(27,-8,'',27,0,0,'','제품','secret','테스트','테스트','','',0,0,4,0,0,'mile03','*9B09A5B43380B18B737EDE4E457F22A8E95AB82B','김정태','rase031@naver.com','','2015-08-24 09:47:37',0,'2015-08-24 09:47:37','222.112.8.156','','','','','','','','','','','테스트','');

/*!40000 ALTER TABLE `g5_write_1team_w` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sms5_book
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sms5_book`;

CREATE TABLE `sms5_book` (
  `bk_no` int(11) NOT NULL AUTO_INCREMENT,
  `bg_no` int(11) NOT NULL DEFAULT '0',
  `mb_no` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bk_name` varchar(255) NOT NULL DEFAULT '',
  `bk_hp` varchar(255) NOT NULL DEFAULT '',
  `bk_receipt` tinyint(4) NOT NULL DEFAULT '0',
  `bk_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bk_memo` text NOT NULL,
  PRIMARY KEY (`bk_no`),
  KEY `bk_name` (`bk_name`),
  KEY `bk_hp` (`bk_hp`),
  KEY `mb_no` (`mb_no`),
  KEY `bg_no` (`bg_no`,`bk_no`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sms5_book_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sms5_book_group`;

CREATE TABLE `sms5_book_group` (
  `bg_no` int(11) NOT NULL AUTO_INCREMENT,
  `bg_name` varchar(255) NOT NULL DEFAULT '',
  `bg_count` int(11) NOT NULL DEFAULT '0',
  `bg_member` int(11) NOT NULL DEFAULT '0',
  `bg_nomember` int(11) NOT NULL DEFAULT '0',
  `bg_receipt` int(11) NOT NULL DEFAULT '0',
  `bg_reject` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bg_no`),
  KEY `bg_name` (`bg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `sms5_book_group` WRITE;
/*!40000 ALTER TABLE `sms5_book_group` DISABLE KEYS */;

INSERT INTO `sms5_book_group` (`bg_no`, `bg_name`, `bg_count`, `bg_member`, `bg_nomember`, `bg_receipt`, `bg_reject`)
VALUES
	(1,'미분류',0,0,0,0,0);

/*!40000 ALTER TABLE `sms5_book_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sms5_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sms5_config`;

CREATE TABLE `sms5_config` (
  `cf_phone` varchar(255) NOT NULL DEFAULT '',
  `cf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cf_member` tinyint(4) NOT NULL DEFAULT '1',
  `cf_level` tinyint(4) NOT NULL DEFAULT '2',
  `cf_point` int(11) NOT NULL DEFAULT '0',
  `cf_day_count` int(11) NOT NULL DEFAULT '0',
  `cf_skin` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sms5_form
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sms5_form`;

CREATE TABLE `sms5_form` (
  `fo_no` int(11) NOT NULL AUTO_INCREMENT,
  `fg_no` tinyint(4) NOT NULL DEFAULT '0',
  `fg_member` char(1) NOT NULL DEFAULT '0',
  `fo_name` varchar(255) NOT NULL DEFAULT '',
  `fo_content` text NOT NULL,
  `fo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`fo_no`),
  KEY `fg_no` (`fg_no`,`fo_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sms5_form_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sms5_form_group`;

CREATE TABLE `sms5_form_group` (
  `fg_no` int(11) NOT NULL AUTO_INCREMENT,
  `fg_name` varchar(255) NOT NULL DEFAULT '',
  `fg_count` int(11) NOT NULL DEFAULT '0',
  `fg_member` tinyint(4) NOT NULL,
  PRIMARY KEY (`fg_no`),
  KEY `fg_name` (`fg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sms5_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sms5_history`;

CREATE TABLE `sms5_history` (
  `hs_no` int(11) NOT NULL AUTO_INCREMENT,
  `wr_no` int(11) NOT NULL DEFAULT '0',
  `wr_renum` int(11) NOT NULL DEFAULT '0',
  `bg_no` int(11) NOT NULL DEFAULT '0',
  `mb_no` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bk_no` int(11) NOT NULL DEFAULT '0',
  `hs_name` varchar(30) NOT NULL DEFAULT '',
  `hs_hp` varchar(255) NOT NULL DEFAULT '',
  `hs_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hs_flag` tinyint(4) NOT NULL DEFAULT '0',
  `hs_code` varchar(255) NOT NULL DEFAULT '',
  `hs_memo` varchar(255) NOT NULL DEFAULT '',
  `hs_log` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`hs_no`),
  KEY `wr_no` (`wr_no`),
  KEY `mb_no` (`mb_no`),
  KEY `bk_no` (`bk_no`),
  KEY `hs_hp` (`hs_hp`),
  KEY `hs_code` (`hs_code`),
  KEY `bg_no` (`bg_no`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sms5_member_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sms5_member_history`;

CREATE TABLE `sms5_member_history` (
  `mh_no` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(30) NOT NULL,
  `mh_reply` varchar(30) NOT NULL,
  `mh_hp` varchar(30) NOT NULL,
  `mh_datetime` datetime NOT NULL,
  `mh_booking` datetime NOT NULL,
  `mh_log` varchar(255) NOT NULL,
  `mh_ip` varchar(15) NOT NULL,
  PRIMARY KEY (`mh_no`),
  KEY `mb_id` (`mb_id`,`mh_datetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sms5_write
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sms5_write`;

CREATE TABLE `sms5_write` (
  `wr_no` int(11) NOT NULL DEFAULT '1',
  `wr_renum` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(255) NOT NULL DEFAULT '',
  `wr_message` varchar(255) NOT NULL DEFAULT '',
  `wr_booking` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_total` int(11) NOT NULL DEFAULT '0',
  `wr_re_total` int(11) NOT NULL DEFAULT '0',
  `wr_success` int(11) NOT NULL DEFAULT '0',
  `wr_failure` int(11) NOT NULL DEFAULT '0',
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_memo` text NOT NULL,
  KEY `wr_no` (`wr_no`,`wr_renum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
