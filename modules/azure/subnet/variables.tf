variable "subnet_name" {
  type        = string
  description = "(Required) The name of the subnet. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create the subnet. Changing this forces a new resource to be created."
}
variable "virtual_network_name" {
  type        = string
  description = "(Required) The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created."
}
variable "address_prefixes" {
  type        = list(string)
  description = "(Required) The address prefixes to use for the subnet."
}
variable "service_endpoints" {
  type        = list(string)
  description = "(Optional) The list of Service endpoints to associate with the subnet. Possible values include: Microsoft.AzureActiveDirectory, Microsoft.AzureCosmosDB, Microsoft.ContainerRegistry, Microsoft.EventHub, Microsoft.KeyVault, Microsoft.ServiceBus, Microsoft.Sql, Microsoft.Storage, Microsoft.Storage.Global and Microsoft.Web."
}

variable "delegation" {
  type = list(object({
    name                       = string
    service_delegation_name    = string
    service_delegation_actions = optional(list(string))
  }))
  description = "(Optional)"
}