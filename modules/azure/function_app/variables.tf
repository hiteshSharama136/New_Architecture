variable "function_app_name" {
  type        = string
  description = "The name of the function app"
}

variable "service_plan_name" {
  type        = string
  description = "The name of the Service plan"
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

variable "azure_webjobs_storage" {
  description = "Azure WebJobs Storage connection string"
  type        = string
}

variable "functions_worker_runtime" {
  description = "Runtime for Azure Function"
  type        = string
}

variable "service_bus_connection" {
  description = "Service Bus connection string"
  type        = string
}