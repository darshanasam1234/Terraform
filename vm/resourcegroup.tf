module "resourcegrouplinuxproduction" {
    source = "./module_resourcegroup"
    strrsgname = "linuxproduction01"
    strlocation = "eastus"
  
}


resource "azurerm_resource_group" "singapore" {
  name = "singapore"
  location = "eastus"
}

module "resourcegrouplinuxproduction4" {
    source = "./module_resourcegroup"
    strrsgname = "linuxproduction018"
    strlocation = "eastus"
  
}

module "resourcegrouplinuxproduction6" {
    source = "./module_resourcegroup"
    strrsgname = "linuxproduction0123"
    strlocation = "eastus"
  
}

