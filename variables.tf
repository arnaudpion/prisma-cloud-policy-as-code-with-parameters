variable "pcc_url" {
  description = "Prisma Cloud Compute URL, use API format"
  default     = "api.eu.prismacloud.io"
}

variable "pcc_username" {
  description = "Prisma Cloud Access Key"
  sensitive   = true
}

variable "pcc_userpass" {
  description = "Prisma Cloud Secret"
  sensitive   = true
}