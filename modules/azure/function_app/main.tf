resource "azurerm_app_service_plan" "example" {
  name                = var.service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_function_app" "func_app" {
  name                       = var.function_app_name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  app_service_plan_id        = var.service_plan_id  
  storage_account_name       = var.storage_account_name
  storage_account_access_key  = var.storage_account_access_key

  app_settings = {
    "AzureWebJobsStorage" = var.azure_webjobs_storage
    "FUNCTIONS_WORKER_RUNTIME" = var.functions_worker_runtime
    "ServiceBusConnection" = var.service_bus_connection
  }
  
}
