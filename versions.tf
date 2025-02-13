# Specifies Terraform and provider versions
# This ensures compatibility and avoids unexpected changes.

terraform {
  # Specifies the required version of terraform.
  required_version = "~> 1.9.6"

  # Specifies the required providers.
  required_providers {
    # AWS provider.
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.27"
    }
    # Random
    random = {
      source  = "hashicorp/random"
      version = ">= 3.5.1"
    }
  }

}
