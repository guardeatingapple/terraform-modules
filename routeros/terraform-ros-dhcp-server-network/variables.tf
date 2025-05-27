variable "dhcp_server_network_config" {
  type = object({
    address         = string
    boot_file_name  = optional(string)
    caps_manager    = optional(list(string))
    comment         = optional(string)
    dhcp_option     = optional(list(string))
    dhcp_option_set = optional(string)
    dns_none        = optional(bool)
    dns_server      = optional(list(string))
    domain          = optional(string)
    gateway         = optional(string)
    netmask         = optional(number)
    next_server     = optional(string)
    ntp_server      = optional(list(string))
    wins_server     = optional(list(string))
  })
}
