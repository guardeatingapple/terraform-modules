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
| [routeros_ip_firewall_addr_list.list](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/ip_firewall_addr_list) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ip_firewall_addr_list_config"></a> [ip\_firewall\_addr\_list\_config](#input\_ip\_firewall\_addr\_list\_config) | n/a | <pre>object({<br/>    address  = string<br/>    comment  = optional(string)<br/>    disabled = optional(bool)<br/>    list     = string<br/>    timeout  = optional(string)<br/>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->