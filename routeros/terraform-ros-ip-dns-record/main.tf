resource "routeros_ip_dns_record" "dns_record" {
  address         = var.address
  address_list    = var.address_list
  cname           = var.cname
  comment         = var.comment
  disabled        = var.disabled
  forward_to      = var.forward_to
  match_subdomain = var.match_subdomain
  mx_exchange     = var.mx_exchange
  mx_preference   = var.mx_preference
  name            = var.name
  ns              = var.ns
  regexp          = var.regexp
  srv_port        = var.srv_port
  srv_priority    = var.srv_priority
  srv_target      = var.srv_target
  srv_weight      = var.srv_weight
  text            = var.text
  ttl             = var.ttl
  type            = var.type
}
