# AWS Shield Advanced protection for ALL resources

Creates AWS Shield Advanced protection for all supported resources.

These resources include:

- Cloudfront distribution

- Route 53 Hosted Zone

- Global Accelerator

- Application load balancer

- Classic load balancer

- Elastic IP address

Note that this module will use the same `aggregation` value for all resources.

If you wish to select / de-select resources by type, and control the aggregation types , there is a `by_resource_type` submodule.

For protecting individual resources, there is the `individual_shield` submodule. This submodule can be directly called to create a single protection for a single resource.

These submodules can be found under the [modules](https://github.com/so1omon563/terraform-aws-shield/tree/main/modules) directory.

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
| [aws_shield_protection_group.all](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/shield_protection_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aggregation"></a> [aggregation](#input\_aggregation) | n/a | `string` | `"SUM"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider. | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
