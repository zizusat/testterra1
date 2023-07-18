resource "azurerm_resource_group" "testapp" {
  name     = "testapp-grp"
  location = "West Europe"
}
resource "azurerm_storage_account" "appstorage" {
  name                     = "testsatya"
  resource_group_name      = azurerm_resource_group.testapp.name
  location                 = azurerm_resource_group.testapp.location
  account_tier             = "Standard"
  account_replication_type = "GRS"