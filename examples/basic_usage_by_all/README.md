# Basic usage by ALL

Basic usage example grouping by All.

Example shows using Default Tags in the provider as well as passing additional tags into the resource.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Examples

```hcl
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
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_shield-all"></a> [shield-all](#module\_shield-all) | so1omon563/shield-advanced/aws//modules/group_by_all | 4.0.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_shield-all"></a> [shield-all](#output\_shield-all) | n/a |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
