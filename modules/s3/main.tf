# Define the S3 bucket
resource "aws_s3_bucket" "b" {
  bucket = var.bucket_name

}

# Define the S3 bucket lifecycle configuration
resource "aws_s3_bucket_lifecycle_configuration" "b_lifecycle" {
  bucket = aws_s3_bucket.b.id

  rule {
    id     = "example-lifecycle-rule"
    status = "Enabled"

    expiration {
      days = var.bucket_expiry_days
    }

    transition {
      days          = var.transition_days
      storage_class = "GLACIER"
    }
  }
}
