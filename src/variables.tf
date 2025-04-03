variable "pfsense_url" {
  description = "pfSense url address"
  type        = string
}

variable "pfsense_user" {
  description = "pfSense username"
  type        = string
  sensitive   = true
}

variable "pfsense_password" {
  description = "pfSense password"
  type        = string
  sensitive   = true
}
