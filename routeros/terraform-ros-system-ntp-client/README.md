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
| [routeros_system_ntp_client.client](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/system_ntp_client) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Enable NTP client. | `bool` | `true` | no |
| <a name="input_mode"></a> [mode](#input\_mode) | Mode that the NTP client will operate in | `string` | `"unicast"` | no |
| <a name="input_servers"></a> [servers](#input\_servers) | (Set of String) The list of NTP servers. It is possible to add static entries.The following formats are accepted:<br/>    FQDN ("Resolved Address" will appear in the "Servers"- window in an appropriate column if the address is resolved) or <br/>    IP address can be used. If DHCP-Client property use-peer-ntp=yes - the dynamic entries advertised by DHCP<br/>    ipv4<br/>    ipv4@vrf<br/>    ipv6<br/>    ipv6@vrf<br/>    ipv6-linklocal%interface | `list(string)` | <pre>[<br/>  "0.ru.pool.ntp.org",<br/>  "1.ru.pool.ntp.org"<br/>]</pre> | no |
| <a name="input_vrf"></a> [vrf](#input\_vrf) | The VRF table this resource operates on. | `string` | `"main"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->