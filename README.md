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

| Parameter | Type | Has Default | Notes |
| :-------- | :--: | :---------: | :---- |
| twobounce_notice_recipient                             | String        |   | `2bounce_notice_recipient` is a violation of Puppet variable naming conventions |
| access_map_defer_code                                  | String        |   | |
| access_map_reject_code                                 | String        |   | |
| address_verify_cache_cleanup_interval                  | String        |   | |
| address_verify_default_transport                       | String        |   | |
| address_verify_local_transport                         | String        |   | |
| address_verify_map                                     | String        |   | |
| address_verify_negative_cache                          | String        |   | |
| address_verify_negative_expire_time                    | String        |   | |
| address_verify_negative_refresh_time                   | String        |   | |
| address_verify_poll_count                              | String        |   | |
| address_verify_poll_delay                              | String        |   | |
| address_verify_positive_expire_time                    | String        |   | |
| address_verify_positive_refresh_time                   | String        |   | |
| address_verify_relay_transport                         | String        |   | |
| address_verify_relayhost                               | String        |   | |
| address_verify_sender                                  | String        |   | |
| address_verify_sender_dependent_default_transport_maps | Array         |   | |
| address_verify_sender_dependent_relayhost_maps         | Array         |   | |
| address_verify_sender_ttl                              | String        |   | |
| address_verify_service_name                            | String        |   | |
| address_verify_transport_maps                          | Array         |   | |
| address_verify_virtual_transport                       | String        |   | |
| alias_database                                         | Array         | X | |
| alias_maps                                             | Array         | X | |
| allow_mail_to_commands                                 | Array         |   | |
| allow_mail_to_files                                    | Array         |   | |
| allow_min_user                                         | String        |   | |
| allow_percent_hack                                     | String        |   | |
| allow_untrusted_routing                                | String        |   | |
| alternate_config_directories                           | Array         |   | |
| always_add_missing_headers                             | String        |   | |
| always_bcc                                             | String        |   | |
| anvil_rate_time_unit                                   | String        |   | |
| anvil_status_update_time                               | String        |   | |
| append_at_myorigin                                     | String        |   | |
| append_dot_mydomain                                    | String        |   | |
| application_event_drain_time                           | String        |   | |
| authorized_flush_users                                 | Array         |   | |
| authorized_mailq_users                                 | Array         |   | |
| authorized_submit_users                                | Array         |   | |
| backwards_bounce_logfile_compatibility                 | String        |   | |
| berkeley_db_create_buffer_size                         | String        |   | |
| berkeley_db_read_buffer_size                           | String        |   | |
| best_mx_transport                                      | String        |   | |
| biff                                                   | String        |   | |
| body_checks                                            | Array         |   | |
| body_checks_size_limit                                 | String        |   | |
| bounce_notice_recipient                                | String        |   | |
| bounce_queue_lifetime                                  | String        |   | |
| bounce_service_name                                    | String        |   | |
| bounce_size_limit                                      | String        |   | |
| bounce_template_file                                   | String        |   | |
| broken_sasl_auth_clients                               | String        |   | |
| canonical_classes                                      | Array         |   | |
| canonical_maps                                         | Array         |   | |
| cleanup_service_name                                   | String        |   | |
| command_directory                                      | String        | X | |
| command_execution_directory                            | String        |   | |
| command_expansion_filter                               | String        |   | |
| command_time_limit                                     | String        |   | |
| conf_dir                                               | Absolute_path | X | |
| config_directory                                       | String        |   | |
| connection_cache_protocol_timeout                      | String        |   | |
| connection_cache_service_name                          | String        |   | |
| connection_cache_status_update_time                    | String        |   | |
| connection_cache_ttl_limit                             | String        |   | |
| content_filter                                         | String        |   | |
| cyrus_sasl_config_path                                 | Array         |   | |
| daemon_directory                                       | String        | X | |
| daemon_table_open_error_is_fatal                       | String        |   | |
| daemon_timeout                                         | String        |   | |
| data_directory                                         | String        | X | |
| debug_peer_level                                       | String        | X | |
| debug_peer_list                                        | Array         |   | |
| debugger_command                                       | String        | X | |
| default_database_type                                  | String        |   | |
| default_delivery_slot_cost                             | String        |   | |
| default_delivery_slot_discount                         | String        |   | |
| default_delivery_slot_loan                             | String        |   | |
| default_destination_concurrency_failed_cohort_limit    | String        |   | |
| default_destination_concurrency_limit                  | String        |   | |
| default_destination_concurrency_negative_feedback      | String        |   | |
| default_destination_concurrency_positive_feedback      | String        |   | |
| default_destination_rate_delay                         | String        |   | |
| default_destination_recipient_limit                    | String        |   | |
| default_extra_recipient_limit                          | String        |   | |
| default_filter_nexthop                                 | String        |   | |
| default_minimum_delivery_slots                         | String        |   | |
| default_privs                                          | String        |   | |
| default_process_limit                                  | String        |   | |
| default_rbl_reply                                      | String        |   | |
| default_recipient_limit                                | String        |   | |
| default_recipient_refill_delay                         | String        |   | |
| default_recipient_refill_limit                         | String        |   | |
| default_services                                       | Hash          | X | |
| default_transport                                      | String        |   | |
| default_verp_delimiters                                | String        |   | |
| defer_code                                             | String        |   | |
| defer_service_name                                     | String        |   | |
| defer_transports                                       | Array         |   | |
| delay_logging_resolution_limit                         | String        |   | |
| delay_notice_recipient                                 | String        |   | |
| delay_warning_time                                     | String        |   | |
| deliver_lock_attempts                                  | String        |   | |
| deliver_lock_delay                                     | String        |   | |
| destination_concurrency_feedback_debug                 | String        |   | |
| detect_8bit_encoding_header                            | String        |   | |
| disable_dns_lookups                                    | String        |   | |
| disable_mime_input_processing                          | String        |   | |
| disable_mime_output_conversion                         | String        |   | |
| disable_verp_bounces                                   | String        |   | |
| disable_vrfy_command                                   | String        |   | |
| dnsblog_reply_delay                                    | String        |   | |
| dnsblog_service_name                                   | String        |   | |
| dont_remove                                            | String        |   | |
| double_bounce_sender                                   | String        |   | |
| duplicate_filter_limit                                 | String        |   | |
| empty_address_default_transport_maps_lookup_key        | String        |   | |
| empty_address_recipient                                | String        |   | |
| empty_address_relayhost_maps_lookup_key                | String        |   | |
| enable_long_queue_ids                                  | String        |   | |
| enable_original_recipient                              | String        |   | |
| error_notice_recipient                                 | String        |   | |
| error_service_name                                     | String        |   | |
| execution_directory_expansion_filter                   | String        |   | |
| expand_owner_alias                                     | String        |   | |
| export_environment                                     | Array         |   | |
| fallback_transport                                     | String        |   | |
| fallback_transport_maps                                | Array         |   | |
| fast_flush_domains                                     | Array         |   | |
| fast_flush_purge_time                                  | String        |   | |
| fast_flush_refresh_time                                | String        |   | |
| fault_injection_code                                   | String        |   | |
| flush_service_name                                     | String        |   | |
| fork_attempts                                          | String        |   | |
| fork_delay                                             | String        |   | |
| forward_expansion_filter                               | String        |   | |
| forward_path                                           | Array         |   | |
| frozen_delivered_to                                    | String        |   | |
| hash_queue_depth                                       | String        |   | |
| hash_queue_names                                       | Array         |   | |
| header_address_token_limit                             | String        |   | |
| header_checks                                          | Array         |   | |
| header_size_limit                                      | String        |   | |
| helpful_warnings                                       | String        |   | |
| home_mailbox                                           | String        |   | |
| hopcount_limit                                         | String        |   | |
| html_directory                                         | String        | X | |
| ignore_mx_lookup_error                                 | String        |   | |
| import_environment                                     | Array         |   | |
| in_flow_delay                                          | String        |   | |
| inet_interfaces                                        | Array         | X | |
| inet_protocols                                         | Array         | X | |
| initial_destination_concurrency                        | String        |   | |
| internal_mail_filter_classes                           | Array         |   | |
| invalid_hostname_reject_code                           | String        |   | |
| ipc_idle                                               | String        |   | |
| ipc_timeout                                            | String        |   | |
| ipc_ttl                                                | String        |   | |
| line_length_limit                                      | String        |   | |
| lmtp_address_preference                                | String        |   | |
| lmtp_assume_final                                      | String        |   | |
| lmtp_bind_address                                      | String        |   | |
| lmtp_bind_address6                                     | String        |   | |
| lmtp_body_checks                                       | Array         |   | |
| lmtp_cname_overrides_servername                        | String        |   | |
| lmtp_connect_timeout                                   | String        |   | |
| lmtp_connection_cache_destinations                     | Array         |   | |
| lmtp_connection_cache_on_demand                        | String        |   | |
| lmtp_connection_cache_time_limit                       | String        |   | |
| lmtp_connection_reuse_time_limit                       | String        |   | |
| lmtp_data_done_timeout                                 | String        |   | |
| lmtp_data_init_timeout                                 | String        |   | |
| lmtp_data_xfer_timeout                                 | String        |   | |
| lmtp_defer_if_no_mx_address_found                      | String        |   | |
| lmtp_discard_lhlo_keyword_address_maps                 | Array         |   | |
| lmtp_discard_lhlo_keywords                             | Array         |   | |
| lmtp_dns_resolver_options                              | Array         |   | |
| lmtp_enforce_tls                                       | String        |   | |
| lmtp_generic_maps                                      | Array         |   | |
| lmtp_header_checks                                     | Array         |   | |
| lmtp_host_lookup                                       | Array         |   | |
| lmtp_lhlo_name                                         | String        |   | |
| lmtp_lhlo_timeout                                      | String        |   | |
| lmtp_line_length_limit                                 | String        |   | |
| lmtp_mail_timeout                                      | String        |   | |
| lmtp_mime_header_checks                                | Array         |   | |
| lmtp_mx_address_limit                                  | String        |   | |
| lmtp_mx_session_limit                                  | String        |   | |
| lmtp_nested_header_checks                              | Array         |   | |
| lmtp_per_record_deadline                               | String        |   | |
| lmtp_pix_workaround_delay_time                         | String        |   | |
| lmtp_pix_workaround_maps                               | Array         |   | |
| lmtp_pix_workaround_threshold_time                     | String        |   | |
| lmtp_pix_workarounds                                   | Array         |   | |
| lmtp_quit_timeout                                      | String        |   | |
| lmtp_quote_rfc821_envelope                             | String        |   | |
| lmtp_randomize_addresses                               | String        |   | |
| lmtp_rcpt_timeout                                      | String        |   | |
| lmtp_reply_filter                                      | String        |   | |
| lmtp_rset_timeout                                      | String        |   | |
| lmtp_sasl_auth_cache_name                              | String        |   | |
| lmtp_sasl_auth_cache_time                              | String        |   | |
| lmtp_sasl_auth_enable                                  | String        |   | |
| lmtp_sasl_auth_soft_bounce                             | String        |   | |
| lmtp_sasl_mechanism_filter                             | Array         |   | |
| lmtp_sasl_password_maps                                | String        |   | |
| lmtp_sasl_path                                         | String        |   | |
| lmtp_sasl_security_options                             | Array         |   | |
| lmtp_sasl_tls_security_options                         | Array         |   | |
| lmtp_sasl_tls_verified_security_options                | Array         |   | |
| lmtp_sasl_type                                         | String        |   | |
| lmtp_send_dummy_mail_auth                              | String        |   | |
| lmtp_send_xforward_command                             | String        |   | |
| lmtp_sender_dependent_authentication                   | String        |   | |
| lmtp_skip_5xx_greeting                                 | String        |   | |
| lmtp_skip_quit_response                                | String        |   | |
| lmtp_starttls_timeout                                  | String        |   | |
| lmtp_tcp_port                                          | String        |   | |
| lmtp_tls_block_early_mail_reply                        | String        |   | |
| lmtp_tls_cafile                                        | String        |   | |
| lmtp_tls_capath                                        | String        |   | |
| lmtp_tls_cert_file                                     | String        |   | |
| lmtp_tls_ciphers                                       | String        |   | |
| lmtp_tls_dcert_file                                    | String        |   | |
| lmtp_tls_dkey_file                                     | String        |   | |
| lmtp_tls_eccert_file                                   | String        |   | |
| lmtp_tls_eckey_file                                    | String        |   | |
| lmtp_tls_enforce_peername                              | String        |   | |
| lmtp_tls_exclude_ciphers                               | Array         |   | |
| lmtp_tls_fingerprint_cert_match                        | Array         |   | |
| lmtp_tls_fingerprint_digest                            | String        |   | |
| lmtp_tls_key_file                                      | String        |   | |
| lmtp_tls_loglevel                                      | String        |   | |
| lmtp_tls_mandatory_ciphers                             | String        |   | |
| lmtp_tls_mandatory_exclude_ciphers                     | Array         |   | |
| lmtp_tls_mandatory_protocols                           | Array         |   | |
| lmtp_tls_note_starttls_offer                           | String        |   | |
| lmtp_tls_per_site                                      | Array         |   | |
| lmtp_tls_policy_maps                                   | Array         |   | |
| lmtp_tls_protocols                                     | Array         |   | |
| lmtp_tls_scert_verifydepth                             | String        |   | |
| lmtp_tls_secure_cert_match                             | Array         |   | |
| lmtp_tls_security_level                                | String        |   | |
| lmtp_tls_session_cache_database                        | String        |   | |
| lmtp_tls_session_cache_timeout                         | String        |   | |
| lmtp_tls_verify_cert_match                             | Array         |   | |
| lmtp_use_tls                                           | String        |   | |
| lmtp_xforward_timeout                                  | String        |   | |
| local_command_shell                                    | String        |   | |
| local_header_rewrite_clients                           | Array         |   | |
| local_recipient_maps                                   | Array         |   | |
| local_transport                                        | String        |   | |
| lookup_packages                                        | Hash          | X | |
| luser_relay                                            | String        |   | |
| mail_name                                              | String        |   | |
| mail_owner                                             | String        | X | |
| mail_release_date                                      | String        |   | |
| mail_spool_directory                                   | String        |   | |
| mail_version                                           | String        |   | |
| mailbox_command                                        | String        |   | |
| mailbox_command_maps                                   | Array         |   | |
| mailbox_delivery_lock                                  | Array         |   | |
| mailbox_size_limit                                     | String        |   | |
| mailbox_transport                                      | String        |   | |
| mailbox_transport_maps                                 | Array         |   | |
| mailq_path                                             | String        | X | |
| manpage_directory                                      | String        | X | |
| maps_rbl_domains                                       | Array         |   | |
| maps_rbl_reject_code                                   | String        |   | |
| masquerade_classes                                     | Array         |   | |
| masquerade_domains                                     | Array         |   | |
| masquerade_exceptions                                  | Array         |   | |
| master_service_disable                                 | Array         |   | |
| max_idle                                               | String        |   | |
| max_use                                                | String        |   | |
| maximal_backoff_time                                   | String        |   | |
| maximal_queue_lifetime                                 | String        |   | |
| message_reject_characters                              | String        |   | |
| message_size_limit                                     | String        |   | |
| message_strip_characters                               | String        |   | |
| milter_command_timeout                                 | String        |   | |
| milter_connect_macros                                  | String        |   | |
| milter_connect_timeout                                 | String        |   | |
| milter_content_timeout                                 | String        |   | |
| milter_data_macros                                     | String        |   | |
| milter_default_action                                  | String        |   | |
| milter_end_of_data_macros                              | String        |   | |
| milter_end_of_header_macros                            | String        |   | |
| milter_header_checks                                   | Array         |   | |
| milter_helo_macros                                     | String        |   | |
| milter_macro_daemon_name                               | String        |   | |
| milter_macro_v                                         | String        |   | |
| milter_mail_macros                                     | String        |   | |
| milter_protocol                                        | String        |   | |
| milter_rcpt_macros                                     | String        |   | |
| milter_unknown_command_macros                          | String        |   | |
| mime_boundary_length_limit                             | String        |   | |
| mime_header_checks                                     | Array         |   | |
| mime_nesting_limit                                     | String        |   | |
| minimal_backoff_time                                   | String        |   | |
| multi_instance_directories                             | Array         |   | |
| multi_instance_enable                                  | String        |   | |
| multi_instance_group                                   | String        |   | |
| multi_instance_name                                    | String        |   | |
| multi_instance_wrapper                                 | String        |   | |
| multi_recipient_bounce_reject_code                     | String        |   | |
| mydestination                                          | Array         | X | |
| mydomain                                               | String        |   | |
| myhostname                                             | String        |   | |
| mynetworks                                             | Array         |   | |
| mynetworks_style                                       | String        |   | |
| myorigin                                               | String        |   | |
| nested_header_checks                                   | Array         |   | |
| newaliases_path                                        | String        | X | |
| non_fqdn_reject_code                                   | String        |   | |
| non_smtpd_milters                                      | Array         |   | |
| notify_classes                                         | Array         |   | |
| owner_request_special                                  | String        |   | |
| package_name                                           | String        | X | |
| parent_domain_matches_subdomains                       | Array         |   | |
| permit_mx_backup_networks                              | Array         |   | |
| pickup_service_name                                    | String        |   | |
| plaintext_reject_code                                  | String        |   | |
| postmulti_control_commands                             | Array         |   | |
| postmulti_start_commands                               | Array         |   | |
| postmulti_stop_commands                                | Array         |   | |
| postscreen_access_list                                 | Array         |   | |
| postscreen_bare_newline_action                         | String        |   | |
| postscreen_bare_newline_enable                         | String        |   | |
| postscreen_bare_newline_ttl                            | String        |   | |
| postscreen_blacklist_action                            | String        |   | |
| postscreen_cache_cleanup_interval                      | String        |   | |
| postscreen_cache_map                                   | String        |   | |
| postscreen_cache_retention_time                        | String        |   | |
| postscreen_client_connection_count_limit               | String        |   | |
| postscreen_command_count_limit                         | String        |   | |
| postscreen_command_filter                              | String        |   | |
| postscreen_command_time_limit                          | String        |   | |
| postscreen_disable_vrfy_command                        | String        |   | |
| postscreen_discard_ehlo_keyword_address_maps           | Array         |   | |
| postscreen_discard_ehlo_keywords                       | Array         |   | |
| postscreen_dnsbl_action                                | String        |   | |
| postscreen_dnsbl_reply_map                             | String        |   | |
| postscreen_dnsbl_sites                                 | Array         |   | |
| postscreen_dnsbl_threshold                             | String        |   | |
| postscreen_dnsbl_ttl                                   | String        |   | |
| postscreen_enforce_tls                                 | String        |   | |
| postscreen_expansion_filter                            | String        |   | |
| postscreen_forbidden_commands                          | Array         |   | |
| postscreen_greet_action                                | String        |   | |
| postscreen_greet_banner                                | String        |   | |
| postscreen_greet_ttl                                   | String        |   | |
| postscreen_greet_wait                                  | String        |   | |
| postscreen_helo_required                               | String        |   | |
| postscreen_non_smtp_command_action                     | String        |   | |
| postscreen_non_smtp_command_enable                     | String        |   | |
| postscreen_non_smtp_command_ttl                        | String        |   | |
| postscreen_pipelining_action                           | String        |   | |
| postscreen_pipelining_enable                           | String        |   | |
| postscreen_pipelining_ttl                              | String        |   | |
| postscreen_post_queue_limit                            | String        |   | |
| postscreen_pre_queue_limit                             | String        |   | |
| postscreen_reject_footer                               | String        |   | |
| postscreen_tls_security_level                          | String        |   | |
| postscreen_upstream_proxy_protocol                     | String        |   | |
| postscreen_upstream_proxy_timeout                      | String        |   | |
| postscreen_use_tls                                     | String        |   | |
| postscreen_watchdog_timeout                            | String        |   | |
| postscreen_whitelist_interfaces                        | Array         |   | |
| prepend_delivered_header                               | Array         |   | |
| process_id_directory                                   | String        |   | |
| propagate_unmatched_extensions                         | Array         |   | |
| proxy_interfaces                                       | Array         |   | |
| proxy_read_maps                                        | Array         |   | |
| proxy_write_maps                                       | Array         |   | |
| proxymap_service_name                                  | String        |   | |
| proxywrite_service_name                                | String        |   | |
| qmgr_clog_warn_time                                    | String        |   | |
| qmgr_daemon_timeout                                    | String        |   | |
| qmgr_fudge_factor                                      | String        |   | |
| qmgr_ipc_timeout                                       | String        |   | |
| qmgr_message_active_limit                              | String        |   | |
| qmgr_message_recipient_limit                           | String        |   | |
| qmgr_message_recipient_minimum                         | String        |   | |
| qmqpd_authorized_clients                               | Array         |   | |
| qmqpd_client_port_logging                              | String        |   | |
| qmqpd_error_delay                                      | String        |   | |
| qmqpd_timeout                                          | String        |   | |
| queue_directory                                        | String        | X | |
| queue_file_attribute_count_limit                       | String        |   | |
| queue_minfree                                          | String        |   | |
| queue_run_delay                                        | String        |   | |
| queue_service_name                                     | String        |   | |
| rbl_reply_maps                                         | Array         |   | |
| readme_directory                                       | String        | X | |
| receive_override_options                               | Array         |   | |
| recipient_bcc_maps                                     | Array         |   | |
| recipient_canonical_classes                            | Array         |   | |
| recipient_canonical_maps                               | Array         |   | |
| recipient_delimiter                                    | String        |   | |
| reject_code                                            | String        |   | |
| reject_tempfail_action                                 | String        |   | |
| relay_clientcerts                                      | Array         |   | |
| relay_domains                                          | Array         |   | |
| relay_domains_reject_code                              | String        |   | |
| relay_recipient_maps                                   | Array         |   | |
| relay_transport                                        | String        |   | |
| relayhost                                              | String        |   | |
| relocated_maps                                         | Array         |   | |
| remote_header_rewrite_domain                           | String        |   | |
| require_home_directory                                 | String        |   | |
| reset_owner_alias                                      | String        |   | |
| resolve_dequoted_address                               | String        |   | |
| resolve_null_domain                                    | String        |   | |
| resolve_numeric_domain                                 | String        |   | |
| rewrite_service_name                                   | String        |   | |
| sample_directory                                       | String        | X | |
| send_cyrus_sasl_authzid                                | String        |   | |
| sender_bcc_maps                                        | Array         |   | |
| sender_canonical_classes                               | Array         |   | |
| sender_canonical_maps                                  | Array         |   | |
| sender_dependent_default_transport_maps                | Array         |   | |
| sender_dependent_relayhost_maps                        | Array         |   | |
| sendmail_fix_line_endings                              | String        |   | |
| sendmail_path                                          | String        | X | |
| service_name                                           | String        | X | |
| service_throttle_time                                  | String        |   | |
| setgid_group                                           | String        | X | |
| show_user_unknown_table_name                           | String        |   | |
| showq_service_name                                     | String        |   | |
| smtp_address_preference                                | String        |   | |
| smtp_always_send_ehlo                                  | String        |   | |
| smtp_bind_address                                      | String        |   | |
| smtp_bind_address6                                     | String        |   | |
| smtp_body_checks                                       | Array         |   | |
| smtp_cname_overrides_servername                        | String        |   | |
| smtp_connect_timeout                                   | String        |   | |
| smtp_connection_cache_destinations                     | Array         |   | |
| smtp_connection_cache_on_demand                        | String        |   | |
| smtp_connection_cache_time_limit                       | String        |   | |
| smtp_connection_reuse_time_limit                       | String        |   | |
| smtp_data_done_timeout                                 | String        |   | |
| smtp_data_init_timeout                                 | String        |   | |
| smtp_data_xfer_timeout                                 | String        |   | |
| smtp_defer_if_no_mx_address_found                      | String        |   | |
| smtp_discard_ehlo_keyword_address_maps                 | Array         |   | |
| smtp_discard_ehlo_keywords                             | Array         |   | |
| smtp_dns_resolver_options                              | Array         |   | |
| smtp_enforce_tls                                       | String        |   | |
| smtp_fallback_relay                                    | Array         |   | |
| smtp_generic_maps                                      | Array         |   | |
| smtp_header_checks                                     | Array         |   | |
| smtp_helo_name                                         | String        |   | |
| smtp_helo_timeout                                      | String        |   | |
| smtp_host_lookup                                       | Array         |   | |
| smtp_line_length_limit                                 | String        |   | |
| smtp_mail_timeout                                      | String        |   | |
| smtp_mime_header_checks                                | Array         |   | |
| smtp_mx_address_limit                                  | String        |   | |
| smtp_mx_session_limit                                  | String        |   | |
| smtp_nested_header_checks                              | Array         |   | |
| smtp_never_send_ehlo                                   | String        |   | |
| smtp_per_record_deadline                               | String        |   | |
| smtp_pix_workaround_delay_time                         | String        |   | |
| smtp_pix_workaround_maps                               | Array         |   | |
| smtp_pix_workaround_threshold_time                     | String        |   | |
| smtp_pix_workarounds                                   | Array         |   | |
| smtp_quit_timeout                                      | String        |   | |
| smtp_quote_rfc821_envelope                             | String        |   | |
| smtp_randomize_addresses                               | String        |   | |
| smtp_rcpt_timeout                                      | String        |   | |
| smtp_reply_filter                                      | String        |   | |
| smtp_rset_timeout                                      | String        |   | |
| smtp_sasl_auth_cache_name                              | String        |   | |
| smtp_sasl_auth_cache_time                              | String        |   | |
| smtp_sasl_auth_enable                                  | String        |   | |
| smtp_sasl_auth_soft_bounce                             | String        |   | |
| smtp_sasl_mechanism_filter                             | Array         |   | |
| smtp_sasl_password_maps                                | Array         |   | |
| smtp_sasl_path                                         | String        |   | |
| smtp_sasl_security_options                             | Array         |   | |
| smtp_sasl_tls_security_options                         | Array         |   | |
| smtp_sasl_tls_verified_security_options                | Array         |   | |
| smtp_sasl_type                                         | String        |   | |
| smtp_send_dummy_mail_auth                              | String        |   | |
| smtp_send_xforward_command                             | String        |   | |
| smtp_sender_dependent_authentication                   | String        |   | |
| smtp_skip_5xx_greeting                                 | String        |   | |
| smtp_skip_quit_response                                | String        |   | |
| smtp_starttls_timeout                                  | String        |   | |
| smtp_tls_block_early_mail_reply                        | String        |   | |
| smtp_tls_cafile                                        | String        |   | |
| smtp_tls_capath                                        | String        |   | |
| smtp_tls_cert_file                                     | String        |   | |
| smtp_tls_ciphers                                       | String        |   | |
| smtp_tls_dcert_file                                    | String        |   | |
| smtp_tls_dkey_file                                     | String        |   | |
| smtp_tls_eccert_file                                   | String        |   | |
| smtp_tls_eckey_file                                    | String        |   | |
| smtp_tls_enforce_peername                              | String        |   | |
| smtp_tls_exclude_ciphers                               | Array         |   | |
| smtp_tls_fingerprint_cert_match                        | Array         |   | |
| smtp_tls_fingerprint_digest                            | String        |   | |
| smtp_tls_key_file                                      | String        |   | |
| smtp_tls_loglevel                                      | String        |   | |
| smtp_tls_mandatory_ciphers                             | String        |   | |
| smtp_tls_mandatory_exclude_ciphers                     | Array         |   | |
| smtp_tls_mandatory_protocols                           | Array         |   | |
| smtp_tls_note_starttls_offer                           | String        |   | |
| smtp_tls_per_site                                      | Array         |   | |
| smtp_tls_policy_maps                                   | Array         |   | |
| smtp_tls_protocols                                     | Array         |   | |
| smtp_tls_scert_verifydepth                             | String        |   | |
| smtp_tls_secure_cert_match                             | Array         |   | |
| smtp_tls_security_level                                | String        |   | |
| smtp_tls_session_cache_database                        | String        |   | |
| smtp_tls_session_cache_timeout                         | String        |   | |
| smtp_tls_verify_cert_match                             | Array         |   | |
| smtp_use_tls                                           | String        |   | |
| smtp_xforward_timeout                                  | String        |   | |
| smtpd_authorized_verp_clients                          | Array         |   | |
| smtpd_authorized_xclient_hosts                         | Array         |   | |
| smtpd_authorized_xforward_hosts                        | Array         |   | |
| smtpd_banner                                           | String        |   | |
| smtpd_client_connection_count_limit                    | String        |   | |
| smtpd_client_connection_rate_limit                     | String        |   | |
| smtpd_client_event_limit_exceptions                    | Array         |   | |
| smtpd_client_message_rate_limit                        | String        |   | |
| smtpd_client_new_tls_session_rate_limit                | String        |   | |
| smtpd_client_port_logging                              | String        |   | |
| smtpd_client_recipient_rate_limit                      | String        |   | |
| smtpd_client_restrictions                              | Array         |   | |
| smtpd_command_filter                                   | String        |   | |
| smtpd_data_restrictions                                | Array         |   | |
| smtpd_delay_open_until_valid_rcpt                      | String        |   | |
| smtpd_delay_reject                                     | String        |   | |
| smtpd_discard_ehlo_keyword_address_maps                | Array         |   | |
| smtpd_discard_ehlo_keywords                            | Array         |   | |
| smtpd_end_of_data_restrictions                         | Array         |   | |
| smtpd_enforce_tls                                      | String        |   | |
| smtpd_error_sleep_time                                 | String        |   | |
| smtpd_etrn_restrictions                                | Array         |   | |
| smtpd_expansion_filter                                 | String        |   | |
| smtpd_forbidden_commands                               | Array         |   | |
| smtpd_hard_error_limit                                 | String        |   | |
| smtpd_helo_required                                    | String        |   | |
| smtpd_helo_restrictions                                | Array         |   | |
| smtpd_history_flush_threshold                          | String        |   | |
| smtpd_junk_command_limit                               | String        |   | |
| smtpd_log_access_permit_actions                        | String        |   | |
| smtpd_milters                                          | Array         |   | |
| smtpd_noop_commands                                    | Array         |   | |
| smtpd_null_access_lookup_key                           | String        |   | |
| smtpd_peername_lookup                                  | String        |   | |
| smtpd_per_record_deadline                              | String        |   | |
| smtpd_policy_service_max_idle                          | String        |   | |
| smtpd_policy_service_max_ttl                           | String        |   | |
| smtpd_policy_service_timeout                           | String        |   | |
| smtpd_proxy_ehlo                                       | String        |   | |
| smtpd_proxy_filter                                     | String        |   | |
| smtpd_proxy_options                                    | Array         |   | |
| smtpd_proxy_timeout                                    | String        |   | |
| smtpd_recipient_limit                                  | String        |   | |
| smtpd_recipient_overshoot_limit                        | String        |   | |
| smtpd_recipient_restrictions                           | Array         |   | |
| smtpd_reject_footer                                    | String        |   | |
| smtpd_reject_unlisted_recipient                        | String        |   | |
| smtpd_reject_unlisted_sender                           | String        |   | |
| smtpd_relay_restrictions                               | Array         |   | |
| smtpd_restriction_classes                              | Array         |   | |
| smtpd_sasl_auth_enable                                 | String        |   | |
| smtpd_sasl_authenticated_header                        | String        |   | |
| smtpd_sasl_exceptions_networks                         | Array         |   | |
| smtpd_sasl_local_domain                                | String        |   | |
| smtpd_sasl_path                                        | String        |   | |
| smtpd_sasl_security_options                            | Array         |   | |
| smtpd_sasl_tls_security_options                        | Array         |   | |
| smtpd_sasl_type                                        | String        |   | |
| smtpd_sender_login_maps                                | Array         |   | |
| smtpd_sender_restrictions                              | Array         |   | |
| smtpd_service_name                                     | String        |   | |
| smtpd_soft_error_limit                                 | String        |   | |
| smtpd_starttls_timeout                                 | String        |   | |
| smtpd_timeout                                          | String        |   | |
| smtpd_tls_always_issue_session_ids                     | String        |   | |
| smtpd_tls_ask_ccert                                    | String        |   | |
| smtpd_tls_auth_only                                    | String        |   | |
| smtpd_tls_cafile                                       | String        |   | |
| smtpd_tls_capath                                       | String        |   | |
| smtpd_tls_ccert_verifydepth                            | String        |   | |
| smtpd_tls_cert_file                                    | String        |   | |
| smtpd_tls_ciphers                                      | String        |   | |
| smtpd_tls_dcert_file                                   | String        |   | |
| smtpd_tls_dh1024_param_file                            | String        |   | |
| smtpd_tls_dh512_param_file                             | String        |   | |
| smtpd_tls_dkey_file                                    | String        |   | |
| smtpd_tls_eccert_file                                  | String        |   | |
| smtpd_tls_eckey_file                                   | String        |   | |
| smtpd_tls_eecdh_grade                                  | String        |   | |
| smtpd_tls_exclude_ciphers                              | Array         |   | |
| smtpd_tls_fingerprint_digest                           | String        |   | |
| smtpd_tls_key_file                                     | String        |   | |
| smtpd_tls_loglevel                                     | String        |   | |
| smtpd_tls_mandatory_ciphers                            | String        |   | |
| smtpd_tls_mandatory_exclude_ciphers                    | Array         |   | |
| smtpd_tls_mandatory_protocols                          | Array         |   | |
| smtpd_tls_protocols                                    | Array         |   | |
| smtpd_tls_received_header                              | String        |   | |
| smtpd_tls_req_ccert                                    | String        |   | |
| smtpd_tls_security_level                               | String        |   | |
| smtpd_tls_session_cache_database                       | String        |   | |
| smtpd_tls_session_cache_timeout                        | String        |   | |
| smtpd_tls_wrappermode                                  | String        |   | |
| smtpd_upstream_proxy_protocol                          | String        |   | |
| smtpd_upstream_proxy_timeout                           | String        |   | |
| smtpd_use_tls                                          | String        |   | |
| soft_bounce                                            | String        |   | |
| stale_lock_time                                        | String        |   | |
| strict_7bit_headers                                    | String        |   | |
| strict_8bitmime                                        | String        |   | |
| strict_8bitmime_body                                   | String        |   | |
| strict_mailbox_ownership                               | String        |   | |
| strict_mime_encoding_domain                            | String        |   | |
| strict_rfc821_envelopes                                | String        |   | |
| sun_mailtool_compatibility                             | String        |   | |
| swap_bangpath                                          | String        |   | |
| syslog_facility                                        | String        |   | |
| syslog_name                                            | String        |   | |
| tcp_windowsize                                         | String        |   | |
| tls_append_default_ca                                  | String        |   | |
| tls_daemon_random_bytes                                | String        |   | |
| tls_disable_workarounds                                | Array         |   | |
| tls_eecdh_strong_curve                                 | String        |   | |
| tls_eecdh_ultra_curve                                  | String        |   | |
| tls_export_cipherlist                                  | String        |   | |
| tls_high_cipherlist                                    | String        |   | |
| tls_legacy_public_key_fingerprints                     | String        |   | |
| tls_low_cipherlist                                     | String        |   | |
| tls_medium_cipherlist                                  | String        |   | |
| tls_null_cipherlist                                    | String        |   | |
| tls_preempt_cipherlist                                 | String        |   | |
| tls_random_bytes                                       | String        |   | |
| tls_random_exchange_name                               | String        |   | |
| tls_random_prng_update_period                          | String        |   | |
| tls_random_reseed_period                               | String        |   | |
| tls_random_source                                      | String        |   | |
| tlsproxy_enforce_tls                                   | String        |   | |
| tlsproxy_service_name                                  | String        |   | |
| tlsproxy_tls_always_issue_session_ids                  | String        |   | |
| tlsproxy_tls_ask_ccert                                 | String        |   | |
| tlsproxy_tls_cafile                                    | String        |   | |
| tlsproxy_tls_capath                                    | String        |   | |
| tlsproxy_tls_ccert_verifydepth                         | String        |   | |
| tlsproxy_tls_cert_file                                 | String        |   | |
| tlsproxy_tls_ciphers                                   | String        |   | |
| tlsproxy_tls_dcert_file                                | String        |   | |
| tlsproxy_tls_dh1024_param_file                         | String        |   | |
| tlsproxy_tls_dh512_param_file                          | String        |   | |
| tlsproxy_tls_dkey_file                                 | String        |   | |
| tlsproxy_tls_eccert_file                               | String        |   | |
| tlsproxy_tls_eckey_file                                | String        |   | |
| tlsproxy_tls_eecdh_grade                               | String        |   | |
| tlsproxy_tls_exclude_ciphers                           | Array         |   | |
| tlsproxy_tls_fingerprint_digest                        | String        |   | |
| tlsproxy_tls_key_file                                  | String        |   | |
| tlsproxy_tls_loglevel                                  | String        |   | |
| tlsproxy_tls_mandatory_ciphers                         | String        |   | |
| tlsproxy_tls_mandatory_exclude_ciphers                 | Array         |   | |
| tlsproxy_tls_mandatory_protocols                       | Array         |   | |
| tlsproxy_tls_protocols                                 | Array         |   | |
| tlsproxy_tls_req_ccert                                 | String        |   | |
| tlsproxy_tls_security_level                            | String        |   | |
| tlsproxy_tls_session_cache_timeout                     | String        |   | |
| tlsproxy_use_tls                                       | String        |   | |
| tlsproxy_watchdog_timeout                              | String        |   | |
| trace_service_name                                     | String        |   | |
| transport_maps                                         | Array         |   | |
| transport_retry_time                                   | String        |   | |
| trigger_timeout                                        | String        |   | |
| undisclosed_recipients_header                          | String        |   | |
| unknown_address_reject_code                            | String        |   | |
| unknown_address_tempfail_action                        | String        |   | |
| unknown_client_reject_code                             | String        |   | |
| unknown_helo_hostname_tempfail_action                  | String        |   | |
| unknown_hostname_reject_code                           | String        |   | |
| unknown_local_recipient_reject_code                    | String        | X | |
| unknown_relay_recipient_reject_code                    | String        |   | |
| unknown_virtual_alias_reject_code                      | String        |   | |
| unknown_virtual_mailbox_reject_code                    | String        |   | |
| unverified_recipient_defer_code                        | String        |   | |
| unverified_recipient_reject_code                       | String        |   | |
| unverified_recipient_reject_reason                     | String        |   | |
| unverified_recipient_tempfail_action                   | String        |   | |
| unverified_sender_defer_code                           | String        |   | |
| unverified_sender_reject_code                          | String        |   | |
| unverified_sender_reject_reason                        | String        |   | |
| unverified_sender_tempfail_action                      | String        |   | |
| verp_delimiter_filter                                  | String        |   | |
| virtual_alias_domains                                  | Array         |   | |
| virtual_alias_expansion_limit                          | String        |   | |
| virtual_alias_maps                                     | Array         |   | |
| virtual_alias_recursion_limit                          | String        |   | |
| virtual_gid_maps                                       | Array         |   | |
| virtual_mailbox_base                                   | String        |   | |
| virtual_mailbox_domains                                | Array         |   | |
| virtual_mailbox_limit                                  | String        |   | |
| virtual_mailbox_lock                                   | Array         |   | |
| virtual_mailbox_maps                                   | Array         |   | |
| virtual_minimum_uid                                    | String        |   | |
| virtual_transport                                      | String        |   | |
| virtual_uid_maps                                       | Array         |   | |

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
