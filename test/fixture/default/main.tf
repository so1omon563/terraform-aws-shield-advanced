variable "name" {}

variable "tags" {}

variable "topic_prefix" {}

variable "topic_name_override" {}

provider "aws" {
  default_tags {
    tags = var.tags
  }
}

module "sns" {
  source = "../../../"

  name = var.name
  tags = {
    example = "true"
  }
}
output "sns" { value = module.sns }

module "sns-prefix" {
  source = "../../../"

  name         = var.name
  topic_prefix = var.topic_prefix
  tags = {
    example = "true"
  }
}
output "sns-prefix" { value = module.sns-prefix }

module "sns-override" {
  source = "../../../"

  name                = var.name
  topic_name_override = var.topic_name_override
  tags = {
    example = "true"
  }
}
output "sns-override" { value = module.sns-override }
