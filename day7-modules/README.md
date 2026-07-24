# Terraform Day 7 – Modules

## Objective
Learn how to use Terraform Modules to organize infrastructure into reusable components.

## Topics Covered
- Terraform Modules
- Module Structure
- Root Module
- Child Module
- Variables inside Modules
- Outputs from Modules
- Reusable Infrastructure

## Folder Structure

```
day7-modules/
│
├── main.tf
├── outputs.tf
├── README.md
├── notes.txt
└── modules/
    └── nginx/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

## Steps Performed

1. Created a reusable nginx module.
2. Added Docker provider.
3. Pulled nginx image.
4. Created Docker container.
5. Used variables for container name and external port.
6. Returned values using outputs.
7. Called the module from the root configuration.
8. Initialized Terraform.
9. Validated configuration.
10. Applied the configuration successfully.

## Commands Used

```bash
terraform init
terraform fmt
terraform validate
terraform apply
terraform output
docker ps
```

## Outputs

```
container_name = "terraform-module-nginx"
container_port = 8083
```

## Result

Successfully created an Nginx Docker container using a reusable Terraform module.

Accessible at:

http://localhost:8083

## Learning Outcome

- Understand Terraform Modules
- Reuse Infrastructure Code
- Pass Variables Between Modules
- Return Outputs from Modules
- Organize Terraform Projects Professionally