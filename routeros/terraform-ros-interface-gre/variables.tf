variable "allow_fast_path" {
  type        = bool
  default     = null
  description = <<EOF
    (Boolean) Whether to allow FastPath processing. 
    Must be disabled if IPsec tunneling is used.
  EOF
}

variable "clamp_tcp_mss" {
  type        = bool
  default     = null
  description = <<EOF
    (Boolean) Controls whether to change MSS size for received TCP SYN packets.
     When enabled, a router will change the MSS size for received TCP SYN packets 
     if the current MSS size exceeds the tunnel interface MTU (taking into account the TCP/IP overhead). 
    The received encapsulated packet will still contain the original MSS, 
    and only after decapsulation the MSS is changed.
  EOF
}

variable "comment" {
  type        = string
  default     = "Managed by terraform"
  description = <<EOF
    (String)
  EOF
}

variable "disabled" {
  type        = bool
  default     = null
  description = <<EOF
    (Boolean)
  EOF
}

variable "dont_fragment" {
  type        = string
  default     = null
  description = <<EOF
    (String)
  EOF
}

variable "dscp" {
  type        = string
  default     = null
  description = <<EOF
    (String) Set dscp value in GRE header to a fixed value '0..63' 
    or 'inherit' from dscp value taken from tunnelled traffic.
  EOF
}

variable "ipsec_secret" {
  type        = string
  sensitive   = true
  default     = null
  description = <<EOF
    (String, Sensitive) When secret is specified, 
    router adds dynamic IPsec peer to remote-address 
    with pre-shared key and policy (by default phase2 uses sha1/aes128cbc).
  EOF
}

variable "keepalive" {
  type        = string
  default     = null
  description = <<EOF
    (String) Tunnel keepalive parameter sets the time interval 
    in which the tunnel running flag will remain even if the remote end of tunnel goes down. 
    If configured time,retries fail, interface running flag is removed. 
    Parameters are written in following format: KeepaliveInterval,
    KeepaliveRetries where KeepaliveInterval is time interval and KeepaliveRetries - 
    number of retry attempts. KeepaliveInterval is integer 0..4294967295.
  EOF
}

variable "local_address" {
  type        = string
  default     = null
  description = <<EOF
    (String) Source address of the tunnel packets, local on the router.
  EOF
}

variable "mtu" {
  type        = string
  default     = null
  description = <<EOF
    (String) Layer3 Maximum transmission unit ('auto', 0 .. 65535).
  EOF
}

variable "name" {
  type        = string
  description = <<EOF
    (String) Changing the name of this resource will force it to be recreated. 
    The links of other configuration properties to this resource may be lost! 
    Changing the name of the resource outside of a Terraform will result in 
    a loss of control integrity for that resource!
  EOF
}

variable "remote_address" {
  type        = string
  default     = null
  description = <<EOF
    (String) IP address of the remote end of the tunnel.
  EOF
}
