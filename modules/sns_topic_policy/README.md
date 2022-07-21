# SNS Topic Policy

Provides an SNS topic policy resource.

See the [Terraform documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_policy) for more information on the limitations / requirements for using this resource.

Examples for use can be found under the [examples](https://github.com/so1omon563/terraform-aws-sns/tree/main/examples) directory.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Auto-generated technical documentation is created using [`terraform-docs`](https://terraform-docs.io/)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.38 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.19.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_sns_topic_policy.policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_arn"></a> [arn](#input\_arn) | The ARN of the SNS topic to attach the policy to. | `string` | n/a | yes |
| <a name="input_policy"></a> [policy](#input\_policy) | The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with Terraform, see the [AWS IAM Policy Document Guide](https://learn.hashicorp.com/tutorials/terraform/aws-iam-policy?_ga=2.15287359.884055799.1634563672-272413849.1610471322). | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_policy"></a> [policy](#output\_policy) | A map of properties for the created SNS Topic Policy. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
