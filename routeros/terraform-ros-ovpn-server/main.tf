resource "routeros_ovpn_server" "server" {
  auth                       = var.auth
  certificate                = var.certificate
  cipher                     = var.cipher
  default_profile            = var.default_profile
  enabled                    = var.enabled
  enable_tun_ipv6            = var.enable_tun_ipv6
  ipv6_prefix_len            = var.ipv6_prefix_len
  keepalive_timeout          = var.keepalive_timeout
  mac_address                = var.mac_address
  max_mtu                    = var.max_mtu
  mode                       = var.mode
  netmask                    = var.netmask
  port                       = var.port
  protocol                   = var.protocol
  redirect_gateway           = var.redirect_gateway
  require_client_certificate = var.require_client_certificate
  tls_version                = var.tls_version
  tun_server_ipv6            = var.tun_server_ipv6
}
