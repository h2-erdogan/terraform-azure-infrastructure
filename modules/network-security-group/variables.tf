variable "name" {
  description = "Name of the Network Security Group."
  type        = string
}

variable "location" {
  description = "Azure region for the Network Security Group."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group."
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet associated with the Network Security Group."
  type        = string
}

variable "tags" {
  description = "Common tags applied to the Network Security Group."
  type        = map(string)
}