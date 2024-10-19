output "api_management_api_id" {
  description = "The ID of the API in API Management"
  value       = azurerm_api_management_api.function_api.id
}

output "api_management_api_operation_id" {
  description = "The ID of the API operation"
  value       = azurerm_api_management_api_operation.function_api_operation.id
}

# output "api_management_api_url" {
#   description = "The URL of the API in API Management"
#   value       = azurerm_api_management_api.function_api.gateway_url
# }
