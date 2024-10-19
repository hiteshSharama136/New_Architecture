output "role_assignment_id" {
  description = "The ID of the Role Assignment"
  value       = azurerm_role_assignment.storage_access_to_function.id
}
