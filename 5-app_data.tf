# data "aci_application_profile" "ext_app_pr" {
#   name        = "app_dev02"
#   tenant_dn   = data.aci_tenant.ext_tenant.id
#   description = "Terraform External Application Profile"
#   depends_on = [
#     data.aci_tenant.ext_tenant
#   ]
# }

# output "Application_Profile_ID" {
#   value = data.aci_application_profile.ext_app_pr.id
# }
# output "Application_Profile_Name" {
#   value = data.aci_application_profile.ext_app_pr.name
# }
# output "Application_Profile_Tenant" {
#   value = data.aci_application_profile.ext_app_pr.tenant_dn
# }
# output "Application_Profile_Prio" {
#   value = data.aci_application_profile.ext_app_pr.prio
# }