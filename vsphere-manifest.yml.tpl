apiVersion: kubeone.io/v1beta1
kind: KubeOneCluster
versions:
  kubernetes: '1.18.6'
cloudProvider:
  vsphere: {}
  cloudConfig: |
    [Global]
    secret-name = "vsphere-ccm-credentials"
    secret-namespace = "kube-system"
    port = "443"
    insecure-flag = "0"

    [VirtualCenter "1.1.1.1"]

    [Workspace]
    server = "1.1.1.1"
    datacenter = "dc-1"
    default-datastore="exsi-nas"
    resourcepool-path="kubeone"
    folder = "kubeone"

    [Disk]
    scsicontrollertype = pvscsi

    [Network]
    public-network = "NAT Network"
