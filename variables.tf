resource "azurerm_resource_group" "appgrp2" {
  name     = "app-grp"
  location = "North Europe"
}

resource "azurerm_storage_account" "appstore566565637" {
  name                     = "appstore566565637"
  resource_group_name      = "app-grp"
  location                 = "North Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"
}