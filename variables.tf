variable "recipients_lookup" {
  description = <<EOT
Map of recipients_lookup, attributes below
Optional:
    - provider_config
    - recipients
EOT

  type = map(object({
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    recipients = optional(set(string))
  }))
}

