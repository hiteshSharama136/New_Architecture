variable "function_app_name" {
  type        = string
  description = "The name of the function app"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure location"
}

variable "service_plan_id" {
  type        = string
}

variable "storage_account_name" {
  type        = string
}

variable "storage_account_access_key" {
  type        = string
}
