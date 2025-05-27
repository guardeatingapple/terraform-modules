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
| [routeros_tool_mac_server.mac_server](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/tool_mac_server) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_interface_list"></a> [allowed\_interface\_list](#input\_allowed\_interface\_list) | List of interfaces for MAC Telnet access. | `string` | `"all"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->