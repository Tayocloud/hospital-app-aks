resource "azurerm_virtual_network" "gp25" {
  name                = "gp25-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.gp25.location
  resource_group_name = azurerm_resource_group.gp25.name

  tags = {
    env = "developement"
  }
}