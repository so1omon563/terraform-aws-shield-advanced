variable "tags" {
  type        = map(string)
  description = "A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider."
  default     = {}
}

variable "cloudfront_distributions" {
  type        = bool
  description = "Whether to protect CloudFront Distributions or not."
  default     = true
}

variable "cloudfront_distributions_aggregation" {
  type        = string
  description = "Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events. This will define the aggregation for CloudFront Distribution resources in this module. See [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html) for more information."
  default     = "MAX"
  validation {
    condition = contains([
      "SUM",
      "MEAN",
      "MAX",
    ], var.cloudfront_distributions_aggregation)
    error_message = "Valid values are limited to (SUM,MEAN,MAX)."
  }
}

variable "route53_hosted_zones" {
  type        = bool
  description = "Whether to protect Route53 Hosted Zones or not."
  default     = true
}

variable "route53_hosted_zones_aggregation" {
  type        = string
  description = "Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events. This will define the aggregation for Route53 Hosted Zone resources in this module. See [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html) for more information."
  default     = "SUM"
  validation {
    condition = contains([
      "SUM",
      "MEAN",
      "MAX",
    ], var.route53_hosted_zones_aggregation)
    error_message = "Valid values are limited to (SUM,MEAN,MAX)."
  }
}

variable "global_accelerators" {
  type        = bool
  description = "Whether to protect Global Accelerators or not."
  default     = true
}

variable "global_accelerators_aggregation" {
  type        = string
  description = "Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events. This will define the aggregation for Global Accelerator resources in this module. See [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html) for more information."
  default     = "MEAN"
  validation {
    condition = contains([
      "SUM",
      "MEAN",
      "MAX",
    ], var.global_accelerators_aggregation)
    error_message = "Valid values are limited to (SUM,MEAN,MAX)."
  }
}

variable "application_load_balancers" {
  type        = bool
  description = "Whether to protect Application Load Balancers or not."
  default     = true
}

variable "application_load_balancers_aggregation" {
  type        = string
  description = "Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events. This will define the aggregation for Application Load Balancer resources in this module. See [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html) for more information."
  default     = "MEAN"
  validation {
    condition = contains([
      "SUM",
      "MEAN",
      "MAX",
    ], var.application_load_balancers_aggregation)
    error_message = "Valid values are limited to (SUM,MEAN,MAX)."
  }
}

variable "classic_load_balancers" {
  type        = bool
  description = "Whether to protect Classic Load Balancers or not."
  default     = true
}

variable "classic_load_balancers_aggregation" {
  type        = string
  description = "Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events. This will define the aggregation for Classic Load Balancer resources in this module. See [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html) for more information."
  default     = "MEAN"
  validation {
    condition = contains([
      "SUM",
      "MEAN",
      "MAX",
    ], var.classic_load_balancers_aggregation)
    error_message = "Valid values are limited to (SUM,MEAN,MAX)."
  }
}

variable "elastic_ip_addresses" {
  type        = bool
  description = "Whether to protect Elastic IP Addresses or not."
  default     = true
}

variable "elastic_ip_addresses_aggregation" {
  type        = string
  description = "Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events. This will define the aggregation for Elastic IP Address resources in this module. See [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html) for more information."
  default     = "SUM"
  validation {
    condition = contains([
      "SUM",
      "MEAN",
      "MAX",
    ], var.elastic_ip_addresses_aggregation)
    error_message = "Valid values are limited to (SUM,MEAN,MAX)."
  }
}
