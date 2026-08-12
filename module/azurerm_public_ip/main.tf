resource "azurerm_public_ip" "pip_name" {
  for_each            = var.pips
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  allocation_method   = "Static"
}