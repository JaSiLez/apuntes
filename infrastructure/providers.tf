# Declare the aws providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 1.0"
      
    }
  }
}

