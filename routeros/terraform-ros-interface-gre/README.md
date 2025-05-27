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
| [routeros_interface_gre.gre](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/interface_gre) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_fast_path"></a> [allow\_fast\_path](#input\_allow\_fast\_path) | (Boolean) Whether to allow FastPath processing. <br/>    Must be disabled if IPsec tunneling is used. | `bool` | `null` | no |
| <a name="input_clamp_tcp_mss"></a> [clamp\_tcp\_mss](#input\_clamp\_tcp\_mss) | (Boolean) Controls whether to change MSS size for received TCP SYN packets.<br/>     When enabled, a router will change the MSS size for received TCP SYN packets <br/>     if the current MSS size exceeds the tunnel interface MTU (taking into account the TCP/IP overhead). <br/>    The received encapsulated packet will still contain the original MSS, <br/>    and only after decapsulation the MSS is changed. | `bool` | `null` | no |
| <a name="input_comment"></a> [comment](#input\_comment) | (String) | `string` | `"Managed by terraform"` | no |
| <a name="input_disabled"></a> [disabled](#input\_disabled) | (Boolean) | `bool` | `null` | no |
| <a name="input_dont_fragment"></a> [dont\_fragment](#input\_dont\_fragment) | (String) | `string` | `null` | no |
| <a name="input_dscp"></a> [dscp](#input\_dscp) | (String) Set dscp value in GRE header to a fixed value '0..63' <br/>    or 'inherit' from dscp value taken from tunnelled traffic. | `string` | `null` | no |
| <a name="input_ipsec_secret"></a> [ipsec\_secret](#input\_ipsec\_secret) | (String, Sensitive) When secret is specified, <br/>    router adds dynamic IPsec peer to remote-address <br/>    with pre-shared key and policy (by default phase2 uses sha1/aes128cbc). | `string` | `null` | no |
| <a name="input_keepalive"></a> [keepalive](#input\_keepalive) | (String) Tunnel keepalive parameter sets the time interval <br/>    in which the tunnel running flag will remain even if the remote end of tunnel goes down. <br/>    If configured time,retries fail, interface running flag is removed. <br/>    Parameters are written in following format: KeepaliveInterval,<br/>    KeepaliveRetries where KeepaliveInterval is time interval and KeepaliveRetries - <br/>    number of retry attempts. KeepaliveInterval is integer 0..4294967295. | `string` | `null` | no |
| <a name="input_local_address"></a> [local\_address](#input\_local\_address) | (String) Source address of the tunnel packets, local on the router. | `string` | `null` | no |
| <a name="input_mtu"></a> [mtu](#input\_mtu) | (String) Layer3 Maximum transmission unit ('auto', 0 .. 65535). | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (String) Changing the name of this resource will force it to be recreated. <br/>    The links of other configuration properties to this resource may be lost! <br/>    Changing the name of the resource outside of a Terraform will result in <br/>    a loss of control integrity for that resource! | `string` | n/a | yes |
| <a name="input_remote_address"></a> [remote\_address](#input\_remote\_address) | (String) IP address of the remote end of the tunnel. | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->