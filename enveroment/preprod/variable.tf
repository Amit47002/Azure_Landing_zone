variable "rgs" {}
variable "vnets" {
  type = map(object({
    name          = string
    location      = string
    rg_name       = string
    address_space = list(string)
  }))
  description = "Map of virtual networks to create"
}
variable "subnets" {
  type = map(object({
    subnet_name      = string
    rg_name          = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
  description = "Map of subnets to create"
}
variable "pips" {}
variable "vms" {}
variable "bastion_app" {}