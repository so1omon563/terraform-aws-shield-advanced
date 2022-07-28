resource "aws_shield_protection_group" "arbitrary" {
  protection_group_id = var.name
  aggregation         = var.aggregation
  pattern             = "ARBITRARY"
  members             = var.members

  tags = local.tags
}
