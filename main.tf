data "databricks_recipients" "recipients_lookup" {
  for_each = var.recipients_lookup

  provider_config = each.value.provider_config
  recipients      = each.value.recipients
}

