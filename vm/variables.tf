variable "prefix" {

  default = "linuxprod2"
  
}

variable "strpubglisher" {
  
  default="MicrosoftWindowsServer"
}

variable "size" {
  
  default = "Standard_F2"
}

variable "stradminuser" {
  
  default = "djaadmin"
}

variable "strpassword" {
  
  default = "P@$$w0rd1234!"
  sensitive = true
}

variable "os_disk_settings" {

  type = map(string)
  description = "os disk settings"
  default = {
    name = "myosdisk"
    caching= "ReadWrite"
    storage_account_type="Premium_LRS"
  }
}


variable "strlocation" {

  default = "West Europe"
  
}


output "ip add"{
value = azurerm_linux_virtual_machine.ubuntuvm1.public_ip_addresses
}