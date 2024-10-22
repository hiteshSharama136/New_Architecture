output "key_vault_id" {
  description = "The ID of the Key Vault"
  value       = azurerm_key_vault.key_vault.id
}

output "key_vault_uri" {
  description = "The URI of the Key Vault"
  value       = azurerm_key_vault.key_vault.vault_uri
}

output "key_vault_secret_ids" {
  description = "The IDs of the secrets stored in the Key Vault"
  value       = { for s in azurerm_key_vault_secret.secret : s.name => s.id }
}
