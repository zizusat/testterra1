terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.64.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "satyaterraform"
      storage_account_name = "github45"
      container_name       = "tfstate2"
      key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}