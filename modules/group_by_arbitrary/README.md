# AWS Shield Advanced protection for ARBITRARY resources

Creates an AWS Shield Advanced protection group for an arbitrary list supported resources.

These resources can include:

- Cloudfront distribution

- Route 53 Hosted Zone

- Global Accelerator

- Application load balancer

- Classic load balancer

- Elastic IP address

Note that this module will use the same `aggregation` value for all defined resources.

If you wish to select / de-select resources by type, and control the aggregation types, there is a `group_by_resource_type` submodule.

This submodule can be found under the [modules](https://github.com/so1omon563/terraform-aws-shield/tree/main/modules) directory.

Examples for use can be found under the [examples](https://github.com/so1omon563/terraform-aws-shield/tree/main/examples) directory.
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
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.23.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_shield_protection_group.arbitrary](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/shield_protection_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aggregation"></a> [aggregation](#input\_aggregation) | Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events. This will define the aggregation for ALL protected resources in this module. See [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html) for more information. | `string` | `"SUM"` | no |
| <a name="input_members"></a> [members](#input\_members) | List of ARNs of the resources to add to the protection group | `list(string)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the protection group. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_shield"></a> [shield](#output\_shield) | A map of properties for the created AWS Shield protection. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
