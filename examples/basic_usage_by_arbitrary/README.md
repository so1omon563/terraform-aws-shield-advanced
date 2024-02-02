# Basic usage by Arbitrary

Basic usage example grouping by arbitrary.

Example shows using Default Tags in the provider as well as passing additional tags into the resource.
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Examples

```hcl
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
  domain = "vpc"
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
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.34.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_shield"></a> [shield](#module\_shield) | so1omon563/shield-advanced/aws | 3.0.0 |
| <a name="module_shield-arbitrary"></a> [shield-arbitrary](#module\_shield-arbitrary) | so1omon563/shield-advanced/aws//modules/group_by_arbitrary | 3.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_eip.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_shield"></a> [shield](#output\_shield) | n/a |
| <a name="output_shield-arbitrary"></a> [shield-arbitrary](#output\_shield-arbitrary) | n/a |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
