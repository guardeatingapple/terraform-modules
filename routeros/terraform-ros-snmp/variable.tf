variable "contact" {
  type        = string
  default     = null
  description = <<EOF
    (String) Contact information.
  EOF
}

variable "enabled" {
  type        = bool
  default     = null
  description = <<EOF
    (Boolean) Used to disable/enable SNMP service
  EOF
}

variable "engine_id_suffix" {
  type        = string
  default     = null
  description = <<EOF
    (String) Unique identifier for an SNMPv3 engine by configuring the suffix of the engine ID.
  EOF
}

variable "location" {
  type        = string
  default     = null
  description = <<EOF
    (String) Location information.
  EOF
}

variable "src_address" {
  type        = string
  default     = null
  description = <<EOF
    (String) Force the router to always use the same IP source address for all of the SNMP messages.
  EOF
}

variable "trap_community" {
  type        = string
  sensitive   = true
  default     = null
  description = <<EOF
    (String, Sensitive) Which communities configured in community menu to use when sending out the trap. 
    This name must be present in the community list.
  EOF
}

variable "trap_generators" {
  type        = string
  default     = null
  description = <<EOF
    (String) What action will generate traps: interfaces - interface changes; 
    start-trap - snmp server starting on the router.
  EOF
}

variable "trap_interfaces" {
  type        = string
  default     = null
  description = <<EOF
    (String) List of interfaces that traps are going to be sent out.
  EOF
}

variable "trap_target" {
  type        = set(string)
  default     = null
  description = <<EOF
    (Set of String) IP (IPv4 or IPv6) addresses of SNMP data collectors that have to receive the trap.
  EOF
}

variable "trap_version" {
  type        = number
  default     = null
  description = <<EOF
    (Number) Version of SNMP protocol to use for trap.
  EOF
}

variable "vrf" {
  type        = string
  default     = null
  description = <<EOF
    (String) The VRF table this resource operates on.
  EOF
}
