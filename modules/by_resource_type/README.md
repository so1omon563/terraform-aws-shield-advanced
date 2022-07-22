# AWS Shield Advanced protection by resource type

Creates AWS Shield Advanced protection for all supported resources by type.

These resources include:

- Cloudfront distribution

- Route 53 Hosted Zone

- Global Accelerator

- Application load balancer

- Classic load balancer

- Elastic IP address

Protection is accomplished by resource type, and will protect all resources of that type.

To select / de-select resources, use the appropriate resource `boolean` variable. You can also change the default `aggregation` value for each resource type if desired.

For protecting individual resources, there is the `individual_shield` submodule. This submodule can be directly called to create a single protection for a single resource.

This submodule can be found under the [modules](https://github.com/so1omon563/terraform-aws-shield/tree/main/modules) directory.

Examples for use can be found under the [examples](https://github.com/so1omon563/terraform-aws-shield/tree/main/examples) directory.

**Please note that there are no tests for this module at this time. The testing framework we use does not cover these resource types currently.**

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Auto-generated technical documentation is created using [`terraform-docs`](https://terraform-docs.io/)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.22 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.22.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_shield_protection_group.application_load_balancers](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/shield_protection_group) | resource |
| [aws_shield_protection_group.classic_load_balancers](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/shield_protection_group) | resource |
| [aws_shield_protection_group.cloudfront_distributions](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/shield_protection_group) | resource |
| [aws_shield_protection_group.elastic_ip_addresses](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/shield_protection_group) | resource |
| [aws_shield_protection_group.global_accelerators](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/shield_protection_group) | resource |
| [aws_shield_protection_group.route53_hosted_zone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/shield_protection_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_load_balancers"></a> [application\_load\_balancers](#input\_application\_load\_balancers) | Whether to protect Application Load Balancers or not. | `bool` | `true` | no |
| <a name="input_application_load_balancers_aggregation"></a> [application\_load\_balancers\_aggregation](#input\_application\_load\_balancers\_aggregation) | Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events. This will define the aggregation for Application Load Balancer resources in this module. See [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html) for more information. | `string` | `"MEAN"` | no |
| <a name="input_classic_load_balancers"></a> [classic\_load\_balancers](#input\_classic\_load\_balancers) | Whether to protect Classic Load Balancers or not. | `bool` | `true` | no |
| <a name="input_classic_load_balancers_aggregation"></a> [classic\_load\_balancers\_aggregation](#input\_classic\_load\_balancers\_aggregation) | Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events. This will define the aggregation for Classic Load Balancer resources in this module. See [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html) for more information. | `string` | `"MEAN"` | no |
| <a name="input_cloudfront_distributions"></a> [cloudfront\_distributions](#input\_cloudfront\_distributions) | Whether to protect CloudFront Distributions or not. | `bool` | `true` | no |
| <a name="input_cloudfront_distributions_aggregation"></a> [cloudfront\_distributions\_aggregation](#input\_cloudfront\_distributions\_aggregation) | Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events. This will define the aggregation for CloudFront Distribution resources in this module. See [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html) for more information. | `string` | `"MAX"` | no |
| <a name="input_elastic_ip_addresses"></a> [elastic\_ip\_addresses](#input\_elastic\_ip\_addresses) | Whether to protect Elastic IP Addresses or not. | `bool` | `true` | no |
| <a name="input_elastic_ip_addresses_aggregation"></a> [elastic\_ip\_addresses\_aggregation](#input\_elastic\_ip\_addresses\_aggregation) | Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events. This will define the aggregation for Elastic IP Address resources in this module. See [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html) for more information. | `string` | `"SUM"` | no |
| <a name="input_global_accelerators"></a> [global\_accelerators](#input\_global\_accelerators) | Whether to protect Global Accelerators or not. | `bool` | `true` | no |
| <a name="input_global_accelerators_aggregation"></a> [global\_accelerators\_aggregation](#input\_global\_accelerators\_aggregation) | Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events. This will define the aggregation for Global Accelerator resources in this module. See [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html) for more information. | `string` | `"MEAN"` | no |
| <a name="input_route53_hosted_zones"></a> [route53\_hosted\_zones](#input\_route53\_hosted\_zones) | Whether to protect Route53 Hosted Zones or not. | `bool` | `true` | no |
| <a name="input_route53_hosted_zones_aggregation"></a> [route53\_hosted\_zones\_aggregation](#input\_route53\_hosted\_zones\_aggregation) | Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events. This will define the aggregation for Route53 Hosted Zone resources in this module. See [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html) for more information. | `string` | `"SUM"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_shield_application_load_balancers"></a> [shield\_application\_load\_balancers](#output\_shield\_application\_load\_balancers) | A map of properties for the created Application Load Balancer AWS Shield protections. |
| <a name="output_shield_classic_load_balancers"></a> [shield\_classic\_load\_balancers](#output\_shield\_classic\_load\_balancers) | A map of properties for the created Classic Load Balancer AWS Shield protections. |
| <a name="output_shield_cloudfront_distributions"></a> [shield\_cloudfront\_distributions](#output\_shield\_cloudfront\_distributions) | A map of properties for the created CloudFront Distribution AWS Shield protections. |
| <a name="output_shield_elastic_ip_addresses"></a> [shield\_elastic\_ip\_addresses](#output\_shield\_elastic\_ip\_addresses) | A map of properties for the created Elastic IP Address AWS Shield protections. |
| <a name="output_shield_global_accelerators"></a> [shield\_global\_accelerators](#output\_shield\_global\_accelerators) | A map of properties for the created Global Accelerator AWS Shield protections. |
| <a name="output_shield_route53_hosted_zone"></a> [shield\_route53\_hosted\_zone](#output\_shield\_route53\_hosted\_zone) | A map of properties for the created Route53 Hosted Zone AWS Shield protections. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
