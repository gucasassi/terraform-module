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

Follow the **GitHub flow** practice.

```bash
git switch -c feature/my-new-feature
```

Use descriptive branch names `feature`, `fix`, `chore`, `etc`.

### 2 - Make changes and commit

Once the necessary changes are made, use **commitizen** to create a commit that follows **conventional commits**:

```bash
cz
```

Or manually:

```bash
git commit -m "feat: add support for new authentication method"
```

#### 💡 Tips:

- Please use [atomic commits](https://dev.to/samuelfaure/how-atomic-git-commits-dramatically-increased-my-productivity-and-will-increase-yours-too-4a84).
- Write [good commits](https://www.freecodecamp.org/news/how-to-write-better-git-commit-messages/) message.

### 3 - Examples & Tests

### 4 - Push & Pull Request

### 5 - Code Review & Merge

Following this workflow ensures that all contributions maintain high quality, security, and consistency.
