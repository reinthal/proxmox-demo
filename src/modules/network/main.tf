resource "pfsense_interface_vlan" "this" {
  tag = var.vlan_tag
  if = var.parent_interface
  description = var.description
}