# resource "aci_vlan_pool" "new_vlp" {
#   name        = "vlp-core"
#   description = "Created from Terraform"
#   alloc_mode  = "static"
# }

# resource "aci_ranges" "new_range" {
#   vlan_pool_dn = aci_vlan_pool.new_vlp.id
#   description  = "Created from Terraform"
#   from         = "vlan-1"
#   to           = "vlan-99"
#   alloc_mode   = "inherit"
#   name_alias   = "core_vlan_pool"
#   role         = "external"
# }

# resource "aci_physical_domain" "new_phdom" {
#   name                      = "phd-core"
#   relation_infra_rs_vlan_ns = aci_vlan_pool.new_vlp.id
# }

# resource "aci_attachable_access_entity_profile" "new_aaep" {
#   name                    = "aep-core"
#   description             = "Created from Terraform"
#   relation_infra_rs_dom_p = [aci_physical_domain.new_phdom.id]
# }

