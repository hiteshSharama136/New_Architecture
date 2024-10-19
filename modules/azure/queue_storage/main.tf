resource "azurerm_storage_queue" "st_queue" {
  name                 = var.queue_name
  storage_account_name = var.storage_account_name
}
