data "azurerm_resource_group" "appgrp2" {
  name     = "app-grp"
  
}

data "azurerm_storage_account" "appstore566565637ss" {
  name                     = "appstore55952111"
 
}

resource "azurerm_storage_container" "data" {
  name                  = "data1"
  storage_account_name  = "${data.azurerm_storage_account.appstore566565637ss.name}"
  container_access_type = "blob"
}