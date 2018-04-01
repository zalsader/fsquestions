      update fsfunction set categoryId = (select id from fscategories where name = "The Filesystem types") where name in (
         "positive_aop_returns",
         "sb_end_write",
         "sb_end_pagefault",
         "sb_end_intwrite",
         "sb_start_write",
         "sb_start_pagefault",
         "filemap_set_wb_err",
         "filemap_check_wb_err",
         "filemap_sample_wb_err"
      );
      update fsfunction set categoryId = (select id from fscategories where name = "The Directory Cache") where name in (
         "shrink_dcache_sb",
         "path_has_submounts",
         "shrink_dcache_parent",
         "d_invalidate",
         "d_alloc",
         "d_alloc_pseudo",
         "d_instantiate",
         "d_instantiate_no_diralias",
         "d_find_any_alias",
         "d_obtain_alias",
         "d_obtain_root",
         "d_add_ci",
         "d_lookup",
         "d_hash_and_lookup",
         "d_delete",
         "d_rehash",
         "d_add",
         "d_exact_alias",
         "dentry_update_name_case",
         "d_splice_alias",
         "d_path",
         "is_subdir",
         "dget_dlock",
         "d_unhashed",
         "d_really_is_negative",
         "d_really_is_positive",
         "d_inode",
         "d_inode_rcu",
         "d_backing_inode",
         "d_backing_dentry",
         "d_real",
         "d_real_inode"
      );
      update fsfunction set categoryId = (select id from fscategories where name = "Inode Handling") where name in (
         "inode_init_always",
         "drop_nlink",
         "clear_nlink",
         "set_nlink",
         "inc_nlink",
         "inode_sb_list_add",
         "__insert_inode_hash",
         "__remove_inode_hash",
         "evict_inodes",
         "new_inode",
         "unlock_new_inode",
         "lock_two_nondirectories",
         "unlock_two_nondirectories",
         "iget5_locked",
         "iget_locked",
         "iunique",
         "ilookup5_nowait",
         "ilookup5",
         "ilookup",
         "find_inode_nowait",
         "iput",
         "bmap",
         "file_update_time",
         "inode_init_owner",
         "inode_owner_or_capable",
         "inode_dio_wait",
         "current_time",
         "make_bad_inode",
         "is_bad_inode",
         "iget_failed"
      );
      update fsfunction set categoryId = (select id from fscategories where name = "Registration and Superblocks") where name in (
         "deactivate_locked_super",
         "deactivate_super",
         "generic_shutdown_super",
         "sget_userns",
         "sget",
         "iterate_supers_type",
         "get_super",
         "get_super_thawed",
         "get_super_exclusive_thawed",
         "freeze_super",
         "thaw_super"
      );
      update fsfunction set categoryId = (select id from fscategories where name = "File Locks") where name in (
         "posix_lock_file",
         "locks_mandatory_area",
         "__break_lease",
         "lease_get_mtime",
         "generic_setlease",
         "vfs_setlease",
         "locks_lock_inode_wait",
         "vfs_test_lock",
         "vfs_lock_file",
         "posix_unblock_lock",
         "vfs_cancel_lock",
         "posix_lock_inode_wait",
         "locks_mandatory_locked",
         "fcntl_getlease",
         "check_conflicting_open",
         "fcntl_setlease",
         "flock_lock_inode_wait",
         "sys_flock",
         "locks_translate_pid"
      );
      update fsfunction set categoryId = (select id from fscategories where name = "Other Functions") where name in (
         "mpage_readpages",
         "mpage_writepages",
         "generic_permission",
         "inode_permission",
         "path_get",
         "path_put",
         "vfs_path_lookup",
         "lookup_one_len",
         "lookup_one_len_unlocked",
         "vfs_unlink",
         "vfs_link",
         "vfs_rename",
         "vfs_readlink",
         "vfs_get_link",
         "sync_mapping_buffers",
         "mark_buffer_dirty",
         "__bread_gfp",
         "block_invalidatepage",
         "clean_bdev_aliases",
         "ll_rw_block",
         "bh_uptodate_or_lock",
         "bh_submit_read",
         "bio_reset",
         "bio_chain",
         "bio_alloc_bioset",
         "bio_put",
         "__bio_clone_fast",
         "bio_clone_fast",
         "bio_clone_bioset",
         "bio_add_pc_page",
         "bio_add_page",
         "bio_iov_iter_get_pages",
         "submit_bio_wait",
         "bio_advance",
         "bio_copy_data",
         "bio_map_kern",
         "bio_endio",
         "bio_split",
         "bio_trim",
         "bioset_create",
         "bio_associate_blkcg",
         "bio_clone_blkcg_association",
         "seq_open",
         "seq_read",
         "seq_lseek",
         "seq_release",
         "seq_escape",
         "mangle_path",
         "seq_path",
         "seq_file_path",
         "seq_write",
         "seq_pad",
         "seq_hlist_start",
         "seq_hlist_start_head",
         "seq_hlist_next",
         "seq_hlist_start_rcu",
         "seq_hlist_start_head_rcu",
         "seq_hlist_next_rcu",
         "seq_hlist_start_percpu",
         "seq_hlist_next_percpu",
         "register_filesystem",
         "unregister_filesystem",
         "wbc_account_io",
         "inode_congested",
         "__mark_inode_dirty",
         "writeback_inodes_sb_nr",
         "writeback_inodes_sb",
         "try_to_writeback_inodes_sb",
         "sync_inodes_sb",
         "write_inode_now",
         "sync_inode",
         "sync_inode_metadata",
         "freeze_bdev",
         "thaw_bdev",
         "bdev_read_page",
         "bdev_write_page",
         "bdgrab",
         "bd_link_disk_holder",
         "bd_unlink_disk_holder",
         "check_disk_size_change",
         "revalidate_disk",
         "blkdev_get",
         "blkdev_get_by_path",
         "blkdev_get_by_dev",
         "lookup_bdev"
      );
      update fsfunction set categoryId = (select id from fscategories where name = "sysctl interface") where name in (
         "proc_dostring",
         "proc_dointvec",
         "proc_douintvec",
         "proc_dointvec_minmax",
         "proc_douintvec_minmax",
         "proc_doulongvec_minmax",
         "proc_doulongvec_ms_jiffies_minmax",
         "proc_dointvec_jiffies",
         "proc_dointvec_userhz_jiffies",
         "proc_dointvec_ms_jiffies"
      );
      update fsfunction set categoryId = (select id from fscategories where name = "proc filesystem interface") where name in (
         "proc_flush_task"
      );
   update fsfunction set categoryId = (select id from fscategories where name = "Events based on file descriptors") where name in (
         "eventfd_signal",
         "eventfd_ctx_put",
         "eventfd_ctx_remove_wait_queue",
         "eventfd_fget",
         "eventfd_ctx_fdget",
         "eventfd_ctx_fileget"
      );
   update fsfunction set categoryId = (select id from fscategories where name = "The Filesystem for Exporting Kernel Objects") where name in (
         "sysfs_create_file_ns",
         "sysfs_add_file_to_group",
         "sysfs_chmod_file",
         "sysfs_remove_file_ns",
         "sysfs_remove_file_from_group",
         "sysfs_create_bin_file",
         "sysfs_remove_bin_file",
         "sysfs_create_link",
         "sysfs_create_link_nowarn",
         "sysfs_remove_link",
         "sysfs_rename_link_ns"
      );
   update fsfunction set categoryId = (select id from fscategories where name = "The debugfs filesystem") where name in (
         "debugfs_lookup",
         "debugfs_create_file",
         "debugfs_create_file_unsafe",
         "debugfs_create_file_size",
         "debugfs_create_dir",
         "debugfs_create_automount",
         "debugfs_create_symlink",
         "debugfs_remove",
         "debugfs_remove_recursive",
         "debugfs_rename",
         "debugfs_initialized",
         "debugfs_file_get",
         "debugfs_file_put",
         "debugfs_create_u8",
         "debugfs_create_u16",
         "debugfs_create_u32",
         "debugfs_create_u64",
         "debugfs_create_ulong",
         "debugfs_create_x8",
         "debugfs_create_x16",
         "debugfs_create_x32",
         "debugfs_create_x64",
         "debugfs_create_size_t",
         "debugfs_create_atomic_t",
         "debugfs_create_bool",
         "debugfs_create_blob",
         "debugfs_create_u32_array",
         "debugfs_print_regs32",
         "debugfs_create_regset32",
         "debugfs_create_devm_seqfile"
      );
      update fsfunction set categoryId = (select id from fscategories where name = "Data Types") where name in (
         "handle_t",
         "journal_t",
         "jbd2_inode",
         "jbd2_journal_handle",
         "journal_s"
      );
      update fsfunction set categoryId = (select id from fscategories where name = "Functions") where name in (
         "jbd2_journal_force_commit_nested",
         "jbd2_journal_force_commit",
         "jbd2_journal_init_dev",
         "jbd2_journal_init_inode",
         "jbd2_journal_update_sb_errno",
         "jbd2_journal_load",
         "jbd2_journal_destroy",
         "jbd2_journal_check_used_features",
         "jbd2_journal_check_available_features",
         "jbd2_journal_set_features",
         "jbd2_journal_flush",
         "jbd2_journal_wipe",
         "jbd2_journal_abort",
         "jbd2_journal_errno",
         "jbd2_journal_clear_err",
         "jbd2_journal_ack_err",
         "jbd2_journal_recover",
         "jbd2_journal_skip_recovery",
         "jbd2_journal_start",
         "jbd2_journal_start_reserved",
         "jbd2_journal_extend",
         "jbd2__journal_restart",
         "jbd2_journal_lock_updates",
         "jbd2_journal_unlock_updates",
         "jbd2_journal_get_write_access",
         "jbd2_journal_get_create_access",
         "jbd2_journal_get_undo_access",
         "jbd2_journal_set_triggers",
         "jbd2_journal_dirty_metadata",
         "jbd2_journal_forget",
         "jbd2_journal_stop",
         "jbd2_journal_try_to_free_buffers",
         "jbd2_journal_invalidatepage"
      );
   update fsfunction set categoryId = (select id from fscategories where name = "splice API") where name in (
         "splice_to_pipe",
         "generic_file_splice_read",
         "splice_from_pipe_feed",
         "splice_from_pipe_next",
         "splice_from_pipe_begin",
         "splice_from_pipe_end",
         "__splice_from_pipe",
         "splice_from_pipe",
         "iter_file_splice_write",
         "generic_splice_sendpage",
         "splice_direct_to_actor",
         "do_splice_direct"
      );
   update fsfunction set categoryId = (select id from fscategories where name = "pipes API") where name in (
         "pipe_buffer",
         "pipe_inode_info",
         "pipe_buf_get",
         "pipe_buf_release",
         "pipe_buf_confirm",
         "pipe_buf_steal",
         "generic_pipe_buf_steal",
         "generic_pipe_buf_get",
         "generic_pipe_buf_confirm",
         "generic_pipe_buf_release"
      );