resource "routeros_ip_pool" "pool" {
  comment   = try(var.ip_pool_config.comment, "Managed by terraform")
  name      = var.ip_pool_config.name
  next_pool = try(var.ip_pool_config.next_pool, null)
  ranges    = var.ip_pool_config.ranges
}
