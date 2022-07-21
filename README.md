# SNS Topic

Creates an SNS Topic. Supports all standard options for the SNS Topic resource.

Note that this module includes submodules for other common SNS needs, including:

[sns_sms_preferences](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_sms_preferences)

[sns_subscription](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription#protocol-support)

[sns_topic_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/)

[sns_platform_application](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_platform_application)

These submodules can be found under the [modules](https://github.com/so1omon563/terraform-aws-sns/tree/main/modules) directory.

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
| [aws_sns_topic.topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_failure_feedback_role_arn"></a> [application\_failure\_feedback\_role\_arn](#input\_application\_failure\_feedback\_role\_arn) | ARN of the IAM role for failure feedback. | `string` | `null` | no |
| <a name="input_application_success_feedback_role_arn"></a> [application\_success\_feedback\_role\_arn](#input\_application\_success\_feedback\_role\_arn) | ARN of the IAM role permitted to receive success feedback for this topic. | `string` | `null` | no |
| <a name="input_application_success_feedback_sample_rate"></a> [application\_success\_feedback\_sample\_rate](#input\_application\_success\_feedback\_sample\_rate) | Percentage of success to sample. | `number` | `null` | no |
| <a name="input_content_based_deduplication"></a> [content\_based\_deduplication](#input\_content\_based\_deduplication) | Enables content-based deduplication for FIFO topics. For more information, see the [related documentation](https://docs.aws.amazon.com/sns/latest/dg/fifo-message-dedup.html) | `bool` | `false` | no |
| <a name="input_delivery_policy"></a> [delivery\_policy](#input\_delivery\_policy) | The SNS delivery policy. More information can be found in the [AWS documentation](https://docs.aws.amazon.com/sns/latest/dg/sns-message-delivery-retries.html). Examples of using this variable can be found [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic). | `string` | `null` | no |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | The display name for the topic. If not specified, the display name will be the same as the topic name. | `string` | `null` | no |
| <a name="input_fifo_topic"></a> [fifo\_topic](#input\_fifo\_topic) | Boolean indicating whether or not to create a FIFO (first-in-first-out) topic (default is **false**). Note that if enabling a FIFO topic, this module will automatically append the topic name with **.fifo**, per the naming requirements for FIFO topics. | `bool` | `false` | no |
| <a name="input_firehose_failure_feedback_role_arn"></a> [firehose\_failure\_feedback\_role\_arn](#input\_firehose\_failure\_feedback\_role\_arn) | ARN of the IAM role for failure feedback. | `string` | `null` | no |
| <a name="input_firehose_success_feedback_role_arn"></a> [firehose\_success\_feedback\_role\_arn](#input\_firehose\_success\_feedback\_role\_arn) | ARN of the IAM role permitted to receive success feedback for this topic. | `string` | `null` | no |
| <a name="input_firehose_success_feedback_sample_rate"></a> [firehose\_success\_feedback\_sample\_rate](#input\_firehose\_success\_feedback\_sample\_rate) | Percentage of success to sample. | `number` | `null` | no |
| <a name="input_http_failure_feedback_role_arn"></a> [http\_failure\_feedback\_role\_arn](#input\_http\_failure\_feedback\_role\_arn) | ARN of the IAM role for failure feedback. | `string` | `null` | no |
| <a name="input_http_success_feedback_role_arn"></a> [http\_success\_feedback\_role\_arn](#input\_http\_success\_feedback\_role\_arn) | ARN of the IAM role permitted to receive success feedback for this topic. | `string` | `null` | no |
| <a name="input_http_success_feedback_sample_rate"></a> [http\_success\_feedback\_sample\_rate](#input\_http\_success\_feedback\_sample\_rate) | Percentage of success to sample. | `number` | `null` | no |
| <a name="input_kms_master_key_id"></a> [kms\_master\_key\_id](#input\_kms\_master\_key\_id) | The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. For more information, see [Key Terms](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms). | `string` | `null` | no |
| <a name="input_lambda_failure_feedback_role_arn"></a> [lambda\_failure\_feedback\_role\_arn](#input\_lambda\_failure\_feedback\_role\_arn) | ARN of the IAM role for failure feedback. | `string` | `null` | no |
| <a name="input_lambda_success_feedback_role_arn"></a> [lambda\_success\_feedback\_role\_arn](#input\_lambda\_success\_feedback\_role\_arn) | ARN of the IAM role permitted to receive success feedback for this topic. | `string` | `null` | no |
| <a name="input_lambda_success_feedback_sample_rate"></a> [lambda\_success\_feedback\_sample\_rate](#input\_lambda\_success\_feedback\_sample\_rate) | Percentage of success to sample. | `number` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Short, descriptive name of the environment. All resources will be named using this value as a prefix. See [aws\_sns\_topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic#name) for more information on name restrictions / requirements. | `string` | n/a | yes |
| <a name="input_policy"></a> [policy](#input\_policy) | The JSON policy for the SNS topic. For more information about building AWS IAM policy documents with Terraform, see the [AWS IAM Policy Document Guide](https://learn.hashicorp.com/tutorials/terraform/aws-iam-policy?_ga=2.82257951.884055799.1634563672-272413849.1610471322). | `string` | `null` | no |
| <a name="input_sqs_failure_feedback_role_arn"></a> [sqs\_failure\_feedback\_role\_arn](#input\_sqs\_failure\_feedback\_role\_arn) | ARN of the IAM role for failure feedback. | `string` | `null` | no |
| <a name="input_sqs_success_feedback_role_arn"></a> [sqs\_success\_feedback\_role\_arn](#input\_sqs\_success\_feedback\_role\_arn) | ARN of the IAM role permitted to receive success feedback for this topic. | `string` | `null` | no |
| <a name="input_sqs_success_feedback_sample_rate"></a> [sqs\_success\_feedback\_sample\_rate](#input\_sqs\_success\_feedback\_sample\_rate) | Percentage of success to sample. | `number` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider. | `map(string)` | `{}` | no |
| <a name="input_topic_name_override"></a> [topic\_name\_override](#input\_topic\_name\_override) | Used if there is a need to specify a topic name outside of the standardized nomenclature. For example, if importing a topic that doesn't follow the standard naming formats. See [aws\_sns\_topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic#name) for more information on name restrictions / requirements. | `string` | `null` | no |
| <a name="input_topic_prefix"></a> [topic\_prefix](#input\_topic\_prefix) | SNS Topic name prefix, will be appended to `var.name` if a value is supplied. See [aws\_sns\_topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic#name) for more information on name restrictions / requirements. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_topic"></a> [topic](#output\_topic) | A map of properties for the created SNS topic. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
