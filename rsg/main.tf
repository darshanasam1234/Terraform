# main.tf

resource "azurerm_resource_group" "my_resource_group" {
  name     = "my-terraform-rg"
  location = "West Europe"
}
