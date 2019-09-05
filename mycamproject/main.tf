#####################################################################
##
##      Created 9/5/19 by admin. for mycamproject
##
#####################################################################

terraform {
  required_version = "> 0.8.0"
}

provider "vsphere" {
  user           = "${var.user}"
  password       = "${var.password}"
  vsphere_server = "${var.vsphere_server}"

  allow_unverified_ssl = "${var.allow_unverified_ssl}"
  version = "~> 1.2"
}


data "vsphere_virtual_machine" "myvm_template" {
  name          = "${var.myvm_template_name}"
  datacenter_id = "${data.vsphere_datacenter.myvm_datacenter.id}"
}

data "vsphere_datacenter" "myvm_datacenter" {
  name = "${var.myvm_datacenter_name}"
}

data "vsphere_datastore" "myvm_datastore" {
  name          = "${var.myvm_datastore_name}"
  datacenter_id = "${data.vsphere_datacenter.myvm_datacenter.id}"
}

resource "vsphere_virtual_machine" "myvm" {
  name          = "${var.myvm_name}"
  datastore_id  = "${data.vsphere_datastore.myvm_datastore.id}"
  num_cpus      = "${var.myvm_number_of_vcpu}"
  memory        = "${var.myvm_memory}"
  guest_id = "${data.vsphere_virtual_machine.myvm_template.guest_id}"
  resource_pool_id = "${var.myvm_resource_pool}"
  clone {
    template_uuid = "${data.vsphere_virtual_machine.myvm_template.id}"
  }
  disk {
    name = "${var.myvm_disk_name}"
    size = "${var.myvm_disk_size}"
  }
}