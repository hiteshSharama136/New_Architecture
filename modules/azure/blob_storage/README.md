
## Azure Blob Storage - Equivalent to AWS S3 for scalable object storage.

# Azure Blob Storage with Terraform

This Terraform module deploys an **Azure Blob Storage** account and a **storage container**. Azure Blob Storage is equivalent to AWS S3 and provides scalable object storage for unstructured data.

## Features

- Creates an Azure Storage Account for blob storage.
- Creates a storage container for organizing blobs within the storage account.
- Configurable account tier and replication settings to meet performance and redundancy requirements.

## Requirements

- Terraform 1.0 or higher
- Azure Provider `azurerm` version 3.x or higher

## Usage

To use this module, include it in your Terraform configuration and provide the necessary input variables.

### Example

```hcl
provider "azurerm" {
  features {}
}

module "blob_storage" {
  source = "./modules/blob_storage"

  storage_account_name = "mystorageaccount"  # Must be globally unique
  resource_group_name  = "my-resource-group"
  location             = "East US"
  account_tier        = "Standard"            # Options: Standard, Premium
  replication_type    = "LRS"                 # Options: LRS, GRS, RA-GRS, ZRS
  container_name      = "mycontainer"
  container_access_type = "private"           # Options: private, blob, container
}
