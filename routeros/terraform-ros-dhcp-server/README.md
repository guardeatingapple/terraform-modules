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
| [routeros_ip_dhcp_server.server](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/ip_dhcp_server) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dhcp_server_config"></a> [dhcp\_server\_config](#input\_dhcp\_server\_config) | n/a | <pre>object(<br/>    {<br/>      # @description Whether to add dynamic ARP entry.<br/>      add_arp = optional(string)<br/>      /* @description <br/>      IP pool, from which to take IP addresses for the clients. <br/>      If set to static-only, then only the clients that have a static lease <br/>      (added in lease submenu) will be allowed.<br/>      */<br/>      address_pool = optional(string)<br/>      /* @description <br/>      Creates a single simple queue entry for both IPv4 and IPv6 addresses, <br/>    uses the MAC address and DUID for identification. Requires IPv6 DHCP Server to <br/>    have this option enabled as well to work properly.<br/>    */<br/>      allow_dual_stack_queue = optional(bool)<br/>      # @description Always send replies as broadcasts even if destination IP is known.<br/>      always_broadcast = optional(bool)<br/>      # @description Option changes the way how a server responds to DHCP requests.<br/>      authoritative = optional(string)<br/>      /* @description <br/>      Accepts two predefined options or time value: * forever - <br/>    lease never expires * lease-time - use time from lease-time parameter.<br/>    */<br/>      bootp_lease_time = optional(string)<br/>      # @description Support for BOOTP clients.<br/>      bootp_support = optional(string)<br/>      # @description Specifies whether to limit specific number of clients per single MAC address.<br/>      client_mac_limit = optional(number)<br/>      # @description (String).<br/>      comment = optional(string)<br/>      /* @description Allows to disable/enable conflict detection. <br/>    If option is enabled, then whenever server tries to assign <br/>    a lease it will send ICMP and ARP messages to detect whether <br/>    such address in the network already exist. If any of above get <br/>    reply address is considered already used. Conflict detection <br/>    must be disabled when any kind of DHCP client limitation per port or per mac is used.<br/>    */<br/>      conflict_detection = optional(string)<br/>      /* @description If secs field in DHCP packet is smaller than delay-threshold, <br/>    then this packet is ignored. If set to none - there is no threshold <br/>    (all DHCP packets are processed).<br/>    */<br/>      delay_threshold = optional(string)<br/>      # @description Use custom set of DHCP options defined in option sets menu.<br/>      dhcp_option_set = optional(string)<br/>      # @description (Boolean).<br/>      disabled = optional(string)<br/>      # @description Name of the interface.<br/>      interface = string<br/>      # @description Specify where to place dynamic simple queue entries for static DCHP leases with rate-limit parameter set.<br/>      insert_queue_before = optional(string)<br/>      # @description A script that will be executed after a lease is assigned or de-assigned.<br/>      lease_script = optional(string)<br/>      /* @description The time that a client may use the assigned address. <br/>    The client will try to renew this address after half of <br/>    this time and will request a new address after the time limit expires.<br/>    */<br/>      lease_time = optional(string)<br/>      /* @description Changing the name of this resource will force it to be recreated. <br/>    The links of other configuration properties to this resource may be lost! <br/>    Changing the name of the resource outside of a Terraform will result in <br/>    a loss of control integrity for that resource!<br/>    */<br/>      name = string<br/>      # @description (String).<br/>      parent_queue = optional(string)<br/>      # @description The IP address of the relay this DHCP server.<br/>      relay = optional(string)<br/>      # @description The address which the DHCP client must send requests to in order to renew an IP address lease.<br/>      src_address = optional(string)<br/>      # @description Forward RADIUS Framed-Route as a DHCP Classless-Static-Route to DHCP-client.<br/>      use_framed_as_classless = optional(string)<br/>      # @description Whether to use RADIUS server.<br/>      use_radius = optional(string)<br/>    }<br/>  )</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Module usage
```
module "dhcp_server" {
  source         = "gitlab.ecom.tech/computeandnetwork/terraform-ros-dhcp-server/local"
  version        = "X.X.X"
  for_each       = { for item in local.dhcp_server : item.name => item }
  ip_pool_config = each.value
  depends_on = [
    module.identity,
    module.ethernet,
    module.bridges,
    module.ip_pool,
    module.ip_address
  ]
}

locals {
    dhcp_server = [
        {
            name      = "dhcp1"
            interface = "bridge1"
        },
        {
            name      = "dhcp2"
            interface = "bridge2"
        }
    ]
}
```
