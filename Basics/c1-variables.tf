terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}
#Provider configuration
#provider "aws" {
#  region  = var.aws_region #"ap-south-1"
#  profile = "default"
#}