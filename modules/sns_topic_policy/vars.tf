variable "arn" {
  type        = string
  description = "The ARN of the SNS topic to attach the policy to."
}

variable "policy" {
  type        = string
  description = "The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with Terraform, see the [AWS IAM Policy Document Guide](https://learn.hashicorp.com/tutorials/terraform/aws-iam-policy?_ga=2.15287359.884055799.1634563672-272413849.1610471322)."
}
