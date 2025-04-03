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


variable "unifi_api_url" {
  description = "unifi url address"
  type        = string
}

variable "unifi_user" {
  description = "unifi username"
  type        = string
  sensitive   = true
}

variable "unifi_password" {
  description = "unifi password"
  type        = string
  sensitive   = true
}
