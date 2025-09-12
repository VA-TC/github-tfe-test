terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }
}
provider "random" {}
# Generate a random string of 8 characters
resource "random_string" "example" {
  length  = 8
  upper   = true
  lower   = true
  number  = true
  special = false
}
output "random_string_value" {
  value = random_string.example.result
}
