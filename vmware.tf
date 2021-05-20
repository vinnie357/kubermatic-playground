# Can also be set via the env var 'VSPHERE_USERNAME' on the machine-controller
username: '<< VSPHERE_USERNAME >>'
# Can also be set via the env var 'VSPHERE_ADDRESS' on the machine-controller
# example: 'https://your-vcenter:8443'. '/sdk' gets appended automatically
vsphereURL: '<< VSPHERE_ADDRESS >>'
# Can also be set via the env var 'VSPHERE_PASSWORD' on the machine-controller
password: "<< VSPHERE_PASSWORD >>"
# datacenter name
datacenter: datacenter1
# VM template name
templateVMName: ubuntu-template
# Optional. Sets the networks on the VM. If no network is specified, the template default will be used.
vmNetName: network1
# Optional
folder: folder1
# Optional: Force VMs to be provisoned to the specified resourcePool
# Default is to use the resourcePool of the template VM
# example: kubeone or /DC/host/Cluster01/Resources/kubeone
resourcePool: kubeone
cluster: cluster1
# either datastore or datastoreCluster have to be provided.
datastore: datastore1
datastoreCluster: datastore-cluster1
# Can also be set via the env var 'VSPHERE_ALLOW_INSECURE' on the machine-controller
allowInsecure: true
# instance resources
cpus: 2
memoryMB: 2048
# Optional: Resize the root disk to this size. Must be bigger than the existing size
# Default is to leave the disk at the same size as the template
diskSizeGB: 10
