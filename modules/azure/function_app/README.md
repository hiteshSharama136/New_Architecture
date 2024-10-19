
## Azure Functions - Equivalent to AWS Lambda for serverless computing.

# Azure Function App with Terraform

This Terraform module deploys an **Azure Function App**. Azure Function Apps provide a serverless compute service that allows you to run event-driven code without having to explicitly provision or manage infrastructure.

## Features

- Creates an Azure Function App.
- Configurable service plan and storage account for optimal performance.
- Supports deployment in various Azure regions.

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

module "function_app" {
  source = "./modules/function_app"

  function_app_name       = "myfunctionapp"  # Must be globally unique
  location                = "East US"
  resource_group_name     = "my-resource-group"
  service_plan_id         = azurerm_app_service_plan.my_service_plan.id  # Reference to an existing App Service Plan
  storage_account_name     = azurerm_storage_account.my_storage_account.name
  storage_account_access_key = azurerm_storage_account.my_storage_account.primary_access_key
}
