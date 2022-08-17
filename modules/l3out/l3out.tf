# L3Out
resource "aci_l3_outside" "l3outLocalName" {
    name = var.l3out_name
    tenant_dn = var.tenant_dn
    relation_l3ext_rs_ectx = var.vrf_dn
}

# External EPG
resource "aci_external_network_instance_profile" "eepgLocalName" {
  name = var.eepgName
  l3_outside_dn = aci_l3_outside.l3outLocalName.id
  pref_gr_memb = "include"
}

# EEPG Subnet
resource "aci_l3_ext_subnet" "eepgSubLocalName" {
  external_network_instance_profile_dn = aci_external_network_instance_profile.eepgLocalName.id
  ip = var.eepgSubnet
}

# L3Out Node Profile
resource "aci_logical_node_profile" "nodeProfileLocalName" {
  name = var.nodeProfileName
  l3_outside_dn = aci_l3_outside.l3outLocalName.id
}
# Node Select
resource "aci_logical_node_to_fabric_node" "nodeLocalName" {
  logical_node_profile_dn = aci_logical_node_profile.nodeProfileLocalName.id
  tdn = var.nodeDnPath
  rtr_id = var.routerId
  rtr_id_loop_back = var.routerLoopBack
}
# L3Out Interface Profile
resource "aci_logical_interface_profile" "intProfileLocalName" {
  name = var.intPrName
  logical_node_profile_dn = aci_logical_node_profile.nodeProfileLocalName.id
}

