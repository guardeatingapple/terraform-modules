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
| [routeros_ip_route.route](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/ip_route) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ip_route_config"></a> [ip\_route\_config](#input\_ip\_route\_config) | n/a | <pre>object({<br/>    blackhole           = optional(bool)<br/>    check_gateway       = optional(string)<br/>    comment             = optional(string)<br/>    disabled            = optional(bool)<br/>    distance            = optional(number)<br/>    dst_address         = optional(string)<br/>    gateway             = string<br/>    pref_src            = optional(string)<br/>    routing_table       = optional(string)<br/>    scope               = optional(string)<br/>    suppress_hw_offload = optional(bool)<br/>    target_scope        = optional(number)<br/>    vrf_interface       = optional(string)<br/>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->