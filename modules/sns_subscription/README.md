# SNS Topic Subscription

Provides a resource for subscribing to SNS topics. Requires that an SNS topic exist for the subscription to attach to.

This resource allows you to automatically place messages sent to SNS topics in SQS queues, send them as HTTP(S) POST requests to a given endpoint, send SMS messages, or notify devices / applications.

The most likely use case for Terraform users will probably be SQS queues.

See the [Terraform documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) for more information on the limitations / requirements for using this resource.

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
| [aws_sns_topic_subscription.subscription](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_confirmation_timeout_in_minutes"></a> [confirmation\_timeout\_in\_minutes](#input\_confirmation\_timeout\_in\_minutes) | Integer indicating number of minutes to wait in retrying mode for fetching subscription arn before marking it as failure. Only applicable for http and https protocols. Default is 1. | `number` | `1` | no |
| <a name="input_delivery_policy"></a> [delivery\_policy](#input\_delivery\_policy) | JSON String with the delivery policy (retries, backoff, etc.) that will be used in the subscription - this only applies to HTTP/S subscriptions. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-message-delivery-retries.html) for more details. | `string` | `null` | no |
| <a name="input_endpoint"></a> [endpoint](#input\_endpoint) | Endpoint to send data to. The contents vary with the protocol. | `string` | n/a | yes |
| <a name="input_endpoint_auto_confirms"></a> [endpoint\_auto\_confirms](#input\_endpoint\_auto\_confirms) | Whether the endpoint is capable of [auto confirming subscription](https://docs.aws.amazon.com/sns/latest/dg/sns-http-https-endpoint-as-subscriber.html#SendMessageToHttp.prepare) (e.g., PagerDuty). Default is **false**. | `bool` | `false` | no |
| <a name="input_filter_policy"></a> [filter\_policy](#input\_filter\_policy) | JSON String with the filter policy that will be used in the subscription to filter messages seen by the target resource. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-message-filtering.html) for more details. | `string` | `null` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | Protocol to use. Valid values are: **sqs**, **sms**, **lambda**, **firehose**, and **application**. Protocols **email**, **email-json**, **http** and **https** are also valid but only partially supported. See the [documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription#protocol-support) for more information on the supported protocols. | `string` | n/a | yes |
| <a name="input_raw_message_delivery"></a> [raw\_message\_delivery](#input\_raw\_message\_delivery) | Whether to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property). Default is **false**. | `bool` | `false` | no |
| <a name="input_redrive_policy"></a> [redrive\_policy](#input\_redrive\_policy) | JSON String with the redrive policy that will be used in the subscription. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-dead-letter-queues.html#how-messages-moved-into-dead-letter-queue) for more details. | `string` | `null` | no |
| <a name="input_topic_arn"></a> [topic\_arn](#input\_topic\_arn) | ARN of the SNS topic to subscribe to. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subscription"></a> [subscription](#output\_subscription) | A map of properties for the created SNS topic subscription. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
