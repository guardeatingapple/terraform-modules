variable "ip_pool_config" {
  type = object({
    comment   = optional(string)
    name      = string
    next_pool = optional(string)
    ranges    = list(string)
  })
}
