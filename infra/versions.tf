terraform {
  required_version = ">= 1.7.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  # Remote state so GitHub Actions remembers what it created between runs
  backend "azurerm" {
    resource_group_name  = "koalatech-tfstate-rg"
    storage_account_name = "kttfstate225710055"
    container_name       = "tfstate"
    key                  = "week10.tfstate"
  }
}

provider "azurerm" {
  features {}
}