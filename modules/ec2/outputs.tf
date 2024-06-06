# Output the instance ID of the created EC2 instance
output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.web.id
}
