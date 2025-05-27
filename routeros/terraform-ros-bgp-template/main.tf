resource "routeros_routing_bgp_template" "bgp_template" {
  as   = var.as
  name = var.name
}
