Here is the `README.md` file for your dynamic Azure Resource Group Terraform module:

```markdown
# Azure Resource Group Module

This Terraform module creates an Azure Resource Group. It is designed to be dynamic and flexible, allowing users to specify different names, locations, and tags for their resource groups.

## Usage

To use this module, you can include it in your Terraform configuration as follows:

module "resource_group" {
  source   = "./path_to_module"
  name     = "my-resource-group"
  location = "West Europe"
  tags     = {
    environment = "dev"
    cost_center = "12345"
  }
}

### Inputs

| Name        | Description                                           | Type         | Default   | Required |
| ----------- | ----------------------------------------------------- | ------------ | --------- | -------- |
| `name`      | The name of the resource group                        | `string`     | n/a       | yes      |
| `location`  | The Azure region where the resource group will be created | `string`     | `East US` | no       |
| `tags`      | A map of key-value pairs for tagging the resource group | `map(string)`| `{}`      | no       |

### Outputs

| Name                     | Description                           |
| ------------------------ | ------------------------------------- |
| `resource_group_id`       | The ID of the resource group          |
| `resource_group_name`     | The name of the resource group        |
| `resource_group_location` | The location of the resource group    |


## Requirements

- Terraform >= 0.12
- Provider: `azurerm` version >= 2.0

## Providers

| Name      | Version |
| --------- | ------- |
| `azurerm` | >= 2.0  |
```
