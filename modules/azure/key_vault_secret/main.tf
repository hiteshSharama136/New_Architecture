resource "azurerm_key_vault" "key_vault" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name
  tenant_id           = var.tenant_id

  # soft_delete_retention_days = var.soft_delete_retention_days
  # purge_protection_enabled   = var.purge_protection_enabled
}

resource "azurerm_key_vault_secret" "secret" {
  for_each     = var.secrets
  name         = each.key
  value        = each.value
  key_vault_id = azurerm_key_vault.key_vault.id
}

# resource "azurerm_key_vault_secret" "secret" {
#   for_each            = var.secrets
#   name                = each.key
#   value               = each.value
#   key_vault_id        = var.key_vault_id

#   depends_on = [azurerm_key_vault.key_vault]
# }