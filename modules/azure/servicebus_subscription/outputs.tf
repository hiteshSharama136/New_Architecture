
output "event_subscription_id" {
  value = azurerm_eventgrid_event_subscription.function_app_event_subscription.id
}
