variable "ip_vrf_config" {
  type = object({
    comment    = optional(string)
    disabled   = optional(bool)
    interfaces = list(string)
    name       = string
  })
}
