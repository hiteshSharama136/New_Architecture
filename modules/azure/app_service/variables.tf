variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
}

variable "location" {
  description = "The location of the App Service Plan"
  type        = string
}

variable "resource_group_name" {
  description = "The resource group name where the App Service Plan will be deployed"
  type        = string
}

variable "kind" {
  description = "The kind of App Service Plan, e.g., 'FunctionApp', 'AppService'"
  type        = string
  default     = "FunctionApp"
}

variable "reserved" {
  description = "Specifies if the plan should run on Linux"
  type        = bool
  default     = true
}

variable "sku_tier" {
  description = "The pricing tier for the App Service Plan (e.g., Dynamic, Premium, Standard)"
  type        = string
  default     = "Dynamic"
}

variable "sku_size" {
  description = "The instance size for the App Service Plan (e.g., Y1, P1v2, S1)"
  type        = string
  default     = "Y1"
}
