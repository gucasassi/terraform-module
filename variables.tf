# Defines input variables for the module.
variable "aws_region" {
  description = "AWS region to use for the test"
  type        = string
  default     = "eu-west-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}
