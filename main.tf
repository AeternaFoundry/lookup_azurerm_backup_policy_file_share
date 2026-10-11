data "azurerm_backup_policy_file_share" "backup_policy_file_share_lookup" {
  for_each = var.backup_policy_file_share_lookup

  name                = each.value.name
  recovery_vault_name = each.value.recovery_vault_name
  resource_group_name = each.value.resource_group_name
}

