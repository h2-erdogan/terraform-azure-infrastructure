# Terraform Azure Infrastructure

![Terraform](https://img.shields.io/badge/Terraform-v1.x-623CE4?logo=terraform\&logoColor=white)
![Azure](https://img.shields.io/badge/Microsoft-Azure-0078D4?logo=microsoftazure\&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/CI-GitHub%20Actions-2088FF?logo=githubactions\&logoColor=white)

Infrastructure as Code (IaC) project built to demonstrate Azure infrastructure provisioning using Terraform following production-oriented design practices.

---

## Overview

This repository demonstrates how Azure infrastructure can be provisioned, organized, and maintained using Terraform while following Infrastructure as Code best practices.

The project focuses on:

* Modular Terraform architecture
* Azure networking
* Azure Storage
* Network Security Groups
* Infrastructure validation with GitHub Actions
* Resource tagging
* Consistent naming conventions

---

## Architecture

```text
                    Terraform
                         │
        ┌────────────────┼────────────────┐
        │                │                │
        ▼                ▼                ▼
 Resource Group      Virtual Network   Storage Account
                            │
                            ▼
                         Subnet
                            │
                            ▼
                 Network Security Group
```

---

## Infrastructure Components

| Resource               | Description                              |
| ---------------------- | ---------------------------------------- |
| Resource Group         | Logical container for Azure resources    |
| Virtual Network        | Azure Virtual Network for infrastructure |
| Subnet                 | Application subnet                       |
| Network Security Group | Controls inbound traffic                 |
| Storage Account        | Azure StorageV2 account                  |

---

## Project Structure

```text
terraform-azure-infrastructure/
│
├── modules/
│   ├── resource-group/
│   ├── network/
│   ├── network-security-group/
│   └── storage/
│
├── provider.tf
├── variables.tf
├── outputs.tf
├── main.tf
├── backend.tf.example
├── README.md
│
└── .github/
    └── workflows/
        └── terraform-ci.yml
```

---

## Module Design

The infrastructure has been separated into reusable Terraform modules.

| Module                 | Responsibility                                 |
| ---------------------- | ---------------------------------------------- |
| resource-group         | Creates Azure Resource Groups                  |
| network                | Creates Virtual Networks and Subnets           |
| network-security-group | Creates and associates Network Security Groups |
| storage                | Creates Azure Storage Accounts                 |

This design improves:

* Reusability
* Maintainability
* Scalability
* Separation of concerns

---

## Security

The project provisions an Azure Network Security Group (NSG) with predefined inbound rules.

| Rule        | Port | Protocol |
| ----------- | ---- | -------- |
| Allow HTTP  | 80   | TCP      |
| Allow HTTPS | 443  | TCP      |

The Network Security Group is associated with the application subnet.

---

## Naming Convention

Resource names are generated using Terraform locals.

Example:

```text
terraform-demo-dev-vnet
terraform-demo-dev-app-subnet
terraform-demo-dev-nsg
```

---

## Resource Tagging

Common tags are automatically applied to supported Azure resources.

```text
Environment = dev
Project     = terraform-demo
Owner       = Hasibe
ManagedBy   = Terraform
```

---

## Remote Backend

A sample Azure Remote Backend configuration is provided in:

```text
backend.tf.example
```

The project currently uses a local Terraform state during development. The backend example can be used when an Azure Storage backend is available.

---

## Getting Started

### Clone the repository

```bash
git clone https://github.com/h2-erdogan/terraform-azure-infrastructure.git
cd terraform-azure-infrastructure
```

### Initialize Terraform

```bash
terraform init
```

### Validate the configuration

```bash
terraform validate
```

### Generate an execution plan

```bash
terraform plan
```

### Apply the infrastructure

```bash
terraform apply
```

---

## Continuous Integration

The GitHub Actions workflow automatically performs:

* Terraform Format Check
* Terraform Initialization
* Terraform Validation

---

## Screenshots

### Terraform Validation

![Terraform Validation](screenshots/terraform-validate.png)

### Terraform Plan

![Terraform Plan](screenshots/terraform-plan.png)

---

## Design Decisions

The project follows several production-oriented design practices:

* Infrastructure is separated into reusable Terraform modules.
* Azure resources share a common tagging strategy.
* Resource names are generated using Terraform locals.
* Network Security Groups are managed independently from networking resources.
* Remote backend configuration is separated from the default local development workflow.

---

## Future Enhancements

* Azure Linux Virtual Machine
* Azure Bastion
* Azure Key Vault
* Terraform Workspaces
* Multi-environment deployments
* Remote Terraform State using Azure Storage
* TFLint integration
* Checkov security scanning
* Automated Terraform Plan on Pull Requests

---

## Author

**Hasibe Erdogan**

GitHub: https://github.com/h2-erdogan
