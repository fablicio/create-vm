provider "vsphere" {
  user                 = "terraform1"
  password             = "^kv6TUIYQ3@BpLqJ"
  vsphere_server       = "192.168.0.5"
  allow_unverified_ssl = true
}

resource "vsphere_virtual_machine" "virtualmachine" {
  count            = var.vm_count
  name             = "${var.name_new_vm}-${count.index + 1}"
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id
  #force_power_off            = true
  shutdown_wait_timeout      = 1
  num_cpus                   = var.num_cpus
  memory                     = var.num_mem
  wait_for_guest_net_timeout = 0
  guest_id                   = var.guest_id
  nested_hv_enabled          = true

  network_interface {
    network_id   = data.vsphere_network.networking.id
    adapter_type = var.net_adapter_type
  }

  cdrom {
    datastore_id = data.vsphere_datastore.datastore.id
    path         = var.custom_iso_path
  }

  disk {
    size             = var.disk_size
    label            = "first-disk.vmdk"
    eagerly_scrub    = false
    thin_provisioned = true
  }
}