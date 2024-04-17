variable "name" {
    type = string
    description = "name of emr"
}
variable "vpc_id" {
  type = string
  description = " unique identifier assigned to a Virtual Private Cloud "
}
variable "ingress_cidr_blocks" {
  type = string
  description = "set of IP address ranges or CIDR blocks"
}
