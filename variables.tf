# variables.tf

# Define the AWS region variable
variable "region" {
    description = "The AWS region to deploy resources"
    type        = string
    default     = "us-east-1"
}

# Define the availability zones for the ELB
variable "availability_zones" {
  description = "The availability zones for the ELB"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

# Define the VPC ID variable
variable "vpc_id" {
  description = "The ID of the VPC where the resources will be deployed"
  type        = string
  default     = "vpc-02fbad4bc923c0ad0"
}
