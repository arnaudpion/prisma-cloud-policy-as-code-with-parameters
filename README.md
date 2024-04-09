# prisma-cloud-policy-as-code-with-parameters
Terraform code that demonstrates how you can manage your policies "as code" in Prisma Cloud

## What the code does
Creates a Config policy of type 'Run' named "AWS EC2 instances should not have a tag with the 'env' key" in Prisma Cloud. The policy is tagged with a 'policy-as-code' label. Also creates a compliance standard named "Custom Compliance Standard", and attaches the previous policy to it.

## Using a parameter to modify the policy
By changing the value of the variable "tag_parameter" (which defaults to 'env'), you can dynamically change the policy. For instance, if you change the value to "test", the policy will be "AWS EC2 instances should not have a tag with the 'test' key", and you will get results for AWS EC2 instances with a "test" tag, rather than "env". This shows how you can manage parameters in your policies, by leveraging a policy-as-code approach.

## Prerequisites
Create a terraform.tfvars file with the following variables :
* pcc_url = "Your_Prisma_Cloud_API_URL"
* pcc_username = "Your_Access_Key_ID"
* pcc_userpass = "Your_Secret_Key"

To find the Prisma Cloud API URL for your Prisma Cloud tenant, please refer to https://pan.dev/prisma-cloud/api/cspm/api-urls/

For more information about Prisma Cloud access keys, please refer to https://docs.prismacloud.io/en/enterprise-edition/content-collections/administration/create-access-keys

## What's next ?
You can also programmatically create and manage Alert Rules, and assign your policies to these Alert Rules, in order to manage different policy scopes for different teams : for instance, 'BU1' and 'BU2' could manage their own set of policies and get alerts for their own Cloud environment (or Account Group) by leveraging different Alert Rules.