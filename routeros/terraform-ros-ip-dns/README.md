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
| [routeros_dns.dns-server](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/dns) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_list_extra_time"></a> [address\_list\_extra\_time](#input\_address\_list\_extra\_time) | (String) | `string` | `null` | no |
| <a name="input_allow_remote_requests"></a> [allow\_remote\_requests](#input\_allow\_remote\_requests) | (Boolean) Specifies whether to allow network requests. | `bool` | `null` | no |
| <a name="input_cache_max_ttl"></a> [cache\_max\_ttl](#input\_cache\_max\_ttl) | (String) Maximum time-to-live for cache records. <br/>    In other words, cache records will expire unconditionally <br/>    after cache-max-ttl time. <br/>    Shorter TTL received from DNS servers are respected. <br/>    Default: 1w | `string` | `"1w"` | no |
| <a name="input_cache_size"></a> [cache\_size](#input\_cache\_size) | (Number) Specifies the size of DNS cache in KiB (64..4294967295). <br/>    Default: 2048 | `number` | `null` | no |
| <a name="input_doh_max_concurrent_queries"></a> [doh\_max\_concurrent\_queries](#input\_doh\_max\_concurrent\_queries) | (Number) Specifies how many DoH concurrent queries are allowed. | `number` | `null` | no |
| <a name="input_doh_max_server_connections"></a> [doh\_max\_server\_connections](#input\_doh\_max\_server\_connections) | (Number) Specifies how many concurrent connections to the DoH server are allowed. | `number` | `null` | no |
| <a name="input_doh_timeout"></a> [doh\_timeout](#input\_doh\_timeout) | (String) Specifies how long to wait for query response from the DoH server. | `string` | `null` | no |
| <a name="input_max_concurrent_queries"></a> [max\_concurrent\_queries](#input\_max\_concurrent\_queries) | (Number) Specifies how much concurrent queries are allowed. Default: 100 | `number` | `100` | no |
| <a name="input_max_concurrent_tcp_sessions"></a> [max\_concurrent\_tcp\_sessions](#input\_max\_concurrent\_tcp\_sessions) | (Number) Specifies how much concurrent TCP sessions are allowed. Default: 20 | `number` | `20` | no |
| <a name="input_max_udp_packet_size"></a> [max\_udp\_packet\_size](#input\_max\_udp\_packet\_size) | (Number) Maximum size of allowed UDP packet. Default: 4096 | `number` | `4096` | no |
| <a name="input_mdns_repeat_ifaces"></a> [mdns\_repeat\_ifaces](#input\_mdns\_repeat\_ifaces) | (Set of String) An option to enable mDNS repeater on specified interfaces. <br/>    This option is available in RouterOS starting from version 7.16. | `set(string)` | `null` | no |
| <a name="input_query_server_timeout"></a> [query\_server\_timeout](#input\_query\_server\_timeout) | (String) Specifies how long to wait for query response from one server. <br/>    Time can be specified in milliseconds. Default: 2s | `string` | `"2s"` | no |
| <a name="input_servers"></a> [servers](#input\_servers) | (List of String) List of DNS server IPv4/IPv6 addresses. | `list(string)` | `null` | no |
| <a name="input_use_doh_server"></a> [use\_doh\_server](#input\_use\_doh\_server) | (String) DNS over HTTPS (DoH) server URL.<br/>    Mikrotik strongly suggest not use third-party download links for certificate fetching.<br/>    Use the Certificate Authority's own website.<br/>    RouterOS prioritize DoH over DNS server if both are configured on the device. | `string` | `null` | no |
| <a name="input_verify_doh_cert"></a> [verify\_doh\_cert](#input\_verify\_doh\_cert) | (Boolean) DoH certificate verification. See docs. | `bool` | `null` | no |
| <a name="input_vrf"></a> [vrf](#input\_vrf) | (String) The VRF table this resource operates on. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cache_used"></a> [cache\_used](#output\_cache\_used) | n/a |
| <a name="output_dynamic_servers"></a> [dynamic\_servers](#output\_dynamic\_servers) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
<!-- END_TF_DOCS -->