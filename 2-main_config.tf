# ACI Tenant
resource "aci_tenant" "tenant" {
  count = length(var.tenant)
  description = "Tenant Name is Tenant01"
  name        = var.tenant[count.index]
}

# VRF
resource "aci_vrf" "new_vrf" {
  name               = "vrf-01"
  tenant_dn          = aci_tenant.tenant[0].id
  description        = "Created by Terraform"
  bd_enforced_enable = "yes"
}

# L3Out Resources
module "l3out" {
  source           = "./modules/l3out"
  tenant_dn        = aci_tenant.tenant[0].id
  vrf_dn           = aci_vrf.new_vrf.id
  l3out_name       = "l3out-core"
  eepgName         = "ext_epgl3out"
  eepgSubLocalName = "EEPG_L3Out"
  eepgSubnet       = "10.10.10.0/24"
  nodeProfileName  = "NodeProfile_101_102"
  nodeDnPath       = "topology/pod-1/node-101"
  routerId         = "1.1.1.1"
  routerLoopBack   = "no"
  intPrName        = "IntProfile"
}

# Fabric Resources 
module "fabric" {
  source       = "./modules/fabric"
  for_each = {for fabric in local.fabric : fabric.sno => fabric}
  phdLocalName = each.value.ph_domain
  aepLocalName = each.value.aep
  vlpLocalName = each.value.vlp_pool
  vl_from = each.value.vlp_from
  vl_to = each.value.vlp_to
}

# BDs and EPGs
module "BD_EPG" {
  source = "./modules/tenant"
  tenant_dn         = aci_tenant.tenant[0].id
  vrf_dn            = aci_vrf.new_vrf.id
  app_profile       = ["app-core", "app-dmz"]
  BDName            = ["bd-vlan10", "bd-vlan20", "bd-vlan30", "bd-vlan40", "bd-vlan50"]
  EPGName           = ["epg-vlan10", "epg-vlan20", "epg-vlan30", "epg-vlan40", "epg-vlan50"]
}

module "access-leaf-interface-policy-group" {
  source  = "netascode/access-leaf-interface-policy-group/aci"
  version = "0.1.0"
  for_each = {for policygroup in local.policygroup : policygroup.sno => policygroup}
  # insert the 1 required variable here
  name                       = each.value.name
  type                       = each.value.type
  link_level_policy          = each.value.link_level_policy
  cdp_policy                 = each.value.cdp_policy
  lldp_policy                = each.value.lldp_policy
  spanning_tree_policy       = each.value.spanning_tree_policy
  mcp_policy                 = each.value.mcp_policy
  l2_policy                  = each.value.l2_policy
  storm_control_policy       = each.value.storm_control_policy
  port_channel_policy        = each.value.port_channel_policy
  port_channel_member_policy = each.value.port_channel_member_policy
  aaep                       = each.value.aaep
}