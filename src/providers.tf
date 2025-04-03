tofu {
  required_providers {
    pfsense = {
      source = "elacy/pfsense"
      version = "0.0.6"
    }
  }
}

provider "pfsense" {
host     = var.pfsense_host
  username = var.pfsense_username
  password = var.pfsense_password
}
