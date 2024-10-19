## Grant Permissions Between Services

Set up Managed Identities or Service Principals to ensure each service has permission to communicate with other services securely.

Terraform code for Granting Storage Access to Function App

# Terraform Module for Azure Role Assignment

This Terraform module assigns a specified role to a Function App for access to a Storage Account.

## Resources Created

- `azurerm_role_assignment`: Assigns a role to the Function App for the specified Storage Account.

## Variables

| Name                     | Description                                                        | Type     | Default                               | Required |
|--------------------------|--------------------------------------------------------------------|----------|---------------------------------------|----------|
| `storage_account_id`     | The ID of the Azure Storage Account                                 | `string` | N/A                                   | Yes      |
| `role_definition_name`   | The name of the role to assign (e.g., "Storage Blob Data Contributor") | `string` | "Storage Blob Data Contributor"      | No       |
| `function_app_principal_id` | The principal ID of the Azure Function App                         | `string` | N/A                                   | Yes      |

## Outputs

| Name                   | Description                               |
|------------------------|-------------------------------------------|
| `role_assignment_id`   | The ID of the Role Assignment             |

## Example Usage

```hcl
module "function_storage_role_assignment" {
  source = "./path-to-module"

  storage_account_id        = azurerm_storage_account.st_account.id  # Reference to the storage account ID
  function_app_principal_id = azurerm_function_app.this.identity.principal_id  # Reference to the Function App principal ID
}
