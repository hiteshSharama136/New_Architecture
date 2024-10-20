resource "azurerm_eventgrid_event_subscription" "blob_to_servicebus" {
  name                      = var.subscription_name
  scope                     = var.scope  # Add the scope (e.g., storage account or event grid topic)

  # storage_queue_endpoint     = var.storage_queue_endpoint  # Linking dynamic storage queue endpoint
  
  webhook_endpoint {
    url = var.servicebus_topic_endpoint  # Dynamically sending events to Service Bus
  }

  storage_queue_endpoint {
    storage_account_id = var.storage_account_id
    queue_name         = var.queue_name
  }

  included_event_types = var.included_event_types
}
