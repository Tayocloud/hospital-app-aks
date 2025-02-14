resource "azurerm_subnet" "subnet1" {
  name                 = "gp25-subnet1"
  address_prefixes     = ["10.0.0.0/19"]
  resource_group_name  = azurerm_resource_group.gp25.name
  virtual_network_name = azurerm_virtual_network.gp25.name
}

resource "azurerm_subnet" "subnet2" {
  name                 = "gp25-subnet2"
  address_prefixes     = ["10.0.32.0/19"]
  resource_group_name  = azurerm_resource_group.gp25.name
  virtual_network_name = azurerm_virtual_network.gp25.name
}