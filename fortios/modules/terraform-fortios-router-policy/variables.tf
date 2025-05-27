variable "action" {
  type    = string
  default = "permit"
}

# variable "dstaddr" {
#   type    = block
#   default = null

# }

# variable "dst" {
#   type    = block
#   default = null
# }

# variable "input_device" {
#   type    = block
#   default = null

# }

variable "gateway" {
  type    = string
  default = "0.0.0.0"
}

variable "output_device" {
  type    = string
  default = null
}

variable "seq_num" {
  type    = number
  default = 0
}

variable "status" {
  type    = string
  default = "enable"
}

variable "dst_subnets" {
  type    = string
  default = null
}

variable "srcaddreses" {
  type = list(string)
  default = null
}

variable "dstaddreses" {
  type    = list(string)
  default = null
}
variable "in_interface" {
  type    = list(string)
  default = null
}
variable "tos" {
  type =  string
  default = "0x00"
  description = <<EOF
    Type of service bit pattern.
  EOF
}
variable "tos_mask" {
  type =  string
  default = "0x00"
  description = <<EOF
    Type of service evaluated bits.
  EOF
}