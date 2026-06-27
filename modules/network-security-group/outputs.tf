output "name" {
  description = "Network Security Group name."
  value       = azurerm_network_security_group.main.name
}

output "id" {
  description = "Network Security Group ID."
  value       = azurerm_network_security_group.main.id
}