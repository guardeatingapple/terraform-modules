resource "routeros_ip_service" "ip_service" {
  address      = try(var.ip_service_config.address, null)
  certificate  = try(var.ip_service_config.certificate, null)
  disabled     = try(var.ip_service_config.disabled, null)
  max_sessions = try(var.ip_service_config.max_sessions, null)
  numbers      = var.ip_service_config.numbers
  port         = var.ip_service_config.port
  tls_version  = try(var.ip_service_config.tls_version, null)
  vrf          = try(var.ip_service_config.vrf, null)
}
