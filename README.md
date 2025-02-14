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
├── .releaserc.json            # Semantic release configuration.
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

To ensure code quality and consistency, this repository uses `pre-commit` and `commit-msg` hooks.

### Install pre-commit

Before you can run hooks, you need to have the pre-commit package manager installed.

```bash
pip install pre-commit
```

Follow the instructions to validate the installation.

```bash
pre-commit --version
```

### Install Commitizen

If you have **python** installed, you can install **commitizen** using pip.

```bash
pip install commitizen
```

Verify the installation.

```bash
cz --version
```

## 🔄 Workflow Guide

This repository follows a structured workflow to ensure **code quality, security, and consistency**. Below is the recommended process to work together.

### 1 - Create new branch

Follow the **GitHub flow** practice.

```bash
git switch -c feature/my-new-feature
```

Use descriptive branch names `feature`, `fix`, `chore`, `etc`.

### 2 - Make changes and commit

Once the necessary changes are made, use **commitizen** to create a commit that follows **conventional commits**.

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
- Please always use lowercase in commit messages.

### 3 - Push & Pull Request

Push your branch to the repository.

```bash
git push origin feature/my-new-feature
```

Then, open a **Pull Request**, A DevSecOps team member will review it.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.9.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.27 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.5.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.86.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region to use for the test | `string` | `"eu-west-1"` | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Name of the S3 bucket | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | ARN of the created S3 bucket |
<!-- END_TF_DOCS -->
