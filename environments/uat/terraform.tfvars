# uat.tfvars - settings for the uat environment
location            = "East US"
resource_group_name = "rg-uat"
nsg_name            = "nsg-uat"
storage_account_name = "uatstorageacct2025"
vnet_name         = "vnet-uat"
address_space       = ["10.0.0.0/16"]
subnets = {
  subnet1 = "10.0.4.0/24"
  subnet2 = "10.0.5.0/24"
  subnet3 = "10.0.6.0/24"
}
