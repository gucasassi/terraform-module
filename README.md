# Terraform Module Template

This repository serves as a **template** for creating reusable and well-structured **terraform modules**.

## 📂 Directory Structure

The following structure provides a clear organization of the **terraform module**.

```plaintext
.
├── .github/
│   ├── workflows/
│   │   ├── release.yaml       # GitHub Actions workflow to create release.
│   ├── CODEOWNERS             # Defines required reviewers (DevSecOps team).
│
├── tests/
│   ├── setup/                 # Setup module for testing.
│   │   ├── main.tf            # Terraform configuration for setup tests.
│   │   ├── bucket.tftest.hcl  # Test file that execute specific test.
│
├── .czrc                      # Commitizen configuration.
├── .gitignore                 # Git ignored files.
├── .pre-commit-config.yaml    # Pre-commit hooks for linting and validation.
├── .trivyignore               # List of errors to be ignored by Trivy.
│
├── main.tf                    # Main terraform module.
├── outputs.tf                 # Defines outputs for the module.
├── provider.tf                # Provider configuration.
├── README.md                  # This documentation file.
├── variables.tf               # Input variables for the module.
├── versions.tf                # Required terraform config (provider and versions).
```

## 🚀 Getting Started

To use this template, clone the repository and customize the module as needed:

```bash
git clone https://github.com/gucasassi/terraform-module.git
cd terraform-module
```

To ensure code quality and consistency, this repository uses `pre-commit` and `commit-msg` hooks. Developers must install [pre-commit framework](https://pre-commit.com/) and initialize it before making any commits.

### Install pre-commit

asdfasd asdafsd asdfasd asdfasd

### Install Commitizen

## 🔄 Workflow Guide

This repository follows a structured workflow to ensure **code quality, security, and consistency**. Below is the recommended process to work together:

### 1 - Create new branch

### 2 - Make changes and commit

### 3 - Run Tests

### 4 - Push & Pull Request

### 5 - Code Review & Merge

Following this workflow ensures that all contributions maintain high quality, security, and consistency.
