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
