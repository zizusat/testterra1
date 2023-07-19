data "azurerm_resource_group" "appgrp2" {
  name     = "SatyaMi"
  location = "East US"
  
}

resource "azurerm_storage_account" "appstore566565637ss" {
    name                     = "appstore566565637"
  resource_group_name      = "SatyaMi"
  location                 = "North Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"
}

