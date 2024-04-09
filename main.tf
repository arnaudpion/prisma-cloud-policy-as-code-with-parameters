terraform {
  required_providers {
    prismacloud = {
      source  = "PaloAltoNetworks/prismacloud"
      version = "1.5.4"
    }
  }
}

# Configure the prismacloud provider
provider "prismacloud" {
  url      = var.pcc_url
  username = var.pcc_username
  password = var.pcc_userpass
}

data "prismacloud_cloud_accounts" "all_cloud_accounts" {}   