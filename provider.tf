# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
    backend "azurerm" {
    storage_account_name = $STORAGE_ACCOUNT_NAME""
    container_name       = $CONTAINER_NAME""
    key                  = "terraform.tfstate"
    access_key           = "$ACCOUNT_KEY"
  } 
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
