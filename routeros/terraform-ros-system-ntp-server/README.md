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
| [routeros_system_ntp_server.server](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/system_ntp_server) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auth_key"></a> [auth\_key](#input\_auth\_key) | NTP symmetric key, used for authentication between the NTP client and server. <br/>    Key Identifier (Key ID) - an integer identifying the cryptographic key used to generate the message-authentication code. | `string` | `null` | no |
| <a name="input_broadcast"></a> [broadcast](#input\_broadcast) | Enable certain NTP server mode, for this mode to work you have to set up broadcast-addresses field. | `bool` | `false` | no |
| <a name="input_broadcast_addresses"></a> [broadcast\_addresses](#input\_broadcast\_addresses) | Set broadcast address to use for NTP server broadcast mode. | `string` | `null` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Enable NTP server. | `bool` | `false` | no |
| <a name="input_local_clock_stratum"></a> [local\_clock\_stratum](#input\_local\_clock\_stratum) | Manually set stratum if use\_local\_clock = true. | `number` | `5` | no |
| <a name="input_manycast"></a> [manycast](#input\_manycast) | Enable certain NTP server mode. | `bool` | `false` | no |
| <a name="input_multicast"></a> [multicast](#input\_multicast) | Enable certain NTP server mode. | `bool` | `false` | no |
| <a name="input_use_local_clock"></a> [use\_local\_clock](#input\_use\_local\_clock) | The server will supply its local system time as valid if others are not available. | `bool` | `false` | no |
| <a name="input_vrf"></a> [vrf](#input\_vrf) | The VRF table this resource operates on. | `string` | `"main"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
<!-- END_TF_DOCS -->