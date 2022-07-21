output "platform_application" {
  value       = { for key, value in aws_sns_platform_application.platform_application : key => value }
  description = "A map of properties for the SNS Platform Application."
}
