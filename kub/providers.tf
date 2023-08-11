provider "azurerm" {
  features {}
client_id= "cc1e6eb4-fb82-4749-bfde-c9ccb523e01a"
client_secret= "lnj8Q~dvbG~AZsXEJxiXJUHQUmSHrqyMTiHfjbVq"
tenant_id= "d1b7bd44-674e-4209-869a-64d766f5a751""
subscription_id="d25e7bb9-faa1-4def-a137-5dda917b09e3"
}
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.64.0"
}
}
}
