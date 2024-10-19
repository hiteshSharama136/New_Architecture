variable "service_bus_namespace" {
  description = "The name of the Service Bus Namespace"
  type        = string
}

variable "service_bus_queue_or_topic" {
  description = "The name of the Service Bus Queue or Topic"
  type        = string
}

variable "is_topic" {
  description = "Whether to use a Service Bus Topic instead of a Queue"
  type        = bool
  default     = false
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "namespace_id" {
  description = "The ID of the Service Bus Namespace where the Topic and Queue will be created"
  type        = string
}