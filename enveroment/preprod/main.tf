module "rg_prod" {
  source = "../../module/azurerm_resource_group"
  rgs    = var.rgs
}
module "vnet" {
  depends_on = [module.rg_prod]
  source     = "../../module/azurerm_virtual_network"
  vnets      = var.vnets
}
module "subnet" {
  depends_on = [module.vnet]
  source     = "../../module/azurerm_subnet"
  subnets    = var.subnets
}
module "pip" {
  depends_on = [module.rg_prod]
  source     = "../../module/azurerm_public_ip"
  pips       = var.pips
}
module "vm" {
  depends_on = [module.subnet]
  source     = "../../module/azurerm_VM"
  vms        = var.vms
}
module "bastion" {
  depends_on = [ module.subnet,module.pip ]
  source = "../../module/azurerm_bastion"
  bastion_app = var.bastion_app
}

