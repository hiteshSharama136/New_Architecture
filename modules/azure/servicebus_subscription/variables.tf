variable "function_app_name" {
  description = "Name of the Azure Function App"
  type        = string
}

variable "function_app_default_hostname" {
  description = "Default hostname of the Function App"
  type        = string
}

variable "is_topic" {
  description = "Whether to use a Service Bus Topic instead of a Queue"
  type        = bool
}

variable "service_bus_queue_or_topic_id" {
  description = "ID of the Service Bus Queue or Topic"
  type        = string
}
