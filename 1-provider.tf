# Provider information 
terraform {
  required_version = ">=1.1.0"
  required_providers {
    aci = {
      source = "ciscodevnet/aci"
      version = ">=2.5.2"
    }
  }
# Backend: to store terraform.tfstate file in remote location 
  # backend "azurerm" {
  #   container_name = "value"
  #   resource_group_name = "value"
  #   storage_account_name = "value"
  #   key = "value"    
  # }
}

provider "aci" {
  # CISCO dCloud LAB
  username = "admin"
  password = "!v3G@!4@Y"
  url      = "https://sandboxapicdc.cisco.com"
  # CISCO DevNet LAB
  # username = "admin"
  # password = "C1sco12345"
  # url = "https://10.10.20.14" 
  insecure = true
}