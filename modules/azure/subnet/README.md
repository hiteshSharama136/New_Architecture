# Azure Subnet Terraform Module

This Terraform module provisions an Azure subnet within a specified virtual network.

# Azure Subnets for Service Bus and Function App

This Terraform module creates two subnets in an existing Virtual Network, one for an Azure Service Bus and another for an Azure Function App. The subnets can be customized via input variables.

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

## Inputs

| Name                        | Description                                            | Type          | Default            | Required |
|-----------------------------|--------------------------------------------------------|---------------|--------------------|----------|
| `servicebus_subnet_name`     | The name of the Service Bus subnet.                    | string        | `"servicebus-subnet"` | No       |
| `functionapp_subnet_name`    | The name of the Function App subnet.                   | string        | `"functionapp-subnet"` | No       |
| `resource_group_name`        | The name of the resource group.                        | string        | n/a                | Yes      |
| `virtual_network_name`       | The name of the virtual network.                       | string        | n/a                | Yes      |
| `servicebus_address_prefixes`| Address prefixes for the Service Bus subnet.           | list(string)  | `["10.0.1.0/24"]`  | No       |
| `functionapp_address_prefixes`| Address prefixes for the Function App subnet.         | list(string)  | `["10.0.2.0/24"]`  | No       |

## Outputs

None.

## Usage

```hcl
module "subnets" {
  source                    = "./path_to_module"
  servicebus_subnet_name     = "custom-servicebus-subnet"
  functionapp_subnet_name    = "custom-functionapp-subnet"
  resource_group_name        = "my-resource-group"
  virtual_network_name       = "my-vnet"
  servicebus_address_prefixes = ["10.1.1.0/24"]
  functionapp_address_prefixes = ["10.1.2.0/24"]
}
