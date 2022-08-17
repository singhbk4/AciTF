variable "tenant_dn" {
    type = string
}

variable "app_profile" {
    type = list(string)
}

variable "vrf_dn" {
    type = string
}

variable "BDName" {
    type = list(string)
}

variable "EPGName" {
    type = list(string)
}

# variable "l3out_association" {
#     type = string
# }