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
| [routeros_ip_dns_record.dns_record](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/ip_dns_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address"></a> [address](#input\_address) | (String) The A record to be returend from the DNS hostname. | `string` | `null` | no |
| <a name="input_address_list"></a> [address\_list](#input\_address\_list) | (String) Name of the Firewall address list to which address <br/>     must be dynamically added when some request matches the entry. | `string` | `null` | no |
| <a name="input_cname"></a> [cname](#input\_cname) | (String) Alias name for a domain name. | `string` | `null` | no |
| <a name="input_comment"></a> [comment](#input\_comment) | (String) | `string` | `"Managed by terraform"` | no |
| <a name="input_disabled"></a> [disabled](#input\_disabled) | (Boolean) | `string` | `null` | no |
| <a name="input_forward_to"></a> [forward\_to](#input\_forward\_to) | (String) The IP address of a domain name server to which a particular DNS request must be forwarded. | `string` | `null` | no |
| <a name="input_match_subdomain"></a> [match\_subdomain](#input\_match\_subdomain) | (Boolean) Whether the record will match requests for subdomains. | `string` | `null` | no |
| <a name="input_mx_exchange"></a> [mx\_exchange](#input\_mx\_exchange) | (String) The domain name of the MX server. | `string` | `null` | no |
| <a name="input_mx_preference"></a> [mx\_preference](#input\_mx\_preference) | (Number) Preference of the particular MX record. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (String) The name of the DNS hostname to be created. | `string` | `null` | no |
| <a name="input_ns"></a> [ns](#input\_ns) | (String) Name of the authoritative domain name server for the particular record. | `string` | `null` | no |
| <a name="input_regexp"></a> [regexp](#input\_regexp) | (String) DNS regexp. Regexp entries are case sensitive, <br/>    but since DNS requests are not case sensitive, <br/>    RouterOS converts DNS names to lowercase, <br/>    you should write regex only with lowercase letters. | `string` | `null` | no |
| <a name="input_srv_port"></a> [srv\_port](#input\_srv\_port) | (Number) The TCP or UDP port on which the service is to be found. | `string` | `null` | no |
| <a name="input_srv_priority"></a> [srv\_priority](#input\_srv\_priority) | (Number) Priority of the particular SRV record. | `string` | `null` | no |
| <a name="input_srv_target"></a> [srv\_target](#input\_srv\_target) | (String) The canonical hostname of the machine providing the service ends in a dot. | `string` | `null` | no |
| <a name="input_srv_weight"></a> [srv\_weight](#input\_srv\_weight) | (String) Weight of the particular SRC record. | `string` | `null` | no |
| <a name="input_text"></a> [text](#input\_text) | (String) Textual information about the domain name. | `string` | `null` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | (String) The ttl of the DNS record. | `string` | `null` | no |
| <a name="input_type"></a> [type](#input\_type) | (String) Type of the DNS record. <br/>    Available values are: A, AAAA, CNAME, FWD, MX, NS, NXDOMAIN, SRV, TXT | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->