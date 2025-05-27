variable "as" {
  type        = string
  description = <<EOF
    (String) 32-bit BGP autonomous system number. Value can be entered in AS-Plain and AS-Dot formats. 
    The parameter is also used to set up the BGP confederation, in the following format: confederation_as/as. 
    For example, if your AS is 34 and your confederation AS is 43, then as configuration should be as =43/34.
  EOF
}

variable "name" {
  type        = string
  description = <<EOF
    (String) Name of the BGP template.
  EOF
}
