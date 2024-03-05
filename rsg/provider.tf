terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.32.0"
    }
  }



backend "azurerm" {
  resource_group_name="Terraform_rsg"
  storage_account_name="terraformcoderepodja"
  container_name="terraformstate"
  key="terraformcoderepodja"

}
}
provider "azurerm" {
  # Configuration options

  tenant_id = "32b4d603-89f1-413b-b743-fd7b6dfaa2a5"
  features {}
}