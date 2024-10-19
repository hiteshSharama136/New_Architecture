variable "api_management_name" {
  type        = string
  description = "The name of the API management service"
}

variable "resource_group_name" {
  type        = string
}

variable "location" {
  type        = string
}

variable "publisher_name" {
  type        = string
}

variable "publisher_email" {
  type        = string
}

variable "sku" {
  type        = string
  default     = "Developer"
}

variable "capacity" {
  type        = number
  default     = 1
}
