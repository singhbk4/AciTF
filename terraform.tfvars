# Tenant List
tenant = ["TEN_01", "TEN_02", "TEN_03"]

# Tenant and Application Profile List
app_profile = ["app_01", "app_02", "app_03"]

# Tenant and VRF map
vrf = ["vrf-01", "vrf-02", "vrf-03"]

# ten_vrf_map = {
#   "TEN-01" = {
#     vrf = "TEN01-VRF01"
#   }
#   "TEN-02" = {
#     vrf = "TEN02-VRF01"
#   }
#   "TEN-03" = {
#     vrf = "TEN03-VRF01"
#   }
# }

# EPGs and BDs map
epg_bd_map = {
  "epg_vlan10" = {
    bd = "bd_vlan10"
  }
  "epg_vlan20" = {
    bd = "bd_vlan20"
  }
  "epg_vlan30" = {
    bd = "bd_vlan30"
  }
  "epg_vlan40" = {
    bd = "bd_vlan40"
  }
  "epg_vlan50" = {
    bd = "bd_vlan50"
  }
  "epg_vlan60" = {
    bd = "bd_vlan60"
  }
  "epg_vlan70" = {
    bd = "bd_vlan70"
  }
  "epg_vlan80" = {
    bd = "bd_vlan80"
  }
  "epg_vlan90" = {
    bd = "bd_vlan90"
  }
  "epg_vlan100" = {
    bd = "bd_vlan100"
  }
}

# Subnet Details
subnets = {
  "bd_vlan10" = {
    subnet = "10.10.1.1/24"
  }
  "bd_vlan20" = {
    subnet = "10.10.2.1/24"
  }
  "bd_vlan30" = {
    subnet = "10.10.3.1/24"
  }
  "bd_vlan40" = {
    subnet = "10.10.4.1/24"
  }
  "bd_vlan50" = {
    subnet = "10.10.5.1/24"
  }
}