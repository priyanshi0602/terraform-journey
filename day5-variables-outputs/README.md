# Terraform Day 5 - Variables and Outputs

## Objective
Learn how to make Terraform configurations reusable using variables and outputs.

## Concepts Covered

### Variables
Variables allow us to avoid hardcoding values in Terraform files.

Files used:
- variables.tf
- terraform.tfvars

### Outputs
Outputs display useful information after infrastructure creation.

File used:
- outputs.tf

## Project

Created an Nginx container using Docker provider.

Container Details:
- Container Name: terraform-nginx
- External Port: 8082
- Internal Port: 80

## Commands Used

```bash
terraform init
terraform plan
terraform apply
terraform output