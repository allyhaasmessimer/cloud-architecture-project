# Define the AMI ID variable for EC2 instances
variable "ami_id" {
  description = "The AMI ID for the EC2 instances"
  type        = string
  default     = "ami-00beae93a2d981137"
}

# Define the instance type variable for EC2 instances
variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ec2_security_group_name" {
  description = "The security group name to associate with the EC2 instance"
  type        = string
}

# Define the VPC ID variable
variable "vpc_id" {
  description = "The ID of the VPC where the resources will be deployed"
  type        = string
  default     = "vpc-02fbad4bc923c0ad0"
}
