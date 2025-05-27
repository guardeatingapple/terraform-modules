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
| [routeros_ovpn_server.server](https://registry.terraform.io/providers/terraform-routeros/routeros/1.22.0/docs/resources/ovpn_server) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auth"></a> [auth](#input\_auth) | n/a | `string` | n/a | yes |
| <a name="input_certificate"></a> [certificate](#input\_certificate) | n/a | `string` | n/a | yes |
| <a name="input_cipher"></a> [cipher](#input\_cipher) | n/a | `string` | n/a | yes |
| <a name="input_default_profile"></a> [default\_profile](#input\_default\_profile) | n/a | `string` | n/a | yes |
| <a name="input_enable_tun_ipv6"></a> [enable\_tun\_ipv6](#input\_enable\_tun\_ipv6) | n/a | `bool` | n/a | yes |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_ipv6_prefix_len"></a> [ipv6\_prefix\_len](#input\_ipv6\_prefix\_len) | n/a | `number` | n/a | yes |
| <a name="input_keepalive_timeout"></a> [keepalive\_timeout](#input\_keepalive\_timeout) | n/a | `string` | n/a | yes |
| <a name="input_mac_address"></a> [mac\_address](#input\_mac\_address) | n/a | `string` | n/a | yes |
| <a name="input_max_mtu"></a> [max\_mtu](#input\_max\_mtu) | n/a | `number` | n/a | yes |
| <a name="input_mode"></a> [mode](#input\_mode) | n/a | `string` | n/a | yes |
| <a name="input_netmask"></a> [netmask](#input\_netmask) | n/a | `number` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | n/a | `number` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | n/a | `string` | n/a | yes |
| <a name="input_redirect_gateway"></a> [redirect\_gateway](#input\_redirect\_gateway) | n/a | `string` | n/a | yes |
| <a name="input_require_client_certificate"></a> [require\_client\_certificate](#input\_require\_client\_certificate) | n/a | `bool` | n/a | yes |
| <a name="input_tls_version"></a> [tls\_version](#input\_tls\_version) | n/a | `string` | n/a | yes |
| <a name="input_tun_server_ipv6"></a> [tun\_server\_ipv6](#input\_tun\_server\_ipv6) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->