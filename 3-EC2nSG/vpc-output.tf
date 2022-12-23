output "VPC-ID" {
  description = "VPC id"
  value       = module.vpc.vpc_id
}

output "VPC_CIDR_Block" {
  description = "VPC CIRD block"
  value       = module.vpc.vpc_cidr_block
}

output "VPC_private_Subnets" {
  description = "VPC Private subnets"
  value       = module.vpc.private_subnets
}

output "VPC_Public_Subnets" {
  description = "VPC Public Subnets"
  value       = module.vpc.public_subnets
}

output "VPC_NAT_IPs" {
  description = "VPC NAT IP addresses"
  value       = module.vpc.nat_public_ips
}

output "VPC_AZ_List" {
  description = "VPC Availability Zones"
  value       = module.vpc.azs
}
