<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_routeros"></a> [routeros](#requirement\_routeros) | >=1.76.7 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_routeros"></a> [routeros](#provider\_routeros) | >=1.76.7 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [routeros_ip_neighbor_discovery_settings.discover](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/ip_neighbor_discovery_settings) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_discover_interface_list"></a> [discover\_interface\_list](#input\_discover\_interface\_list) | Interface list on which members the discovery protocol will run on. | `string` | `"static"` | no |
| <a name="input_discover_interval"></a> [discover\_interval](#input\_discover\_interval) | "An option to adjust the frequency at which neighbor discovery packets are transmitted. <br/>    The setting is available since RouterOS version 7.16." | `string` | `"null"` | no |
| <a name="input_lldp_dcbx"></a> [lldp\_dcbx](#input\_lldp\_dcbx) | Whether to send Data Center Bridging Capabilities Exchange Protocol (DCBX) TLVs, <br/>    which allows to communicate switch QoS settings and capabilities with other neighboring devices using LLDP. <br/>    Only applies to CRS3xx, CRS5xx, CCR2116 and CCR2216 devices. | `bool` | `null` | no |
| <a name="input_lldp_mac_phy_config"></a> [lldp\_mac\_phy\_config](#input\_lldp\_mac\_phy\_config) | Whether to send MAC/PHY Configuration/Status TLV in LLDP, which indicates the interface capabilities, <br/>    current setting of the duplex status, bit rate, and auto-negotiation. Only applies to the Ethernet interfaces. <br/>    While TLV is optional in LLDP, it is mandatory when sending LLDP-MED, <br/>    meaning this TLV will be included when necessary even though the property is configured as disabled. | `bool` | `null` | no |
| <a name="input_lldp_max_frame_size"></a> [lldp\_max\_frame\_size](#input\_lldp\_max\_frame\_size) | Whether to send Maximum Frame Size TLV in LLDP, which indicates the maximum frame size capability of the interface in bytes (l2mtu + 18). <br/>    Only applies to the Ethernet interfaces. | `bool` | `false` | no |
| <a name="input_lldp_med_net_policy_vlan"></a> [lldp\_med\_net\_policy\_vlan](#input\_lldp\_med\_net\_policy\_vlan) | Advertised VLAN ID for LLDP-MED Network Policy TLV. This allows assigning a VLAN ID for LLDP-MED capable devices, such as VoIP phones. <br/>    The TLV will only be added to interfaces where LLDP-MED capable devices are discovered. Other TLV values are predefined and cannot be changed:<br/>      - Application Type - Voice<br/>      - VLAN Type - Tagged<br/>      - L2 Priority - 0<br/>      - DSCP Priority - 0 When used together with the bridge interface, the (R/M)STP protocol should be enabled with protocol-mode setting. <br/>        Additionally, other neighbor discovery protocols (e.g. CDP) should be excluded using protocol setting to avoid LLDP-MED misconfiguration. | `string` | `null` | no |
| <a name="input_lldp_poe_power"></a> [lldp\_poe\_power](#input\_lldp\_poe\_power) | Two specific TLVs facilitate Power over Ethernet (PoE) management between Power Sourcing Equipment (PSE) and Powered Devices (PD). | `bool` | `true` | no |
| <a name="input_lldp_vlan_info"></a> [lldp\_vlan\_info](#input\_lldp\_vlan\_info) | An option whether to send IEEE 802.1 Organizationally Specific TLVs in LLDP related to VLANs. The setting is available since RouterOS version 7.16. | `bool` | `null` | no |
| <a name="input_mode"></a> [mode](#input\_mode) | Selects the neighbor discovery packet sending and receiving mode. The setting is available since RouterOS version 7.7. | `string` | `null` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | List of used discovery protocols. | `list(string)` | <pre>[<br/>  "CDP",<br/>  "LLDP",<br/>  "MNDP"<br/>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | (String) The ID of this resource. |
<!-- END_TF_DOCS -->