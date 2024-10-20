resource "azurerm_storage_account" "st_account" {
  name                     = var.storage_account_name
  resource_group_name       = var.resource_group_name
  location                  = var.location
  account_tier              = var.account_tier
  account_replication_type  = var.replication_type

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "st_container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.st_account.name
  container_access_type = var.container_access_type
}
