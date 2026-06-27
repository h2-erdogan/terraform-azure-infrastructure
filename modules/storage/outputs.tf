output "name" {
  description = "Storage Account name."
  value       = azurerm_storage_account.main.name
}

output "id" {
  description = "Storage Account ID."
  value       = azurerm_storage_account.main.id
}