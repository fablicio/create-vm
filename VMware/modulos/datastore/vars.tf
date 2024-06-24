variable "data_center" {
  default = "ha-datacenter"
}

variable "data_store" {
  default = "datastore2"

}
variable "mgmt_lan" {
  default = "VM Network"

}
variable "net_adapter_type" {
  default = "VMXNET 3"

}
variable "guest_id" {
  default = "ubuntu64Guest"

}
variable "custom_iso_path" {
  default = "ISO/ubuntu-22.04.2-live-server-amd64.iso"

}
variable "name_new_vm" {
  description = "Input a name for Virtual Machine Ex. new_vm"
}

variable "vm_count" {
  description = "Number of instaces"
}

variable "disk_size" {
  #default = "16"
  description = "Amount of Disk, Ex. 50, 60, 70 OBS: The amount may not be less than 50"
}

variable "num_cpus" {
  default     = "1"
  description = "Amount of vCPU’s, Ex. 2"
}

variable "num_mem" {
  default     = "1024"
  description = "Amount of Memory, Ex. 1024, 2048, 3073, 4096"
}