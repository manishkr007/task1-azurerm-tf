output "storage_account_id" {
  description = "Storage Account ID"
  value       = azurerm_storage_account.srechallengeflaschenpost.id
}

output "storage_account_primary_access_key" {
  description = "Storage Account Primary Access Key"
  value       = azurerm_storage_account.srechallengeflaschenpost.primary_access_key
  sensitive   = true
}

output "storage_account_primary_connection_string" {
  description = "Storage Account Primary Connection String"
  value       = azurerm_storage_account.srechallengeflaschenpost.primary_connection_string
  sensitive   = true
}

output "storage_account_container_id" {
  description = "Storage Account Container ID"
  value       = azurerm_storage_container.sre.id
}