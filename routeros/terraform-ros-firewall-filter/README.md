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
| [routeros_ip_firewall_filter.rule](https://registry.terraform.io/providers/terraform-routeros/routeros/1.22.0/docs/resources/ip_firewall_filter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action"></a> [action](#input\_action) | n/a | `string` | n/a | yes |
| <a name="input_address_list"></a> [address\_list](#input\_address\_list) | n/a | `string` | n/a | yes |
| <a name="input_address_list_timeout"></a> [address\_list\_timeout](#input\_address\_list\_timeout) | n/a | `string` | n/a | yes |
| <a name="input_chain"></a> [chain](#input\_chain) | n/a | `string` | n/a | yes |
| <a name="input_comment"></a> [comment](#input\_comment) | n/a | `string` | `"Managed by terraform"` | no |
| <a name="input_connection_bytes"></a> [connection\_bytes](#input\_connection\_bytes) | n/a | `string` | n/a | yes |
| <a name="input_connection_limit"></a> [connection\_limit](#input\_connection\_limit) | n/a | `string` | n/a | yes |
| <a name="input_connection_mark"></a> [connection\_mark](#input\_connection\_mark) | n/a | `string` | n/a | yes |
| <a name="input_connection_rate"></a> [connection\_rate](#input\_connection\_rate) | n/a | `string` | n/a | yes |
| <a name="input_connection_type"></a> [connection\_type](#input\_connection\_type) | n/a | `string` | n/a | yes |
| <a name="input_content"></a> [content](#input\_content) | n/a | `string` | n/a | yes |
| <a name="input_disabled"></a> [disabled](#input\_disabled) | n/a | `string` | n/a | yes |
| <a name="input_dscp"></a> [dscp](#input\_dscp) | n/a | `string` | n/a | yes |
| <a name="input_dst_address"></a> [dst\_address](#input\_dst\_address) | n/a | `string` | n/a | yes |
| <a name="input_dst_address_list"></a> [dst\_address\_list](#input\_dst\_address\_list) | n/a | `string` | n/a | yes |
| <a name="input_dst_address_type"></a> [dst\_address\_type](#input\_dst\_address\_type) | n/a | `string` | n/a | yes |
| <a name="input_dst_limit"></a> [dst\_limit](#input\_dst\_limit) | n/a | `string` | n/a | yes |
| <a name="input_dst_port"></a> [dst\_port](#input\_dst\_port) | n/a | `string` | n/a | yes |
| <a name="input_fragment"></a> [fragment](#input\_fragment) | n/a | `string` | n/a | yes |
| <a name="input_hotspot"></a> [hotspot](#input\_hotspot) | n/a | `string` | n/a | yes |
| <a name="input_icmp_options"></a> [icmp\_options](#input\_icmp\_options) | n/a | `string` | n/a | yes |
| <a name="input_in_bridge_port"></a> [in\_bridge\_port](#input\_in\_bridge\_port) | n/a | `string` | n/a | yes |
| <a name="input_in_bridge_port_list"></a> [in\_bridge\_port\_list](#input\_in\_bridge\_port\_list) | n/a | `string` | n/a | yes |
| <a name="input_in_interface"></a> [in\_interface](#input\_in\_interface) | n/a | `string` | n/a | yes |
| <a name="input_in_interface_list"></a> [in\_interface\_list](#input\_in\_interface\_list) | n/a | `string` | n/a | yes |
| <a name="input_ingress_priority"></a> [ingress\_priority](#input\_ingress\_priority) | n/a | `string` | n/a | yes |
| <a name="input_ipsec_policy"></a> [ipsec\_policy](#input\_ipsec\_policy) | n/a | `string` | n/a | yes |
| <a name="input_ipv4_options"></a> [ipv4\_options](#input\_ipv4\_options) | n/a | `string` | n/a | yes |
| <a name="input_jump_target"></a> [jump\_target](#input\_jump\_target) | n/a | `string` | n/a | yes |
| <a name="input_layer7_protocol"></a> [layer7\_protocol](#input\_layer7\_protocol) | n/a | `string` | n/a | yes |
| <a name="input_limit"></a> [limit](#input\_limit) | n/a | `string` | n/a | yes |
| <a name="input_log"></a> [log](#input\_log) | n/a | `string` | n/a | yes |
| <a name="input_log_prefix"></a> [log\_prefix](#input\_log\_prefix) | n/a | `string` | n/a | yes |
| <a name="input_nth"></a> [nth](#input\_nth) | n/a | `string` | n/a | yes |
| <a name="input_out_bridge_port"></a> [out\_bridge\_port](#input\_out\_bridge\_port) | n/a | `string` | n/a | yes |
| <a name="input_out_bridge_port_list"></a> [out\_bridge\_port\_list](#input\_out\_bridge\_port\_list) | n/a | `string` | n/a | yes |
| <a name="input_out_interface"></a> [out\_interface](#input\_out\_interface) | n/a | `string` | n/a | yes |
| <a name="input_out_interface_list"></a> [out\_interface\_list](#input\_out\_interface\_list) | n/a | `string` | n/a | yes |
| <a name="input_packet_mark"></a> [packet\_mark](#input\_packet\_mark) | n/a | `string` | n/a | yes |
| <a name="input_packet_size"></a> [packet\_size](#input\_packet\_size) | n/a | `string` | n/a | yes |
| <a name="input_per_connection_classifier"></a> [per\_connection\_classifier](#input\_per\_connection\_classifier) | n/a | `string` | n/a | yes |
| <a name="input_place_before"></a> [place\_before](#input\_place\_before) | n/a | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | n/a | `string` | n/a | yes |
| <a name="input_priority"></a> [priority](#input\_priority) | n/a | `string` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | n/a | `string` | n/a | yes |
| <a name="input_psd"></a> [psd](#input\_psd) | n/a | `string` | n/a | yes |
| <a name="input_random"></a> [random](#input\_random) | n/a | `string` | n/a | yes |
| <a name="input_routing_mark"></a> [routing\_mark](#input\_routing\_mark) | n/a | `string` | n/a | yes |
| <a name="input_src_address"></a> [src\_address](#input\_src\_address) | n/a | `string` | n/a | yes |
| <a name="input_src_address_list"></a> [src\_address\_list](#input\_src\_address\_list) | n/a | `string` | n/a | yes |
| <a name="input_src_address_type"></a> [src\_address\_type](#input\_src\_address\_type) | n/a | `string` | n/a | yes |
| <a name="input_src_mac_address"></a> [src\_mac\_address](#input\_src\_mac\_address) | n/a | `string` | n/a | yes |
| <a name="input_src_port"></a> [src\_port](#input\_src\_port) | n/a | `string` | n/a | yes |
| <a name="input_tcp_mss"></a> [tcp\_mss](#input\_tcp\_mss) | n/a | `string` | n/a | yes |
| <a name="input_time"></a> [time](#input\_time) | n/a | `string` | n/a | yes |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rules"></a> [rules](#output\_rules) | n/a |
<!-- END_TF_DOCS -->