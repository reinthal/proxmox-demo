
module "gbg_win7_network" {
  source = "./modules/network"
  base_cidr_block = "10.40.31.0/24"
  description = "The Gothenburg Win7 network"
  vlan_tag = 4031
  user = var.pfsense_user
  password = var.pfsense_password
  url = var.pfsense_url
}