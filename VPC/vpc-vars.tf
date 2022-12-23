variable "vpc-name" {
  description = "VPC Name"
  type        = string
  default     = "vpc-dev"
}

variable "vpc-cidr-clock" {
  description = "VPC cidr block range"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc-availabilty-zones" {
  description = "VPC availablity zone list"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "vpc-private-subnet" {
  description = "VPC private subnet list"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc-public-subnet" {
  description = "VPC public subnet list"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc-database-subnet-group-enable" {
  description = "VPC databse subnet group enabler"
  type        = bool
  default     = true
}

variable "vpc-database-subnet-route-enable" {
  description = "VPC databse subnet route enabler"
  type        = bool
  default     = true
}

variable "vpc-database-subnet" {
  description = "VPC database subnet list"
  type        = list(string)
  default     = ["10.0.151.0/24", "10.0.152.0/24"]
}

variable "vpc-enable_nat_gateway" {
  description = "VPC NAT gateway enabler"
  type        = bool
  default     = true
}

variable "vpc-enable_single_nat" {
  description = "VPC single NAT enabler"
  type        = bool
  default     = true
}

variable "vpc-dns_hostname_enabler" {
  description = "VPC DNS hostname enabler"
  type        = bool
  default     = true
}

variable "vpc-enable_dns_support" {
  description = "VPC DNS support enabler"
  type        = bool
  default     = true
}