resource "routeros_system_ntp_server" "server" {
  auth_key            = var.auth_key
  broadcast           = var.broadcast
  broadcast_addresses = var.broadcast_addresses
  enabled             = var.enabled
  local_clock_stratum = var.local_clock_stratum
  multicast           = var.multicast
  manycast            = var.manycast
  use_local_clock     = var.use_local_clock
  vrf                 = var.vrf
}
