# Some basic unit testing to verify that selected outputs of the main module return expected results.
# In order to reduce testing cost, only items that can be verified via a `terraform plan` are being tested here.

run "verify_shield_outputs_plan" {
  command = plan
  assert {
    condition     = module.shield.shield.basic_testing_resource.name == "basic_testing_resource"
    error_message = "Name did not match expected result."
  }
  assert {
    condition     = module.shield.shield.basic_testing_resource.tags_all.example == "true" && module.shield.shield.basic_testing_resource.tags_all.environment == "dev" && module.shield.shield.basic_testing_resource.tags_all.terraform == "true"
    error_message = "One or more tags did not match expected result."
  }
}
