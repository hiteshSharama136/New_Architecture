variable "storage_account_id" {
  description = "The ID of the Azure Storage Account"
  type        = string
}

variable "role_definition_name" {
  description = "The name of the role to assign"
  type        = string
  default     = "Storage Blob Data Contributor"  # Default value, can be overridden
}

variable "function_app_principal_id" {
  description = "The principal ID of the Azure Function App"
  type        = string
}
