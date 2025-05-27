variable "address" {
  type        = string
  default     = null
  description = <<EOF
    (String) The A record to be returend from the DNS hostname.
  EOF
}

variable "address_list" {
  type        = string
  default     = null
  description = <<EOF
     (String) Name of the Firewall address list to which address 
     must be dynamically added when some request matches the entry.
  EOF
}

variable "cname" {
  type        = string
  default     = null
  description = <<EOF
    (String) Alias name for a domain name.
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
  type        = string
  default     = null
  description = <<EOF
    (Boolean)
  EOF
}

variable "forward_to" {
  type        = string
  default     = null
  description = <<EOF
    (String) The IP address of a domain name server to which a particular DNS request must be forwarded.
  EOF
}

variable "match_subdomain" {
  type        = string
  default     = null
  description = <<EOF
    (Boolean) Whether the record will match requests for subdomains.
  EOF
}

variable "mx_exchange" {
  type        = string
  default     = null
  description = <<EOF
    (String) The domain name of the MX server.
  EOF
}

variable "mx_preference" {
  type        = string
  default     = null
  description = <<EOF
    (Number) Preference of the particular MX record.
  EOF
}

variable "name" {
  type        = string
  default     = null
  description = <<EOF
    (String) The name of the DNS hostname to be created.
  EOF
}

variable "ns" {
  type        = string
  default     = null
  description = <<EOF
    (String) Name of the authoritative domain name server for the particular record.
  EOF
}

variable "regexp" {
  type        = string
  default     = null
  description = <<EOF
    (String) DNS regexp. Regexp entries are case sensitive, 
    but since DNS requests are not case sensitive, 
    RouterOS converts DNS names to lowercase, 
    you should write regex only with lowercase letters.
  EOF
}

variable "srv_port" {
  type        = string
  default     = null
  description = <<EOF
     (Number) The TCP or UDP port on which the service is to be found.
  EOF
}

variable "srv_priority" {
  type        = string
  default     = null
  description = <<EOF
    (Number) Priority of the particular SRV record.
  EOF
}

variable "srv_target" {
  type        = string
  default     = null
  description = <<EOF
    (String) The canonical hostname of the machine providing the service ends in a dot.
  EOF
}

variable "srv_weight" {
  type        = string
  default     = null
  description = <<EOF
    (String) Weight of the particular SRC record.
  EOF
}

variable "text" {
  type        = string
  default     = null
  description = <<EOF
    (String) Textual information about the domain name.
  EOF
}

variable "ttl" {
  type        = string
  default     = null
  description = <<EOF
    (String) The ttl of the DNS record.
  EOF
}

variable "type" {
  type        = string
  description = <<EOF
    (String) Type of the DNS record. 
    Available values are: A, AAAA, CNAME, FWD, MX, NS, NXDOMAIN, SRV, TXT
  EOF
}
