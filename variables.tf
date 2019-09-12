variable "domain_name" {
  description = "The domain name of the site that will be created in imperva"
  default     = "thecloudnative.io"
}

variable "site_ip" {
  description = "The origin server ip address"
  default = "35.244.110.71"
}

variable "account_id" {
  default = "1364255" // this is the non-prod imperva account
}

variable "certificate" {
  default = "./mydomain.crt"
}

variable "private_key" {
  default = "./mydomain.key"
}

#variable "sub_domain" {
#  description = "The Sub domain name of the site"
#}

variable "whitelist_ips" {
  type        = "list"
  description = "The IP address to be allowed in the site"
  default     = []
}

variable "blacklist_ips" {
  type        = "list"
  description = "Default should be 0.0.0.0/0 to not allow ant IPs except in the whitelist ips"
  default     = []
}

variable "rewrite_to" {
  description = "The TO in rewrite rule of header"
  default     = "forgerock-unauth-sit.sec.gcpnp.anz"
}

variable "rewrite_name" {
  description = "The header name that will be rewrite or change to"
  default     = "Host"
}

variable "ddos_threshold" {
  description = "The threshold of DDOS"
  default     = "300"
}

variable "block_countries" {
  type        = "list"
  description = "Countries that won't be allowed to access the site"
  default     = ["MD", "DE", "RU"]
}
