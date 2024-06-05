# main.tf

# Define the provider
# the provider block is used to configure the AWS provider. It specifies the region where resources will be created.
provider "aws" {
    region = var.region
}

# Module for EC2 instances
# This module will manage the creation and configuration of EC2 instances.
module "ec2" {
    source = "./modules/ec2" # source points to the relative path of the EC2 module
    ami_id = var.ami_id
    instance_type = var.instance_type
    ec2_security_group_id = module.security_groups.ec2_security_group_id
    ec2_security_group_name = module.security_groups.ec2_security_group_name
}

# Module for Elastic Load Balancer (ELB)
# This module will manage the creation and configuration of an ELB.
module "elb" {
    source = "./modules/elb"
    instance_ids = [module.ec2.ec2_instance_id]
    availability_zones = var.availability_zones
}

# Module for RDS instance
# This module will manage the creation and configuration of an RDS database instance.
module "rds" {
    source = "./modules/rds" # source points to the relative path of the RDS module
    rds_security_group_id = module.security_groups.rds_security_group_id
}

# Module for S3 bucket
# This module will manage the creation and configuration of an S3 bucket.
module "s3" {
    source = "./modules/s3" # source points to the relative path of the S3 module
}

# Module for Security Groups
# This module will manage the creation and configuration of security groups.
module "security_groups" {
    source = "./modules/security_groups" # source points to the relative path of the security groups
    vpc_id = var.vpc_id
}

# Module for IAM roles and policies
# This module will manage the creation and configuration of IAM roles and policies.
module "iam" {
    source = "./modules/iam" # source points to the relative path of the IAM module
}
