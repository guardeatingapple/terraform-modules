variable "comment" {
  type    = string
  default = "Managed by terraform"
}

variable "disabled" {
  type = bool
}

variable "interval" {
  type = string
}

variable "name" {
  type = string
}

variable "on_event" {
  type = string
}

variable "policy" {
  type = list(string)
}

variable "start_date" {
  type = string
}

variable "start_time" {
  type = string
}
