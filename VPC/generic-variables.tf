variable "aws_region" {
  description = "AWS region to choose"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "For which environment we are going for"
  type        = string
  default     = "Dev"
}