variable "name" {
  type = string
  description = "name of the emr"
}

variable "subnet_id" {
  type = string
  description = " unique identifier assigned to a subnet"
}

variable "key_name" {
  type = string
  description = " name of an SSH key pair associated with an instance."
}
variable "release_label" {
  type = string
  description = "refers to a specific version or release of software"
}
variable "applications" {
  type = list(string)
}

variable "master_instance_type" {
  type = string
  description = " specification of the instance type or virtual machine"
}
variable "master_ebs_size" {
  type = string
  description = " size or capacity of the Amazon Elastic Block Store associated with master node"
}
variable "core_instance_type" {
  type = string
  description = "specification of the instance type "
}
variable "core_instance_count" {
  type = string
  description = "number of core nodes or instances in a distributed computing "
}
variable "core_ebs_size" {
  type = string
  description = "size or capacity of the Amazon Elastic Block Store associated with core node"
}



variable "emr_master_security_group" {}
variable "emr_slave_security_group" {}
variable "emr_ec2_instance_profile" {}
variable "emr_service_role" {}
variable "emr_autoscaling_role" {}