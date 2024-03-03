# main.tf

resource "azurerm_resource_group" "production_resourcegroup" {

  name = var.rsgname
  location = var.location
  
}