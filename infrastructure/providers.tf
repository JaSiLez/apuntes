# Declare the aws provider
terraform {
  required_providers {
    mycloud = {
      source  = "hashicorp/aws"
      version = ">= 1.0"
      region = var.aws_region 
    }
  }
}

