variable "pfsense_host" {
  description = "pfSense host address"
  type        = string
}

variable "pfsense_username" {
  description = "pfSense username"
  type        = string
  sensitive   = true
}

variable "pfsense_password" {
  description = "pfSense password"
  type        = string
  sensitive   = true
}
