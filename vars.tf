variable "name" {
  type        = string
  description = "Short, descriptive name of the environment. All resources will be named using this value as a prefix. See [aws_sns_topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic#name) for more information on name restrictions / requirements."
}

variable "topic_prefix" {
  description = "SNS Topic name prefix, will be appended to `var.name` if a value is supplied. See [aws_sns_topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic#name) for more information on name restrictions / requirements."
  type        = string
  default     = null
}

variable "topic_name_override" {
  description = "Used if there is a need to specify a topic name outside of the standardized nomenclature. For example, if importing a topic that doesn't follow the standard naming formats. See [aws_sns_topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic#name) for more information on name restrictions / requirements."
  type        = string
  default     = null
}

variable "display_name" {
  type        = string
  description = "The display name for the topic. If not specified, the display name will be the same as the topic name."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider."
  default     = {}
}

variable "policy" {
  type        = string
  description = "The JSON policy for the SNS topic. For more information about building AWS IAM policy documents with Terraform, see the [AWS IAM Policy Document Guide](https://learn.hashicorp.com/tutorials/terraform/aws-iam-policy?_ga=2.82257951.884055799.1634563672-272413849.1610471322)."
  default     = null
}

variable "delivery_policy" {
  type        = string
  description = "The SNS delivery policy. More information can be found in the [AWS documentation](https://docs.aws.amazon.com/sns/latest/dg/sns-message-delivery-retries.html). Examples of using this variable can be found [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic)."
  default     = null
}

variable "application_success_feedback_role_arn" {
  type        = string
  description = "ARN of the IAM role permitted to receive success feedback for this topic."
  default     = null
}

variable "application_success_feedback_sample_rate" {
  type        = number
  description = "Percentage of success to sample."
  default     = null
}

variable "application_failure_feedback_role_arn" {
  type        = string
  description = "ARN of the IAM role for failure feedback."
  default     = null
}

variable "http_success_feedback_role_arn" {
  type        = string
  description = "ARN of the IAM role permitted to receive success feedback for this topic."
  default     = null
}

variable "http_success_feedback_sample_rate" {
  type        = number
  description = "Percentage of success to sample."
  default     = null
}

variable "http_failure_feedback_role_arn" {
  type        = string
  description = "ARN of the IAM role for failure feedback."
  default     = null
}

variable "kms_master_key_id" {
  type        = string
  description = "The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. For more information, see [Key Terms](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms)."
  default     = null
}

variable "fifo_topic" {
  type        = bool
  description = "Boolean indicating whether or not to create a FIFO (first-in-first-out) topic (default is **false**). Note that if enabling a FIFO topic, this module will automatically append the topic name with **.fifo**, per the naming requirements for FIFO topics."
  default     = false
}

variable "content_based_deduplication" {
  type        = bool
  description = "Enables content-based deduplication for FIFO topics. For more information, see the [related documentation](https://docs.aws.amazon.com/sns/latest/dg/fifo-message-dedup.html)"
  default     = false
}

variable "lambda_success_feedback_role_arn" {
  type        = string
  description = "ARN of the IAM role permitted to receive success feedback for this topic."
  default     = null
}

variable "lambda_success_feedback_sample_rate" {
  type        = number
  description = "Percentage of success to sample."
  default     = null
}

variable "lambda_failure_feedback_role_arn" {
  type        = string
  description = "ARN of the IAM role for failure feedback."
  default     = null
}

variable "sqs_success_feedback_role_arn" {
  type        = string
  description = "ARN of the IAM role permitted to receive success feedback for this topic."
  default     = null
}

variable "sqs_success_feedback_sample_rate" {
  type        = number
  description = "Percentage of success to sample."
  default     = null
}

variable "sqs_failure_feedback_role_arn" {
  type        = string
  description = "ARN of the IAM role for failure feedback."
  default     = null
}

variable "firehose_success_feedback_role_arn" {
  type        = string
  description = "ARN of the IAM role permitted to receive success feedback for this topic."
  default     = null
}

variable "firehose_success_feedback_sample_rate" {
  type        = number
  description = "Percentage of success to sample."
  default     = null
}

variable "firehose_failure_feedback_role_arn" {
  type        = string
  description = "ARN of the IAM role for failure feedback."
  default     = null
}
