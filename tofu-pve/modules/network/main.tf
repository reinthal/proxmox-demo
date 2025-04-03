resource "unifi_network" "gbg_win7" {
  name    = "gbg-win7"
  purpose = "vlan-only"
  vlan_id      = var.vlan_tag
}