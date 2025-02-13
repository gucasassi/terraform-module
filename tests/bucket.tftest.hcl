# Run a setup step to generate necessary test data.
run "setup_tests" {
  module {
    source = "./tests/setup" # Load the setup module from the specified path.
  }
}

# Run the test for creating an S3 bucket.
run "create_bucket" {
  variables {
    # Set the AWS region to use for the test.
    aws_region = "eu-west-1"
    # Use the generated bucket prefix from setup_tests and append a suffix.
    bucket_name = "${run.setup_tests.bucket_prefix}-aws-s3-bucket"
  }

  # Assert that the created bucket name matches the expected value.
  assert {
    condition     = aws_s3_bucket.example.bucket == "${run.setup_tests.bucket_prefix}-aws-s3-bucket"
    error_message = "Invalid bucket name" # Error message if the assertion fails.
  }
}
