output "shield" {
  value       = { for key, value in aws_shield_protection_group.all : key => value }
  description = "A map of properties for the created AWS Shield protection."
}
