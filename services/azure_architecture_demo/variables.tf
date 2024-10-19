variable "arm_tenant_id" {
  type        = string
  description = "The tenant Id of azure provider"
}

variable "arm_subscription_id" {
  type        = string
  description = "The subscription Id of azure provider"
}

variable "arm_client_id" {
  type        = string
  description = "The client Id of azure provider spn"
}

variable "arm_client_secret" {
  type        = string
  sensitive   = true
  description = "The client secret of azure provider spn"
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

# Storage Module Variables
variable "storage_account_name" {
  type = string
}

variable "container_name" {
  type = string
}

# Service Bus Variables
variable "namespace_name" {
  type = string
}

variable "topic_name" {
  type = string
}

# Function App Variables
variable "function_app_name" {
  type = string
}

variable "service_plan_id" {
  type = string
}

# Queue Variables
variable "queue_name" {
  type = string
}

# API Management Variables
variable "api_management_name" {
  type = string
}

variable "publisher_name" {
  type        = string
}

variable "publisher_email" {
  type        = string
}

variable "tags" {
  description = "A map of tags to add to the App Service"
  type        = map(string)
  default     = {}
}