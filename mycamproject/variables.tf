#####################################################################
##
##      Created 9/5/19 by admin. for mycamproject
##
#####################################################################

variable "user" {
  type = "string"
  description = "Generated"
}

variable "password" {
  type = "string"
  description = "Generated"
}

variable "vsphere_server" {
  type = "string"
  description = "Generated"
}

variable "allow_unverified_ssl" {
  type = "string"
  description = "Generated"
}

variable "myvm_name" {
  type = "string"
  description = "Virtual machine name for myvm"
}

variable "myvm_number_of_vcpu" {
  type = "string"
  description = "Number of virtual cpu's."
}

variable "myvm_memory" {
  type = "string"
  description = "Memory allocation."
}

variable "myvm_disk_name" {
  type = "string"
  description = "The name of the disk. Forces a new disk if changed. This should only be a longer path if attaching an external disk."
}

variable "myvm_disk_size" {
  type = "string"
  description = "The size of the disk, in GiB."
}

variable "myvm_template_name" {
  type = "string"
  description = "Generated"
}

variable "myvm_datacenter_name" {
  type = "string"
  description = "Generated"
}

variable "myvm_datastore_name" {
  type = "string"
  description = "Generated"
}

variable "myvm_resource_pool" {
  type = "string"
  description = "Resource pool."
}

