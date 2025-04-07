variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "my-resource-group"
}

variable "resource_group_location" {
  description = "The location of the resource group"
  type        = string
  default     = "EAST US"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "mystorageaccount01"
}

variable "container_name" {
  description = "The name of the blob container"
  type        = string
  default     = "mycontainer"
}

variable "subscription_id" {
    description = "The Azure subscription ID"
    type        = string
  default = "f6868c74-565d-48ab-9c59-3a9a67f25c25"
}

# Define variable for address space
variable "address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

# Define variable for subnets
variable "subnets" {
  description = "A map of subnets for the virtual network"
  type        = map(string)
  default = {
    subnet1 = "10.0.1.0/24"
    subnet2 = "10.0.2.0/24"
    subnet3 = "10.0.3.0/24"
  }
}
variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
  }

  variable "nsg_name" {
    description = "The name of the Network Security Group"
    type        = string
    
  }
  variable "subnet_name" {
  description = "The name of the subnet for the firewall"
  type        = string
  default     = "AzureFirewallSubnet"
}