resource "azurerm_resource_group" "multipleresourcegroup" {
  count=3
  name = "testrgs-${count.index}"
  location = var.location
}

output "rsgnames" {
  value = [for rg in azurerm_resource_group.multipleresourcegroup : rg.name]
}