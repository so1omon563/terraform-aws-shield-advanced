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

resource "aws_eip" "example" {
  #checkov:skip=CKV2_AWS_19:EIP is for example only
  vpc = true
}

module "shield-individual" {
  #   source  = "so1omon563/shield-advanced/aws//modules/individual_shield"
  #   version = "0.2.0" # Replace with appropriate version
  source       = "../../modules/individual_shield"
  name         = "example"
  resource_arn = "arn:aws:ec2:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:eip-allocation/${aws_eip.example.id}"
  tags = {
    example = "true"
  }
}

output "shield-individual" {
  value = module.shield-individual
}
