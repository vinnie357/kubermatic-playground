function cleanup_vmware {
#!/bin/bash
echo "destroying"
read -r -p "Are you sure? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    cd terraform/vsphere
    terraform destroy --auto-approve
else
    echo "canceling"
fi
cd ~/workspace
}
