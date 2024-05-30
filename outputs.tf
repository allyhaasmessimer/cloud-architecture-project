output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.b.bucket
}

output "rds_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = aws_db_instance.default.endpoint
}
