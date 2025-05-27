resource "routeros_ip_route" "route" {
  blackhole           = try(var.ip_route_config.blackhole, null)
  check_gateway       = try(var.ip_route_config.check_gateway, null)
  comment             = try(var.ip_route_config.comment, null)
  disabled            = try(var.ip_route_config.disabled, null)
  distance            = try(var.ip_route_config.distance, null)
  dst_address         = try(var.ip_route_config.dst_address, null)
  gateway             = var.ip_route_config.gateway
  pref_src            = try(var.ip_route_config.pref_src, null)
  routing_table       = try(var.ip_route_config.routing_table, null)
  scope               = try(var.ip_route_config.scope, null)
  suppress_hw_offload = try(var.ip_route_config.suppress_hw_offload, null)
  target_scope        = try(var.ip_route_config.target_scope, null)
  vrf_interface       = try(var.ip_route_config.vrf_interface, null)
}
