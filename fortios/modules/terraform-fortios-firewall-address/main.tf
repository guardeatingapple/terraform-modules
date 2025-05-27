resource "fortios_firewall_address" "fw_address" {
  allow_routing = var.allow_routing
  color         = var.color
  comment       = var.comment
  fqdn          = var.fqdn
  name          = var.name
  subnet        = var.subnet
  type          = var.type
}
