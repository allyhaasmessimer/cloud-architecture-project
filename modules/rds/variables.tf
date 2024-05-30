variable "db_allocated_storage" {
  description = "The allocated storage for the RDS database (in GB)"
  type        = number
  default     = 20  # Minimum size for Free Tier eligible databases
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
