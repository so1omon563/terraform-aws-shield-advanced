provider "aws" {
  default_tags {
    tags = {
      environment = "dev"
      terraform   = "true"
    }
  }
}

# Only protecting Application Load Balancers
module "shield-by-resource-type" {
  source  = "so1omon563/shield-advanced/aws//modules/group_by_resource_type"
  version = "3.0.0" # Replace with appropriate version

  tags = {
    example = "true"
  }
  cloudfront_distributions = false
  route53_hosted_zones     = false
  global_accelerators      = false
  classic_load_balancers   = false
  elastic_ip_addresses     = false
}

output "shield-by-resource-type" {
  value = module.shield-by-resource-type
}
