## Azure Storage + Event Grid + Service Bus Setup

Set up an Event Grid Subscription to forward events from Azure Blob Storage to Azure Service Bus.

Terraform Code for connecting Storage to Event Grid and Service Bus

# Event Grid Subscription for Blob Storage to Service Bus

This Terraform module creates an Azure Event Grid Subscription that subscribes to blob storage events (e.g., blob creation and deletion) and sends those events to a Service Bus topic.

## Resources Created

- `azurerm_eventgrid_event_subscription` - Event Grid Subscription that links blob storage events to Service Bus.


## Notes
This module allows you to dynamically configure an Event Grid subscription that links blob storage events to Service Bus topics or queues, ensuring modularity and flexibility.


### **Key Changes to Make It Dynamic:**
1. **Dynamic Variables**: The variables in `variables.tf` ensure that the Event Grid subscription, storage queue endpoint, and Service Bus topic endpoint are dynamically configurable.
2. **Modular Output**: Outputs in `outputs.tf` expose the Event Grid subscription's key attributes, making it easy to reference in other modules or resources.
3. **README.md**: This includes details on the module’s use, variables, outputs, and an example usage to guide how to integrate it into your Terraform setup.

## Variables

| Name                      | Description                                           | Type          | Default                           | Required |
|---------------------------|-------------------------------------------------------|---------------|-----------------------------------|----------|
| `subscription_name`        | Name of the Event Grid subscription                   | `string`      | `"blob-to-servicebus-subscription"`| No       |
| `resource_group_name`      | The name of the resource group                        | `string`      | N/A                               | Yes      |
| `eventgrid_topic_name`     | The name of the Event Grid topic                      | `string`      | `"my-topic"`                      | No       |
| `storage_queue_endpoint`   | The storage queue endpoint to send events to          | `string`      | N/A                               | Yes      |
| `servicebus_topic_endpoint`| The Service Bus topic endpoint where events will be sent | `string`  | N/A                               | Yes      |
| `included_event_types`     | The types of events to subscribe to in the Event Grid | `list(string)`| `["Microsoft.Storage.BlobCreated", "Microsoft.Storage.BlobDeleted"]` | No  |

## Outputs

| Name                     | Description                                        |
|--------------------------|----------------------------------------------------|
| `event_subscription_id`   | The ID of the Event Grid subscription              |
| `event_subscription_name` | The name of the Event Grid subscription            |

## Example Usage

```hcl
module "eventgrid_subscription" {
  source = "./path-to-module"

  subscription_name          = "blob-to-servicebus-subscription"
  resource_group_name        = "example-resource-group"
  eventgrid_topic_name       = "example-topic"
  storage_queue_endpoint     = azurerm_storage_queue.example_queue.id
  servicebus_topic_endpoint  = azurerm_servicebus_topic.example_topic.id
  included_event_types       = ["Microsoft.Storage.BlobCreated", "Microsoft.Storage.BlobDeleted"]
}
