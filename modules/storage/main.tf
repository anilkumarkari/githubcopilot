resource "azurerm_storage_account" "storage" {
  name                     = "st${var.environment}storageacct"
  resource_group_name       = module.network.resource_group_name
  location                 = var.location
  account_tier              = "Standard"
  account_replication_type = "LRS"
}

output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}
