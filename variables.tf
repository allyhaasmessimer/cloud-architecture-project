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

# Define the bucket name variable for S3
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "clouddeploy-ahm-20240530"
}

# Define the database configuration variables for RDS
variable "db_name" {
  description = "The name of the RDS database"
  type        = string
  default     = "exampledb"
}

variable "db_username" {
  description = "The username for the RDS database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "The password for the RDS database"
  type        = string
  default     = "password"
  sensitive   = true  # This marks the variable as sensitive to avoid logging
}

variable "db_instance_class" {
  description = "The instance class for the RDS database"
  type        = string
  default     = "db.t2.micro"  # Smallest instance type eligible for Free Tier
}

variable "db_allocated_storage" {
  description = "The allocated storage for the RDS database (in GB)"
  type        = number
  default     = 20  # Minimum size for Free Tier eligible databases
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
