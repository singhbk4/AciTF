# data "aci_tenant" "ext_tenant" {
#   name = "TEN_10"
#   depends_on = [
#     aci_tenant.tenant
#   ]
# }

# output "tenant_id" {
#   value = data.aci_tenant.ext_tenant.id
# }

# output "Ex_tenant_name" {
#   value = data.aci_tenant.ext_tenant.name
# }

# output "tenant_annotation" {
#   value = data.aci_tenant.ext_tenant.annotation
# }

# output "tenant_description" {
#   value = data.aci_tenant.ext_tenant.description
# }

