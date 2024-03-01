resource "azurerm_resource_group" "name" {

  for_each = toset(var.rg_names)
  name     = each.key
  location = "West US"


}