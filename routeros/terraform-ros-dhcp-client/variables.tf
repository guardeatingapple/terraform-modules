variable "add_default_route" {
  type        = string
  default     = null
  description = <<EOF
    (String) Whether to install default route in routing table received from DHCP server.
  EOF
}

variable "comment" {
  type        = string
  default     = "Managed by terraform"
  description = <<EOF
    (String)
  EOF
}

variable "default_route_distance" {
  type        = string
  default     = null
  description = <<EOF
    (Number) Distance of default route. 
    Applicable if add-default-route is set to yes.
  EOF
}

variable "dhcp_options" {
  type        = string
  default     = null
  description = <<EOF
    (String) Options that are sent to the DHCP server.
  EOF
}

variable "disabled" {
  type        = bool
  default     = null
  description = <<EOF
    (Boolean).
  EOF
}

variable "interface" {
  type        = string
  description = <<EOF
    (String) Name of the interface.
  EOF
}

variable "script" {
  type        = string
  default     = null
  description = <<EOF
    (String) A script.
  EOF
}

variable "use_peer_dns" {
  type        = bool
  default     = null
  description = <<EOF
    (Boolean) Whether to accept the DNS settings advertised 
    by DHCP Server (will override the settings put in the /ip dns submenu).
  EOF
}

variable "use_peer_ntp" {
  type        = bool
  default     = null
  description = <<EOF
    (Boolean) Whether to accept the NTP settings advertised 
    by DHCP Server (will override the settings put in the /system ntp client submenu).
  EOF
}
