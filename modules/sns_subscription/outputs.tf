output "subscription" {
  value       = { for key, value in aws_sns_topic_subscription.subscription : key => value }
  description = "A map of properties for the created SNS topic subscription."
}
