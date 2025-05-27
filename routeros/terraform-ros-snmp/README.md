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
| [routeros_snmp.snmp](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/snmp) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_contact"></a> [contact](#input\_contact) | (String) Contact information. | `string` | `null` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | (Boolean) Used to disable/enable SNMP service | `bool` | `null` | no |
| <a name="input_engine_id_suffix"></a> [engine\_id\_suffix](#input\_engine\_id\_suffix) | (String) Unique identifier for an SNMPv3 engine by configuring the suffix of the engine ID. | `string` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | (String) Location information. | `string` | `null` | no |
| <a name="input_src_address"></a> [src\_address](#input\_src\_address) | (String) Force the router to always use the same IP source address for all of the SNMP messages. | `string` | `null` | no |
| <a name="input_trap_community"></a> [trap\_community](#input\_trap\_community) | (String, Sensitive) Which communities configured in community menu to use when sending out the trap. <br/>    This name must be present in the community list. | `string` | `null` | no |
| <a name="input_trap_generators"></a> [trap\_generators](#input\_trap\_generators) | (String) What action will generate traps: interfaces - interface changes; <br/>    start-trap - snmp server starting on the router. | `string` | `null` | no |
| <a name="input_trap_interfaces"></a> [trap\_interfaces](#input\_trap\_interfaces) | (String) List of interfaces that traps are going to be sent out. | `string` | `null` | no |
| <a name="input_trap_target"></a> [trap\_target](#input\_trap\_target) | (Set of String) IP (IPv4 or IPv6) addresses of SNMP data collectors that have to receive the trap. | `set(string)` | `null` | no |
| <a name="input_trap_version"></a> [trap\_version](#input\_trap\_version) | (Number) Version of SNMP protocol to use for trap. | `number` | `null` | no |
| <a name="input_vrf"></a> [vrf](#input\_vrf) | (String) The VRF table this resource operates on. | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->