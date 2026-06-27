locals {
  project     = "terraform-demo"
  environment = "dev"
  owner       = "Hasibe"

  prefix = "${local.project}-${local.environment}"

  common_tags = {
    Environment = local.environment
    Project     = local.project
    Owner       = local.owner
    ManagedBy   = "Terraform"
  }
}

module "resource_group" {
  source = "./modules/resource-group"

  name     = var.resource_group_name
  location = var.location
  tags     = local.common_tags
}

module "network" {
  source = "./modules/network"

  vnet_name               = "${local.prefix}-vnet"
  address_space           = ["10.0.0.0/16"]
  subnet_name             = "${local.prefix}-app-subnet"
  subnet_address_prefixes = ["10.0.1.0/24"]
  location                = module.resource_group.location
  resource_group_name     = module.resource_group.name
  tags                    = local.common_tags
}

module "network_security_group" {
  source = "./modules/network-security-group"

  name                = "${local.prefix}-nsg"
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  subnet_id           = module.network.subnet_id
  tags                = local.common_tags
}

module "storage" {
  source = "./modules/storage"

  name                     = "hasibeterraformdemo01"
  resource_group_name      = module.resource_group.name
  location                 = module.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = local.common_tags
}