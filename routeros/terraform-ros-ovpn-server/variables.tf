variable "auth" {
  type = string
}

variable "certificate" {
  type = string
}

variable "cipher" {
  type = string
}

variable "default_profile" {
  type = string
}

variable "enabled" {
  type = bool
}

variable "enable_tun_ipv6" {
  type = bool
}

variable "ipv6_prefix_len" {
  type = number
}

variable "keepalive_timeout" {
  type = string
}

variable "mac_address" {
  type = string
}

variable "max_mtu" {
  type = number
}

variable "mode" {
  type = string
}

variable "netmask" {
  type = number
}

variable "port" {
  type = number
}

variable "protocol" {
  type = string
}

variable "redirect_gateway" {
  type = string
}

variable "require_client_certificate" {
  type = bool
}

variable "tls_version" {
  type = string
}

variable "tun_server_ipv6" {
  type = string
}
