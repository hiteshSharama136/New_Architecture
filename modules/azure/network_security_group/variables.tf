variable "nsg_name" {
  type        = string
  description = "The name of the Network Security Group"
  default     = "my-nsg"
}

variable "location" {
  type        = string
  description = "The location for the resources"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet to associate with the NSG"
}
