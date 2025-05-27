variable "address_list_extra_time" {
  description = <<EOF
    (String)
  EOF
  type        = string
  default     = null
}

variable "allow_remote_requests" {
  description = <<EOF
    (Boolean) Specifies whether to allow network requests.
  EOF
  type        = bool
  default     = null
}

variable "cache_max_ttl" {
  description = <<EOF
    (String) Maximum time-to-live for cache records. 
    In other words, cache records will expire unconditionally 
    after cache-max-ttl time. 
    Shorter TTL received from DNS servers are respected. 
    Default: 1w
  EOF
  type        = string
  default     = "1w"
}

variable "cache_size" {
  description = <<EOF
    (Number) Specifies the size of DNS cache in KiB (64..4294967295). 
    Default: 2048
  EOF
  type        = number
  default     = null
}

variable "doh_max_concurrent_queries" {
  description = <<EOF
    (Number) Specifies how many DoH concurrent queries are allowed.
  EOF
  type        = number
  default     = null
}

variable "doh_max_server_connections" {
  description = <<EOF
    (Number) Specifies how many concurrent connections to the DoH server are allowed.
  EOF
  type        = number
  default     = null
}

variable "doh_timeout" {
  description = <<EOF
    (String) Specifies how long to wait for query response from the DoH server.
  EOF
  type        = string
  default     = null
}

variable "max_concurrent_queries" {
  description = <<EOF
    (Number) Specifies how much concurrent queries are allowed. Default: 100
  EOF
  type        = number
  default     = 100
}

variable "max_concurrent_tcp_sessions" {
  description = <<EOF
    (Number) Specifies how much concurrent TCP sessions are allowed. Default: 20
  EOF
  type        = number
  default     = 20
}

variable "max_udp_packet_size" {
  description = <<EOF
    (Number) Maximum size of allowed UDP packet. Default: 4096
  EOF
  type        = number
  default     = 4096
}

variable "mdns_repeat_ifaces" {
  description = <<EOF
    (Set of String) An option to enable mDNS repeater on specified interfaces. 
    This option is available in RouterOS starting from version 7.16.
  EOF
  type        = set(string)
  default     = null
}

variable "query_server_timeout" {
  description = <<EOF
    (String) Specifies how long to wait for query response from one server. 
    Time can be specified in milliseconds. Default: 2s
  EOF
  type        = string
  default     = "2s"
}

variable "servers" {
  description = <<EOF
    (List of String) List of DNS server IPv4/IPv6 addresses.
  EOF
  type        = list(string)
  default     = null
}

variable "use_doh_server" {
  description = <<EOF
    (String) DNS over HTTPS (DoH) server URL.
    Mikrotik strongly suggest not use third-party download links for certificate fetching.
    Use the Certificate Authority's own website.
    RouterOS prioritize DoH over DNS server if both are configured on the device.
  EOF
  type        = string
  default     = null
}

variable "verify_doh_cert" {
  description = <<EOF
    (Boolean) DoH certificate verification. See docs.
  EOF
  type        = bool
  default     = null
}

variable "vrf" {
  description = <<EOF
    (String) The VRF table this resource operates on.
  EOF
  type        = string
  default     = null
}
