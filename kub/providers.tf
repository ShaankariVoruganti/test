provider "azurerm" {
  features {}
client_id= "04b09b9d-8713-47f7-9f4b-1dbeea456fdc"
client_secret= "_Zk8Q~wWO~LUsbLFz6LKeMmk~FVoYn4Uk4F8uczc"
tenant_id= "4c4a6eb2-1694-4a2c-859b-8f68fe6a937c"
subscription_id="faac9286-6bb8-4387-87db-d13974580c91"
}
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.64.0"
}
}
}
