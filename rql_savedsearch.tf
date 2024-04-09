resource "prismacloud_saved_search" "rql_aws_tag_key" {
  name        = "AWS EC2 instances should not have a specific tag key"
  description = "AWS EC2 instances should not have a tag with the ${var.tag_parameter} key"
  search_id   = prismacloud_rql_search.config_aws_tag_key.search_id
  query       = prismacloud_rql_search.config_aws_tag_key.query
  time_range {
    relative {
      unit   = prismacloud_rql_search.config_aws_tag_key.time_range.0.relative.0.unit
      amount = prismacloud_rql_search.config_aws_tag_key.time_range.0.relative.0.amount
    }
  }
}