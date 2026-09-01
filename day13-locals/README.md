# Day 13 – Terraform Locals

Today I learned about **Terraform Local Values (locals)** and how they can be used to store reusable values inside a Terraform configuration.

## 📌 Topics Covered

* What are Terraform locals?
* Why use local values?
* Declaring locals using the `locals` block
* Referencing locals using `local.<name>`
* Using locals with Docker resources
* Running `terraform fmt`
* Running `terraform validate`
* Running `terraform plan`
* Verifying the planned infrastructure

## 🧠 What are Terraform Locals?

Terraform locals allow us to assign a name to an expression or value that can be reused throughout the configuration.

Example:

```hcl
locals {
  container_name = "day13-nginx"
  image_name     = "nginx:latest"
}
```

The values can then be referenced using:

```hcl
local.container_name
local.image_name
```

## 🛠️ Commands Used

```bash
terraform fmt
terraform validate
terraform plan
```

### `terraform fmt`

Formats Terraform configuration files according to Terraform's standard formatting conventions.

### `terraform validate`

Checks whether the Terraform configuration is syntactically valid and internally consistent.

### `terraform plan`

Creates an execution plan and shows what Terraform intends to create, modify, or destroy.

## 📂 Project Structure

```text
day13-locals/
├── main.tf
├── screenshots/
├── README.md
└── notes.txt
```

## 📸 Screenshots

The `screenshots/` directory contains the screenshots captured while completing Day 13.

## 🎯 Key Takeaway

Terraform locals help make configurations **cleaner, more readable, reusable, and easier to maintain** by allowing commonly used values and expressions to be defined once and referenced throughout the configuration.

---

**DevOps Journey – Day 13 ✅**

Next: Continue building my Terraform knowledge by learning more advanced configuration and infrastructure concepts.
