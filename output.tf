output "cloud_account_ids" {
  description = "Cloud accounts"
  value       = data.prismacloud_cloud_accounts.all_cloud_accounts.listing
}