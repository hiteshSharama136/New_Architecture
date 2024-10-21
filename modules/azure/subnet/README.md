# Azure Subnet Terraform Module

This Terraform module provisions an Azure subnet within a specified virtual network.

## Usage

module "subnet" {
  source = "path/to/your/module"

  name                 = "my-subnet"
  resource_group_name  = "my-resource-group"
  virtual_network_name = "my-virtual-network"
  address_prefixes     = ["10.0.1.0/24"]
  service_endpoints    = ["Microsoft.Storage"]

  delegation = [
    {
      name                      = "example-delegation"
      service_delegation_name   = "Microsoft.ContainerInstance/containerGroups"
      service_delegation_actions = ["Microsoft.Network/virtualNetworks/subnets/write"]
    }
  ]
}

## Inputs

| Name                  | Description                                                            | Type     | Default | Required |
|-----------------------|------------------------------------------------------------------------|----------|---------|----------|
| name                  | The name of the subnet.                                                | string   | n/a     | yes      |
| resource_group_name   | The name of the resource group in which to create the subnet.           | string   | n/a     | yes      |
| virtual_network_name  | The name of the virtual network in which to create the subnet.          | string   | n/a     | yes      |
| address_prefixes      | The address prefixes to use for the subnet.                             | list     | n/a     | yes      |
| service_endpoints     | The list of service endpoints to associate with the subnet.             | list     | []      | no       |
| delegation            | The list of delegations for the subnet.                                 | list     | []      | no       |

## Outputs

| Name        | Description                     |
|-------------|---------------------------------|
| subnet_id   | The ID of the subnet.           |
| subnet_name | The name of the subnet.         |
