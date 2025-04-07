environment         = "dev"
location            = "East US"
resource_group_name = "rg-dev"
nsg_name            = "nsg-dev"
storage_account_name = "stdevstorageacct"
vnet_name         = "vnet-dev"
address_space       = ["10.0.0.0/16"]
subnets = {
  subnet1 = "10.0.1.0/24"
  subnet2 = "10.0.2.0/24"
  subnet3 = "10.0.3.0/24"
}
