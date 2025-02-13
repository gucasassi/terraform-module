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
├── .gitignore                 # Git ignored files.
├── .pre-commit-config.yaml    # Pre-commit hooks for linting and validation.
│
├── main.tf                    # Main terraform module.
├── outputs.tf                 # Defines outputs for the module.
├── provider.tf                # Provider configuration.
├── README.md                  # This documentation file.
├── variables.tf               # Input variables for the module.
├── versions.tf                # Required terraform config (provider and versions).
```

## 🚀 Usage

To use this template, clone the repository and customize the module as needed:

```bash
git clone https://github.com/gucasassi/terraform-module.git
cd terraform-module
```

To ensure code quality and consistency, this repository uses [pre-commit](https://pre-commit.com/) hooks. Developers must install [pre-commit](https://pre-commit.com/) and initialize it before making any commits.

### Install pre-commit

asdfasd
