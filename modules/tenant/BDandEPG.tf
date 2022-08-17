

# Application profile 
resource "aci_application_profile" "app_profile" {
  count       = length(var.app_profile)
  name        = element(var.app_profile, count.index)
  tenant_dn = var.tenant_dn
  description = "Created by Terraform"
}

# Application EPG - TEN01
resource "aci_application_epg" "new_epg" {
  count = length(var.EPGName)
  name = var.EPGName[count.index]
  application_profile_dn = aci_application_profile.app_profile[0].id
  relation_fv_rs_bd      = aci_bridge_domain.new_bd[count.index].id
  pref_gr_memb           = "include"
}

# Bridge Domain - TEN01
resource "aci_bridge_domain" "new_bd" {
  count = length(var.BDName)
  name = var.BDName[count.index]
  tenant_dn = var.tenant_dn
  relation_fv_rs_ctx = var.vrf_dn
  # relation_fv_rs_bd_to_out = [module.l3out.l3out_dn]
}

