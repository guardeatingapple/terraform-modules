## Usage example
```
module "dnsdbbase" {
  source             = "../terraform-fortios-system-dnsdatabase"
  dnsdatabase_config = local.dns_zones
}

locals {
  dns_zones = [
    {
      name          = "example.com" # Должно быть уникальным для каждой зоны
      authoritative = "disable"
      contact       = "host"
      forwarder     = "\"192.168.0.9\" "
      ttl           = 900
      type          = "primary"
      view          = "shadow"

      dns_entry = [
        {
          hostname = "api.releases"
          ip       = "18.238.243.125"
          status   = "enable"
          ttl      = 0
          type     = "A"
        },
        {
          hostname = "releases"
          ip       = "3.164.230.90"
          status   = "enable"
          ttl      = 0
          type     = "A"
        }
      ]
    }
  ]
}
```