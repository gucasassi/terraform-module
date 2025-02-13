# Provider configuration.
provider "aws" {

  # Set the AWS region to the value specified in the 'region' variable.
  region = var.aws_region

  # Apply default tags to all resources managed by this provider.
  default_tags {
    tags = {
      "Terraform"  = "true"                                              # Tag all resources to indicate they are managed by Terraform.
      "Repository" = "https://github.com/gucasassi/terraform-module.git" # Repository name.
    }
  }

}
