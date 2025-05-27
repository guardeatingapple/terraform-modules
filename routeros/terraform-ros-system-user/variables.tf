variable "name" {
  type        = string
  description = <<EOF
    (String) User name. 
    Although it must start with an alphanumeric character, 
    it may contain '*', '_', '.' and '@' symbols.
  EOF
}

variable "addess" {
  type        = string
  default     = null
  description = <<EOF
    (String) Host or network address from which the user is allowed to log in.
  EOF
}

variable "group" {
  type        = string
  description = <<EOF
    (String) Name of the group the user belongs to.
  EOF
}

variable "password" {
  type        = string
  default     = null
  description = <<EOF
    (String, Sensitive) User password. 
    If not specified, it is left blank (hit [Enter] when logging in).
    It conforms to standard Unix characteristics of passwords and may contain letters, 
    digits, '*' and '_' symbols.
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
    (Boolean)
  EOF
}
