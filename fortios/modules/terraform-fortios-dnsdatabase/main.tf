resource "fortios_system_dnsdatabase" "dns_zone" {
  for_each = { for db in var.dnsdatabase_config : db.name => db }

  name                    = each.value.name
  domain                  = each.value.name # Теперь domain всегда равен name
  status                  = each.value.status
  allow_transfer          = each.value.allow_transfer
  type                    = each.value.type
  view                    = each.value.view
  ip_primary              = each.value.ip_primary
  ip_master               = each.value.ip_master
  primary_name            = each.value.primary_name
  contact                 = each.value.contact
  ttl                     = each.value.ttl
  authoritative           = each.value.authoritative
  forwarder               = each.value.forwarder
  forwarder6              = each.value.forwarder6
  source_ip               = each.value.source_ip
  source_ip6              = each.value.source_ip6
  source_ip_interface     = each.value.source_ip_interface
  rr_max                  = each.value.rr_max
  interface_select_method = each.value.interface_select_method
  interface               = each.value.interface
  vrf_select              = each.value.vrf_select
  dynamic_sort_subtable   = each.value.dynamic_sort_subtable
  get_all_tables          = each.value.get_all_tables
  vdomparam               = each.value.vdomparam

  dynamic "dns_entry" {
    for_each = each.value.dns_entry != null ? each.value.dns_entry : []

    content {
      id             = dns_entry.value.id
      status         = dns_entry.value.status
      type           = dns_entry.value.type
      ttl            = dns_entry.value.ttl
      preference     = dns_entry.value.preference
      ip             = dns_entry.value.ip
      ipv6           = dns_entry.value.ipv6
      hostname       = dns_entry.value.hostname
      canonical_name = dns_entry.value.canonical_name
    }
  }
}