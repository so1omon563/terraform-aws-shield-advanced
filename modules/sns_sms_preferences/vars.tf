variable "monthly_spend_limit" {
  type        = number
  description = "The maximum amount in USD that you are willing to spend each month to send SMS messages."
  default     = null
}

variable "delivery_status_iam_role_arn" {
  type        = string
  description = "The ARN of the IAM role that allows Amazon SNS to write logs about SMS deliveries in CloudWatch Logs."
  default     = null
}

variable "delivery_status_success_sampling_rate" {
  type        = number
  description = "The percentage of successful SMS deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value must be between **0** and **100**."
  validation {
    condition     = var.delivery_status_success_sampling_rate != null ? can(regex("\\d|[1-9]\\d|100", var.delivery_status_success_sampling_rate)) : var.delivery_status_success_sampling_rate == null
    error_message = "Value must either be `null` or a number between `0` and `100`."
  }
  default = null
}

variable "default_sender_id" {
  type        = string
  description = "A string, such as your business brand, that is displayed as the sender on the receiving device."
  default     = null
}

variable "default_sms_type" {
  type        = string
  description = "The type of SMS message that you will send by default. Possible values are: **Promotional**, **Transactional**"
  validation {
    condition = var.default_sms_type != null ? contains([
      "Promotional",
      "Transactional",
    ], var.default_sms_type) : var.default_sms_type == null
    error_message = "Valid values are limited to (Promotional, Transactional)."
  }
  default = null
}

variable "usage_report_s3_bucket" {
  type        = string
  description = "The name of the Amazon S3 bucket to receive daily SMS usage reports from Amazon SNS."
  default     = null
}
