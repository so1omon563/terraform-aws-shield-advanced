resource "aws_sns_topic_policy" "policy" {
  arn    = var.arn
  policy = var.policy
}
