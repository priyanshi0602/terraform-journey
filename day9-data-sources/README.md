# Terraform Day 9 – Data Sources

## 📖 Overview

Day 9 focuses on **Terraform Data Sources**, which allow Terraform to retrieve information about existing infrastructure instead of creating new resources. In this project, Terraform reads the existing **Nginx Docker image** and uses it to create a Docker container.

This demonstrates the difference between **resources** (which create infrastructure) and **data sources** (which fetch information about existing infrastructure).

---

## 🎯 Objectives

- Understand Terraform Data Sources
- Learn the difference between Resources and Data Sources
- Retrieve an existing Docker image using a data source
- Use data source values in a resource
- Display retrieved information using Terraform outputs

---

## 🛠️ Technologies Used

- Terraform v1.x
- Docker
- Docker Provider (kreuzwerker/docker)
- Ubuntu (WSL)

---

## 📂 Project Structure

```
day9-data-sources/
│── main.tf
│── outputs.tf
│── README.md
│── notes.txt
└── screenshots/
```

---

## ⚙️ Terraform Configuration

### Provider
Configured the Docker provider required for Terraform.

### Data Source
Retrieved the existing Docker image:

```hcl
data "docker_image" "nginx" {
  name = "nginx:latest"
}
```

### Resource
Created a Docker container using the image obtained from the data source.

### Outputs
Displayed:
- Image Name
- Image ID
- Container Name

---

## 🚀 Commands Executed

### Initialize Terraform

```bash
terraform init
```

### Format Configuration

```bash
terraform fmt
```

### Validate Configuration

```bash
terraform validate
```

### Preview Execution Plan

```bash
terraform plan
```

### Apply Configuration

```bash
terraform apply
```

### Verify Running Container

```bash
docker ps
```

---

## 📊 Outputs

Terraform displayed:

- Container Name
- Docker Image Name
- Docker Image ID

---

## 📸 Screenshots

*(Add your screenshots here after copying them into the `screenshots` folder.)*

- Terraform Init & Validate
- Terraform Plan
- Terraform Apply
- Docker Container / Nginx Browser Output

---

## 📚 Key Concepts Learned

- Terraform **Data Sources**
- Difference between **Resource** and **Data Source**
- Reading existing infrastructure
- Referencing data source attributes
- Using outputs to display retrieved values

---

## 💡 Resource vs Data Source

| Resource | Data Source |
|----------|-------------|
| Creates new infrastructure | Reads existing infrastructure |
| Managed by Terraform | Read-only |
| Uses `resource` block | Uses `data` block |

---

## ✅ Learning Outcome

Successfully used a Terraform **Data Source** to retrieve an existing Docker image and created a Docker container from it. This project demonstrates how Terraform can interact with existing infrastructure and reuse available resources efficiently.

---

**Author:** Priyanshi Panigrahi  
**Repository:** Terraform Journey  
**Day:** 9 – Data Sources