# Define the availability zones for the ELB
variable "instance_ids" {
  description = "List of instance IDs to associate with the ELB"
  type        = list(string)
}

variable "availability_zones" {
  description = "The availability zones for the ELB"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}
