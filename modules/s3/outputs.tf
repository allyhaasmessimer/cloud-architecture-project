output "s3_bucket_name" {
    description = "The name of the S3 bucket"
    value       = aws_s3_bucket.b.bucket # Output the name of the S3 bucket from the S3 module
}
