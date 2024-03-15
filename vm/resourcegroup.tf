module "resourcegrouplinuxproduction" {
    source = "./module_resourcegroup"
    strrsgname = "linuxproduction01"
    strlocation = "eastus"
  
}


resource "azurerm_resource_group" "singapore" {
  name = "singapore"
  location = "eastus"
}