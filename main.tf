# This file defines the main resources managed by this module.
# Customize and extend based on your infrastructure needs.

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}
