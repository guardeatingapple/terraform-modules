resource "routeros_ip_firewall_addr_list" "list" {
  address  = var.ip_firewall_addr_list_config.address
  comment  = try(var.ip_firewall_addr_list_config.comment, null)
  disabled = try(var.ip_firewall_addr_list_config.disabled, null)
  list     = var.ip_firewall_addr_list_config.list
  timeout  = try(var.ip_firewall_addr_list_config.timeout, null)
}
