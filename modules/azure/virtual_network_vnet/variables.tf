variable "virtual_network_name" {
  type        = string
  description = "name of the virtual network"
}
variable "resource_group_name" {
  type        = string
  description = "resource group name of the virtual network"
}
variable "virtual_network_address_space" {
  type        = list(string)
  description = "address space of the virtual network"
}
variable "location" {
  type        = string
  description = "location of the virtual network"
}
variable "subnet" {
  type = object({ name = string, address_prefix = string, security_group = string })
}
variable "tags" {
  type = object({ Env = string, App = string })
}