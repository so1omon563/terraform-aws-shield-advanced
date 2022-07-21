module "sns_topic_subscription" {
  source    = "so1omon563/sns/aws//modules/sns_subscription"
  version   = "0.1.0" # Replace with appropriate version
  topic_arn = "<arn_of_sns_topic>"
  protocol  = "sqs"
  endpoint  = "<arn_sqs_queue>"
}
