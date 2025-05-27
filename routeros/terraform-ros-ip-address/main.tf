resource "routeros_ip_address" "address" {
  # @decription IP address.
  address  = var.ip_address_config.address
  comment  = try(var.ip_address_config.comment, "Managed by terraform")
  disabled = try(var.ip_address_config.disabled, false)
  # @description Name of the interface.
  interface = var.ip_address_config.interface
  /* @description (String) IP address for the network. 
    For point-to-point links it should be the address of the remote end. 
    Starting from v5RC6 this parameter is configurable only for addresses 
    with /32 netmask (point to point links).
    */
  network = try(var.ip_address_config.network, null)
}
