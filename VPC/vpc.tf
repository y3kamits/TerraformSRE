/*
This will create the following resources
1. VPC
2. 4 subnets - in each mentioned different AZ
    2 Public Subnets
    2 private subnets
3. create 2 database subnet with DB subnet group in each AZ and a route table for each
4. A public route table with assiciated public subnet
5. A private route table with assiciated private subnet
6. 1 IGT for internet access
7. 2 NAT for each private subnet for communication
8. DNS hostname and support true
*/

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  name = var.vpc-name       #"vpc-dev"
  cidr = var.vpc-cidr-clock #"10.0.0.0/16"

  azs             = var.vpc-availabilty-zones #["ap-south-1a", "ap-south-1b"]
  private_subnets = var.vpc-private-subnet    #["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = var.vpc-public-subnet     #["10.0.101.0/24", "10.0.102.0/24"]

  create_database_subnet_group       = var.vpc-database-subnet-group-enable #true
  create_database_subnet_route_table = var.vpc-database-subnet-route-enable #true
  database_subnets                   = var.vpc-database-subnet              #["10.0.151.0/24", "10.0.152.0/24"]

  #NAT gateway for outbound communication
  enable_nat_gateway = var.vpc-enable_nat_gateway #true
  single_nat_gateway = var.vpc-enable_nat_gateway #true

  #DNS parameters
  enable_dns_hostnames = var.vpc-dns_hostname_enabler #true
  enable_dns_support   = var.vpc-enable_dns_support   #true

  public_subnet_tags = {
    type = "public subnet"
  }

  private_subnet_tags = {
    type = "private subnet"
  }

  database_subnet_tags = {
    type = "database subnet"
  }

  tags = {
    Onwer       = "Amit"
    Environment = "Dev"
  }

}
