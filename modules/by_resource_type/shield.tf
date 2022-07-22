resource "aws_shield_protection_group" "cloudfront_distributions" {
  count               = var.cloudfront_distributions ? 1 : 0
  protection_group_id = "cloudfront-distributions"
  aggregation         = var.cloudfront_distributions_aggregation
  pattern             = "BY_RESOURCE_TYPE"
  resource_type       = "CLOUDFRONT_DISTRIBUTION"

  tags = local.tags
}

resource "aws_shield_protection_group" "route53_hosted_zone" {
  count               = var.route53_hosted_zones ? 1 : 0
  protection_group_id = "route53-hosted-zones"
  aggregation         = var.route53_hosted_zones_aggregation
  pattern             = "BY_RESOURCE_TYPE"
  resource_type       = "ROUTE_53_HOSTED_ZONE"

  tags = local.tags
}

resource "aws_shield_protection_group" "global_accelerators" {
  count               = var.global_accelerators ? 1 : 0
  protection_group_id = "global-accelerators"
  aggregation         = var.global_accelerators_aggregation
  pattern             = "BY_RESOURCE_TYPE"
  resource_type       = "GLOBAL_ACCELERATOR"

  tags = local.tags
}

resource "aws_shield_protection_group" "application_load_balancers" {
  count               = var.application_load_balancers ? 1 : 0
  protection_group_id = "application-load-balancers"
  aggregation         = var.application_load_balancers_aggregation
  pattern             = "BY_RESOURCE_TYPE"
  resource_type       = "APPLICATION_LOAD_BALANCER"

  tags = local.tags
}

resource "aws_shield_protection_group" "classic_load_balancers" {
  count               = var.classic_load_balancers ? 1 : 0
  protection_group_id = "classic-load-balancers"
  aggregation         = var.classic_load_balancers_aggregation
  pattern             = "BY_RESOURCE_TYPE"
  resource_type       = "CLASSIC_LOAD_BALANCER"

  tags = local.tags
}

resource "aws_shield_protection_group" "elastic_ip_addresses" {
  count               = var.elastic_ip_addresses ? 1 : 0
  protection_group_id = "elastic-ip-addresses"
  aggregation         = var.elastic_ip_addresses_aggregation
  pattern             = "BY_RESOURCE_TYPE"
  resource_type       = "ELASTIC_IP_ALLOCATION"

  tags = local.tags
}
