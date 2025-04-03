
module "gbg_win7_network" {
  source = "./modules/network"
  base_cidr_block = "10.40.31.0/24"
  description = "The Gothenburg Win7 network"
  vlan_tag = 4031
  unifi_user = var.unifi_user
  unifi_password = var.unifi_password
  unifi_api_url = var.unifi_api_url
}