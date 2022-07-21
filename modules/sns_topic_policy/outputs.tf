output "policy" {
  value       = { for key, value in aws_sns_topic_policy.policy : key => value }
  description = "A map of properties for the created SNS Topic Policy."
}
