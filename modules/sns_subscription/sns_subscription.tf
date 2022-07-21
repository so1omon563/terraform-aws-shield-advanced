resource "aws_sns_topic_subscription" "subscription" {
  topic_arn                       = var.topic_arn
  protocol                        = var.protocol
  endpoint                        = var.endpoint
  confirmation_timeout_in_minutes = var.protocol == "http" || var.protocol == "https" ? var.confirmation_timeout_in_minutes : null
  delivery_policy                 = var.protocol == "http" || var.protocol == "https" ? var.delivery_policy : null
  endpoint_auto_confirms          = var.endpoint_auto_confirms
  filter_policy                   = var.filter_policy
  raw_message_delivery            = var.raw_message_delivery
  redrive_policy                  = var.redrive_policy
}
