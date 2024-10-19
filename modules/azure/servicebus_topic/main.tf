
resource "azurerm_servicebus_queue" "my_queue" {
  count = var.is_topic ? 0 : 1

  name                = var.service_bus_queue_or_topic
  namespace_id        = var.namespace_id 
  max_size_in_megabytes = 1024 # Adjust as necessary
}

resource "azurerm_servicebus_topic" "my_topic" {
  count = var.is_topic ? 1 : 0

  name                = var.service_bus_queue_or_topic
  namespace_id        = var.namespace_id 
  
}
