resource "routeros_interface_ovpn_server" "bind" {
  comment  = var.comment
  disabled = var.disabled
  name     = var.name
  user     = var.user
}
