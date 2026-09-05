# Day 14: Terraform Variable Validation

## 📌 Overview

Today I learned how to use **variable validation in Terraform** to ensure that input values meet specific requirements before Terraform creates or modifies infrastructure.

Variable validation helps prevent invalid configurations from reaching the infrastructure layer and makes Terraform code safer and more predictable.

---

## 🎯 What I Learned

* What Terraform variable validation is
* How to use the `validation` block
* How to define validation conditions
* How to provide custom error messages
* How Terraform validates variables before deployment
* How variable validation improves infrastructure reliability

---

## 🧩 Variable Validation Syntax

Terraform variable validation is defined inside a variable block:

```hcl
variable "variable_name" {
  type        = string
  description = "Description of the variable"

  validation {
    condition     = <condition>
    error_message = "Custom error message"
  }
}
```

The `condition` must evaluate to `true` for Terraform to accept the variable value.

If the condition evaluates to `false`, Terraform stops and displays the specified error message.

---

## 🛠️ Practical Implementation

In today's project, I implemented Terraform variable validation and tested the configuration using Terraform commands.

The project includes:

* `main.tf`
* `variables.tf`
* `outputs.tf`
* `README.md`
* `notes.txt`
* `screenshots/`

---

## 🔍 Terraform Commands Used

```bash
terraform fmt
terraform validate
terraform plan
terraform apply
```

### `terraform fmt`

Formats Terraform configuration files according to Terraform's standard formatting.

### `terraform validate`

Checks whether the Terraform configuration is syntactically valid and internally consistent.

### `terraform plan`

Shows the infrastructure changes Terraform intends to make.

### `terraform apply`

Applies the planned infrastructure changes.

---

## 💡 Why Variable Validation Matters

Without validation, incorrect input values can potentially reach the deployment stage.

For example, a variable might require a specific value range, format, or naming convention.

Validation allows Terraform to catch such mistakes early.

### Benefits

* Prevents invalid input
* Improves configuration safety
* Provides clear error messages
* Reduces deployment failures
* Makes Terraform modules more reliable
* Encourages better infrastructure-as-code practices

---

## 📸 Screenshots

The `screenshots/` directory contains screenshots from today's Terraform implementation and testing.

---

## 🚀 Key Takeaway

Terraform variable validation is a simple but powerful feature for building reliable Infrastructure as Code.

Instead of assuming that users will provide correct values, Terraform can enforce rules automatically before infrastructure changes are made.

**Day 14 completed! ✅**
