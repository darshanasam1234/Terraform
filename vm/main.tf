

  data "azurerm_ssh_public_key" "ssh_key"{
    name= "githubaction"
    resource_group_name="Terraform_rsg"
  }
resource "azurerm_resource_group" "prodwindows" {
  name     = "${var.prefix}-rsg"
  location = var.strlocation
}

resource "azurerm_virtual_network" "productionnetwork" {
  name                = "${var.prefix}-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.prodwindows.location
  resource_group_name = azurerm_resource_group.prodwindows.name
}

resource "azurerm_subnet" "prodsubnet" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.prodwindows.name
  virtual_network_name = azurerm_virtual_network.productionnetwork.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "linuxvmnic" {
  name                = "linuxvmnic"
  location            = azurerm_resource_group.prodwindows.location
  resource_group_name = azurerm_resource_group.prodwindows.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.prodsubnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "ubuntuvm1" {
  name                = "${var.prefix}-vm01"
  resource_group_name = azurerm_resource_group.prodwindows.name
  location            = azurerm_resource_group.prodwindows.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.linuxvmnic.id,
  ]


 
  admin_ssh_key {
    username   = "adminuser"
    public_key = data.azurerm_ssh_public_key.ssh_key.id
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

