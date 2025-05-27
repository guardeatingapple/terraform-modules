resource "routeros_system_user" "user" {
  address  = var.address
  comment  = var.comment
  disabled = var.disabled
  group    = var.group
  name     = var.name
  password = var.password
}
