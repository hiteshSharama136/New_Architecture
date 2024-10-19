resource "azurerm_role_assignment" "storage_access_to_function" {
  scope                = var.storage_account_id            # Dynamic storage account ID
  role_definition_name = var.role_definition_name          # Dynamic role definition name
  principal_id         = var.function_app_principal_id     # Dynamic function app principal ID
}
