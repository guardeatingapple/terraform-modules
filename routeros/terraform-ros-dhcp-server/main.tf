resource "routeros_ip_dhcp_server" "server" {
  add_arp                 = try(var.dhcp_server_config.add_arp, null)
  address_pool            = try(var.dhcp_server_config.address_pool, null)
  allow_dual_stack_queue  = try(var.dhcp_server_config.allow_dual_stack_queue, null)
  always_broadcast        = try(var.dhcp_server_config.always_broadcast, null)
  authoritative           = try(var.dhcp_server_config.authoritative, null)
  bootp_lease_time        = try(var.dhcp_server_config.bootp_lease_time, null)
  bootp_support           = try(var.dhcp_server_config.bootp_support, null)
  client_mac_limit        = try(var.dhcp_server_config.client_mac_limit, null)
  comment                 = try(var.dhcp_server_config.comment, "Managed by terraform")
  conflict_detection      = try(var.dhcp_server_config.conflict_detection, null)
  delay_threshold         = try(var.dhcp_server_config.delay_threshold, null)
  dhcp_option_set         = try(var.dhcp_server_config.dhcp_option_set, null)
  disabled                = try(var.dhcp_server_config.disabled, null)
  interface               = var.dhcp_server_config.interface
  insert_queue_before     = try(var.dhcp_server_config.insert_queue_before, null)
  lease_script            = try(var.dhcp_server_config.lease_script, null)
  lease_time              = try(var.dhcp_server_config.lease_time, null)
  name                    = var.dhcp_server_config.name
  parent_queue            = try(var.dhcp_server_config.parent_queue, null)
  relay                   = try(var.dhcp_server_config.relay, null)
  src_address             = try(var.dhcp_server_config.src_address, null)
  use_framed_as_classless = try(var.dhcp_server_config.use_framed_as_classless, null)
  use_radius              = try(var.dhcp_server_config.use_radius, null)
}


/* @description USAGE
module "dhcp_server" {
  source         = "gitlab.ecom.tech/computeandnetwork/terraform-ros-dhcp-server/local"
  version        = "X.X.X"
  for_each       = { for item in local.dhcp_server : item.name => item }
  dhcp_server_config = each.value
  depends_on = [
    module.identity,
    module.ethernet,
    module.bridges,
    module.ip_pool,
    module.ip_address
  ]
}
*/
