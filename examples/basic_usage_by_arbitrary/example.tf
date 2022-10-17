provider "aws" {
  default_tags {
    tags = {
      environment = "dev"
      terraform   = "true"
    }
  }
}

data "aws_availability_zones" "available" {}
data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

# Create an Elastic IP address to be protected.
resource "aws_eip" "example" {
  #checkov:skip=CKV2_AWS_19:EIP is for example only
  vpc = true
}

# Protect the Elastic IP address.
module "shield" {
  source  = "so1omon563/shield-advanced/aws"
  version = "3.0.0" # Replace with appropriate version

  # Pass in the name you wish to use for the resource, and the ARN of the resource to be protected.
  name_resource_arn_map = {
    "example_resource_for_group" = "arn:aws:ec2:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:eip-allocation/${aws_eip.example.id}"
  }
  tags = {
    example = "true"
  }
}

output "shield" {
  value = module.shield
}

# Add previously protected resources into group.
module "shield-arbitrary" {
  source  = "so1omon563/shield-advanced/aws//modules/group_by_arbitrary"
  version = "3.0.0" # Replace with appropriate version

  name    = "example-group"
  members = ["arn:aws:ec2:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:eip-allocation/${aws_eip.example.id}"]

  tags = {
    example = "true"
  }
}

output "shield-arbitrary" {
  value = module.shield-arbitrary
}
