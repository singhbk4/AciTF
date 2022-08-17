# MAP and List
variable "tenant" {
  type = list(any)
}

variable "app_profile" {
  type = list(any)
}

variable "vrf" {
  type = list(any)
}

# variable "ten_vrf_map" {
#   type = map(object({
#     vrf = string
#     }
#   ))
# }

variable "epg_bd_map" {
  type = map(object({
    bd = string
    }
  ))
}


variable "tenant_first" {
  type    = string
  default = "TEN"
}

variable "tenant_last" {
  type    = string
  default = "007"
}

variable "subnets" {
  type = map(object({
    subnet = string
    }
  ))
}

