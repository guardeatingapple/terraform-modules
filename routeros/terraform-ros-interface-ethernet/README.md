### Использование
```
module "ethernet" {
    source = ..
  for_each = local.ethernet_ports
  interface_config = merge(
    { factory_name = each.key }, # Добавляем ключ как name
    each.value                   # Оригинальные значения
  )
  logical_name = each.key
}

locals {
  ethernet_ports = {
    ether1 = {
      name    = "ethe1"
      comment = "Managed by Terraform"
    },
    ether2 = {
      name    = "ether2"
      comment = "Test comment"
    }
  }
}
```
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_routeros"></a> [routeros](#requirement\_routeros) | >=1.76.7 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_routeros"></a> [routeros](#provider\_routeros) | >=1.76.7 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [routeros_interface_ethernet.ethernet](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/interface_ethernet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_interface_config"></a> [interface\_config](#input\_interface\_config) | n/a | <pre>object({<br/>    advertise                  = optional(string)<br/>    arp                        = optional(string)<br/>    arp_timeout                = optional(string)<br/>    auto_negotiation           = optional(bool)<br/>    bandwidth                  = optional(string)<br/>    cable_settings             = optional(string)<br/>    combo_mode                 = optional(string)<br/>    comment                    = optional(string)<br/>    disable_running_check      = optional(bool)<br/>    disabled                   = optional(bool)<br/>    factory_name               = string<br/>    fec_mode                   = optional(string)<br/>    full_duplex                = optional(string)<br/>    l2mtu                      = optional(string)<br/>    loop_protect               = optional(string)<br/>    loop_protect_disable_time  = optional(string)<br/>    loop_protect_send_interval = optional(string)<br/>    mac_address                = optional(string)<br/>    mdix_enable                = optional(string)<br/>    mtu                        = optional(string)<br/>    name                       = string<br/>    poe_lldp_enabled           = optional(string)<br/>    poe_out                    = optional(string)<br/>    poe_priority               = optional(string)<br/>    poe_voltage                = optional(string)<br/>    power_cycle_interval       = optional(string)<br/>    power_cycle_ping_address   = optional(string)<br/>    power_cycle_ping_enabled   = optional(string)<br/>    power_cycle_ping_timeout   = optional(string)<br/>    rx_flow_control            = optional(string)<br/>    sfp_ignore_rx_los          = optional(string)<br/>    sfp_rate_select            = optional(string)<br/>    sfp_shutdown_temperature   = optional(string)<br/>    speed                      = optional(string)<br/>    tx_flow_control            = optional(string)<br/>  })</pre> | n/a | yes |
| <a name="input_logical_name"></a> [logical\_name](#input\_logical\_name) | Logical name of the interface (wan1, wan2, etc.) | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->