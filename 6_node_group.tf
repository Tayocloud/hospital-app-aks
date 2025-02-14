resource "azurerm_kubernetes_cluster_node_pool" "gp25" {
  name                  = "internal"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.gp25.id
  vm_size               = "Standard_DS2_v2"
  vnet_subnet_id        = azurerm_subnet.subnet1.id
  node_count            = 2
  auto_scaling_enabled  = true
  min_count             = 1
  max_count             = 10

  #   node_labels = {
  #     role                                    = "internal"
  #     "kubernetes.azure.com/scalesetpriority" = "internal"
  #   }

  tags = {
    Environment = "hippa"
  }

  lifecycle {
    ignore_changes = [node_count]
  }
}