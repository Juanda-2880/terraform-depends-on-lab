Terraform Lab: Flow Control & Dependencies

This repository contains a hands-on lab designed to understand and apply the `depends_on` meta-argument in Terraform, as well as managing `outputs`.

It deploys a basic AWS infrastructure simulating a secure web environment based on a custom network architecture.

## Architecture 

Based on the design diagram, the infrastructure includes:

* **Main VPC:** CIDR `10.0.0.0/16`.
* **Availability Zone:** `us-east-2`.
* **Public Subnet:** `10.0.1.0/24`.
* **Security Group (allow_tls):**
    * Ingress: HTTPS (443) from anywhere (`0.0.0.0/0`).
    * Egress: All traffic.

## Educational Objective (The "Why")

The main purpose of this project is not just creating resources, but **controlling the order** in which Terraform reports they are ready.

### The `depends_on` Challenge
In this lab, we practice how to force Terraform to wait for specific conditions before delivering an Output.

**Scenario:**
We want to display the Subnet ID or a resource status, but **only** when we are certain that the *Security Group* has been successfully created and configured. If Terraform returns the output before the Firewall (SG) is ready, the environment might be considered "deployed" but not yet "secure."

### Prerequisites

* [Terraform](https://www.terraform.io/downloads.html) installed (v1.0+).
* An AWS account configured with credentials (AWS CLI or environment variables).
