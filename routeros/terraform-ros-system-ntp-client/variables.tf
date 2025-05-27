variable "enabled" {
  type        = bool
  description = "Enable NTP client."
  default     = true
}

variable "mode" {
  type        = string
  description = "Mode that the NTP client will operate in"
  default     = "unicast"
  validation {
    condition     = contains(["unicast", "broadcast", "multicast", "manycast"], var.mode)
    error_message = "Invalid mode: '${var.mode}'. Valid options are 'unicast', 'broadcast', 'multicast', or 'manycast'."
  }
}

variable "servers" {
  type        = list(string)
  description = <<EOF
  (Set of String) The list of NTP servers. It is possible to add static entries.The following formats are accepted:
    FQDN ("Resolved Address" will appear in the "Servers"- window in an appropriate column if the address is resolved) or 
    IP address can be used. If DHCP-Client property use-peer-ntp=yes - the dynamic entries advertised by DHCP
    ipv4
    ipv4@vrf
    ipv6
    ipv6@vrf
    ipv6-linklocal%interface
  EOF
  default     = ["0.ru.pool.ntp.org", "1.ru.pool.ntp.org"]
}

variable "vrf" {
  type        = string
  description = "The VRF table this resource operates on."
  default     = "main"
}
