variable "topic_arn" {
  type        = string
  description = "ARN of the SNS topic to subscribe to."
}

variable "endpoint" {
  type        = string
  description = "Endpoint to send data to. The contents vary with the protocol."
}

variable "protocol" {
  type        = string
  description = "Protocol to use. Valid values are: **sqs**, **sms**, **lambda**, **firehose**, and **application**. Protocols **email**, **email-json**, **http** and **https** are also valid but only partially supported. See the [documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription#protocol-support) for more information on the supported protocols."
  validation {
    condition = contains([
      "sqs",
      "sms",
      "lambda",
      "firehose",
      "application",
      "email",
      "email-json",
      "http",
      "https"
    ], var.protocol)
    error_message = "Valid values are limited to (sqs, sms, lambda, firehose, application, email, email-json, http, https)."
  }
}

variable "confirmation_timeout_in_minutes" {
  type        = number
  description = "Integer indicating number of minutes to wait in retrying mode for fetching subscription arn before marking it as failure. Only applicable for http and https protocols. Default is 1."
  default     = 1
}

variable "delivery_policy" {
  type        = string
  description = "JSON String with the delivery policy (retries, backoff, etc.) that will be used in the subscription - this only applies to HTTP/S subscriptions. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-message-delivery-retries.html) for more details."
  default     = null
}

variable "endpoint_auto_confirms" {
  type        = bool
  description = "Whether the endpoint is capable of [auto confirming subscription](https://docs.aws.amazon.com/sns/latest/dg/sns-http-https-endpoint-as-subscriber.html#SendMessageToHttp.prepare) (e.g., PagerDuty). Default is **false**."
  default     = false
}

variable "filter_policy" {
  type        = string
  description = "JSON String with the filter policy that will be used in the subscription to filter messages seen by the target resource. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-message-filtering.html) for more details."
  default     = null
}

variable "raw_message_delivery" {
  type        = bool
  description = "Whether to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property). Default is **false**."
  default     = false
}

variable "redrive_policy" {
  type        = string
  description = "JSON String with the redrive policy that will be used in the subscription. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-dead-letter-queues.html#how-messages-moved-into-dead-letter-queue) for more details."
  default     = null
}
