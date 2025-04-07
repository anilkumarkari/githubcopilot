terraform {
  backend "azurerm" {
    subscription_id = "f6868c74-565d-48ab-9c59-3a9a67f25c25"
    resource_group_name   = "rg-test-terraform-state"     # The resource group containing the storage account
    storage_account_name  = "storageaccountforstate"     # The storage account name where the state will be stored
    container_name        = "stateblobcontainer"          # The name of the blob container to store the state
    key                   = "terraform.tfstate"  # The name of the state file (can be customized)
  }
}