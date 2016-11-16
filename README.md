# postfix

Tested with Travis CI

[![Build Status](https://travis-ci.org/bodgit/puppet-postfix.svg?branch=master)](https://travis-ci.org/bodgit/puppet-postfix)
[![Coverage Status](https://coveralls.io/repos/bodgit/puppet-postfix/badge.svg?branch=master&service=github)](https://coveralls.io/github/bodgit/puppet-postfix?branch=master)
[![Puppet Forge](http://img.shields.io/puppetforge/v/bodgit/postfix.svg)](https://forge.puppetlabs.com/bodgit/postfix)
[![Dependency Status](https://gemnasium.com/bodgit/puppet-postfix.svg)](https://gemnasium.com/bodgit/puppet-postfix)

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with postfix](#setup)
    * [What postfix affects](#what-postfix-affects)
    * [Beginning with postfix](#beginning-with-postfix)
4. [Usage - Configuration options and additional functionality](#usage)
    * [Classes and Defined Types](#classes-and-defined-types)
        * [Class: postfix](#class-postfix)
        * [Defined Type: postfix::main](#defined-type-postfixmain)
        * [Defined Type: postfix::master](#defined-type-postfixmaster)
        * [Defined Type: postfix::lookup::database](#defined-type-postfixlookupdatabase)
        * [Defined Type: postfix::lookup::ldap](#defined-type-postfixlookupldap)
        * [Defined Type: postfix::lookup::mysql](#defined-type-postfixlookupmysql)
        * [Defined Type: postfix::lookup::pgsql](#defined-type-postfixlookuppgsql)
        * [Defined Type: postfix::lookup::sqlite](#defined-type-postfixlookupsqlite)
    * [Native Types](#native-types)
        * [Native Type: postfix_main](#native-type-postfix_main)
        * [Native Type: postfix_master](#native-type-postfix_master)
    * [Examples](#examples)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module manages Postfix.

## Module Description

This module can install the Postfix packages, manage the main configuration
file and services, and manage any lookup tables.

## Setup

### What postfix affects

* The package(s) providing the Postfix software.
* The `main.cf` configuration file containing the configuration.
* The `master.cf` configuration file containing the services.
* The service controlling the various Postfix daemons.
* Any lookup tables; either local database files or using an external database.

### Beginning with postfix

```puppet
include ::postfix
```

## Usage

### Classes and Defined Types

#### Class: `postfix`

**Parameters within `postfix`:**

##### `conf_dir`

The base configuration directory, defaults to `/etc/postfix`.

##### `default_services`

A hash of default services to maintain in `master.cf` suitable for passing to
`create_resources`.

##### `lookup_packages`

A hash of any lookup table types that require an additional sub-package to
provide support.

##### `package_name`

The name of the package to install that provides the main Postfix software.

##### `service_name`

The name of the service managing the Postfix daemons.

##### All other parameters

The following parameters map 1:1 to their equivalent in `main.cf`:

* `twobounce_notice_recipient` (`2bounce_notice_recipient` is a violation of
  Puppet variable naming conventions)
* `access_map_defer_code`
* `access_map_reject_code`
* `address_verify_cache_cleanup_interval`
* `address_verify_default_transport`
* `address_verify_local_transport`
* `address_verify_map`
* `address_verify_negative_cache`
* `address_verify_negative_expire_time`
* `address_verify_negative_refresh_time`
* `address_verify_poll_count`
* `address_verify_poll_delay`
* `address_verify_positive_expire_time`
* `address_verify_positive_refresh_time`
* `address_verify_relay_transport`
* `address_verify_relayhost`
* `address_verify_sender`
* `address_verify_sender_dependent_default_transport_maps`
* `address_verify_sender_dependent_relayhost_maps`
* `address_verify_sender_ttl`
* `address_verify_service_name`
* `address_verify_transport_maps`
* `address_verify_virtual_transport`
* `alias_database`
* `alias_maps`
* `allow_mail_to_commands`
* `allow_mail_to_files`
* `allow_min_user`
* `allow_percent_hack`
* `allow_untrusted_routing`
* `alternate_config_directories`
* `always_add_missing_headers`
* `always_bcc`
* `anvil_rate_time_unit`
* `anvil_status_update_time`
* `append_at_myorigin`
* `append_dot_mydomain`
* `application_event_drain_time`
* `authorized_flush_users`
* `authorized_mailq_users`
* `authorized_submit_users`
* `backwards_bounce_logfile_compatibility`
* `berkeley_db_create_buffer_size`
* `berkeley_db_read_buffer_size`
* `best_mx_transport`
* `biff`
* `body_checks`
* `body_checks_size_limit`
* `bounce_notice_recipient`
* `bounce_queue_lifetime`
* `bounce_service_name`
* `bounce_size_limit`
* `bounce_template_file`
* `broken_sasl_auth_clients`
* `canonical_classes`
* `canonical_maps`
* `cleanup_service_name`
* `command_directory`
* `command_execution_directory`
* `command_expansion_filter`
* `command_time_limit`
* `config_directory`
* `connection_cache_protocol_timeout`
* `connection_cache_service_name`
* `connection_cache_status_update_time`
* `connection_cache_ttl_limit`
* `content_filter`
* `cyrus_sasl_config_path`
* `daemon_directory`
* `daemon_table_open_error_is_fatal`
* `daemon_timeout`
* `data_directory`
* `debug_peer_level`
* `debug_peer_list`
* `debugger_command`
* `default_database_type`
* `default_delivery_slot_cost`
* `default_delivery_slot_discount`
* `default_delivery_slot_loan`
* `default_destination_concurrency_failed_cohort_limit`
* `default_destination_concurrency_limit`
* `default_destination_concurrency_negative_feedback`
* `default_destination_concurrency_positive_feedback`
* `default_destination_rate_delay`
* `default_destination_recipient_limit`
* `default_extra_recipient_limit`
* `default_filter_nexthop`
* `default_minimum_delivery_slots`
* `default_privs`
* `default_process_limit`
* `default_rbl_reply`
* `default_recipient_limit`
* `default_recipient_refill_delay`
* `default_recipient_refill_limit`
* `default_transport`
* `default_verp_delimiters`
* `defer_code`
* `defer_service_name`
* `defer_transports`
* `delay_logging_resolution_limit`
* `delay_notice_recipient`
* `delay_warning_time`
* `deliver_lock_attempts`
* `deliver_lock_delay`
* `destination_concurrency_feedback_debug`
* `detect_8bit_encoding_header`
* `disable_dns_lookups`
* `disable_mime_input_processing`
* `disable_mime_output_conversion`
* `disable_verp_bounces`
* `disable_vrfy_command`
* `dnsblog_reply_delay`
* `dnsblog_service_name`
* `dont_remove`
* `double_bounce_sender`
* `duplicate_filter_limit`
* `empty_address_default_transport_maps_lookup_key`
* `empty_address_recipient`
* `empty_address_relayhost_maps_lookup_key`
* `enable_long_queue_ids`
* `enable_original_recipient`
* `error_notice_recipient`
* `error_service_name`
* `execution_directory_expansion_filter`
* `expand_owner_alias`
* `export_environment`
* `fallback_transport`
* `fallback_transport_maps`
* `fast_flush_domains`
* `fast_flush_purge_time`
* `fast_flush_refresh_time`
* `fault_injection_code`
* `flush_service_name`
* `fork_attempts`
* `fork_delay`
* `forward_expansion_filter`
* `forward_path`
* `frozen_delivered_to`
* `hash_queue_depth`
* `hash_queue_names`
* `header_address_token_limit`
* `header_checks`
* `header_size_limit`
* `helpful_warnings`
* `home_mailbox`
* `hopcount_limit`
* `html_directory`
* `ignore_mx_lookup_error`
* `import_environment`
* `in_flow_delay`
* `inet_interfaces`
* `inet_protocols`
* `initial_destination_concurrency`
* `internal_mail_filter_classes`
* `invalid_hostname_reject_code`
* `ipc_idle`
* `ipc_timeout`
* `ipc_ttl`
* `line_length_limit`
* `lmtp_address_preference`
* `lmtp_assume_final`
* `lmtp_bind_address`
* `lmtp_bind_address6`
* `lmtp_body_checks`
* `lmtp_cname_overrides_servername`
* `lmtp_connect_timeout`
* `lmtp_connection_cache_destinations`
* `lmtp_connection_cache_on_demand`
* `lmtp_connection_cache_time_limit`
* `lmtp_connection_reuse_time_limit`
* `lmtp_data_done_timeout`
* `lmtp_data_init_timeout`
* `lmtp_data_xfer_timeout`
* `lmtp_defer_if_no_mx_address_found`
* `lmtp_discard_lhlo_keyword_address_maps`
* `lmtp_discard_lhlo_keywords`
* `lmtp_dns_resolver_options`
* `lmtp_enforce_tls`
* `lmtp_generic_maps`
* `lmtp_header_checks`
* `lmtp_host_lookup`
* `lmtp_lhlo_name`
* `lmtp_lhlo_timeout`
* `lmtp_line_length_limit`
* `lmtp_mail_timeout`
* `lmtp_mime_header_checks`
* `lmtp_mx_address_limit`
* `lmtp_mx_session_limit`
* `lmtp_nested_header_checks`
* `lmtp_per_record_deadline`
* `lmtp_pix_workaround_delay_time`
* `lmtp_pix_workaround_maps`
* `lmtp_pix_workaround_threshold_time`
* `lmtp_pix_workarounds`
* `lmtp_quit_timeout`
* `lmtp_quote_rfc821_envelope`
* `lmtp_randomize_addresses`
* `lmtp_rcpt_timeout`
* `lmtp_reply_filter`
* `lmtp_rset_timeout`
* `lmtp_sasl_auth_cache_name`
* `lmtp_sasl_auth_cache_time`
* `lmtp_sasl_auth_enable`
* `lmtp_sasl_auth_soft_bounce`
* `lmtp_sasl_mechanism_filter`
* `lmtp_sasl_password_maps`
* `lmtp_sasl_path`
* `lmtp_sasl_security_options`
* `lmtp_sasl_tls_security_options`
* `lmtp_sasl_tls_verified_security_options`
* `lmtp_sasl_type`
* `lmtp_send_dummy_mail_auth`
* `lmtp_send_xforward_command`
* `lmtp_sender_dependent_authentication`
* `lmtp_skip_5xx_greeting`
* `lmtp_skip_quit_response`
* `lmtp_starttls_timeout`
* `lmtp_tcp_port`
* `lmtp_tls_cafile`
* `lmtp_tls_capath`
* `lmtp_tls_block_early_mail_reply`
* `lmtp_tls_cert_file`
* `lmtp_tls_ciphers`
* `lmtp_tls_dcert_file`
* `lmtp_tls_dkey_file`
* `lmtp_tls_eccert_file`
* `lmtp_tls_eckey_file`
* `lmtp_tls_enforce_peername`
* `lmtp_tls_exclude_ciphers`
* `lmtp_tls_fingerprint_cert_match`
* `lmtp_tls_fingerprint_digest`
* `lmtp_tls_key_file`
* `lmtp_tls_loglevel`
* `lmtp_tls_mandatory_ciphers`
* `lmtp_tls_mandatory_exclude_ciphers`
* `lmtp_tls_mandatory_protocols`
* `lmtp_tls_note_starttls_offer`
* `lmtp_tls_per_site`
* `lmtp_tls_policy_maps`
* `lmtp_tls_protocols`
* `lmtp_tls_scert_verifydepth`
* `lmtp_tls_secure_cert_match`
* `lmtp_tls_security_level`
* `lmtp_tls_session_cache_database`
* `lmtp_tls_session_cache_timeout`
* `lmtp_tls_verify_cert_match`
* `lmtp_use_tls`
* `lmtp_xforward_timeout`
* `local_command_shell`
* `local_header_rewrite_clients`
* `local_recipient_maps`
* `local_transport`
* `luser_relay`
* `mail_name`
* `mail_owner`
* `mail_release_date`
* `mail_spool_directory`
* `mail_version`
* `mailbox_command`
* `mailbox_command_maps`
* `mailbox_delivery_lock`
* `mailbox_size_limit`
* `mailbox_transport`
* `mailbox_transport_maps`
* `mailq_path`
* `manpage_directory`
* `maps_rbl_domains`
* `maps_rbl_reject_code`
* `masquerade_classes`
* `masquerade_domains`
* `masquerade_exceptions`
* `master_service_disable`
* `max_idle`
* `max_use`
* `maximal_backoff_time`
* `maximal_queue_lifetime`
* `message_reject_characters`
* `message_size_limit`
* `message_strip_characters`
* `milter_command_timeout`
* `milter_connect_macros`
* `milter_connect_timeout`
* `milter_content_timeout`
* `milter_data_macros`
* `milter_default_action`
* `milter_end_of_data_macros`
* `milter_end_of_header_macros`
* `milter_header_checks`
* `milter_helo_macros`
* `milter_macro_daemon_name`
* `milter_macro_v`
* `milter_mail_macros`
* `milter_protocol`
* `milter_rcpt_macros`
* `milter_unknown_command_macros`
* `mime_boundary_length_limit`
* `mime_header_checks`
* `mime_nesting_limit`
* `minimal_backoff_time`
* `multi_instance_directories`
* `multi_instance_enable`
* `multi_instance_group`
* `multi_instance_name`
* `multi_instance_wrapper`
* `multi_recipient_bounce_reject_code`
* `mydestination`
* `mydomain`
* `mydomain_fallback`
* `myhostname`
* `mynetworks`
* `mynetworks_style`
* `myorigin`
* `nested_header_checks`
* `newaliases_path`
* `non_fqdn_reject_code`
* `non_smtpd_milters`
* `notify_classes`
* `owner_request_special`
* `parent_domain_matches_subdomains`
* `permit_mx_backup_networks`
* `pickup_service_name`
* `plaintext_reject_code`
* `postmulti_control_commands`
* `postmulti_start_commands`
* `postmulti_stop_commands`
* `postscreen_access_list`
* `postscreen_bare_newline_action`
* `postscreen_bare_newline_enable`
* `postscreen_bare_newline_ttl`
* `postscreen_blacklist_action`
* `postscreen_cache_cleanup_interval`
* `postscreen_cache_map`
* `postscreen_cache_retention_time`
* `postscreen_client_connection_count_limit`
* `postscreen_command_count_limit`
* `postscreen_command_filter`
* `postscreen_command_time_limit`
* `postscreen_disable_vrfy_command`
* `postscreen_discard_ehlo_keyword_address_maps`
* `postscreen_discard_ehlo_keywords`
* `postscreen_dnsbl_action`
* `postscreen_dnsbl_reply_map`
* `postscreen_dnsbl_sites`
* `postscreen_dnsbl_threshold`
* `postscreen_dnsbl_ttl`
* `postscreen_enforce_tls`
* `postscreen_expansion_filter`
* `postscreen_forbidden_commands`
* `postscreen_greet_action`
* `postscreen_greet_banner`
* `postscreen_greet_ttl`
* `postscreen_greet_wait`
* `postscreen_helo_required`
* `postscreen_non_smtp_command_action`
* `postscreen_non_smtp_command_enable`
* `postscreen_non_smtp_command_ttl`
* `postscreen_pipelining_action`
* `postscreen_pipelining_enable`
* `postscreen_pipelining_ttl`
* `postscreen_post_queue_limit`
* `postscreen_pre_queue_limit`
* `postscreen_reject_footer`
* `postscreen_tls_security_level`
* `postscreen_upstream_proxy_protocol`
* `postscreen_upstream_proxy_timeout`
* `postscreen_use_tls`
* `postscreen_watchdog_timeout`
* `postscreen_whitelist_interfaces`
* `prepend_delivered_header`
* `process_id_directory`
* `propagate_unmatched_extensions`
* `proxy_interfaces`
* `proxy_read_maps`
* `proxy_write_maps`
* `proxymap_service_name`
* `proxywrite_service_name`
* `qmgr_clog_warn_time`
* `qmgr_daemon_timeout`
* `qmgr_fudge_factor`
* `qmgr_ipc_timeout`
* `qmgr_message_active_limit`
* `qmgr_message_recipient_limit`
* `qmgr_message_recipient_minimum`
* `qmqpd_authorized_clients`
* `qmqpd_client_port_logging`
* `qmqpd_error_delay`
* `qmqpd_timeout`
* `queue_directory`
* `queue_file_attribute_count_limit`
* `queue_minfree`
* `queue_run_delay`
* `queue_service_name`
* `rbl_reply_maps`
* `readme_directory`
* `receive_override_options`
* `recipient_bcc_maps`
* `recipient_canonical_classes`
* `recipient_canonical_maps`
* `recipient_delimiter`
* `reject_code`
* `reject_tempfail_action`
* `relay_clientcerts`
* `relay_domains`
* `relay_domains_reject_code`
* `relay_recipient_maps`
* `relay_transport`
* `relayhost`
* `relocated_maps`
* `remote_header_rewrite_domain`
* `require_home_directory`
* `reset_owner_alias`
* `resolve_dequoted_address`
* `resolve_null_domain`
* `resolve_numeric_domain`
* `rewrite_service_name`
* `sample_directory`
* `send_cyrus_sasl_authzid`
* `sender_bcc_maps`
* `sender_canonical_classes`
* `sender_canonical_maps`
* `sender_dependent_default_transport_maps`
* `sender_dependent_relayhost_maps`
* `sendmail_fix_line_endings`
* `sendmail_path`
* `service_throttle_time`
* `setgid_group`
* `show_user_unknown_table_name`
* `showq_service_name`
* `smtp_address_preference`
* `smtp_always_send_ehlo`
* `smtp_bind_address`
* `smtp_bind_address6`
* `smtp_body_checks`
* `smtp_cname_overrides_servername`
* `smtp_connect_timeout`
* `smtp_connection_cache_destinations`
* `smtp_connection_cache_on_demand`
* `smtp_connection_cache_time_limit`
* `smtp_connection_reuse_time_limit`
* `smtp_data_done_timeout`
* `smtp_data_init_timeout`
* `smtp_data_xfer_timeout`
* `smtp_defer_if_no_mx_address_found`
* `smtp_discard_ehlo_keyword_address_maps`
* `smtp_discard_ehlo_keywords`
* `smtp_dns_resolver_options`
* `smtp_enforce_tls`
* `smtp_fallback_relay`
* `smtp_generic_maps`
* `smtp_header_checks`
* `smtp_helo_name`
* `smtp_helo_timeout`
* `smtp_host_lookup`
* `smtp_line_length_limit`
* `smtp_mail_timeout`
* `smtp_mime_header_checks`
* `smtp_mx_address_limit`
* `smtp_mx_session_limit`
* `smtp_nested_header_checks`
* `smtp_never_send_ehlo`
* `smtp_per_record_deadline`
* `smtp_pix_workaround_delay_time`
* `smtp_pix_workaround_maps`
* `smtp_pix_workaround_threshold_time`
* `smtp_pix_workarounds`
* `smtp_quit_timeout`
* `smtp_quote_rfc821_envelope`
* `smtp_randomize_addresses`
* `smtp_rcpt_timeout`
* `smtp_reply_filter`
* `smtp_rset_timeout`
* `smtp_sasl_auth_cache_name`
* `smtp_sasl_auth_cache_time`
* `smtp_sasl_auth_enable`
* `smtp_sasl_auth_soft_bounce`
* `smtp_sasl_mechanism_filter`
* `smtp_sasl_password_maps`
* `smtp_sasl_path`
* `smtp_sasl_security_options`
* `smtp_sasl_tls_security_options`
* `smtp_sasl_tls_verified_security_options`
* `smtp_sasl_type`
* `smtp_send_dummy_mail_auth`
* `smtp_send_xforward_command`
* `smtp_sender_dependent_authentication`
* `smtp_skip_5xx_greeting`
* `smtp_skip_quit_response`
* `smtp_starttls_timeout`
* `smtp_tls_cafile`
* `smtp_tls_capath`
* `smtp_tls_block_early_mail_reply`
* `smtp_tls_cert_file`
* `smtp_tls_ciphers`
* `smtp_tls_dcert_file`
* `smtp_tls_dkey_file`
* `smtp_tls_eccert_file`
* `smtp_tls_eckey_file`
* `smtp_tls_enforce_peername`
* `smtp_tls_exclude_ciphers`
* `smtp_tls_fingerprint_cert_match`
* `smtp_tls_fingerprint_digest`
* `smtp_tls_key_file`
* `smtp_tls_loglevel`
* `smtp_tls_mandatory_ciphers`
* `smtp_tls_mandatory_exclude_ciphers`
* `smtp_tls_mandatory_protocols`
* `smtp_tls_note_starttls_offer`
* `smtp_tls_per_site`
* `smtp_tls_policy_maps`
* `smtp_tls_protocols`
* `smtp_tls_scert_verifydepth`
* `smtp_tls_secure_cert_match`
* `smtp_tls_security_level`
* `smtp_tls_session_cache_database`
* `smtp_tls_session_cache_timeout`
* `smtp_tls_verify_cert_match`
* `smtp_use_tls`
* `smtp_xforward_timeout`
* `smtpd_authorized_verp_clients`
* `smtpd_authorized_xclient_hosts`
* `smtpd_authorized_xforward_hosts`
* `smtpd_banner`
* `smtpd_client_connection_count_limit`
* `smtpd_client_connection_rate_limit`
* `smtpd_client_event_limit_exceptions`
* `smtpd_client_message_rate_limit`
* `smtpd_client_new_tls_session_rate_limit`
* `smtpd_client_port_logging`
* `smtpd_client_recipient_rate_limit`
* `smtpd_client_restrictions`
* `smtpd_command_filter`
* `smtpd_data_restrictions`
* `smtpd_delay_open_until_valid_rcpt`
* `smtpd_delay_reject`
* `smtpd_discard_ehlo_keyword_address_maps`
* `smtpd_discard_ehlo_keywords`
* `smtpd_end_of_data_restrictions`
* `smtpd_enforce_tls`
* `smtpd_error_sleep_time`
* `smtpd_etrn_restrictions`
* `smtpd_expansion_filter`
* `smtpd_forbidden_commands`
* `smtpd_hard_error_limit`
* `smtpd_helo_required`
* `smtpd_helo_restrictions`
* `smtpd_history_flush_threshold`
* `smtpd_junk_command_limit`
* `smtpd_log_access_permit_actions`
* `smtpd_milters`
* `smtpd_noop_commands`
* `smtpd_null_access_lookup_key`
* `smtpd_peername_lookup`
* `smtpd_per_record_deadline`
* `smtpd_policy_service_max_idle`
* `smtpd_policy_service_max_ttl`
* `smtpd_policy_service_timeout`
* `smtpd_proxy_ehlo`
* `smtpd_proxy_filter`
* `smtpd_proxy_options`
* `smtpd_proxy_timeout`
* `smtpd_recipient_limit`
* `smtpd_recipient_overshoot_limit`
* `smtpd_recipient_restrictions`
* `smtpd_reject_footer`
* `smtpd_reject_unlisted_recipient`
* `smtpd_reject_unlisted_sender`
* `smtpd_relay_restrictions`
* `smtpd_restriction_classes`
* `smtpd_sasl_auth_enable`
* `smtpd_sasl_authenticated_header`
* `smtpd_sasl_exceptions_networks`
* `smtpd_sasl_local_domain`
* `smtpd_sasl_path`
* `smtpd_sasl_security_options`
* `smtpd_sasl_tls_security_options`
* `smtpd_sasl_type`
* `smtpd_sender_login_maps`
* `smtpd_sender_restrictions`
* `smtpd_service_name`
* `smtpd_soft_error_limit`
* `smtpd_starttls_timeout`
* `smtpd_timeout`
* `smtpd_tls_cafile`
* `smtpd_tls_capath`
* `smtpd_tls_always_issue_session_ids`
* `smtpd_tls_ask_ccert`
* `smtpd_tls_auth_only`
* `smtpd_tls_ccert_verifydepth`
* `smtpd_tls_cert_file`
* `smtpd_tls_ciphers`
* `smtpd_tls_dcert_file`
* `smtpd_tls_dh1024_param_file`
* `smtpd_tls_dh512_param_file`
* `smtpd_tls_dkey_file`
* `smtpd_tls_eccert_file`
* `smtpd_tls_eckey_file`
* `smtpd_tls_eecdh_grade`
* `smtpd_tls_exclude_ciphers`
* `smtpd_tls_fingerprint_digest`
* `smtpd_tls_key_file`
* `smtpd_tls_loglevel`
* `smtpd_tls_mandatory_ciphers`
* `smtpd_tls_mandatory_exclude_ciphers`
* `smtpd_tls_mandatory_protocols`
* `smtpd_tls_protocols`
* `smtpd_tls_received_header`
* `smtpd_tls_req_ccert`
* `smtpd_tls_security_level`
* `smtpd_tls_session_cache_database`
* `smtpd_tls_session_cache_timeout`
* `smtpd_tls_wrappermode`
* `smtpd_upstream_proxy_protocol`
* `smtpd_upstream_proxy_timeout`
* `smtpd_use_tls`
* `soft_bounce`
* `stale_lock_time`
* `strict_7bit_headers`
* `strict_8bitmime`
* `strict_8bitmime_body`
* `strict_mailbox_ownership`
* `strict_mime_encoding_domain`
* `strict_rfc821_envelopes`
* `sun_mailtool_compatibility`
* `swap_bangpath`
* `syslog_facility`
* `syslog_name`
* `tcp_windowsize`
* `tls_append_default_ca`
* `tls_daemon_random_bytes`
* `tls_disable_workarounds`
* `tls_eecdh_strong_curve`
* `tls_eecdh_ultra_curve`
* `tls_export_cipherlist`
* `tls_high_cipherlist`
* `tls_legacy_public_key_fingerprints`
* `tls_low_cipherlist`
* `tls_medium_cipherlist`
* `tls_null_cipherlist`
* `tls_preempt_cipherlist`
* `tls_random_bytes`
* `tls_random_exchange_name`
* `tls_random_prng_update_period`
* `tls_random_reseed_period`
* `tls_random_source`
* `tlsproxy_enforce_tls`
* `tlsproxy_service_name`
* `tlsproxy_tls_cafile`
* `tlsproxy_tls_capath`
* `tlsproxy_tls_always_issue_session_ids`
* `tlsproxy_tls_ask_ccert`
* `tlsproxy_tls_ccert_verifydepth`
* `tlsproxy_tls_cert_file`
* `tlsproxy_tls_ciphers`
* `tlsproxy_tls_dcert_file`
* `tlsproxy_tls_dh1024_param_file`
* `tlsproxy_tls_dh512_param_file`
* `tlsproxy_tls_dkey_file`
* `tlsproxy_tls_eccert_file`
* `tlsproxy_tls_eckey_file`
* `tlsproxy_tls_eecdh_grade`
* `tlsproxy_tls_exclude_ciphers`
* `tlsproxy_tls_fingerprint_digest`
* `tlsproxy_tls_key_file`
* `tlsproxy_tls_loglevel`
* `tlsproxy_tls_mandatory_ciphers`
* `tlsproxy_tls_mandatory_exclude_ciphers`
* `tlsproxy_tls_mandatory_protocols`
* `tlsproxy_tls_protocols`
* `tlsproxy_tls_req_ccert`
* `tlsproxy_tls_security_level`
* `tlsproxy_tls_session_cache_timeout`
* `tlsproxy_use_tls`
* `tlsproxy_watchdog_timeout`
* `trace_service_name`
* `transport_maps`
* `transport_retry_time`
* `trigger_timeout`
* `undisclosed_recipients_header`
* `unknown_address_reject_code`
* `unknown_address_tempfail_action`
* `unknown_client_reject_code`
* `unknown_helo_hostname_tempfail_action`
* `unknown_hostname_reject_code`
* `unknown_local_recipient_reject_code`
* `unknown_relay_recipient_reject_code`
* `unknown_virtual_alias_reject_code`
* `unknown_virtual_mailbox_reject_code`
* `unverified_recipient_defer_code`
* `unverified_recipient_reject_code`
* `unverified_recipient_reject_reason`
* `unverified_recipient_tempfail_action`
* `unverified_sender_defer_code`
* `unverified_sender_reject_code`
* `unverified_sender_reject_reason`
* `unverified_sender_tempfail_action`
* `verp_delimiter_filter`
* `virtual_alias_domains`
* `virtual_alias_expansion_limit`
* `virtual_alias_maps`
* `virtual_alias_recursion_limit`
* `virtual_gid_maps`
* `virtual_mailbox_base`
* `virtual_mailbox_domains`
* `virtual_mailbox_limit`
* `virtual_mailbox_lock`
* `virtual_mailbox_maps`
* `virtual_minimum_uid`
* `virtual_transport`
* `virtual_uid_maps`

#### Defined Type: `postfix::main`

**Parameters within `postfix::main`:**

##### `name`

The name of the setting.

##### `ensure`

Standard ensurable parameter.

##### `value`

The value to associate with this setting.

#### Defined Type: `postfix::master`

**Parameters within `postfix::master`:**

##### `name`

The name and type of the service, matching `<name>/<type>` where type is one
of `inet`, `unix`, `fifo` or `pass`.

##### `ensure`

Standard ensurable parameter.

##### `command`

The command to associate with this service.

##### `private`

The private flag for the service, one of `-`, `y` or `n`.

##### `unprivileged`

The unprivileged flag for the service, one of `-`, `y` or `n`.

##### `chroot`

The chroot flag for the service, one of `-`, `y` or `n`.

##### `wakeup`

The wakeup flag for the service, one of `-` or an integer optionally followed
by a `?`.

##### `limit`

The limit flag for the service, one of `-` or an integer.

#### Defined Type: `postfix::lookup::database`

**Parameters within `postfix::lookup::database`:**

##### `name`

The path to the target file for the source of the database.

##### `ensure`

Standard ensurable parameter. In the case of `absent` any generated files are
also removed.

##### `content`

Content for the target file, same as for a normal `file` resource.

##### `source`

A source URI for the target file, same as for a normal `file` resource.

##### `type`

One of the database types as supported by the `postmap(1)` command. LDAP,
MySQL, PostgreSQL and SQLite tables are supported with dedicated defined
types. Where required for specific types the `postmap(1)` command will be run
on the target file and `file` resources for the intended output are created
for the purposes of dependencies. If this type requires the installation of a
dedicated package then this will be performed.

#### Defined Type: `postfix::lookup::ldap`

**Parameters within `postfix::lookup::ldap':**

##### `name`

The path to the target file.

##### `ensure`

Standard ensurable parameter.

##### All other parameters

The following parameters map 1:1 to their equivalent in `ldap_table(5)`:

* `search_base`
* `server_host`
* `server_port`
* `timeout`
* `query_filter`
* `result_format`
* `domain`
* `result_attribute`
* `special_result_attribute`
* `terminal_result_attribute`
* `leaf_result_attribute`
* `scope`
* `bind`
* `bind_dn`
* `bind_pw`
* `recursion_limit`
* `expansion_limit`
* `size_limit`
* `dereference`
* `chase_referrals`
* `version`
* `debuglevel`
* `sasl_mechs`
* `sasl_realm`
* `sasl_authz_id`
* `sasl_minssf`
* `start_tls`
* `tls_ca_cert_dir`
* `tls_ca_cert_file`
* `tls_cert`
* `tls_key`
* `tls_require_cert`
* `tls_random_file`
* `tls_cipher_suite`

#### Defined Type: `postfix::lookup::mysql`

**Parameters within `postfix::lookup::mysql`:**

##### `name`

The path to the target file.

##### `ensure`

Standard ensurable parameter.

##### All other parameters

The following parameters map 1:1 to their equivalent in `mysql_table(5)`
although the TLS parameters are renamed slightly to be consistent with the
equivalent parameter in `ldap_table(5)`:

* `hosts`
* `user`
* `password`
* `dbname`
* `query`
* `result_format`
* `domain`
* `expansion_limit`
* `option_file`
* `option_group`
* `tls_cert`
* `tls_key`
* `tls_ca_cert_file`
* `tls_ca_cert_dir`
* `tls_verify_cert`

#### Defined type: `postfix::lookup::pgsql`

**Parameters within `postfix::lookup::pgsql`:**

##### `name`

The path to the target file.

##### `ensure`

Standard ensurable parameter.

##### All other parameters

The following parameters map 1:1 to their equivalent in `pgsql_table(5)`:

* `hosts`
* `user`
* `password`
* `dbname`
* `query`
* `result_format`
* `domain`
* `expansion_limit`

#### Defined Type: `postfix::lookup::sqlite`

**Parameters within `postfix::lookup::sqlite`:**

##### `name`

The path to the target file.

##### `ensure`

Standard ensurable parameter.

##### All other parameters

The following parameters map 1:1 to their equivalent in `sqlite_table(5)`:

* `dbpath`
* `query`
* `result_format`
* `domain`
* `expansion_limit`

### Native Types

#### Native Type: `postfix_main`

```puppet
Postfix_main {
  target => '/etc/postfix/main.cf',
}

postfix_main { 'mydomain':
  ensure => present,
  value  => $::domain,
}

postfix_main { 'myorigin':
  ensure => present,
  value  => '$mydomain',
}

postfix_main { 'Default to all protocols':
  ensure  => absent,
  setting => 'inet_protocols',
}
```

**Parameters within `postfix_main`:**

##### `name`

The name of the setting or a unique string.

##### `ensure`

Standard ensurable parameter.

##### `setting`

The name of the setting to manage.

##### `value`

The value of the setting.

If this value is refers to other settings and those settings are also managed
by Puppet, they will be autorequired. If the value can be fully expanded and
matches a file resource that exists in the catalogue then it will be
autorequired. Lookup tables of the form `type:/path/to/file` will use the
filename that is produced by the `postmap(1)` command. For example, a value of
`hash:/etc/aliases` will attempt to autorequire `/etc/aliases.db`. Any setting
that references a service defined in `master.cf` will attempt to autorequire
it. This includes the various `${transport}_delivery_slot_cost`, etc.
settings.

##### `target`

The file in which to manage the setting. Defaults to `/etc/postfix/main.cf`. 

If a file resource exists in the catalogue for this value it will be
autorequired.

#### Native Type: `postfix_master`

```puppet
Postfix_master {
  target => '/etc/postfix/master.cf',
}

postfix_master { 'submission/inet':
  ensure  => present,
  private => 'n',
  chroot  => 'n',
  command => 'smtpd -o smtpd_tls_security_level=encrypt -o smtpd_recipient_restrictions=permit_sasl_authenticated,reject',
}
```

**Parameters within `postfix_master`:**

##### `name`

The name of the service and type separated by `/`, or a unique string.

##### `ensure`

Standard ensurable parameter.

##### `service`

The name of the service.

##### `type`

The type, one of `inet`, `unix`, `fifo` or `pass`.

##### `private`

The private flag for the service, one of `-`, `y` or `n`.

##### `unprivileged`

The unprivileged flag for the service, one of `-`, `y` or `n`.

##### `chroot`

The chroot flag for the service, one of `-`, `y` or `n`.

##### `wakeup`

The wakeup flag for the service, one of `-` or an integer optionally followed
by a `?`.

##### `limit`

The limit flag for the service, one of `-` or an integer.

##### `command`

The command to run. If the command includes any `-o` options then these
follow the same autorequire rules as for
[`postfix_main`](#native-type-postfix_main) resources with the exception that
it doesn't autorequire a setting that is redefined with `-o` in the same
command.

If the command uses `pipe(8)` then the value from the `user=` attribute is
parsed and any existing user or group resource will be autorequired.

##### `target`

The file in which to manage the service. Defaults to `/etc/postfix/master.cf`.

If a file resource exists in the catalogue for this value it will be
autorequired.

### Examples

Configure Postfix with the defaults as shipped by the OS:

```puppet
include ::postfix
```

Configure Postfix with an additional submission service running on TCP port
587:

```puppet
include ::postfix

::postfix::master { 'submission/inet':
  private => 'n',
  chroot  => 'n',
  command => 'smtpd -o smtpd_tls_security_level=encrypt -o smtpd_recipient_restrictions=permit_sasl_authenticated,reject',
}
```

Configure Postfix for virtual mailbox hosting using LDAP to provide the
various lookup tables:

```puppet
class { '::postfix':
  virtual_mailbox_base    => '/var/mail/vhosts',
  virtual_mailbox_domains => ['ldap:/etc/postfix/virtualdomains.cf'],
  virtual_mailbox_maps    => ['ldap:/etc/postfix/virtualrecipients.cf'],
  virtual_minimum_uid     => 100,
  virtual_uid_maps        => 'static:5000',
  virtual_gid_maps        => 'static:5000',
}

# Specify connection defaults to enable sharing as per LDAP_README
Postfix::Lookup::Ldap {
  server_host => ['ldap://192.0.2.1'],
  search_base => 'dc=example,dc=com',
  bind_dn     => 'cn=Manager,dc=example,dc=com',
  bind_pw     => 'secret',
  version     => 3,
}

::postfix::lookup::ldap { '/etc/postfix/virtualdomains.cf':
  query_filter     => '(associatedDomain=%s)',
  result_attribute => ['associatedDomain'],
}

::postfix::lookup::ldap { '/etc/postfix/virtualrecipients.cf':
  query_filter     => '(mail=%s)',
  result_attribute => ['mail'],
}
```

Extend the above example to use `dovecot-lda(1)` instead of `virtual(8)`:

```puppet
include ::dovecot

class { '::postfix':
  virtual_transport       => 'dovecot'
  virtual_mailbox_domains => ['ldap:/etc/postfix/virtualdomains.cf'],
  virtual_mailbox_maps    => ['ldap:/etc/postfix/virtualrecipients.cf'],
}

::postfix::main { 'dovecot_destination_recipient_limit':
  value => 1,
}

::postfix::master { 'dovecot/unix':
  chroot       => 'n',
  command      => 'pipe flags=DRhu user=vmail:vmail argv=/path/to/dovecot-lda -f ${sender} -d ${recipient}',
  unprivileged => 'n',
  require      => Class['::dovecot'],
}

# Specify connection defaults to enable sharing as per LDAP_README
Postfix::Lookup::Ldap {
  server_host => ['ldap://192.0.2.1'],
  search_base => 'dc=example,dc=com',
  bind_dn     => 'cn=Manager,dc=example,dc=com',
  bind_pw     => 'secret',
  version     => 3,
}

::postfix::lookup::ldap { '/etc/postfix/virtualdomains.cf':
  query_filter     => '(associatedDomain=%s)',
  result_attribute => ['associatedDomain'],
}

::postfix::lookup::ldap { '/etc/postfix/virtualrecipients.cf':
  query_filter     => '(mail=%s)',
  result_attribute => ['mail'],
}
```

## Reference

### Classes

#### Public Classes

* [`postfix`](#class-postfix): Main class for managing Postfix.

#### Private Classes

* `postfix::install`: Handles Postfix installation.
* `postfix::config`: Handles Postfix configuration.
* `postfix::params`: Different configuration data for different systems.
* `postfix::service`: Manages the `postfix` service.

### Defined Types

#### Public Defined Types

* [`postfix::main`](#defined-type-postfixmain): Handles managing non-standard
  Postfix settings.
* [`postfix::master`](#defined-type-postfixmaster): Handles creating
  additional Postfix services.
* [`postfix::lookup::database`](#defined-type-postfixlookupdatabase): Handles
  lookup tables using local files.
* [`postfix::lookup::ldap`](#defined-type-postfixlookupldap): Handles lookup
  tables using an LDAP DIT.
* [`postfix::lookup::mysql`](#defined-type-postfixlookupmysql): Handles lookup
  tables using a MySQL database.
* [`postfix::lookup::pgsql`](#defined-type-postfixlookuppgsql): Handles lookup
  tables using a PostgreSQL database.
* [`postfix::lookup::sqlite`](#defined-type-postfixlookupsqlite): Handles
  lookup tables using an SQLite database.

### Native Types

* [`postfix_main`](#native-type-postfix_main): Manages a setting in the
  Postfix `main.cf` configuration file.
* [`postfix_master`](#native-type-postfix_master): Manages a service in the
  Postfix `master.cf` configuration file.

## Limitations

This module takes the (somewhat laborious) approach of creating parameters for
each `main.cf` setting rather than just pass in a large hash of settings,
which should result in more control.

The only settings deliberately excluded are the following:

* `${transport}_delivery_slot_cost`
* `${transport}_delivery_slot_discount`
* `${transport}_delivery_slot_loan`
* `${transport}_destination_concurrency_failed_cohort_limit`
* `${transport}_destination_concurrency_limit`
* `${transport}_destination_concurrency_negative_feedback`
* `${transport}_destination_concurrency_positive_feedback`
* `${transport}_destination_rate_delay`
* `${transport}_destination_recipient_limit`
* `${transport}_extra_recipient_limit`
* `${transport}_minimum_delivery_slots`
* `${transport}_recipient_limit`
* `${transport}_recipient_refill_delay`
* `${transport}_recipient_refill_limit`

For these, use the [`postfix::main`](#defined-type-postfixmain) defined type.

Because Postfix allows you to recursively define parameters in terms of other
parameters it makes validating values impossible unless that convention is
forbidden. Currently this module allows recursive parameter expansion and so
only validates that values are either strings or arrays (of strings).

Any setting that accepts a boolean `yes`/`no` value also accepts native Puppet
boolean values. Any multi-valued setting accepts an array of values.

For referring to other settings, ensure that the `$` is escaped appropriately
using either `\` or `''` to prevent Puppet expanding the variable itself.

This module has been built on and tested against Puppet 3.0 and higher.

The module has been tested on:

* RedHat/CentOS Enterprise Linux 6/7

Testing on other platforms has been light and cannot be guaranteed.

## Development

Please log issues or pull requests at
[github](https://github.com/bodgit/puppet-postfix).
