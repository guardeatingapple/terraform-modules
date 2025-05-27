<!-- terraform {
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
      version = "1.22.0"
    }
  }
}

provider "fortios" {
  hostname = "<ip>"
  token    = "<token>"
  insecure = "true"
} -->

module "firewall_address" {
  source        = "../modules/terraform-fortios-firewall-address"
  for_each      = { for item in local.firewall_address : item.name => item }
  allow_routing = try(each.value.allow_routing, "disable")
  color         = try(each.value.color, 3)
  comment       = try(each.value.comment, null)
  fqdn          = try(each.value.fqdn, null)
  name          = each.value.name
  subnet        = try(each.value.subnet, null)
  type          = try(each.value.type, "ipmask")
}

locals {
  firewall_address = [
    {
      name   = "1.1.1.1"
      subnet = "1.1.1.1/32"
      color  = 5
    },
    {
      name = "login.microsoftonline.com"
      fqdn = "login.microsoftonline.com"
      type = "fqdn"
    }
  ]
}
