## Expose Function App via API Management Gateway

Terraform Code for API Management to expose Function Apps

# API Management and Function API Terraform Module

This Terraform module creates an Azure API Management API and its operations, which can be dynamically configured using variables.

## Resources Created
- `azurerm_api_management_api` - Azure API Management API resource
- `azurerm_api_management_api_operation` - API operation within the API Management service

## Variables

| Name                                    | Description                                          | Type          | Default             | Required |
|-----------------------------------------|------------------------------------------------------|---------------|---------------------|----------|
| `api_name`                              | Name of the API                                      | `string`      | `"FunctionAPI"`      | No       |
| `resource_group_name`                   | The name of the resource group                       | `string`      | N/A                 | Yes      |
| `api_management_name`                   | The name of the API Management service               | `string`      | N/A                 | Yes      |
| `api_revision`                          | The revision of the API                              | `string`      | `"1"`               | No       |
| `api_display_name`                      | Display name for the API                             | `string`      | `"Function API"`     | No       |
| `api_path`                              | The path for the API                                 | `string`      | `"functionapp"`      | No       |
| `api_protocols`                         | The protocols supported by the API                   | `list(string)`| `["https"]`          | No       |
| `api_operation_id`                      | ID of the API operation                              | `string`      | `"function-operation"`| No       |
| `api_operation_display_name`            | Display name for the API operation                   | `string`      | `"Function Operation"`| No       |
| `api_operation_method`                  | HTTP method for the API operation                    | `string`      | `"POST"`             | No       |
| `api_operation_url_template`            | URL template for the API operation                   | `string`      | `"/execute"`         | No       |
| `api_operation_response_status`         | Response status for the API operation                | `number`      | `200`                | No       |
| `api_operation_response_description`    | Description of the API operation response            | `string`      | `"Success"`          | No       |

## Outputs

| Name                        | Description                                      |
|-----------------------------|--------------------------------------------------|
| `api_management_api_id`      | The ID of the API in API Management              |
| `api_management_api_operation_id` | The ID of the API operation              |
| `api_management_api_url`     | The URL of the API in API Management             |

## Example Usage

```hcl
module "api_management_function_api" {
  source = "./path-to-module"

  api_name              = "FunctionAPI"
  resource_group_name   = "example-resource-group"
  api_management_name   = "example-api-management"
  api_revision          = "1"
  api_display_name      = "Function API"
  api_path              = "functionapp"
  api_protocols         = ["https"]
  api_operation_id      = "function-operation"
  api_operation_display_name = "Function Operation"
  api_operation_method  = "POST"
  api_operation_url_template = "/execute"
  api_operation_response_status = 200
  api_operation_response_description = "Success"
}
