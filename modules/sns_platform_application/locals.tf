locals {
  platform_name = var.platform_name_override != null ? var.platform_name_override : var.platform_prefix == null ? format("%s", var.name) : format("%s-%s", var.name, var.platform_prefix)
}
