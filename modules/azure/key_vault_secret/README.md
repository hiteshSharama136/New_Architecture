# Terraform Module for Azure Key Vault and Secrets

This module creates an Azure Key Vault and allows for dynamic secret storage. The module is fully dynamic, enabling customization for various properties such as the Key Vault name, SKU, and tenant ID.

## Usage

```hcl
module "key_vault" {
  source = "./key_vault"

  key_vault_name       = "my-key-vault"
  location             = "East US"
  resource_group_name  = "my-resource-group"
  tenant_id            = "00000000-0000-0000-0000-000000000000"

  secrets = {
    "storageConnectionString" = azurerm_storage_account.this.primary_connection_string
    "apiKey"                  = "superSecretApiKey"
  }

  sku_name                    = "standard"
  soft_delete_retention_days   = 90
  purge_protection_enabled     = true
}
