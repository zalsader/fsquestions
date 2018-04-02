-- MySQL dump 10.16  Distrib 10.2.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: stackoverflow
-- ------------------------------------------------------
-- Server version	10.2.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fscategories`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fscategories` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fscategories`
--

LOCK TABLES `fscategories` WRITE;
/*!40000 ALTER TABLE `fscategories` DISABLE KEYS */;
INSERT INTO `fscategories` VALUES (1,NULL,'The Linux VFS'),(2,NULL,'The proc filesystem'),(3,NULL,'Events based on file descriptors'),(4,NULL,'The Filesystem for Exporting Kernel Objects'),(5,NULL,'The debugfs filesystem'),(6,NULL,'The Linux Journalling API'),(7,NULL,'splice API'),(8,NULL,'pipes API'),(9,1,'The Filesystem types'),(10,1,'The Directory Cache'),(11,1,'Inode Handling'),(12,1,'Registration and Superblocks'),(13,1,'File Locks'),(14,1,'Other VFS Functions'),(17,5,'debugfs interface'),(18,6,'Journalling API Data Types'),(19,6,'Journalling API Functions');
/*!40000 ALTER TABLE `fscategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fsfunction`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fsfunction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `tally` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fsfunction`
--

LOCK TABLES `fsfunction` WRITE;
/*!40000 ALTER TABLE `fsfunction` DISABLE KEYS */;
INSERT INTO `fsfunction` VALUES (1,'bdev_read_page',0,14),(2,'bdev_write_page',1,14),(3,'bdgrab',0,14),(4,'bd_link_disk_holder',0,14),(5,'bd_unlink_disk_holder',0,14),(6,'bh_submit_read',1,14),(7,'bh_uptodate_or_lock',0,14),(8,'bioset_create',1,14),(9,'bio_add_page',5,14),(10,'bio_add_pc_page',0,14),(11,'bio_advance',1,14),(12,'bio_alloc_bioset',1,14),(13,'bio_alloc_pages',0,14),(14,'bio_associate_blkcg',0,14),(15,'bio_associate_current',0,14),(16,'bio_chain',0,14),(17,'bio_clone_bioset',0,14),(18,'bio_clone_blkcg_association',0,14),(19,'bio_clone_fast',0,14),(20,'bio_copy_data',0,14),(21,'bio_endio',12,14),(22,'bio_iov_iter_get_pages',0,14),(23,'bio_map_kern',1,14),(24,'bio_put',5,14),(25,'bio_reset',12,14),(26,'bio_split',1,14),(27,'bio_trim',0,14),(28,'blkdev_get',1,14),(29,'blkdev_get_by_dev',1,14),(30,'blkdev_get_by_path',3,14),(31,'block_invalidatepage',0,14),(32,'bmap',41,11),(33,'check_conflicting_open',0,13),(34,'check_disk_size_change',0,14),(35,'clean_bdev_aliases',0,14),(36,'clear_nlink',0,11),(37,'current_time',290,11),(38,'deactivate_locked_super',1,12),(39,'deactivate_super',0,12),(40,'debugfs_create_atomic_t',0,5),(41,'debugfs_create_automount',0,5),(42,'debugfs_create_blob',1,5),(43,'debugfs_create_bool',0,5),(44,'debugfs_create_devm_seqfile',0,5),(45,'debugfs_create_dir',9,5),(46,'debugfs_create_file',20,5),(47,'debugfs_create_file_size',0,5),(48,'debugfs_create_file_unsafe',1,5),(49,'debugfs_create_regset32',0,5),(50,'debugfs_create_size_t',0,5),(51,'debugfs_create_symlink',0,5),(52,'debugfs_create_u16',0,5),(53,'debugfs_create_u32',2,5),(54,'debugfs_create_u32_array',0,5),(55,'debugfs_create_u64',0,5),(56,'debugfs_create_u8',0,5),(57,'debugfs_create_ulong',0,5),(58,'debugfs_create_x16',0,5),(59,'debugfs_create_x32',0,5),(60,'debugfs_create_x64',0,5),(61,'debugfs_create_x8',0,5),(62,'debugfs_initialized',0,5),(63,'debugfs_lookup',0,5),(64,'debugfs_print_regs32',0,5),(65,'debugfs_remove',9,5),(66,'debugfs_remove_recursive',5,5),(67,'debugfs_rename',0,5),(68,'debugfs_use_file_finish',0,5),(69,'debugfs_use_file_start',0,5),(70,'dentry_update_name_case',0,10),(71,'dget_dlock',0,10),(72,'do_splice_direct',1,7),(73,'drop_nlink',1,11),(74,'d_add',2,10),(75,'d_add_ci',0,10),(76,'d_alloc',2,10),(77,'d_alloc_pseudo',0,10),(78,'d_backing_dentry',0,10),(79,'d_backing_inode',0,10),(80,'d_delete',1,10),(81,'d_exact_alias',0,10),(82,'d_find_any_alias',0,10),(83,'d_hash_and_lookup',0,10),(84,'d_inode',54,10),(85,'d_inode_rcu',0,10),(86,'d_instantiate',1,10),(87,'d_instantiate_no_diralias',0,10),(88,'d_invalidate',0,10),(89,'d_lookup',2,10),(90,'d_obtain_alias',0,10),(91,'d_obtain_root',0,10),(92,'d_path',36,10),(93,'d_real',1,10),(94,'d_really_is_negative',0,10),(95,'d_really_is_positive',0,10),(96,'d_real_inode',0,10),(97,'d_rehash',0,10),(98,'d_splice_alias',0,10),(99,'d_unhashed',0,10),(100,'eventfd_ctx_fdget',1,3),(101,'eventfd_ctx_fileget',1,3),(102,'eventfd_ctx_get',0,3),(103,'eventfd_ctx_put',1,3),(104,'eventfd_ctx_read',0,3),(105,'eventfd_ctx_remove_wait_queue',0,3),(106,'eventfd_fget',0,3),(107,'eventfd_signal',1,3),(108,'evict_inodes',0,11),(109,'fcntl_getlease',0,13),(110,'fcntl_setlease',0,13),(111,'filemap_check_wb_err',0,9),(112,'filemap_sample_wb_err',0,9),(113,'filemap_set_wb_err',0,9),(114,'file_update_time',3,11),(115,'find_inode_nowait',0,11),(116,'flock_lock_inode_wait',0,13),(117,'freeze_bdev',0,14),(118,'freeze_super',0,12),(119,'generic_file_splice_read',7,7),(120,'generic_permission',1,14),(121,'generic_pipe_buf_confirm',1,8),(122,'generic_pipe_buf_get',1,8),(123,'generic_pipe_buf_release',0,8),(124,'generic_pipe_buf_steal',1,8),(125,'generic_setlease',0,13),(126,'generic_shutdown_super',1,12),(127,'generic_splice_sendpage',0,7),(128,'get_super',1,12),(129,'get_super_exclusive_thawed',0,12),(130,'get_super_thawed',0,12),(131,'handle_t',39,18),(132,'iget5_locked',0,11),(133,'iget_failed',0,11),(134,'iget_locked',1,11),(135,'ilookup',12,11),(136,'ilookup5',1,11),(137,'ilookup5_nowait',0,11),(138,'inc_nlink',1,11),(139,'inode_congested',0,14),(140,'inode_dio_wait',0,11),(141,'inode_inc_iversion',0,11),(142,'inode_init_always',1,11),(143,'inode_init_owner',1,11),(144,'inode_owner_or_capable',0,11),(145,'inode_permission',3,14),(146,'inode_sb_list_add',0,11),(147,'iput',32,11),(148,'is_bad_inode',0,11),(149,'iterate_supers_type',1,12),(150,'iter_file_splice_write',1,7),(151,'iunique',3,11),(152,'jbd2_inode',0,18),(153,'jbd2_journal_abort',0,19),(154,'jbd2_journal_ack_err',0,19),(155,'jbd2_journal_check_available_features',0,19),(156,'jbd2_journal_check_used_features',0,19),(157,'jbd2_journal_clear_err',0,19),(158,'jbd2_journal_destroy',0,19),(159,'jbd2_journal_dirty_metadata',1,19),(160,'jbd2_journal_errno',0,19),(161,'jbd2_journal_extend',0,19),(162,'jbd2_journal_flush',0,19),(163,'jbd2_journal_force_commit',0,19),(164,'jbd2_journal_force_commit_nested',0,19),(165,'jbd2_journal_forget',0,19),(166,'jbd2_journal_get_create_access',0,19),(167,'jbd2_journal_get_undo_access',0,19),(168,'jbd2_journal_get_write_access',1,19),(169,'jbd2_journal_handle',1,18),(170,'jbd2_journal_init_dev',0,19),(171,'jbd2_journal_init_inode',0,19),(172,'jbd2_journal_invalidatepage',0,19),(173,'jbd2_journal_load',0,19),(174,'jbd2_journal_lock_updates',0,19),(175,'jbd2_journal_recover',0,19),(176,'jbd2_journal_set_features',0,19),(177,'jbd2_journal_set_triggers',0,19),(178,'jbd2_journal_skip_recovery',0,19),(179,'jbd2_journal_start',0,19),(180,'jbd2_journal_start_reserved',0,19),(181,'jbd2_journal_stop',0,19),(182,'jbd2_journal_try_to_free_buffers',0,19),(183,'jbd2_journal_unlock_updates',0,19),(184,'jbd2_journal_update_sb_errno',0,19),(185,'jbd2_journal_wipe',0,19),(186,'jbd2__journal_restart',0,19),(187,'journal_s',0,18),(188,'journal_t',1,18),(189,'lease_get_mtime',0,13),(190,'ll_rw_block',2,14),(191,'locks_lock_inode_wait',0,13),(192,'locks_mandatory_area',0,13),(193,'locks_mandatory_locked',0,13),(194,'locks_translate_pid',0,13),(195,'lock_two_nondirectories',0,11),(196,'lookup_bdev',4,14),(197,'lookup_one_len',1,14),(198,'lookup_one_len_unlocked',0,14),(199,'make_bad_inode',0,11),(200,'mangle_path',0,14),(201,'mark_buffer_dirty',0,14),(202,'mpage_readpages',1,14),(203,'mpage_writepages',1,14),(204,'new_inode',6,11),(205,'path_get',7,14),(206,'path_has_submounts',0,10),(207,'path_put',9,14),(208,'pipe_buffer',4,8),(209,'pipe_buf_confirm',0,8),(210,'pipe_buf_get',0,8),(211,'pipe_buf_release',0,8),(212,'pipe_buf_steal',0,8),(213,'pipe_inode_info',9,8),(214,'positive_aop_returns',0,9),(215,'posix_lock_file',0,13),(216,'posix_lock_inode_wait',0,13),(217,'posix_unblock_lock',0,13),(218,'proc_dointvec',4,2),(219,'proc_dointvec_jiffies',1,2),(220,'proc_dointvec_minmax',2,2),(221,'proc_dointvec_ms_jiffies',0,2),(222,'proc_dointvec_userhz_jiffies',0,2),(223,'proc_dostring',1,2),(224,'proc_douintvec',0,2),(225,'proc_douintvec_minmax',0,2),(226,'proc_doulongvec_minmax',0,2),(227,'proc_doulongvec_ms_jiffies_minmax',0,2),(228,'proc_flush_task',1,2),(229,'register_filesystem',2,14),(230,'revalidate_disk',4,14),(231,'sb_end_intwrite',0,9),(232,'sb_end_pagefault',0,9),(233,'sb_end_write',0,9),(234,'sb_start_pagefault',0,9),(235,'sb_start_write',0,9),(236,'seq_escape',0,14),(237,'seq_file_path',0,14),(238,'seq_hlist_next',0,14),(239,'seq_hlist_next_percpu',0,14),(240,'seq_hlist_next_rcu',0,14),(241,'seq_hlist_start',0,14),(242,'seq_hlist_start_head',0,14),(243,'seq_hlist_start_head_rcu',0,14),(244,'seq_hlist_start_percpu',0,14),(245,'seq_hlist_start_rcu',0,14),(246,'seq_lseek',34,14),(247,'seq_open',14,14),(248,'seq_pad',0,14),(249,'seq_path',2,14),(250,'seq_read',42,14),(251,'seq_release',8,14),(252,'seq_write',4,14),(253,'set_nlink',0,11),(254,'sget',8,12),(255,'sget_userns',0,12),(256,'shrink_dcache_parent',0,10),(257,'shrink_dcache_sb',0,10),(258,'splice_direct_to_actor',1,7),(259,'splice_from_pipe',1,7),(260,'splice_from_pipe_begin',0,7),(261,'splice_from_pipe_end',0,7),(262,'splice_from_pipe_feed',0,7),(263,'splice_from_pipe_next',0,7),(264,'splice_to_pipe',1,7),(265,'submit_bio_wait',0,14),(266,'sync_inode',0,14),(267,'sync_inodes_sb',0,14),(268,'sync_inode_metadata',0,14),(269,'sync_mapping_buffers',0,14),(270,'sysfs_add_file_to_group',0,4),(271,'sysfs_chmod_file',0,4),(272,'sysfs_create_bin_file',2,4),(273,'sysfs_create_file_ns',0,4),(274,'sysfs_create_link',2,4),(275,'sysfs_remove_bin_file',1,4),(276,'sysfs_remove_file_from_group',0,4),(277,'sysfs_remove_file_ns',0,4),(278,'sysfs_remove_link',2,4),(279,'sysfs_rename_link_ns',0,4),(280,'sys_flock',1,13),(281,'thaw_bdev',0,14),(282,'thaw_super',0,12),(283,'try_to_writeback_inodes_sb',0,14),(284,'try_to_writeback_inodes_sb_nr',0,14),(285,'unlock_new_inode',1,11),(286,'unlock_two_nondirectories',0,11),(287,'unregister_filesystem',0,14),(288,'vfs_cancel_lock',0,13),(289,'vfs_get_link',0,14),(290,'vfs_link',1,14),(291,'vfs_lock_file',0,13),(292,'vfs_path_lookup',3,14),(293,'vfs_readlink',1,14),(294,'vfs_rename',4,14),(295,'vfs_setlease',0,13),(296,'vfs_test_lock',0,13),(297,'vfs_unlink',7,14),(298,'wbc_account_io',0,14),(299,'writeback_inodes_sb',0,14),(300,'writeback_inodes_sb_nr',0,14),(301,'write_inode_now',0,14),(302,'__bio_clone_fast',0,14),(303,'__bread_gfp',0,14),(304,'__break_lease',0,13),(305,'__d_drop',0,10),(306,'__inode_permission',1,14),(307,'__insert_inode_hash',0,11),(308,'__mark_inode_dirty',2,14),(309,'__remove_inode_hash',0,11),(310,'__splice_from_pipe',0,7);
/*!40000 ALTER TABLE `fsfunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fsfunctionposts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fsfunctionposts` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `fsId` int(11) NOT NULL,
  `postId` int(11) NOT NULL,
  `answerPostId` int(11) DEFAULT NULL,
  `postTypeId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fsId_postId` (`fsId`,`postId`)
) ENGINE=InnoDB AUTO_INCREMENT=1337 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fsfunctionposts`
--

LOCK TABLES `fsfunctionposts` WRITE;
/*!40000 ALTER TABLE `fsfunctionposts` DISABLE KEYS */;
INSERT INTO `fsfunctionposts` VALUES (1,2,41923208,NULL,1),(2,6,42581386,NULL,1),(3,8,46919206,46924821,2),(4,9,29879645,NULL,1),(5,9,12720420,NULL,1),(6,9,29762313,NULL,1),(7,9,12720420,17942540,2),(8,9,17345760,17527300,2),(9,9,24214289,24239272,2),(10,11,38360104,NULL,1),(11,12,19494690,NULL,1),(12,21,24376196,NULL,1),(13,21,30085083,NULL,1),(14,21,10959692,NULL,1),(15,21,1884169,NULL,1),(16,21,38360104,NULL,1),(17,21,13646361,NULL,1),(18,21,45086908,NULL,1),(19,21,18729466,NULL,1),(20,21,34706423,NULL,1),(27,21,44942604,45007036,2),(28,21,6665717,6741689,2),(29,21,4425816,26687053,2),(30,23,14628275,NULL,1),(31,24,29879645,NULL,1),(32,24,14628275,NULL,1),(33,24,45086908,NULL,1),(34,24,12720420,17942540,2),(35,24,17345760,17527300,2),(37,25,44565748,NULL,1),(38,25,24079329,NULL,1),(39,25,2682760,NULL,1),(40,25,28967560,NULL,1),(41,25,28988150,NULL,1),(42,25,21082917,NULL,1),(43,25,46419011,NULL,1),(44,25,18448182,NULL,1),(45,25,11311831,NULL,1),(52,25,44565748,44566044,2),(53,25,10451936,23473034,2),(54,25,19235793,19360293,2),(55,25,10293815,10294218,2),(59,26,10596317,NULL,1),(60,28,4425816,26687053,2),(61,29,14628275,15946581,2),(62,29,14628275,17835159,2),(64,30,27428073,NULL,1),(65,30,42012344,44300453,2),(66,30,14628275,17835159,2),(68,32,27226668,NULL,1),(69,32,27078796,NULL,1),(70,32,20667187,NULL,1),(71,32,16840312,NULL,1),(72,32,6742143,NULL,1),(73,32,1676781,NULL,1),(74,32,16922515,NULL,1),(75,32,17640173,NULL,1),(76,32,6588260,NULL,1),(77,32,36666368,NULL,1),(78,32,11387272,NULL,1),(79,32,44141595,NULL,1),(80,32,10739623,NULL,1),(81,32,11248523,NULL,1),(82,32,27152834,NULL,1),(83,32,15604191,NULL,1),(84,32,27980376,NULL,1),(85,32,42748757,NULL,1),(86,32,15191931,NULL,1),(87,32,36667957,NULL,1),(88,32,10590493,NULL,1),(89,32,21648575,NULL,1),(90,32,39255256,NULL,1),(91,32,30853617,NULL,1),(92,32,8254494,NULL,1),(93,32,34764263,NULL,1),(94,32,11767169,NULL,1),(95,32,21604366,NULL,1),(99,32,27226668,27226817,2),(100,32,8461405,8461704,2),(101,32,17640173,17642435,2),(102,32,11387272,11387428,2),(103,32,20980438,20980675,2),(104,32,2546193,11644738,2),(105,32,43003149,43003807,2),(106,32,12459964,12460041,2),(107,32,36666368,36667815,2),(108,32,10590493,17250628,2),(109,32,26900541,26903188,2),(110,32,10590493,10591701,2),(111,32,35222406,35222639,2),(112,32,2563305,2564060,2),(113,32,24942275,24942584,2),(114,32,30853617,30878364,2),(115,32,15739320,15785533,2),(116,32,2894824,8051200,2),(117,32,694080,694092,2),(118,32,27152834,27160089,2),(119,32,21399257,21400873,2),(130,37,17003753,NULL,1),(131,37,38414198,NULL,1),(132,37,23879009,NULL,1),(133,37,23413060,NULL,1),(134,37,41203875,NULL,1),(135,37,1027585,NULL,1),(136,37,36250162,NULL,1),(137,37,26007300,NULL,1),(138,37,30017808,NULL,1),(139,37,41122205,NULL,1),(140,37,1442116,NULL,1),(141,37,14852434,NULL,1),(142,37,6009638,NULL,1),(143,37,37172912,NULL,1),(144,37,35286910,NULL,1),(145,37,33535066,NULL,1),(146,37,33116497,NULL,1),(147,37,40916512,NULL,1),(148,37,9577974,NULL,1),(149,37,12784903,NULL,1),(150,37,41515876,NULL,1),(151,37,26900122,NULL,1),(152,37,1531055,NULL,1),(153,37,18171620,NULL,1),(154,37,14823046,NULL,1),(155,37,41962996,NULL,1),(156,37,21809027,NULL,1),(157,37,15482654,NULL,1),(158,37,23278423,NULL,1),(159,37,14636925,NULL,1),(160,37,31169999,NULL,1),(161,37,14822633,NULL,1),(162,37,26043461,NULL,1),(163,37,8717207,NULL,1),(164,37,20354010,NULL,1),(165,37,23100429,NULL,1),(166,37,10620246,NULL,1),(167,37,29539671,NULL,1),(168,37,44762610,NULL,1),(169,37,14621607,NULL,1),(170,37,30957663,NULL,1),(171,37,18848591,NULL,1),(172,37,35262547,NULL,1),(173,37,7073120,NULL,1),(174,37,28909358,NULL,1),(175,37,34920101,NULL,1),(176,37,5168018,NULL,1),(177,37,14147306,NULL,1),(178,37,34579128,NULL,1),(179,37,24348346,NULL,1),(180,37,25669476,NULL,1),(181,37,15709408,NULL,1),(182,37,44255116,NULL,1),(183,37,28969268,NULL,1),(184,37,20273402,NULL,1),(185,37,36243019,NULL,1),(186,37,43554630,NULL,1),(187,37,26685279,NULL,1),(188,37,11011940,NULL,1),(189,37,28731864,NULL,1),(190,37,27304365,NULL,1),(191,37,3693076,NULL,1),(192,37,34758443,NULL,1),(193,37,23858958,NULL,1),(194,37,19199551,NULL,1),(195,37,5048404,NULL,1),(196,37,22326046,NULL,1),(197,37,21670288,NULL,1),(198,37,26943282,NULL,1),(199,37,43531539,NULL,1),(200,37,26440860,NULL,1),(201,37,28896490,NULL,1),(202,37,17700735,NULL,1),(203,37,5553420,NULL,1),(204,37,28787693,NULL,1),(205,37,24355384,NULL,1),(206,37,17358356,NULL,1),(207,37,21651904,NULL,1),(208,37,27727116,NULL,1),(209,37,22510235,NULL,1),(210,37,2204856,NULL,1),(211,37,45697539,NULL,1),(212,37,29403720,NULL,1),(213,37,14507327,NULL,1),(214,37,2598394,NULL,1),(215,37,42225750,NULL,1),(216,37,9510001,NULL,1),(217,37,37468837,NULL,1),(218,37,41572488,NULL,1),(219,37,41512360,NULL,1),(220,37,33806757,NULL,1),(221,37,36542646,NULL,1),(222,37,35977850,NULL,1),(223,37,15350811,NULL,1),(224,37,35859046,NULL,1),(225,37,5447576,NULL,1),(226,37,17499837,NULL,1),(227,37,22371200,NULL,1),(228,37,8757411,NULL,1),(229,37,5372173,NULL,1),(230,37,43506217,NULL,1),(231,37,6867178,NULL,1),(232,37,33972274,NULL,1),(233,37,33981565,NULL,1),(234,37,4100995,NULL,1),(235,37,18345861,NULL,1),(236,37,4453586,NULL,1),(237,37,28706933,NULL,1),(238,37,16323264,NULL,1),(239,37,25494728,NULL,1),(240,37,20254543,NULL,1),(241,37,12640754,NULL,1),(242,37,17645103,NULL,1),(243,37,26125238,NULL,1),(244,37,6800324,NULL,1),(245,37,5940681,NULL,1),(246,37,17046794,NULL,1),(247,37,26966520,NULL,1),(248,37,27648425,NULL,1),(249,37,34219457,NULL,1),(250,37,1769034,NULL,1),(251,37,46574676,NULL,1),(252,37,46003364,NULL,1),(253,37,29456234,NULL,1),(254,37,20569851,NULL,1),(255,37,5560308,NULL,1),(256,37,2670727,NULL,1),(257,37,10214940,NULL,1),(258,37,37231487,NULL,1),(259,37,38838409,NULL,1),(260,37,2586787,NULL,1),(261,37,11888938,NULL,1),(262,37,29909701,NULL,1),(263,37,37198658,NULL,1),(264,37,35135491,NULL,1),(265,37,23369937,NULL,1),(266,37,2095848,NULL,1),(267,37,18969439,NULL,1),(268,37,22724888,NULL,1),(269,37,16373066,NULL,1),(270,37,33878856,NULL,1),(271,37,20507325,NULL,1),(272,37,34069718,NULL,1),(273,37,16805101,NULL,1),(274,37,21617172,NULL,1),(275,37,35127995,NULL,1),(276,37,12138721,NULL,1),(277,37,25025268,NULL,1),(278,37,39936269,NULL,1),(279,37,18187216,NULL,1),(280,37,16685177,NULL,1),(281,37,28178453,NULL,1),(282,37,26699364,NULL,1),(283,37,41293567,NULL,1),(284,37,17145240,NULL,1),(285,37,27785880,NULL,1),(286,37,27976826,NULL,1),(287,37,32797269,NULL,1),(288,37,34021838,NULL,1),(289,37,28060399,NULL,1),(290,37,33949167,NULL,1),(291,37,22729445,NULL,1),(292,37,16856224,NULL,1),(293,37,30247547,NULL,1),(294,37,40307886,NULL,1),(295,37,11293422,NULL,1),(296,37,5589009,NULL,1),(297,37,31926404,NULL,1),(298,37,41752551,NULL,1),(299,37,4232272,NULL,1),(300,37,44710363,NULL,1),(301,37,21723372,NULL,1),(302,37,19533824,NULL,1),(303,37,19420893,NULL,1),(304,37,6567624,NULL,1),(305,37,36038343,NULL,1),(306,37,45473877,NULL,1),(307,37,23784568,NULL,1),(308,37,22375898,NULL,1),(309,37,45802280,NULL,1),(310,37,38010246,NULL,1),(311,37,20219401,NULL,1),(312,37,36533016,NULL,1),(313,37,16927166,NULL,1),(314,37,41110476,NULL,1),(385,37,28991416,28991623,2),(386,37,27744906,27745123,2),(387,37,32719906,32719928,2),(388,37,27807960,27808161,2),(389,37,41203875,41204158,2),(390,37,40100507,40100878,2),(391,37,28706933,28707403,2),(392,37,635780,4631356,2),(393,37,4913650,4913739,2),(394,37,11469931,11470405,2),(395,37,1097185,1097262,2),(396,37,32163644,32163852,2),(397,37,28909358,28910344,2),(398,37,36612057,36612239,2),(399,37,27351239,27352467,2),(400,37,26900122,26900177,2),(401,37,1531055,1531191,2),(402,37,47523848,47524073,2),(403,37,13434768,13435131,2),(404,37,997946,45433648,2),(405,37,17295064,17295421,2),(406,37,26440860,26651350,2),(407,37,2242963,2242996,2),(408,37,20273402,20273436,2),(409,37,26043461,26043810,2),(410,37,39922085,39924851,2),(411,37,7738546,7738992,2),(412,37,5066152,5070729,2),(413,37,17700735,17701146,2),(414,37,36250162,36250257,2),(415,37,26007300,26007611,2),(416,37,33116497,33116605,2),(417,37,3402643,3402651,2),(418,37,12784903,44378775,2),(419,37,14514435,14515103,2),(420,37,33807898,34206928,2),(421,37,33535066,33535859,2),(422,37,42029914,42030586,2),(423,37,36243019,36243052,2),(424,37,26943282,26953177,2),(425,37,30295174,33600490,2),(426,37,5904612,7279219,2),(427,37,36250162,36250449,2),(428,37,15482654,15483393,2),(429,37,30834730,30834822,2),(430,37,27744906,27745045,2),(431,37,8757411,8757767,2),(432,37,35286910,35286992,2),(433,37,28779681,28780275,2),(434,37,29539671,29539790,2),(435,37,41515876,41516003,2),(436,37,2775864,15910301,2),(437,37,33264095,33265665,2),(438,37,16362353,16364128,2),(439,37,18171620,18171685,2),(440,37,21819138,21819191,2),(441,37,43531539,43535097,2),(442,37,23278423,23279063,2),(443,37,35206133,35206997,2),(444,37,14636925,14639147,2),(445,37,5597337,5597832,2),(446,37,34963738,34964409,2),(447,37,28731864,28731912,2),(448,37,1735307,19312610,2),(449,37,896182,896232,2),(450,37,6514378,6514538,2),(451,37,13244400,13244622,2),(452,37,14912813,14913911,2),(453,37,45746542,45747225,2),(454,37,25420933,25421137,2),(455,37,45384783,45543440,2),(456,37,3283804,10466688,2),(457,37,13928487,13928679,2),(458,37,28909358,28910402,2),(459,37,3913074,3913441,2),(460,37,24457277,24459301,2),(461,37,14465725,14467154,2),(462,37,23756366,23756490,2),(463,37,6590531,6592789,2),(464,37,28951370,28971266,2),(465,37,42837030,42837321,2),(466,37,4939834,4947477,2),(467,37,41184846,41271921,2),(468,37,41079809,41079848,2),(469,37,27727116,27727423,2),(470,37,5773088,5773145,2),(471,37,43458024,43458247,2),(472,37,1431560,1537563,2),(473,37,17055220,17055254,2),(474,37,5940681,5940819,2),(475,37,24348346,24354362,2),(476,37,34184466,34185306,2),(477,37,24543671,24543950,2),(478,37,5830029,5830070,2),(479,37,40158140,40188935,2),(480,37,17400490,17400727,2),(481,37,42624624,42626630,2),(482,37,35262547,35262576,2),(483,37,14822633,14822713,2),(484,37,35297968,35298131,2),(485,37,6514378,6553466,2),(486,37,3425659,3426128,2),(487,37,397495,397540,2),(488,37,19738590,19741772,2),(489,37,3095623,3098126,2),(490,37,34021838,34034561,2),(491,37,8436154,8436276,2),(492,37,5447778,5447848,2),(493,37,14507327,14508741,2),(494,37,5940681,5940717,2),(495,37,38839016,38839151,2),(496,37,11011940,11013076,2),(497,37,16473666,16477520,2),(498,37,20273402,20273462,2),(499,37,15594802,15594859,2),(500,37,3431135,3432006,2),(501,37,25309102,25309615,2),(502,37,38414198,38414313,2),(503,37,9101590,27778592,2),(504,37,5545331,5548778,2),(505,37,5327160,5327367,2),(506,37,38337981,38338096,2),(507,37,7533485,7533635,2),(508,37,43200412,43200952,2),(509,37,14507327,14508688,2),(510,37,17645103,17645320,2),(511,37,28951370,37700604,2),(512,37,17358356,17358949,2),(513,37,20307211,20314695,2),(514,37,33934701,34171932,2),(515,37,25985241,26078329,2),(516,37,33334073,33336252,2),(517,37,23305661,23310475,2),(518,37,38672456,38681730,2),(519,37,13183624,13183696,2),(520,37,9520095,9564198,2),(521,37,38151165,38151913,2),(522,37,24895569,24896868,2),(523,37,25402067,25402623,2),(524,37,17250586,17250780,2),(525,37,17618264,17618400,2),(526,37,5044925,5045576,2),(527,37,8308927,8309154,2),(528,37,6464797,6489840,2),(529,37,12190396,12194554,2),(530,37,17656751,17657226,2),(531,37,2095848,5494336,2),(532,37,19960628,43728814,2),(533,37,8717207,8842994,2),(534,37,12183472,12184845,2),(535,37,32163644,32164660,2),(536,37,38838409,38953692,2),(537,37,32646071,32647699,2),(538,37,27681293,27682246,2),(640,38,24464669,NULL,1),(641,42,14666991,NULL,1),(642,42,14666991,14671001,2),(643,45,42235800,NULL,1),(644,45,30119167,NULL,1),(645,45,24817424,NULL,1),(646,45,31343335,NULL,1),(647,45,26272068,NULL,1),(648,45,21669851,NULL,1),(650,45,24817424,24819730,2),(651,45,31343335,31356317,2),(652,45,42235800,42236115,2),(653,45,4508998,44388030,2),(654,45,2264384,44613896,2),(655,45,30035776,44645336,2),(657,46,2769627,NULL,1),(658,46,31101016,NULL,1),(659,46,31343335,NULL,1),(660,46,26272068,NULL,1),(661,46,21669851,NULL,1),(662,46,36593457,NULL,1),(664,46,4986509,4986656,2),(665,46,25625416,25640402,2),(666,46,14079893,42888897,2),(667,46,31343335,31356317,2),(668,46,2769627,2769678,2),(669,46,14079893,14089587,2),(670,46,42235800,42236115,2),(671,46,25399112,45100058,2),(672,46,37606442,37638496,2),(673,46,10696863,22890993,2),(674,46,39134990,45127582,2),(675,46,37919223,37987790,2),(676,46,4508998,44388030,2),(677,46,2264384,44613896,2),(678,46,30035776,44645336,2),(679,46,22632713,44640466,2),(680,46,35981302,35984789,2),(695,48,14079893,42888897,2),(696,53,25625416,25640402,2),(697,53,44930443,44963841,2),(699,65,21669851,NULL,1),(700,65,14666991,NULL,1),(701,65,26272068,NULL,1),(702,65,36593457,NULL,1),(706,65,30119167,30132531,2),(707,65,25399112,45100058,2),(708,65,14666991,14671001,2),(709,65,39134990,45127582,2),(710,65,37919223,37987790,2),(711,65,35981302,35984789,2),(713,66,26272068,NULL,1),(714,66,4508998,44388030,2),(715,66,2264384,44613896,2),(716,66,30035776,44645336,2),(717,66,22632713,44640466,2),(721,72,7585800,NULL,1),(722,73,16685177,NULL,1),(723,74,33219046,NULL,1),(724,74,6502071,NULL,1),(726,76,37798717,NULL,1),(727,76,19749802,19749967,2),(728,80,23235916,23236440,2),(729,84,16685177,NULL,1),(730,84,34260007,NULL,1),(731,84,33232023,NULL,1),(732,84,31193259,NULL,1),(733,84,27978344,NULL,1),(734,84,28802219,NULL,1),(735,84,14158731,NULL,1),(736,84,33234166,NULL,1),(737,84,21658364,NULL,1),(738,84,30419670,NULL,1),(739,84,16720168,NULL,1),(740,84,12946456,NULL,1),(741,84,45381162,NULL,1),(742,84,33630713,NULL,1),(743,84,31343335,NULL,1),(744,84,29506505,NULL,1),(745,84,19603082,NULL,1),(746,84,27869570,NULL,1),(747,84,9625393,NULL,1),(748,84,37798717,NULL,1),(749,84,27434694,NULL,1),(750,84,12901959,NULL,1),(751,84,9609970,NULL,1),(752,84,44659538,NULL,1),(753,84,8379060,NULL,1),(754,84,12324522,NULL,1),(755,84,27625991,NULL,1),(756,84,32946995,NULL,1),(757,84,32498970,NULL,1),(758,84,26167926,NULL,1),(760,84,8868642,9581891,2),(761,84,9288326,9289280,2),(762,84,22186006,22198748,2),(763,84,12282575,12282959,2),(764,84,9948226,9949029,2),(765,84,12982318,12983044,2),(766,84,13758275,13784481,2),(767,84,35920686,36789694,2),(768,84,9625393,9625509,2),(769,84,36517378,36522078,2),(770,84,12282575,12282838,2),(771,84,29321979,29325055,2),(772,84,34260007,34407310,2),(773,84,7358883,8533706,2),(774,84,1966856,1992387,2),(775,84,1817663,1818119,2),(776,84,16317923,30653435,2),(777,84,9520095,9564198,2),(778,84,1817663,8223824,2),(779,84,22214686,22256667,2),(780,84,32184898,32201868,2),(781,84,22365997,22672731,2),(782,84,12878228,12890342,2),(783,84,10071296,10071360,2),(784,84,27869570,27901009,2),(785,84,22002101,22094498,2),(786,84,12878228,12878327,2),(787,84,2485887,2489222,2),(788,84,27434694,27546850,2),(789,84,5991285,6003205,2),(790,84,10928451,17337839,2),(791,86,37798717,NULL,1),(792,89,12921365,12921570,2),(793,89,36039497,36042631,2),(795,92,41968916,NULL,1),(796,92,41955599,NULL,1),(797,92,3865636,NULL,1),(798,92,41853070,NULL,1),(799,92,41244657,NULL,1),(800,92,42832253,NULL,1),(801,92,25275956,NULL,1),(802,92,39830906,NULL,1),(803,92,41652821,NULL,1),(804,92,41855178,NULL,1),(805,92,10646314,NULL,1),(806,92,40261111,NULL,1),(807,92,9857188,NULL,1),(808,92,16507448,NULL,1),(809,92,1853812,NULL,1),(810,92,28644637,NULL,1),(811,92,27073225,NULL,1),(812,92,40515782,NULL,1),(826,92,25398819,25400489,2),(827,92,13741873,13742626,2),(828,92,17885676,18121511,2),(829,92,41955599,41960084,2),(830,92,28221166,28224286,2),(831,92,10646314,10696733,2),(832,92,3865636,3865724,2),(833,92,4204666,41520005,2),(834,92,41853070,41853908,2),(835,92,41652821,41653484,2),(836,92,39830906,39831154,2),(837,92,25275956,25278196,2),(838,92,25275956,25278018,2),(839,92,5991285,6003205,2),(840,92,43013694,43067043,2),(841,92,41968916,41969070,2),(842,92,18658295,20356212,2),(843,92,33986081,33987798,2),(844,92,32175346,32176905,2),(845,92,40515782,40523090,2),(846,92,8216871,8220244,2),(847,92,25275956,25277049,2),(848,92,25581465,28890357,2),(849,92,28644637,28644779,2),(850,92,18862057,30182583,2),(851,92,34403325,34406134,2),(852,92,8250078,8250940,2),(853,92,17174647,27006777,2),(854,92,3865636,3865844,2),(855,92,38437019,38741697,2),(856,92,25714501,26080343,2),(857,93,8884643,NULL,1),(858,100,13607730,13615599,2),(859,101,13607730,13628073,2),(860,103,13607730,13615599,2),(861,103,13607730,13628073,2),(863,107,13607730,13615599,2),(864,107,13607730,13628073,2),(866,114,19274048,NULL,1),(867,114,37634446,NULL,1),(868,114,38055236,NULL,1),(869,119,9478545,NULL,1),(870,119,16452846,NULL,1),(871,119,47161259,NULL,1),(872,119,45119658,NULL,1),(873,119,41084081,NULL,1),(876,119,16683183,30595826,2),(877,119,43875546,43882842,2),(879,120,10325935,NULL,1),(880,121,37233685,NULL,1),(881,122,37233685,NULL,1),(882,124,37233685,NULL,1),(883,126,24464669,NULL,1),(884,128,30570223,30571374,2),(885,131,4440476,NULL,1),(886,131,17568722,NULL,1),(887,131,39040065,NULL,1),(888,131,5282313,NULL,1),(889,131,3900890,NULL,1),(890,131,15032081,NULL,1),(891,131,1860955,NULL,1),(892,131,26666834,NULL,1),(893,131,22169124,NULL,1),(894,131,3686652,NULL,1),(895,131,23078437,NULL,1),(896,131,12290866,NULL,1),(897,131,32767440,NULL,1),(898,131,19515499,NULL,1),(899,131,5604610,NULL,1),(900,131,24264191,NULL,1),(901,131,6256400,NULL,1),(902,131,12676243,NULL,1),(903,131,3168504,NULL,1),(904,131,45833207,NULL,1),(905,131,44116504,NULL,1),(906,131,45422643,NULL,1),(907,131,45446198,NULL,1),(908,131,35042611,NULL,1),(909,131,7103752,NULL,1),(910,131,45986760,NULL,1),(911,131,14474813,NULL,1),(912,131,38798409,NULL,1),(913,131,38698991,NULL,1),(916,131,37261554,37261764,2),(917,131,3686652,3686675,2),(918,131,4440476,4442019,2),(919,131,47317531,47360951,2),(920,131,2138337,2138546,2),(921,131,45986760,45987270,2),(922,131,3686652,3686669,2),(923,131,1860955,1862211,2),(924,131,3686652,3686800,2),(925,131,1860955,1861857,2),(926,131,22169124,22171469,2),(927,131,4440476,4440536,2),(928,131,3686652,3686746,2),(929,131,1876150,1876528,2),(930,131,15102406,15104309,2),(931,131,3686652,3686663,2),(932,131,1881200,1881212,2),(933,131,20863402,20864400,2),(934,131,2024895,2035162,2),(935,131,16823615,16823728,2),(936,131,14845317,14893357,2),(937,131,14474813,14475041,2),(938,131,14474813,14474943,2),(947,134,34069380,34070343,2),(948,135,5246797,NULL,1),(949,135,1137228,1137246,2),(950,135,16033589,16034150,2),(951,135,5246797,5247238,2),(952,135,5845130,41195807,2),(953,135,312040,312509,2),(954,135,30864735,30865550,2),(955,135,8821169,9353640,2),(956,135,4805605,4805803,2),(957,135,5122708,5122784,2),(958,135,2463910,2464454,2),(959,135,3738227,3739732,2),(960,135,28568494,28569076,2),(964,136,5845130,41195807,2),(965,138,16685177,NULL,1),(966,142,5063897,5064013,2),(967,143,14099662,NULL,1),(968,145,10325935,NULL,1),(969,145,29597104,NULL,1),(971,145,9854901,9855174,2),(972,147,34069380,NULL,1),(973,147,13080720,NULL,1),(974,147,24182509,NULL,1),(975,147,18041192,NULL,1),(976,147,21021484,NULL,1),(977,147,17101592,NULL,1),(978,147,25377090,NULL,1),(979,147,11235643,NULL,1),(980,147,40542556,NULL,1),(981,147,42220843,NULL,1),(982,147,13988573,NULL,1),(983,147,40822419,NULL,1),(984,147,22773849,NULL,1),(985,147,29818894,NULL,1),(986,147,23861319,NULL,1),(987,147,23561354,NULL,1),(988,147,19085928,NULL,1),(989,147,44229551,NULL,1),(1003,147,18041192,18151197,2),(1004,147,12060572,12060652,2),(1005,147,18041192,18041349,2),(1006,147,13080720,13080752,2),(1007,147,34069380,34070343,2),(1008,147,34069380,34070813,2),(1009,147,6640556,7955919,2),(1010,147,34501190,35732103,2),(1011,147,12380967,12388986,2),(1012,147,32734332,32734446,2),(1013,147,29998648,29999112,2),(1014,147,18978639,18978922,2),(1015,147,20448270,20448670,2),(1016,147,18041192,18151369,2),(1017,147,16027785,16027834,2),(1018,147,2179416,2179447,2),(1019,147,43187486,43190459,2),(1020,147,13758275,13784481,2),(1021,147,43058157,43058333,2),(1022,147,17319579,17321178,2),(1034,149,31926134,32288932,2),(1035,150,43875546,43882842,2),(1036,151,22908736,22910245,2),(1037,151,4667290,4677892,2),(1038,151,24041951,24168761,2),(1039,159,9758992,NULL,1),(1040,168,16567841,NULL,1),(1041,169,31034536,31121853,2),(1042,188,5282313,NULL,1),(1043,190,30479574,NULL,1),(1044,190,19494690,NULL,1),(1046,196,28221166,NULL,1),(1047,196,42012344,NULL,1),(1049,196,42012344,44300453,2),(1050,196,14628275,17835159,2),(1051,196,4425816,26687053,2),(1052,197,8868642,NULL,1),(1053,202,45873182,NULL,1),(1054,203,10684366,10722687,2),(1055,204,37798717,NULL,1),(1056,204,1564185,NULL,1),(1057,204,43149826,NULL,1),(1058,204,14099662,NULL,1),(1062,204,1564185,1564262,2),(1063,204,18743584,29246342,2),(1064,204,4411701,4412261,2),(1065,204,1564185,1564274,2),(1069,205,32283592,NULL,1),(1070,205,3501701,NULL,1),(1071,205,27073225,NULL,1),(1072,205,3501701,3574073,2),(1073,205,18862057,30182583,2),(1074,205,8250078,8250940,2),(1075,205,38437019,38741697,2),(1076,205,7566755,7710753,2),(1079,207,32283592,NULL,1),(1080,207,26066494,NULL,1),(1081,207,28802219,NULL,1),(1082,207,8250078,8250940,2),(1083,207,13561102,13567523,2),(1084,207,18862057,30182583,2),(1085,207,12878228,12878327,2),(1086,207,38437019,38741697,2),(1087,207,12878228,12890342,2),(1088,207,13758275,13784481,2),(1089,208,23097893,NULL,1),(1090,208,43860106,NULL,1),(1091,208,37233685,NULL,1),(1092,208,19266565,19316672,2),(1093,208,23097893,23098167,2),(1095,213,15213932,NULL,1),(1096,213,37233685,NULL,1),(1097,213,5991285,NULL,1),(1098,213,9960017,NULL,1),(1099,213,47315064,NULL,1),(1100,213,35420286,NULL,1),(1102,213,26678924,26689993,2),(1103,213,42744637,42745577,2),(1104,213,29226587,29226935,2),(1105,218,16405031,NULL,1),(1106,218,35772369,NULL,1),(1108,218,31380820,31382268,2),(1109,218,31310629,31333192,2),(1111,219,11535161,11536589,2),(1112,220,20164041,NULL,1),(1113,220,37654598,37656472,2),(1114,223,35772369,NULL,1),(1115,228,26255256,26256535,2),(1116,229,5684347,5684453,2),(1117,229,22492901,22493140,2),(1119,230,34588184,NULL,1),(1120,230,23283209,NULL,1),(1121,230,6785651,NULL,1),(1122,230,12917198,12923107,2),(1123,246,40877986,NULL,1),(1124,246,8646686,NULL,1),(1125,246,17663692,NULL,1),(1126,246,24073869,NULL,1),(1127,246,41482564,NULL,1),(1128,246,34588184,NULL,1),(1129,246,25581884,NULL,1),(1130,246,29166203,NULL,1),(1131,246,29159834,NULL,1),(1132,246,23193078,NULL,1),(1133,246,25319512,NULL,1),(1134,246,25130028,NULL,1),(1135,246,45792054,NULL,1),(1136,246,31236757,NULL,1),(1137,246,30035776,NULL,1),(1138,246,24946863,NULL,1),(1139,246,39504821,NULL,1),(1140,246,36762974,NULL,1),(1141,246,24814311,NULL,1),(1142,246,30842364,NULL,1),(1143,246,23218177,NULL,1),(1144,246,36751647,NULL,1),(1145,246,36783698,NULL,1),(1154,246,23218177,23234220,2),(1155,246,5970595,45531867,2),(1156,246,8646686,8648808,2),(1157,246,25399112,45100058,2),(1158,246,14079893,14089587,2),(1159,246,30261048,30261655,2),(1160,246,8516021,18924359,2),(1161,246,2531730,19001508,2),(1162,246,23183838,23187924,2),(1163,246,4494307,4495379,2),(1164,246,39134990,45127582,2),(1165,246,45792054,45795173,2),(1166,246,448999,15494206,2),(1167,246,19725900,19755213,2),(1169,247,13329724,NULL,1),(1170,247,39504821,NULL,1),(1171,247,25007342,NULL,1),(1172,247,7479017,NULL,1),(1173,247,30715169,NULL,1),(1174,247,25319512,NULL,1),(1175,247,25130028,NULL,1),(1176,247,24946863,NULL,1),(1177,247,23218177,NULL,1),(1184,247,44316739,44334598,2),(1185,247,23218177,23790401,2),(1186,247,14079893,14089587,2),(1187,247,21422433,21430218,2),(1188,247,25399112,45100058,2),(1189,247,19725900,19755213,2),(1191,249,32686344,NULL,1),(1192,249,26749630,NULL,1),(1194,249,26749630,26754434,2),(1195,250,23193078,NULL,1),(1196,250,8646686,NULL,1),(1197,250,17663692,NULL,1),(1198,250,40877986,NULL,1),(1199,250,24073869,NULL,1),(1200,250,41482564,NULL,1),(1201,250,18479894,NULL,1),(1202,250,34588184,NULL,1),(1203,250,25581884,NULL,1),(1204,250,29166203,NULL,1),(1205,250,29159834,NULL,1),(1206,250,29076326,NULL,1),(1207,250,25319512,NULL,1),(1208,250,25130028,NULL,1),(1209,250,45792054,NULL,1),(1210,250,31236757,NULL,1),(1211,250,30842364,NULL,1),(1212,250,24946863,NULL,1),(1213,250,26318704,NULL,1),(1214,250,36751647,NULL,1),(1215,250,37933305,NULL,1),(1216,250,39504821,NULL,1),(1217,250,36762974,NULL,1),(1218,250,36783698,NULL,1),(1219,250,23218177,NULL,1),(1226,250,11949714,12642831,2),(1227,250,23218177,23234220,2),(1228,250,28491697,28491987,2),(1229,250,44316739,44334598,2),(1230,250,5970595,45531867,2),(1231,250,8646686,8648808,2),(1232,250,25399112,45100058,2),(1233,250,14079893,14089587,2),(1234,250,30261048,30261655,2),(1235,250,8516021,18924359,2),(1236,250,2531730,19001508,2),(1237,250,23183838,23187924,2),(1238,250,4494307,4495379,2),(1239,250,30274718,30274795,2),(1240,250,34798849,34811480,2),(1241,250,39134990,45127582,2),(1242,250,45792054,45795173,2),(1243,250,5713451,5880485,2),(1244,250,19725900,19755213,2),(1245,250,448999,15494206,2),(1257,251,26066494,NULL,1),(1258,251,25319512,NULL,1),(1259,251,25130028,NULL,1),(1260,251,39504821,NULL,1),(1261,251,36762974,NULL,1),(1264,251,23218177,23790401,2),(1265,251,26066494,26068115,2),(1266,251,23218177,23234220,2),(1267,251,14079893,14089587,2),(1268,251,25399112,45100058,2),(1271,252,30710517,NULL,1),(1272,252,29166203,NULL,1),(1273,252,29159834,NULL,1),(1274,252,29166203,29170723,2),(1275,252,46682738,46683208,2),(1277,254,33992436,NULL,1),(1278,254,41115953,NULL,1),(1279,254,29677144,NULL,1),(1280,254,28373973,NULL,1),(1284,254,33992436,33992724,2),(1285,254,30570223,30571374,2),(1286,254,28470909,28471117,2),(1287,254,44847757,44849208,2),(1288,254,30954800,30955450,2),(1289,254,28373973,28376116,2),(1291,258,7585800,NULL,1),(1292,259,39112724,NULL,1),(1293,264,37233685,NULL,1),(1294,272,47526450,NULL,1),(1295,272,32011917,NULL,1),(1297,274,28176154,NULL,1),(1298,274,46283121,NULL,1),(1300,275,32011917,NULL,1),(1301,278,23876178,NULL,1),(1302,278,23882164,NULL,1),(1304,280,34260007,NULL,1),(1305,285,34069380,34070343,2),(1306,290,22233666,NULL,1),(1307,290,22233666,22236534,2),(1308,292,4405670,NULL,1),(1309,292,8868642,NULL,1),(1311,292,16516919,16520384,2),(1312,293,26830150,26830275,2),(1313,294,22186006,NULL,1),(1314,294,8868642,NULL,1),(1316,294,22233666,22236534,2),(1317,294,22186006,22198748,2),(1318,294,12878228,12890342,2),(1319,294,12878228,12878327,2),(1323,297,24079670,NULL,1),(1324,297,12901959,NULL,1),(1325,297,17198046,NULL,1),(1326,297,8868642,NULL,1),(1327,297,22233666,NULL,1),(1330,297,2070514,2072837,2),(1331,297,12901959,12906817,2),(1332,297,13758275,13784481,2),(1333,306,45720582,NULL,1),(1334,308,20354253,NULL,1),(1335,308,16567841,NULL,1);
/*!40000 ALTER TABLE `fsfunctionposts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-02  1:11:36
