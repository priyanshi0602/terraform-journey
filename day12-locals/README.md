# Day 12 - Terraform Local Values

## 📌 Overview

On Day 12 of my Terraform learning journey, I learned about **Terraform Local Values (`locals`)**.

Local values allow us to define expressions or values once and reuse them multiple times within a Terraform configuration. This helps make Terraform code cleaner, more readable, and easier to maintain.

---

## 🎯 Topics Covered

- Terraform Local Values
- The `locals` block
- Accessing local values using `local.<name>`
- Combining variables and local values
- Using locals inside Terraform resources
- Terraform validation and planning
- Deploying an Nginx container using Terraform

---

## 📁 Project Structure

```text
day12-locals/
│
├── main.tf
├── variables.tf
├── locals.tf
├── outputs.tf
├── README.md
├── notes.txt
└── screenshots/