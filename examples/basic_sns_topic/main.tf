provider "aws" {
  default_tags {
    tags = {
      environment = "dev"
      terraform   = "true"
    }
  }
}

module "sns_topic" {
  source  = "so1omon563/sns/aws"
  version = "0.1.0" # Replace with appropriate version

  name         = "example-topic"
  topic_prefix = "my-product-name"
  tags = {
    example = "true"
  }
}
