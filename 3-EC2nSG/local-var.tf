locals {
  environment = var.environment
  region      = var.aws_region
  name_region = "${local.environment}-${local.region}"

  common_tags = {
    environment = local.environment
    region      = local.region
  }
}