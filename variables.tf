variable "glacier_vaults" {
  description = <<EOT
Map of glacier_vaults, attributes below
Required:
    - name
Optional:
    - access_policy
    - region
    - tags
    - tags_all
    - notification (block):
        - events (required)
        - sns_topic (required)
EOT

  type = map(object({
    name          = string
    access_policy = optional(string)
    region        = optional(string)
    tags          = optional(map(string))
    tags_all      = optional(map(string))
    notification = optional(object({
      events    = set(string)
      sns_topic = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.glacier_vaults : (
        v.notification == null || (alltrue([for x in v.notification.events : contains(["ArchiveRetrievalCompleted", "InventoryRetrievalCompleted"], x)]))
      )
    ])
    error_message = "must be one of: ArchiveRetrievalCompleted, InventoryRetrievalCompleted"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

