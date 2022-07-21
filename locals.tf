locals {
  tags = var.tags

  name       = var.topic_name_override != null ? var.topic_name_override : var.topic_prefix == null ? format("%s", var.name) : format("%s-%s", var.name, var.topic_prefix)
  topic_name = var.fifo_topic ? format("%s.fifo", local.name) : local.name
}
