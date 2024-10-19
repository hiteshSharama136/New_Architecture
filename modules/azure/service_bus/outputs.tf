output "servicebus_namespace_name" {
  value = azurerm_servicebus_namespace.asb_namespace.name
}

output "servicebus_topic_name" {
  value = azurerm_servicebus_topic.asb_topic.name
}
