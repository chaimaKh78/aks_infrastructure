# # Automating AKS Infrastructure with Terraform & Gitlab

This project demonstrates how to build a complete, automated, and scalable infrastructure on Microsoft Azure using **Azure Kubernetes Service (AKS)**. It applies modern DevOps practices including **Infrastructure as Code**, **CI/CD pipelines**, and **GitOps-based application deployment**.

---

## 🚀 What Is This Project About?

The goal of this project is to **automate the creation and deployment of a Kubernetes cluster** using professional tools and best practices. It simulates a real-world DevOps scenario where:

- Infrastructure is defined and deployed using **Terraform**
- Application deployment is automated using **FluxCD** and **Helm**
- Everything is version-controlled in **Git**
- Changes are applied automatically through **CI/CD pipelines**

This setup ensures **reproducibility**, **security**, **scalability**, and **team collaboration**.

---

## 🧱 What Was Built

- ✅ A secure and production-ready **AKS (Azure Kubernetes Service)** cluster
- ✅ **Virtual Network**, subnets, identity resources, and RBAC configured in Terraform
- ✅ GitLab **CI/CD pipeline** to automate Terraform steps and apply infrastructure changes
- ✅ GitOps approach using **FluxCD** to continuously deploy applications from Git
- ✅ Applications managed with **Helm charts** and separated by environment using **Kustomize**

---

## 💡 Why This Approach?

- **Automation**: Manual work is replaced by code, reducing errors
- **GitOps**: All changes go through version control with history and reviews
- **Modularity**: Easy to reuse or extend for other environments or teams
- **Separation**: Infrastructure and applications are clearly isolated
- **Professional Standards**: Aligns with modern DevOps and cloud-native practices

---

## 🧰 Tools Used

- **Terraform** – Infrastructure provisioning
- **Azure CLI** – Authentication and resource access
- **GitLab CI/CD** – Automate Terraform workflows
- **FluxCD** – GitOps controller for Kubernetes
