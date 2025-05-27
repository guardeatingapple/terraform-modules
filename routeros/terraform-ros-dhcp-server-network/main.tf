resource "routeros_ip_dhcp_server_network" "dhcp_server_network" {
  address         = var.dhcp_server_network_config.address
  boot_file_name  = try(var.dhcp_server_network_config.boot_file_name, null)
  caps_manager    = try(var.dhcp_server_network_config.caps_manager, null)
  comment         = try(var.dhcp_server_network_config.comment, "Managed by terraform")
  dhcp_option     = try(var.dhcp_server_network_config.dhcp_option, null)
  dhcp_option_set = try(var.dhcp_server_network_config.dhcp_option_set, null)
  dns_none        = try(var.dhcp_server_network_config.dns_none, null)
  dns_server      = try(var.dhcp_server_network_config.dns_server, null)
  domain          = try(var.dhcp_server_network_config.domain, null)
  gateway         = try(var.dhcp_server_network_config.gateway, null)
  netmask         = try(var.dhcp_server_network_config.netmask, null)
  next_server     = try(var.dhcp_server_network_config.next_server, null)
  ntp_server      = try(var.dhcp_server_network_config.ntp_server, null)
  wins_server     = try(var.dhcp_server_network_config.wins_server, null)
}
