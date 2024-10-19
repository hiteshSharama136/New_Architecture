resource "azurerm_api_management_api" "function_api" {
  name                = var.api_name
  resource_group_name = var.resource_group_name
  api_management_name = var.api_management_name
  revision            = var.api_revision
  display_name        = var.api_display_name
  path                = var.api_path
  protocols           = var.api_protocols
}

resource "azurerm_api_management_api_operation" "function_api_operation" {
  operation_id        = var.api_operation_id
  api_name            = azurerm_api_management_api.function_api.name
  api_management_name = var.api_management_name  
  resource_group_name = var.resource_group_name  
  display_name        = var.api_operation_display_name
  method              = var.api_operation_method
  url_template        = var.api_operation_url_template

  response {
    status_code      = var.api_operation_response_status
    description = var.api_operation_response_description
  }
}
