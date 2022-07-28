# Basic usage

Basic usage example can be found in the `main.tf` source file.

Example shows using Default Tags in the provider as well as passing additional tags into the resource.
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.23.0 |

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
