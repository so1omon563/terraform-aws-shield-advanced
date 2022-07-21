output "sms_preferences" {
  value       = { for key, value in aws_sns_sms_preferences.sms_preferences : key => value }
  description = "A map of properties for the SNS SMS preferences."
}
