provider "azurerm" {
  features {}
client_id= "e7872244-12cf-4535-8884-dbcc07e91e9e"
client_secret= "5O48Q~jrBLbWhnZ4RwtAc4mzwI7fQys5BLo6Mali"
tenant_id= "a81cf97c-ef59-4c28-a9a5-15de98fce51b"
subscription_id="4f9b03a1-6c02-4fb5-9505-d3e99e26e2ff"
}
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.64.0"
}
}
}
