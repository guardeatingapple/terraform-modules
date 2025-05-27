<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_routeros"></a> [routeros](#requirement\_routeros) | 1.22.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_routeros"></a> [routeros](#provider\_routeros) | 1.22.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [routeros_interface_ovpn_server.bind](https://registry.terraform.io/providers/terraform-routeros/routeros/1.22.0/docs/resources/interface_ovpn_server) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_comment"></a> [comment](#input\_comment) | n/a | `string` | `"Managed by terraform"` | no |
| <a name="input_disabled"></a> [disabled](#input\_disabled) | n/a | `bool` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_user"></a> [user](#input\_user) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->