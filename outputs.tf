output "topic" {
  value       = { for key, value in aws_sns_topic.topic : key => value }
  description = "A map of properties for the created SNS topic."
}
