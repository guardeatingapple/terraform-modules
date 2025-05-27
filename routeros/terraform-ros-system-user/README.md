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
| [routeros_system_user.user](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/system_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_addess"></a> [addess](#input\_addess) | (String) Host or network address from which the user is allowed to log in. | `string` | `null` | no |
| <a name="input_comment"></a> [comment](#input\_comment) | (String) | `string` | `"Managed by terraform"` | no |
| <a name="input_disabled"></a> [disabled](#input\_disabled) | (Boolean) | `bool` | `null` | no |
| <a name="input_group"></a> [group](#input\_group) | (String) Name of the group the user belongs to. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (String) User name. <br/>    Although it must start with an alphanumeric character, <br/>    it may contain '*', '\_', '.' and '@' symbols. | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | (String, Sensitive) User password. <br/>    If not specified, it is left blank (hit [Enter] when logging in).<br/>    It conforms to standard Unix characteristics of passwords and may contain letters, <br/>    digits, '*' and '\_' symbols. | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->