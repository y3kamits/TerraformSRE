#Base configuration
terraform {
  #Provider Declaration
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"

    }
  }
}

#Provider configuration
provider "aws" {
  region  = var.aws_region #"ap-south-1"
  profile = "default"
}