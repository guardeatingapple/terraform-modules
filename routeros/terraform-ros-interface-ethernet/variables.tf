variable "logical_name" {
  type        = string
  description = "Logical name of the interface (wan1, wan2, etc.)"
}

variable "interface_config" {
  type = object({
    advertise                  = optional(string)
    arp                        = optional(string)
    arp_timeout                = optional(string)
    auto_negotiation           = optional(bool)
    bandwidth                  = optional(string)
    cable_settings             = optional(string)
    combo_mode                 = optional(string)
    comment                    = optional(string)
    disable_running_check      = optional(bool)
    disabled                   = optional(bool)
    factory_name               = string
    fec_mode                   = optional(string)
    full_duplex                = optional(string)
    l2mtu                      = optional(string)
    loop_protect               = optional(string)
    loop_protect_disable_time  = optional(string)
    loop_protect_send_interval = optional(string)
    mac_address                = optional(string)
    mdix_enable                = optional(string)
    mtu                        = optional(string)
    name                       = string
    poe_lldp_enabled           = optional(string)
    poe_out                    = optional(string)
    poe_priority               = optional(string)
    poe_voltage                = optional(string)
    power_cycle_interval       = optional(string)
    power_cycle_ping_address   = optional(string)
    power_cycle_ping_enabled   = optional(string)
    power_cycle_ping_timeout   = optional(string)
    rx_flow_control            = optional(string)
    sfp_ignore_rx_los          = optional(string)
    sfp_rate_select            = optional(string)
    sfp_shutdown_temperature   = optional(string)
    speed                      = optional(string)
    tx_flow_control            = optional(string)
  })
}
