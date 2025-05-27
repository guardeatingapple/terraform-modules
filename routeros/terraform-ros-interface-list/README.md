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
| [routeros_interface_list.list](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/interface_list) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_interface_list_config"></a> [interface\_list\_config](#input\_interface\_list\_config) | n/a | <pre>object({<br/>    # @description (String)<br/>    comment = optional(string)<br/>    # @description (String)<br/>    exclude = optional(string)<br/>    # @description (String)<br/>    include = optional(string)<br/>    /*<br/>    @description (String) Changing the name of this resource will force it to be recreated. <br/>    The links of other configuration properties to this resource may be lost! <br/>    Changing the name of the resource outside of a Terraform will result in <br/>    a loss of control integrity for that resource!<br/>     */<br/>    name = string<br/>  })</pre> | n/a | yes |
| <a name="input_logical_name"></a> [logical\_name](#input\_logical\_name) | Logical name of the interfaces list. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->