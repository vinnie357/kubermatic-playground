function env {
#!/bin/bash
echo "vsphere host or ip:"
read vsphere_address
echo "insecure tls?:"
read vsphere_allow_unverified_ssl
echo "vsphere_user:"
read vsphere_user
echo "vsphere_pass:"
read -s vsphere_pass

export VSPHERE_ADDRESS=$vsphere_address
export VSPHERE_USERNAME=$vsphere_user
export VSPHERE_PASSWORD=$vsphere_pass
export VSPHERE_ALLOW_UNVERIFIED_SSL=$vsphere_allow_unverified_ssl
}
