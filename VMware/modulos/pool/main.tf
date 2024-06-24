data "vsphere_resource_pool" "pool" {}
data "vsphere_network" "networking" {
  name          = var.mgmt_lan
  datacenter_id = data.vsphere_datacenter.datacenter.id
}