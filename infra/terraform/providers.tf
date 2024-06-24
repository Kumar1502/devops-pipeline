terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.109.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "backend"
    storage_account_name = "ltbackendworkshop2406"
    container_name       = "state"
    key                  = "workshop.tfstate"

  }
}

provider "azurerm" {
  features {

  }
}
