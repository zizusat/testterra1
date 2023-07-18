terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.64.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "rg-terraform-github-actions-state"
      storage_account_name = "terraformgithubactions45"
      container_name       = "tfstate2"
      key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}