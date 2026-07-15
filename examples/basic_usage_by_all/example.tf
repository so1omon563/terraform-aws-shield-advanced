terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  default_tags {
    tags = {
      environment = "dev"
      terraform   = "true"
    }
  }
}

module "shield-all" {
  source  = "so1omon563/shield-advanced/aws//modules/group_by_all"
  version = "4.0.0" # Replace with appropriate version

  tags = {
    example = "true"
  }
}

output "shield-all" {
  value = module.shield-all
}
