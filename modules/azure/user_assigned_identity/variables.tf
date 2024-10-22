variable "identity_name" {
  type        = string
  description = "The name of the User Assigned Identity"
  default     = "function-app-identity"
}

variable "function_app_name" {
  type        = string
  description = "The name of the Function App"
  default     = "myFunctionApp"
}

variable "location" {
  type        = string
  description = "The location for the resources"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group"
}

variable "app_service_plan_id" {
  type        = string
  description = "The ID of the App Service Plan"
}

variable "storage_account_name" {
  type        = string
  description = "The name of the Storage Account"
}

