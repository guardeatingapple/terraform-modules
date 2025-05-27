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
| [routeros_interface_list_member.list_member](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/interface_list_member) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_interface_list_members_config"></a> [interface\_list\_members\_config](#input\_interface\_list\_members\_config) | Configuration for interface list members | <pre>object({<br/>    name      = string # Название списка (WAN, LAN и т.д.)<br/>    interface = string # Список интерфейсов<br/>    comment   = optional(string)<br/>    disabled  = optional(string)<br/>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_member_ids"></a> [member\_ids](#output\_member\_ids) | Map of interface members with their IDs |
<!-- END_TF_DOCS -->