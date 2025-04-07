# Output the storage account name and container name
output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "container_name" {
  value = azurerm_storage_container.container.name
}
output "vnet_id" {
  value = module.vnet.vnet_id
}

output "subnet_ids" {
  value = module.vnet.subnet_ids
}

output "nsg_name" {
  value = azurerm_network_security_group.example.name
}

output "nsg_id" {
  value = azurerm_network_security_group.example.id
}