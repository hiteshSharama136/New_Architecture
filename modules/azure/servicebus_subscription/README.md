## Connect Azure Function App to Service Bus

This will trigger the Function App whenever a new message is available in the Service Bus topic or queue.

Terraform Code for binding a Function App to Service Bus Queue/Topic

# Azure Event Grid Event Subscription for Azure Function App

This module creates an Azure Event Grid Event Subscription that triggers an Azure Function App whenever a new message is available in a Service Bus Queue or Topic.

## Overview

The `azurerm_eventgrid_event_subscription` resource enables you to subscribe to events from an Azure Service Bus Queue or Topic and trigger an Azure Function App. This allows you to build reactive applications that respond to messages in real-time.

## Resource Type

- `azurerm_eventgrid_event_subscription`

## Usage

To use this module, include the following in your Terraform configuration:

```hcl
module "event_subscription" {
  source = "./modules/event_subscription"

  function_app_name               = var.function_app_name
  function_app_default_hostname    = module.function_app.function_app_default_hostname
  is_topic                        = var.is_topic
  service_bus_queue_or_topic_id   = module.service_bus.service_bus_queue_or_topic_id
}
