resource "prismacloud_compliance_standard" "custom_compliance_standard" {
  name        = "Custom Compliance Standard"
  description = "Custom compliance standard made with terraform"
}

resource "prismacloud_compliance_standard_requirement" "custom_compliance_requirements" {
  cs_id          = prismacloud_compliance_standard.custom_compliance_standard.cs_id
  name           = "Custom Misconfiguration Policies"
  description    = "Custom Misconfiguration Policies created with terraform"
  requirement_id = "1"
}

resource "prismacloud_compliance_standard_requirement_section" "custom_compliance_requirements_section_AWS" {
  csr_id      = prismacloud_compliance_standard_requirement.custom_compliance_requirements.csr_id
  section_id  = "AWS"
  description = "Misconfiguration of AWS resources"
}

resource "prismacloud_compliance_standard_requirement_section" "custom_compliance_requirements_section_Azure" {
  csr_id      = prismacloud_compliance_standard_requirement.custom_compliance_requirements.csr_id
  section_id  = "Azure"
  description = "Misconfiguration of Azure resources"
}

resource "prismacloud_compliance_standard_requirement_section" "custom_compliance_requirements_section_GCP" {
  csr_id      = prismacloud_compliance_standard_requirement.custom_compliance_requirements.csr_id
  section_id  = "GCP"
  description = "Misconfiguration of GCP resources"
}