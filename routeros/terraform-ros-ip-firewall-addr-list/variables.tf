variable "ip_firewall_addr_list_config" {
  type = object({
    address  = string
    comment  = optional(string)
    disabled = optional(bool)
    list     = string
    timeout  = optional(string)
  })
}
