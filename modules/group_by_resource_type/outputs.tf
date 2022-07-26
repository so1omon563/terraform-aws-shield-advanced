output "shield_cloudfront_distributions" {
  value       = { for key, value in aws_shield_protection_group.cloudfront_distributions[*] : key => value }
  description = "A map of properties for the created CloudFront Distribution AWS Shield protections."
}

output "shield_route53_hosted_zone" {
  value       = { for key, value in aws_shield_protection_group.route53_hosted_zone[*] : key => value }
  description = "A map of properties for the created Route53 Hosted Zone AWS Shield protections."
}

output "shield_global_accelerators" {
  value       = { for key, value in aws_shield_protection_group.global_accelerators[*] : key => value }
  description = "A map of properties for the created Global Accelerator AWS Shield protections."
}

output "shield_application_load_balancers" {
  value       = { for key, value in aws_shield_protection_group.application_load_balancers[*] : key => value }
  description = "A map of properties for the created Application Load Balancer AWS Shield protections."
}

output "shield_classic_load_balancers" {
  value       = { for key, value in aws_shield_protection_group.classic_load_balancers[*] : key => value }
  description = "A map of properties for the created Classic Load Balancer AWS Shield protections."
}

output "shield_elastic_ip_addresses" {
  value       = { for key, value in aws_shield_protection_group.elastic_ip_addresses[*] : key => value }
  description = "A map of properties for the created Elastic IP Address AWS Shield protections."
}
