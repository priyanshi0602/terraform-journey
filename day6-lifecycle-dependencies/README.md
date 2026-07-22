
---

# Day 6 README.md

```markdown
# Terraform Day 6 - Lifecycle and Dependencies

## Objective
Learn resource dependencies and lifecycle management in Terraform.

## Concepts Covered

### depends_on
Used to explicitly define dependency relationships between resources.

### Lifecycle
Terraform lifecycle rules control how resources are created and destroyed.

Example:

```hcl
lifecycle {
  prevent_destroy = false
}