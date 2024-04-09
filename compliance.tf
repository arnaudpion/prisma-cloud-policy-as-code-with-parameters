resource "prismacloud_compliance_standard_requirement" "test_custom_compliance_requirements" {
  cs_id          = prismacloud_compliance_standard.test_custom_compliance.cs_id
  name           = "Custom Misconfiguration Policies"
  description    = "Custom Misconfiguration Policies created with terraform"
  requirement_id = "1"
}

resource "prismacloud_compliance_standard_requirement" "test_custom_build_compliance_requirements" {
  cs_id          = prismacloud_compliance_standard.test_custom_compliance.cs_id
  name           = "Custom Misconfiguration Build Policies"
  description    = "Custom Misconfiguration Build Policies created with terraform"
  requirement_id = "2"
}

resource "prismacloud_compliance_standard" "test_custom_compliance" {
  name        = "test Custom Compliance standard"
  description = "Custom compliance standard made with terraform"
}

resource "prismacloud_compliance_standard_requirement_section" "test_custom_complaince_requirements_section_AWS" {
  csr_id      = prismacloud_compliance_standard_requirement.test_custom_compliance_requirements.csr_id
  section_id  = "AWS"
  description = "Misconfiguration of AWS resources"

}

resource "prismacloud_compliance_standard_requirement_section" "test_custom_complaince_requirements_section_GCP" {
  csr_id      = prismacloud_compliance_standard_requirement.test_custom_compliance_requirements.csr_id
  section_id  = "GCP"
  description = "Misconfiguration of GCP resources"

}

resource "prismacloud_compliance_standard_requirement_section" "test_custom_build_complaince_requirements_section_GCP" {
  csr_id      = prismacloud_compliance_standard_requirement.test_custom_build_compliance_requirements.csr_id
  section_id  = "GCP"
  description = "Build Misconfiguration of GCP resources"

}

resource "prismacloud_compliance_standard_requirement_section" "test_custom_build_complaince_requirements_section_AWS" {
  csr_id      = prismacloud_compliance_standard_requirement.test_custom_build_compliance_requirements.csr_id
  section_id  = "AWS"
  description = "Build Misconfiguration of AWS resources"

}