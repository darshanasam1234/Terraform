terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.32.0"
    }
  }
}

provider "azurerm" {
  # Configuration options

  tenant_id = "32b4d603-89f1-413b-b743-fd7b6dfaa2a5"
  features {}
}
