output "glacier_vaults_id" {
  description = "Map of id values across all glacier_vaults, keyed the same as var.glacier_vaults"
  value       = { for k, v in aws_glacier_vault.glacier_vaults : k => v.id if v.id != null && length(v.id) > 0 }
}
output "glacier_vaults_access_policy" {
  description = "Map of access_policy values across all glacier_vaults, keyed the same as var.glacier_vaults"
  value       = { for k, v in aws_glacier_vault.glacier_vaults : k => v.access_policy if v.access_policy != null && length(v.access_policy) > 0 }
}
output "glacier_vaults_arn" {
  description = "Map of arn values across all glacier_vaults, keyed the same as var.glacier_vaults"
  value       = { for k, v in aws_glacier_vault.glacier_vaults : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "glacier_vaults_location" {
  description = "Map of location values across all glacier_vaults, keyed the same as var.glacier_vaults"
  value       = { for k, v in aws_glacier_vault.glacier_vaults : k => v.location if v.location != null && length(v.location) > 0 }
}
output "glacier_vaults_name" {
  description = "Map of name values across all glacier_vaults, keyed the same as var.glacier_vaults"
  value       = { for k, v in aws_glacier_vault.glacier_vaults : k => v.name if v.name != null && length(v.name) > 0 }
}
output "glacier_vaults_notification" {
  description = "Map of notification values across all glacier_vaults, keyed the same as var.glacier_vaults"
  value       = { for k, v in aws_glacier_vault.glacier_vaults : k => one(v.notification) if v.notification != null && length(v.notification) > 0 }
}
output "glacier_vaults_region" {
  description = "Map of region values across all glacier_vaults, keyed the same as var.glacier_vaults"
  value       = { for k, v in aws_glacier_vault.glacier_vaults : k => v.region if v.region != null && length(v.region) > 0 }
}
output "glacier_vaults_tags" {
  description = "Map of tags values across all glacier_vaults, keyed the same as var.glacier_vaults"
  value       = { for k, v in aws_glacier_vault.glacier_vaults : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "glacier_vaults_tags_all" {
  description = "Map of tags_all values across all glacier_vaults, keyed the same as var.glacier_vaults"
  value       = { for k, v in aws_glacier_vault.glacier_vaults : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

