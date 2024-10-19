output "event_subscription_id" {
  description = "The ID of the Event Grid subscription"
  value       = azurerm_eventgrid_event_subscription.blob_to_servicebus.id
}

output "event_subscription_name" {
  description = "The name of the Event Grid subscription"
  value       = azurerm_eventgrid_event_subscription.blob_to_servicebus.name
}
