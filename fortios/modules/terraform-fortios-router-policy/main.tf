resource "fortios_router_policy" "policy_route" {
  action = var.action
  #   dstaddr       = var.dstaddr
  #   dst           = var.dst
  #  dynamic "dst" {
  #    for_each = var.dst_subnets != null ? [1] : []
  #    content {
  #      subnet = var.dst_subnets
  #    }
  #  }

  dynamic "srcaddr" {
    for_each = var.srcaddreses != null ? var.srcaddreses : []
    content {
      name = srcaddr.value
    }
  }

  dynamic "dstaddr" {
    for_each = var.dstaddreses != null ? var.dstaddreses : []
    content {
      name = dstaddr.value
    }
  }

  dynamic "input_device" {
    for_each = var.in_interface != null ? var.in_interface : []
    content {
      name = input_device.value
    }
  }


  gateway       = var.gateway
  output_device = var.output_device
  seq_num       = var.seq_num
  status        = var.status
  tos           = var.tos
  tos_mask      = var.tos_mask

}
