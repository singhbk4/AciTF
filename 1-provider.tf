terraform {
  required_version = ">=1.1.0"
  required_providers {
    aci = {
      source = "ciscodevnet/aci"
    }
  }
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

