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
| [routeros_interface_bridge_port.bridge_port](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/interface_bridge_port) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bridge_port_config"></a> [bridge\_port\_config](#input\_bridge\_port\_config) | n/a | <pre>object({<br/>    auto_isolate            = optional(bool)<br/>    bpdu_guard              = optional(bool)<br/>    bridge                  = string<br/>    broadcast_flood         = optional(bool)<br/>    comment                 = optional(string)<br/>    disabled                = optional(bool)<br/>    edge                    = optional(string)<br/>    fast_leave              = optional(bool)<br/>    frame_types             = optional(string)<br/>    horizon                 = optional(string)<br/>    hw                      = optional(bool)<br/>    ingress_filtering       = optional(bool)<br/>    interface               = string<br/>    internal_path_cost      = optional(number)<br/>    learn                   = optional(string)<br/>    multicast_router        = optional(string)<br/>    mvrp_applicant_state    = optional(string)<br/>    mvrp_registrar_state    = optional(string)<br/>    path_cost               = optional(string)<br/>    point_to_point          = optional(string)<br/>    priority                = optional(string)<br/>    pvid                    = optional(number)<br/>    restricted_role         = optional(bool)<br/>    restricted_tcn          = optional(bool)<br/>    tag_stacking            = optional(bool)<br/>    trusted                 = optional(bool)<br/>    unknown_multicast_flood = optional(bool)<br/>    unknown_unicast_flood   = optional(bool)<br/>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->