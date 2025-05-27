variable "ip_address_config" {
  type = object({
    address   = string
    comment   = optional(string)
    disabled  = optional(bool)
    interface = string
    network   = optional(string)
  })
  description = "Configuration for ip address"
}
