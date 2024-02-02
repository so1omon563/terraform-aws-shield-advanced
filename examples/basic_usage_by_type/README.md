# Basic usage by type

Basic usage example grouping by type.

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

# Only protecting Application Load Balancers
module "shield-by-resource-type" {
  source  = "so1omon563/shield-advanced/aws//modules/group_by_resource_type"
  version = "4.0.0" # Replace with appropriate version

  tags = {
    example = "true"
  }
  cloudfront_distributions = false
  route53_hosted_zones     = false
  global_accelerators      = false
  classic_load_balancers   = false
  elastic_ip_addresses     = false
}

output "shield-by-resource-type" {
  value = module.shield-by-resource-type
}
```

## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_shield-by-resource-type"></a> [shield-by-resource-type](#module\_shield-by-resource-type) | so1omon563/shield-advanced/aws//modules/group_by_resource_type | 4.0.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_shield-by-resource-type"></a> [shield-by-resource-type](#output\_shield-by-resource-type) | n/a |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
