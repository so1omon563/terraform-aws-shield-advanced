variable "name" {
  type        = string
  description = "Short, descriptive name of the environment. All resources will be named using this value as a prefix."
}

variable "platform_prefix" {
  description = "SNS Platform Application name prefix, will be appended to `var.name` if a value is supplied."
  type        = string
  default     = null
}

variable "platform_name_override" {
  description = "Used if there is a need to specify a platform application name outside of the standardized nomenclature. For example, if importing an application that doesn't follow the standard naming formats."
  type        = string
  default     = null
}

variable "platform" {
  type        = string
  description = "The platform that the app is registered with. See [Platform](https://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-register.html) for supported platforms."
}

variable "platform_credential" {
  type        = string
  description = "Application Platform credential. See [Credential](https://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-register.html) for type of credential required for platform. The value of this attribute when stored into the Terraform state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources."
}

variable "event_delivery_failure_topic_arn" {
  type        = string
  description = "ARN of an SNS Topic triggered when a delivery to any of the platform endpoints associated with your platform application encounters a permanent failure."
  default     = null
}

variable "event_endpoint_created_topic_arn" {
  type        = string
  description = "SNS Topic triggered when a new platform endpoint is added to your platform application."
  default     = null
}

variable "event_endpoint_deleted_topic_arn" {
  type        = string
  description = "SNS Topic triggered when an existing platform endpoint is deleted from your platform application."
  default     = null
}

variable "event_endpoint_updated_topic_arn" {
  type        = string
  description = "SNS Topic triggered when an existing platform endpoint is changed from your platform application."
  default     = null
}

variable "failure_feedback_role_arn" {
  type        = string
  description = "The IAM role permitted to receive failure feedback for this application."
  default     = null
}

variable "platform_principal" {
  type        = string
  description = "Application Platform principal. See [Principal](https://docs.aws.amazon.com/sns/latest/api/API_CreatePlatformApplication.html) for type of principal required for platform. The value of this attribute when stored into the Terraform state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources."
  default     = null
}

variable "success_feedback_role_arn" {
  type        = string
  description = "The IAM role permitted to receive success feedback for this application."
  default     = null
}

variable "success_feedback_sample_rate" {
  type        = number
  description = "The percentage of success to sample (0-100)."
  validation {
    condition     = var.success_feedback_sample_rate != null ? can(regex("\\d|[1-9]\\d|100", var.success_feedback_sample_rate)) : var.success_feedback_sample_rate == null
    error_message = "Value must either be `null` or a number between `0` and `100`."
  }
  default = null
}
