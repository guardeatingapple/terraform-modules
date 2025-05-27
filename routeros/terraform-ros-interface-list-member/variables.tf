variable "interface_list_members_config" {
  type = object({
    name      = string # Название списка (WAN, LAN и т.д.)
    interface = string # Список интерфейсов
    comment   = optional(string)
    disabled  = optional(string)
  })
  description = "Configuration for interface list members"
}
