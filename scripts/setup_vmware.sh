function setup_vmware {
#!/bin/bash
cd terraform/vsphere
terraform init
terraform fmt
terraform validate
terraform plan
# apply
read -p "Press enter to continue"
terraform apply --auto-approve
cd ~/workspace
}
