resource "routeros_dns" "dns-server" {
  address_list_extra_time     = var.address_list_extra_time
  allow_remote_requests       = var.allow_remote_requests
  cache_max_ttl               = var.cache_max_ttl
  cache_size                  = var.cache_size
  doh_max_concurrent_queries  = var.doh_max_concurrent_queries
  doh_max_server_connections  = var.doh_max_server_connections
  doh_timeout                 = var.doh_timeout
  max_concurrent_queries      = var.max_concurrent_queries
  max_concurrent_tcp_sessions = var.max_concurrent_tcp_sessions
  max_udp_packet_size         = var.max_udp_packet_size
  mdns_repeat_ifaces          = var.mdns_repeat_ifaces
  query_server_timeout        = var.query_server_timeout
  servers                     = var.servers
  use_doh_server              = var.use_doh_server
  verify_doh_cert             = var.verify_doh_cert
  vrf                         = var.vrf
}
