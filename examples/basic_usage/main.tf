provider "aws" {
  default_tags {
    tags = {
      environment = "dev"
      terraform   = "true"
    }
  }
}

module "shield-all" {
  source  = "so1omon563/shield-advanced/aws"
  version = "1.0.0" # Replace with appropriate version

  tags = {
    example = "true"
  }
}

output "shield-all" {
  value = module.shield-all
}
