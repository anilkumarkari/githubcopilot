provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

# Create a Virtual Network
module "vnet" {
  source              = "./modules/vnet"
  vnet_name           = var.vnet_name
  location            = var.resource_group_location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.address_space
  subnets             = var.subnets
}

# Create a Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

# Create a Storage Account
resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Create a Blob Container
resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.storage.id
  container_access_type = "private"
}

# Create a Network Security Group (NSG)
resource "azurerm_network_security_group" "example" {
  name                = var.nsg_name
  location            = var.resource_group_location
  resource_group_name = azurerm_resource_group.rg.name

  # Inbound security rule: Allow SSH (port 22)
  security_rule {
    name                       = "Allow-SSH"
    priority                  = 100
    direction                 = "Inbound"
    access                    = "Allow"
    protocol                  = "Tcp"
    source_port_range         = "*"
    destination_port_range    = "22"
    source_address_prefix     = "*"
    destination_address_prefix = "*"
  }
  # Outbound security rule: Deny all outbound traffic
  security_rule {
    name                       = "Deny-All-Outbound"
    priority                  = 200
    direction                 = "Outbound"
    access                    = "Deny"
    protocol                  = "*"
    source_port_range         = "*"
    destination_port_range    = "*"
    source_address_prefix     = "*"
    destination_address_prefix = "*"
  }
}

