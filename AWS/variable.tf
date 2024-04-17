variable "name" {
  type = string
  description = "name of the emr"
}
variable "region" {
  type = string
  description = "name of the region"
}
variable "subnet_id" {
  type = string
  description = " unique identifier assigned to a subnet"
}
variable "vpc_id" {
  type = string
  description = " unique identifier assigned to a Virtual Private Cloud "
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
variable "ingress_cidr_blocks" {
  type = string
  description = "set of IP address ranges or CIDR blocks"
}
