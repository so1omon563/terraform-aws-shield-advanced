# SNS Platform Application

Provides an SNS platform application resource.

See the [Terraform documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_platform_application) for more information on the limitations / requirements for using this resource.

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
| [aws_sns_platform_application.platform_application](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_platform_application) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_event_delivery_failure_topic_arn"></a> [event\_delivery\_failure\_topic\_arn](#input\_event\_delivery\_failure\_topic\_arn) | ARN of an SNS Topic triggered when a delivery to any of the platform endpoints associated with your platform application encounters a permanent failure. | `string` | `null` | no |
| <a name="input_event_endpoint_created_topic_arn"></a> [event\_endpoint\_created\_topic\_arn](#input\_event\_endpoint\_created\_topic\_arn) | SNS Topic triggered when a new platform endpoint is added to your platform application. | `string` | `null` | no |
| <a name="input_event_endpoint_deleted_topic_arn"></a> [event\_endpoint\_deleted\_topic\_arn](#input\_event\_endpoint\_deleted\_topic\_arn) | SNS Topic triggered when an existing platform endpoint is deleted from your platform application. | `string` | `null` | no |
| <a name="input_event_endpoint_updated_topic_arn"></a> [event\_endpoint\_updated\_topic\_arn](#input\_event\_endpoint\_updated\_topic\_arn) | SNS Topic triggered when an existing platform endpoint is changed from your platform application. | `string` | `null` | no |
| <a name="input_failure_feedback_role_arn"></a> [failure\_feedback\_role\_arn](#input\_failure\_feedback\_role\_arn) | The IAM role permitted to receive failure feedback for this application. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Short, descriptive name of the environment. All resources will be named using this value as a prefix. | `string` | n/a | yes |
| <a name="input_platform"></a> [platform](#input\_platform) | The platform that the app is registered with. See [Platform](https://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-register.html) for supported platforms. | `string` | n/a | yes |
| <a name="input_platform_credential"></a> [platform\_credential](#input\_platform\_credential) | Application Platform credential. See [Credential](https://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-register.html) for type of credential required for platform. The value of this attribute when stored into the Terraform state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources. | `string` | n/a | yes |
| <a name="input_platform_name_override"></a> [platform\_name\_override](#input\_platform\_name\_override) | Used if there is a need to specify a platform application name outside of the standardized nomenclature. For example, if importing an application that doesn't follow the standard naming formats. | `string` | `null` | no |
| <a name="input_platform_prefix"></a> [platform\_prefix](#input\_platform\_prefix) | SNS Platform Application name prefix, will be appended to `var.name` if a value is supplied. | `string` | `null` | no |
| <a name="input_platform_principal"></a> [platform\_principal](#input\_platform\_principal) | Application Platform principal. See [Principal](https://docs.aws.amazon.com/sns/latest/api/API_CreatePlatformApplication.html) for type of principal required for platform. The value of this attribute when stored into the Terraform state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources. | `string` | `null` | no |
| <a name="input_success_feedback_role_arn"></a> [success\_feedback\_role\_arn](#input\_success\_feedback\_role\_arn) | The IAM role permitted to receive success feedback for this application. | `string` | `null` | no |
| <a name="input_success_feedback_sample_rate"></a> [success\_feedback\_sample\_rate](#input\_success\_feedback\_sample\_rate) | The percentage of success to sample (0-100). | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_platform_application"></a> [platform\_application](#output\_platform\_application) | A map of properties for the SNS Platform Application. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
