variable "ip_service_config" {
  type = object({
    address      = optional(string)
    certificate  = optional(string)
    disabled     = optional(bool)
    max_sessions = optional(number)
    numbers      = string
    port         = number
    tls_version  = optional(string)
    vrf          = optional(string)
  })
}
