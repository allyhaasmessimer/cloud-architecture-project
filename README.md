# Project #1: Cloud Architecture Deployment with Terraform

## Overview

This project involves designing an AWS architecture and bringing it to life using Terraform. The architecture includes Amazon EC2 for compute power, S3 for storage, AWS RDS for database management, and an Elastic Load Balancer for high availability. The project outlines the data flow within the infrastructure, highlighting the interactions between each component.

## Table of Contents

-   [Overview](#overview)
-   [Architecture Design](#architecture-design)
-   [Implementation with Terraform](#implementation-with-terraform)
-   [Terraform Commands](#terraform-commands)
-   [Summary](#summary)
-   [Prerequisites](#prerequisites)
-   [Usage](#usage)

## Architecture Design

### Step 1: Design Your Cloud Architecture

-   **Components**:

    -   **EC2 Instances**: For compute power
    -   **S3 Buckets**: For storage
    -   **RDS**: For database management
    -   **Elastic Load Balancer**: For high availability
    -   **Security Groups and IAM**: For security and access management

-   **Data Flow**:
    -   Detail how data moves between EC2, S3, RDS, and other components.
    -   Visualize the connections and communication pathways.

## Implementation with Terraform

### Step 2: Implement with Terraform

-   **Terraform Configuration**:
    -   Write Terraform configurations for each AWS resource.
    -   Provision EC2 instances, S3 buckets, and RDS databases.
    -   Use Git for version control and collaboration.

## Terraform Commands

### Step 3: Master Terraform Commands

Learn and apply key Terraform commands:

-   **Terraform init**: Initialize your setup.
    `sh
terraform init
`
-   **Terraform plan**: Preview changes before applying.
    `sh
terraform plan
`
-   Terraform apply\*\*: Deploy your cloud architecture.
    `sh
terraform apply
`

## Summary

The aim of this project is to fuse theoretical cloud architecture planning with practical automation, showcasing how to design and deploy a cloud environment using Terraform. By the end of the project, you will have a working AWS infrastructure that mirrors your initial design, demonstrating your skills in creating a robust and scalable cloud setup along with automating deployment with Infrastructure as Code (IaC).

## Prerequisites

-   **AWS Account**: An AWS account with sufficient permissions to create resources.
-   **Terraform**: Installed on your local machine.
-   **Git**: For version control

## Usage

1. **Clone the repository**
   `sh
git clone https://github.com/allyhaasmessimer/cloud-architecture-project
cd cloud-architecture-project
`
2. **Initialize Terraform**
   `sh
terraform init
`
3. **Preview the infrastructure changes:**
   `sh
terraform plan
`
4. **Apply the configuration to deploy resources:**
   `sh
terraform apply
`
5. **Verify the deployed resources:**

-   Check your AWS Management Console to ensure all resources are created as expected.
