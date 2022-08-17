# output "vrf_dn" {
#     value = [module.l3out.l3out_dn]
# }

# # Tenant Details
# output "Tenant_Name" {
#   description = "Tenant Name"
#   value       = [for ten in aci_tenant.tenant : ten.name]
#   # value = aci_tenant.tenant.name
# }

# # Application Profile Details
# output "Application_Profile" {
#   description = "Application Profile Name"
#   # value       = aci_application_profile.app_profile.name
#   value = [for app in aci_application_profile.app_profile : app.name]
# }

# # # VRF Details
# # output "VRF_Name" {
# #   description = "VRF Name"
# #   # value       = aci_vrf.new_vrf.id
# #   # value = {for vrf in aci_vrf.new_vrf : vrf.id => vrf.name}
# #   value = [for vrf in aci_vrf.new_vrf: vrf.name]
# #   sensitive   = false
# # }

# # # BDs Details - TEN01
# # output "BDs_Name_TEN01" {
# #   description = "Name of the BDs"
# #   value       = [for bd in aci_bridge_domain.new_bd: bd.name]
# # }
# # # EPGs Details - TEN01
# # output "EPGs_Name_TEN01" {
# #   description = "Name of the EPGs"
# #   value = { for epg in aci_application_epg.new_epg01: epg.id => epg.name }
# #   # value = [for epg in aci_application_epg.new_epg: epg.name]
# # }

