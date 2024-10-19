variable "namespace_name" {
  type        = string
  description = "The name of the Service Bus namespace"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure location"
}

variable "sku" {
  type        = string
  default     = "Standard"
}

variable "topic_name" {
  type        = string
  description = "The name of the Service Bus topic"
}
