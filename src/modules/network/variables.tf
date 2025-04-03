variable "parent_interface" {
    default = "igb02"
    type        = string
    description = "The parent network interface"
}

variable "vlan_tag" {
  description = "VLAN tag (valid range: 1-4094)"
  type        = number
  
  validation {
    condition     = var.vlan_tag >= 1 && var.vlan_tag <= 4094
    error_message = "VLAN tag must be between 1 and 4094."
  }
}

variable "base_cidr_block" {
  description = "The cidr block for this network"
  type = string
}

variable "description" {
  description = "The description of the network"
  type        = string
  default     = null
}

variable "user" {
  type = string
  description = "The pfsense username"
  sensitive   = true
}

variable "url" {
  type = string
  description = "The pfsense url"
  
}

variable "password" {
  type = string
  description = "the pfsense password"
  sensitive   = true
}