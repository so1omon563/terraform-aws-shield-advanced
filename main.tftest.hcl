mock_provider "aws" {}

run "no_resources_by_default" {
  command = plan

  assert {
    condition     = length(aws_shield_protection.shield) == 0
    error_message = "No Shield protections should be planned by default."
  }
}

run "single_protection" {
  command = plan

  variables {
    name_resource_arn_map = {
      example = "arn:aws:elasticloadbalancing:us-east-1:123456789012:loadbalancer/app/example/1234567890abcdef"
    }
  }

  assert {
    condition     = aws_shield_protection.shield["example"].name == "example"
    error_message = "Shield protection name should use the map key."
  }

  assert {
    condition     = aws_shield_protection.shield["example"].resource_arn == "arn:aws:elasticloadbalancing:us-east-1:123456789012:loadbalancer/app/example/1234567890abcdef"
    error_message = "Shield protection resource ARN should use the map value."
  }
}

run "protection_tags" {
  command = plan

  variables {
    name_resource_arn_map = {
      example = "arn:aws:elasticloadbalancing:us-east-1:123456789012:loadbalancer/app/example/1234567890abcdef"
    }
    tags = {
      environment = "test"
    }
  }

  assert {
    condition     = aws_shield_protection.shield["example"].tags.environment == "test"
    error_message = "Shield protection should include provided tags."
  }
}
