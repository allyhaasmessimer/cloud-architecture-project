output "ec2_security_group_name" {
  description = "The name of the EC2 security group"
  value       = aws_security_group.ec2.name
}

output "ec2_security_group_id" {
  description = "The ID of the EC2 security group"
  value       = aws_security_group.ec2.id
}

output "rds_security_group_id" {
  description = "The ID of the RDS security group"
  value = aws_security_group.rds_security_group.id
}

output "rds_security_group_name" {
  description = "The name of the RDS security group"
  value = aws_security_group.rds_security_group.name
}
