# Terraform AWS VPC, EC2 & Workspaces

## 📌 Project Overview

This project demonstrates how to provision basic AWS infrastructure using Terraform.

The project creates:

* AWS VPC
* AWS Subnet
* AWS EC2 Instance

It also demonstrates:

* Terraform Variables
* Terraform Outputs
* Terraform Workspaces
* Infrastructure as Code (IaC)

This is a beginner-level DevOps project created as part of my learning journey with Terraform and AWS.

---

## 🏗️ Architecture

```text
AWS Region
    │
    ▼
   VPC
    │
    ▼
  Subnet
    │
    ▼
EC2 Instance
```

Terraform Workspaces are used to manage multiple environments.

```text
        Terraform Project
               │
     ┌─────────┼─────────┐
     │         │         │
    Dev        QA       Prod
```

The active workspace is used in resource tags.

For example:

```text
terraform-vpc-dev
terraform-vpc-qa
terraform-vpc-prod
```

---

## 🛠️ Technologies Used

* Terraform
* AWS
* Amazon VPC
* Amazon EC2
* Git
* GitHub

---

## 📁 Project Structure

```text
terraform-aws-vpc-ec2-workspaces/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── .gitignore
└── README.md
```

---

## 📄 File Description

| File           | Description                                    |
| -------------- | ---------------------------------------------- |
| `main.tf`      | Defines the AWS infrastructure resources       |
| `variables.tf` | Contains input variables                       |
| `outputs.tf`   | Displays useful resource information           |
| `.gitignore`   | Excludes Terraform state and unnecessary files |
| `README.md`    | Project documentation                          |

---

## ⚙️ Prerequisites

Before running this project, make sure you have:

* Terraform installed
* AWS CLI installed
* AWS credentials configured
* An AWS account
* Git installed

Check Terraform:

```bash
terraform --version
```

Check AWS CLI:

```bash
aws --version
```

---

## 🚀 How to Run

### 1. Clone the Repository

```bash
git clone <repository-url>
```

Move into the project directory:

```bash
cd terraform-aws-vpc-ec2-workspaces
```

---

### 2. Initialize Terraform

```bash
terraform init
```

This downloads the required AWS provider.

---

### 3. Validate the Configuration

```bash
terraform validate
```

This checks whether the Terraform configuration is valid.

---

### 4. Review the Execution Plan

```bash
terraform plan
```

Terraform will display the resources that will be created.

---

### 5. Create Infrastructure

```bash
terraform apply
```

Type:

```text
yes
```

when prompted.

---

## 🌍 Terraform Workspaces

Terraform Workspaces allow the same Terraform configuration to manage multiple environments.

### Check Available Workspaces

```bash
terraform workspace list
```

### Create Development Workspace

```bash
terraform workspace new dev
```

### Create QA Workspace

```bash
terraform workspace new qa
```

### Create Production Workspace

```bash
terraform workspace new prod
```

### Switch Workspace

```bash
terraform workspace select dev
```

### Show Current Workspace

```bash
terraform workspace show
```

The active workspace can be accessed using:

```hcl
terraform.workspace
```

---

## 📤 Terraform Outputs

After applying the configuration, Terraform displays:

* VPC ID
* Subnet ID
* EC2 Instance ID
* Current Workspace

View outputs:

```bash
terraform output
```

---

## 🧹 Destroy Infrastructure

To avoid unnecessary AWS charges, destroy the resources when they are no longer required.

```bash
terraform destroy
```

Type:

```text
yes
```

when prompted.

---

## 📚 What I Learned

Through this project, I learned:

* Infrastructure as Code (IaC)
* Terraform Providers
* Terraform Resources
* Terraform Variables
* Terraform Outputs
* AWS VPC
* AWS Subnets
* AWS EC2
* Terraform Workspaces
* Managing multiple environments
* Basic Git and GitHub workflow

---

## 🔮 Future Improvements

Possible improvements include:

* Add multiple subnets
* Create public and private subnets
* Add an Internet Gateway
* Configure Route Tables
* Add Security Groups
* Use Terraform Modules
* Configure a remote backend
* Store Terraform state in AWS S3
* Add state locking
* Create separate environment configurations
* Integrate Terraform with CI/CD

---

## 👨‍💻 Author

**Srujan Shirkar**

Aspiring DevOps Engineer

---

## ⭐ Learning Journey

This project is part of my DevOps learning journey.

```text
Linux
   ↓
Networking
   ↓
Git & GitHub
   ↓
AWS
   ↓
Terraform
   ↓
Docker
   ↓
Jenkins
   ↓
Kubernetes
   ↓
CI/CD
```

🚀 **Learning by Building!**
