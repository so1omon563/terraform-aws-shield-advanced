tflint {
  required_version = ">= 0.63.0"
}

# Standalone examples and fixtures inherit compatibility from the module.
rule "terraform_required_providers" {
  enabled = false
}

rule "terraform_required_version" {
  enabled = false
}

# Retained compatibility declarations are tracked separately from lint tooling.
rule "terraform_unused_declarations" {
  enabled = false
}
