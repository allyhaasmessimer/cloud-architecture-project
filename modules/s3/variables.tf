# Define the bucket name variable for S3
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "clouddeploy-ahm-20240530"
}

# Variable for bucket expiry days
variable "bucket_expiry_days" {
  description = "Number of days after which the objects in the bucket should expire"
  type        = number
  default     = 365
}

# Variable for transition days
variable "transition_days" {
  description = "Number of days after which the objects should be transitioned to Glacier storage class"
  type        = number
  default     = 30
}
