variable "addresses" {
  type        = string
  default     = null
  description = <<EOF
    (Set of String) Set of IP (v4 or v6) addresses or CIDR networks 
    from which connections to SNMP server are allowed.
  EOF
}

variable "authentication_password" {
  type        = string
  sensitive   = true
  default     = null
  description = <<EOF
    (String, Sensitive) Password used to authenticate the connection to the server (SNMPv3).
  EOF
}

variable "authentication_protocol" {
  type        = string
  default     = null
  description = <<EOF
    (String) The protocol used for authentication (SNMPv3).
  EOF
}

variable "comment" {
  type        = string
  default     = "Managed by terraform"
  description = <<EOF
    (String)
  EOF
}

variable "disabled" {
  type        = bool
  default     = null
  description = <<EOF
    (Boolen)
  EOF
}

variable "encryption_password" {
  type        = string
  default     = null
  sensitive   = true
  description = <<EOF
    (String, Sensitive) The password used for encryption (SNMPv3).
  EOF
}

variable "encryption_protocol" {
  type        = string
  default     = null
  description = <<EOF
    (String) encryption protocol to be used to encrypt the communication (SNMPv3). 
    AES (see rfc3826) available since v6.16.
  EOF
}

variable "name" {
  type        = string
  default     = null
  description = <<EOF
    (String) Community Name.
  EOF
}

variable "read_access" {
  type        = bool
  default     = null
  description = <<EOF
    (Boolean) Whether read access is enabled for this community.
  EOF
}

variable "security" {
  type        = string
  default     = null
  description = <<EOF
    (String) Security features.
  EOF
}

variable "write_access" {
  type        = bool
  default     = null
  description = <<EOF
    (Boolean) Whether write access is enabled for this community.
  EOF
}
