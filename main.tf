# create a resource group
resource "azurerm_resource_group" "rg" {
  name = var.resource_group_name 
  location = var.location 
}
# create a storage account
resource "azurerm_storage_account" "str" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}