# Azure Terraform Module

## Description

This repository provides a fully dynamic Terraform module to provision Azure resources. The module supports:
- Azure Blob Storage
- Azure Service Bus
- Azure Function Apps
- Azure Queues
- Azure API Management

## Project Structure

- **modules/**: Contains the individual modules for each resource.
- **main.tf**: Root module for orchestrating the deployment of all resources.
- **variables.tf**: Defines the input variables used across the modules.
- **outputs.tf**: Outputs of resources after deployment.

## Usage

### Example Usage in `main.tf`

```hcl
module "storage" {
  source               = "./modules/storage"
  storage_account_name = "mystorageaccount"
  resource_group_name  = "myResourceGroup"
  location             = "East US"
  container_name       = "my-container"
}

module "servicebus" {
  source              = "./modules/servicebus"
  namespace_name      = "myNamespace"
  resource_group_name = "myResourceGroup"
  location            = "East US"
  topic_name          = "myTopic"
}

module "functionapp" {
  source              = "./modules/functionapp"
  function_app_name   = "myFunctionApp"
  resource_group_name = "myResourceGroup"
  location            = "East US"
  service_plan_id     = "app-service-plan-id"
}

module "queue" {
  source              = "./modules/queue"
  queue_name          = "myQueue"
  storage_account_name = "mystorageaccount"
}

module "api_gateway" {
  source              = "./modules/api_gateway"
  api_management_name = "api-management-service"
  resource_group_name = "myResourceGroup"
  location            = "East US"
  publisher_name      = "Publisher"
  publisher_email     = "publisher@example.com"
}
