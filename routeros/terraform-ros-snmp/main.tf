resource "routeros_snmp" "snmp" {
  contact          = var.contact
  enabled          = var.enabled
  engine_id_suffix = try(var.engine_id_suffix, null)
  location         = var.location
  src_address      = var.src_address
  trap_community   = var.trap_community
  trap_generators  = var.trap_generators
  trap_interfaces  = var.trap_interfaces
  trap_target      = var.trap_target
  trap_version     = var.trap_version
  vrf              = var.vrf
}
