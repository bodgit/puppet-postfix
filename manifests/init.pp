#
class postfix (
  $conf_dir                                               = $::postfix::params::conf_dir,
  $default_services                                       = $::postfix::params::default_services,
  $lookup_packages                                        = $::postfix::params::lookup_packages,
  $package_name                                           = $::postfix::params::package_name,
  $service_name                                           = $::postfix::params::service_name,
  # main.cf parameters below
  $twobounce_notice_recipient                             = undef,
  $access_map_defer_code                                  = undef,
  $access_map_reject_code                                 = undef,
  $address_verify_cache_cleanup_interval                  = undef,
  $address_verify_default_transport                       = undef,
  $address_verify_local_transport                         = undef,
  $address_verify_map                                     = undef,
  $address_verify_negative_cache                          = undef,
  $address_verify_negative_expire_time                    = undef,
  $address_verify_negative_refresh_time                   = undef,
  $address_verify_poll_count                              = undef,
  $address_verify_poll_delay                              = undef,
  $address_verify_positive_expire_time                    = undef,
  $address_verify_positive_refresh_time                   = undef,
  $address_verify_relay_transport                         = undef,
  $address_verify_relayhost                               = undef,
  $address_verify_sender                                  = undef,
  $address_verify_sender_dependent_default_transport_maps = undef,
  $address_verify_sender_dependent_relayhost_maps         = undef,
  $address_verify_sender_ttl                              = undef,
  $address_verify_service_name                            = undef,
  $address_verify_transport_maps                          = undef,
  $address_verify_virtual_transport                       = undef,
  $alias_database                                         = $::postfix::params::alias_database,
  $alias_maps                                             = $::postfix::params::alias_maps,
  $allow_mail_to_commands                                 = undef,
  $allow_mail_to_files                                    = undef,
  $allow_min_user                                         = undef,
  $allow_percent_hack                                     = undef,
  $allow_untrusted_routing                                = undef,
  $alternate_config_directories                           = undef,
  $always_add_missing_headers                             = undef,
  $always_bcc                                             = undef,
  $anvil_rate_time_unit                                   = undef,
  $anvil_status_update_time                               = undef,
  $append_at_myorigin                                     = undef,
  $append_dot_mydomain                                    = undef,
  $application_event_drain_time                           = undef,
  $authorized_flush_users                                 = undef,
  $authorized_mailq_users                                 = undef,
  $authorized_submit_users                                = undef,
  $backwards_bounce_logfile_compatibility                 = undef,
  $berkeley_db_create_buffer_size                         = undef,
  $berkeley_db_read_buffer_size                           = undef,
  $best_mx_transport                                      = undef,
  $biff                                                   = undef,
  $body_checks                                            = undef,
  $body_checks_size_limit                                 = undef,
  $bounce_notice_recipient                                = undef,
  $bounce_queue_lifetime                                  = undef,
  $bounce_service_name                                    = undef,
  $bounce_size_limit                                      = undef,
  $bounce_template_file                                   = undef,
  $broken_sasl_auth_clients                               = undef,
  $canonical_classes                                      = undef,
  $canonical_maps                                         = undef,
  $cleanup_service_name                                   = undef,
  $command_directory                                      = $::postfix::params::command_directory,
  $command_execution_directory                            = undef,
  $command_expansion_filter                               = undef,
  $command_time_limit                                     = undef,
  $config_directory                                       = undef,
  $connection_cache_protocol_timeout                      = undef,
  $connection_cache_service_name                          = undef,
  $connection_cache_status_update_time                    = undef,
  $connection_cache_ttl_limit                             = undef,
  $content_filter                                         = undef,
  $cyrus_sasl_config_path                                 = undef,
  $daemon_directory                                       = $::postfix::params::daemon_directory,
  $daemon_table_open_error_is_fatal                       = undef,
  $daemon_timeout                                         = undef,
  $data_directory                                         = $::postfix::params::data_directory,
  $debug_peer_level                                       = $::postfix::params::debug_peer_level,
  $debug_peer_list                                        = undef,
  $debugger_command                                       = $::postfix::params::debugger_command,
  $default_database_type                                  = undef,
  $default_delivery_slot_cost                             = undef,
  $default_delivery_slot_discount                         = undef,
  $default_delivery_slot_loan                             = undef,
  $default_destination_concurrency_failed_cohort_limit    = undef,
  $default_destination_concurrency_limit                  = undef,
  $default_destination_concurrency_negative_feedback      = undef,
  $default_destination_concurrency_positive_feedback      = undef,
  $default_destination_rate_delay                         = undef,
  $default_destination_recipient_limit                    = undef,
  $default_extra_recipient_limit                          = undef,
  $default_filter_nexthop                                 = undef,
  $default_minimum_delivery_slots                         = undef,
  $default_privs                                          = undef,
  $default_process_limit                                  = undef,
  $default_rbl_reply                                      = undef,
  $default_recipient_limit                                = undef,
  $default_recipient_refill_delay                         = undef,
  $default_recipient_refill_limit                         = undef,
  $default_transport                                      = undef,
  $default_verp_delimiters                                = undef,
  $defer_code                                             = undef,
  $defer_service_name                                     = undef,
  $defer_transports                                       = undef,
  $delay_logging_resolution_limit                         = undef,
  $delay_notice_recipient                                 = undef,
  $delay_warning_time                                     = undef,
  $deliver_lock_attempts                                  = undef,
  $deliver_lock_delay                                     = undef,
  $destination_concurrency_feedback_debug                 = undef,
  $detect_8bit_encoding_header                            = undef,
  $disable_dns_lookups                                    = undef,
  $disable_mime_input_processing                          = undef,
  $disable_mime_output_conversion                         = undef,
  $disable_verp_bounces                                   = undef,
  $disable_vrfy_command                                   = undef,
  $dnsblog_reply_delay                                    = undef,
  $dnsblog_service_name                                   = undef,
  $dont_remove                                            = undef,
  $double_bounce_sender                                   = undef,
  $duplicate_filter_limit                                 = undef,
  $empty_address_default_transport_maps_lookup_key        = undef,
  $empty_address_recipient                                = undef,
  $empty_address_relayhost_maps_lookup_key                = undef,
  $enable_long_queue_ids                                  = undef,
  $enable_original_recipient                              = undef,
  $error_notice_recipient                                 = undef,
  $error_service_name                                     = undef,
  $execution_directory_expansion_filter                   = undef,
  $expand_owner_alias                                     = undef,
  $export_environment                                     = undef,
  $fallback_transport                                     = undef,
  $fallback_transport_maps                                = undef,
  $fast_flush_domains                                     = undef,
  $fast_flush_purge_time                                  = undef,
  $fast_flush_refresh_time                                = undef,
  $fault_injection_code                                   = undef,
  $flush_service_name                                     = undef,
  $fork_attempts                                          = undef,
  $fork_delay                                             = undef,
  $forward_expansion_filter                               = undef,
  $forward_path                                           = undef,
  $frozen_delivered_to                                    = undef,
  $hash_queue_depth                                       = undef,
  $hash_queue_names                                       = undef,
  $header_address_token_limit                             = undef,
  $header_checks                                          = undef,
  $header_size_limit                                      = undef,
  $helpful_warnings                                       = undef,
  $home_mailbox                                           = undef,
  $hopcount_limit                                         = undef,
  $html_directory                                         = $::postfix::params::html_directory,
  $ignore_mx_lookup_error                                 = undef,
  $import_environment                                     = undef,
  $in_flow_delay                                          = undef,
  $inet_interfaces                                        = $::postfix::params::inet_interfaces,
  $inet_protocols                                         = $::postfix::params::inet_protocols,
  $initial_destination_concurrency                        = undef,
  $internal_mail_filter_classes                           = undef,
  $invalid_hostname_reject_code                           = undef,
  $ipc_idle                                               = undef,
  $ipc_timeout                                            = undef,
  $ipc_ttl                                                = undef,
  $line_length_limit                                      = undef,
  $lmtp_address_preference                                = undef,
  $lmtp_assume_final                                      = undef,
  $lmtp_bind_address                                      = undef,
  $lmtp_bind_address6                                     = undef,
  $lmtp_body_checks                                       = undef,
  $lmtp_cname_overrides_servername                        = undef,
  $lmtp_connect_timeout                                   = undef,
  $lmtp_connection_cache_destinations                     = undef,
  $lmtp_connection_cache_on_demand                        = undef,
  $lmtp_connection_cache_time_limit                       = undef,
  $lmtp_connection_reuse_time_limit                       = undef,
  $lmtp_data_done_timeout                                 = undef,
  $lmtp_data_init_timeout                                 = undef,
  $lmtp_data_xfer_timeout                                 = undef,
  $lmtp_defer_if_no_mx_address_found                      = undef,
  $lmtp_discard_lhlo_keyword_address_maps                 = undef,
  $lmtp_discard_lhlo_keywords                             = undef,
  $lmtp_dns_resolver_options                              = undef,
  $lmtp_enforce_tls                                       = undef,
  $lmtp_generic_maps                                      = undef,
  $lmtp_header_checks                                     = undef,
  $lmtp_host_lookup                                       = undef,
  $lmtp_lhlo_name                                         = undef,
  $lmtp_lhlo_timeout                                      = undef,
  $lmtp_line_length_limit                                 = undef,
  $lmtp_mail_timeout                                      = undef,
  $lmtp_mime_header_checks                                = undef,
  $lmtp_mx_address_limit                                  = undef,
  $lmtp_mx_session_limit                                  = undef,
  $lmtp_nested_header_checks                              = undef,
  $lmtp_per_record_deadline                               = undef,
  $lmtp_pix_workaround_delay_time                         = undef,
  $lmtp_pix_workaround_maps                               = undef,
  $lmtp_pix_workaround_threshold_time                     = undef,
  $lmtp_pix_workarounds                                   = undef,
  $lmtp_quit_timeout                                      = undef,
  $lmtp_quote_rfc821_envelope                             = undef,
  $lmtp_randomize_addresses                               = undef,
  $lmtp_rcpt_timeout                                      = undef,
  $lmtp_reply_filter                                      = undef,
  $lmtp_rset_timeout                                      = undef,
  $lmtp_sasl_auth_cache_name                              = undef,
  $lmtp_sasl_auth_cache_time                              = undef,
  $lmtp_sasl_auth_enable                                  = undef,
  $lmtp_sasl_auth_soft_bounce                             = undef,
  $lmtp_sasl_mechanism_filter                             = undef,
  $lmtp_sasl_password_maps                                = undef,
  $lmtp_sasl_path                                         = undef,
  $lmtp_sasl_security_options                             = undef,
  $lmtp_sasl_tls_security_options                         = undef,
  $lmtp_sasl_tls_verified_security_options                = undef,
  $lmtp_sasl_type                                         = undef,
  $lmtp_send_dummy_mail_auth                              = undef,
  $lmtp_send_xforward_command                             = undef,
  $lmtp_sender_dependent_authentication                   = undef,
  $lmtp_skip_5xx_greeting                                 = undef,
  $lmtp_skip_quit_response                                = undef,
  $lmtp_starttls_timeout                                  = undef,
  $lmtp_tcp_port                                          = undef,
  $lmtp_tls_cafile                                        = undef,
  $lmtp_tls_capath                                        = undef,
  $lmtp_tls_block_early_mail_reply                        = undef,
  $lmtp_tls_cert_file                                     = undef,
  $lmtp_tls_ciphers                                       = undef,
  $lmtp_tls_dcert_file                                    = undef,
  $lmtp_tls_dkey_file                                     = undef,
  $lmtp_tls_eccert_file                                   = undef,
  $lmtp_tls_eckey_file                                    = undef,
  $lmtp_tls_enforce_peername                              = undef,
  $lmtp_tls_exclude_ciphers                               = undef,
  $lmtp_tls_fingerprint_cert_match                        = undef,
  $lmtp_tls_fingerprint_digest                            = undef,
  $lmtp_tls_key_file                                      = undef,
  $lmtp_tls_loglevel                                      = undef,
  $lmtp_tls_mandatory_ciphers                             = undef,
  $lmtp_tls_mandatory_exclude_ciphers                     = undef,
  $lmtp_tls_mandatory_protocols                           = undef,
  $lmtp_tls_note_starttls_offer                           = undef,
  $lmtp_tls_per_site                                      = undef,
  $lmtp_tls_policy_maps                                   = undef,
  $lmtp_tls_protocols                                     = undef,
  $lmtp_tls_scert_verifydepth                             = undef,
  $lmtp_tls_secure_cert_match                             = undef,
  $lmtp_tls_security_level                                = undef,
  $lmtp_tls_session_cache_database                        = undef,
  $lmtp_tls_session_cache_timeout                         = undef,
  $lmtp_tls_verify_cert_match                             = undef,
  $lmtp_use_tls                                           = undef,
  $lmtp_xforward_timeout                                  = undef,
  $local_command_shell                                    = undef,
  $local_header_rewrite_clients                           = undef,
  $local_recipient_maps                                   = undef,
  $local_transport                                        = undef,
  $luser_relay                                            = undef,
  $mail_name                                              = undef,
  $mail_owner                                             = $::postfix::params::mail_owner,
  $mail_release_date                                      = undef,
  $mail_spool_directory                                   = undef,
  $mail_version                                           = undef,
  $mailbox_command                                        = undef,
  $mailbox_command_maps                                   = undef,
  $mailbox_delivery_lock                                  = undef,
  $mailbox_size_limit                                     = undef,
  $mailbox_transport                                      = undef,
  $mailbox_transport_maps                                 = undef,
  $mailq_path                                             = $::postfix::params::mailq_path,
  $manpage_directory                                      = $::postfix::params::manpage_directory,
  $maps_rbl_domains                                       = undef,
  $maps_rbl_reject_code                                   = undef,
  $masquerade_classes                                     = undef,
  $masquerade_domains                                     = undef,
  $masquerade_exceptions                                  = undef,
  $master_service_disable                                 = undef,
  $max_idle                                               = undef,
  $max_use                                                = undef,
  $maximal_backoff_time                                   = undef,
  $maximal_queue_lifetime                                 = undef,
  $message_reject_characters                              = undef,
  $message_size_limit                                     = undef,
  $message_strip_characters                               = undef,
  $milter_command_timeout                                 = undef,
  $milter_connect_macros                                  = undef,
  $milter_connect_timeout                                 = undef,
  $milter_content_timeout                                 = undef,
  $milter_data_macros                                     = undef,
  $milter_default_action                                  = undef,
  $milter_end_of_data_macros                              = undef,
  $milter_end_of_header_macros                            = undef,
  $milter_header_checks                                   = undef,
  $milter_helo_macros                                     = undef,
  $milter_macro_daemon_name                               = undef,
  $milter_macro_v                                         = undef,
  $milter_mail_macros                                     = undef,
  $milter_protocol                                        = undef,
  $milter_rcpt_macros                                     = undef,
  $milter_unknown_command_macros                          = undef,
  $mime_boundary_length_limit                             = undef,
  $mime_header_checks                                     = undef,
  $mime_nesting_limit                                     = undef,
  $minimal_backoff_time                                   = undef,
  $multi_instance_directories                             = undef,
  $multi_instance_enable                                  = undef,
  $multi_instance_group                                   = undef,
  $multi_instance_name                                    = undef,
  $multi_instance_wrapper                                 = undef,
  $multi_recipient_bounce_reject_code                     = undef,
  $mydestination                                          = $::postfix::params::mydestination,
  $mydomain                                               = undef,
  $mydomain_fallback                                      = undef,
  $myhostname                                             = undef,
  $mynetworks                                             = undef,
  $mynetworks_style                                       = undef,
  $myorigin                                               = undef,
  $nested_header_checks                                   = undef,
  $newaliases_path                                        = $::postfix::params::newaliases_path,
  $non_fqdn_reject_code                                   = undef,
  $non_smtpd_milters                                      = undef,
  $notify_classes                                         = undef,
  $owner_request_special                                  = undef,
  $parent_domain_matches_subdomains                       = undef,
  $permit_mx_backup_networks                              = undef,
  $pickup_service_name                                    = undef,
  $plaintext_reject_code                                  = undef,
  $postmulti_control_commands                             = undef,
  $postmulti_start_commands                               = undef,
  $postmulti_stop_commands                                = undef,
  $postscreen_access_list                                 = undef,
  $postscreen_bare_newline_action                         = undef,
  $postscreen_bare_newline_enable                         = undef,
  $postscreen_bare_newline_ttl                            = undef,
  $postscreen_blacklist_action                            = undef,
  $postscreen_cache_cleanup_interval                      = undef,
  $postscreen_cache_map                                   = undef,
  $postscreen_cache_retention_time                        = undef,
  $postscreen_client_connection_count_limit               = undef,
  $postscreen_command_count_limit                         = undef,
  $postscreen_command_filter                              = undef,
  $postscreen_command_time_limit                          = undef,
  $postscreen_disable_vrfy_command                        = undef,
  $postscreen_discard_ehlo_keyword_address_maps           = undef,
  $postscreen_discard_ehlo_keywords                       = undef,
  $postscreen_dnsbl_action                                = undef,
  $postscreen_dnsbl_reply_map                             = undef,
  $postscreen_dnsbl_sites                                 = undef,
  $postscreen_dnsbl_threshold                             = undef,
  $postscreen_dnsbl_ttl                                   = undef,
  $postscreen_enforce_tls                                 = undef,
  $postscreen_expansion_filter                            = undef,
  $postscreen_forbidden_commands                          = undef,
  $postscreen_greet_action                                = undef,
  $postscreen_greet_banner                                = undef,
  $postscreen_greet_ttl                                   = undef,
  $postscreen_greet_wait                                  = undef,
  $postscreen_helo_required                               = undef,
  $postscreen_non_smtp_command_action                     = undef,
  $postscreen_non_smtp_command_enable                     = undef,
  $postscreen_non_smtp_command_ttl                        = undef,
  $postscreen_pipelining_action                           = undef,
  $postscreen_pipelining_enable                           = undef,
  $postscreen_pipelining_ttl                              = undef,
  $postscreen_post_queue_limit                            = undef,
  $postscreen_pre_queue_limit                             = undef,
  $postscreen_reject_footer                               = undef,
  $postscreen_tls_security_level                          = undef,
  $postscreen_upstream_proxy_protocol                     = undef,
  $postscreen_upstream_proxy_timeout                      = undef,
  $postscreen_use_tls                                     = undef,
  $postscreen_watchdog_timeout                            = undef,
  $postscreen_whitelist_interfaces                        = undef,
  $prepend_delivered_header                               = undef,
  $process_id_directory                                   = undef,
  $propagate_unmatched_extensions                         = undef,
  $proxy_interfaces                                       = undef,
  $proxy_read_maps                                        = undef,
  $proxy_write_maps                                       = undef,
  $proxymap_service_name                                  = undef,
  $proxywrite_service_name                                = undef,
  $qmgr_clog_warn_time                                    = undef,
  $qmgr_daemon_timeout                                    = undef,
  $qmgr_fudge_factor                                      = undef,
  $qmgr_ipc_timeout                                       = undef,
  $qmgr_message_active_limit                              = undef,
  $qmgr_message_recipient_limit                           = undef,
  $qmgr_message_recipient_minimum                         = undef,
  $qmqpd_authorized_clients                               = undef,
  $qmqpd_client_port_logging                              = undef,
  $qmqpd_error_delay                                      = undef,
  $qmqpd_timeout                                          = undef,
  $queue_directory                                        = $::postfix::params::queue_directory,
  $queue_file_attribute_count_limit                       = undef,
  $queue_minfree                                          = undef,
  $queue_run_delay                                        = undef,
  $queue_service_name                                     = undef,
  $rbl_reply_maps                                         = undef,
  $readme_directory                                       = $::postfix::params::readme_directory,
  $receive_override_options                               = undef,
  $recipient_bcc_maps                                     = undef,
  $recipient_canonical_classes                            = undef,
  $recipient_canonical_maps                               = undef,
  $recipient_delimiter                                    = undef,
  $reject_code                                            = undef,
  $reject_tempfail_action                                 = undef,
  $relay_clientcerts                                      = undef,
  $relay_domains                                          = undef,
  $relay_domains_reject_code                              = undef,
  $relay_recipient_maps                                   = undef,
  $relay_transport                                        = undef,
  $relayhost                                              = undef,
  $relocated_maps                                         = undef,
  $remote_header_rewrite_domain                           = undef,
  $require_home_directory                                 = undef,
  $reset_owner_alias                                      = undef,
  $resolve_dequoted_address                               = undef,
  $resolve_null_domain                                    = undef,
  $resolve_numeric_domain                                 = undef,
  $rewrite_service_name                                   = undef,
  $sample_directory                                       = $::postfix::params::sample_directory,
  $send_cyrus_sasl_authzid                                = undef,
  $sender_bcc_maps                                        = undef,
  $sender_canonical_classes                               = undef,
  $sender_canonical_maps                                  = undef,
  $sender_dependent_default_transport_maps                = undef,
  $sender_dependent_relayhost_maps                        = undef,
  $sendmail_fix_line_endings                              = undef,
  $sendmail_path                                          = $::postfix::params::sendmail_path,
  $service_throttle_time                                  = undef,
  $setgid_group                                           = $::postfix::params::setgid_group,
  $show_user_unknown_table_name                           = undef,
  $showq_service_name                                     = undef,
  $smtp_address_preference                                = undef,
  $smtp_always_send_ehlo                                  = undef,
  $smtp_bind_address                                      = undef,
  $smtp_bind_address6                                     = undef,
  $smtp_body_checks                                       = undef,
  $smtp_cname_overrides_servername                        = undef,
  $smtp_connect_timeout                                   = undef,
  $smtp_connection_cache_destinations                     = undef,
  $smtp_connection_cache_on_demand                        = undef,
  $smtp_connection_cache_time_limit                       = undef,
  $smtp_connection_reuse_time_limit                       = undef,
  $smtp_data_done_timeout                                 = undef,
  $smtp_data_init_timeout                                 = undef,
  $smtp_data_xfer_timeout                                 = undef,
  $smtp_defer_if_no_mx_address_found                      = undef,
  $smtp_discard_ehlo_keyword_address_maps                 = undef,
  $smtp_discard_ehlo_keywords                             = undef,
  $smtp_dns_resolver_options                              = undef,
  $smtp_enforce_tls                                       = undef,
  $smtp_fallback_relay                                    = undef,
  $smtp_generic_maps                                      = undef,
  $smtp_header_checks                                     = undef,
  $smtp_helo_name                                         = undef,
  $smtp_helo_timeout                                      = undef,
  $smtp_host_lookup                                       = undef,
  $smtp_line_length_limit                                 = undef,
  $smtp_mail_timeout                                      = undef,
  $smtp_mime_header_checks                                = undef,
  $smtp_mx_address_limit                                  = undef,
  $smtp_mx_session_limit                                  = undef,
  $smtp_nested_header_checks                              = undef,
  $smtp_never_send_ehlo                                   = undef,
  $smtp_per_record_deadline                               = undef,
  $smtp_pix_workaround_delay_time                         = undef,
  $smtp_pix_workaround_maps                               = undef,
  $smtp_pix_workaround_threshold_time                     = undef,
  $smtp_pix_workarounds                                   = undef,
  $smtp_quit_timeout                                      = undef,
  $smtp_quote_rfc821_envelope                             = undef,
  $smtp_randomize_addresses                               = undef,
  $smtp_rcpt_timeout                                      = undef,
  $smtp_reply_filter                                      = undef,
  $smtp_rset_timeout                                      = undef,
  $smtp_sasl_auth_cache_name                              = undef,
  $smtp_sasl_auth_cache_time                              = undef,
  $smtp_sasl_auth_enable                                  = undef,
  $smtp_sasl_auth_soft_bounce                             = undef,
  $smtp_sasl_mechanism_filter                             = undef,
  $smtp_sasl_password_maps                                = undef,
  $smtp_sasl_path                                         = undef,
  $smtp_sasl_security_options                             = undef,
  $smtp_sasl_tls_security_options                         = undef,
  $smtp_sasl_tls_verified_security_options                = undef,
  $smtp_sasl_type                                         = undef,
  $smtp_send_dummy_mail_auth                              = undef,
  $smtp_send_xforward_command                             = undef,
  $smtp_sender_dependent_authentication                   = undef,
  $smtp_skip_5xx_greeting                                 = undef,
  $smtp_skip_quit_response                                = undef,
  $smtp_starttls_timeout                                  = undef,
  $smtp_tls_cafile                                        = undef,
  $smtp_tls_capath                                        = undef,
  $smtp_tls_block_early_mail_reply                        = undef,
  $smtp_tls_cert_file                                     = undef,
  $smtp_tls_ciphers                                       = undef,
  $smtp_tls_dcert_file                                    = undef,
  $smtp_tls_dkey_file                                     = undef,
  $smtp_tls_eccert_file                                   = undef,
  $smtp_tls_eckey_file                                    = undef,
  $smtp_tls_enforce_peername                              = undef,
  $smtp_tls_exclude_ciphers                               = undef,
  $smtp_tls_fingerprint_cert_match                        = undef,
  $smtp_tls_fingerprint_digest                            = undef,
  $smtp_tls_key_file                                      = undef,
  $smtp_tls_loglevel                                      = undef,
  $smtp_tls_mandatory_ciphers                             = undef,
  $smtp_tls_mandatory_exclude_ciphers                     = undef,
  $smtp_tls_mandatory_protocols                           = undef,
  $smtp_tls_note_starttls_offer                           = undef,
  $smtp_tls_per_site                                      = undef,
  $smtp_tls_policy_maps                                   = undef,
  $smtp_tls_protocols                                     = undef,
  $smtp_tls_scert_verifydepth                             = undef,
  $smtp_tls_secure_cert_match                             = undef,
  $smtp_tls_security_level                                = undef,
  $smtp_tls_session_cache_database                        = undef,
  $smtp_tls_session_cache_timeout                         = undef,
  $smtp_tls_verify_cert_match                             = undef,
  $smtp_use_tls                                           = undef,
  $smtp_xforward_timeout                                  = undef,
  $smtpd_authorized_verp_clients                          = undef,
  $smtpd_authorized_xclient_hosts                         = undef,
  $smtpd_authorized_xforward_hosts                        = undef,
  $smtpd_banner                                           = undef,
  $smtpd_client_connection_count_limit                    = undef,
  $smtpd_client_connection_rate_limit                     = undef,
  $smtpd_client_event_limit_exceptions                    = undef,
  $smtpd_client_message_rate_limit                        = undef,
  $smtpd_client_new_tls_session_rate_limit                = undef,
  $smtpd_client_port_logging                              = undef,
  $smtpd_client_recipient_rate_limit                      = undef,
  $smtpd_client_restrictions                              = undef,
  $smtpd_command_filter                                   = undef,
  $smtpd_data_restrictions                                = undef,
  $smtpd_delay_open_until_valid_rcpt                      = undef,
  $smtpd_delay_reject                                     = undef,
  $smtpd_discard_ehlo_keyword_address_maps                = undef,
  $smtpd_discard_ehlo_keywords                            = undef,
  $smtpd_end_of_data_restrictions                         = undef,
  $smtpd_enforce_tls                                      = undef,
  $smtpd_error_sleep_time                                 = undef,
  $smtpd_etrn_restrictions                                = undef,
  $smtpd_expansion_filter                                 = undef,
  $smtpd_forbidden_commands                               = undef,
  $smtpd_hard_error_limit                                 = undef,
  $smtpd_helo_required                                    = undef,
  $smtpd_helo_restrictions                                = undef,
  $smtpd_history_flush_threshold                          = undef,
  $smtpd_junk_command_limit                               = undef,
  $smtpd_log_access_permit_actions                        = undef,
  $smtpd_milters                                          = undef,
  $smtpd_noop_commands                                    = undef,
  $smtpd_null_access_lookup_key                           = undef,
  $smtpd_peername_lookup                                  = undef,
  $smtpd_per_record_deadline                              = undef,
  $smtpd_policy_service_max_idle                          = undef,
  $smtpd_policy_service_max_ttl                           = undef,
  $smtpd_policy_service_timeout                           = undef,
  $smtpd_proxy_ehlo                                       = undef,
  $smtpd_proxy_filter                                     = undef,
  $smtpd_proxy_options                                    = undef,
  $smtpd_proxy_timeout                                    = undef,
  $smtpd_recipient_limit                                  = undef,
  $smtpd_recipient_overshoot_limit                        = undef,
  $smtpd_recipient_restrictions                           = undef,
  $smtpd_reject_footer                                    = undef,
  $smtpd_reject_unlisted_recipient                        = undef,
  $smtpd_reject_unlisted_sender                           = undef,
  $smtpd_relay_restrictions                               = undef,
  $smtpd_restriction_classes                              = undef,
  $smtpd_sasl_auth_enable                                 = undef,
  $smtpd_sasl_authenticated_header                        = undef,
  $smtpd_sasl_exceptions_networks                         = undef,
  $smtpd_sasl_local_domain                                = undef,
  $smtpd_sasl_path                                        = undef,
  $smtpd_sasl_security_options                            = undef,
  $smtpd_sasl_tls_security_options                        = undef,
  $smtpd_sasl_type                                        = undef,
  $smtpd_sender_login_maps                                = undef,
  $smtpd_sender_restrictions                              = undef,
  $smtpd_service_name                                     = undef,
  $smtpd_soft_error_limit                                 = undef,
  $smtpd_starttls_timeout                                 = undef,
  $smtpd_timeout                                          = undef,
  $smtpd_tls_cafile                                       = undef,
  $smtpd_tls_capath                                       = undef,
  $smtpd_tls_always_issue_session_ids                     = undef,
  $smtpd_tls_ask_ccert                                    = undef,
  $smtpd_tls_auth_only                                    = undef,
  $smtpd_tls_ccert_verifydepth                            = undef,
  $smtpd_tls_cert_file                                    = undef,
  $smtpd_tls_ciphers                                      = undef,
  $smtpd_tls_dcert_file                                   = undef,
  $smtpd_tls_dh1024_param_file                            = undef,
  $smtpd_tls_dh512_param_file                             = undef,
  $smtpd_tls_dkey_file                                    = undef,
  $smtpd_tls_eccert_file                                  = undef,
  $smtpd_tls_eckey_file                                   = undef,
  $smtpd_tls_eecdh_grade                                  = undef,
  $smtpd_tls_exclude_ciphers                              = undef,
  $smtpd_tls_fingerprint_digest                           = undef,
  $smtpd_tls_key_file                                     = undef,
  $smtpd_tls_loglevel                                     = undef,
  $smtpd_tls_mandatory_ciphers                            = undef,
  $smtpd_tls_mandatory_exclude_ciphers                    = undef,
  $smtpd_tls_mandatory_protocols                          = undef,
  $smtpd_tls_protocols                                    = undef,
  $smtpd_tls_received_header                              = undef,
  $smtpd_tls_req_ccert                                    = undef,
  $smtpd_tls_security_level                               = undef,
  $smtpd_tls_session_cache_database                       = undef,
  $smtpd_tls_session_cache_timeout                        = undef,
  $smtpd_tls_wrappermode                                  = undef,
  $smtpd_upstream_proxy_protocol                          = undef,
  $smtpd_upstream_proxy_timeout                           = undef,
  $smtpd_use_tls                                          = undef,
  $soft_bounce                                            = undef,
  $stale_lock_time                                        = undef,
  $strict_7bit_headers                                    = undef,
  $strict_8bitmime                                        = undef,
  $strict_8bitmime_body                                   = undef,
  $strict_mailbox_ownership                               = undef,
  $strict_mime_encoding_domain                            = undef,
  $strict_rfc821_envelopes                                = undef,
  $sun_mailtool_compatibility                             = undef,
  $swap_bangpath                                          = undef,
  $syslog_facility                                        = undef,
  $syslog_name                                            = undef,
  $tcp_windowsize                                         = undef,
  $tls_append_default_ca                                  = undef,
  $tls_daemon_random_bytes                                = undef,
  $tls_disable_workarounds                                = undef,
  $tls_eecdh_strong_curve                                 = undef,
  $tls_eecdh_ultra_curve                                  = undef,
  $tls_export_cipherlist                                  = undef,
  $tls_high_cipherlist                                    = undef,
  $tls_legacy_public_key_fingerprints                     = undef,
  $tls_low_cipherlist                                     = undef,
  $tls_medium_cipherlist                                  = undef,
  $tls_null_cipherlist                                    = undef,
  $tls_preempt_cipherlist                                 = undef,
  $tls_random_bytes                                       = undef,
  $tls_random_exchange_name                               = undef,
  $tls_random_prng_update_period                          = undef,
  $tls_random_reseed_period                               = undef,
  $tls_random_source                                      = undef,
  $tlsproxy_enforce_tls                                   = undef,
  $tlsproxy_service_name                                  = undef,
  $tlsproxy_tls_cafile                                    = undef,
  $tlsproxy_tls_capath                                    = undef,
  $tlsproxy_tls_always_issue_session_ids                  = undef,
  $tlsproxy_tls_ask_ccert                                 = undef,
  $tlsproxy_tls_ccert_verifydepth                         = undef,
  $tlsproxy_tls_cert_file                                 = undef,
  $tlsproxy_tls_ciphers                                   = undef,
  $tlsproxy_tls_dcert_file                                = undef,
  $tlsproxy_tls_dh1024_param_file                         = undef,
  $tlsproxy_tls_dh512_param_file                          = undef,
  $tlsproxy_tls_dkey_file                                 = undef,
  $tlsproxy_tls_eccert_file                               = undef,
  $tlsproxy_tls_eckey_file                                = undef,
  $tlsproxy_tls_eecdh_grade                               = undef,
  $tlsproxy_tls_exclude_ciphers                           = undef,
  $tlsproxy_tls_fingerprint_digest                        = undef,
  $tlsproxy_tls_key_file                                  = undef,
  $tlsproxy_tls_loglevel                                  = undef,
  $tlsproxy_tls_mandatory_ciphers                         = undef,
  $tlsproxy_tls_mandatory_exclude_ciphers                 = undef,
  $tlsproxy_tls_mandatory_protocols                       = undef,
  $tlsproxy_tls_protocols                                 = undef,
  $tlsproxy_tls_req_ccert                                 = undef,
  $tlsproxy_tls_security_level                            = undef,
  $tlsproxy_tls_session_cache_timeout                     = undef,
  $tlsproxy_use_tls                                       = undef,
  $tlsproxy_watchdog_timeout                              = undef,
  $trace_service_name                                     = undef,
  $transport_maps                                         = undef,
  $transport_retry_time                                   = undef,
  $trigger_timeout                                        = undef,
  $undisclosed_recipients_header                          = undef,
  $unknown_address_reject_code                            = undef,
  $unknown_address_tempfail_action                        = undef,
  $unknown_client_reject_code                             = undef,
  $unknown_helo_hostname_tempfail_action                  = undef,
  $unknown_hostname_reject_code                           = undef,
  $unknown_local_recipient_reject_code                    = $::postfix::params::unknown_local_recipient_reject_code,
  $unknown_relay_recipient_reject_code                    = undef,
  $unknown_virtual_alias_reject_code                      = undef,
  $unknown_virtual_mailbox_reject_code                    = undef,
  $unverified_recipient_defer_code                        = undef,
  $unverified_recipient_reject_code                       = undef,
  $unverified_recipient_reject_reason                     = undef,
  $unverified_recipient_tempfail_action                   = undef,
  $unverified_sender_defer_code                           = undef,
  $unverified_sender_reject_code                          = undef,
  $unverified_sender_reject_reason                        = undef,
  $unverified_sender_tempfail_action                      = undef,
  $verp_delimiter_filter                                  = undef,
  $virtual_alias_domains                                  = undef,
  $virtual_alias_expansion_limit                          = undef,
  $virtual_alias_maps                                     = undef,
  $virtual_alias_recursion_limit                          = undef,
  $virtual_gid_maps                                       = undef,
  $virtual_mailbox_base                                   = undef,
  $virtual_mailbox_domains                                = undef,
  $virtual_mailbox_limit                                  = undef,
  $virtual_mailbox_lock                                   = undef,
  $virtual_mailbox_maps                                   = undef,
  $virtual_minimum_uid                                    = undef,
  $virtual_transport                                      = undef,
  $virtual_uid_maps                                       = undef,
) inherits ::postfix::params {

  validate_absolute_path($conf_dir)
  validate_hash($default_services)
  validate_hash($lookup_packages)
  validate_string($package_name)
  validate_string($service_name)

  validate_string($twobounce_notice_recipient)
  validate_string($access_map_defer_code)
  validate_string($access_map_reject_code)
  validate_string($address_verify_cache_cleanup_interval)
  validate_string($address_verify_default_transport)
  validate_string($address_verify_local_transport)
  validate_string($address_verify_map)
  if $address_verify_negative_cache {
    if ! is_bool($address_verify_negative_cache) {
      validate_string($address_verify_negative_cache)
    }
  }
  validate_string($address_verify_negative_expire_time)
  validate_string($address_verify_negative_refresh_time)
  validate_string($address_verify_poll_count)
  validate_string($address_verify_poll_delay)
  validate_string($address_verify_positive_expire_time)
  validate_string($address_verify_positive_refresh_time)
  validate_string($address_verify_relay_transport)
  validate_string($address_verify_relayhost)
  validate_string($address_verify_sender)
  if $address_verify_sender_dependent_default_transport_maps {
    validate_array($address_verify_sender_dependent_default_transport_maps)
  }
  if $address_verify_sender_dependent_relayhost_maps {
    validate_array($address_verify_sender_dependent_relayhost_maps)
  }
  validate_string($address_verify_sender_ttl)
  validate_string($address_verify_service_name)
  if $address_verify_transport_maps {
    validate_array($address_verify_transport_maps)
  }
  validate_string($address_verify_virtual_transport)
  if $alias_database {
    validate_array($alias_database)
  }
  if $alias_maps {
    validate_array($alias_maps)
  }
  if $allow_mail_to_commands {
    validate_array($allow_mail_to_commands)
  }
  if $allow_mail_to_files {
    validate_array($allow_mail_to_files)
  }
  if $allow_min_user {
    if ! is_bool($allow_min_user) {
      validate_string($allow_min_user)
    }
  }
  if $allow_percent_hack {
    if ! is_bool($allow_percent_hack) {
      validate_string($allow_percent_hack)
    }
  }
  if $allow_untrusted_routing {
    if ! is_bool($allow_untrusted_routing) {
      validate_string($allow_untrusted_routing)
    }
  }
  if $alternate_config_directories {
    validate_array($alternate_config_directories)
  }
  if $always_add_missing_headers {
    if ! is_bool($always_add_missing_headers) {
      validate_string($always_add_missing_headers)
    }
  }
  validate_string($always_bcc)
  validate_string($anvil_rate_time_unit)
  validate_string($anvil_status_update_time)
  if $append_at_myorigin {
    if ! is_bool($append_at_myorigin) {
      validate_string($append_at_myorigin)
    }
  }
  if $append_dot_mydomain {
    if ! is_bool($append_dot_mydomain) {
      validate_string($append_dot_mydomain)
    }
  }
  validate_string($application_event_drain_time)
  if $authorized_flush_users {
    validate_array($authorized_flush_users)
  }
  if $authorized_mailq_users {
    validate_array($authorized_mailq_users)
  }
  if $authorized_submit_users {
    validate_array($authorized_submit_users)
  }
  if $backwards_bounce_logfile_compatibility {
    if ! is_bool($backwards_bounce_logfile_compatibility) {
      validate_string($backwards_bounce_logfile_compatibility)
    }
  }
  validate_string($berkeley_db_create_buffer_size)
  validate_string($berkeley_db_read_buffer_size)
  validate_string($best_mx_transport)
  if $biff {
    if ! is_bool($biff) {
      validate_string($biff)
    }
  }
  if $body_checks {
    validate_array($body_checks)
  }
  validate_string($body_checks_size_limit)
  validate_string($bounce_notice_recipient)
  validate_string($bounce_queue_lifetime)
  validate_string($bounce_service_name)
  validate_string($bounce_size_limit)
  validate_string($bounce_template_file)
  if $broken_sasl_auth_clients {
    if ! is_bool($broken_sasl_auth_clients) {
      validate_string($broken_sasl_auth_clients)
    }
  }
  if $canonical_classes {
    validate_array($canonical_classes)
  }
  if $canonical_maps {
    validate_array($canonical_maps)
  }
  validate_string($cleanup_service_name)
  validate_string($command_directory)
  validate_string($command_execution_directory)
  validate_string($command_expansion_filter)
  validate_string($command_time_limit)
  validate_string($config_directory)
  validate_string($connection_cache_protocol_timeout)
  validate_string($connection_cache_service_name)
  validate_string($connection_cache_status_update_time)
  validate_string($connection_cache_ttl_limit)
  validate_string($content_filter)
  if $cyrus_sasl_config_path {
    validate_array($cyrus_sasl_config_path)
  }
  validate_string($daemon_directory)
  if $daemon_table_open_error_is_fatal {
    if ! is_bool($daemon_table_open_error_is_fatal) {
      validate_string($daemon_table_open_error_is_fatal)
    }
  }
  validate_string($daemon_timeout)
  validate_string($data_directory)
  validate_string($debug_peer_level)
  if $debug_peer_list {
    validate_array($debug_peer_list)
  }
  validate_string($debugger_command)
  validate_string($default_database_type)
  validate_string($default_delivery_slot_cost)
  validate_string($default_delivery_slot_discount)
  validate_string($default_delivery_slot_loan)
  validate_string($default_destination_concurrency_failed_cohort_limit)
  validate_string($default_destination_concurrency_limit)
  validate_string($default_destination_concurrency_negative_feedback)
  validate_string($default_destination_concurrency_positive_feedback)
  validate_string($default_destination_rate_delay)
  validate_string($default_destination_recipient_limit)
  validate_string($default_extra_recipient_limit)
  validate_string($default_filter_nexthop)
  validate_string($default_minimum_delivery_slots)
  validate_string($default_privs)
  validate_string($default_process_limit)
  validate_string($default_rbl_reply)
  validate_string($default_recipient_limit)
  validate_string($default_recipient_refill_delay)
  validate_string($default_recipient_refill_limit)
  validate_string($default_transport)
  validate_string($default_verp_delimiters)
  validate_string($defer_code)
  validate_string($defer_service_name)
  if $defer_transports {
    validate_array($defer_transports)
  }
  validate_string($delay_logging_resolution_limit)
  validate_string($delay_notice_recipient)
  validate_string($delay_warning_time)
  validate_string($deliver_lock_attempts)
  validate_string($deliver_lock_delay)
  if $destination_concurrency_feedback_debug {
    if ! is_bool($destination_concurrency_feedback_debug) {
      validate_string($destination_concurrency_feedback_debug)
    }
  }
  if $detect_8bit_encoding_header {
    if ! is_bool($detect_8bit_encoding_header) {
      validate_string($detect_8bit_encoding_header)
    }
  }
  if $disable_dns_lookups {
    if ! is_bool($disable_dns_lookups) {
      validate_string($disable_dns_lookups)
    }
  }
  if $disable_mime_input_processing {
    if ! is_bool($disable_mime_input_processing) {
      validate_string($disable_mime_input_processing)
    }
  }
  if $disable_mime_output_conversion {
    if ! is_bool($disable_mime_output_conversion) {
      validate_string($disable_mime_output_conversion)
    }
  }
  if $disable_verp_bounces {
    if ! is_bool($disable_verp_bounces) {
      validate_string($disable_verp_bounces)
    }
  }
  if $disable_vrfy_command {
    if ! is_bool($disable_vrfy_command) {
      validate_string($disable_vrfy_command)
    }
  }
  validate_string($dnsblog_reply_delay)
  validate_string($dnsblog_service_name)
  validate_string($dont_remove)
  validate_string($double_bounce_sender)
  validate_string($duplicate_filter_limit)
  validate_string($empty_address_default_transport_maps_lookup_key)
  validate_string($empty_address_recipient)
  validate_string($empty_address_relayhost_maps_lookup_key)
  if $enable_long_queue_ids {
    if ! is_bool($enable_long_queue_ids) {
      validate_string($enable_long_queue_ids)
    }
  }
  if $enable_original_recipient {
    if ! is_bool($enable_original_recipient) {
      validate_string($enable_original_recipient)
    }
  }
  validate_string($error_notice_recipient)
  validate_string($error_service_name)
  validate_string($execution_directory_expansion_filter)
  if $expand_owner_alias {
    if ! is_bool($expand_owner_alias) {
      validate_string($expand_owner_alias)
    }
  }
  if $export_environment {
    validate_array($export_environment)
  }
  validate_string($fallback_transport)
  if $fallback_transport_maps {
    validate_array($fallback_transport_maps)
  }
  if $fast_flush_domains {
    validate_array($fast_flush_domains)
  }
  validate_string($fast_flush_purge_time)
  validate_string($fast_flush_refresh_time)
  validate_string($fault_injection_code)
  validate_string($flush_service_name)
  validate_string($fork_attempts)
  validate_string($fork_delay)
  validate_string($forward_expansion_filter)
  if $forward_path {
    validate_array($forward_path)
  }
  if $frozen_delivered_to {
    if ! is_bool($frozen_delivered_to) {
      validate_string($frozen_delivered_to)
    }
  }
  validate_string($hash_queue_depth)
  if $hash_queue_names {
    validate_array($hash_queue_names)
  }
  validate_string($header_address_token_limit)
  if $header_checks {
    validate_array($header_checks)
  }
  validate_string($header_size_limit)
  if $helpful_warnings {
    if ! is_bool($helpful_warnings) {
      validate_string($helpful_warnings)
    }
  }
  validate_string($home_mailbox)
  validate_string($hopcount_limit)
  if $html_directory {
    if ! is_bool($html_directory) {
      validate_string($html_directory)
    }
  }
  if $ignore_mx_lookup_error {
    if ! is_bool($ignore_mx_lookup_error) {
      validate_string($ignore_mx_lookup_error)
    }
  }
  if $import_environment {
    validate_array($import_environment)
  }
  validate_string($in_flow_delay)
  if $inet_interfaces {
    validate_array($inet_interfaces)
  }
  if $inet_protocols {
    validate_array($inet_protocols)
  }
  validate_string($initial_destination_concurrency)
  if $internal_mail_filter_classes {
    validate_array($internal_mail_filter_classes)
  }
  validate_string($invalid_hostname_reject_code)
  validate_string($ipc_idle)
  validate_string($ipc_timeout)
  validate_string($ipc_ttl)
  validate_string($line_length_limit)
  validate_string($lmtp_address_preference)
  if $lmtp_assume_final {
    if ! is_bool($lmtp_assume_final) {
      validate_string($lmtp_assume_final)
    }
  }
  validate_string($lmtp_bind_address)
  validate_string($lmtp_bind_address6)
  if $lmtp_body_checks {
    validate_array($lmtp_body_checks)
  }
  if $lmtp_cname_overrides_servername {
    if ! is_bool($lmtp_cname_overrides_servername) {
      validate_string($lmtp_cname_overrides_servername)
    }
  }
  validate_string($lmtp_connect_timeout)
  if $lmtp_connection_cache_destinations {
    validate_array($lmtp_connection_cache_destinations)
  }
  if $lmtp_connection_cache_on_demand {
    if ! is_bool($lmtp_connection_cache_on_demand) {
      validate_string($lmtp_connection_cache_on_demand)
    }
  }
  validate_string($lmtp_connection_cache_time_limit)
  validate_string($lmtp_connection_reuse_time_limit)
  validate_string($lmtp_data_done_timeout)
  validate_string($lmtp_data_init_timeout)
  validate_string($lmtp_data_xfer_timeout)
  if $lmtp_defer_if_no_mx_address_found {
    if ! is_bool($lmtp_defer_if_no_mx_address_found) {
      validate_string($lmtp_defer_if_no_mx_address_found)
    }
  }
  if $lmtp_discard_lhlo_keyword_address_maps {
    validate_array($lmtp_discard_lhlo_keyword_address_maps)
  }
  if $lmtp_discard_lhlo_keywords {
    validate_array($lmtp_discard_lhlo_keywords)
  }
  if $lmtp_dns_resolver_options {
    validate_array($lmtp_dns_resolver_options)
  }
  if $lmtp_enforce_tls {
    if ! is_bool($lmtp_enforce_tls) {
      validate_string($lmtp_enforce_tls)
    }
  }
  if $lmtp_generic_maps {
    validate_array($lmtp_generic_maps)
  }
  if $lmtp_header_checks {
    validate_array($lmtp_header_checks)
  }
  if $lmtp_host_lookup {
    validate_array($lmtp_host_lookup)
  }
  validate_string($lmtp_lhlo_name)
  validate_string($lmtp_lhlo_timeout)
  validate_string($lmtp_line_length_limit)
  validate_string($lmtp_mail_timeout)
  if $lmtp_mime_header_checks {
    validate_array($lmtp_mime_header_checks)
  }
  validate_string($lmtp_mx_address_limit)
  validate_string($lmtp_mx_session_limit)
  if $lmtp_nested_header_checks {
    validate_array($lmtp_nested_header_checks)
  }
  if $lmtp_per_record_deadline {
    if ! is_bool($lmtp_per_record_deadline) {
      validate_string($lmtp_per_record_deadline)
    }
  }
  validate_string($lmtp_pix_workaround_delay_time)
  if $lmtp_pix_workaround_maps {
    validate_array($lmtp_pix_workaround_maps)
  }
  validate_string($lmtp_pix_workaround_threshold_time)
  if $lmtp_pix_workarounds {
    validate_array($lmtp_pix_workarounds)
  }
  validate_string($lmtp_quit_timeout)
  if $lmtp_quote_rfc821_envelope {
    if ! is_bool($lmtp_quote_rfc821_envelope) {
      validate_string($lmtp_quote_rfc821_envelope)
    }
  }
  if $lmtp_randomize_addresses {
    if ! is_bool($lmtp_randomize_addresses) {
      validate_string($lmtp_randomize_addresses)
    }
  }
  validate_string($lmtp_rcpt_timeout)
  validate_string($lmtp_reply_filter)
  validate_string($lmtp_rset_timeout)
  validate_string($lmtp_sasl_auth_cache_name)
  validate_string($lmtp_sasl_auth_cache_time)
  if $lmtp_sasl_auth_enable {
    if ! is_bool($lmtp_sasl_auth_enable) {
      validate_string($lmtp_sasl_auth_enable)
    }
  }
  if $lmtp_sasl_auth_soft_bounce {
    if ! is_bool($lmtp_sasl_auth_soft_bounce) {
      validate_string($lmtp_sasl_auth_soft_bounce)
    }
  }
  if $lmtp_sasl_mechanism_filter {
    validate_array($lmtp_sasl_mechanism_filter)
  }
  validate_string($lmtp_sasl_password_maps)
  validate_string($lmtp_sasl_path)
  if $lmtp_sasl_security_options {
    validate_array($lmtp_sasl_security_options)
  }
  if $lmtp_sasl_tls_security_options {
    validate_array($lmtp_sasl_tls_security_options)
  }
  if $lmtp_sasl_tls_verified_security_options {
    validate_array($lmtp_sasl_tls_verified_security_options)
  }
  validate_string($lmtp_sasl_type)
  if $lmtp_send_dummy_mail_auth {
    if ! is_bool($lmtp_send_dummy_mail_auth) {
      validate_string($lmtp_send_dummy_mail_auth)
    }
  }
  if $lmtp_send_xforward_command {
    if ! is_bool($lmtp_send_xforward_command) {
      validate_string($lmtp_send_xforward_command)
    }
  }
  if $lmtp_sender_dependent_authentication {
    if ! is_bool($lmtp_sender_dependent_authentication) {
      validate_string($lmtp_sender_dependent_authentication)
    }
  }
  if $lmtp_skip_5xx_greeting {
    if ! is_bool($lmtp_skip_5xx_greeting) {
      validate_string($lmtp_skip_5xx_greeting)
    }
  }
  if $lmtp_skip_quit_response {
    if ! is_bool($lmtp_skip_quit_response) {
      validate_string($lmtp_skip_quit_response)
    }
  }
  validate_string($lmtp_starttls_timeout)
  validate_string($lmtp_tcp_port)
  validate_string($lmtp_tls_cafile)
  validate_string($lmtp_tls_capath)
  if $lmtp_tls_block_early_mail_reply {
    if ! is_bool($lmtp_tls_block_early_mail_reply) {
      validate_string($lmtp_tls_block_early_mail_reply)
    }
  }
  validate_string($lmtp_tls_cert_file)
  validate_string($lmtp_tls_ciphers)
  validate_string($lmtp_tls_dcert_file)
  validate_string($lmtp_tls_dkey_file)
  validate_string($lmtp_tls_eccert_file)
  validate_string($lmtp_tls_eckey_file)
  if $lmtp_tls_enforce_peername {
    if ! is_bool($lmtp_tls_enforce_peername) {
      validate_string($lmtp_tls_enforce_peername)
    }
  }
  if $lmtp_tls_exclude_ciphers {
    validate_array($lmtp_tls_exclude_ciphers)
  }
  if $lmtp_tls_fingerprint_cert_match {
    validate_array($lmtp_tls_fingerprint_cert_match)
  }
  validate_string($lmtp_tls_fingerprint_digest)
  validate_string($lmtp_tls_key_file)
  validate_string($lmtp_tls_loglevel)
  validate_string($lmtp_tls_mandatory_ciphers)
  if $lmtp_tls_mandatory_exclude_ciphers {
    validate_array($lmtp_tls_mandatory_exclude_ciphers)
  }
  if $lmtp_tls_mandatory_protocols {
    validate_array($lmtp_tls_mandatory_protocols)
  }
  if $lmtp_tls_note_starttls_offer {
    if ! is_bool($lmtp_tls_note_starttls_offer) {
      validate_string($lmtp_tls_note_starttls_offer)
    }
  }
  if $lmtp_tls_per_site {
    validate_array($lmtp_tls_per_site)
  }
  if $lmtp_tls_policy_maps {
    validate_array($lmtp_tls_policy_maps)
  }
  if $lmtp_tls_protocols {
    validate_array($lmtp_tls_protocols)
  }
  validate_string($lmtp_tls_scert_verifydepth)
  if $lmtp_tls_secure_cert_match {
    validate_array($lmtp_tls_secure_cert_match)
  }
  validate_string($lmtp_tls_security_level)
  validate_string($lmtp_tls_session_cache_database)
  validate_string($lmtp_tls_session_cache_timeout)
  if $lmtp_tls_verify_cert_match {
    validate_array($lmtp_tls_verify_cert_match)
  }
  if $lmtp_use_tls {
    if ! is_bool($lmtp_use_tls) {
      validate_string($lmtp_use_tls)
    }
  }
  validate_string($lmtp_xforward_timeout)
  validate_string($local_command_shell)
  if $local_header_rewrite_clients {
    validate_array($local_header_rewrite_clients)
  }
  if $local_recipient_maps {
    validate_array($local_recipient_maps)
  }
  validate_string($local_transport)
  validate_string($luser_relay)
  validate_string($mail_name)
  validate_string($mail_owner)
  validate_string($mail_release_date)
  validate_string($mail_spool_directory)
  validate_string($mail_version)
  validate_string($mailbox_command)
  if $mailbox_command_maps {
    validate_array($mailbox_command_maps)
  }
  if $mailbox_delivery_lock {
    validate_array($mailbox_delivery_lock)
  }
  validate_string($mailbox_size_limit)
  validate_string($mailbox_transport)
  if $mailbox_transport_maps {
    validate_array($mailbox_transport_maps)
  }
  validate_string($mailq_path)
  validate_string($manpage_directory)
  if $maps_rbl_domains {
    validate_array($maps_rbl_domains)
  }
  validate_string($maps_rbl_reject_code)
  if $masquerade_classes {
    validate_array($masquerade_classes)
  }
  if $masquerade_domains {
    validate_array($masquerade_domains)
  }
  if $masquerade_exceptions {
    validate_array($masquerade_exceptions)
  }
  if $master_service_disable {
    validate_array($master_service_disable)
  }
  validate_string($max_idle)
  validate_string($max_use)
  validate_string($maximal_backoff_time)
  validate_string($maximal_queue_lifetime)
  validate_string($message_reject_characters)
  validate_string($message_size_limit)
  validate_string($message_strip_characters)
  validate_string($milter_command_timeout)
  validate_string($milter_connect_macros)
  validate_string($milter_connect_timeout)
  validate_string($milter_content_timeout)
  validate_string($milter_data_macros)
  validate_string($milter_default_action)
  validate_string($milter_end_of_data_macros)
  validate_string($milter_end_of_header_macros)
  if $milter_header_checks {
    validate_array($milter_header_checks)
  }
  validate_string($milter_helo_macros)
  validate_string($milter_macro_daemon_name)
  validate_string($milter_macro_v)
  validate_string($milter_mail_macros)
  validate_string($milter_protocol)
  validate_string($milter_rcpt_macros)
  validate_string($milter_unknown_command_macros)
  validate_string($mime_boundary_length_limit)
  if $mime_header_checks {
    validate_array($mime_header_checks)
  }
  validate_string($mime_nesting_limit)
  validate_string($minimal_backoff_time)
  if $multi_instance_directories {
    validate_array($multi_instance_directories)
  }
  if $multi_instance_enable {
    if ! is_bool($multi_instance_enable) {
      validate_string($multi_instance_enable)
    }
  }
  validate_string($multi_instance_group)
  validate_string($multi_instance_name)
  validate_string($multi_instance_wrapper)
  validate_string($multi_recipient_bounce_reject_code)
  if $mydestination {
    validate_array($mydestination)
  }
  validate_string($mydomain)
  validate_string($mydomain_fallback)
  validate_string($myhostname)
  if $mynetworks {
    validate_array($mynetworks)
  }
  validate_string($mynetworks_style)
  validate_string($myorigin)
  if $nested_header_checks {
    validate_array($nested_header_checks)
  }
  validate_string($newaliases_path)
  validate_string($non_fqdn_reject_code)
  if $non_smtpd_milters {
    validate_array($non_smtpd_milters)
  }
  if $notify_classes {
    validate_array($notify_classes)
  }
  if $owner_request_special {
    if ! is_bool($owner_request_special) {
      validate_string($owner_request_special)
    }
  }
  if $parent_domain_matches_subdomains {
    validate_array($parent_domain_matches_subdomains)
  }
  if $permit_mx_backup_networks {
    validate_array($permit_mx_backup_networks)
  }
  validate_string($pickup_service_name)
  validate_string($plaintext_reject_code)
  if $postmulti_control_commands {
    validate_array($postmulti_control_commands)
  }
  if $postmulti_start_commands {
    validate_array($postmulti_start_commands)
  }
  if $postmulti_stop_commands {
    validate_array($postmulti_stop_commands)
  }
  if $postscreen_access_list {
    validate_array($postscreen_access_list)
  }
  validate_string($postscreen_bare_newline_action)
  if $postscreen_bare_newline_enable {
    if ! is_bool($postscreen_bare_newline_enable) {
      validate_string($postscreen_bare_newline_enable)
    }
  }
  validate_string($postscreen_bare_newline_ttl)
  validate_string($postscreen_blacklist_action)
  validate_string($postscreen_cache_cleanup_interval)
  validate_string($postscreen_cache_map)
  validate_string($postscreen_cache_retention_time)
  validate_string($postscreen_client_connection_count_limit)
  validate_string($postscreen_command_count_limit)
  validate_string($postscreen_command_filter)
  validate_string($postscreen_command_time_limit)
  if $postscreen_disable_vrfy_command {
    if ! is_bool($postscreen_disable_vrfy_command) {
      validate_string($postscreen_disable_vrfy_command)
    }
  }
  if $postscreen_discard_ehlo_keyword_address_maps {
    validate_array($postscreen_discard_ehlo_keyword_address_maps)
  }
  if $postscreen_discard_ehlo_keywords {
    validate_array($postscreen_discard_ehlo_keywords)
  }
  validate_string($postscreen_dnsbl_action)
  validate_string($postscreen_dnsbl_reply_map)
  if $postscreen_dnsbl_sites {
    validate_array($postscreen_dnsbl_sites)
  }
  validate_string($postscreen_dnsbl_threshold)
  validate_string($postscreen_dnsbl_ttl)
  if $postscreen_enforce_tls {
    if ! is_bool($postscreen_enforce_tls) {
      validate_string($postscreen_enforce_tls)
    }
  }
  validate_string($postscreen_expansion_filter)
  if $postscreen_forbidden_commands {
    validate_array($postscreen_forbidden_commands)
  }
  validate_string($postscreen_greet_action)
  validate_string($postscreen_greet_banner)
  validate_string($postscreen_greet_ttl)
  validate_string($postscreen_greet_wait)
  if $postscreen_helo_required {
    if ! is_bool($postscreen_helo_required) {
      validate_string($postscreen_helo_required)
    }
  }
  validate_string($postscreen_non_smtp_command_action)
  if $postscreen_non_smtp_command_enable {
    if ! is_bool($postscreen_non_smtp_command_enable) {
      validate_string($postscreen_non_smtp_command_enable)
    }
  }
  validate_string($postscreen_non_smtp_command_ttl)
  validate_string($postscreen_pipelining_action)
  if $postscreen_pipelining_enable {
    if ! is_bool($postscreen_pipelining_enable) {
      validate_string($postscreen_pipelining_enable)
    }
  }
  validate_string($postscreen_pipelining_ttl)
  validate_string($postscreen_post_queue_limit)
  validate_string($postscreen_pre_queue_limit)
  validate_string($postscreen_reject_footer)
  validate_string($postscreen_tls_security_level)
  validate_string($postscreen_upstream_proxy_protocol)
  validate_string($postscreen_upstream_proxy_timeout)
  if $postscreen_use_tls {
    if ! is_bool($postscreen_use_tls) {
      validate_string($postscreen_use_tls)
    }
  }
  validate_string($postscreen_watchdog_timeout)
  if $postscreen_whitelist_interfaces {
    validate_array($postscreen_whitelist_interfaces)
  }
  if $prepend_delivered_header {
    validate_array($prepend_delivered_header)
  }
  validate_string($process_id_directory)
  if $propagate_unmatched_extensions {
    validate_array($propagate_unmatched_extensions)
  }
  if $proxy_interfaces {
    validate_array($proxy_interfaces)
  }
  if $proxy_read_maps {
    validate_array($proxy_read_maps)
  }
  if $proxy_write_maps {
    validate_array($proxy_write_maps)
  }
  validate_string($proxymap_service_name)
  validate_string($proxywrite_service_name)
  validate_string($qmgr_clog_warn_time)
  validate_string($qmgr_daemon_timeout)
  validate_string($qmgr_fudge_factor)
  validate_string($qmgr_ipc_timeout)
  validate_string($qmgr_message_active_limit)
  validate_string($qmgr_message_recipient_limit)
  validate_string($qmgr_message_recipient_minimum)
  if $qmqpd_authorized_clients {
    validate_array($qmqpd_authorized_clients)
  }
  if $qmqpd_client_port_logging {
    if ! is_bool($qmqpd_client_port_logging) {
      validate_string($qmqpd_client_port_logging)
    }
  }
  validate_string($qmqpd_error_delay)
  validate_string($qmqpd_timeout)
  validate_string($queue_directory)
  validate_string($queue_file_attribute_count_limit)
  validate_string($queue_minfree)
  validate_string($queue_run_delay)
  validate_string($queue_service_name)
  if $rbl_reply_maps {
    validate_array($rbl_reply_maps)
  }
  if $readme_directory {
    if ! is_bool($readme_directory) {
      validate_string($readme_directory)
    }
  }
  if $receive_override_options {
    validate_array($receive_override_options)
  }
  if $recipient_bcc_maps {
    validate_array($recipient_bcc_maps)
  }
  if $recipient_canonical_classes {
    validate_array($recipient_canonical_classes)
  }
  if $recipient_canonical_maps {
    validate_array($recipient_canonical_maps)
  }
  validate_string($recipient_delimiter)
  validate_string($reject_code)
  validate_string($reject_tempfail_action)
  if $relay_clientcerts {
    validate_array($relay_clientcerts)
  }
  if $relay_domains {
    validate_array($relay_domains)
  }
  validate_string($relay_domains_reject_code)
  if $relay_recipient_maps {
    validate_array($relay_recipient_maps)
  }
  validate_string($relay_transport)
  validate_string($relayhost)
  if $relocated_maps {
    validate_array($relocated_maps)
  }
  validate_string($remote_header_rewrite_domain)
  if $require_home_directory {
    if ! is_bool($require_home_directory) {
      validate_string($require_home_directory)
    }
  }
  if $reset_owner_alias {
    if ! is_bool($reset_owner_alias) {
      validate_string($reset_owner_alias)
    }
  }
  if $resolve_dequoted_address {
    if ! is_bool($resolve_dequoted_address) {
      validate_string($resolve_dequoted_address)
    }
  }
  if $resolve_null_domain {
    if ! is_bool($resolve_null_domain) {
      validate_string($resolve_null_domain)
    }
  }
  if $resolve_numeric_domain {
    if ! is_bool($resolve_numeric_domain) {
      validate_string($resolve_numeric_domain)
    }
  }
  validate_string($rewrite_service_name)
  validate_string($sample_directory)
  if $send_cyrus_sasl_authzid {
    if ! is_bool($send_cyrus_sasl_authzid) {
      validate_string($send_cyrus_sasl_authzid)
    }
  }
  if $sender_bcc_maps {
    validate_array($sender_bcc_maps)
  }
  if $sender_canonical_classes {
    validate_array($sender_canonical_classes)
  }
  if $sender_canonical_maps {
    validate_array($sender_canonical_maps)
  }
  if $sender_dependent_default_transport_maps {
    validate_array($sender_dependent_default_transport_maps)
  }
  if $sender_dependent_relayhost_maps {
    validate_array($sender_dependent_relayhost_maps)
  }
  validate_string($sendmail_fix_line_endings)
  validate_string($sendmail_path)
  validate_string($service_throttle_time)
  validate_string($setgid_group)
  if $show_user_unknown_table_name {
    if ! is_bool($show_user_unknown_table_name) {
      validate_string($show_user_unknown_table_name)
    }
  }
  validate_string($showq_service_name)
  validate_string($smtp_address_preference)
  if $smtp_always_send_ehlo {
    if ! is_bool($smtp_always_send_ehlo) {
      validate_string($smtp_always_send_ehlo)
    }
  }
  validate_string($smtp_bind_address)
  validate_string($smtp_bind_address6)
  if $smtp_body_checks {
    validate_array($smtp_body_checks)
  }
  if $smtp_cname_overrides_servername {
    if ! is_bool($smtp_cname_overrides_servername) {
      validate_string($smtp_cname_overrides_servername)
    }
  }
  validate_string($smtp_connect_timeout)
  if $smtp_connection_cache_destinations {
    validate_array($smtp_connection_cache_destinations)
  }
  if $smtp_connection_cache_on_demand {
    if ! is_bool($smtp_connection_cache_on_demand) {
      validate_string($smtp_connection_cache_on_demand)
    }
  }
  validate_string($smtp_connection_cache_time_limit)
  validate_string($smtp_connection_reuse_time_limit)
  validate_string($smtp_data_done_timeout)
  validate_string($smtp_data_init_timeout)
  validate_string($smtp_data_xfer_timeout)
  if $smtp_defer_if_no_mx_address_found {
    if ! is_bool($smtp_defer_if_no_mx_address_found) {
      validate_string($smtp_defer_if_no_mx_address_found)
    }
  }
  if $smtp_discard_ehlo_keyword_address_maps {
    validate_array($smtp_discard_ehlo_keyword_address_maps)
  }
  if $smtp_discard_ehlo_keywords {
    validate_array($smtp_discard_ehlo_keywords)
  }
  if $smtp_dns_resolver_options {
    validate_array($smtp_dns_resolver_options)
  }
  if $smtp_enforce_tls {
    if ! is_bool($smtp_enforce_tls) {
      validate_string($smtp_enforce_tls)
    }
  }
  if $smtp_fallback_relay {
    validate_array($smtp_fallback_relay)
  }
  if $smtp_generic_maps {
    validate_array($smtp_generic_maps)
  }
  if $smtp_header_checks {
    validate_array($smtp_header_checks)
  }
  validate_string($smtp_helo_name)
  validate_string($smtp_helo_timeout)
  if $smtp_host_lookup {
    validate_array($smtp_host_lookup)
  }
  validate_string($smtp_line_length_limit)
  validate_string($smtp_mail_timeout)
  if $smtp_mime_header_checks {
    validate_array($smtp_mime_header_checks)
  }
  validate_string($smtp_mx_address_limit)
  validate_string($smtp_mx_session_limit)
  if $smtp_nested_header_checks {
    validate_array($smtp_nested_header_checks)
  }
  if $smtp_never_send_ehlo {
    if ! is_bool($smtp_never_send_ehlo) {
      validate_string($smtp_never_send_ehlo)
    }
  }
  if $smtp_per_record_deadline {
    if ! is_bool($smtp_per_record_deadline) {
      validate_string($smtp_per_record_deadline)
    }
  }
  validate_string($smtp_pix_workaround_delay_time)
  if $smtp_pix_workaround_maps {
    validate_array($smtp_pix_workaround_maps)
  }
  validate_string($smtp_pix_workaround_threshold_time)
  if $smtp_pix_workarounds {
    validate_array($smtp_pix_workarounds)
  }
  validate_string($smtp_quit_timeout)
  if $smtp_quote_rfc821_envelope {
    if ! is_bool($smtp_quote_rfc821_envelope) {
      validate_string($smtp_quote_rfc821_envelope)
    }
  }
  if $smtp_randomize_addresses {
    if ! is_bool($smtp_randomize_addresses) {
      validate_string($smtp_randomize_addresses)
    }
  }
  validate_string($smtp_rcpt_timeout)
  validate_string($smtp_reply_filter)
  validate_string($smtp_rset_timeout)
  validate_string($smtp_sasl_auth_cache_name)
  validate_string($smtp_sasl_auth_cache_time)
  if $smtp_sasl_auth_enable {
    if ! is_bool($smtp_sasl_auth_enable) {
      validate_string($smtp_sasl_auth_enable)
    }
  }
  if $smtp_sasl_auth_soft_bounce {
    if ! is_bool($smtp_sasl_auth_soft_bounce) {
      validate_string($smtp_sasl_auth_soft_bounce)
    }
  }
  if $smtp_sasl_mechanism_filter {
    validate_array($smtp_sasl_mechanism_filter)
  }
  if $smtp_sasl_password_maps {
    validate_array($smtp_sasl_password_maps)
  }
  validate_string($smtp_sasl_path)
  if $smtp_sasl_security_options {
    validate_array($smtp_sasl_security_options)
  }
  if $smtp_sasl_tls_security_options {
    validate_array($smtp_sasl_tls_security_options)
  }
  if $smtp_sasl_tls_verified_security_options {
    validate_array($smtp_sasl_tls_verified_security_options)
  }
  validate_string($smtp_sasl_type)
  if $smtp_send_dummy_mail_auth {
    if ! is_bool($smtp_send_dummy_mail_auth) {
      validate_string($smtp_send_dummy_mail_auth)
    }
  }
  if $smtp_send_xforward_command {
    if ! is_bool($smtp_send_xforward_command) {
      validate_string($smtp_send_xforward_command)
    }
  }
  if $smtp_sender_dependent_authentication {
    if ! is_bool($smtp_sender_dependent_authentication) {
      validate_string($smtp_sender_dependent_authentication)
    }
  }
  if $smtp_skip_5xx_greeting {
    if ! is_bool($smtp_skip_5xx_greeting) {
      validate_string($smtp_skip_5xx_greeting)
    }
  }
  if $smtp_skip_quit_response {
    if ! is_bool($smtp_skip_quit_response) {
      validate_string($smtp_skip_quit_response)
    }
  }
  validate_string($smtp_starttls_timeout)
  validate_string($smtp_tls_cafile)
  validate_string($smtp_tls_capath)
  if $smtp_tls_block_early_mail_reply {
    if ! is_bool($smtp_tls_block_early_mail_reply) {
      validate_string($smtp_tls_block_early_mail_reply)
    }
  }
  validate_string($smtp_tls_cert_file)
  validate_string($smtp_tls_ciphers)
  validate_string($smtp_tls_dcert_file)
  validate_string($smtp_tls_dkey_file)
  validate_string($smtp_tls_eccert_file)
  validate_string($smtp_tls_eckey_file)
  if $smtp_tls_enforce_peername {
    if ! is_bool($smtp_tls_enforce_peername) {
      validate_string($smtp_tls_enforce_peername)
    }
  }
  if $smtp_tls_exclude_ciphers {
    validate_array($smtp_tls_exclude_ciphers)
  }
  if $smtp_tls_fingerprint_cert_match {
    validate_array($smtp_tls_fingerprint_cert_match)
  }
  validate_string($smtp_tls_fingerprint_digest)
  validate_string($smtp_tls_key_file)
  validate_string($smtp_tls_loglevel)
  validate_string($smtp_tls_mandatory_ciphers)
  if $smtp_tls_mandatory_exclude_ciphers {
    validate_array($smtp_tls_mandatory_exclude_ciphers)
  }
  if $smtp_tls_mandatory_protocols {
    validate_array($smtp_tls_mandatory_protocols)
  }
  if $smtp_tls_note_starttls_offer {
    if ! is_bool($smtp_tls_note_starttls_offer) {
      validate_string($smtp_tls_note_starttls_offer)
    }
  }
  if $smtp_tls_per_site {
    validate_array($smtp_tls_per_site)
  }
  if $smtp_tls_policy_maps {
    validate_array($smtp_tls_policy_maps)
  }
  if $smtp_tls_protocols {
    validate_array($smtp_tls_protocols)
  }
  validate_string($smtp_tls_scert_verifydepth)
  if $smtp_tls_secure_cert_match {
    validate_array($smtp_tls_secure_cert_match)
  }
  validate_string($smtp_tls_security_level)
  validate_string($smtp_tls_session_cache_database)
  validate_string($smtp_tls_session_cache_timeout)
  if $smtp_tls_verify_cert_match {
    validate_array($smtp_tls_verify_cert_match)
  }
  if $smtp_use_tls {
    if ! is_bool($smtp_use_tls) {
      validate_string($smtp_use_tls)
    }
  }
  validate_string($smtp_xforward_timeout)
  if $smtpd_authorized_verp_clients {
    validate_array($smtpd_authorized_verp_clients)
  }
  if $smtpd_authorized_xclient_hosts {
    validate_array($smtpd_authorized_xclient_hosts)
  }
  if $smtpd_authorized_xforward_hosts {
    validate_array($smtpd_authorized_xforward_hosts)
  }
  validate_string($smtpd_banner)
  validate_string($smtpd_client_connection_count_limit)
  validate_string($smtpd_client_connection_rate_limit)
  if $smtpd_client_event_limit_exceptions {
    validate_array($smtpd_client_event_limit_exceptions)
  }
  validate_string($smtpd_client_message_rate_limit)
  validate_string($smtpd_client_new_tls_session_rate_limit)
  if $smtpd_client_port_logging {
    if ! is_bool($smtpd_client_port_logging) {
      validate_string($smtpd_client_port_logging)
    }
  }
  validate_string($smtpd_client_recipient_rate_limit)
  if $smtpd_client_restrictions {
    validate_array($smtpd_client_restrictions)
  }
  validate_string($smtpd_command_filter)
  if $smtpd_data_restrictions {
    validate_array($smtpd_data_restrictions)
  }
  if $smtpd_delay_open_until_valid_rcpt {
    if ! is_bool($smtpd_delay_open_until_valid_rcpt) {
      validate_string($smtpd_delay_open_until_valid_rcpt)
    }
  }
  if $smtpd_delay_reject {
    if ! is_bool($smtpd_delay_reject) {
      validate_string($smtpd_delay_reject)
    }
  }
  if $smtpd_discard_ehlo_keyword_address_maps {
    validate_array($smtpd_discard_ehlo_keyword_address_maps)
  }
  if $smtpd_discard_ehlo_keywords {
    validate_array($smtpd_discard_ehlo_keywords)
  }
  if $smtpd_end_of_data_restrictions {
    validate_array($smtpd_end_of_data_restrictions)
  }
  if $smtpd_enforce_tls {
    if ! is_bool($smtpd_enforce_tls) {
      validate_string($smtpd_enforce_tls)
    }
  }
  validate_string($smtpd_error_sleep_time)
  if $smtpd_etrn_restrictions {
    validate_array($smtpd_etrn_restrictions)
  }
  validate_string($smtpd_expansion_filter)
  if $smtpd_forbidden_commands {
    validate_array($smtpd_forbidden_commands)
  }
  validate_string($smtpd_hard_error_limit)
  if $smtpd_helo_required {
    if ! is_bool($smtpd_helo_required) {
      validate_string($smtpd_helo_required)
    }
  }
  if $smtpd_helo_restrictions {
    validate_array($smtpd_helo_restrictions)
  }
  validate_string($smtpd_history_flush_threshold)
  validate_string($smtpd_junk_command_limit)
  validate_string($smtpd_log_access_permit_actions)
  if $smtpd_milters {
    validate_array($smtpd_milters)
  }
  if $smtpd_noop_commands {
    validate_array($smtpd_noop_commands)
  }
  validate_string($smtpd_null_access_lookup_key)
  if $smtpd_peername_lookup {
    if ! is_bool($smtpd_peername_lookup) {
      validate_string($smtpd_peername_lookup)
    }
  }
  if $smtpd_per_record_deadline {
    if ! is_bool($smtpd_per_record_deadline) {
      validate_string($smtpd_per_record_deadline)
    }
  }
  validate_string($smtpd_policy_service_max_idle)
  validate_string($smtpd_policy_service_max_ttl)
  validate_string($smtpd_policy_service_timeout)
  validate_string($smtpd_proxy_ehlo)
  validate_string($smtpd_proxy_filter)
  if $smtpd_proxy_options {
    validate_array($smtpd_proxy_options)
  }
  validate_string($smtpd_proxy_timeout)
  validate_string($smtpd_recipient_limit)
  validate_string($smtpd_recipient_overshoot_limit)
  if $smtpd_recipient_restrictions {
    validate_array($smtpd_recipient_restrictions)
  }
  validate_string($smtpd_reject_footer)
  if $smtpd_reject_unlisted_recipient {
    if ! is_bool($smtpd_reject_unlisted_recipient) {
      validate_string($smtpd_reject_unlisted_recipient)
    }
  }
  if $smtpd_reject_unlisted_sender {
    if ! is_bool($smtpd_reject_unlisted_sender) {
      validate_string($smtpd_reject_unlisted_sender)
    }
  }
  if $smtpd_relay_restrictions {
    validate_array($smtpd_relay_restrictions)
  }
  if $smtpd_restriction_classes {
    validate_array($smtpd_restriction_classes)
  }
  if $smtpd_sasl_auth_enable {
    if ! is_bool($smtpd_sasl_auth_enable) {
      validate_string($smtpd_sasl_auth_enable)
    }
  }
  if $smtpd_sasl_authenticated_header {
    if ! is_bool($smtpd_sasl_authenticated_header) {
      validate_string($smtpd_sasl_authenticated_header)
    }
  }
  if $smtpd_sasl_exceptions_networks {
    validate_array($smtpd_sasl_exceptions_networks)
  }
  validate_string($smtpd_sasl_local_domain)
  validate_string($smtpd_sasl_path)
  if $smtpd_sasl_security_options {
    validate_array($smtpd_sasl_security_options)
  }
  if $smtpd_sasl_tls_security_options {
    validate_array($smtpd_sasl_tls_security_options)
  }
  validate_string($smtpd_sasl_type)
  if $smtpd_sender_login_maps {
    validate_array($smtpd_sender_login_maps)
  }
  if $smtpd_sender_restrictions {
    validate_array($smtpd_sender_restrictions)
  }
  validate_string($smtpd_service_name)
  validate_string($smtpd_soft_error_limit)
  validate_string($smtpd_starttls_timeout)
  validate_string($smtpd_timeout)
  validate_string($smtpd_tls_cafile)
  validate_string($smtpd_tls_capath)
  if $smtpd_tls_always_issue_session_ids {
    if ! is_bool($smtpd_tls_always_issue_session_ids) {
      validate_string($smtpd_tls_always_issue_session_ids)
    }
  }
  if $smtpd_tls_ask_ccert {
    if ! is_bool($smtpd_tls_ask_ccert) {
      validate_string($smtpd_tls_ask_ccert)
    }
  }
  if $smtpd_tls_auth_only {
    if ! is_bool($smtpd_tls_auth_only) {
      validate_string($smtpd_tls_auth_only)
    }
  }
  validate_string($smtpd_tls_ccert_verifydepth)
  validate_string($smtpd_tls_cert_file)
  validate_string($smtpd_tls_ciphers)
  validate_string($smtpd_tls_dcert_file)
  validate_string($smtpd_tls_dh1024_param_file)
  validate_string($smtpd_tls_dh512_param_file)
  validate_string($smtpd_tls_dkey_file)
  validate_string($smtpd_tls_eccert_file)
  validate_string($smtpd_tls_eckey_file)
  validate_string($smtpd_tls_eecdh_grade)
  if $smtpd_tls_exclude_ciphers {
    validate_array($smtpd_tls_exclude_ciphers)
  }
  validate_string($smtpd_tls_fingerprint_digest)
  validate_string($smtpd_tls_key_file)
  validate_string($smtpd_tls_loglevel)
  validate_string($smtpd_tls_mandatory_ciphers)
  if $smtpd_tls_mandatory_exclude_ciphers {
    validate_array($smtpd_tls_mandatory_exclude_ciphers)
  }
  if $smtpd_tls_mandatory_protocols {
    validate_array($smtpd_tls_mandatory_protocols)
  }
  if $smtpd_tls_protocols {
    validate_array($smtpd_tls_protocols)
  }
  if $smtpd_tls_received_header {
    if ! is_bool($smtpd_tls_received_header) {
      validate_string($smtpd_tls_received_header)
    }
  }
  if $smtpd_tls_req_ccert {
    if ! is_bool($smtpd_tls_req_ccert) {
      validate_string($smtpd_tls_req_ccert)
    }
  }
  validate_string($smtpd_tls_security_level)
  validate_string($smtpd_tls_session_cache_database)
  validate_string($smtpd_tls_session_cache_timeout)
  if $smtpd_tls_wrappermode {
    if ! is_bool($smtpd_tls_wrappermode) {
      validate_string($smtpd_tls_wrappermode)
    }
  }
  validate_string($smtpd_upstream_proxy_protocol)
  validate_string($smtpd_upstream_proxy_timeout)
  if $smtpd_use_tls {
    if ! is_bool($smtpd_use_tls) {
      validate_string($smtpd_use_tls)
    }
  }
  if $soft_bounce {
    if ! is_bool($soft_bounce) {
      validate_string($soft_bounce)
    }
  }
  validate_string($stale_lock_time)
  if $strict_7bit_headers {
    if ! is_bool($strict_7bit_headers) {
      validate_string($strict_7bit_headers)
    }
  }
  if $strict_8bitmime {
    if ! is_bool($strict_8bitmime) {
      validate_string($strict_8bitmime)
    }
  }
  if $strict_8bitmime_body {
    if ! is_bool($strict_8bitmime_body) {
      validate_string($strict_8bitmime_body)
    }
  }
  if $strict_mailbox_ownership {
    if ! is_bool($strict_mailbox_ownership) {
      validate_string($strict_mailbox_ownership)
    }
  }
  if $strict_mime_encoding_domain {
    if ! is_bool($strict_mime_encoding_domain) {
      validate_string($strict_mime_encoding_domain)
    }
  }
  if $strict_rfc821_envelopes {
    if ! is_bool($strict_rfc821_envelopes) {
      validate_string($strict_rfc821_envelopes)
    }
  }
  if $sun_mailtool_compatibility {
    if ! is_bool($sun_mailtool_compatibility) {
      validate_string($sun_mailtool_compatibility)
    }
  }
  if $swap_bangpath {
    if ! is_bool($swap_bangpath) {
      validate_string($swap_bangpath)
    }
  }
  validate_string($syslog_facility)
  validate_string($syslog_name)
  validate_string($tcp_windowsize)
  if $tls_append_default_ca {
    if ! is_bool($tls_append_default_ca) {
      validate_string($tls_append_default_ca)
    }
  }
  validate_string($tls_daemon_random_bytes)
  if $tls_disable_workarounds {
    validate_array($tls_disable_workarounds)
  }
  validate_string($tls_eecdh_strong_curve)
  validate_string($tls_eecdh_ultra_curve)
  validate_string($tls_export_cipherlist)
  validate_string($tls_high_cipherlist)
  if $tls_legacy_public_key_fingerprints {
    if ! is_bool($tls_legacy_public_key_fingerprints) {
      validate_string($tls_legacy_public_key_fingerprints)
    }
  }
  validate_string($tls_low_cipherlist)
  validate_string($tls_medium_cipherlist)
  validate_string($tls_null_cipherlist)
  if $tls_preempt_cipherlist {
    if ! is_bool($tls_preempt_cipherlist) {
      validate_string($tls_preempt_cipherlist)
    }
  }
  validate_string($tls_random_bytes)
  validate_string($tls_random_exchange_name)
  validate_string($tls_random_prng_update_period)
  validate_string($tls_random_reseed_period)
  validate_string($tls_random_source)
  if $tlsproxy_enforce_tls {
    if ! is_bool($tlsproxy_enforce_tls) {
      validate_string($tlsproxy_enforce_tls)
    }
  }
  validate_string($tlsproxy_service_name)
  validate_string($tlsproxy_tls_cafile)
  validate_string($tlsproxy_tls_capath)
  if $tlsproxy_tls_always_issue_session_ids {
    if ! is_bool($tlsproxy_tls_always_issue_session_ids) {
      validate_string($tlsproxy_tls_always_issue_session_ids)
    }
  }
  if $tlsproxy_tls_ask_ccert {
    if ! is_bool($tlsproxy_tls_ask_ccert) {
      validate_string($tlsproxy_tls_ask_ccert)
    }
  }
  validate_string($tlsproxy_tls_ccert_verifydepth)
  validate_string($tlsproxy_tls_cert_file)
  validate_string($tlsproxy_tls_ciphers)
  validate_string($tlsproxy_tls_dcert_file)
  validate_string($tlsproxy_tls_dh1024_param_file)
  validate_string($tlsproxy_tls_dh512_param_file)
  validate_string($tlsproxy_tls_dkey_file)
  validate_string($tlsproxy_tls_eccert_file)
  validate_string($tlsproxy_tls_eckey_file)
  validate_string($tlsproxy_tls_eecdh_grade)
  if $tlsproxy_tls_exclude_ciphers {
    validate_array($tlsproxy_tls_exclude_ciphers)
  }
  validate_string($tlsproxy_tls_fingerprint_digest)
  validate_string($tlsproxy_tls_key_file)
  validate_string($tlsproxy_tls_loglevel)
  validate_string($tlsproxy_tls_mandatory_ciphers)
  if $tlsproxy_tls_mandatory_exclude_ciphers {
    validate_array($tlsproxy_tls_mandatory_exclude_ciphers)
  }
  if $tlsproxy_tls_mandatory_protocols {
    validate_array($tlsproxy_tls_mandatory_protocols)
  }
  if $tlsproxy_tls_protocols {
    validate_array($tlsproxy_tls_protocols)
  }
  if $tlsproxy_tls_req_ccert {
    if ! is_bool($tlsproxy_tls_req_ccert) {
      validate_string($tlsproxy_tls_req_ccert)
    }
  }
  validate_string($tlsproxy_tls_security_level)
  validate_string($tlsproxy_tls_session_cache_timeout)
  if $tlsproxy_use_tls {
    if ! is_bool($tlsproxy_use_tls) {
      validate_string($tlsproxy_use_tls)
    }
  }
  validate_string($tlsproxy_watchdog_timeout)
  validate_string($trace_service_name)
  if $transport_maps {
    validate_array($transport_maps)
  }
  validate_string($transport_retry_time)
  validate_string($trigger_timeout)
  validate_string($undisclosed_recipients_header)
  validate_string($unknown_address_reject_code)
  validate_string($unknown_address_tempfail_action)
  validate_string($unknown_client_reject_code)
  validate_string($unknown_helo_hostname_tempfail_action)
  validate_string($unknown_hostname_reject_code)
  validate_string($unknown_local_recipient_reject_code)
  validate_string($unknown_relay_recipient_reject_code)
  validate_string($unknown_virtual_alias_reject_code)
  validate_string($unknown_virtual_mailbox_reject_code)
  validate_string($unverified_recipient_defer_code)
  validate_string($unverified_recipient_reject_code)
  validate_string($unverified_recipient_reject_reason)
  validate_string($unverified_recipient_tempfail_action)
  validate_string($unverified_sender_defer_code)
  validate_string($unverified_sender_reject_code)
  validate_string($unverified_sender_reject_reason)
  validate_string($unverified_sender_tempfail_action)
  validate_string($verp_delimiter_filter)
  if $virtual_alias_domains {
    validate_array($virtual_alias_domains)
  }
  validate_string($virtual_alias_expansion_limit)
  if $virtual_alias_maps {
    validate_array($virtual_alias_maps)
  }
  validate_string($virtual_alias_recursion_limit)
  if $virtual_gid_maps {
    validate_array($virtual_gid_maps)
  }
  validate_string($virtual_mailbox_base)
  if $virtual_mailbox_domains {
    validate_array($virtual_mailbox_domains)
  }
  validate_string($virtual_mailbox_limit)
  if $virtual_mailbox_lock {
    validate_array($virtual_mailbox_lock)
  }
  if $virtual_mailbox_maps {
    validate_array($virtual_mailbox_maps)
  }
  validate_string($virtual_minimum_uid)
  validate_string($virtual_transport)
  if $virtual_uid_maps {
    validate_array($virtual_uid_maps)
  }

  include ::postfix::install
  include ::postfix::config
  include ::postfix::service

  anchor { 'postfix::begin': }
  anchor { 'postfix::end': }

  Anchor['postfix::begin'] -> Class['::postfix::install']
    ~> Class['::postfix::config'] ~> Class['::postfix::service']
    -> Anchor['postfix::end']
}
