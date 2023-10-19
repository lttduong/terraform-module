resource "azurerm_resource_group" "rg" {
  name     = "${var.env_name}-${var.cluster_name}RG"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "cluster" {
  name                = "${var.cluster_name}-${var.env_name}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "${var.cluster_name}-${var.env_name}"

  default_node_pool {
    name           = "default"
    node_count     = "1"
    vm_size        = "Standard_DS2_v2"
    vnet_subnet_id = azurerm_subnet.aks-cluster.id
  }

  identity {
    type = "SystemAssigned"
  }
}