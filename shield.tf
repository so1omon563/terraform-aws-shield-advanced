resource "aws_shield_protection" "shield" {
  for_each     = var.name_resource_arn_map
  name         = each.key
  resource_arn = each.value

  tags = local.tags
}
