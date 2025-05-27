variable "allow_routing" {
  type    = string
  default = "disable"
}

variable "color" {
  type        = number
  default     = 3
  description = "Color of firewall address object"
}

variable "comment" {
  type    = string
  default = null
}

variable "fqdn" {
  type    = string
  default = null
}

variable "name" {
  type = string
}

variable "subnet" {
  type    = string
  default = null
}

variable "type" {
  type    = string
  default = "ipmask"
  validation {
    condition     = contains(["ipmask", "fqdn", "iprange"], var.type)
    error_message = "Selected value not in ['ipmask', 'fqdn', 'iprange']"
  }
}
