  resource "azurerm_bastion_host" "bastion" {
    for_each = var.bastion_app
  name                = each.value.bastion_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.bastion[each.key].id
    public_ip_address_id = data.azurerm_public_ip.bastion[each.key].id
  }
}
