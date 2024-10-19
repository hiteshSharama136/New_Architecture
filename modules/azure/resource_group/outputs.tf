output "id" {
  value       = azurerm_resource_group.azrg.id
  sensitive   = true
  description = "resource group id"
}

output "name" {
  value       = azurerm_resource_group.azrg.name
  sensitive   = true
  description = "resource group name"
}

output "location" {
  value       = azurerm_resource_group.azrg.name
  sensitive   = true
  description = "resource group name"
}