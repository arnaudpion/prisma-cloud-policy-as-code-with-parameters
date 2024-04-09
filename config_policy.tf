resource "prismacloud_policy" "custom_aws_tags" {
  name            = "AWS EC2 instances should not have a tag with the '${var.tag_parameter}' key"
  policy_type     = "config"
  cloud_type      = "aws"
  policy_subtypes = ["run"]
  severity        = "informational"
  labels          = ["policy-as-code"]
  description     = "Identify AWS EC2 instances that have a tag with the '${var.tag_parameter}' key"
  enabled         = true
  rule {
    name      = "AWS EC2 instances should not have a tag with the '${var.tag_parameter}' key"
    rule_type = "Config"
    parameters = {
      savedSearch = true
    }
    criteria = prismacloud_saved_search.rql_aws_tag_key.id
  }
  compliance_metadata {
    compliance_id = prismacloud_compliance_standard_requirement_section.custom_compliance_requirements_section_AWS.csrs_id
  }
}
