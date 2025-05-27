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
| [routeros_ip_dhcp_server_network.dhcp_server_network](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/ip_dhcp_server_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dhcp_server_network_config"></a> [dhcp\_server\_network\_config](#input\_dhcp\_server\_network\_config) | n/a | <pre>object({<br/>    address         = string<br/>    boot_file_name  = optional(string)<br/>    caps_manager    = optional(list(string))<br/>    comment         = optional(string)<br/>    dhcp_option     = optional(list(string))<br/>    dhcp_option_set = optional(string)<br/>    dns_none        = optional(bool)<br/>    dns_server      = optional(list(string))<br/>    domain          = optional(string)<br/>    gateway         = optional(string)<br/>    netmask         = optional(number)<br/>    next_server     = optional(string)<br/>    ntp_server      = optional(list(string))<br/>    wins_server     = optional(list(string))<br/>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->