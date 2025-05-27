resource "routeros_ip_dhcp_client" "client" {
  add_default_route      = var.add_default_route
  comment                = var.comment
  default_route_distance = var.default_route_distance
  dhcp_options           = var.dhcp_options
  disabled               = var.disabled
  interface              = var.interface
  script                 = var.script
  use_peer_dns           = var.use_peer_dns
  use_peer_ntp           = var.use_peer_ntp
}
