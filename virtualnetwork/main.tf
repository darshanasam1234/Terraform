# main.tf

resource "azurerm_virtual_network" "prod_network" {
  name                = "prod_netwrork"
  resource_group_name = "prod-resources"
  address_space       = ["10.0.0.0/16"]
  location            = var.rsglocation
  tags                = merge(local.common_tags, local.vnet_tags)
  subnet {
    name           = "prod-subnet9"
    address_prefix = var.mpsubnets.prod-subnet9
  }
  subnet {
    name           = "prod-subnet10"
    address_prefix = var.mpsubnets.prod-subnet10
  }

}


output "vnet_details" {
  value = azurerm_virtual_network.prod_network.name

}