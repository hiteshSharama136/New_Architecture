module "resource_group" {
  source = "../modules/azure/resource_group"

  resource_group_name     = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "storage" {
  source               = "../modules/azure/blob_storage"

  storage_account_name = var.storage_account_name
  resource_group_name  = module.resource_group.resource_group_name
  location             = module.resource_group.location
  container_name       = var.container_name
}

module "servicebus" {
  source              = "../modules/azure/service_bus"
  
  namespace_name      = var.namespace_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  topic_name          = var.topic_name
}

module "functionapp" {
  source                    = "../modules/azure/function_app"

  function_app_name          = var.function_app_name
  resource_group_name        = module.resource_group.resource_group_name
  location                   = module.resource_group.location
  service_plan_id            = var.service_plan_id
  storage_account_name       = module.storage.storage_account_name
  storage_account_access_key = azurerm_storage_account.st_account.primary_access_key 
}

module "queue" {
  source              = "../modules/azure/queue_storage" # modules\azure\queue_storage

  queue_name          = var.queue_name
  storage_account_name = module.storage.storage_account_name
}

module "api_gateway" {
  source              = "../modules/azure/api_management"

  api_management_name = var.api_management_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
}
