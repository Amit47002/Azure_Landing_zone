data "azurerm_subnet" "bastion" {
    for_each = var.bastion_app
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.rg_name
}
data "azurerm_public_ip" "bastion" {
  for_each = var.bastion_app
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
}
