# Global Variables
variable "service_account_id" {
  type = string
  description = "The service_account_id"
  default = ""
}
variable "service_account_name" {
    type = string
    description = "name of the service account"
    default = ""
}
variable "cluster_name" {
    type = string
    description = "name of the data-proc cluster"
    default = ""
  
}
variable "region" {
  type = string
  description = "The region"
  default = "us-central1"
}
variable "graceful_decommission_timeout" {
    type = number
    description = "The timeout duration which allows graceful decomissioning when you change the number of worker nodes directly through a terraform apply"
   
}

variable "labels" {
  type = map(string)
  description = "Set of labels to identify the cluster"
  default = {}
}

# DataProc cluster configuration

variable "staging_bucket" {
  type = string
  description = "The bucket to be used for staging"
  default = ""
}

variable "no_of_instances" {
    type = number
    description = "Specifies the number of master nodes to create."
    
  
}

variable "compute_machine_name" {
    type = string
    description = "The name of a Google Compute Engine machine type to create for the master"
    default = ""
  
}

variable "cluster_version" {
  type = string
  description = "The image version of DataProc to be used"
  default = ""
}


variable "master_instance_type" {
  type = string
  description = "The instance type of the master node"
  default = ""
}

variable "master_disk_type" {
  type = string
  description = "The disk type of the primary disk attached to each master node. One of 'pd-ssd' or 'pd-standard'."
  default = ""
}

variable "master_disk_size" {
  type = number
  description = "Size of the primary disk attached to each master node, specified in GB"

}

variable "primary_worker_min_instances" {
  type = number
  description = "The minimum number of primary worker instances"
  
}

variable "worker_instance_type" {
  type = string
  description = "The instance type of the worker nodes"
  default = ""
}

variable "min_cpu_platform" {
    type = string
    description = "The name of a minimum generation of CPU family for the master/worker"
    default=""
}

variable "disk_size" {
    type = number
    description = "Size of the primary disk attached to each node"
    
}
variable "master_local_ssd" {
  type = number
  description = "The amount of local SSD disks that will be attached to each master cluster node."
  
}

# variable "initialization_script" {
#   type = list(string)
#   description = "List of additional initialization scripts"
#   default = []
# }

variable "initialization_timeout_sec" {
  type = number
  description = "The maximum duration (in seconds) which script is allowed to take to execute its action."

}
