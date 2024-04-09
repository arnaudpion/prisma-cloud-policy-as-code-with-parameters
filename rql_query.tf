resource "prismacloud_rql_search" "config_aws_envkey" {
  search_type = "config"
  skip_result = true
  query       = "config from cloud.resource where api.name = 'aws-ec2-describe-instances' AND json.rule = tags[*].key equal ignore case test"
  time_range {
    relative {
      unit   = "hour"
      amount = 24
    }
  }
}