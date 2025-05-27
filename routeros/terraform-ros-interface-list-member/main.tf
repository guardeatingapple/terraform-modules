resource "routeros_interface_list_member" "list_member" {
  list      = var.interface_list_members_config.name
  interface = var.interface_list_members_config.interface
  comment   = try(var.interface_list_members_config.comment, "Managed by terraform")
  disabled  = try(var.interface_list_members_config.disabled, "false")
}
