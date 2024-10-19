output "servicebus_topic_id" {
  description = "The ID of the Service Bus Topic"
  value       = azurerm_servicebus_topic.my_topic.id
}

output "servicebus_queue_id" {
  description = "The ID of the Service Bus Queue"
  value       = azurerm_servicebus_queue.my_queue.id
}

# output "service_bus_queue_or_topic_id" {
#   value = var.is_topic ? azurerm_servicebus_topic.my_topic[0].id : azurerm_servicebus_queue.my_queue[0].id
# }
