resource "routeros_system_certificate" "ca" {
  common_name  = var.common_name
  copy_from    = var.common_name
  country      = var.country
  days_valid   = var.days_valid
  key_size     = var.key_size
  key_usage    = var.key_usage
  locality     = var.locality
  name         = var.name
  organization = var.organization
  sign {
    ca          = var.ca
    ca_crl_host = var.ca_crl_host
  }
  state            = var.state
  subject_alt_name = var.subject_alt_name
  trusted          = var.trusted
  unit             = var.unit
}
