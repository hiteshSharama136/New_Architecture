resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${var.virtual_network_name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.virtual_network_address_space

  subnet {
    name           = var.subnet.name
    # address_prefix = var.subnet.address_prefix
    security_group = var.subnet.security_group
  }

  tags = {
    Env         = var.tags.Env
    App         = var.tags.App
  }
}