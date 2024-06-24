data "vsphere_datastore" "datastore" {
  name          = var.data_store
  datacenter_id = data.vsphere_datacenter.datacenter.id
}