terraform {
  required_version = ">= 0.14.1"
  backend "s3" {}

  required_providers {
    aws        = ">= 3.40.0"
    local      = ">= 1.4"
    random     = ">= 2.1"
    kubernetes = ">= 1.11.1"
    http = {
      source  = "terraform-aws-modules/http"
      version = ">= 2.4.1"
    }
  }
}
