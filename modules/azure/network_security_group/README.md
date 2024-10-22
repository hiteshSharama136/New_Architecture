# Azure Network Security Group (NSG) with Subnet Association

This Terraform module deploys an Azure Network Security Group (NSG) and associates it with a specified subnet. The module allows full customization of the NSG name, location, resource group, and the subnet to associate it with.

## Resources

- **azurerm_network_security_group**: Creates a Network Security Group (NSG).
- **azurerm_subnet_network_security_group_association**: Associates the NSG with a specified subnet.

## Inputs

| Name                | Description                                 | Type   | Default   | Required |
|---------------------|---------------------------------------------|--------|-----------|----------|
| `nsg_name`          | The name of the Network Security Group.      | string | `"my-nsg"`| No       |
| `location`          | The location where resources will be created.| string | n/a       | Yes      |
| `resource_group_name`| The name of the resource group.             | string | n/a       | Yes      |
| `subnet_id`         | The ID of the subnet to associate with the NSG.| string| n/a       | Yes      |

## Outputs

None.

## Usage

```hcl
module "nsg_module" {
  source              = "./path_to_module"
  nsg_name            = "custom-nsg"
  location            = "East US"
  resource_group_name = "my-resource-group"
  subnet_id           = azurerm_subnet.my_subnet.id
}
