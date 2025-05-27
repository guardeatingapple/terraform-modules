variable "auth_key" {
  type        = string
  description = <<EOF
    NTP symmetric key, used for authentication between the NTP client and server. 
    Key Identifier (Key ID) - an integer identifying the cryptographic key used to generate the message-authentication code.
  EOF
  default     = null
}

variable "broadcast" {
  type        = bool
  description = <<EOF
    Enable certain NTP server mode, for this mode to work you have to set up broadcast-addresses field.
  EOF
  default     = false
}

variable "broadcast_addresses" {
  type        = string
  description = <<EOF
    Set broadcast address to use for NTP server broadcast mode.
  EOF
  default     = null
}

variable "enabled" {
  type        = bool
  description = <<EOF
    Enable NTP server.
  EOF
  default     = false
}

variable "local_clock_stratum" {
  type        = number
  description = <<EOF
    Manually set stratum if use_local_clock = true.
  EOF
  default     = 5
  validation {
    condition     = var.local_clock_stratum == null || (var.local_clock_stratum >= 0 && var.local_clock_stratum <= 16)
    error_message = "Stratum must be between 0 and 16."
  }
}

variable "manycast" {
  type        = bool
  description = <<EOF
    Enable certain NTP server mode.
  EOF
  default     = false
}

variable "multicast" {
  type        = bool
  description = <<EOF
    Enable certain NTP server mode.
  EOF
  default     = false
}

variable "use_local_clock" {
  type        = bool
  description = <<EOF
    The server will supply its local system time as valid if others are not available.
  EOF
  default     = false
}

variable "vrf" {
  type        = string
  description = <<EOF
    The VRF table this resource operates on.
  EOF
  default     = "main"
}
