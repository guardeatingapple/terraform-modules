resource "routeros_ip_neighbor_discovery_settings" "discover" {
  discover_interface_list  = var.discover_interface_list
  discover_interval        = var.discover_interval
  lldp_dcbx                = var.lldp_dcbx
  lldp_mac_phy_config      = var.lldp_mac_phy_config
  lldp_max_frame_size      = var.lldp_max_frame_size
  lldp_med_net_policy_vlan = var.lldp_med_net_policy_vlan
  lldp_poe_power           = var.lldp_poe_power
  lldp_vlan_info           = var.lldp_vlan_info
  mode                     = var.mode
  protocol                 = var.protocol
}
