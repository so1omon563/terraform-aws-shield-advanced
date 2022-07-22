variable "tags" {
  type        = map(string)
  description = "A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider."
  default     = {}
}

variable "cloudfront_distributions" {
  type    = bool
  default = true
}
variable "cloudfront_distributions_aggregation" {
  type    = string
  default = "MAX"
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
  type    = bool
  default = true
}

variable "route53_hosted_zones_aggregation" {
  type    = string
  default = "SUM"
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
  type    = bool
  default = true
}

variable "global_accelerators_aggregation" {
  type    = string
  default = "MEAN"
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
  type    = bool
  default = true
}

variable "application_load_balancers_aggregation" {
  type    = string
  default = "MEAN"
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
  type    = bool
  default = true
}

variable "classic_load_balancers_aggregation" {
  type    = string
  default = "MEAN"
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
  type    = bool
  default = true
}

variable "elastic_ip_addresses_aggregation" {
  type    = string
  default = "SUM"
  validation {
    condition = contains([
      "SUM",
      "MEAN",
      "MAX",
    ], var.elastic_ip_addresses_aggregation)
    error_message = "Valid values are limited to (SUM,MEAN,MAX)."
  }
}
