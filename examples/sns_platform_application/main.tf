module "sns_platform_application" {
  source              = "so1omon563/sns/aws//modules/sns_platform_application"
  version             = "0.1.0" # Replace with appropriate version
  name                = "example-application"
  platform            = "<platform>"
  platform_credential = "<private_key_for_platform>"
}
