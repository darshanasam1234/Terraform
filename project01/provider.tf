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
  key="dev.terraform.tfstate"

}
}
provider "azurerm" {
  # Configuration options

  tenant_id = "32b4d603-89f1-413b-b743-fd7b6dfaa2a5"
  client_id = "d38a5569-c90c-4527-bc7a-2d9c38e0e204"
  subscription_id = "d1a072bc-69ca-42c9-b02c-648ba7862db2"
  client_secret = "Ty48Q~BBl4aB0A5_v9BzJrmN_BIgiR8W6XH6Vc7C"
  features {}
}