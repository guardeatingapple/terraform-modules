variable "ip_route_config" {
  type = object({
    blackhole           = optional(bool)
    check_gateway       = optional(string)
    comment             = optional(string)
    disabled            = optional(bool)
    distance            = optional(number)
    dst_address         = optional(string)
    gateway             = string
    pref_src            = optional(string)
    routing_table       = optional(string)
    scope               = optional(string)
    suppress_hw_offload = optional(bool)
    target_scope        = optional(number)
    vrf_interface       = optional(string)
  })
}
