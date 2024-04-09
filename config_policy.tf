resource "prismacloud_policy" "test_custom_awstags" {
  name            = "AWS Instance contains the forbidden 'env' key"
  policy_type     = "config"
  cloud_type      = "aws"
  policy_subtypes = ["run", "build"]
  severity        = "low"
  labels          = ["test-custom"]
  description     = "No AWS instance should have the env key!"
  enabled         = true
  rule {
    name      = "No AWS instance should have the env key"
    rule_type = "Config"
    parameters = {
      savedSearch = true
      withIac     = true
    }
    criteria = prismacloud_saved_search.test-rql-awsenvkey.id
    children {
      type           = "build"
      recommendation = "fix it"
      metadata = {
        "code" : file("build_policies/aws_env_tag.yaml"),
      }
    }
  }
  compliance_metadata {
    compliance_id = prismacloud_compliance_standard_requirement_section.test_custom_complaince_requirements_section_AWS.csrs_id
  }
}
