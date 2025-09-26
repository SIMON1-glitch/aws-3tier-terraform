# 3-Tier AWS Terraform Project

## Overview
This project uses Terraform to deploy a **3-tier architecture** on AWS, including:

- VPC with **public and private subnets**  
- Internet Gateway for public access  
- Modular Terraform code for **easy reuse and scalability**

---

## Project Structure

├── main.tf # Root Terraform configuration
├── variables.tf # Root variables
├── outputs.tf # Root outputs
├── modules/
│ ├── vpc/ # VPC module
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ └── outputs.tf
│ └── ec2/ # EC2 module
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
├── README.md
└── .gitignore


### **VPC Module**
- Creates a VPC with public and private subnets  
- Internet Gateway for public subnets  
- NAT Gateway (optional for private subnets)  
- **Outputs**:  
  - `vpc_id`  
  - `public_subnets`  
  - `private_subnets`  

### **EC2 Module**
- Launches an EC2 instance in a public subnet  
- Security group allows **SSH (port 22)** and **HTTP (port 80)**  
- Uses existing key pair `Docker`  
- **Outputs**:  
  - `instance_id`  
  - `public_ip`  

---

## How to Deploy

**Initialize Terraform**

bash
terraform init
terraform plan
terraform apply

SSH into EC2
ssh -i .pem ec2-user@<ec2_public_ip>
