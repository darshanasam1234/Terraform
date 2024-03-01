variable "resource_group_location"{
 type=string
 default="eastus"
 description="Locationoftheresourcegroup."
}

variable "username"{
 type=string
 default="microsoft"
 description="TheusernameforthelocalaccountthatwillbecreatedonthenewVM."
}

variable "password"{
 type=string
 default="Microsoft@123"
 description="ThepassowordforthelocalaccountthatwillbecreatedonthenewVM."
}

variable "virtual_network_name"{
 type=string
 default="test-vnet"
 description="NameoftheVirtualNetwork."
}

variable "subnet_name"{
  type=string
  default="test-subnet"
  description="Nameofthesubnet."
}

variable public_ip_name{
  type=string
  default="test-public-ip"
  description="NameofthePublicIP."
}

variable network_security_group_name{
  type=string
  default="test-nsg"
  description="NameoftheNetworkSecurityGroup."
}

variable "network_interface_name"{
  type=string
  default="test-nic"
  description="NameoftheNetworkInterface."
}

variable "virtual_machine_name"{
 type=string
 default="test-vm"
 description="NameoftheVirtualMachine."
}

variable "virtual_machine_size"{
 type=string
 default="Standard_B2s"
 description="SizeorSKUoftheVirtualMachine."
}

variable "disk_name"{
 type=string
 default="test-disk"
 description="NameoftheOSdiskoftheVirtualMachine."
}

variable "redundancy_type"{
 type=string
 default="Standard_LRS"
 description="StorageredundancytypeoftheOSdisk."
}

variable "load_balancer_name"{
 type=string
 default="test-lb"
 description="NameoftheLoadBalancer."
}