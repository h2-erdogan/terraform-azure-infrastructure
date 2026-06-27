variable "vnet_name" {
  description = "Name of the Azure Virtual Network."
  type        = string
}

variable "address_space" {
  description = "Address space for the Virtual Network."
  type        = list(string)
}

variable "subnet_name" {
  description = "Name of the subnet."
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet."
  type        = list(string)
}

variable "location" {
  description = "Azure region for networking resources."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group."
  type        = string
}

variable "tags" {
  description = "Common tags applied to supported network resources."
  type        = map(string)
}