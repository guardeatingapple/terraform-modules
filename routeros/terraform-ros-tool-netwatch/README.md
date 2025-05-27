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
| [routeros_tool_netwach.netwatch](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/tool_netwach) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_netwatch_config"></a> [netwatch\_config](#input\_netwatch\_config) | n/a | <pre>object({<br/>    accept_icmp_time_exceeded = optional(bool)<br/>    comment                   = optional(string)<br/>    disabled                  = optional(bool)<br/>    dns_server                = optional(string)<br/>    down_script               = optional(string)<br/>    http_code_max             = optional(number)<br/>    http_code_min             = optional(number)<br/>    host                      = string<br/>    interval                  = optional(string)<br/>    name                      = string<br/>    packet_count              = optional(number)<br/>    packet_interval           = optional(string)<br/>    packet_size               = optional(number)<br/>    port                      = optional(number)<br/>    record_type               = optional(string)<br/>    src_address               = optional(string)<br/>    start_delay               = optional(string)<br/>    startup_delay             = optional(string)<br/>    test_script               = optional(string)<br/>    thr_avg                   = optional(string)<br/>    thr_http_time             = optional(string)<br/>    thr_jitter                = optional(string)<br/>    thr_loss_count            = optional(number)<br/>    thr_loss_percent          = optional(number)<br/>    thr_max                   = optional(string)<br/>    thr_stdev                 = optional(string)<br/>    thr_tcp_conn_time         = optional(string)<br/>    timeout                   = optional(string)<br/>    ttl                       = optional(number)<br/>    type                      = optional(string)<br/>    up_script                 = optional(string)<br/>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->