resource "azurerm_servicebus_namespace" "asb_namespace" {
  name                = var.namespace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku

  tags = {
    environment = "Production"
  }
}

resource "azurerm_servicebus_topic" "asb_topic" {
  name                = var.topic_name
  namespace_id        = azurerm_servicebus_namespace.asb_namespace.id 

  partitioning_enabled = true
}
