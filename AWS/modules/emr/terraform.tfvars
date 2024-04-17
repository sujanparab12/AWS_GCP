# EMR general configurations
name = "spark-app"
subnet_id = "subnet-02b2731c07384f6d2"
key_name = "vault"
release_label = "emr-5.16.0"
applications = ["Spark"]

# Master node configurations
master_instance_type = "m3.xlarge"
master_ebs_size = "50"

# Slave nodes configurations
core_instance_type = "m3.xlarge"
core_instance_count = 1
core_ebs_size = "50"