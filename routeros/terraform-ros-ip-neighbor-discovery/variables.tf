variable "discover_interface_list" {
  type        = string
  description = "Interface list on which members the discovery protocol will run on."
  default     = "static"
}

variable "discover_interval" {
  type        = string
  description = <<EOF
    "An option to adjust the frequency at which neighbor discovery packets are transmitted. 
    The setting is available since RouterOS version 7.16."
  EOF
  default     = "null"
}

variable "lldp_dcbx" {
  type        = bool
  description = <<EOF
    Whether to send Data Center Bridging Capabilities Exchange Protocol (DCBX) TLVs, 
    which allows to communicate switch QoS settings and capabilities with other neighboring devices using LLDP. 
    Only applies to CRS3xx, CRS5xx, CCR2116 and CCR2216 devices.
  EOF
  default     = null
}

variable "lldp_mac_phy_config" {
  type        = bool
  description = <<EOF
    Whether to send MAC/PHY Configuration/Status TLV in LLDP, which indicates the interface capabilities, 
    current setting of the duplex status, bit rate, and auto-negotiation. Only applies to the Ethernet interfaces. 
    While TLV is optional in LLDP, it is mandatory when sending LLDP-MED, 
    meaning this TLV will be included when necessary even though the property is configured as disabled.
  EOF
  default     = null
}

variable "lldp_max_frame_size" {
  type        = bool
  description = <<EOF
    Whether to send Maximum Frame Size TLV in LLDP, which indicates the maximum frame size capability of the interface in bytes (l2mtu + 18). 
    Only applies to the Ethernet interfaces.
  EOF
  default     = false
}

variable "lldp_med_net_policy_vlan" {
  type        = string
  description = <<EOF
    Advertised VLAN ID for LLDP-MED Network Policy TLV. This allows assigning a VLAN ID for LLDP-MED capable devices, such as VoIP phones. 
    The TLV will only be added to interfaces where LLDP-MED capable devices are discovered. Other TLV values are predefined and cannot be changed:
      - Application Type - Voice
      - VLAN Type - Tagged
      - L2 Priority - 0
      - DSCP Priority - 0 When used together with the bridge interface, the (R/M)STP protocol should be enabled with protocol-mode setting. 
        Additionally, other neighbor discovery protocols (e.g. CDP) should be excluded using protocol setting to avoid LLDP-MED misconfiguration.
  EOF
  default     = null
}

variable "lldp_poe_power" {
  type        = bool
  description = <<EOF
    Two specific TLVs facilitate Power over Ethernet (PoE) management between Power Sourcing Equipment (PSE) and Powered Devices (PD).
  EOF
  default     = true
}

variable "lldp_vlan_info" {
  type        = bool
  description = "An option whether to send IEEE 802.1 Organizationally Specific TLVs in LLDP related to VLANs. The setting is available since RouterOS version 7.16."
  default     = null
}

variable "mode" {
  type        = string
  description = "Selects the neighbor discovery packet sending and receiving mode. The setting is available since RouterOS version 7.7."
  default     = null
}

variable "protocol" {
  type        = list(string)
  description = "List of used discovery protocols."
  default     = ["CDP", "LLDP", "MNDP"]
}
