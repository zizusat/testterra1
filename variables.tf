data "azurerm_resource_group" "appgrp2" {
  name     = "SatyaMi2"

  
}

resource "azurerm_storage_account" "appstore566565637ss" {
    name                     = "appstore566565637"
  resource_group_name      = "${data.azurerm_resource_group.appgrp2.name}"
  location                 = "${data.azurerm_resource_group.appgrp2.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"
}

