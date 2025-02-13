# Define terraform block to specify required providers.
terraform {

  # Define the required terraform version.
  required_version = ">= 1.9.6"

  # Define required providers and their versions.
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }

}

# Generate a random pet name as a unique bucket prefix.
resource "random_pet" "bucket_prefix" {
  length = 4 # Set the length of the generated name.
}

# Output the generated bucket prefix.
output "bucket_prefix" {
  value = random_pet.bucket_prefix.id # Expose the generated name as an output.
}
