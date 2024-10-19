
## Azure API Management or Azure Functions Proxies - Equivalent to API Gateway for managing APIs.

# Azure API Management with Terraform

This Terraform module deploys an **Azure API Management** resource. Azure API Management is a service that enables you to manage, secure, and scale your APIs, acting as an API gateway.

## Features

- Creates an API Management service for managing APIs.
- Configurable SKU and capacity to scale based on requirements.
- Manages publisher settings like name and email.
  
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

module "api_management" {
  source = "./modules/api_management"

  api_management_name = "my-api-mgmt"
  location            = "East US"
  resource_group_name = "my-resource-group"
  publisher_name      = "My Company"
  publisher_email     = "api-team@mycompany.com"
  sku                 = "Developer"  # Options: Developer, Basic, Standard, Premium
  capacity            = 1            # Number of units to allocate
}
