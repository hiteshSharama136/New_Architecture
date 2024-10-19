## Service Bus Setup for Queue and Topic

Terraform Code for Service Bus Topics and Queues

# Terraform Module for Azure Service Bus Topic and Queue

This Terraform module deploys a Service Bus Topic and Queue in an existing Service Bus Namespace.

## Resources Created

- `azurerm_servicebus_topic`: A Service Bus Topic to manage message publishing.
- `azurerm_servicebus_queue`: A Service Bus Queue to manage message receiving and processing.

## Variables

| Name                     | Description                                                        | Type     | Default | Required |
|--------------------------|--------------------------------------------------------------------|----------|---------|----------|
| `topic_name`              | The name of the Service Bus Topic                                  | `string` | N/A     | Yes      |
| `queue_name`              | The name of the Service Bus Queue                                  | `string` | N/A     | Yes      |
| `namespace_name`          | The name of the Service Bus Namespace                              | `string` | N/A     | Yes      |
| `resource_group_name`     | The name of the resource group in which the resources will be created | `string` | N/A     | Yes      |

## Outputs

| Name                   | Description                               |
|------------------------|-------------------------------------------|
| `servicebus_topic_id`   | The ID of the Service Bus Topic           |
| `servicebus_queue_id`   | The ID of the Service Bus Queue           |

## Example Usage

```hcl
module "servicebus_resources" {
  source = "./path-to-module"

  topic_name          = "example-topic"
  queue_name          = "example-queue"
  namespace_name      = azurerm_servicebus_namespace.example.name
  resource_group_name = "example-resource-group"
}
