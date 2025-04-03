terraform {
  required_providers {
    pfsense = {
      source = "elacy/pfsense"
      version = "0.0.6"
    }
  }
}

provider "pfsense" {
  url     = var.url
  user = var.user
  password = var.password
}
