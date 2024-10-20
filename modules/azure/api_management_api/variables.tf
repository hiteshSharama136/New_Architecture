variable "api_name" {
  description = "Name of the API"
  type        = string
  default     = "FunctionAPI"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "api_management_name" {
  description = "The name of the API Management service"
  type        = string
}

variable "api_management_operation_name" {
  description = "The name of the API Management operation"
  type        = string
}

variable "api_revision" {
  description = "The revision of the API"
  type        = string
  default     = "1"
}

variable "api_display_name" {
  description = "Display name for the API"
  type        = string
  default     = "Function API"
}

variable "api_path" {
  description = "The path for the API"
  type        = string
  default     = "functionapp"
}

variable "api_protocols" {
  description = "The protocols supported by the API"
  type        = list(string)
  default     = ["https"]
}

variable "api_operation_id" {
  description = "ID of the API operation"
  type        = string
  default     = "function-operation"
}

variable "api_operation_display_name" {
  description = "Display name for the API operation"
  type        = string
  default     = "Function Operation"
}

variable "api_operation_method" {
  description = "HTTP method for the API operation"
  type        = string
  default     = "POST"
}

variable "api_operation_url_template" {
  description = "URL template for the API operation"
  type        = string
  default     = "/execute"
}

variable "api_operation_response_status" {
  description = "Response status for the API operation"
  type        = number
  default     = 200
}

variable "api_operation_response_description" {
  description = "Description of the API operation response"
  type        = string
  default     = "Success"
}
