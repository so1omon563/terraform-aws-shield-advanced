variable "members" {
  type        = list(string)
  description = "List of ARNs of the resources to add to the protection group"
}

variable "name" {
  type        = string
  description = "The name of the protection group."
}

variable "tags" {
  type        = map(string)
  description = "A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider."
  default     = {}
}

variable "aggregation" {
  type        = string
  description = "Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events. This will define the aggregation for ALL protected resources in this module. See [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html) for more information."
  default     = "SUM"
  validation {
    condition = contains([
      "SUM",
      "MEAN",
      "MAX",
    ], var.aggregation)
    error_message = "Valid values are limited to (SUM,MEAN,MAX)."
  }
}
