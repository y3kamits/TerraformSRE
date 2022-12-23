#Input Variables
#AWS Region

variable "aws_region" {
  description = "Region in which Resources to be created"
  type        = string
  default     = "ap-south-1"
}

#AWS EC2 Instance Type

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

#AWS EC2 Instance key pair

variable "instance_keypair" {
  description = "AWS EC2 key pair"
  type        = string
  default     = "terraform-key"

}

variable "instance_type_list" {
  description = "instance type list"
  type        = list(string)
  default     = ["t3.micro", "t3.small"]
}

variable "instance_type_map" {
  description = "instance type map"
  type        = map(string)
  default = {
    "dev"   = "t3.micro",
    "stage" = "t3.small",
    "prod"  = "t3.large"
  }
}