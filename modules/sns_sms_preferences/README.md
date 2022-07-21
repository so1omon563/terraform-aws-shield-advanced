# SNS SMS Preferences

Provides a resource for setting SNS SMS preferences.

See the [Terraform documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_sms_preferences) for more information on the limitations / requirements for using this resource.

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
| [aws_sns_sms_preferences.sms_preferences](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_sms_preferences) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_sender_id"></a> [default\_sender\_id](#input\_default\_sender\_id) | A string, such as your business brand, that is displayed as the sender on the receiving device. | `string` | `null` | no |
| <a name="input_default_sms_type"></a> [default\_sms\_type](#input\_default\_sms\_type) | The type of SMS message that you will send by default. Possible values are: **Promotional**, **Transactional** | `string` | `null` | no |
| <a name="input_delivery_status_iam_role_arn"></a> [delivery\_status\_iam\_role\_arn](#input\_delivery\_status\_iam\_role\_arn) | The ARN of the IAM role that allows Amazon SNS to write logs about SMS deliveries in CloudWatch Logs. | `string` | `null` | no |
| <a name="input_delivery_status_success_sampling_rate"></a> [delivery\_status\_success\_sampling\_rate](#input\_delivery\_status\_success\_sampling\_rate) | The percentage of successful SMS deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value must be between **0** and **100**. | `number` | `null` | no |
| <a name="input_monthly_spend_limit"></a> [monthly\_spend\_limit](#input\_monthly\_spend\_limit) | The maximum amount in USD that you are willing to spend each month to send SMS messages. | `number` | `null` | no |
| <a name="input_usage_report_s3_bucket"></a> [usage\_report\_s3\_bucket](#input\_usage\_report\_s3\_bucket) | The name of the Amazon S3 bucket to receive daily SMS usage reports from Amazon SNS. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sms_preferences"></a> [sms\_preferences](#output\_sms\_preferences) | A map of properties for the SNS SMS preferences. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
