variable "dnsdatabase_config" {
  description = "Configuration for FortiOS DNS database"
  type = list(object({
    name                    = string # Будет использоваться и для name, и для domain
    status                  = optional(string, "enable")
    allow_transfer          = optional(string)
    type                    = string
    view                    = optional(string)
    ip_primary              = optional(string)
    ip_master               = optional(string)
    primary_name            = optional(string)
    contact                 = optional(string)
    ttl                     = optional(number, 3600)
    authoritative           = optional(string, "enable")
    forwarder               = optional(string)
    forwarder6              = optional(string)
    source_ip               = optional(string)
    source_ip6              = optional(string)
    source_ip_interface     = optional(string)
    rr_max                  = optional(number)
    interface_select_method = optional(string)
    interface               = optional(string)
    vrf_select              = optional(string)
    dynamic_sort_subtable   = optional(string)
    get_all_tables          = optional(string)
    vdomparam               = optional(string)

    dns_entry = optional(list(object({
      id             = optional(number)
      status         = optional(string, "enable")
      type           = string
      ttl            = optional(number)
      preference     = optional(number)
      ip             = optional(string)
      ipv6           = optional(string)
      hostname       = optional(string)
      canonical_name = optional(string)
    })), [])
  }))
}