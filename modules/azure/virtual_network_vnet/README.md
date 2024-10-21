# Azure Virtual Network Terraform Module

This Terraform module provisions an Azure Virtual Network with a subnet and allows customization of its attributes.

## Usage

module "azurerm_virtual_network"  {
  name                = "vnet-example"
  location            = "East US"
  resource_group_name = "my-resource-group"
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
    security_group = azurerm_network_security_group.example.name
  }

  tags = {
    Env = "dev"
    App = "web"
  }
}
