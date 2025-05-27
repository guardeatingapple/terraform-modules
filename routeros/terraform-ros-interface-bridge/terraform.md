<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_routeros"></a> [routeros](#requirement\_routeros) | >=1.83.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_routeros"></a> [routeros](#provider\_routeros) | >=1.83.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [routeros_interface_bridge.bridge](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/interface_bridge) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bridge_config"></a> [bridge\_config](#input\_bridge\_config) | n/a | <pre>object({<br/>    add_dhcp_option82          = optional(bool)<br/>    admin_mac                  = optional(string)<br/>    ageing_time                = optional(string)<br/>    arp                        = optional(string)<br/>    arp_timeout                = optional(string)<br/>    auto_mac                   = optional(bool)<br/>    comment                    = optional(string)<br/>    dhcp_snooping              = optional(bool)<br/>    disabled                   = optional(bool)<br/>    ether_type                 = optional(string)<br/>    fast_forward               = optional(bool)<br/>    forward_delay              = optional(string)<br/>    forward_reserved_addresses = optional(bool)<br/>    frame_types                = optional(string)<br/>    igmp_snooping              = optional(bool)<br/>    igmp_version               = optional(number)<br/>    ingress_filtering          = optional(bool)<br/>    last_member_interval       = optional(string)<br/>    last_member_query_count    = optional(number)<br/>    max_hops                   = optional(number)<br/>    max_learned_entries        = optional(string)<br/>    max_message_age            = optional(string)<br/>    membership_interval        = optional(string)<br/>    mld_version                = optional(number)<br/>    mtu                        = optional(string)<br/>    multicast_querier          = optional(bool)<br/>    multicast_router           = optional(string)<br/>    mvrp                       = optional(bool)<br/>    name                       = string<br/>    port_cost_mode             = optional(string)<br/>    priority                   = optional(string)<br/>    protocol_mode              = optional(string)<br/>    pvid                       = optional(number)<br/>    querier_interval           = optional(string)<br/>    query_interval             = optional(string)<br/>    query_response_interval    = optional(string)<br/>    region_name                = optional(string)<br/>    region_revision            = optional(number)<br/>    startup_query_count        = optional(string)<br/>    startup_query_interval     = optional(string)<br/>    transmit_hold_count        = optional(number)<br/>    vlan_filtering             = optional(bool)<br/>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->