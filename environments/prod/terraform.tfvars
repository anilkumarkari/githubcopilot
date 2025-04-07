# prod.tfvars - settings for the production environment
environment         = "prod"
location            = "East US"
resource_group_name = "rg-prod"
nsg_name            = "nsg-prod"
storage_account_name = "stprodstorageacct"
vnet_name         = "vnet-prod"
address_space       = ["10.0.0.0/16"]
subnets = {
  subnet1 = "10.0.7.0/24"
  subnet2 = "10.0.8.0/24"
  subnet3 = "10.0.9.0/24"
}
