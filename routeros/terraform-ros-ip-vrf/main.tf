resource "routeros_ip_vrf" "vrf" {
  comment    = try(var.ip_vrf_config.comment, "Managed by terraform")
  disabled   = try(var.ip_vrf_config.disabled, null)
  interfaces = var.ip_vrf_config.interfaces
  name       = var.ip_vrf_config.name
}
