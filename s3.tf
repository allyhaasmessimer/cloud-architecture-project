resource "aws_s3_bucket" "b" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = "Terraform-S3"
    Environment = "Dev"
  }
}
