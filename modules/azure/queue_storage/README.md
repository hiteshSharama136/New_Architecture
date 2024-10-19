
## Azure Queue Storage or Service Bus Queues - Equivalent to SQS for message queuing.

# Azure Queue Storage with Terraform

This Terraform module deploys an **Azure Storage Queue**. Azure Queue Storage provides cloud messaging between application components and is equivalent to AWS SQS for message queuing.

## Features

- Creates an Azure Storage Queue for message storage.
- Supports integration with various Azure services for asynchronous messaging.

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

module "queue_storage" {
  source = "./modules/queue_storage"

  queue_name            = "myqueue"                  # Must be globally unique
  storage_account_name  = azurerm_storage_account.my_storage_account.name
}
