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
