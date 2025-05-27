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
| [routeros_ip_address.address](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/ip_address) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ip_address_config"></a> [ip\_address\_config](#input\_ip\_address\_config) | Configuration for ip address | <pre>object({<br/>    address   = string<br/>    comment   = optional(string)<br/>    disabled  = optional(bool)<br/>    interface = string<br/>    network   = optional(string)<br/>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->