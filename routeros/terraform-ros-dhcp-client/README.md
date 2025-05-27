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
| [routeros_ip_dhcp_client.client](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/ip_dhcp_client) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_add_default_route"></a> [add\_default\_route](#input\_add\_default\_route) | (String) Whether to install default route in routing table received from DHCP server. | `string` | `null` | no |
| <a name="input_comment"></a> [comment](#input\_comment) | (String) | `string` | `"Managed by terraform"` | no |
| <a name="input_default_route_distance"></a> [default\_route\_distance](#input\_default\_route\_distance) | (Number) Distance of default route. <br/>    Applicable if add-default-route is set to yes. | `string` | `null` | no |
| <a name="input_dhcp_options"></a> [dhcp\_options](#input\_dhcp\_options) | (String) Options that are sent to the DHCP server. | `string` | `null` | no |
| <a name="input_disabled"></a> [disabled](#input\_disabled) | (Boolean). | `bool` | `null` | no |
| <a name="input_interface"></a> [interface](#input\_interface) | (String) Name of the interface. | `string` | n/a | yes |
| <a name="input_script"></a> [script](#input\_script) | (String) A script. | `string` | `null` | no |
| <a name="input_use_peer_dns"></a> [use\_peer\_dns](#input\_use\_peer\_dns) | (Boolean) Whether to accept the DNS settings advertised <br/>    by DHCP Server (will override the settings put in the /ip dns submenu). | `bool` | `null` | no |
| <a name="input_use_peer_ntp"></a> [use\_peer\_ntp](#input\_use\_peer\_ntp) | (Boolean) Whether to accept the NTP settings advertised <br/>    by DHCP Server (will override the settings put in the /system ntp client submenu). | `bool` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->