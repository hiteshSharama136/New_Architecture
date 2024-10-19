
## Azure Event Grid or Service Bus - Similar to SNS for event routing or message broadcasting.

# Azure Service Bus with Terraform

This Terraform module deploys an **Azure Service Bus Namespace** and a **Service Bus Topic**. Azure Service Bus provides reliable message queuing and is similar to AWS SNS for event routing and message broadcasting.

## Features

- Creates an Azure Service Bus Namespace for organizing messaging services.
- Creates a Service Bus Topic for publishing and subscribing to messages.
- Supports various SKU options for the Service Bus Namespace.

## Requirements

- Terraform 1.0 or higher
- Azure Provider `azurerm` version 3.x or higher

## Usage

To use this module, include it in your Terraform configuration and provide the necessary input variables.

### Example

```hcl
provider "azurerm" {
  features {}
}

module "service_bus" {
  source = "./modules/service_bus"

  namespace_name      = "my-service-bus-namespace"  # Must be globally unique
  location            = "East US"
  resource_group_name = "my-resource-group"
  sku                 = "Standard"                   # Options: Basic, Standard, Premium
  topic_name          = "my-topic"                   # The name of the Service Bus Topic
}
