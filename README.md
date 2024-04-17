
# **AWS EMR Deployment with Terraform**
This repository contains Terraform code to deploy an Amazon EMR (Elastic MapReduce) cluster on AWS. 
Amazon EMR is a cloud big data platform for processing and analyzing vast amounts of data using
open-source tools such as Apache Spark, Apache Hadoop etc.

## Prerequisites
Before you begin, ensure you have the following prerequisites:

Terraform installed on your local machine.
AWS IAM credentials with appropriate permissions to create resources.
Basic understanding of Terraform and AWS services.

To deploy the AWS EMR cluster using Terraform, follow these steps:

Clone this repository to your local machine:

open bash and type
git clone https://github.com/sujanparab12/AWS_GCP.git


### Navigate to the cloned directory:
open bash and type
### cd aws-emr-terraform
## Initialize Terraform:

### terraform init
Customize the variables.tf file as needed to specify your AWS region, instance types, key pair, etc.

Review and modify the main.tf file to adjust any configurations according to your requirements, 
such as adding additional security settings or modifying EMR configurations.

Plan the Terraform execution to see what changes will be applied:


### terraform plan
If the plan looks good, apply the Terraform configuration:


### terraform apply
Once the deployment is complete, Terraform will output the details of the deployed resources, including the EMR cluster details.

## cleanup
### terraform destroy
To avoid incurring unnecessary charges, ensure you destroy the resources once they are no longer needed


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Google Dataproc Deployment with Terraform
Terraform installed on your local machine.This repository contains Terraform code to deploy a Google Cloud Dataproc cluster. 
Google Cloud Dataproc is a fast, easy-to-use, fully managed cloud service for running Apache Spark and Apache Hadoop clusters.

## Prerequisites
Before you begin, ensure you have the following prerequisites:


Google Cloud Platform  account with appropriate permissions to create resources.
Basic understanding of Terraform and GCP services.
To deploy the Google Dataproc cluster using Terraform, follow these steps:

Clone this repository to your local machine:

### open bash and paste this code
git clone https://github.com/sujanparab12/AWS_GCP.git

### Navigate to the cloned directory

cd google-dataproc-terraform

## Initialize Terraform:


### terraform init
Customize the variables.tf file as needed to specify your GCP project ID, region, zone, machine types, etc.

Review and modify the main.tf file to adjust any configurations according to your requirements, such as adding additional initialization actions, specifying software versions, etc.



## Plan the Terraform execution to see what changes will be applied:

### terraform plan
If the plan looks good, apply the Terraform configuration:

### terraform apply
Once the deployment is complete, Terraform will output the details of the deployed resources, including the Dataproc cluster details.

## Cleanup
### terraform destroy
To avoid incurring unnecessary charges, ensure you destroy the resources once they are no longer needed:




