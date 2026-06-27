output "vnet_name" {
  description = "Virtual Network name."
  value       = azurerm_virtual_network.main.name
}

output "subnet_name" {
  description = "Subnet name."
  value       = azurerm_subnet.main.name
}

output "subnet_id" {
  description = "Subnet ID."
  value       = azurerm_subnet.main.id
}