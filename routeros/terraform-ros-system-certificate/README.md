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
| [routeros_system_certificate.ca](https://registry.terraform.io/providers/terraform-routeros/routeros/1.22.0/docs/resources/system_certificate) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ca"></a> [ca](#input\_ca) | n/a | `string` | n/a | yes |
| <a name="input_ca_crl_host"></a> [ca\_crl\_host](#input\_ca\_crl\_host) | n/a | `string` | n/a | yes |
| <a name="input_common_name"></a> [common\_name](#input\_common\_name) | n/a | `string` | n/a | yes |
| <a name="input_copy_from"></a> [copy\_from](#input\_copy\_from) | n/a | `string` | n/a | yes |
| <a name="input_country"></a> [country](#input\_country) | n/a | `string` | n/a | yes |
| <a name="input_days_valid"></a> [days\_valid](#input\_days\_valid) | n/a | `number` | n/a | yes |
| <a name="input_key_size"></a> [key\_size](#input\_key\_size) | n/a | `string` | n/a | yes |
| <a name="input_key_usage"></a> [key\_usage](#input\_key\_usage) | n/a | `set(string)` | n/a | yes |
| <a name="input_locality"></a> [locality](#input\_locality) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | n/a | `string` | n/a | yes |
| <a name="input_state"></a> [state](#input\_state) | n/a | `string` | n/a | yes |
| <a name="input_subject_alt_name"></a> [subject\_alt\_name](#input\_subject\_alt\_name) | n/a | `string` | n/a | yes |
| <a name="input_trusted"></a> [trusted](#input\_trusted) | n/a | `bool` | n/a | yes |
| <a name="input_unit"></a> [unit](#input\_unit) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->