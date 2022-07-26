# Individual AWS Shield Advanced protection

Creates AWS Shield Advanced protection for a single resource.

These resources can include:

- Cloudfront distribution

- Route 53 Hosted Zone

- Global Accelerator

- Application load balancer

- Classic load balancer

- Elastic IP address


Examples for use can be found under the [examples](https://github.com/so1omon563/terraform-aws-shield/tree/main/examples) directory.

Submodules for protection groups (`group_by_all` and `group_by_resource_type`) can be found under the [modules](https://github.com/so1omon563/terraform-aws-shield/tree/main/modules) directory.

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
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.23.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_shield_protection.shield](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/shield_protection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Short, descriptive name of the environment. All resources will be named using this value as a prefix. | `string` | n/a | yes |
| <a name="input_resource_arn"></a> [resource\_arn](#input\_resource\_arn) | The ARN of the resource to be protected. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_shield"></a> [shield](#output\_shield) | A map of properties for the created AWS Shield protection. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
