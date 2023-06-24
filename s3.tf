resource "aws_s3_bucket" "my-s3-bucket" {
  bucket = "my-s3bucket-2023"

  # Other bucket configurations

  tags = {
    "environment" = "DEV"
    "terraform"   = "true"
  }
}

resource "aws_s3_bucket_versioning" "my-s3-bucket-versioning" {
  bucket = aws_s3_bucket.my-s3-bucket.id

  versioning {
    enabled    = true
    mfa_delete = false
  }
}
