# Individual AWS Shield Advanced protection

Creates AWS Shield Advanced protection for a single resource.

These resources can include:

- Cloudfront distribution

- Route 53 Hosted Zone

- Global Accelerator

- Application load balancer

- Classic load balancer

- Elastic IP address

Submodules for protection groups (`group_by_all`, `group_by_arbitrary`, and `group_by_resource_type`) can be found under the `modules` directory.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

Auto-generated technical documentation is created using [`terraform-docs`](https://terraform-docs.io/)
## Examples

```hcl
# See examples under the top level examples directory for more information on how to use this module.
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.39.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_shield_protection.shield](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/shield_protection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name_resource_arn_map"></a> [name\_resource\_arn\_map](#input\_name\_resource\_arn\_map) | A map of names and ARNs of resources to be protected. The name will be used as the name of the resource in the AWS console. | `map(string)` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_shield"></a> [shield](#output\_shield) | A map of properties for the created AWS Shield protection. |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
