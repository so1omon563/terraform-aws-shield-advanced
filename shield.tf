resource "aws_shield_protection_group" "all" {
  protection_group_id = "all_resources"
  aggregation         = var.aggregation
  pattern             = "ALL"

  tags = local.tags
}
