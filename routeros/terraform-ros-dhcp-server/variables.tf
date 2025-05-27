variable "dhcp_server_config" {
  type = object(
    {
      # @description Whether to add dynamic ARP entry.
      add_arp = optional(string)
      /* @description 
      IP pool, from which to take IP addresses for the clients. 
      If set to static-only, then only the clients that have a static lease 
      (added in lease submenu) will be allowed.
      */
      address_pool = optional(string)
      /* @description 
      Creates a single simple queue entry for both IPv4 and IPv6 addresses, 
    uses the MAC address and DUID for identification. Requires IPv6 DHCP Server to 
    have this option enabled as well to work properly.
    */
      allow_dual_stack_queue = optional(bool)
      # @description Always send replies as broadcasts even if destination IP is known.
      always_broadcast = optional(bool)
      # @description Option changes the way how a server responds to DHCP requests.
      authoritative = optional(string)
      /* @description 
      Accepts two predefined options or time value: * forever - 
    lease never expires * lease-time - use time from lease-time parameter.
    */
      bootp_lease_time = optional(string)
      # @description Support for BOOTP clients.
      bootp_support = optional(string)
      # @description Specifies whether to limit specific number of clients per single MAC address.
      client_mac_limit = optional(number)
      # @description (String).
      comment = optional(string)
      /* @description Allows to disable/enable conflict detection. 
    If option is enabled, then whenever server tries to assign 
    a lease it will send ICMP and ARP messages to detect whether 
    such address in the network already exist. If any of above get 
    reply address is considered already used. Conflict detection 
    must be disabled when any kind of DHCP client limitation per port or per mac is used.
    */
      conflict_detection = optional(string)
      /* @description If secs field in DHCP packet is smaller than delay-threshold, 
    then this packet is ignored. If set to none - there is no threshold 
    (all DHCP packets are processed).
    */
      delay_threshold = optional(string)
      # @description Use custom set of DHCP options defined in option sets menu.
      dhcp_option_set = optional(string)
      # @description (Boolean).
      disabled = optional(string)
      # @description Name of the interface.
      interface = string
      # @description Specify where to place dynamic simple queue entries for static DCHP leases with rate-limit parameter set.
      insert_queue_before = optional(string)
      # @description A script that will be executed after a lease is assigned or de-assigned.
      lease_script = optional(string)
      /* @description The time that a client may use the assigned address. 
    The client will try to renew this address after half of 
    this time and will request a new address after the time limit expires.
    */
      lease_time = optional(string)
      /* @description Changing the name of this resource will force it to be recreated. 
    The links of other configuration properties to this resource may be lost! 
    Changing the name of the resource outside of a Terraform will result in 
    a loss of control integrity for that resource!
    */
      name = string
      # @description (String).
      parent_queue = optional(string)
      # @description The IP address of the relay this DHCP server.
      relay = optional(string)
      # @description The address which the DHCP client must send requests to in order to renew an IP address lease.
      src_address = optional(string)
      # @description Forward RADIUS Framed-Route as a DHCP Classless-Static-Route to DHCP-client.
      use_framed_as_classless = optional(string)
      # @description Whether to use RADIUS server.
      use_radius = optional(string)
    }
  )
}
