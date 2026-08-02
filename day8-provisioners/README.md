# Terraform Day 8 – Provisioners

## Objective

Learn how to use Terraform Provisioners to execute commands after infrastructure resources are created. This project demonstrates the use of the **local-exec provisioner** with Docker to automate post-deployment tasks.

---

## Topics Covered

- Terraform Provisioners
- Local-exec Provisioner
- Docker Provider
- Docker Image Resource
- Docker Container Resource
- Terraform Lifecycle Execution
- Infrastructure Automation

---

## Project Structure

```
day8-provisioners/
│
├── main.tf
├── README.md
├── notes.txt
└── screenshots/
```

---

## Terraform Configuration

### Provider

Configured the Docker provider to manage Docker resources.

### Resources Created

- Docker Image (`nginx:latest`)
- Docker Container (`day8-nginx`)

### Provisioner Used

```hcl
provisioner "local-exec" {
  command = "echo 'Container created successfully!'"
}
```

The `local-exec` provisioner executes a command on the local machine immediately after the Docker container is created.

---

## Commands Used

```bash
terraform init
terraform fmt
terraform validate
terraform apply
docker ps
terraform destroy
```

---

## Execution Result

Terraform successfully:

- Initialized the Docker provider
- Pulled the latest Nginx image
- Created the Docker container
- Executed the `local-exec` provisioner
- Displayed the success message:

```
Container created successfully!
```

---

## Verification

Verify the running container:

```bash
docker ps
```

Open the application:

```
http://localhost:8084
```

Expected result:

```
Welcome to nginx!
```

---

## Screenshots

### Terraform Apply

![Terraform Apply](screenshots/Screenshot%202026-07-24%20XXXXXX.png)

### Docker Container

![Docker PS](screenshots/Screenshot%202026-07-24%20XXXXXX.png)

### Local-exec Output

![Provisioner Output](screenshots/Screenshot%202026-07-24%20XXXXXX.png)

### Nginx Running

![Nginx Browser](screenshots/Screenshot%202026-07-24%20XXXXXX.png)

> Replace the screenshot filenames above with your actual screenshot names after copying them into the `screenshots` folder.

---

## Key Learning Outcomes

- Understood the purpose of Terraform Provisioners.
- Learned how the `local-exec` provisioner executes commands on the local machine.
- Automated post-deployment tasks using Terraform.
- Successfully managed Docker resources using Terraform.
- Verified infrastructure deployment using Docker and a web browser.

---

## Best Practices

- Use Provisioners only when no better Terraform resource or provider feature is available.
- Prefer declarative resource configurations over imperative commands.
- Keep Provisioner commands simple and idempotent.
- Avoid storing sensitive information inside Provisioner commands.

---

## Conclusion

This project demonstrates how Terraform Provisioners can automate tasks after infrastructure deployment. Using the `local-exec` provisioner with Docker provides a practical introduction to post-deployment automation while reinforcing Terraform's Infrastructure as Code (IaC) principles.