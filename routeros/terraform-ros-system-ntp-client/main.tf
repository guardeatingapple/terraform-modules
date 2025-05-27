resource "routeros_system_ntp_client" "client" {
  enabled = var.enabled
  mode    = var.mode
  servers = var.servers
  vrf     = var.vrf
}
