resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-${var.environment}"
  location            = var.location
  resource_group_name = module.network.resource_group_name
}

output "nsg_name" {
  value = azurerm_network_security_group.nsg.name
}

