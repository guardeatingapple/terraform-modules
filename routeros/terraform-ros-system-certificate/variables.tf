variable "common_name" {
  type = string
}

variable "copy_from" {
  type = string
}

variable "country" {
  type = string
}

variable "days_valid" {
  type = number
}

variable "key_size" {
  type = string
}

variable "key_usage" {
  type = set(string)
}

variable "locality" {
  type = string
}

variable "name" {
  type = string
}

variable "organization" {
  type = string
}

variable "ca" {
  type = string
}

variable "ca_crl_host" {
  type = string
}

variable "state" {
  type = string
}

variable "subject_alt_name" {
  type = string
}

variable "trusted" {
  type = bool
}

variable "unit" {
  type = string
}
