# Terraform Module for Azure App Service Plan

This module creates an Azure App Service Plan resource that can be used for deploying Azure Function Apps or other App Services. The module is fully dynamic and allows customization of various properties such as the SKU, location, resource group, and more.

## Usage

```hcl
module "app_service_plan" {
  source = "./app_service_plan"

  app_service_plan_name = "my-app-service-plan"
  location              = "East US"
  resource_group_name   = "my-resource-group"
  kind                  = "FunctionApp"
  reserved              = true

  sku_tier = "Dynamic"
  sku_size = "Y1"
}
