# prisma-cloud-policy-as-code

Creates a Config policy named "AWS Instance contains the forbidden 'env' key" in Prisma Cloud. The policy is both a 'Run' and a 'Build' policy. Also creates a compliance standard named "test Custom Compliance standard", and attaches the previous policy to it.

Prerequisites - create a terraform.tfvars file with the following variables :
* pcc_url = "api2.eu.prismacloud.io"
* pcc_username = "Your_Access_Key_ID"
* pcc_userpass = "Your_Secret_Key"

For more information about Prisma Cloud access keys, please refer to https://docs.prismacloud.io/en/enterprise-edition/content-collections/administration/create-access-keys