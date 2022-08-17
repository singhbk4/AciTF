resource "aci_physical_domain" "ph_domain" {
  name = var.phdLocalName
}

resource "aci_attachable_access_entity_profile" "aaep" {
  name                    = var.aepLocalName
  relation_infra_rs_dom_p = [aci_physical_domain.ph_domain.id]
}

resource "aci_vlan_pool" "vlp_pool" {
  name        = var.vlpLocalName
  description = "DMZ FW VLAN POOL"
  alloc_mode  = "static"
}

resource "aci_ranges" "vl_pool_range" {
  vlan_pool_dn = aci_vlan_pool.vlp_pool.id
  description  = "Created from Terraform"
  from         = var.vl_from
  to           = var.vl_to
  alloc_mode   = "inherit"
  name_alias   = "${aci_vlan_pool.vlp_pool.name}-Pool"
  role         = "external"
}


