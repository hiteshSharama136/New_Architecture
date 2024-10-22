variable "key_vault_name" {
  description = "The name of the Key Vault"
  type        = string
}

variable "location" {
  description = "The location where the Key Vault will be deployed"
  type        = string
}

variable "resource_group_name" {
  description = "The resource group name where the Key Vault will be deployed"
  type        = string
}

variable "sku_name" {
  description = "The SKU name of the Key Vault, e.g., 'standard', 'premium'"
  type        = string
  default     = "standard"
}

variable "tenant_id" {
  description = "The Tenant ID for the Key Vault"
  type        = string
}

variable "soft_delete_retention_days" {
  description = "The number of days to retain deleted Key Vaults"
  type        = number
  default     = 90
}

variable "purge_protection_enabled" {
  description = "Specifies whether purge protection is enabled"
  type        = bool
  default     = false
}

variable "secrets" {
  description = "Map of secrets to store in Key Vault"
  type        = map(string)
  default     = {}
}
