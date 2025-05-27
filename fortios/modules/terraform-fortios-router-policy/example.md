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


module "fortios_router_policy" {
  source        = "../modules/terraform-fortios-router-policy"
  for_each      = { for item in local.fortios_router_policy : item.seq_num => item }
  action        = try(each.value.action, "permit")
  seq_num       = try(each.value.seq_num, null)
  srcaddreses   = try(each.value.srcaddr_name, null)
  dstaddreses   = try(each.value.dstaddr_names, null)
  gateway       = try(each.value.gateway, "0.0.0.0")
  output_device = try(each.value.output_device, null)
  status        = try(each.value.status, "enable")
  in_interface  = try(each.value.in_interface, null)
}


locals {
  fortios_router_policy = [
    {
      in_interface = [
        "internal"  
      ]
      action  = "permit"
      seq_num = "10"
      dstaddr_names = [
        "login.microsoftonline.com"
      ]
      gateway = "<ip>"
      status  = "enable"
    }

  ]
}
