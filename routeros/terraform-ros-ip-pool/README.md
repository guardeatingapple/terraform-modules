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
| [routeros_ip_pool.pool](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/ip_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ip_pool_config"></a> [ip\_pool\_config](#input\_ip\_pool\_config) | n/a | <pre>object({<br/>    comment   = optional(string)<br/>    name      = string<br/>    next_pool = optional(string)<br/>    ranges    = list(string)<br/>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->