variable "tags" {
  type        = map(string)
  description = "A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider."
  default     = {}
}

variable "aggregation" {
  type    = string
  default = "SUM"
  validation {
    condition = contains([
      "SUM",
      "MEAN",
      "MAX",
    ], var.aggregation)
    error_message = "Valid values are limited to (SUM,MEAN,MAX)."
  }
}
