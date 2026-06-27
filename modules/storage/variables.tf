variable "name" {
  description = "Name of the Azure Storage Account."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group."
  type        = string
}

variable "location" {
  description = "Azure region for the Storage Account."
  type        = string
}

variable "account_tier" {
  description = "Storage account tier."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Storage replication type."
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Common tags applied to the Storage Account."
  type        = map(string)
}