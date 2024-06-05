# variables.tf

# Define the AWS region variable
variable "region" {
    description = "The AWS region to deploy resources"
    type        = string
    default     = "us-east-1"
}

# Define the AMI ID variable for EC2 instances
variable "ami_id" {
  description = "The AMI ID for the EC2 instances"
  type        = string
  default     = "ami-00beae93a2d981137"  # Amazon Linux 2 AMI for us-east-1
}

# Define the instance type variable for EC2 instances
variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t2.micro" # Smallest instance type eligible for Free Tier
}

# Define the availability zones for the ELB
variable "availability_zones" {
  description = "The availability zones for the ELB"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]  # Replace with your desired availability zones
}

# Define the VPC ID variable
variable "vpc_id" {
  description = "The ID of the VPC where the resources will be deployed"
  type        = string
  default     = "vpc-02fbad4bc923c0ad0"
}
