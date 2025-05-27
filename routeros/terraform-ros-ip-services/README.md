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
| [routeros_ip_service.ip_service](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/ip_service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ip_service_config"></a> [ip\_service\_config](#input\_ip\_service\_config) | n/a | <pre>object({<br/>    address      = optional(string)<br/>    certificate  = optional(string)<br/>    disabled     = optional(bool)<br/>    max_sessions = optional(number)<br/>    numbers      = string<br/>    port         = number<br/>    tls_version  = optional(string)<br/>    vrf          = optional(string)<br/>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Module usage
```
module "ip_services" {
  source         = "gitlab.ecom.tech/computeandnetwork/terraform-ros-ip-services/local"
  version        = "X.X.X"
  for_each       = { for item in local.ip_services : item.name => item }
  ip_services_config = each.value
  depends_on = [
    module.identity,
    module.ethernet,
    module.bridges,
    module.ip_pool,
    module.ip_address
  ]
}

locals {
    ip_services = [
        {
            numbers      = "www"
            port         = 80
            disabled     = true
        },
        {
            numbers      = "api"
            port         = 8728
            address      = "10.0.0.0/8"
        }
    ]
}
```