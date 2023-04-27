terraform {
  required_version = "0.15.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.0"
    }
  }
}

# provider "aws" {
#   region              = "eu-west-1"
#   allowed_account_ids = var.allowed_account_id
# }