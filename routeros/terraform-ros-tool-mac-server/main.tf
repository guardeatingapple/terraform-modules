resource "routeros_tool_mac_server" "mac_server" {
  allowed_interface_list = var.allowed_interface_list
}
