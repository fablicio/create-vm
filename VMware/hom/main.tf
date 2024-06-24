locals {
  user                 = "terraform1"
  password             = "^kv6TUIYQ3@BpLqJ"
  vsphere_server       = "192.168.0.5"
  allow_unverified_ssl = true
 # location = "eastus"
 # locationname = "eus"
 # ambiente = "hom"
 # vnetname = "vnet-eastus-hom-inloco"
 # rgvnet = "rg-eastus-hom-inloco-network"
 # sistema = "Inloco"
#}

module "hom-dc" {
  source = "../modulos/datacenter"
}

module "hom-store" {
  source = "../modulos/datastore"
}

module "hom-pool" {
  source = "../modulos/pool"  
}

module "hom-vm" {
  source = "../modulos/virtualmachine"
  user = local.user
  password = local.password
  vsphere_server = local.vsphere_server
  allow_unverified_ssl = local.allow_unverified_ssl
}
