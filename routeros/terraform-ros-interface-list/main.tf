resource "routeros_interface_list" "list" {
  comment = try(var.interface_list_config.comment, "Managed by terraform")
  exclude = try(var.interface_list_config.exclude, null)
  include = try(var.interface_list_config.include, null)
  name    = var.interface_list_config.name
}
