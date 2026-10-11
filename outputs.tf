output "recipients_lookup_provider_config" {
  description = "Map of provider_config values across all recipients_lookup, keyed the same as var.recipients_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_recipients.recipients_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "recipients_lookup_recipients" {
  description = "Map of recipients values across all recipients_lookup, keyed the same as var.recipients_lookup except keys with no recipients are omitted"
  value       = { for k, v in data.databricks_recipients.recipients_lookup : k => v.recipients if v.recipients != null && length(v.recipients) > 0 }
}

