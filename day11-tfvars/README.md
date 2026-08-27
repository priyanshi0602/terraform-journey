# Day 11 – Terraform tfvars and Variable Management

## 📌 Overview

Day 11 of my Terraform journey focuses on using **Terraform input variables** and the **`terraform.tfvars`** file to make infrastructure configurations more flexible and reusable.

In this project, Terraform is used with the Docker provider to deploy an Nginx container. Instead of hardcoding the container name, Docker image, and external port directly in the resource configuration, these values are supplied through variables and `terraform.tfvars`.

## 🎯 Objectives

* Understand Terraform input variables
* Learn how `terraform.tfvars` works
* Separate configuration values from infrastructure code
* Use variables inside Terraform resources
* Define Terraform outputs
* Deploy an Nginx Docker container using Terraform
* Verify the deployed container and web server

## 📁 Project Structure

```text
day11-tfvars/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── README.md
├── notes.txt
├── screenshots/
│   ├── Screenshot 2026-08-27 231008.png
│   └── Screenshot 2026-08-27 231021.png
└── .terraform.lock.hcl
```

## 🛠️ Technologies Used

* Terraform
* Docker
* Nginx
* Ubuntu / WSL
* Terraform Docker Provider

## 🔧 Variables

The project uses three input variables:

| Variable         | Value          |
| ---------------- | -------------- |
| `container_name` | `day11-nginx`  |
| `external_port`  | `8087`         |
| `image_name`     | `nginx:latest` |

These values are stored in `terraform.tfvars`.

## 🚀 Terraform Workflow

### 1. Initialize Terraform

```bash
terraform init
```

This initializes the working directory and installs the required Docker provider.

### 2. Format the configuration

```bash
terraform fmt
```

### 3. Validate the configuration

```bash
terraform validate
```

Expected result:

```text
Success! The configuration is valid.
```

### 4. Preview the infrastructure changes

```bash
terraform plan
```

Terraform planned:

```text
2 to add, 0 to change, 0 to destroy
```

The resources created are:

* Docker Nginx image
* Docker Nginx container

### 5. Apply the configuration

```bash
terraform apply
```

After confirmation with `yes`, Terraform successfully created both resources.

## 📤 Terraform Outputs

After applying the configuration, Terraform displayed:

```text
container_name = "day11-nginx"
container_port = 8087
image_name     = "nginx:latest"
```

## 🐳 Verify the Docker Container

The running container was verified using:

```bash
docker ps
```

The Nginx container was running with the port mapping:

```text
0.0.0.0:8087 -> 80/tcp
```

## 🌐 Test Nginx

The web server was tested using:

```bash
curl http://localhost:8087
```

The command returned the Nginx welcome page HTML, confirming that the container and port mapping were working correctly.

## 📸 Screenshots

### Terraform Apply and Docker Container

The first screenshot shows:

* Successful `terraform apply`
* Terraform outputs
* Running `day11-nginx` container
* Port mapping `8087:80`

### Nginx Verification

The second screenshot shows the response from:

```bash
curl http://localhost:8087
```

and confirms that Nginx is successfully serving its default webpage.

## 💡 Key Learnings

* Input variables make Terraform configurations reusable.
* `terraform.tfvars` can be used to provide values for input variables.
* Variables reduce hardcoding inside Terraform configuration files.
* `terraform validate` checks whether the configuration is syntactically and structurally valid.
* `terraform plan` previews infrastructure changes before deployment.
* Terraform can manage Docker images and containers as infrastructure.
* Terraform outputs provide useful information after infrastructure is created.

## ✅ Result

Successfully deployed an **Nginx Docker container using Terraform variables and `terraform.tfvars`**, exposed it on port **8087**, and verified that the Nginx web server was accessible.

**Day 11 completed successfully. 🚀**
