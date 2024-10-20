
resource "azurerm_eventgrid_event_subscription" "function_app_event_subscription" {
  name  = "${var.function_app_name}-event-subscription"
  scope = var.is_topic ? azurerm_servicebus_topic.my_topic[0].id : azurerm_servicebus_queue.my_queue[0].id

  webhook_endpoint {
    url = "${azurerm_function_app.this.default_hostname}/runtime/webhooks/EventGrid?functionName=${var.function_app_name}"
  }

  storage_queue_endpoint {
    storage_account_id = var.storage_account_id
    queue_name         = var.queue_name
  }
}
