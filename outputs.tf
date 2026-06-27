output "resource_group_name" {
  description = "Name of the Azure Resource Group."
  value       = module.resource_group.name
}

output "storage_account_name" {
  description = "Name of the Azure Storage Account."
  value       = module.storage.name
}

output "storage_account_id" {
  description = "ID of the Azure Storage Account."
  value       = module.storage.id
}

output "virtual_network_name" {
  description = "Name of the Azure Virtual Network."
  value       = module.network.vnet_name
}

output "subnet_name" {
  description = "Name of the Azure Subnet."
  value       = module.network.subnet_name
}

output "subnet_id" {
  description = "ID of the Azure Subnet."
  value       = module.network.subnet_id
}