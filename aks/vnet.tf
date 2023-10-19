# Create Virtual Network
resource "azurerm_virtual_network" "aksvnet" {
  name                = "${var.cluster_name}-${var.env_name}-vnet"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.address_space
}

# Create a Subnet for AKS
resource "azurerm_subnet" "aks-cluster" {
  name                 = "${var.cluster_name}-${var.env_name}-snet"
  virtual_network_name = azurerm_virtual_network.aksvnet.name
  resource_group_name  = azurerm_resource_group.rg.name
  address_prefixes     = var.address_prefixes
}