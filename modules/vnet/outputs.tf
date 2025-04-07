output "vnet_id" {
  value = azurerm_virtual_network.this.id
}

output "subnet_ids" {
  value = { for s, v in azurerm_subnet.subnet : s => v.id }
}
