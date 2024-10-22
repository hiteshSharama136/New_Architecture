# resource "azurerm_subnet" "subnet" {
#   name                 = var.subnet_name
#   resource_group_name  = var.resource_group_name
#   virtual_network_name = var.virtual_network_name
#   address_prefixes     = var.address_prefixes
#   service_endpoints    = var.service_endpoints

#   dynamic "delegation" {
#     for_each =  length(var.delegation) == 0 ? [] : var.delegation

#     content {
#       name = delegation.value.name

#       service_delegation {
#         name    = delegation.value.service_delegation_name
#         actions = delegation.value.service_delegation_actions
#       }
#     }
#   }
# }

resource "azurerm_subnet" "servicebus_subnet" {
  name                 = var.servicebus_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.servicebus_address_prefixes
}

resource "azurerm_subnet" "functionapp_subnet" {
  name                 = var.functionapp_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.functionapp_address_prefixes
}
