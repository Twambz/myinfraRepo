resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-s3bucket-2023"

  # Other bucket configurations

  tags = {
    "environment" = "DEV"
    "terraform"   = "true"
  }
}

resource "aws_s3_bucket_versioning" "my_s3_bucket_versioning" {
  bucket = aws_s3_bucket.my_s3_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
