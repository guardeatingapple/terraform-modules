resource "routeros_interface_gre" "gre" {
  allow_fast_path = var.allow_fast_path
  clamp_tcp_mss   = var.clamp_tcp_mss
  comment         = var.comment
  disabled        = var.disabled
  dont_fragment   = var.dont_fragment
  dscp            = var.dscp
  ipsec_secret    = var.ipsec_secret
  keepalive       = var.keepalive
  local_address   = var.local_address
  mtu             = var.mtu
  name            = var.name
  remote_address  = var.remote_address
}
