This repository used for the terraform automation (IaC) for the azure landing zone provisioning. This was developed in visual studion code and with github autopilot enabled.

1) Cretae resource group, storage account and container manually to store state file
2) Add backend block for the remote state file
3) Run the terraform init, plan and apply
4) For better management environment-wise, pls create workspaces and terraform.tfvars into the respective environments to pass the env variables values dynamically.
terraform workspace list
terraform workspace show
terraform workspace new dev
terraform workspace new uat
terraform workspace new prod
terraform workspace select dev
terraform workspace show

and create below folder structure and keep terraform.tfvars file in each env folder
environments/dev
environments/uat
environments/prod


dev
terraform workspace select dev
terraform init
terraform plan -var-file="environments/dev/terraform.tfvars"
terraform apply -var-file="environments/dev/terraform.tfvars"

uat:
terraform workspace select uat
terraform init
terraform plan -var-file="environments/uat/terraform.tfvars"
terraform apply -var-file="environments/uat/terraform.tfvars"

prod:
terraform workspace select prod
terraform init
terraform plan -var-file="environments/prod/terraform.tfvars"
terraform apply -var-file="environments/prod/terraform.tfvars"

Note: env specific state files will be generated in backend storage location.

Real time Scenario :
====================
Infra team : Creates the fundational azure landing zone and managing it.

Dev team : Each developer will have own backend storage to store the terraform state file to maintain their own changes wihout interrupting the fundational landing zone state hence each devloper has to create backend storage before going to work on azure platform so that developers will own their state file and play with it.

DevOps : Ensure to create deploy pipelines based on the input parameters required to provision azure resources with terraform.
