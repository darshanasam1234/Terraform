# main.tf

resource "azurerm_resource_group" "my_resource_group" {
  name     = var.rsgname
  location = var.rsglocation
}
