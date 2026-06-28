provider "aws" {
  skip_credentials_validation = true
  skip_requesting_account_id  = true

  default_tags {
    tags = {
      environment = "dev"
      terraform   = "true"
    }
  }
}

# Protect an example resource ARN.
module "shield" {
  source = "../.."

  # Pass in the name you wish to use for the resource, and the ARN of the resource to be protected.
  name_resource_arn_map = {
    "basic_testing_resource" = "arn:aws:ec2:us-east-1:123456789012:eip-allocation/eipalloc-example"
  }
  tags = {
    example = "true"
  }
}

output "shield" {
  value = module.shield
}
