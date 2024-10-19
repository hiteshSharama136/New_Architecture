variable "storage_account_name" {
  type        = string
  description = "The name of the storage account"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure location"
}

variable "account_tier" {
  type        = string
  default     = "Standard"
}

variable "replication_type" {
  type        = string
  default     = "LRS"
}

variable "container_name" {
  type        = string
  description = "The name of the storage container"
}

variable "container_access_type" {
  type        = string
  default     = "private"
}
