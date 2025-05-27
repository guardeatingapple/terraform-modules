variable "interface_list_config" {
  type = object({
    # @description (String)
    comment = optional(string)
    # @description (String)
    exclude = optional(string)
    # @description (String)
    include = optional(string)
    /*
    @description (String) Changing the name of this resource will force it to be recreated. 
    The links of other configuration properties to this resource may be lost! 
    Changing the name of the resource outside of a Terraform will result in 
    a loss of control integrity for that resource!
     */
    name = string
  })
}
