output "member_ids" {
  value = {
    for member, res in routeros_interface_list_member.list_member :
    member => try(res.id, null) if res != null
  }
  description = "Map of interface members with their IDs"
}
