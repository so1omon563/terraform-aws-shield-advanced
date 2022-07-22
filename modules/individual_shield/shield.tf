resource "aws_shield_protection" "shield" {
  name         = local.name
  resource_arn = var.resource_arn

  tags = local.tags
}
