variable "pcc_url" {
  description = "Prisma Cloud Compute URL, use API format"
  type        = string
  default     = "api.eu.prismacloud.io"
}

variable "pcc_username" {
  description = "Prisma Cloud Access Key"
  type        = string
  sensitive   = true
}

variable "pcc_userpass" {
  description = "Prisma Cloud Secret"
  type        = string
  sensitive   = true
}

variable "tag_parameter" {
  description = "Tag key used in custom policy"
  type        = string
  default     = "env"
}