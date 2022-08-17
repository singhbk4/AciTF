locals {
  fabric = csvdecode(file("./data/fabricdata.csv"))
  policygroup = csvdecode(file("./data/policygroup.csv"))
  tenant = "${var.tenant_first}-${var.tenant_last}"
  app_pr = "app_DMZ01"

  # Application Profile - TEN01
  TEN01     = "TEN_01"
  TEN01_app = "APP_PR_TEN01"
  TEN01_vrf = "TEN01-VRF01"

  # Conditional Expressions
  #   bd_subnet = (var.epg_bd_map == "bd_vlan10" ? var.subnets : var.)

  # Common Tags
  support_group = "Network_Support"
  environment   = "Production"
  common_tags = {
    sg  = local.support_group
    env = local.environment
  }
}

