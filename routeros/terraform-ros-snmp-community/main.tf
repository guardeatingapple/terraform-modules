resource "routeros_snmp_community" "community" {
  addresses               = var.addresses
  authentication_password = var.authentication_password
  authentication_protocol = var.authentication_protocol
  comment                 = var.comment
  disabled                = var.disabled
  encryption_password     = var.encryption_password
  encryption_protocol     = var.encryption_protocol
  name                    = var.name
  read_access             = var.read_access
  security                = var.security
  write_access            = var.write_access
}
