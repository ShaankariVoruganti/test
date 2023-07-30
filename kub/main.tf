resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet
  address_space       = var.vnet-addr
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet-addr
}
  
resource "azurerm_kubernetes_cluster" "aks" {
  name = var.cluster_name
  #kubernetes_version = var.kubernetes_version
  location = var.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix = var.cluster_name
 private_cluster_enabled = var.pvt_cluster
    
  default_node_pool {
    name = var.node_pool_name
    node_count = var.system_node_count
    vm_size = var.vm_size 
    enable_auto_scaling = var.auto_scaling
    vnet_subnet_id = azurerm_subnet.subnet.id
    os_disk_size_gb = var.os_disk_size
  }
  service_principal {
    client_id     = var.client_id
    client_secret =var.client_secret
  }
  
  network_profile {
    load_balancer_sku = var.lb_sku
    network_plugin = var.network_plugin # azure (CNI)
    }          
    }                                                                                                                                               
