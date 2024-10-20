variable "subscription_name" {
  description = "Name of the Event Grid subscription"
  type        = string
  default     = "blob-to-servicebus-subscription"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "eventgrid_topic_name" {
  description = "The name of the Event Grid topic"
  type        = string
  default     = "my-topic"  # Can also be default blob storage topic
}

variable "storage_queue_endpoint" {
  description = "The storage queue endpoint to send events to"
  type        = string
}

variable "servicebus_topic_endpoint" {
  description = "The Service Bus topic endpoint where events will be sent"
  type        = string
}

variable "included_event_types" {
  description = "The types of events to subscribe to in the Event Grid"
  type        = list(string)
  default     = [
    "Microsoft.Storage.BlobCreated",
    "Microsoft.Storage.BlobDeleted"
  ]
}

variable "scope" {
  description = "The scope at which the event subscription will be created (e.g., storage account or event grid topic)"
  type        = string
}

variable "storage_account_id" {
  description = "Specifies the id of the storage account id where the storage queue is located."
  type        = string
}

variable "queue_name" {
  description = "Specifies the name of the storage queue where the Event Subscription will receive events."
  type        = string
}