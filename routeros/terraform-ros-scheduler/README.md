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
| [routeros_system_scheduler.schedule](https://registry.terraform.io/providers/terraform-routeros/routeros/1.22.0/docs/resources/system_scheduler) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_comment"></a> [comment](#input\_comment) | n/a | `string` | `"Managed by terraform"` | no |
| <a name="input_disabled"></a> [disabled](#input\_disabled) | n/a | `bool` | n/a | yes |
| <a name="input_interval"></a> [interval](#input\_interval) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_on_event"></a> [on\_event](#input\_on\_event) | n/a | `string` | n/a | yes |
| <a name="input_policy"></a> [policy](#input\_policy) | n/a | `list(string)` | n/a | yes |
| <a name="input_start_date"></a> [start\_date](#input\_start\_date) | n/a | `string` | n/a | yes |
| <a name="input_start_time"></a> [start\_time](#input\_start\_time) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->