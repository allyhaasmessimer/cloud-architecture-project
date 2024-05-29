# main.tf

# Define the provider
# the provider block is used to configure the AWS provider. It specifies the region where resources will be created.
provider "aws" {
    region = var.region # The AWS region is set using a variable defined in variables.tf
}

# Module for EC2 instances
# This module will manage the creation and configuration of EC2 instances.
module "ec2" {
    source = "./modules/ec2" # source points to the relative path of the EC2 module
}

# Module for S3 bucket
# This module will manage the creation and configuration of an S3 bucket.
module "s3" {
    source = "./modules/s3" # source points to the relative path of the S3 module
}

# Module for RDS instance
# This module will manage the creation and configuration of an RDS database instance.
module "rds" {
    source = "./module/rds" # source points to the relative path of the RDS module
}

# Module for Elastic Load Balancer (ELB)
# This module will manage the creation and configuration of an ELB.
module "elb" {
    source = "./module/elb"  # Source points to the relative path of the ELB module
}

# Module for Security Groups
# This module will manage the creation and configuration of security groups.
module "security_groups" {
    source = "./module/security_groups" source points to the relative path of the security groups
}

# Module for IAM roles and policies
# This module will manage te creation and configuration of IAM roles and policies.
module "iam" {
    source = "./module/iam" source points to the relative path of the IAM module
}

# Output values
# output blocks are used to define the valu3es that will be outputted after Terraform applies the configurations.
output "ec2_instance_id" {
    description = "The ID of the EC2 instance"
    value       = module.ec2.instance_id  # Output the ID of the EC2 instance from the EC2 module
}

output "s3_bucket_name" {
    description = "The name of the S3 bucket"
    value       = module.s3.bucket_name # Output the name of the S3 bucket from the S3 module
}

output "rds_endpoint" {
    description = "The endpoint of the RDS instance"
    value       = module.rds.endpoint # Output the endpoint of the RDS instance from the RDS module
}

output "elb_dns_name" {
    description = "The DNS name of the Elastic Load Balancer"
    value       = module.elb.dns_name # Output the DNS name of the ELB from the ELB module
}
