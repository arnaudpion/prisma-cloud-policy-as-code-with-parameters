resource "prismacloud_saved_search" "test-rql-awsenvkey" {
  name        = "AWS EC2 Instances with Env key"
  description = "No AWS instance should have the env key!"
  search_id   = prismacloud_rql_search.config_aws_envkey.search_id
  query       = prismacloud_rql_search.config_aws_envkey.query
  time_range {
    relative {
      unit   = prismacloud_rql_search.config_aws_envkey.time_range.0.relative.0.unit
      amount = prismacloud_rql_search.config_aws_envkey.time_range.0.relative.0.amount
    }
  }
}