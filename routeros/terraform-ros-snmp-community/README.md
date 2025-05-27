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
| [routeros_snmp_community.community](https://registry.terraform.io/providers/terraform-routeros/routeros/latest/docs/resources/snmp_community) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_addresses"></a> [addresses](#input\_addresses) | (Set of String) Set of IP (v4 or v6) addresses or CIDR networks <br/>    from which connections to SNMP server are allowed. | `string` | `null` | no |
| <a name="input_authentication_password"></a> [authentication\_password](#input\_authentication\_password) | (String, Sensitive) Password used to authenticate the connection to the server (SNMPv3). | `string` | `null` | no |
| <a name="input_authentication_protocol"></a> [authentication\_protocol](#input\_authentication\_protocol) | (String) The protocol used for authentication (SNMPv3). | `string` | `null` | no |
| <a name="input_comment"></a> [comment](#input\_comment) | (String) | `string` | `"Managed by terraform"` | no |
| <a name="input_disabled"></a> [disabled](#input\_disabled) | (Boolen) | `bool` | `null` | no |
| <a name="input_encryption_password"></a> [encryption\_password](#input\_encryption\_password) | (String, Sensitive) The password used for encryption (SNMPv3). | `string` | `null` | no |
| <a name="input_encryption_protocol"></a> [encryption\_protocol](#input\_encryption\_protocol) | (String) encryption protocol to be used to encrypt the communication (SNMPv3). <br/>    AES (see rfc3826) available since v6.16. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (String) Community Name. | `string` | `null` | no |
| <a name="input_read_access"></a> [read\_access](#input\_read\_access) | (Boolean) Whether read access is enabled for this community. | `bool` | `null` | no |
| <a name="input_security"></a> [security](#input\_security) | (String) Security features. | `string` | `null` | no |
| <a name="input_write_access"></a> [write\_access](#input\_write\_access) | (Boolean) Whether write access is enabled for this community. | `bool` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->